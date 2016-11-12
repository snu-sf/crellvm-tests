; ModuleID = './zfcmap.bc'
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
%struct.gs_cmap_s = type { i32, i64, %struct.gs_const_string_s, %struct.gs_cid_system_info_s*, i32, float, %struct.gs_uid_s, i64, i32, i32, i32, i32 (%struct.gs_memory_s*, i64, %struct.gs_const_string_s*, i8*)*, i8*, %struct.gs_cmap_procs_s* }
%struct.gs_cid_system_info_s = type { %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_cmap_procs_s = type { i32 (%struct.gs_cmap_s*, %struct.gs_const_string_s*, i32*, i32*, i64*, i64*)*, void (%struct.gs_cmap_s*, %struct.gs_cmap_ranges_enum_s*)*, void (%struct.gs_cmap_s*, i32, %struct.gs_cmap_lookups_enum_s*)*, i32 (%struct.gs_cmap_s*, i32)* }
%struct.gs_cmap_ranges_enum_s = type { %struct.gx_code_space_range_s, %struct.gs_cmap_s*, %struct.gs_cmap_ranges_enum_procs_s*, i32 }
%struct.gx_code_space_range_s = type { [4 x i8], [4 x i8], i32 }
%struct.gs_cmap_ranges_enum_procs_s = type { i32 (%struct.gs_cmap_ranges_enum_s*)* }
%struct.gs_cmap_lookups_enum_s = type { %struct.gx_cmap_lookup_entry_s, %struct.gs_cmap_s*, %struct.gs_cmap_lookups_enum_procs_s*, [2 x i32], [8 x i8] }
%struct.gx_cmap_lookup_entry_s = type { [2 x [4 x i8]], i32, i32, i32, %struct.gs_const_string_s, i32 }
%struct.gs_cmap_lookups_enum_procs_s = type { i32 (%struct.gs_cmap_lookups_enum_s*)*, i32 (%struct.gs_cmap_lookups_enum_s*)* }
%struct.obj_header_s = type opaque
%struct.gs_cmap_adobe1_s = type { i32, i64, %struct.gs_const_string_s, %struct.gs_cid_system_info_s*, i32, float, %struct.gs_uid_s, i64, i32, i32, i32, i32 (%struct.gs_memory_s*, i64, %struct.gs_const_string_s*, i8*)*, i8*, %struct.gs_cmap_procs_s*, %struct.gx_code_space_s, %struct.gx_code_map_s, %struct.gx_code_map_s, i32 (%struct.gs_memory_s*, i64, i8*)*, i8* }
%struct.gx_code_space_s = type { %struct.gx_code_space_range_s*, i32 }
%struct.gx_code_map_s = type { %struct.gx_cmap_lookup_range_s*, i32 }
%struct.gx_cmap_lookup_range_s = type { %struct.gs_cmap_adobe1_s*, i32, [4 x i8], i32, i32, i32, %struct.gs_string_s, i32, i32, %struct.gs_string_s, i32 }
%struct.dict_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }

@.str = private unnamed_addr constant [5 x i8] c"CMap\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"CodeMap\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"1.buildcmap\00", align 1
@zfcmap_op_defs = constant [2 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zbuildcmap }, %struct.op_def zeroinitializer], align 16
@.str.3 = private unnamed_addr constant [14 x i8] c"CIDSystemInfo\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"CMapName\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c".CodeMapData\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"CMapType\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"CMapVersion\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"WMode\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"UIDOffset\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Artifex\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Unicode\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"zbuildcmap(CIDSystemInfo)\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"zbuildcmap(cmap)\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"acquire_code_ranges\00", align 1
@st_cmap_lookup_range_element = external constant %struct.gs_memory_struct_type_s, align 8
@.str.15 = private unnamed_addr constant [32 x i8] c"acquire_code_map(lookup ranges)\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"acquire_code_map(values)\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"free_code_map(values)\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"free_code_map(map)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @ztype0_get_cmap(%struct.gs_cmap_s** %ppcmap, %struct.ref_s* %pfdepvector, %struct.ref_s* %op, %struct.gs_memory_s* %imem) #0 {
entry:
  %retval = alloca i32, align 4
  %ppcmap.addr = alloca %struct.gs_cmap_s**, align 8
  %pfdepvector.addr = alloca %struct.ref_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %imem.addr = alloca %struct.gs_memory_s*, align 8
  %prcmap = alloca %struct.ref_s*, align 8
  %pcodemap = alloca %struct.ref_s*, align 8
  %pcmap = alloca %struct.gs_cmap_s*, align 8
  %code = alloca i32, align 4
  %num_fonts = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %rfdep = alloca %struct.ref_s, align 8
  %rfsi = alloca %struct.ref_s, align 8
  store %struct.gs_cmap_s** %ppcmap, %struct.gs_cmap_s*** %ppcmap.addr, align 8, !tbaa !1
  store %struct.ref_s* %pfdepvector, %struct.ref_s** %pfdepvector.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %imem, %struct.gs_memory_s** %imem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %prcmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.ref_s** %pcodemap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.gs_cmap_s** %pcmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %num_fonts to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), %struct.ref_s** %prcmap) #5
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %prcmap, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv = zext i8 %9 to i32
  %cmp1 = icmp eq i32 %conv, 2
  br i1 %cmp1, label %lor.lhs.false.3, label %if.then

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %10 = load %struct.ref_s*, %struct.ref_s** %prcmap, align 8, !tbaa !1
  %call4 = call i32 @dict_find_string(%struct.ref_s* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), %struct.ref_s** %pcodemap) #5
  %cmp5 = icmp sle i32 %call4, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.3
  %11 = load %struct.ref_s*, %struct.ref_s** %pcodemap, align 8, !tbaa !1
  %tas8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %type_attrs9 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas8, i32 0, i32 0
  %12 = load i16, i16* %type_attrs9, align 2, !tbaa !6
  %conv10 = zext i16 %12 to i32
  %and = and i32 %conv10, 15872
  %cmp11 = icmp eq i32 %and, 2048
  br i1 %cmp11, label %lor.lhs.false.13, label %if.then

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.7
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %imem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 1
  %object_size = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 14
  %14 = load i32 (%struct.gs_memory_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)** %object_size, align 8, !tbaa !11
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %imem.addr, align 8, !tbaa !1
  %16 = load %struct.ref_s*, %struct.ref_s** %pcodemap, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %17 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %18 = bitcast %struct.obj_header_s* %17 to %struct.gs_cmap_s*
  %19 = bitcast %struct.gs_cmap_s* %18 to i8*
  %call14 = call i32 %14(%struct.gs_memory_s* %15, i8* %19) #5
  %conv15 = zext i32 %call14 to i64
  %cmp16 = icmp ult i64 %conv15, 112
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.13, %lor.lhs.false.7, %lor.lhs.false.3, %lor.lhs.false, %entry
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41

if.end:                                           ; preds = %lor.lhs.false.13
  %20 = load %struct.ref_s*, %struct.ref_s** %pcodemap, align 8, !tbaa !1
  %value18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 1
  %pstruct19 = bitcast %union.v* %value18 to %struct.obj_header_s**
  %21 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct19, align 8, !tbaa !1
  %22 = bitcast %struct.obj_header_s* %21 to %struct.gs_cmap_s*
  store %struct.gs_cmap_s* %22, %struct.gs_cmap_s** %pcmap, align 8, !tbaa !1
  %23 = load %struct.ref_s*, %struct.ref_s** %pfdepvector.addr, align 8, !tbaa !1
  %tas20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas20, i32 0, i32 2
  %24 = load i32, i32* %rsize, align 4, !tbaa !14
  store i32 %24, i32* %num_fonts, align 4, !tbaa !15
  store i32 0, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %25 = load i32, i32* %i, align 4, !tbaa !15
  %26 = load i32, i32* %num_fonts, align 4, !tbaa !15
  %cmp21 = icmp ult i32 %25, %26
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = bitcast %struct.ref_s* %rfdep to i8*
  call void @llvm.lifetime.start(i64 16, i8* %27) #1
  %28 = bitcast %struct.ref_s* %rfsi to i8*
  call void @llvm.lifetime.start(i64 16, i8* %28) #1
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %imem.addr, align 8, !tbaa !1
  %30 = load %struct.ref_s*, %struct.ref_s** %pfdepvector.addr, align 8, !tbaa !1
  %31 = load i32, i32* %i, align 4, !tbaa !15
  %conv23 = zext i32 %31 to i64
  %call24 = call i32 @array_get(%struct.gs_memory_s* %29, %struct.ref_s* %30, i64 %conv23, %struct.ref_s* %rfdep) #5
  %call25 = call i32 @acquire_cid_system_info(%struct.ref_s* %rfsi, %struct.ref_s* %rfdep) #5
  store i32 %call25, i32* %code, align 4, !tbaa !15
  %32 = load i32, i32* %code, align 4, !tbaa !15
  %cmp26 = icmp slt i32 %32, 0
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %for.body
  %33 = load i32, i32* %code, align 4, !tbaa !15
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %for.body
  %34 = load i32, i32* %code, align 4, !tbaa !15
  %cmp30 = icmp eq i32 %34, 0
  br i1 %cmp30, label %if.then.32, label %if.end.39

if.then.32:                                       ; preds = %if.end.29
  %tas33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rfsi, i32 0, i32 0
  %rsize34 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas33, i32 0, i32 2
  %35 = load i32, i32* %rsize34, align 4, !tbaa !14
  %cmp35 = icmp ne i32 %35, 1
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.then.32
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.38:                                        ; preds = %if.then.32
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end.29
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.39, %if.then.37, %if.then.28
  %36 = bitcast %struct.ref_s* %rfsi to i8*
  call void @llvm.lifetime.end(i64 16, i8* %36) #1
  %37 = bitcast %struct.ref_s* %rfdep to i8*
  call void @llvm.lifetime.end(i64 16, i8* %37) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.41 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %38 = load i32, i32* %i, align 4, !tbaa !15
  %inc = add i32 %38, 1
  store i32 %inc, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap, align 8, !tbaa !1
  %40 = load %struct.gs_cmap_s**, %struct.gs_cmap_s*** %ppcmap.addr, align 8, !tbaa !1
  store %struct.gs_cmap_s* %39, %struct.gs_cmap_s** %40, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41

cleanup.41:                                       ; preds = %for.end, %cleanup, %if.then
  %41 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast i32* %num_fonts to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast %struct.gs_cmap_s** %pcmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast %struct.ref_s** %pcodemap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast %struct.ref_s** %prcmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = load i32, i32* %retval
  ret i32 %47
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

declare i32 @array_get(%struct.gs_memory_s*, %struct.ref_s*, i64, %struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @acquire_cid_system_info(%struct.ref_s* %psia, %struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %psia.addr = alloca %struct.ref_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %prcidsi = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %psia, %struct.ref_s** %psia.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %prcidsi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), %struct.ref_s** %prcidsi) #5
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %psia.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  store %struct.ref_s* null, %struct.ref_s** %refs, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %psia.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 1120, i16* %type_attrs, align 2, !tbaa !6
  %4 = load %struct.ref_s*, %struct.ref_s** %psia.addr, align 8, !tbaa !1
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !14
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** %prcidsi, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %6 = bitcast i16* %type_attrs3 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv = zext i8 %7 to i32
  %cmp4 = icmp eq i32 %conv, 2
  br i1 %cmp4, label %if.then.6, label %if.end.13

if.then.6:                                        ; preds = %if.end
  %8 = load %struct.ref_s*, %struct.ref_s** %prcidsi, align 8, !tbaa !1
  %9 = load %struct.ref_s*, %struct.ref_s** %psia.addr, align 8, !tbaa !1
  %value7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %refs8 = bitcast %union.v* %value7 to %struct.ref_s**
  store %struct.ref_s* %8, %struct.ref_s** %refs8, align 8, !tbaa !1
  %10 = load %struct.ref_s*, %struct.ref_s** %psia.addr, align 8, !tbaa !1
  %tas9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %type_attrs10 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas9, i32 0, i32 0
  store i16 1120, i16* %type_attrs10, align 2, !tbaa !6
  %11 = load %struct.ref_s*, %struct.ref_s** %psia.addr, align 8, !tbaa !1
  %tas11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %rsize12 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas11, i32 0, i32 2
  store i32 1, i32* %rsize12, align 4, !tbaa !14
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end
  %12 = load %struct.ref_s*, %struct.ref_s** %prcidsi, align 8, !tbaa !1
  %tas14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %type_attrs15 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas14, i32 0, i32 0
  %13 = load i16, i16* %type_attrs15, align 2, !tbaa !6
  %conv16 = zext i16 %13 to i32
  %and = and i32 %conv16, 15360
  %cmp17 = icmp eq i32 %and, 1024
  br i1 %cmp17, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.end.13
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end.13
  %14 = load %struct.ref_s*, %struct.ref_s** %psia.addr, align 8, !tbaa !1
  %15 = load %struct.ref_s*, %struct.ref_s** %prcidsi, align 8, !tbaa !1
  %16 = bitcast %struct.ref_s* %14 to i8*
  %17 = bitcast %struct.ref_s* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 16, i32 8, i1 false), !tbaa.struct !16
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then.19, %if.then.6, %if.then
  %18 = bitcast %struct.ref_s** %prcidsi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @zbuildcmap(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %pcmapname = alloca %struct.ref_s*, align 8
  %puidoffset = alloca %struct.ref_s*, align 8
  %pcodemapdata = alloca %struct.ref_s*, align 8
  %pcodemap = alloca %struct.ref_s*, align 8
  %rname = alloca %struct.ref_s, align 8
  %rcidsi = alloca %struct.ref_s, align 8
  %rcoderanges = alloca %struct.ref_s, align 8
  %rdefs = alloca %struct.ref_s, align 8
  %rnotdefs = alloca %struct.ref_s, align 8
  %pcmap = alloca %struct.gs_cmap_adobe1_s*, align 8
  %rcmap = alloca %struct.ref_s, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !22
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.ref_s** %pcmapname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast %struct.ref_s** %puidoffset to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct.ref_s** %pcodemapdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.ref_s** %pcodemap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast %struct.ref_s* %rname to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #1
  %9 = bitcast %struct.ref_s* %rcidsi to i8*
  call void @llvm.lifetime.start(i64 16, i8* %9) #1
  %10 = bitcast %struct.ref_s* %rcoderanges to i8*
  call void @llvm.lifetime.start(i64 16, i8* %10) #1
  %11 = bitcast %struct.ref_s* %rdefs to i8*
  call void @llvm.lifetime.start(i64 16, i8* %11) #1
  %12 = bitcast %struct.ref_s* %rnotdefs to i8*
  call void @llvm.lifetime.start(i64 16, i8* %12) #1
  %13 = bitcast %struct.gs_cmap_adobe1_s** %pcmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store %struct.gs_cmap_adobe1_s* null, %struct.gs_cmap_adobe1_s** %pcmap, align 8, !tbaa !1
  %14 = bitcast %struct.ref_s* %rcmap to i8*
  call void @llvm.lifetime.start(i64 16, i8* %14) #1
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %17 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv = zext i8 %18 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %19) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %21 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %21, i32 0, i32 0
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %22 = load i16, i16* %type_attrs3, align 2, !tbaa !6
  %conv4 = zext i16 %22 to i32
  %and = and i32 %conv4, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.6
  br label %do.end

do.end:                                           ; preds = %do.cond
  %23 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call7 = call i32 @dict_find_string(%struct.ref_s* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), %struct.ref_s** %pcmapname) #5
  store i32 %call7, i32* %code, align 4, !tbaa !15
  %cmp8 = icmp sle i32 %call7, 0
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %do.end
  store i32 -15, i32* %code, align 4, !tbaa !15
  br label %fail

if.end.11:                                        ; preds = %do.end
  %24 = load %struct.ref_s*, %struct.ref_s** %pcmapname, align 8, !tbaa !1
  %tas12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 0
  %type_attrs13 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas12, i32 0, i32 0
  %25 = bitcast i16* %type_attrs13 to i8*
  %arrayidx14 = getelementptr inbounds i8, i8* %25, i64 1
  %26 = load i8, i8* %arrayidx14, align 1, !tbaa !5
  %conv15 = zext i8 %26 to i32
  %cmp16 = icmp eq i32 %conv15, 13
  br i1 %cmp16, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.end.11
  store i32 -20, i32* %code, align 4, !tbaa !15
  br label %fail

if.end.19:                                        ; preds = %if.end.11
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %27, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %28 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !31
  %29 = bitcast %struct.gs_ref_memory_s* %28 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 2
  %30 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !32
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %30, i32 0, i32 16
  %31 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !33
  %32 = load %struct.ref_s*, %struct.ref_s** %pcmapname, align 8, !tbaa !1
  call void @names_string_ref(%struct.name_table_s* %31, %struct.ref_s* %32, %struct.ref_s* %rname) #5
  %33 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call20 = call i32 @dict_find_string(%struct.ref_s* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), %struct.ref_s** %pcodemapdata) #5
  %cmp21 = icmp sle i32 %call20, 0
  br i1 %cmp21, label %if.then.44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.19
  %34 = load %struct.ref_s*, %struct.ref_s** %pcodemapdata, align 8, !tbaa !1
  %tas23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 0
  %type_attrs24 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas23, i32 0, i32 0
  %35 = bitcast i16* %type_attrs24 to i8*
  %arrayidx25 = getelementptr inbounds i8, i8* %35, i64 1
  %36 = load i8, i8* %arrayidx25, align 1, !tbaa !5
  %conv26 = zext i8 %36 to i32
  %cmp27 = icmp eq i32 %conv26, 4
  br i1 %cmp27, label %lor.lhs.false.29, label %if.then.44

lor.lhs.false.29:                                 ; preds = %lor.lhs.false
  %37 = load %struct.ref_s*, %struct.ref_s** %pcodemapdata, align 8, !tbaa !1
  %tas30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas30, i32 0, i32 2
  %38 = load i32, i32* %rsize, align 4, !tbaa !14
  %cmp31 = icmp ne i32 %38, 3
  br i1 %cmp31, label %if.then.44, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %lor.lhs.false.29
  %39 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call34 = call i32 @dict_find_string(%struct.ref_s* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), %struct.ref_s** %pcodemap) #5
  %cmp35 = icmp sle i32 %call34, 0
  br i1 %cmp35, label %if.then.44, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %lor.lhs.false.33
  %40 = load %struct.ref_s*, %struct.ref_s** %pcodemap, align 8, !tbaa !1
  %tas38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 0, i32 0
  %type_attrs39 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas38, i32 0, i32 0
  %41 = bitcast i16* %type_attrs39 to i8*
  %arrayidx40 = getelementptr inbounds i8, i8* %41, i64 1
  %42 = load i8, i8* %arrayidx40, align 1, !tbaa !5
  %conv41 = zext i8 %42 to i32
  %cmp42 = icmp eq i32 %conv41, 14
  br i1 %cmp42, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %lor.lhs.false.37, %lor.lhs.false.33, %lor.lhs.false.29, %lor.lhs.false, %if.end.19
  store i32 -15, i32* %code, align 4, !tbaa !15
  br label %fail

if.end.45:                                        ; preds = %lor.lhs.false.37
  %43 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call46 = call i32 @acquire_cid_system_info(%struct.ref_s* %rcidsi, %struct.ref_s* %43) #5
  store i32 %call46, i32* %code, align 4, !tbaa !15
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.45
  br label %fail

if.end.50:                                        ; preds = %if.end.45
  %value51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rname, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value51 to i8**
  %44 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %tas52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rname, i32 0, i32 0
  %rsize53 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas52, i32 0, i32 2
  %45 = load i32, i32* %rsize53, align 4, !tbaa !14
  %tas54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rcidsi, i32 0, i32 0
  %rsize55 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas54, i32 0, i32 2
  %46 = load i32, i32* %rsize55, align 4, !tbaa !14
  %47 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory56 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %47, i32 0, i32 1
  %current57 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory56, i32 0, i32 0
  %48 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current57, align 8, !tbaa !31
  %49 = bitcast %struct.gs_ref_memory_s* %48 to %struct.gs_memory_s*
  %call58 = call i32 @gs_cmap_adobe1_alloc(%struct.gs_cmap_adobe1_s** %pcmap, i32 0, i8* %44, i32 %45, i32 %46, i32 0, i32 0, i32 0, i32 0, %struct.gs_cid_system_info_s* null, %struct.gs_memory_s* %49) #5
  store i32 %call58, i32* %code, align 4, !tbaa !15
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.50
  br label %fail

if.end.62:                                        ; preds = %if.end.50
  %50 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %51 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %pcmap, align 8, !tbaa !1
  %CMapType = getelementptr inbounds %struct.gs_cmap_adobe1_s, %struct.gs_cmap_adobe1_s* %51, i32 0, i32 0
  %call63 = call i32 @dict_int_param(%struct.ref_s* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 0, i32 1, i32 0, i32* %CMapType) #5
  store i32 %call63, i32* %code, align 4, !tbaa !15
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.then.80, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %if.end.62
  %52 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %53 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %pcmap, align 8, !tbaa !1
  %CMapVersion = getelementptr inbounds %struct.gs_cmap_adobe1_s, %struct.gs_cmap_adobe1_s* %53, i32 0, i32 5
  %call67 = call i32 @dict_float_param(%struct.ref_s* %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), double 0.000000e+00, float* %CMapVersion) #5
  store i32 %call67, i32* %code, align 4, !tbaa !15
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %if.then.80, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %lor.lhs.false.66
  %54 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %55 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %pcmap, align 8, !tbaa !1
  %uid = getelementptr inbounds %struct.gs_cmap_adobe1_s, %struct.gs_cmap_adobe1_s* %55, i32 0, i32 6
  %56 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory71 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %56, i32 0, i32 1
  %current72 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory71, i32 0, i32 0
  %57 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current72, align 8, !tbaa !31
  %58 = bitcast %struct.gs_ref_memory_s* %57 to %struct.gs_memory_s*
  %59 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call73 = call i32 @dict_uid_param(%struct.ref_s* %54, %struct.gs_uid_s* %uid, i32 0, %struct.gs_memory_s* %58, %struct.gs_context_state_s* %59) #5
  store i32 %call73, i32* %code, align 4, !tbaa !15
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.then.80, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %lor.lhs.false.70
  %60 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %61 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %pcmap, align 8, !tbaa !1
  %WMode = getelementptr inbounds %struct.gs_cmap_adobe1_s, %struct.gs_cmap_adobe1_s* %61, i32 0, i32 8
  %call77 = call i32 @dict_int_param(%struct.ref_s* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 0, i32 1, i32 0, i32* %WMode) #5
  store i32 %call77, i32* %code, align 4, !tbaa !15
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %lor.lhs.false.76, %lor.lhs.false.70, %lor.lhs.false.66, %if.end.62
  br label %fail

if.end.81:                                        ; preds = %lor.lhs.false.76
  %62 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call82 = call i32 @dict_find_string(%struct.ref_s* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), %struct.ref_s** %puidoffset) #5
  %cmp83 = icmp sgt i32 %call82, 0
  br i1 %cmp83, label %if.then.85, label %if.end.95

if.then.85:                                       ; preds = %if.end.81
  %63 = load %struct.ref_s*, %struct.ref_s** %puidoffset, align 8, !tbaa !1
  %tas86 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %63, i32 0, i32 0
  %type_attrs87 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas86, i32 0, i32 0
  %64 = bitcast i16* %type_attrs87 to i8*
  %arrayidx88 = getelementptr inbounds i8, i8* %64, i64 1
  %65 = load i8, i8* %arrayidx88, align 1, !tbaa !5
  %conv89 = zext i8 %65 to i32
  %cmp90 = icmp eq i32 %conv89, 11
  br i1 %cmp90, label %if.end.93, label %if.then.92

if.then.92:                                       ; preds = %if.then.85
  store i32 -20, i32* %code, align 4, !tbaa !15
  br label %fail

if.end.93:                                        ; preds = %if.then.85
  %66 = load %struct.ref_s*, %struct.ref_s** %puidoffset, align 8, !tbaa !1
  %value94 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %66, i32 0, i32 1
  %intval = bitcast %union.v* %value94 to i64*
  %67 = load i64, i64* %intval, align 8, !tbaa !18
  %68 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %pcmap, align 8, !tbaa !1
  %UIDOffset = getelementptr inbounds %struct.gs_cmap_adobe1_s, %struct.gs_cmap_adobe1_s* %68, i32 0, i32 7
  store i64 %67, i64* %UIDOffset, align 8, !tbaa !35
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.93, %if.end.81
  store i32 0, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.95
  %69 = load i32, i32* %i, align 4, !tbaa !15
  %tas96 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rcidsi, i32 0, i32 0
  %rsize97 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas96, i32 0, i32 2
  %70 = load i32, i32* %rsize97, align 4, !tbaa !14
  %cmp98 = icmp ult i32 %69, %70
  br i1 %cmp98, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %71 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory100 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %71, i32 0, i32 1
  %current101 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory100, i32 0, i32 0
  %72 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current101, align 8, !tbaa !31
  %73 = bitcast %struct.gs_ref_memory_s* %72 to %struct.gs_memory_s*
  %74 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %pcmap, align 8, !tbaa !1
  %CIDSystemInfo = getelementptr inbounds %struct.gs_cmap_adobe1_s, %struct.gs_cmap_adobe1_s* %74, i32 0, i32 3
  %75 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %CIDSystemInfo, align 8, !tbaa !41
  %76 = load i32, i32* %i, align 4, !tbaa !15
  %idx.ext = zext i32 %76 to i64
  %add.ptr = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %75, i64 %idx.ext
  %77 = load i32, i32* %i, align 4, !tbaa !15
  %call102 = call i32 @get_cid_system_info(%struct.gs_memory_s* %73, %struct.gs_cid_system_info_s* %add.ptr, %struct.ref_s* %rcidsi, i32 %77) #5
  store i32 %call102, i32* %code, align 4, !tbaa !15
  %78 = load i32, i32* %code, align 4, !tbaa !15
  %cmp103 = icmp slt i32 %78, 0
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %for.body
  br label %fail

if.end.106:                                       ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.106
  %79 = load i32, i32* %i, align 4, !tbaa !15
  %inc = add i32 %79, 1
  store i32 %inc, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %80 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory107 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %80, i32 0, i32 1
  %current108 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory107, i32 0, i32 0
  %81 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current108, align 8, !tbaa !31
  %82 = bitcast %struct.gs_ref_memory_s* %81 to %struct.gs_memory_s*
  %83 = load %struct.ref_s*, %struct.ref_s** %pcodemapdata, align 8, !tbaa !1
  %call109 = call i32 @array_get(%struct.gs_memory_s* %82, %struct.ref_s* %83, i64 0, %struct.ref_s* %rcoderanges) #5
  %84 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory110 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %84, i32 0, i32 1
  %current111 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory110, i32 0, i32 0
  %85 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current111, align 8, !tbaa !31
  %86 = bitcast %struct.gs_ref_memory_s* %85 to %struct.gs_memory_s*
  %87 = load %struct.ref_s*, %struct.ref_s** %pcodemapdata, align 8, !tbaa !1
  %call112 = call i32 @array_get(%struct.gs_memory_s* %86, %struct.ref_s* %87, i64 1, %struct.ref_s* %rdefs) #5
  %88 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory113 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %88, i32 0, i32 1
  %current114 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory113, i32 0, i32 0
  %89 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current114, align 8, !tbaa !31
  %90 = bitcast %struct.gs_ref_memory_s* %89 to %struct.gs_memory_s*
  %91 = load %struct.ref_s*, %struct.ref_s** %pcodemapdata, align 8, !tbaa !1
  %call115 = call i32 @array_get(%struct.gs_memory_s* %90, %struct.ref_s* %91, i64 2, %struct.ref_s* %rnotdefs) #5
  %92 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %pcmap, align 8, !tbaa !1
  %93 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory116 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %93, i32 0, i32 1
  %current117 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory116, i32 0, i32 0
  %94 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current117, align 8, !tbaa !31
  %95 = bitcast %struct.gs_ref_memory_s* %94 to %struct.gs_memory_s*
  %call118 = call i32 @acquire_code_ranges(%struct.gs_cmap_adobe1_s* %92, %struct.ref_s* %rcoderanges, %struct.gs_memory_s* %95) #5
  store i32 %call118, i32* %code, align 4, !tbaa !15
  %cmp119 = icmp slt i32 %call118, 0
  br i1 %cmp119, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %for.end
  br label %fail

if.end.122:                                       ; preds = %for.end
  %96 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %pcmap, align 8, !tbaa !1
  %def = getelementptr inbounds %struct.gs_cmap_adobe1_s, %struct.gs_cmap_adobe1_s* %96, i32 0, i32 15
  %97 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %pcmap, align 8, !tbaa !1
  %98 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory123 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %98, i32 0, i32 1
  %current124 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory123, i32 0, i32 0
  %99 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current124, align 8, !tbaa !31
  %100 = bitcast %struct.gs_ref_memory_s* %99 to %struct.gs_memory_s*
  %call125 = call i32 @acquire_code_map(%struct.gx_code_map_s* %def, %struct.ref_s* %rdefs, %struct.gs_cmap_adobe1_s* %97, %struct.gs_memory_s* %100) #5
  store i32 %call125, i32* %code, align 4, !tbaa !15
  %cmp126 = icmp slt i32 %call125, 0
  br i1 %cmp126, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %if.end.122
  br label %fail

if.end.129:                                       ; preds = %if.end.122
  %101 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %pcmap, align 8, !tbaa !1
  %notdef = getelementptr inbounds %struct.gs_cmap_adobe1_s, %struct.gs_cmap_adobe1_s* %101, i32 0, i32 16
  %102 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %pcmap, align 8, !tbaa !1
  %103 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory130 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %103, i32 0, i32 1
  %current131 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory130, i32 0, i32 0
  %104 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current131, align 8, !tbaa !31
  %105 = bitcast %struct.gs_ref_memory_s* %104 to %struct.gs_memory_s*
  %call132 = call i32 @acquire_code_map(%struct.gx_code_map_s* %notdef, %struct.ref_s* %rnotdefs, %struct.gs_cmap_adobe1_s* %102, %struct.gs_memory_s* %105) #5
  store i32 %call132, i32* %code, align 4, !tbaa !15
  %cmp133 = icmp slt i32 %call132, 0
  br i1 %cmp133, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %if.end.129
  br label %fail

if.end.136:                                       ; preds = %if.end.129
  %106 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %pcmap, align 8, !tbaa !1
  %CIDSystemInfo137 = getelementptr inbounds %struct.gs_cmap_adobe1_s, %struct.gs_cmap_adobe1_s* %106, i32 0, i32 3
  %107 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %CIDSystemInfo137, align 8, !tbaa !41
  %Registry = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %107, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Registry, i32 0, i32 0
  %108 = load i8*, i8** %data, align 8, !tbaa !42
  %109 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %pcmap, align 8, !tbaa !1
  %CIDSystemInfo138 = getelementptr inbounds %struct.gs_cmap_adobe1_s, %struct.gs_cmap_adobe1_s* %109, i32 0, i32 3
  %110 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %CIDSystemInfo138, align 8, !tbaa !41
  %Registry139 = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %110, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Registry139, i32 0, i32 1
  %111 = load i32, i32* %size, align 4, !tbaa !44
  %call140 = call i32 @bytes_compare(i8* %108, i32 %111, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32 7) #5
  %tobool141 = icmp ne i32 %call140, 0
  br i1 %tobool141, label %if.end.150, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.136
  %112 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %pcmap, align 8, !tbaa !1
  %CIDSystemInfo142 = getelementptr inbounds %struct.gs_cmap_adobe1_s, %struct.gs_cmap_adobe1_s* %112, i32 0, i32 3
  %113 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %CIDSystemInfo142, align 8, !tbaa !41
  %Ordering = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %113, i32 0, i32 1
  %data143 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Ordering, i32 0, i32 0
  %114 = load i8*, i8** %data143, align 8, !tbaa !45
  %115 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %pcmap, align 8, !tbaa !1
  %CIDSystemInfo144 = getelementptr inbounds %struct.gs_cmap_adobe1_s, %struct.gs_cmap_adobe1_s* %115, i32 0, i32 3
  %116 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %CIDSystemInfo144, align 8, !tbaa !41
  %Ordering145 = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %116, i32 0, i32 1
  %size146 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Ordering145, i32 0, i32 1
  %117 = load i32, i32* %size146, align 4, !tbaa !46
  %call147 = call i32 @bytes_compare(i8* %114, i32 %117, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 7) #5
  %tobool148 = icmp ne i32 %call147, 0
  br i1 %tobool148, label %if.end.150, label %if.then.149

if.then.149:                                      ; preds = %land.lhs.true
  %118 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %pcmap, align 8, !tbaa !1
  %from_Unicode = getelementptr inbounds %struct.gs_cmap_adobe1_s, %struct.gs_cmap_adobe1_s* %118, i32 0, i32 9
  store i32 1, i32* %from_Unicode, align 4, !tbaa !47
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.149, %land.lhs.true, %if.end.136
  %119 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %pcmap, align 8, !tbaa !1
  %mark_glyph = getelementptr inbounds %struct.gs_cmap_adobe1_s, %struct.gs_cmap_adobe1_s* %119, i32 0, i32 17
  store i32 (%struct.gs_memory_s*, i64, i8*)* @zfont_mark_glyph_name, i32 (%struct.gs_memory_s*, i64, i8*)** %mark_glyph, align 8, !tbaa !48
  %120 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %pcmap, align 8, !tbaa !1
  %mark_glyph_data = getelementptr inbounds %struct.gs_cmap_adobe1_s, %struct.gs_cmap_adobe1_s* %120, i32 0, i32 18
  store i8* null, i8** %mark_glyph_data, align 8, !tbaa !49
  %121 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %pcmap, align 8, !tbaa !1
  %glyph_name = getelementptr inbounds %struct.gs_cmap_adobe1_s, %struct.gs_cmap_adobe1_s* %121, i32 0, i32 11
  store i32 (%struct.gs_memory_s*, i64, %struct.gs_const_string_s*, i8*)* @zfcmap_glyph_name, i32 (%struct.gs_memory_s*, i64, %struct.gs_const_string_s*, i8*)** %glyph_name, align 8, !tbaa !50
  %122 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %pcmap, align 8, !tbaa !1
  %glyph_name_data = getelementptr inbounds %struct.gs_cmap_adobe1_s, %struct.gs_cmap_adobe1_s* %122, i32 0, i32 12
  store i8* null, i8** %glyph_name_data, align 8, !tbaa !51
  %123 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %pcmap, align 8, !tbaa !1
  %124 = bitcast %struct.gs_cmap_adobe1_s* %123 to %struct.obj_header_s*
  %value151 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rcmap, i32 0, i32 1
  %pstruct = bitcast %union.v* %value151 to %struct.obj_header_s**
  store %struct.obj_header_s* %124, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %125 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory152 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %125, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory152, i32 0, i32 2
  %126 = load i32, i32* %current_space, align 4, !tbaa !52
  %or = or i32 96, %126
  %127 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory153 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %127, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory153, i32 0, i32 5
  %128 = load i32, i32* %new_mask, align 4, !tbaa !53
  %or154 = or i32 %or, %128
  %add = add i32 2048, %or154
  %conv155 = trunc i32 %add to i16
  %tas156 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rcmap, i32 0, i32 0
  %type_attrs157 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas156, i32 0, i32 0
  store i16 %conv155, i16* %type_attrs157, align 2, !tbaa !6
  %129 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %130 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %130, i32 0, i32 24
  %call158 = call i32 @dict_put_string(%struct.ref_s* %129, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), %struct.ref_s* %rcmap, %struct.dict_stack_s* %dict_stack) #5
  store i32 %call158, i32* %code, align 4, !tbaa !15
  %131 = load i32, i32* %code, align 4, !tbaa !15
  %cmp159 = icmp slt i32 %131, 0
  br i1 %cmp159, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %if.end.150
  br label %fail

if.end.162:                                       ; preds = %if.end.150
  %132 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call163 = call i32 @zreadonly(%struct.gs_context_state_s* %132) #5
  store i32 %call163, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

fail:                                             ; preds = %if.then.161, %if.then.135, %if.then.128, %if.then.121, %if.then.105, %if.then.92, %if.then.80, %if.then.61, %if.then.49, %if.then.44, %if.then.18, %if.then.10
  %133 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %pcmap, align 8, !tbaa !1
  %tobool164 = icmp ne %struct.gs_cmap_adobe1_s* %133, null
  br i1 %tobool164, label %if.then.165, label %if.end.183

if.then.165:                                      ; preds = %fail
  %134 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %pcmap, align 8, !tbaa !1
  %notdef166 = getelementptr inbounds %struct.gs_cmap_adobe1_s, %struct.gs_cmap_adobe1_s* %134, i32 0, i32 16
  %135 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory167 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %135, i32 0, i32 1
  %current168 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory167, i32 0, i32 0
  %136 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current168, align 8, !tbaa !31
  %137 = bitcast %struct.gs_ref_memory_s* %136 to %struct.gs_memory_s*
  call void @free_code_map(%struct.gx_code_map_s* %notdef166, %struct.gs_memory_s* %137) #5
  %138 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %pcmap, align 8, !tbaa !1
  %def169 = getelementptr inbounds %struct.gs_cmap_adobe1_s, %struct.gs_cmap_adobe1_s* %138, i32 0, i32 15
  %139 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory170 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %139, i32 0, i32 1
  %current171 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory170, i32 0, i32 0
  %140 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current171, align 8, !tbaa !31
  %141 = bitcast %struct.gs_ref_memory_s* %140 to %struct.gs_memory_s*
  call void @free_code_map(%struct.gx_code_map_s* %def169, %struct.gs_memory_s* %141) #5
  %142 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory172 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %142, i32 0, i32 1
  %current173 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory172, i32 0, i32 0
  %143 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current173, align 8, !tbaa !31
  %144 = bitcast %struct.gs_ref_memory_s* %143 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %144, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %145 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !54
  %146 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory174 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %146, i32 0, i32 1
  %current175 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory174, i32 0, i32 0
  %147 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current175, align 8, !tbaa !31
  %148 = bitcast %struct.gs_ref_memory_s* %147 to %struct.gs_memory_s*
  %149 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %pcmap, align 8, !tbaa !1
  %CIDSystemInfo176 = getelementptr inbounds %struct.gs_cmap_adobe1_s, %struct.gs_cmap_adobe1_s* %149, i32 0, i32 3
  %150 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %CIDSystemInfo176, align 8, !tbaa !41
  %151 = bitcast %struct.gs_cid_system_info_s* %150 to i8*
  call void %145(%struct.gs_memory_s* %148, i8* %151, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0)) #5
  %152 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory177 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %152, i32 0, i32 1
  %current178 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory177, i32 0, i32 0
  %153 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current178, align 8, !tbaa !31
  %154 = bitcast %struct.gs_ref_memory_s* %153 to %struct.gs_memory_s*
  %procs179 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %154, i32 0, i32 1
  %free_object180 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs179, i32 0, i32 2
  %155 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object180, align 8, !tbaa !54
  %156 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory181 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %156, i32 0, i32 1
  %current182 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory181, i32 0, i32 0
  %157 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current182, align 8, !tbaa !31
  %158 = bitcast %struct.gs_ref_memory_s* %157 to %struct.gs_memory_s*
  %159 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %pcmap, align 8, !tbaa !1
  %160 = bitcast %struct.gs_cmap_adobe1_s* %159 to i8*
  call void %155(%struct.gs_memory_s* %158, i8* %160, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0)) #5
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.165, %fail
  %161 = load i32, i32* %code, align 4, !tbaa !15
  store i32 %161, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.183, %if.end.162, %if.then.5, %if.then
  %162 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #1
  %163 = bitcast %struct.ref_s* %rcmap to i8*
  call void @llvm.lifetime.end(i64 16, i8* %163) #1
  %164 = bitcast %struct.gs_cmap_adobe1_s** %pcmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %164) #1
  %165 = bitcast %struct.ref_s* %rnotdefs to i8*
  call void @llvm.lifetime.end(i64 16, i8* %165) #1
  %166 = bitcast %struct.ref_s* %rdefs to i8*
  call void @llvm.lifetime.end(i64 16, i8* %166) #1
  %167 = bitcast %struct.ref_s* %rcoderanges to i8*
  call void @llvm.lifetime.end(i64 16, i8* %167) #1
  %168 = bitcast %struct.ref_s* %rcidsi to i8*
  call void @llvm.lifetime.end(i64 16, i8* %168) #1
  %169 = bitcast %struct.ref_s* %rname to i8*
  call void @llvm.lifetime.end(i64 16, i8* %169) #1
  %170 = bitcast %struct.ref_s** %pcodemap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #1
  %171 = bitcast %struct.ref_s** %pcodemapdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %171) #1
  %172 = bitcast %struct.ref_s** %puidoffset to i8*
  call void @llvm.lifetime.end(i64 8, i8* %172) #1
  %173 = bitcast %struct.ref_s** %pcmapname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #1
  %174 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
  %175 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %175) #1
  %176 = load i32, i32* %retval
  ret i32 %176
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @check_type_failed(%struct.ref_s*) #2

declare void @names_string_ref(%struct.name_table_s*, %struct.ref_s*, %struct.ref_s*) #2

declare i32 @gs_cmap_adobe1_alloc(%struct.gs_cmap_adobe1_s**, i32, i8*, i32, i32, i32, i32, i32, i32, %struct.gs_cid_system_info_s*, %struct.gs_memory_s*) #2

declare i32 @dict_int_param(%struct.ref_s*, i8*, i32, i32, i32, i32*) #2

declare i32 @dict_float_param(%struct.ref_s*, i8*, double, float*) #2

declare i32 @dict_uid_param(%struct.ref_s*, %struct.gs_uid_s*, i32, %struct.gs_memory_s*, %struct.gs_context_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @get_cid_system_info(%struct.gs_memory_s* %mem, %struct.gs_cid_system_info_s* %pcidsi, %struct.ref_s* %psia, i32 %index) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pcidsi.addr = alloca %struct.gs_cid_system_info_s*, align 8
  %psia.addr = alloca %struct.ref_s*, align 8
  %index.addr = alloca i32, align 4
  %rcidsi = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_cid_system_info_s* %pcidsi, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  store %struct.ref_s* %psia, %struct.ref_s** %psia.addr, align 8, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !15
  %0 = bitcast %struct.ref_s* %rcidsi to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %psia.addr, align 8, !tbaa !1
  %4 = load i32, i32* %index.addr, align 4, !tbaa !15
  %conv = zext i32 %4 to i64
  %call = call i32 @array_get(%struct.gs_memory_s* %2, %struct.ref_s* %3, i64 %conv, %struct.ref_s* %rcidsi) #5
  store i32 %call, i32* %code, align 4, !tbaa !15
  %5 = load i32, i32* %code, align 4, !tbaa !15
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rcidsi, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %6 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv2 = zext i8 %7 to i32
  %cmp3 = icmp eq i32 %conv2, 14
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %8 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  call void @cid_system_info_set_null(%struct.gs_cid_system_info_s* %8) #5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %9 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  %call5 = call i32 @cid_system_info_param(%struct.gs_cid_system_info_s* %9, %struct.ref_s* %rcidsi) #5
  store i32 %call5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %11 = bitcast %struct.ref_s* %rcidsi to i8*
  call void @llvm.lifetime.end(i64 16, i8* %11) #1
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @acquire_code_ranges(%struct.gs_cmap_adobe1_s* %cmap, %struct.ref_s* %pref, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %cmap.addr = alloca %struct.gs_cmap_adobe1_s*, align 8
  %pref.addr = alloca %struct.ref_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %num_ranges = alloca i32, align 4
  %ranges = alloca %struct.gx_code_space_range_s*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %elem_sz = alloca i32, align 4
  %elem = alloca %struct.ref_s, align 8
  %cleanup.dest.slot = alloca i32
  %code = alloca i32, align 4
  %rfirst = alloca %struct.ref_s, align 8
  %rlast = alloca %struct.ref_s, align 8
  %size = alloca i32, align 4
  store %struct.gs_cmap_adobe1_s* %cmap, %struct.gs_cmap_adobe1_s** %cmap.addr, align 8, !tbaa !1
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %num_ranges to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %num_ranges, align 4, !tbaa !15
  %1 = bitcast %struct.gx_code_space_range_s** %ranges to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %elem_sz to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.ref_s* %elem to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #1
  %6 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %7 = load i16, i16* %type_attrs, align 2, !tbaa !6
  %conv = zext i16 %7 to i32
  %and = and i32 %conv, 15360
  %cmp = icmp eq i32 %and, 1024
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.100

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4, !tbaa !15
  %9 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 2
  %10 = load i32, i32* %rsize, align 4, !tbaa !14
  %cmp3 = icmp ult i32 %8, %10
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %13 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %14 = load i32, i32* %i, align 4, !tbaa !15
  %conv5 = zext i32 %14 to i64
  %call = call i32 @array_get(%struct.gs_memory_s* %12, %struct.ref_s* %13, i64 %conv5, %struct.ref_s* %elem) #5
  store i32 %call, i32* %code, align 4, !tbaa !15
  %15 = load i32, i32* %code, align 4, !tbaa !15
  %cmp6 = icmp slt i32 %15, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.body
  %16 = load i32, i32* %code, align 4, !tbaa !15
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %for.body
  %tas10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %elem, i32 0, i32 0
  %rsize11 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas10, i32 0, i32 2
  %17 = load i32, i32* %rsize11, align 4, !tbaa !14
  store i32 %17, i32* %elem_sz, align 4, !tbaa !15
  %18 = load i32, i32* %elem_sz, align 4, !tbaa !15
  %and12 = and i32 %18, 1
  %tobool = icmp ne i32 %and12, 0
  br i1 %tobool, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.9
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end.9
  %19 = load i32, i32* %elem_sz, align 4, !tbaa !15
  %20 = load i32, i32* %num_ranges, align 4, !tbaa !15
  %add = add i32 %20, %19
  store i32 %add, i32* %num_ranges, align 4, !tbaa !15
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then.13, %if.then.8
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.100 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %22 = load i32, i32* %i, align 4, !tbaa !15
  %inc = add i32 %22, 1
  store i32 %inc, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %num_ranges, align 4, !tbaa !15
  %cmp15 = icmp eq i32 %23, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %for.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.100

if.end.18:                                        ; preds = %for.end
  %24 = load i32, i32* %num_ranges, align 4, !tbaa !15
  %shr = lshr i32 %24, 1
  store i32 %shr, i32* %num_ranges, align 4, !tbaa !15
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %26 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !55
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %28 = load i32, i32* %num_ranges, align 4, !tbaa !15
  %call19 = call i8* %26(%struct.gs_memory_s* %27, i32 %28, i32 12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0)) #5
  %29 = bitcast i8* %call19 to %struct.gx_code_space_range_s*
  store %struct.gx_code_space_range_s* %29, %struct.gx_code_space_range_s** %ranges, align 8, !tbaa !1
  %30 = load %struct.gx_code_space_range_s*, %struct.gx_code_space_range_s** %ranges, align 8, !tbaa !1
  %cmp20 = icmp eq %struct.gx_code_space_range_s* %30, null
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.18
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.100

if.end.23:                                        ; preds = %if.end.18
  %31 = load %struct.gx_code_space_range_s*, %struct.gx_code_space_range_s** %ranges, align 8, !tbaa !1
  %32 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %cmap.addr, align 8, !tbaa !1
  %code_space = getelementptr inbounds %struct.gs_cmap_adobe1_s, %struct.gs_cmap_adobe1_s* %32, i32 0, i32 14
  %ranges24 = getelementptr inbounds %struct.gx_code_space_s, %struct.gx_code_space_s* %code_space, i32 0, i32 0
  store %struct.gx_code_space_range_s* %31, %struct.gx_code_space_range_s** %ranges24, align 8, !tbaa !56
  %33 = load i32, i32* %num_ranges, align 4, !tbaa !15
  %34 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %cmap.addr, align 8, !tbaa !1
  %code_space25 = getelementptr inbounds %struct.gs_cmap_adobe1_s, %struct.gs_cmap_adobe1_s* %34, i32 0, i32 14
  %num_ranges26 = getelementptr inbounds %struct.gx_code_space_s, %struct.gx_code_space_s* %code_space25, i32 0, i32 1
  store i32 %33, i32* %num_ranges26, align 4, !tbaa !57
  store i32 0, i32* %i, align 4, !tbaa !15
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.97, %if.end.23
  %35 = load i32, i32* %i, align 4, !tbaa !15
  %36 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 0
  %rsize29 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas28, i32 0, i32 2
  %37 = load i32, i32* %rsize29, align 4, !tbaa !14
  %cmp30 = icmp ult i32 %35, %37
  br i1 %cmp30, label %for.body.32, label %for.end.99

for.body.32:                                      ; preds = %for.cond.27
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %39 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %40 = load i32, i32* %i, align 4, !tbaa !15
  %conv33 = zext i32 %40 to i64
  %call34 = call i32 @array_get(%struct.gs_memory_s* %38, %struct.ref_s* %39, i64 %conv33, %struct.ref_s* %elem) #5
  %tas35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %elem, i32 0, i32 0
  %rsize36 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas35, i32 0, i32 2
  %41 = load i32, i32* %rsize36, align 4, !tbaa !14
  store i32 %41, i32* %elem_sz, align 4, !tbaa !15
  store i32 0, i32* %j, align 4, !tbaa !15
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.94, %for.body.32
  %42 = load i32, i32* %j, align 4, !tbaa !15
  %43 = load i32, i32* %elem_sz, align 4, !tbaa !15
  %cmp38 = icmp ult i32 %42, %43
  br i1 %cmp38, label %for.body.40, label %for.end.96

for.body.40:                                      ; preds = %for.cond.37
  %44 = bitcast %struct.ref_s* %rfirst to i8*
  call void @llvm.lifetime.start(i64 16, i8* %44) #1
  %45 = bitcast %struct.ref_s* %rlast to i8*
  call void @llvm.lifetime.start(i64 16, i8* %45) #1
  %46 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %48 = load i32, i32* %j, align 4, !tbaa !15
  %conv41 = zext i32 %48 to i64
  %call42 = call i32 @array_get(%struct.gs_memory_s* %47, %struct.ref_s* %elem, i64 %conv41, %struct.ref_s* %rfirst) #5
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %50 = load i32, i32* %j, align 4, !tbaa !15
  %add43 = add i32 %50, 1
  %conv44 = zext i32 %add43 to i64
  %call45 = call i32 @array_get(%struct.gs_memory_s* %49, %struct.ref_s* %elem, i64 %conv44, %struct.ref_s* %rlast) #5
  %tas46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rfirst, i32 0, i32 0
  %type_attrs47 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas46, i32 0, i32 0
  %51 = bitcast i16* %type_attrs47 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %51, i64 1
  %52 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv48 = zext i8 %52 to i32
  %cmp49 = icmp eq i32 %conv48, 18
  br i1 %cmp49, label %lor.lhs.false, label %if.then.77

lor.lhs.false:                                    ; preds = %for.body.40
  %tas51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rlast, i32 0, i32 0
  %type_attrs52 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas51, i32 0, i32 0
  %53 = bitcast i16* %type_attrs52 to i8*
  %arrayidx53 = getelementptr inbounds i8, i8* %53, i64 1
  %54 = load i8, i8* %arrayidx53, align 1, !tbaa !5
  %conv54 = zext i8 %54 to i32
  %cmp55 = icmp eq i32 %conv54, 18
  br i1 %cmp55, label %lor.lhs.false.57, label %if.then.77

lor.lhs.false.57:                                 ; preds = %lor.lhs.false
  %tas58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rfirst, i32 0, i32 0
  %rsize59 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas58, i32 0, i32 2
  %55 = load i32, i32* %rsize59, align 4, !tbaa !14
  store i32 %55, i32* %size, align 4, !tbaa !15
  %cmp60 = icmp eq i32 %55, 0
  br i1 %cmp60, label %if.then.77, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %lor.lhs.false.57
  %56 = load i32, i32* %size, align 4, !tbaa !15
  %cmp63 = icmp sgt i32 %56, 4
  br i1 %cmp63, label %if.then.77, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %lor.lhs.false.62
  %tas66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rlast, i32 0, i32 0
  %rsize67 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas66, i32 0, i32 2
  %57 = load i32, i32* %rsize67, align 4, !tbaa !14
  %58 = load i32, i32* %size, align 4, !tbaa !15
  %cmp68 = icmp ne i32 %57, %58
  br i1 %cmp68, label %if.then.77, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %lor.lhs.false.65
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rfirst, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %59 = load i8*, i8** %bytes, align 8, !tbaa !1
  %value71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rlast, i32 0, i32 1
  %bytes72 = bitcast %union.v* %value71 to i8**
  %60 = load i8*, i8** %bytes72, align 8, !tbaa !1
  %61 = load i32, i32* %size, align 4, !tbaa !15
  %conv73 = sext i32 %61 to i64
  %call74 = call i32 @memcmp(i8* %59, i8* %60, i64 %conv73) #6
  %cmp75 = icmp sgt i32 %call74, 0
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %lor.lhs.false.70, %lor.lhs.false.65, %lor.lhs.false.62, %lor.lhs.false.57, %lor.lhs.false, %for.body.40
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.89

if.end.78:                                        ; preds = %lor.lhs.false.70
  %62 = load %struct.gx_code_space_range_s*, %struct.gx_code_space_range_s** %ranges, align 8, !tbaa !1
  %first = getelementptr inbounds %struct.gx_code_space_range_s, %struct.gx_code_space_range_s* %62, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %first, i32 0, i32 0
  %value79 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rfirst, i32 0, i32 1
  %bytes80 = bitcast %union.v* %value79 to i8**
  %63 = load i8*, i8** %bytes80, align 8, !tbaa !1
  %64 = load i32, i32* %size, align 4, !tbaa !15
  %conv81 = sext i32 %64 to i64
  %call82 = call i8* @memcpy(i8* %arraydecay, i8* %63, i64 %conv81) #7
  %65 = load %struct.gx_code_space_range_s*, %struct.gx_code_space_range_s** %ranges, align 8, !tbaa !1
  %last = getelementptr inbounds %struct.gx_code_space_range_s, %struct.gx_code_space_range_s* %65, i32 0, i32 1
  %arraydecay83 = getelementptr inbounds [4 x i8], [4 x i8]* %last, i32 0, i32 0
  %value84 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rlast, i32 0, i32 1
  %bytes85 = bitcast %union.v* %value84 to i8**
  %66 = load i8*, i8** %bytes85, align 8, !tbaa !1
  %67 = load i32, i32* %size, align 4, !tbaa !15
  %conv86 = sext i32 %67 to i64
  %call87 = call i8* @memcpy(i8* %arraydecay83, i8* %66, i64 %conv86) #7
  %68 = load i32, i32* %size, align 4, !tbaa !15
  %69 = load %struct.gx_code_space_range_s*, %struct.gx_code_space_range_s** %ranges, align 8, !tbaa !1
  %size88 = getelementptr inbounds %struct.gx_code_space_range_s, %struct.gx_code_space_range_s* %69, i32 0, i32 2
  store i32 %68, i32* %size88, align 4, !tbaa !58
  %70 = load %struct.gx_code_space_range_s*, %struct.gx_code_space_range_s** %ranges, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.gx_code_space_range_s, %struct.gx_code_space_range_s* %70, i32 1
  store %struct.gx_code_space_range_s* %incdec.ptr, %struct.gx_code_space_range_s** %ranges, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.89

cleanup.89:                                       ; preds = %if.end.78, %if.then.77
  %71 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast %struct.ref_s* %rlast to i8*
  call void @llvm.lifetime.end(i64 16, i8* %72) #1
  %73 = bitcast %struct.ref_s* %rfirst to i8*
  call void @llvm.lifetime.end(i64 16, i8* %73) #1
  %cleanup.dest.92 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.92, label %cleanup.100 [
    i32 0, label %cleanup.cont.93
  ]

cleanup.cont.93:                                  ; preds = %cleanup.89
  br label %for.inc.94

for.inc.94:                                       ; preds = %cleanup.cont.93
  %74 = load i32, i32* %j, align 4, !tbaa !15
  %add95 = add i32 %74, 2
  store i32 %add95, i32* %j, align 4, !tbaa !15
  br label %for.cond.37

for.end.96:                                       ; preds = %for.cond.37
  br label %for.inc.97

for.inc.97:                                       ; preds = %for.end.96
  %75 = load i32, i32* %i, align 4, !tbaa !15
  %inc98 = add i32 %75, 1
  store i32 %inc98, i32* %i, align 4, !tbaa !15
  br label %for.cond.27

for.end.99:                                       ; preds = %for.cond.27
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.100

cleanup.100:                                      ; preds = %for.end.99, %cleanup.89, %if.then.22, %if.then.17, %cleanup, %if.then
  %76 = bitcast %struct.ref_s* %elem to i8*
  call void @llvm.lifetime.end(i64 16, i8* %76) #1
  %77 = bitcast i32* %elem_sz to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = bitcast %struct.gx_code_space_range_s** %ranges to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = bitcast i32* %num_ranges to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = load i32, i32* %retval
  ret i32 %82
}

; Function Attrs: nounwind uwtable
define internal i32 @acquire_code_map(%struct.gx_code_map_s* %pcmap, %struct.ref_s* %pref, %struct.gs_cmap_adobe1_s* %root, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pcmap.addr = alloca %struct.gx_code_map_s*, align 8
  %pref.addr = alloca %struct.ref_s*, align 8
  %root.addr = alloca %struct.gs_cmap_adobe1_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %num_lookup = alloca i32, align 4
  %pclr = alloca %struct.gx_cmap_lookup_range_s*, align 8
  %i = alloca i64, align 8
  %elem = alloca %struct.ref_s, align 8
  %elem_sz = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %code = alloca i32, align 4
  %j = alloca i32, align 4
  %rprefix = alloca %struct.ref_s, align 8
  %rmisc = alloca %struct.ref_s, align 8
  %rkeys = alloca %struct.ref_s, align 8
  %rvalues = alloca %struct.ref_s, align 8
  %rfxs = alloca %struct.ref_s, align 8
  %step = alloca i32, align 4
  %values_size = alloca i32, align 4
  %k = alloca i64, align 8
  %pvalue = alloca i8*, align 8
  %rvalue = alloca %struct.ref_s, align 8
  %value258 = alloca i64, align 8
  %i259 = alloca i32, align 4
  store %struct.gx_code_map_s* %pcmap, %struct.gx_code_map_s** %pcmap.addr, align 8, !tbaa !1
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  store %struct.gs_cmap_adobe1_s* %root, %struct.gs_cmap_adobe1_s** %root.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %num_lookup to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %num_lookup, align 4, !tbaa !15
  %1 = bitcast %struct.gx_cmap_lookup_range_s** %pclr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.ref_s* %elem to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast i32* %elem_sz to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %6 = load i16, i16* %type_attrs, align 2, !tbaa !6
  %conv = zext i16 %6 to i32
  %and = and i32 %conv, 15360
  %cmp = icmp eq i32 %and, 1024
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.341

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i64, i64* %i, align 8, !tbaa !18
  %8 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 2
  %9 = load i32, i32* %rsize, align 4, !tbaa !14
  %conv3 = zext i32 %9 to i64
  %cmp4 = icmp slt i64 %7, %conv3
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %12 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %13 = load i64, i64* %i, align 8, !tbaa !18
  %call = call i32 @array_get(%struct.gs_memory_s* %11, %struct.ref_s* %12, i64 %13, %struct.ref_s* %elem) #5
  store i32 %call, i32* %code, align 4, !tbaa !15
  %14 = load i32, i32* %code, align 4, !tbaa !15
  %cmp6 = icmp slt i32 %14, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.body
  %15 = load i32, i32* %code, align 4, !tbaa !15
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %for.body
  %tas10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %elem, i32 0, i32 0
  %rsize11 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas10, i32 0, i32 2
  %16 = load i32, i32* %rsize11, align 4, !tbaa !14
  store i32 %16, i32* %elem_sz, align 4, !tbaa !15
  %17 = load i32, i32* %elem_sz, align 4, !tbaa !15
  %rem = urem i32 %17, 5
  %cmp12 = icmp ne i32 %rem, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.9
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.end.9
  %18 = load i32, i32* %elem_sz, align 4, !tbaa !15
  %19 = load i32, i32* %num_lookup, align 4, !tbaa !15
  %add = add i32 %19, %18
  store i32 %add, i32* %num_lookup, align 4, !tbaa !15
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.15, %if.then.14, %if.then.8
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.341 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %21 = load i64, i64* %i, align 8, !tbaa !18
  %inc = add nsw i64 %21, 1
  store i64 %inc, i64* %i, align 8, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %num_lookup, align 4, !tbaa !15
  %div = udiv i32 %22, 5
  store i32 %div, i32* %num_lookup, align 4, !tbaa !15
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 1
  %alloc_struct_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 12
  %24 = load i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_array, align 8, !tbaa !60
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %26 = load i32, i32* %num_lookup, align 4, !tbaa !15
  %call16 = call i8* %24(%struct.gs_memory_s* %25, i32 %26, %struct.gs_memory_struct_type_s* @st_cmap_lookup_range_element, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i32 0, i32 0)) #5
  %27 = bitcast i8* %call16 to %struct.gx_cmap_lookup_range_s*
  store %struct.gx_cmap_lookup_range_s* %27, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %28 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %cmp17 = icmp eq %struct.gx_cmap_lookup_range_s* %28, null
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %for.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.341

if.end.20:                                        ; preds = %for.end
  %29 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %30 = bitcast %struct.gx_cmap_lookup_range_s* %29 to i8*
  %31 = load i32, i32* %num_lookup, align 4, !tbaa !15
  %conv21 = zext i32 %31 to i64
  %mul = mul i64 80, %conv21
  %call22 = call i8* @memset(i8* %30, i32 0, i64 %mul) #7
  %32 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %33 = load %struct.gx_code_map_s*, %struct.gx_code_map_s** %pcmap.addr, align 8, !tbaa !1
  %lookup = getelementptr inbounds %struct.gx_code_map_s, %struct.gx_code_map_s* %33, i32 0, i32 0
  store %struct.gx_cmap_lookup_range_s* %32, %struct.gx_cmap_lookup_range_s** %lookup, align 8, !tbaa !61
  %34 = load i32, i32* %num_lookup, align 4, !tbaa !15
  %35 = load %struct.gx_code_map_s*, %struct.gx_code_map_s** %pcmap.addr, align 8, !tbaa !1
  %num_lookup23 = getelementptr inbounds %struct.gx_code_map_s, %struct.gx_code_map_s* %35, i32 0, i32 1
  store i32 %34, i32* %num_lookup23, align 4, !tbaa !62
  store i64 0, i64* %i, align 8, !tbaa !18
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.338, %if.end.20
  %36 = load i64, i64* %i, align 8, !tbaa !18
  %37 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 0
  %rsize26 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas25, i32 0, i32 2
  %38 = load i32, i32* %rsize26, align 4, !tbaa !14
  %conv27 = zext i32 %38 to i64
  %cmp28 = icmp slt i64 %36, %conv27
  br i1 %cmp28, label %for.body.30, label %for.end.340

for.body.30:                                      ; preds = %for.cond.24
  %39 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %41 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %42 = load i64, i64* %i, align 8, !tbaa !18
  %call31 = call i32 @array_get(%struct.gs_memory_s* %40, %struct.ref_s* %41, i64 %42, %struct.ref_s* %elem) #5
  %tas32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %elem, i32 0, i32 0
  %rsize33 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas32, i32 0, i32 2
  %43 = load i32, i32* %rsize33, align 4, !tbaa !14
  store i32 %43, i32* %elem_sz, align 4, !tbaa !15
  store i32 0, i32* %j, align 4, !tbaa !15
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.332, %for.body.30
  %44 = load i32, i32* %j, align 4, !tbaa !15
  %45 = load i32, i32* %elem_sz, align 4, !tbaa !15
  %cmp35 = icmp ult i32 %44, %45
  br i1 %cmp35, label %for.body.37, label %for.end.334

for.body.37:                                      ; preds = %for.cond.34
  %46 = bitcast %struct.ref_s* %rprefix to i8*
  call void @llvm.lifetime.start(i64 16, i8* %46) #1
  %47 = bitcast %struct.ref_s* %rmisc to i8*
  call void @llvm.lifetime.start(i64 16, i8* %47) #1
  %48 = bitcast %struct.ref_s* %rkeys to i8*
  call void @llvm.lifetime.start(i64 16, i8* %48) #1
  %49 = bitcast %struct.ref_s* %rvalues to i8*
  call void @llvm.lifetime.start(i64 16, i8* %49) #1
  %50 = bitcast %struct.ref_s* %rfxs to i8*
  call void @llvm.lifetime.start(i64 16, i8* %50) #1
  %51 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %52 = load i32, i32* %j, align 4, !tbaa !15
  %conv38 = zext i32 %52 to i64
  %call39 = call i32 @array_get(%struct.gs_memory_s* %51, %struct.ref_s* %elem, i64 %conv38, %struct.ref_s* %rprefix) #5
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %54 = load i32, i32* %j, align 4, !tbaa !15
  %add40 = add i32 %54, 1
  %conv41 = zext i32 %add40 to i64
  %call42 = call i32 @array_get(%struct.gs_memory_s* %53, %struct.ref_s* %elem, i64 %conv41, %struct.ref_s* %rmisc) #5
  %55 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %56 = load i32, i32* %j, align 4, !tbaa !15
  %add43 = add i32 %56, 2
  %conv44 = zext i32 %add43 to i64
  %call45 = call i32 @array_get(%struct.gs_memory_s* %55, %struct.ref_s* %elem, i64 %conv44, %struct.ref_s* %rkeys) #5
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %58 = load i32, i32* %j, align 4, !tbaa !15
  %add46 = add i32 %58, 3
  %conv47 = zext i32 %add46 to i64
  %call48 = call i32 @array_get(%struct.gs_memory_s* %57, %struct.ref_s* %elem, i64 %conv47, %struct.ref_s* %rvalues) #5
  %59 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %60 = load i32, i32* %j, align 4, !tbaa !15
  %add49 = add i32 %60, 4
  %conv50 = zext i32 %add49 to i64
  %call51 = call i32 @array_get(%struct.gs_memory_s* %59, %struct.ref_s* %elem, i64 %conv50, %struct.ref_s* %rfxs) #5
  %tas52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rprefix, i32 0, i32 0
  %type_attrs53 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas52, i32 0, i32 0
  %61 = bitcast i16* %type_attrs53 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %61, i64 1
  %62 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv54 = zext i8 %62 to i32
  %cmp55 = icmp eq i32 %conv54, 18
  br i1 %cmp55, label %lor.lhs.false, label %if.then.91

lor.lhs.false:                                    ; preds = %for.body.37
  %tas57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rmisc, i32 0, i32 0
  %type_attrs58 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas57, i32 0, i32 0
  %63 = bitcast i16* %type_attrs58 to i8*
  %arrayidx59 = getelementptr inbounds i8, i8* %63, i64 1
  %64 = load i8, i8* %arrayidx59, align 1, !tbaa !5
  %conv60 = zext i8 %64 to i32
  %cmp61 = icmp eq i32 %conv60, 18
  br i1 %cmp61, label %lor.lhs.false.63, label %if.then.91

lor.lhs.false.63:                                 ; preds = %lor.lhs.false
  %tas64 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rkeys, i32 0, i32 0
  %type_attrs65 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas64, i32 0, i32 0
  %65 = bitcast i16* %type_attrs65 to i8*
  %arrayidx66 = getelementptr inbounds i8, i8* %65, i64 1
  %66 = load i8, i8* %arrayidx66, align 1, !tbaa !5
  %conv67 = zext i8 %66 to i32
  %cmp68 = icmp eq i32 %conv67, 18
  br i1 %cmp68, label %lor.lhs.false.70, label %if.then.91

lor.lhs.false.70:                                 ; preds = %lor.lhs.false.63
  %tas71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rvalues, i32 0, i32 0
  %type_attrs72 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas71, i32 0, i32 0
  %67 = bitcast i16* %type_attrs72 to i8*
  %arrayidx73 = getelementptr inbounds i8, i8* %67, i64 1
  %68 = load i8, i8* %arrayidx73, align 1, !tbaa !5
  %conv74 = zext i8 %68 to i32
  %cmp75 = icmp eq i32 %conv74, 18
  br i1 %cmp75, label %lor.lhs.false.84, label %lor.lhs.false.77

lor.lhs.false.77:                                 ; preds = %lor.lhs.false.70
  %tas78 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rvalues, i32 0, i32 0
  %type_attrs79 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas78, i32 0, i32 0
  %69 = load i16, i16* %type_attrs79, align 2, !tbaa !6
  %conv80 = zext i16 %69 to i32
  %and81 = and i32 %conv80, 15360
  %cmp82 = icmp eq i32 %and81, 1024
  br i1 %cmp82, label %lor.lhs.false.84, label %if.then.91

lor.lhs.false.84:                                 ; preds = %lor.lhs.false.77, %lor.lhs.false.70
  %tas85 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rfxs, i32 0, i32 0
  %type_attrs86 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas85, i32 0, i32 0
  %70 = bitcast i16* %type_attrs86 to i8*
  %arrayidx87 = getelementptr inbounds i8, i8* %70, i64 1
  %71 = load i8, i8* %arrayidx87, align 1, !tbaa !5
  %conv88 = zext i8 %71 to i32
  %cmp89 = icmp eq i32 %conv88, 11
  br i1 %cmp89, label %if.end.92, label %if.then.91

if.then.91:                                       ; preds = %lor.lhs.false.84, %lor.lhs.false.77, %lor.lhs.false.63, %lor.lhs.false, %for.body.37
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.325

if.end.92:                                        ; preds = %lor.lhs.false.84
  %tas93 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rmisc, i32 0, i32 0
  %rsize94 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas93, i32 0, i32 2
  %72 = load i32, i32* %rsize94, align 4, !tbaa !14
  %cmp95 = icmp ne i32 %72, 4
  br i1 %cmp95, label %if.then.125, label %lor.lhs.false.97

lor.lhs.false.97:                                 ; preds = %if.end.92
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rmisc, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %73 = load i8*, i8** %bytes, align 8, !tbaa !1
  %arrayidx98 = getelementptr inbounds i8, i8* %73, i64 0
  %74 = load i8, i8* %arrayidx98, align 1, !tbaa !5
  %conv99 = zext i8 %74 to i32
  %tas100 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rprefix, i32 0, i32 0
  %rsize101 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas100, i32 0, i32 2
  %75 = load i32, i32* %rsize101, align 4, !tbaa !14
  %sub = sub i32 4, %75
  %cmp102 = icmp ugt i32 %conv99, %sub
  br i1 %cmp102, label %if.then.125, label %lor.lhs.false.104

lor.lhs.false.104:                                ; preds = %lor.lhs.false.97
  %value105 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rmisc, i32 0, i32 1
  %bytes106 = bitcast %union.v* %value105 to i8**
  %76 = load i8*, i8** %bytes106, align 8, !tbaa !1
  %arrayidx107 = getelementptr inbounds i8, i8* %76, i64 1
  %77 = load i8, i8* %arrayidx107, align 1, !tbaa !5
  %conv108 = zext i8 %77 to i32
  %cmp109 = icmp sgt i32 %conv108, 1
  br i1 %cmp109, label %if.then.125, label %lor.lhs.false.111

lor.lhs.false.111:                                ; preds = %lor.lhs.false.104
  %value112 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rmisc, i32 0, i32 1
  %bytes113 = bitcast %union.v* %value112 to i8**
  %78 = load i8*, i8** %bytes113, align 8, !tbaa !1
  %arrayidx114 = getelementptr inbounds i8, i8* %78, i64 2
  %79 = load i8, i8* %arrayidx114, align 1, !tbaa !5
  %conv115 = zext i8 %79 to i32
  %cmp116 = icmp sgt i32 %conv115, 3
  br i1 %cmp116, label %if.then.125, label %lor.lhs.false.118

lor.lhs.false.118:                                ; preds = %lor.lhs.false.111
  %value119 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rmisc, i32 0, i32 1
  %bytes120 = bitcast %union.v* %value119 to i8**
  %80 = load i8*, i8** %bytes120, align 8, !tbaa !1
  %arrayidx121 = getelementptr inbounds i8, i8* %80, i64 3
  %81 = load i8, i8* %arrayidx121, align 1, !tbaa !5
  %conv122 = zext i8 %81 to i32
  %cmp123 = icmp eq i32 %conv122, 0
  br i1 %cmp123, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %lor.lhs.false.118, %lor.lhs.false.111, %lor.lhs.false.104, %lor.lhs.false.97, %if.end.92
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.325

if.end.126:                                       ; preds = %lor.lhs.false.118
  %82 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %root.addr, align 8, !tbaa !1
  %83 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %cmap = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %83, i32 0, i32 0
  store %struct.gs_cmap_adobe1_s* %82, %struct.gs_cmap_adobe1_s** %cmap, align 8, !tbaa !63
  %value127 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rmisc, i32 0, i32 1
  %bytes128 = bitcast %union.v* %value127 to i8**
  %84 = load i8*, i8** %bytes128, align 8, !tbaa !1
  %arrayidx129 = getelementptr inbounds i8, i8* %84, i64 0
  %85 = load i8, i8* %arrayidx129, align 1, !tbaa !5
  %conv130 = zext i8 %85 to i32
  %86 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %key_size = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %86, i32 0, i32 4
  store i32 %conv130, i32* %key_size, align 4, !tbaa !66
  %tas131 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rprefix, i32 0, i32 0
  %rsize132 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas131, i32 0, i32 2
  %87 = load i32, i32* %rsize132, align 4, !tbaa !14
  %88 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %key_prefix_size = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %88, i32 0, i32 3
  store i32 %87, i32* %key_prefix_size, align 4, !tbaa !67
  %89 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %key_prefix = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %89, i32 0, i32 2
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %key_prefix, i32 0, i32 0
  %value133 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rprefix, i32 0, i32 1
  %bytes134 = bitcast %union.v* %value133 to i8**
  %90 = load i8*, i8** %bytes134, align 8, !tbaa !1
  %91 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %key_prefix_size135 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %91, i32 0, i32 3
  %92 = load i32, i32* %key_prefix_size135, align 4, !tbaa !67
  %conv136 = sext i32 %92 to i64
  %call137 = call i8* @memcpy(i8* %arraydecay, i8* %90, i64 %conv136) #7
  %value138 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rmisc, i32 0, i32 1
  %bytes139 = bitcast %union.v* %value138 to i8**
  %93 = load i8*, i8** %bytes139, align 8, !tbaa !1
  %arrayidx140 = getelementptr inbounds i8, i8* %93, i64 1
  %94 = load i8, i8* %arrayidx140, align 1, !tbaa !5
  %conv141 = zext i8 %94 to i32
  %95 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %key_is_range = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %95, i32 0, i32 5
  store i32 %conv141, i32* %key_is_range, align 4, !tbaa !68
  %96 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %key_size142 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %96, i32 0, i32 4
  %97 = load i32, i32* %key_size142, align 4, !tbaa !66
  %cmp143 = icmp eq i32 %97, 0
  br i1 %cmp143, label %if.then.145, label %if.else

if.then.145:                                      ; preds = %if.end.126
  %tas146 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rkeys, i32 0, i32 0
  %rsize147 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas146, i32 0, i32 2
  %98 = load i32, i32* %rsize147, align 4, !tbaa !14
  %cmp148 = icmp ne i32 %98, 0
  br i1 %cmp148, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %if.then.145
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.325

if.end.151:                                       ; preds = %if.then.145
  %99 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %num_entries = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %99, i32 0, i32 1
  store i32 1, i32* %num_entries, align 4, !tbaa !69
  br label %if.end.169

if.else:                                          ; preds = %if.end.126
  %100 = bitcast i32* %step to i8*
  call void @llvm.lifetime.start(i64 4, i8* %100) #1
  %101 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %key_size152 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %101, i32 0, i32 4
  %102 = load i32, i32* %key_size152, align 4, !tbaa !66
  %103 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %key_is_range153 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %103, i32 0, i32 5
  %104 = load i32, i32* %key_is_range153, align 4, !tbaa !68
  %tobool = icmp ne i32 %104, 0
  %cond = select i1 %tobool, i32 2, i32 1
  %mul154 = mul nsw i32 %102, %cond
  store i32 %mul154, i32* %step, align 4, !tbaa !15
  %tas155 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rkeys, i32 0, i32 0
  %rsize156 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas155, i32 0, i32 2
  %105 = load i32, i32* %rsize156, align 4, !tbaa !14
  %106 = load i32, i32* %step, align 4, !tbaa !15
  %rem157 = urem i32 %105, %106
  %cmp158 = icmp ne i32 %rem157, 0
  br i1 %cmp158, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %if.else
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.166

if.end.161:                                       ; preds = %if.else
  %tas162 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rkeys, i32 0, i32 0
  %rsize163 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas162, i32 0, i32 2
  %107 = load i32, i32* %rsize163, align 4, !tbaa !14
  %108 = load i32, i32* %step, align 4, !tbaa !15
  %div164 = udiv i32 %107, %108
  %109 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %num_entries165 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %109, i32 0, i32 1
  store i32 %div164, i32* %num_entries165, align 4, !tbaa !69
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.166

cleanup.166:                                      ; preds = %if.end.161, %if.then.160
  %110 = bitcast i32* %step to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  %cleanup.dest.167 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.167, label %cleanup.325 [
    i32 0, label %cleanup.cont.168
  ]

cleanup.cont.168:                                 ; preds = %cleanup.166
  br label %if.end.169

if.end.169:                                       ; preds = %cleanup.cont.168, %if.end.151
  %value170 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rkeys, i32 0, i32 1
  %bytes171 = bitcast %union.v* %value170 to i8**
  %111 = load i8*, i8** %bytes171, align 8, !tbaa !1
  %112 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %keys = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %112, i32 0, i32 6
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %keys, i32 0, i32 0
  store i8* %111, i8** %data, align 8, !tbaa !70
  %tas172 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rkeys, i32 0, i32 0
  %rsize173 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas172, i32 0, i32 2
  %113 = load i32, i32* %rsize173, align 4, !tbaa !14
  %114 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %keys174 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %114, i32 0, i32 6
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %keys174, i32 0, i32 1
  store i32 %113, i32* %size, align 4, !tbaa !71
  %value175 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rmisc, i32 0, i32 1
  %bytes176 = bitcast %union.v* %value175 to i8**
  %115 = load i8*, i8** %bytes176, align 8, !tbaa !1
  %arrayidx177 = getelementptr inbounds i8, i8* %115, i64 2
  %116 = load i8, i8* %arrayidx177, align 1, !tbaa !5
  %conv178 = zext i8 %116 to i32
  %117 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %value_type = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %117, i32 0, i32 7
  store i32 %conv178, i32* %value_type, align 4, !tbaa !72
  %value179 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rmisc, i32 0, i32 1
  %bytes180 = bitcast %union.v* %value179 to i8**
  %118 = load i8*, i8** %bytes180, align 8, !tbaa !1
  %arrayidx181 = getelementptr inbounds i8, i8* %118, i64 3
  %119 = load i8, i8* %arrayidx181, align 1, !tbaa !5
  %conv182 = zext i8 %119 to i32
  %120 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %value_size = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %120, i32 0, i32 8
  store i32 %conv182, i32* %value_size, align 4, !tbaa !73
  %tas183 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rvalues, i32 0, i32 0
  %type_attrs184 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas183, i32 0, i32 0
  %121 = bitcast i16* %type_attrs184 to i8*
  %arrayidx185 = getelementptr inbounds i8, i8* %121, i64 1
  %122 = load i8, i8* %arrayidx185, align 1, !tbaa !5
  %conv186 = zext i8 %122 to i32
  %cmp187 = icmp eq i32 %conv186, 18
  br i1 %cmp187, label %if.then.189, label %if.else.218

if.then.189:                                      ; preds = %if.end.169
  %123 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %value_type190 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %123, i32 0, i32 7
  %124 = load i32, i32* %value_type190, align 4, !tbaa !72
  %cmp191 = icmp eq i32 %124, 1
  br i1 %cmp191, label %if.then.193, label %if.end.194

if.then.193:                                      ; preds = %if.then.189
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.325

if.end.194:                                       ; preds = %if.then.189
  %tas195 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rvalues, i32 0, i32 0
  %rsize196 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas195, i32 0, i32 2
  %125 = load i32, i32* %rsize196, align 4, !tbaa !14
  %126 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %num_entries197 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %126, i32 0, i32 1
  %127 = load i32, i32* %num_entries197, align 4, !tbaa !69
  %rem198 = urem i32 %125, %127
  %cmp199 = icmp ne i32 %rem198, 0
  br i1 %cmp199, label %if.then.209, label %lor.lhs.false.201

lor.lhs.false.201:                                ; preds = %if.end.194
  %tas202 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rvalues, i32 0, i32 0
  %rsize203 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas202, i32 0, i32 2
  %128 = load i32, i32* %rsize203, align 4, !tbaa !14
  %129 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %num_entries204 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %129, i32 0, i32 1
  %130 = load i32, i32* %num_entries204, align 4, !tbaa !69
  %div205 = udiv i32 %128, %130
  %131 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %value_size206 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %131, i32 0, i32 8
  %132 = load i32, i32* %value_size206, align 4, !tbaa !73
  %cmp207 = icmp ne i32 %div205, %132
  br i1 %cmp207, label %if.then.209, label %if.end.210

if.then.209:                                      ; preds = %lor.lhs.false.201, %if.end.194
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.325

if.end.210:                                       ; preds = %lor.lhs.false.201
  %value211 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rvalues, i32 0, i32 1
  %bytes212 = bitcast %union.v* %value211 to i8**
  %133 = load i8*, i8** %bytes212, align 8, !tbaa !1
  %134 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %134, i32 0, i32 9
  %data213 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %values, i32 0, i32 0
  store i8* %133, i8** %data213, align 8, !tbaa !74
  %tas214 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rvalues, i32 0, i32 0
  %rsize215 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas214, i32 0, i32 2
  %135 = load i32, i32* %rsize215, align 4, !tbaa !14
  %136 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %values216 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %136, i32 0, i32 9
  %size217 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %values216, i32 0, i32 1
  store i32 %135, i32* %size217, align 4, !tbaa !75
  br label %if.end.304

if.else.218:                                      ; preds = %if.end.169
  %137 = bitcast i32* %values_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %137) #1
  %138 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %num_entries219 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %138, i32 0, i32 1
  %139 = load i32, i32* %num_entries219, align 4, !tbaa !69
  %140 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %value_size220 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %140, i32 0, i32 8
  %141 = load i32, i32* %value_size220, align 4, !tbaa !73
  %mul221 = mul nsw i32 %139, %141
  store i32 %mul221, i32* %values_size, align 4, !tbaa !15
  %142 = bitcast i64* %k to i8*
  call void @llvm.lifetime.start(i64 8, i8* %142) #1
  %143 = bitcast i8** %pvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %143) #1
  %144 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %value_type222 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %144, i32 0, i32 7
  %145 = load i32, i32* %value_type222, align 4, !tbaa !72
  %cmp223 = icmp ne i32 %145, 1
  br i1 %cmp223, label %if.then.236, label %lor.lhs.false.225

lor.lhs.false.225:                                ; preds = %if.else.218
  %tas226 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rvalues, i32 0, i32 0
  %rsize227 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas226, i32 0, i32 2
  %146 = load i32, i32* %rsize227, align 4, !tbaa !14
  %147 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %num_entries228 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %147, i32 0, i32 1
  %148 = load i32, i32* %num_entries228, align 4, !tbaa !69
  %cmp229 = icmp ne i32 %146, %148
  br i1 %cmp229, label %if.then.236, label %lor.lhs.false.231

lor.lhs.false.231:                                ; preds = %lor.lhs.false.225
  %149 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %value_size232 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %149, i32 0, i32 8
  %150 = load i32, i32* %value_size232, align 4, !tbaa !73
  %conv233 = sext i32 %150 to i64
  %cmp234 = icmp ugt i64 %conv233, 8
  br i1 %cmp234, label %if.then.236, label %if.end.237

if.then.236:                                      ; preds = %lor.lhs.false.231, %lor.lhs.false.225, %if.else.218
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.299

if.end.237:                                       ; preds = %lor.lhs.false.231
  %151 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs238 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %151, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs238, i32 0, i32 16
  %152 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !76
  %153 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %154 = load i32, i32* %values_size, align 4, !tbaa !15
  %call239 = call i8* %152(%struct.gs_memory_s* %153, i32 %154, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0)) #5
  %155 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %values240 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %155, i32 0, i32 9
  %data241 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %values240, i32 0, i32 0
  store i8* %call239, i8** %data241, align 8, !tbaa !74
  %156 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %values242 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %156, i32 0, i32 9
  %data243 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %values242, i32 0, i32 0
  %157 = load i8*, i8** %data243, align 8, !tbaa !74
  %cmp244 = icmp eq i8* %157, null
  br i1 %cmp244, label %if.then.246, label %if.end.247

if.then.246:                                      ; preds = %if.end.237
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.299

if.end.247:                                       ; preds = %if.end.237
  %158 = load i32, i32* %values_size, align 4, !tbaa !15
  %159 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %values248 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %159, i32 0, i32 9
  %size249 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %values248, i32 0, i32 1
  store i32 %158, i32* %size249, align 4, !tbaa !75
  %160 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %values250 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %160, i32 0, i32 9
  %data251 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %values250, i32 0, i32 0
  %161 = load i8*, i8** %data251, align 8, !tbaa !74
  store i8* %161, i8** %pvalue, align 8, !tbaa !1
  store i64 0, i64* %k, align 8, !tbaa !18
  br label %for.cond.252

for.cond.252:                                     ; preds = %for.inc.296, %if.end.247
  %162 = load i64, i64* %k, align 8, !tbaa !18
  %163 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %num_entries253 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %163, i32 0, i32 1
  %164 = load i32, i32* %num_entries253, align 4, !tbaa !69
  %conv254 = sext i32 %164 to i64
  %cmp255 = icmp slt i64 %162, %conv254
  br i1 %cmp255, label %for.body.257, label %for.end.298

for.body.257:                                     ; preds = %for.cond.252
  %165 = bitcast %struct.ref_s* %rvalue to i8*
  call void @llvm.lifetime.start(i64 16, i8* %165) #1
  %166 = bitcast i64* %value258 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %166) #1
  %167 = bitcast i32* %i259 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %167) #1
  %168 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %169 = load i64, i64* %k, align 8, !tbaa !18
  %call260 = call i32 @array_get(%struct.gs_memory_s* %168, %struct.ref_s* %rvalues, i64 %169, %struct.ref_s* %rvalue) #5
  %tas261 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rvalue, i32 0, i32 0
  %type_attrs262 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas261, i32 0, i32 0
  %170 = bitcast i16* %type_attrs262 to i8*
  %arrayidx263 = getelementptr inbounds i8, i8* %170, i64 1
  %171 = load i8, i8* %arrayidx263, align 1, !tbaa !5
  %conv264 = zext i8 %171 to i32
  %cmp265 = icmp eq i32 %conv264, 13
  br i1 %cmp265, label %if.end.268, label %if.then.267

if.then.267:                                      ; preds = %for.body.257
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.291

if.end.268:                                       ; preds = %for.body.257
  %172 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %172, i32 0, i32 2
  %173 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !32
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %173, i32 0, i32 16
  %174 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !33
  %call269 = call i32 @names_index(%struct.name_table_s* %174, %struct.ref_s* %rvalue) #5
  %conv270 = zext i32 %call269 to i64
  store i64 %conv270, i64* %value258, align 8, !tbaa !18
  %175 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %value_size271 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %175, i32 0, i32 8
  %176 = load i32, i32* %value_size271, align 4, !tbaa !73
  %conv272 = sext i32 %176 to i64
  %cmp273 = icmp ult i64 %conv272, 8
  br i1 %cmp273, label %land.lhs.true, label %if.end.280

land.lhs.true:                                    ; preds = %if.end.268
  %177 = load i64, i64* %value258, align 8, !tbaa !18
  %178 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %value_size275 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %178, i32 0, i32 8
  %179 = load i32, i32* %value_size275, align 4, !tbaa !73
  %mul276 = mul nsw i32 %179, 8
  %sh_prom = zext i32 %mul276 to i64
  %shr = lshr i64 %177, %sh_prom
  %cmp277 = icmp ne i64 %shr, 0
  br i1 %cmp277, label %if.then.279, label %if.end.280

if.then.279:                                      ; preds = %land.lhs.true
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.291

if.end.280:                                       ; preds = %land.lhs.true, %if.end.268
  %180 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %value_size281 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %180, i32 0, i32 8
  %181 = load i32, i32* %value_size281, align 4, !tbaa !73
  store i32 %181, i32* %i259, align 4, !tbaa !15
  br label %for.cond.282

for.cond.282:                                     ; preds = %for.body.285, %if.end.280
  %182 = load i32, i32* %i259, align 4, !tbaa !15
  %dec = add nsw i32 %182, -1
  store i32 %dec, i32* %i259, align 4, !tbaa !15
  %cmp283 = icmp sge i32 %dec, 0
  br i1 %cmp283, label %for.body.285, label %for.end.290

for.body.285:                                     ; preds = %for.cond.282
  %183 = load i64, i64* %value258, align 8, !tbaa !18
  %184 = load i32, i32* %i259, align 4, !tbaa !15
  %mul286 = mul nsw i32 %184, 8
  %sh_prom287 = zext i32 %mul286 to i64
  %shr288 = lshr i64 %183, %sh_prom287
  %conv289 = trunc i64 %shr288 to i8
  %185 = load i8*, i8** %pvalue, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %185, i32 1
  store i8* %incdec.ptr, i8** %pvalue, align 8, !tbaa !1
  store i8 %conv289, i8* %185, align 1, !tbaa !5
  br label %for.cond.282

for.end.290:                                      ; preds = %for.cond.282
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.291

cleanup.291:                                      ; preds = %for.end.290, %if.then.279, %if.then.267
  %186 = bitcast i32* %i259 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %186) #1
  %187 = bitcast i64* %value258 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %187) #1
  %188 = bitcast %struct.ref_s* %rvalue to i8*
  call void @llvm.lifetime.end(i64 16, i8* %188) #1
  %cleanup.dest.294 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.294, label %cleanup.299 [
    i32 0, label %cleanup.cont.295
  ]

cleanup.cont.295:                                 ; preds = %cleanup.291
  br label %for.inc.296

for.inc.296:                                      ; preds = %cleanup.cont.295
  %189 = load i64, i64* %k, align 8, !tbaa !18
  %inc297 = add nsw i64 %189, 1
  store i64 %inc297, i64* %k, align 8, !tbaa !18
  br label %for.cond.252

for.end.298:                                      ; preds = %for.cond.252
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.299

cleanup.299:                                      ; preds = %for.end.298, %cleanup.291, %if.then.246, %if.then.236
  %190 = bitcast i8** %pvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %190) #1
  %191 = bitcast i64* %k to i8*
  call void @llvm.lifetime.end(i64 8, i8* %191) #1
  %192 = bitcast i32* %values_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #1
  %cleanup.dest.302 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.302, label %cleanup.325 [
    i32 0, label %cleanup.cont.303
  ]

cleanup.cont.303:                                 ; preds = %cleanup.299
  br label %if.end.304

if.end.304:                                       ; preds = %cleanup.cont.303, %if.end.210
  br label %do.body

do.body:                                          ; preds = %if.end.304
  br label %do.body.305

do.body.305:                                      ; preds = %do.body
  %tas306 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rfxs, i32 0, i32 0
  %type_attrs307 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas306, i32 0, i32 0
  %193 = bitcast i16* %type_attrs307 to i8*
  %arrayidx308 = getelementptr inbounds i8, i8* %193, i64 1
  %194 = load i8, i8* %arrayidx308, align 1, !tbaa !5
  %conv309 = zext i8 %194 to i32
  %cmp310 = icmp eq i32 %conv309, 11
  br i1 %cmp310, label %if.end.313, label %if.then.312

if.then.312:                                      ; preds = %do.body.305
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.325

if.end.313:                                       ; preds = %do.body.305
  br label %do.cond

do.cond:                                          ; preds = %if.end.313
  br label %do.end

do.end:                                           ; preds = %do.cond
  %value314 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rfxs, i32 0, i32 1
  %intval = bitcast %union.v* %value314 to i64*
  %195 = load i64, i64* %intval, align 8, !tbaa !18
  %cmp315 = icmp ugt i64 %195, 255
  br i1 %cmp315, label %if.then.317, label %if.end.318

if.then.317:                                      ; preds = %do.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.325

if.end.318:                                       ; preds = %do.end
  br label %do.cond.319

do.cond.319:                                      ; preds = %if.end.318
  br label %do.end.320

do.end.320:                                       ; preds = %do.cond.319
  %value321 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rfxs, i32 0, i32 1
  %intval322 = bitcast %union.v* %value321 to i64*
  %196 = load i64, i64* %intval322, align 8, !tbaa !18
  %conv323 = trunc i64 %196 to i32
  %197 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %font_index = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %197, i32 0, i32 10
  store i32 %conv323, i32* %font_index, align 4, !tbaa !77
  %198 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %incdec.ptr324 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %198, i32 1
  store %struct.gx_cmap_lookup_range_s* %incdec.ptr324, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.325

cleanup.325:                                      ; preds = %do.end.320, %if.then.317, %if.then.312, %cleanup.299, %if.then.209, %if.then.193, %cleanup.166, %if.then.150, %if.then.125, %if.then.91
  %199 = bitcast %struct.ref_s* %rfxs to i8*
  call void @llvm.lifetime.end(i64 16, i8* %199) #1
  %200 = bitcast %struct.ref_s* %rvalues to i8*
  call void @llvm.lifetime.end(i64 16, i8* %200) #1
  %201 = bitcast %struct.ref_s* %rkeys to i8*
  call void @llvm.lifetime.end(i64 16, i8* %201) #1
  %202 = bitcast %struct.ref_s* %rmisc to i8*
  call void @llvm.lifetime.end(i64 16, i8* %202) #1
  %203 = bitcast %struct.ref_s* %rprefix to i8*
  call void @llvm.lifetime.end(i64 16, i8* %203) #1
  %cleanup.dest.330 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.330, label %cleanup.335 [
    i32 0, label %cleanup.cont.331
  ]

cleanup.cont.331:                                 ; preds = %cleanup.325
  br label %for.inc.332

for.inc.332:                                      ; preds = %cleanup.cont.331
  %204 = load i32, i32* %j, align 4, !tbaa !15
  %add333 = add i32 %204, 5
  store i32 %add333, i32* %j, align 4, !tbaa !15
  br label %for.cond.34

for.end.334:                                      ; preds = %for.cond.34
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.335

cleanup.335:                                      ; preds = %for.end.334, %cleanup.325
  %205 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %205) #1
  %cleanup.dest.336 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.336, label %cleanup.341 [
    i32 0, label %cleanup.cont.337
  ]

cleanup.cont.337:                                 ; preds = %cleanup.335
  br label %for.inc.338

for.inc.338:                                      ; preds = %cleanup.cont.337
  %206 = load i64, i64* %i, align 8, !tbaa !18
  %inc339 = add nsw i64 %206, 1
  store i64 %inc339, i64* %i, align 8, !tbaa !18
  br label %for.cond.24

for.end.340:                                      ; preds = %for.cond.24
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.341

cleanup.341:                                      ; preds = %for.end.340, %cleanup.335, %if.then.19, %cleanup, %if.then
  %207 = bitcast i32* %elem_sz to i8*
  call void @llvm.lifetime.end(i64 4, i8* %207) #1
  %208 = bitcast %struct.ref_s* %elem to i8*
  call void @llvm.lifetime.end(i64 16, i8* %208) #1
  %209 = bitcast i64* %i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %209) #1
  %210 = bitcast %struct.gx_cmap_lookup_range_s** %pclr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %210) #1
  %211 = bitcast i32* %num_lookup to i8*
  call void @llvm.lifetime.end(i64 4, i8* %211) #1
  %212 = load i32, i32* %retval
  ret i32 %212
}

declare i32 @bytes_compare(i8*, i32, i8*, i32) #2

declare i32 @zfont_mark_glyph_name(%struct.gs_memory_s*, i64, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @zfcmap_glyph_name(%struct.gs_memory_s* %mem, i64 %glyph, %struct.gs_const_string_s* %pstr, i8* %proc_data) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %glyph.addr = alloca i64, align 8
  %pstr.addr = alloca %struct.gs_const_string_s*, align 8
  %proc_data.addr = alloca i8*, align 8
  %nref = alloca %struct.ref_s, align 8
  %nsref = alloca %struct.ref_s, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !18
  store %struct.gs_const_string_s* %pstr, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  store i8* %proc_data, i8** %proc_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s* %nref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast %struct.ref_s* %nsref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 2
  %3 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !32
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %3, i32 0, i32 16
  %4 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !33
  %5 = load i64, i64* %glyph.addr, align 8, !tbaa !18
  %conv = trunc i64 %5 to i32
  call void @names_index_ref(%struct.name_table_s* %4, i32 %conv, %struct.ref_s* %nref) #5
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 2
  %7 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx1, align 8, !tbaa !32
  %gs_name_table2 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %7, i32 0, i32 16
  %8 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table2, align 8, !tbaa !33
  call void @names_string_ref(%struct.name_table_s* %8, %struct.ref_s* %nref, %struct.ref_s* %nsref) #5
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nsref, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %9 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %10 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %10, i32 0, i32 0
  store i8* %9, i8** %data, align 8, !tbaa !78
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nsref, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %11 = load i32, i32* %rsize, align 4, !tbaa !14
  %12 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %12, i32 0, i32 1
  store i32 %11, i32* %size, align 4, !tbaa !79
  %13 = bitcast %struct.ref_s* %nsref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %13) #1
  %14 = bitcast %struct.ref_s* %nref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %14) #1
  ret i32 0
}

declare i32 @dict_put_string(%struct.ref_s*, i8*, %struct.ref_s*, %struct.dict_stack_s*) #2

declare i32 @zreadonly(%struct.gs_context_state_s*) #2

; Function Attrs: nounwind uwtable
define internal void @free_code_map(%struct.gx_code_map_s* %pcmap, %struct.gs_memory_s* %mem) #0 {
entry:
  %pcmap.addr = alloca %struct.gx_code_map_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %i = alloca i32, align 4
  %pclr = alloca %struct.gx_cmap_lookup_range_s*, align 8
  store %struct.gx_code_map_s* %pcmap, %struct.gx_code_map_s** %pcmap.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gx_code_map_s*, %struct.gx_code_map_s** %pcmap.addr, align 8, !tbaa !1
  %lookup = getelementptr inbounds %struct.gx_code_map_s, %struct.gx_code_map_s* %0, i32 0, i32 0
  %1 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %lookup, align 8, !tbaa !61
  %tobool = icmp ne %struct.gx_cmap_lookup_range_s* %1, null
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !tbaa !15
  %4 = load %struct.gx_code_map_s*, %struct.gx_code_map_s** %pcmap.addr, align 8, !tbaa !1
  %num_lookup = getelementptr inbounds %struct.gx_code_map_s, %struct.gx_code_map_s* %4, i32 0, i32 1
  %5 = load i32, i32* %num_lookup, align 4, !tbaa !62
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = bitcast %struct.gx_cmap_lookup_range_s** %pclr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i32, i32* %i, align 4, !tbaa !15
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.gx_code_map_s*, %struct.gx_code_map_s** %pcmap.addr, align 8, !tbaa !1
  %lookup1 = getelementptr inbounds %struct.gx_code_map_s, %struct.gx_code_map_s* %8, i32 0, i32 0
  %9 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %lookup1, align 8, !tbaa !61
  %arrayidx = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %9, i64 %idxprom
  store %struct.gx_cmap_lookup_range_s* %arrayidx, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %10 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %value_type = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %10, i32 0, i32 7
  %11 = load i32, i32* %value_type, align 4, !tbaa !72
  %cmp2 = icmp eq i32 %11, 1
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %for.body
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 1
  %free_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 19
  %13 = load void (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string, align 8, !tbaa !80
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %15 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %15, i32 0, i32 9
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %values, i32 0, i32 0
  %16 = load i8*, i8** %data, align 8, !tbaa !74
  %17 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %values4 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %17, i32 0, i32 9
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %values4, i32 0, i32 1
  %18 = load i32, i32* %size, align 4, !tbaa !75
  call void %13(%struct.gs_memory_s* %14, i8* %16, i32 %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then.3, %for.body
  %19 = bitcast %struct.gx_cmap_lookup_range_s** %pclr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, i32* %i, align 4, !tbaa !15
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs5, i32 0, i32 2
  %22 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !54
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %24 = load %struct.gx_code_map_s*, %struct.gx_code_map_s** %pcmap.addr, align 8, !tbaa !1
  %lookup6 = getelementptr inbounds %struct.gx_code_map_s, %struct.gx_code_map_s* %24, i32 0, i32 0
  %25 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %lookup6, align 8, !tbaa !61
  %26 = bitcast %struct.gx_cmap_lookup_range_s* %25 to i8*
  call void %22(%struct.gs_memory_s* %23, i8* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0)) #5
  %27 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  br label %if.end.7

if.end.7:                                         ; preds = %for.end, %entry
  ret void
}

declare void @cid_system_info_set_null(%struct.gs_cid_system_info_s*) #2

declare i32 @cid_system_info_param(%struct.gs_cid_system_info_s*, %struct.ref_s*) #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

declare i32 @names_index(%struct.name_table_s*, %struct.ref_s*) #2

declare void @names_index_ref(%struct.name_table_s*, i32, %struct.ref_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind readonly }
attributes #7 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!3, !3, i64 0}
!6 = !{!7, !9, i64 0}
!7 = !{!"ref_s", !8, i64 0, !3, i64 8}
!8 = !{!"tas_s", !9, i64 0, !9, i64 2, !10, i64 4}
!9 = !{!"short", !3, i64 0}
!10 = !{!"int", !3, i64 0}
!11 = !{!12, !2, i64 120}
!12 = !{!"gs_memory_s", !2, i64 0, !13, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!13 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!14 = !{!7, !10, i64 4}
!15 = !{!10, !10, i64 0}
!16 = !{i64 0, i64 2, !17, i64 2, i64 2, !17, i64 4, i64 4, !15, i64 8, i64 8, !18, i64 8, i64 2, !17, i64 8, i64 4, !20, i64 8, i64 8, !18, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !18}
!17 = !{!9, !9, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"long", !3, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"float", !3, i64 0}
!22 = !{!23, !2, i64 624}
!23 = !{!"gs_context_state_s", !2, i64 0, !24, i64 8, !10, i64 80, !7, i64 88, !7, i64 104, !19, i64 120, !19, i64 128, !19, i64 136, !10, i64 144, !10, i64 148, !7, i64 152, !7, i64 168, !10, i64 184, !10, i64 188, !10, i64 192, !10, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !26, i64 264, !26, i64 304, !2, i64 344, !10, i64 352, !2, i64 360, !27, i64 368, !29, i64 520, !30, i64 624, !2, i64 720}
!24 = !{!"gs_dual_memory_s", !2, i64 0, !25, i64 8, !10, i64 48, !2, i64 56, !10, i64 64, !10, i64 68}
!25 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!26 = !{!"op_array_table_s", !7, i64 0, !2, i64 16, !10, i64 24, !10, i64 28, !10, i64 32}
!27 = !{!"dict_stack_s", !28, i64 0, !10, i64 96, !10, i64 100, !10, i64 104, !2, i64 112, !10, i64 120, !2, i64 128, !7, i64 136}
!28 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !10, i64 40, !10, i64 44, !7, i64 48, !10, i64 64, !10, i64 68, !10, i64 72, !2, i64 80, !2, i64 88}
!29 = !{!"exec_stack_s", !28, i64 0, !2, i64 96}
!30 = !{!"op_stack_s", !28, i64 0}
!31 = !{!23, !2, i64 8}
!32 = !{!12, !2, i64 192}
!33 = !{!34, !2, i64 120}
!34 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !19, i64 104, !2, i64 112, !2, i64 120, !10, i64 128, !2, i64 136, !10, i64 144, !10, i64 148, !3, i64 152, !2, i64 168, !10, i64 176, !2, i64 184, !10, i64 192, !2, i64 200, !2, i64 208}
!35 = !{!36, !19, i64 64}
!36 = !{!"gs_cmap_adobe1_s", !10, i64 0, !19, i64 8, !37, i64 16, !2, i64 32, !10, i64 40, !21, i64 44, !38, i64 48, !19, i64 64, !10, i64 72, !10, i64 76, !10, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !39, i64 112, !40, i64 128, !40, i64 144, !2, i64 160, !2, i64 168}
!37 = !{!"gs_const_string_s", !2, i64 0, !10, i64 8}
!38 = !{!"gs_uid_s", !19, i64 0, !2, i64 8}
!39 = !{!"gx_code_space_s", !2, i64 0, !10, i64 8}
!40 = !{!"gx_code_map_s", !2, i64 0, !10, i64 8}
!41 = !{!36, !2, i64 32}
!42 = !{!43, !2, i64 0}
!43 = !{!"gs_cid_system_info_s", !37, i64 0, !37, i64 16, !10, i64 32}
!44 = !{!43, !10, i64 8}
!45 = !{!43, !2, i64 16}
!46 = !{!43, !10, i64 24}
!47 = !{!36, !10, i64 76}
!48 = !{!36, !2, i64 160}
!49 = !{!36, !2, i64 168}
!50 = !{!36, !2, i64 88}
!51 = !{!36, !2, i64 96}
!52 = !{!24, !10, i64 48}
!53 = !{!24, !10, i64 68}
!54 = !{!12, !2, i64 24}
!55 = !{!12, !2, i64 88}
!56 = !{!36, !2, i64 112}
!57 = !{!36, !10, i64 120}
!58 = !{!59, !10, i64 8}
!59 = !{!"gx_code_space_range_s", !3, i64 0, !3, i64 4, !10, i64 8}
!60 = !{!12, !2, i64 104}
!61 = !{!40, !2, i64 0}
!62 = !{!40, !10, i64 8}
!63 = !{!64, !2, i64 0}
!64 = !{!"gx_cmap_lookup_range_s", !2, i64 0, !10, i64 8, !3, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !65, i64 32, !3, i64 48, !10, i64 52, !65, i64 56, !10, i64 72}
!65 = !{!"gs_string_s", !2, i64 0, !10, i64 8}
!66 = !{!64, !10, i64 20}
!67 = !{!64, !10, i64 16}
!68 = !{!64, !10, i64 24}
!69 = !{!64, !10, i64 8}
!70 = !{!64, !2, i64 32}
!71 = !{!64, !10, i64 40}
!72 = !{!64, !3, i64 48}
!73 = !{!64, !10, i64 52}
!74 = !{!64, !2, i64 56}
!75 = !{!64, !10, i64 64}
!76 = !{!12, !2, i64 136}
!77 = !{!64, !10, i64 72}
!78 = !{!37, !2, i64 0}
!79 = !{!37, !10, i64 8}
!80 = !{!12, !2, i64 160}
