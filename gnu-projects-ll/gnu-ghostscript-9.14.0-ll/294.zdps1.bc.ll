; ModuleID = './zdps1.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
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
%struct.igstate_obj_s = type { %struct.ref_s }
%struct.int_gstate_s = type { %struct.ref_s, %struct.anon, %struct.anon, %struct.ref_s, %struct.ref_s, [2 x %struct.ref_colorspace_s], [2 x %struct.ref_s], %struct.anon.3, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.anon = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.ref_colorspace_s = type { %struct.ref_s, %struct.ref_color_procs_s }
%struct.ref_color_procs_s = type { %struct.ref_cie_procs_s, %union.anon.2 }
%struct.ref_cie_procs_s = type { %union.anon.0, %union.anon.1, %struct.ref_s }
%union.anon.0 = type { %struct.ref_s }
%union.anon.1 = type { %struct.ref_s }
%union.anon.2 = type { %struct.ref_device_n_params_s }
%struct.ref_device_n_params_s = type { %struct.ref_s, %struct.ref_s }
%struct.anon.3 = type { %struct.ref_s, %struct.ref_cie_render_procs_s }
%struct.ref_cie_render_procs_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.obj_header_s = type opaque
%struct.local_rects_s = type { %struct.gs_rect_s*, i32, [5 x %struct.gs_rect_s] }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_point_s = type { double, double }
%struct.gs_matrix_s = type { float, float, float, float, float, float }

@.str = private unnamed_addr constant [11 x i8] c"gstatetype\00", align 1
@st_igstate_obj = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* @ref_struct_clear_marks, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @ref_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @ref_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"gstate\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"copygstate\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"currentgstate\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"level2dict\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"0currentstrokeadjust\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"1setstrokeadjust\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"1copy\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"1currentgstate\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"0gstate\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"1setgstate\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"1.rectappend\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"1rectclip\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"1rectfill\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"1rectstroke\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"4setbbox\00", align 1
@zdps1_l2_op_defs = constant [13 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* null }, %struct.op_def { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrentstrokeadjust }, %struct.op_def { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetstrokeadjust }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @z1copy }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrentgstate }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zgstate }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetgstate }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zrectappend }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zrectclip }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zrectfill }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zrectstroke }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetbbox }, %struct.op_def zeroinitializer], align 16
@.str.16 = private unnamed_addr constant [9 x i8] c"rect_get\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"rect_release\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"gstate_unshare\00", align 1

declare void @ref_struct_clear_marks(%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*) #0

declare %struct.gs_ptr_procs_s* @ref_struct_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @ref_struct_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

; Function Attrs: nounwind uwtable
define i32 @zgstate(%struct.gs_context_state_s* %i_ctx_p) #1 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %pigo = alloca %struct.igstate_obj_s*, align 8
  %pnew = alloca %struct.gs_state_s*, align 8
  %isp = alloca %struct.int_gstate_s*, align 8
  %cleanup.dest.slot = alloca i32
  %rp_ = alloca %struct.ref_s*, align 8
  %i = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 0
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !19
  %call = call i8* @gs_state_client_data(%struct.gs_state_s* %6) #3
  %7 = bitcast i8* %call to %struct.int_gstate_s*
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 2
  %9 = load i32, i32* %current_space, align 4, !tbaa !20
  %call1 = call i32 @gstate_check_space(%struct.gs_context_state_s* %4, %struct.int_gstate_s* %7, i32 %9) #3
  store i32 %call1, i32* %code, align 4, !tbaa !21
  %10 = bitcast %struct.igstate_obj_s** %pigo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = bitcast %struct.gs_state_s** %pnew to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = bitcast %struct.int_gstate_s** %isp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = load i32, i32* %code, align 4, !tbaa !21
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory2, i32 0, i32 0
  %16 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !22
  %17 = bitcast %struct.gs_ref_memory_s* %16 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %18 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !23
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 1
  %current4 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory3, i32 0, i32 0
  %20 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current4, align 8, !tbaa !22
  %21 = bitcast %struct.gs_ref_memory_s* %20 to %struct.gs_memory_s*
  %call5 = call i8* %18(%struct.gs_memory_s* %21, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_igstate_obj to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0)) #3
  %22 = bitcast i8* %call5 to %struct.igstate_obj_s*
  store %struct.igstate_obj_s* %22, %struct.igstate_obj_s** %pigo, align 8, !tbaa !1
  %23 = load %struct.igstate_obj_s*, %struct.igstate_obj_s** %pigo, align 8, !tbaa !1
  %cmp6 = icmp eq %struct.igstate_obj_s* %23, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs9 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 0
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs9, align 8, !tbaa !19
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 1
  %current11 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory10, i32 0, i32 0
  %27 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current11, align 8, !tbaa !22
  %28 = bitcast %struct.gs_ref_memory_s* %27 to %struct.gs_memory_s*
  %call12 = call %struct.gs_state_s* @gs_state_copy(%struct.gs_state_s* %25, %struct.gs_memory_s* %28) #3
  store %struct.gs_state_s* %call12, %struct.gs_state_s** %pnew, align 8, !tbaa !1
  %29 = load %struct.gs_state_s*, %struct.gs_state_s** %pnew, align 8, !tbaa !1
  %cmp13 = icmp eq %struct.gs_state_s* %29, null
  br i1 %cmp13, label %if.then.14, label %if.end.20

if.then.14:                                       ; preds = %if.end.8
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory15 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 1
  %current16 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory15, i32 0, i32 0
  %31 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current16, align 8, !tbaa !22
  %32 = bitcast %struct.gs_ref_memory_s* %31 to %struct.gs_memory_s*
  %procs17 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %32, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs17, i32 0, i32 2
  %33 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !26
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory18 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 1
  %current19 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory18, i32 0, i32 0
  %35 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current19, align 8, !tbaa !22
  %36 = bitcast %struct.gs_ref_memory_s* %35 to %struct.gs_memory_s*
  %37 = load %struct.igstate_obj_s*, %struct.igstate_obj_s** %pigo, align 8, !tbaa !1
  %38 = bitcast %struct.igstate_obj_s* %37 to i8*
  call void %33(%struct.gs_memory_s* %36, i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0)) #3
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end.8
  %39 = load %struct.gs_state_s*, %struct.gs_state_s** %pnew, align 8, !tbaa !1
  %call21 = call i8* @gs_state_client_data(%struct.gs_state_s* %39) #3
  %40 = bitcast i8* %call21 to %struct.int_gstate_s*
  store %struct.int_gstate_s* %40, %struct.int_gstate_s** %isp, align 8, !tbaa !1
  %41 = bitcast %struct.ref_s** %rp_ to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #2
  %42 = load %struct.int_gstate_s*, %struct.int_gstate_s** %isp, align 8, !tbaa !1
  %43 = bitcast %struct.int_gstate_s* %42 to %struct.ref_s*
  store %struct.ref_s* %43, %struct.ref_s** %rp_, align 8, !tbaa !1
  %44 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #2
  store i32 36, i32* %i, align 4, !tbaa !21
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.20
  %45 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory22 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %45, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory22, i32 0, i32 5
  %46 = load i32, i32* %new_mask, align 4, !tbaa !27
  %47 = load %struct.ref_s*, %struct.ref_s** %rp_, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %48 = load i16, i16* %type_attrs, align 2, !tbaa !28
  %conv = zext i16 %48 to i32
  %or = or i32 %conv, %46
  %conv23 = trunc i32 %or to i16
  store i16 %conv23, i16* %type_attrs, align 2, !tbaa !28
  %49 = load %struct.ref_s*, %struct.ref_s** %rp_, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %rp_, align 8, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %50 = load i32, i32* %i, align 4, !tbaa !21
  %dec = add nsw i32 %50, -1
  store i32 %dec, i32* %i, align 4, !tbaa !21
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %51 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #2
  %52 = bitcast %struct.ref_s** %rp_ to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #2
  br label %do.body.24

do.body.24:                                       ; preds = %do.end
  %53 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %54 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack25 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %54, i32 0, i32 26
  %stack26 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack25, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack26, i32 0, i32 2
  %55 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !29
  %cmp27 = icmp ugt %struct.ref_s* %add.ptr, %55
  br i1 %cmp27, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %do.body.24
  %56 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack30 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %56, i32 0, i32 26
  %stack31 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack30, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack31, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !30
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body.24
  %57 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %58 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack32 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %58, i32 0, i32 26
  %stack33 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack32, i32 0, i32 0
  %p34 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack33, i32 0, i32 0
  store %struct.ref_s* %57, %struct.ref_s** %p34, align 8, !tbaa !5
  br label %if.end.35

if.end.35:                                        ; preds = %if.else
  br label %do.cond.36

do.cond.36:                                       ; preds = %if.end.35
  br label %do.end.37

do.end.37:                                        ; preds = %do.cond.36
  %59 = load %struct.igstate_obj_s*, %struct.igstate_obj_s** %pigo, align 8, !tbaa !1
  %60 = bitcast %struct.igstate_obj_s* %59 to %struct.obj_header_s*
  %61 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  store %struct.obj_header_s* %60, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %62 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory38 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %62, i32 0, i32 1
  %current_space39 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory38, i32 0, i32 2
  %63 = load i32, i32* %current_space39, align 4, !tbaa !20
  %or40 = or i32 112, %63
  %add = add i32 2304, %or40
  %conv41 = trunc i32 %add to i16
  %64 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i32 0, i32 0
  %type_attrs43 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas42, i32 0, i32 0
  store i16 %conv41, i16* %type_attrs43, align 2, !tbaa !28
  %65 = load %struct.gs_state_s*, %struct.gs_state_s** %pnew, align 8, !tbaa !1
  %66 = bitcast %struct.gs_state_s* %65 to %struct.obj_header_s*
  %67 = load %struct.igstate_obj_s*, %struct.igstate_obj_s** %pigo, align 8, !tbaa !1
  %gstate = getelementptr inbounds %struct.igstate_obj_s, %struct.igstate_obj_s* %67, i32 0, i32 0
  %value44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %gstate, i32 0, i32 1
  %pstruct45 = bitcast %union.v* %value44 to %struct.obj_header_s**
  store %struct.obj_header_s* %66, %struct.obj_header_s** %pstruct45, align 8, !tbaa !1
  %68 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory46 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %68, i32 0, i32 1
  %current_space47 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory46, i32 0, i32 2
  %69 = load i32, i32* %current_space47, align 4, !tbaa !20
  %or48 = or i32 0, %69
  %add49 = add i32 2048, %or48
  %conv50 = trunc i32 %add49 to i16
  %70 = load %struct.igstate_obj_s*, %struct.igstate_obj_s** %pigo, align 8, !tbaa !1
  %gstate51 = getelementptr inbounds %struct.igstate_obj_s, %struct.igstate_obj_s* %70, i32 0, i32 0
  %tas52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %gstate51, i32 0, i32 0
  %type_attrs53 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas52, i32 0, i32 0
  store i16 %conv50, i16* %type_attrs53, align 2, !tbaa !28
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.37, %if.then.29, %if.then.14, %if.then.7, %if.then
  %71 = bitcast %struct.int_gstate_s** %isp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #2
  %72 = bitcast %struct.gs_state_s** %pnew to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #2
  %73 = bitcast %struct.igstate_obj_s** %pigo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #2
  %74 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #2
  %75 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #2
  %76 = load i32, i32* %retval
  ret i32 %76
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @gstate_check_space(%struct.gs_context_state_s* %i_ctx_p, %struct.int_gstate_s* %isp, i32 %space) #1 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %isp.addr = alloca %struct.int_gstate_s*, align 8
  %space.addr = alloca i32, align 4
  %rp_ = alloca %struct.ref_s*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.int_gstate_s* %isp, %struct.int_gstate_s** %isp.addr, align 8, !tbaa !1
  store i32 %space, i32* %space.addr, align 4, !tbaa !21
  %0 = load i32, i32* %space.addr, align 4, !tbaa !21
  %cmp = icmp ne i32 %0, 12
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !22
  %call = call i32 @imemory_save_level(%struct.gs_ref_memory_s* %2) #3
  %cmp1 = icmp sgt i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -7, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = bitcast %struct.ref_s** %rp_ to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.int_gstate_s*, %struct.int_gstate_s** %isp.addr, align 8, !tbaa !1
  %5 = bitcast %struct.int_gstate_s* %4 to %struct.ref_s*
  store %struct.ref_s* %5, %struct.ref_s** %rp_, align 8, !tbaa !1
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  store i32 36, i32* %i, align 4, !tbaa !21
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %7 = load %struct.ref_s*, %struct.ref_s** %rp_, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = load i16, i16* %type_attrs, align 2, !tbaa !28
  %conv = zext i16 %8 to i32
  %and = and i32 %conv, 12
  %9 = load i32, i32* %space.addr, align 4, !tbaa !21
  %cmp2 = icmp ugt i32 %and, %9
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %do.body
  %10 = load %struct.ref_s*, %struct.ref_s** %rp_, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %rp_, align 8, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %if.end.5
  %11 = load i32, i32* %i, align 4, !tbaa !21
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %i, align 4, !tbaa !21
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.4
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  %13 = bitcast %struct.ref_s** %rp_ to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %cleanup.cont, %cleanup, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i8* @gs_state_client_data(%struct.gs_state_s*) #0

declare %struct.gs_state_s* @gs_state_copy(%struct.gs_state_s*, %struct.gs_memory_s*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @zcopy_gstate(%struct.gs_context_state_s* %i_ctx_p) #1 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %op1 = alloca %struct.ref_s*, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %pgs1 = alloca %struct.gs_state_s*, align 8
  %pistate = alloca %struct.int_gstate_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %rp_ = alloca %struct.ref_s*, align 8
  %i = alloca i32, align 4
  %rp_81 = alloca %struct.ref_s*, align 8
  %i82 = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %op1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op1, align 8, !tbaa !1
  %5 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast %struct.gs_state_s** %pgs1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast %struct.int_gstate_s** %pistate to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %11 = load i16, i16* %type_attrs, align 2, !tbaa !28
  %conv = zext i16 %11 to i32
  %and = and i32 %conv, 15872
  %cmp = icmp eq i32 %and, 2048
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %13 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !22
  %14 = bitcast %struct.gs_ref_memory_s* %13 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 1
  %object_type = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 15
  %15 = load %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)** %object_type, align 8, !tbaa !31
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 1
  %current3 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory2, i32 0, i32 0
  %17 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current3, align 8, !tbaa !22
  %18 = bitcast %struct.gs_ref_memory_s* %17 to %struct.gs_memory_s*
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %20 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %21 = bitcast %struct.obj_header_s* %20 to i8*
  %call = call %struct.gs_memory_struct_type_s* %15(%struct.gs_memory_s* %18, i8* %21) #3
  %cmp4 = icmp eq %struct.gs_memory_struct_type_s* %call, bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_igstate_obj to %struct.gs_memory_struct_type_s*)
  br i1 %cmp4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call6 = call i32 @check_type_failed(%struct.ref_s* %22) #3
  store i32 %call6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %23 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %tas7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %type_attrs8 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas7, i32 0, i32 0
  %24 = load i16, i16* %type_attrs8, align 2, !tbaa !28
  %conv9 = zext i16 %24 to i32
  %and10 = and i32 %conv9, 15872
  %cmp11 = icmp eq i32 %and10, 2048
  br i1 %cmp11, label %land.lhs.true.13, label %if.then.25

land.lhs.true.13:                                 ; preds = %if.end
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory14 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 1
  %current15 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory14, i32 0, i32 0
  %26 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current15, align 8, !tbaa !22
  %27 = bitcast %struct.gs_ref_memory_s* %26 to %struct.gs_memory_s*
  %procs16 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 1
  %object_type17 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs16, i32 0, i32 15
  %28 = load %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)** %object_type17, align 8, !tbaa !31
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory18 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 1
  %current19 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory18, i32 0, i32 0
  %30 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current19, align 8, !tbaa !22
  %31 = bitcast %struct.gs_ref_memory_s* %30 to %struct.gs_memory_s*
  %32 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %value20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 1
  %pstruct21 = bitcast %union.v* %value20 to %struct.obj_header_s**
  %33 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct21, align 8, !tbaa !1
  %34 = bitcast %struct.obj_header_s* %33 to i8*
  %call22 = call %struct.gs_memory_struct_type_s* %28(%struct.gs_memory_s* %31, i8* %34) #3
  %cmp23 = icmp eq %struct.gs_memory_struct_type_s* %call22, bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_igstate_obj to %struct.gs_memory_struct_type_s*)
  br i1 %cmp23, label %if.end.27, label %if.then.25

if.then.25:                                       ; preds = %land.lhs.true.13, %if.end
  %35 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %call26 = call i32 @check_type_failed(%struct.ref_s* %35) #3
  store i32 %call26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %land.lhs.true.13
  br label %do.body

do.body:                                          ; preds = %if.end.27
  %36 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 0
  %type_attrs29 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas28, i32 0, i32 0
  %37 = load i16, i16* %type_attrs29, align 2, !tbaa !28
  %conv30 = zext i16 %37 to i32
  %and31 = and i32 %conv30, 16
  %tobool = icmp ne i32 %and31, 0
  br i1 %tobool, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.33
  br label %do.end

do.end:                                           ; preds = %do.cond
  %38 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call34 = call i32 @gstate_unshare(%struct.gs_context_state_s* %38) #3
  store i32 %call34, i32* %code, align 4, !tbaa !21
  %39 = load i32, i32* %code, align 4, !tbaa !21
  %cmp35 = icmp slt i32 %39, 0
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %do.end
  %40 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.38:                                        ; preds = %do.end
  %41 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i32 0, i32 1
  %pstruct40 = bitcast %union.v* %value39 to %struct.obj_header_s**
  %42 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct40, align 8, !tbaa !1
  %43 = bitcast %struct.obj_header_s* %42 to %struct.igstate_obj_s*
  %gstate = getelementptr inbounds %struct.igstate_obj_s, %struct.igstate_obj_s* %43, i32 0, i32 0
  %value41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %gstate, i32 0, i32 1
  %pstruct42 = bitcast %union.v* %value41 to %struct.obj_header_s**
  %44 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct42, align 8, !tbaa !1
  %45 = bitcast %struct.obj_header_s* %44 to %struct.gs_state_s*
  store %struct.gs_state_s* %45, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %46 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %value43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 0, i32 1
  %pstruct44 = bitcast %union.v* %value43 to %struct.obj_header_s**
  %47 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct44, align 8, !tbaa !1
  %48 = bitcast %struct.obj_header_s* %47 to %struct.igstate_obj_s*
  %gstate45 = getelementptr inbounds %struct.igstate_obj_s, %struct.igstate_obj_s* %48, i32 0, i32 0
  %value46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %gstate45, i32 0, i32 1
  %pstruct47 = bitcast %union.v* %value46 to %struct.obj_header_s**
  %49 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct47, align 8, !tbaa !1
  %50 = bitcast %struct.obj_header_s* %49 to %struct.gs_state_s*
  store %struct.gs_state_s* %50, %struct.gs_state_s** %pgs1, align 8, !tbaa !1
  %51 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call48 = call i8* @gs_state_client_data(%struct.gs_state_s* %51) #3
  %52 = bitcast i8* %call48 to %struct.int_gstate_s*
  store %struct.int_gstate_s* %52, %struct.int_gstate_s** %pistate, align 8, !tbaa !1
  %53 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %54 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8, !tbaa !1
  %call49 = call i8* @gs_state_client_data(%struct.gs_state_s* %54) #3
  %55 = bitcast i8* %call49 to %struct.int_gstate_s*
  %56 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i32 0, i32 0
  %type_attrs51 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas50, i32 0, i32 0
  %57 = load i16, i16* %type_attrs51, align 2, !tbaa !28
  %conv52 = zext i16 %57 to i32
  %and53 = and i32 %conv52, 12
  %call54 = call i32 @gstate_check_space(%struct.gs_context_state_s* %53, %struct.int_gstate_s* %55, i32 %and53) #3
  store i32 %call54, i32* %code, align 4, !tbaa !21
  %58 = load i32, i32* %code, align 4, !tbaa !21
  %cmp55 = icmp slt i32 %58, 0
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.38
  %59 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %59, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.58:                                        ; preds = %if.end.38
  %60 = bitcast %struct.ref_s** %rp_ to i8*
  call void @llvm.lifetime.start(i64 8, i8* %60) #2
  %61 = load %struct.int_gstate_s*, %struct.int_gstate_s** %pistate, align 8, !tbaa !1
  %62 = bitcast %struct.int_gstate_s* %61 to %struct.ref_s*
  store %struct.ref_s* %62, %struct.ref_s** %rp_, align 8, !tbaa !1
  %63 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #2
  store i32 36, i32* %i, align 4, !tbaa !21
  br label %do.body.59

do.body.59:                                       ; preds = %do.cond.69, %if.end.58
  %64 = load %struct.ref_s*, %struct.ref_s** %rp_, align 8, !tbaa !1
  %tas60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i32 0, i32 0
  %type_attrs61 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas60, i32 0, i32 0
  %65 = load i16, i16* %type_attrs61, align 2, !tbaa !28
  %conv62 = zext i16 %65 to i32
  %66 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory63 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %66, i32 0, i32 1
  %test_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory63, i32 0, i32 4
  %67 = load i32, i32* %test_mask, align 4, !tbaa !32
  %and64 = and i32 %conv62, %67
  %cmp65 = icmp eq i32 %and64, 0
  br i1 %cmp65, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body.59
  %68 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory67 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %68, i32 0, i32 1
  %69 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %70 = load %struct.ref_s*, %struct.ref_s** %rp_, align 8, !tbaa !1
  %71 = bitcast %struct.ref_s* %70 to i16*
  %call68 = call i32 @alloc_save_change(%struct.gs_dual_memory_s* %memory67, %struct.ref_s* %69, i16* %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0)) #3
  br label %cond.end

cond.false:                                       ; preds = %do.body.59
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call68, %cond.true ], [ 0, %cond.false ]
  %72 = load %struct.ref_s*, %struct.ref_s** %rp_, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %rp_, align 8, !tbaa !1
  br label %do.cond.69

do.cond.69:                                       ; preds = %cond.end
  %73 = load i32, i32* %i, align 4, !tbaa !21
  %dec = add nsw i32 %73, -1
  store i32 %dec, i32* %i, align 4, !tbaa !21
  %tobool70 = icmp ne i32 %dec, 0
  br i1 %tobool70, label %do.body.59, label %do.end.71

do.end.71:                                        ; preds = %do.cond.69
  %74 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #2
  %75 = bitcast %struct.ref_s** %rp_ to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #2
  %76 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %77 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory72 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %77, i32 0, i32 1
  %current73 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory72, i32 0, i32 0
  %78 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current73, align 8, !tbaa !22
  %79 = bitcast %struct.gs_ref_memory_s* %78 to %struct.gs_memory_s*
  %call74 = call %struct.gs_memory_s* @gs_state_swap_memory(%struct.gs_state_s* %76, %struct.gs_memory_s* %79) #3
  store %struct.gs_memory_s* %call74, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %80 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %81 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8, !tbaa !1
  %call75 = call i32 @gs_copygstate(%struct.gs_state_s* %80, %struct.gs_state_s* %81) #3
  store i32 %call75, i32* %code, align 4, !tbaa !21
  %82 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %83 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call76 = call %struct.gs_memory_s* @gs_state_swap_memory(%struct.gs_state_s* %82, %struct.gs_memory_s* %83) #3
  %84 = load i32, i32* %code, align 4, !tbaa !21
  %cmp77 = icmp slt i32 %84, 0
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %do.end.71
  %85 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %85, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.80:                                        ; preds = %do.end.71
  %86 = bitcast %struct.ref_s** %rp_81 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %86) #2
  %87 = load %struct.int_gstate_s*, %struct.int_gstate_s** %pistate, align 8, !tbaa !1
  %88 = bitcast %struct.int_gstate_s* %87 to %struct.ref_s*
  store %struct.ref_s* %88, %struct.ref_s** %rp_81, align 8, !tbaa !1
  %89 = bitcast i32* %i82 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %89) #2
  store i32 36, i32* %i82, align 4, !tbaa !21
  br label %do.body.83

do.body.83:                                       ; preds = %do.cond.90, %if.end.80
  %90 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory84 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %90, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory84, i32 0, i32 5
  %91 = load i32, i32* %new_mask, align 4, !tbaa !27
  %92 = load %struct.ref_s*, %struct.ref_s** %rp_81, align 8, !tbaa !1
  %tas85 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %92, i32 0, i32 0
  %type_attrs86 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas85, i32 0, i32 0
  %93 = load i16, i16* %type_attrs86, align 2, !tbaa !28
  %conv87 = zext i16 %93 to i32
  %or = or i32 %conv87, %91
  %conv88 = trunc i32 %or to i16
  store i16 %conv88, i16* %type_attrs86, align 2, !tbaa !28
  %94 = load %struct.ref_s*, %struct.ref_s** %rp_81, align 8, !tbaa !1
  %incdec.ptr89 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %94, i32 1
  store %struct.ref_s* %incdec.ptr89, %struct.ref_s** %rp_81, align 8, !tbaa !1
  br label %do.cond.90

do.cond.90:                                       ; preds = %do.body.83
  %95 = load i32, i32* %i82, align 4, !tbaa !21
  %dec91 = add nsw i32 %95, -1
  store i32 %dec91, i32* %i82, align 4, !tbaa !21
  %tobool92 = icmp ne i32 %dec91, 0
  br i1 %tobool92, label %do.body.83, label %do.end.93

do.end.93:                                        ; preds = %do.cond.90
  %96 = bitcast i32* %i82 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #2
  %97 = bitcast %struct.ref_s** %rp_81 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #2
  %98 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %99 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %100 = bitcast %struct.ref_s* %98 to i8*
  %101 = bitcast %struct.ref_s* %99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %100, i8* %101, i64 16, i32 8, i1 false), !tbaa.struct !33
  %102 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack94 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %102, i32 0, i32 26
  %stack95 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack94, i32 0, i32 0
  %p96 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack95, i32 0, i32 0
  %103 = load %struct.ref_s*, %struct.ref_s** %p96, align 8, !tbaa !5
  %add.ptr97 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %103, i64 -1
  store %struct.ref_s* %add.ptr97, %struct.ref_s** %p96, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.93, %if.then.79, %if.then.57, %if.then.37, %if.then.32, %if.then.25, %if.then
  %104 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #2
  %105 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #2
  %106 = bitcast %struct.int_gstate_s** %pistate to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #2
  %107 = bitcast %struct.gs_state_s** %pgs1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #2
  %108 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #2
  %109 = bitcast %struct.ref_s** %op1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #2
  %110 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #2
  %111 = load i32, i32* %retval
  ret i32 %111
}

declare i32 @check_type_failed(%struct.ref_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @gstate_unshare(%struct.gs_context_state_s* %i_ctx_p) #1 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %pgsref = alloca %struct.ref_s*, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %pnew = alloca %struct.gs_state_s*, align 8
  %isp = alloca %struct.int_gstate_s*, align 8
  %cleanup.dest.slot = alloca i32
  %rp_ = alloca %struct.ref_s*, align 8
  %i = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %pgsref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %5 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %6 = bitcast %struct.obj_header_s* %5 to %struct.igstate_obj_s*
  %gstate = getelementptr inbounds %struct.igstate_obj_s, %struct.igstate_obj_s* %6, i32 0, i32 0
  store %struct.ref_s* %gstate, %struct.ref_s** %pgsref, align 8, !tbaa !1
  %7 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.ref_s*, %struct.ref_s** %pgsref, align 8, !tbaa !1
  %value1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %pstruct2 = bitcast %union.v* %value1 to %struct.obj_header_s**
  %9 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct2, align 8, !tbaa !1
  %10 = bitcast %struct.obj_header_s* %9 to %struct.gs_state_s*
  store %struct.gs_state_s* %10, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %11 = bitcast %struct.gs_state_s** %pnew to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = bitcast %struct.int_gstate_s** %isp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = load %struct.ref_s*, %struct.ref_s** %pgsref, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %14 = load i16, i16* %type_attrs, align 2, !tbaa !28
  %conv = zext i16 %14 to i32
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 1
  %test_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 4
  %16 = load i32, i32* %test_mask, align 4, !tbaa !32
  %and = and i32 %conv, %16
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call = call %struct.gs_state_s* @gs_gstate(%struct.gs_state_s* %17) #3
  store %struct.gs_state_s* %call, %struct.gs_state_s** %pnew, align 8, !tbaa !1
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pnew, align 8, !tbaa !1
  %cmp4 = icmp eq %struct.gs_state_s* %18, null
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pnew, align 8, !tbaa !1
  %call8 = call i8* @gs_state_client_data(%struct.gs_state_s* %19) #3
  %20 = bitcast i8* %call8 to %struct.int_gstate_s*
  store %struct.int_gstate_s* %20, %struct.int_gstate_s** %isp, align 8, !tbaa !1
  %21 = bitcast %struct.ref_s** %rp_ to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #2
  %22 = load %struct.int_gstate_s*, %struct.int_gstate_s** %isp, align 8, !tbaa !1
  %23 = bitcast %struct.int_gstate_s* %22 to %struct.ref_s*
  store %struct.ref_s* %23, %struct.ref_s** %rp_, align 8, !tbaa !1
  %24 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  store i32 36, i32* %i, align 4, !tbaa !21
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.7
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory9 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory9, i32 0, i32 5
  %26 = load i32, i32* %new_mask, align 4, !tbaa !27
  %27 = load %struct.ref_s*, %struct.ref_s** %rp_, align 8, !tbaa !1
  %tas10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 0
  %type_attrs11 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas10, i32 0, i32 0
  %28 = load i16, i16* %type_attrs11, align 2, !tbaa !28
  %conv12 = zext i16 %28 to i32
  %or = or i32 %conv12, %26
  %conv13 = trunc i32 %or to i16
  store i16 %conv13, i16* %type_attrs11, align 2, !tbaa !28
  %29 = load %struct.ref_s*, %struct.ref_s** %rp_, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %rp_, align 8, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %30 = load i32, i32* %i, align 4, !tbaa !21
  %dec = add nsw i32 %30, -1
  store i32 %dec, i32* %i, align 4, !tbaa !21
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %31 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %32 = bitcast %struct.ref_s** %rp_ to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory14 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 1
  %34 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %35 = load %struct.ref_s*, %struct.ref_s** %pgsref, align 8, !tbaa !1
  %36 = bitcast %struct.ref_s* %35 to i16*
  %call15 = call i32 @alloc_save_change(%struct.gs_dual_memory_s* %memory14, %struct.ref_s* %34, i16* %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0)) #3
  %37 = load %struct.gs_state_s*, %struct.gs_state_s** %pnew, align 8, !tbaa !1
  %38 = bitcast %struct.gs_state_s* %37 to %struct.obj_header_s*
  %39 = load %struct.ref_s*, %struct.ref_s** %pgsref, align 8, !tbaa !1
  %value16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 0, i32 1
  %pstruct17 = bitcast %union.v* %value16 to %struct.obj_header_s**
  store %struct.obj_header_s* %38, %struct.obj_header_s** %pstruct17, align 8, !tbaa !1
  %40 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory18 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %40, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory18, i32 0, i32 2
  %41 = load i32, i32* %current_space, align 4, !tbaa !20
  %or19 = or i32 0, %41
  %42 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory20 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %42, i32 0, i32 1
  %new_mask21 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory20, i32 0, i32 5
  %43 = load i32, i32* %new_mask21, align 4, !tbaa !27
  %or22 = or i32 %or19, %43
  %add = add i32 2048, %or22
  %conv23 = trunc i32 %add to i16
  %44 = load %struct.ref_s*, %struct.ref_s** %pgsref, align 8, !tbaa !1
  %tas24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 0, i32 0
  %type_attrs25 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas24, i32 0, i32 0
  store i16 %conv23, i16* %type_attrs25, align 2, !tbaa !28
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.6, %if.then
  %45 = bitcast %struct.int_gstate_s** %isp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #2
  %46 = bitcast %struct.gs_state_s** %pnew to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #2
  %47 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #2
  %48 = bitcast %struct.ref_s** %pgsref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  %49 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #2
  %50 = load i32, i32* %retval
  ret i32 %50
}

declare i32 @alloc_save_change(%struct.gs_dual_memory_s*, %struct.ref_s*, i16*, i8*) #0

declare %struct.gs_memory_s* @gs_state_swap_memory(%struct.gs_state_s*, %struct.gs_memory_s*) #0

declare i32 @gs_copygstate(%struct.gs_state_s*, %struct.gs_state_s*) #0

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @zcurrentgstate(%struct.gs_context_state_s* %i_ctx_p) #1 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %pistate = alloca %struct.int_gstate_s*, align 8
  %code = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  %rp_ = alloca %struct.ref_s*, align 8
  %i = alloca i32, align 4
  %rp_57 = alloca %struct.ref_s*, align 8
  %i58 = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast %struct.int_gstate_s** %pistate to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = load i16, i16* %type_attrs, align 2, !tbaa !28
  %conv = zext i16 %8 to i32
  %and = and i32 %conv, 15872
  %cmp = icmp eq i32 %and, 2048
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %10 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !22
  %11 = bitcast %struct.gs_ref_memory_s* %10 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 1
  %object_type = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 15
  %12 = load %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)** %object_type, align 8, !tbaa !31
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 1
  %current3 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory2, i32 0, i32 0
  %14 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current3, align 8, !tbaa !22
  %15 = bitcast %struct.gs_ref_memory_s* %14 to %struct.gs_memory_s*
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %17 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %18 = bitcast %struct.obj_header_s* %17 to i8*
  %call = call %struct.gs_memory_struct_type_s* %12(%struct.gs_memory_s* %15, i8* %18) #3
  %cmp4 = icmp eq %struct.gs_memory_struct_type_s* %call, bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_igstate_obj to %struct.gs_memory_struct_type_s*)
  br i1 %cmp4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call6 = call i32 @check_type_failed(%struct.ref_s* %19) #3
  store i32 %call6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.end
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %type_attrs8 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas7, i32 0, i32 0
  %21 = load i16, i16* %type_attrs8, align 2, !tbaa !28
  %conv9 = zext i16 %21 to i32
  %and10 = and i32 %conv9, 16
  %tobool = icmp ne i32 %and10, 0
  br i1 %tobool, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.12
  br label %do.end

do.end:                                           ; preds = %do.cond
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call13 = call i32 @gstate_unshare(%struct.gs_context_state_s* %22) #3
  store i32 %call13, i32* %code, align 4, !tbaa !21
  %23 = load i32, i32* %code, align 4, !tbaa !21
  %cmp14 = icmp slt i32 %23, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %do.end
  %24 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %do.end
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 1
  %pstruct19 = bitcast %union.v* %value18 to %struct.obj_header_s**
  %26 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct19, align 8, !tbaa !1
  %27 = bitcast %struct.obj_header_s* %26 to %struct.igstate_obj_s*
  %gstate = getelementptr inbounds %struct.igstate_obj_s, %struct.igstate_obj_s* %27, i32 0, i32 0
  %value20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %gstate, i32 0, i32 1
  %pstruct21 = bitcast %union.v* %value20 to %struct.obj_header_s**
  %28 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct21, align 8, !tbaa !1
  %29 = bitcast %struct.obj_header_s* %28 to %struct.gs_state_s*
  store %struct.gs_state_s* %29, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %30 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call22 = call i8* @gs_state_client_data(%struct.gs_state_s* %30) #3
  %31 = bitcast i8* %call22 to %struct.int_gstate_s*
  store %struct.int_gstate_s* %31, %struct.int_gstate_s** %pistate, align 8, !tbaa !1
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs23 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 0
  %34 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs23, align 8, !tbaa !19
  %call24 = call i8* @gs_state_client_data(%struct.gs_state_s* %34) #3
  %35 = bitcast i8* %call24 to %struct.int_gstate_s*
  %36 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 0
  %type_attrs26 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas25, i32 0, i32 0
  %37 = load i16, i16* %type_attrs26, align 2, !tbaa !28
  %conv27 = zext i16 %37 to i32
  %and28 = and i32 %conv27, 12
  %call29 = call i32 @gstate_check_space(%struct.gs_context_state_s* %32, %struct.int_gstate_s* %35, i32 %and28) #3
  store i32 %call29, i32* %code, align 4, !tbaa !21
  %38 = load i32, i32* %code, align 4, !tbaa !21
  %cmp30 = icmp slt i32 %38, 0
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.17
  %39 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %if.end.17
  %40 = bitcast %struct.ref_s** %rp_ to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #2
  %41 = load %struct.int_gstate_s*, %struct.int_gstate_s** %pistate, align 8, !tbaa !1
  %42 = bitcast %struct.int_gstate_s* %41 to %struct.ref_s*
  store %struct.ref_s* %42, %struct.ref_s** %rp_, align 8, !tbaa !1
  %43 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #2
  store i32 36, i32* %i, align 4, !tbaa !21
  br label %do.body.34

do.body.34:                                       ; preds = %do.cond.44, %if.end.33
  %44 = load %struct.ref_s*, %struct.ref_s** %rp_, align 8, !tbaa !1
  %tas35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 0, i32 0
  %type_attrs36 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas35, i32 0, i32 0
  %45 = load i16, i16* %type_attrs36, align 2, !tbaa !28
  %conv37 = zext i16 %45 to i32
  %46 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory38 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %46, i32 0, i32 1
  %test_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory38, i32 0, i32 4
  %47 = load i32, i32* %test_mask, align 4, !tbaa !32
  %and39 = and i32 %conv37, %47
  %cmp40 = icmp eq i32 %and39, 0
  br i1 %cmp40, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body.34
  %48 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory42 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %48, i32 0, i32 1
  %49 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %50 = load %struct.ref_s*, %struct.ref_s** %rp_, align 8, !tbaa !1
  %51 = bitcast %struct.ref_s* %50 to i16*
  %call43 = call i32 @alloc_save_change(%struct.gs_dual_memory_s* %memory42, %struct.ref_s* %49, i16* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0)) #3
  br label %cond.end

cond.false:                                       ; preds = %do.body.34
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call43, %cond.true ], [ 0, %cond.false ]
  %52 = load %struct.ref_s*, %struct.ref_s** %rp_, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %rp_, align 8, !tbaa !1
  br label %do.cond.44

do.cond.44:                                       ; preds = %cond.end
  %53 = load i32, i32* %i, align 4, !tbaa !21
  %dec = add nsw i32 %53, -1
  store i32 %dec, i32* %i, align 4, !tbaa !21
  %tobool45 = icmp ne i32 %dec, 0
  br i1 %tobool45, label %do.body.34, label %do.end.46

do.end.46:                                        ; preds = %do.cond.44
  %54 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #2
  %55 = bitcast %struct.ref_s** %rp_ to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #2
  %56 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %57 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory47 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %57, i32 0, i32 1
  %current48 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory47, i32 0, i32 0
  %58 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current48, align 8, !tbaa !22
  %59 = bitcast %struct.gs_ref_memory_s* %58 to %struct.gs_memory_s*
  %call49 = call %struct.gs_memory_s* @gs_state_swap_memory(%struct.gs_state_s* %56, %struct.gs_memory_s* %59) #3
  store %struct.gs_memory_s* %call49, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %60 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %61 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs50 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %61, i32 0, i32 0
  %62 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs50, align 8, !tbaa !19
  %call51 = call i32 @gs_currentgstate(%struct.gs_state_s* %60, %struct.gs_state_s* %62) #3
  store i32 %call51, i32* %code, align 4, !tbaa !21
  %63 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %64 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call52 = call %struct.gs_memory_s* @gs_state_swap_memory(%struct.gs_state_s* %63, %struct.gs_memory_s* %64) #3
  %65 = load i32, i32* %code, align 4, !tbaa !21
  %cmp53 = icmp slt i32 %65, 0
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %do.end.46
  %66 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %66, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.56:                                        ; preds = %do.end.46
  %67 = bitcast %struct.ref_s** %rp_57 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %67) #2
  %68 = load %struct.int_gstate_s*, %struct.int_gstate_s** %pistate, align 8, !tbaa !1
  %69 = bitcast %struct.int_gstate_s* %68 to %struct.ref_s*
  store %struct.ref_s* %69, %struct.ref_s** %rp_57, align 8, !tbaa !1
  %70 = bitcast i32* %i58 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #2
  store i32 36, i32* %i58, align 4, !tbaa !21
  br label %do.body.59

do.body.59:                                       ; preds = %do.cond.66, %if.end.56
  %71 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory60 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %71, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory60, i32 0, i32 5
  %72 = load i32, i32* %new_mask, align 4, !tbaa !27
  %73 = load %struct.ref_s*, %struct.ref_s** %rp_57, align 8, !tbaa !1
  %tas61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %73, i32 0, i32 0
  %type_attrs62 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas61, i32 0, i32 0
  %74 = load i16, i16* %type_attrs62, align 2, !tbaa !28
  %conv63 = zext i16 %74 to i32
  %or = or i32 %conv63, %72
  %conv64 = trunc i32 %or to i16
  store i16 %conv64, i16* %type_attrs62, align 2, !tbaa !28
  %75 = load %struct.ref_s*, %struct.ref_s** %rp_57, align 8, !tbaa !1
  %incdec.ptr65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %75, i32 1
  store %struct.ref_s* %incdec.ptr65, %struct.ref_s** %rp_57, align 8, !tbaa !1
  br label %do.cond.66

do.cond.66:                                       ; preds = %do.body.59
  %76 = load i32, i32* %i58, align 4, !tbaa !21
  %dec67 = add nsw i32 %76, -1
  store i32 %dec67, i32* %i58, align 4, !tbaa !21
  %tobool68 = icmp ne i32 %dec67, 0
  br i1 %tobool68, label %do.body.59, label %do.end.69

do.end.69:                                        ; preds = %do.cond.66
  %77 = bitcast i32* %i58 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #2
  %78 = bitcast %struct.ref_s** %rp_57 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #2
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.69, %if.then.55, %if.then.32, %if.then.16, %if.then.11, %if.then
  %79 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #2
  %80 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #2
  %81 = bitcast %struct.int_gstate_s** %pistate to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #2
  %82 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #2
  %83 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #2
  %84 = load i32, i32* %retval
  ret i32 %84
}

declare i32 @gs_currentgstate(%struct.gs_state_s*, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define i32 @zsetgstate(%struct.gs_context_state_s* %i_ctx_p) #1 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = load i16, i16* %type_attrs, align 2, !tbaa !28
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 15872
  %cmp = icmp eq i32 %and, 2048
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %7 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !22
  %8 = bitcast %struct.gs_ref_memory_s* %7 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %object_type = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 15
  %9 = load %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)** %object_type, align 8, !tbaa !31
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 1
  %current3 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory2, i32 0, i32 0
  %11 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current3, align 8, !tbaa !22
  %12 = bitcast %struct.gs_ref_memory_s* %11 to %struct.gs_memory_s*
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %14 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %15 = bitcast %struct.obj_header_s* %14 to i8*
  %call = call %struct.gs_memory_struct_type_s* %9(%struct.gs_memory_s* %12, i8* %15) #3
  %cmp4 = icmp eq %struct.gs_memory_struct_type_s* %call, bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_igstate_obj to %struct.gs_memory_struct_type_s*)
  br i1 %cmp4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call6 = call i32 @check_type_failed(%struct.ref_s* %16) #3
  store i32 %call6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.end
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %type_attrs8 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas7, i32 0, i32 0
  %18 = load i16, i16* %type_attrs8, align 2, !tbaa !28
  %conv9 = zext i16 %18 to i32
  %and10 = and i32 %conv9, 32
  %tobool = icmp ne i32 %and10, 0
  br i1 %tobool, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.12
  br label %do.end

do.end:                                           ; preds = %do.cond
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 0
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !19
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 1
  %pstruct14 = bitcast %union.v* %value13 to %struct.obj_header_s**
  %22 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct14, align 8, !tbaa !1
  %23 = bitcast %struct.obj_header_s* %22 to %struct.igstate_obj_s*
  %gstate = getelementptr inbounds %struct.igstate_obj_s, %struct.igstate_obj_s* %23, i32 0, i32 0
  %value15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %gstate, i32 0, i32 1
  %pstruct16 = bitcast %union.v* %value15 to %struct.obj_header_s**
  %24 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct16, align 8, !tbaa !1
  %25 = bitcast %struct.obj_header_s* %24 to %struct.gs_state_s*
  %call17 = call i32 @gs_setgstate(%struct.gs_state_s* %20, %struct.gs_state_s* %25) #3
  store i32 %call17, i32* %code, align 4, !tbaa !21
  %26 = load i32, i32* %code, align 4, !tbaa !21
  %cmp18 = icmp slt i32 %26, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %do.end
  %27 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %do.end
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack22 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %28, i32 0, i32 26
  %stack23 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack22, i32 0, i32 0
  %p24 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack23, i32 0, i32 0
  %29 = load %struct.ref_s*, %struct.ref_s** %p24, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p24, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.21, %if.then.20, %if.then.11, %if.then
  %30 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #2
  %31 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  %32 = load i32, i32* %retval
  ret i32 %32
}

declare i32 @gs_setgstate(%struct.gs_state_s*, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define i32 @zsetbbox(%struct.gs_context_state_s* %i_ctx_p) #1 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %box = alloca [4 x double], align 16
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast [4 x double]* %box to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #2
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x double], [4 x double]* %box, i32 0, i32 0
  %call = call i32 @num_params(%struct.ref_s* %5, i32 4, double* %arraydecay) #3
  store i32 %call, i32* %code, align 4, !tbaa !21
  %6 = load i32, i32* %code, align 4, !tbaa !21
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 0
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !19
  %arrayidx = getelementptr inbounds [4 x double], [4 x double]* %box, i32 0, i64 0
  %10 = load double, double* %arrayidx, align 8, !tbaa !38
  %arrayidx1 = getelementptr inbounds [4 x double], [4 x double]* %box, i32 0, i64 1
  %11 = load double, double* %arrayidx1, align 8, !tbaa !38
  %arrayidx2 = getelementptr inbounds [4 x double], [4 x double]* %box, i32 0, i64 2
  %12 = load double, double* %arrayidx2, align 8, !tbaa !38
  %arrayidx3 = getelementptr inbounds [4 x double], [4 x double]* %box, i32 0, i64 3
  %13 = load double, double* %arrayidx3, align 8, !tbaa !38
  %call4 = call i32 @gs_setbbox(%struct.gs_state_s* %9, double %10, double %11, double %12, double %13) #3
  store i32 %call4, i32* %code, align 4, !tbaa !21
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %14 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack8 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 26
  %stack9 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack8, i32 0, i32 0
  %p10 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack9, i32 0, i32 0
  %16 = load %struct.ref_s*, %struct.ref_s** %p10, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -4
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p10, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then.6, %if.then
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #2
  %18 = bitcast [4 x double]* %box to i8*
  call void @llvm.lifetime.end(i64 32, i8* %18) #2
  %19 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare i32 @num_params(%struct.ref_s*, i32, double*) #0

declare i32 @gs_setbbox(%struct.gs_state_s*, double, double, double, double) #0

; Function Attrs: nounwind uwtable
define internal i32 @zcurrentstrokeadjust(%struct.gs_context_state_s* %i_ctx_p) #1 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
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
  %5 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !29
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !30
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  store %struct.ref_s* %7, %struct.ref_s** %p7, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 0
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !19
  %call = call i32 @gs_currentstrokeadjust(%struct.gs_state_s* %10) #3
  %conv = trunc i32 %call to i16
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  store i16 %conv, i16* %boolval, align 2, !tbaa !34
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 256, i16* %type_attrs, align 2, !tbaa !28
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %13 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetstrokeadjust(%struct.gs_context_state_s* %i_ctx_p) #1 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
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
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !40
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %6) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 0
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !19
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  %10 = load i16, i16* %boolval, align 2, !tbaa !34
  %conv2 = zext i16 %10 to i32
  %call3 = call i32 @gs_setstrokeadjust(%struct.gs_state_s* %8, i32 %conv2) #3
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 26
  %stack5 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack4, i32 0, i32 0
  %p6 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack5, i32 0, i32 0
  %12 = load %struct.ref_s*, %struct.ref_s** %p6, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p6, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @z1copy(%struct.gs_context_state_s* %i_ctx_p) #1 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @zcopy(%struct.gs_context_state_s* %4) #3
  store i32 %call, i32* %code, align 4, !tbaa !21
  %5 = load i32, i32* %code, align 4, !tbaa !21
  %cmp = icmp sge i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !40
  %conv = zext i8 %9 to i32
  %cmp1 = icmp eq i32 %conv, 9
  br i1 %cmp1, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %10 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call5 = call i32 @zcopy_gstate(%struct.gs_context_state_s* %11) #3
  store i32 %call5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  %13 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @zrectappend(%struct.gs_context_state_s* %i_ctx_p) #1 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %lr = alloca %struct.local_rects_s, align 8
  %npop = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.local_rects_s* %lr to i8*
  call void @llvm.lifetime.start(i64 176, i8* %3) #2
  %4 = bitcast i32* %npop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %7 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !22
  %8 = bitcast %struct.gs_ref_memory_s* %7 to %struct.gs_memory_s*
  %call = call i32 @rect_get(%struct.local_rects_s* %lr, %struct.ref_s* %5, %struct.gs_memory_s* %8) #3
  store i32 %call, i32* %npop, align 4, !tbaa !21
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load i32, i32* %npop, align 4, !tbaa !21
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %npop, align 4, !tbaa !21
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 0
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !19
  %pr = getelementptr inbounds %struct.local_rects_s, %struct.local_rects_s* %lr, i32 0, i32 0
  %14 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pr, align 8, !tbaa !41
  %count = getelementptr inbounds %struct.local_rects_s, %struct.local_rects_s* %lr, i32 0, i32 1
  %15 = load i32, i32* %count, align 4, !tbaa !43
  %call1 = call i32 @gs_rectappend(%struct.gs_state_s* %13, %struct.gs_rect_s* %14, i32 %15) #3
  store i32 %call1, i32* %code, align 4, !tbaa !21
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 1
  %current3 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory2, i32 0, i32 0
  %17 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current3, align 8, !tbaa !22
  %18 = bitcast %struct.gs_ref_memory_s* %17 to %struct.gs_memory_s*
  call void @rect_release(%struct.local_rects_s* %lr, %struct.gs_memory_s* %18) #3
  %19 = load i32, i32* %code, align 4, !tbaa !21
  %cmp4 = icmp slt i32 %19, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %20 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %21 = load i32, i32* %npop, align 4, !tbaa !21
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 26
  %stack8 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack7, i32 0, i32 0
  %p9 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 0
  %23 = load %struct.ref_s*, %struct.ref_s** %p9, align 8, !tbaa !5
  %idx.ext = sext i32 %21 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 %idx.neg
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p9, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5, %if.then
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  %25 = bitcast i32* %npop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast %struct.local_rects_s* %lr to i8*
  call void @llvm.lifetime.end(i64 176, i8* %26) #2
  %27 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @zrectclip(%struct.gs_context_state_s* %i_ctx_p) #1 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %lr = alloca %struct.local_rects_s, align 8
  %npop = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.local_rects_s* %lr to i8*
  call void @llvm.lifetime.start(i64 176, i8* %3) #2
  %4 = bitcast i32* %npop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %7 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !22
  %8 = bitcast %struct.gs_ref_memory_s* %7 to %struct.gs_memory_s*
  %call = call i32 @rect_get(%struct.local_rects_s* %lr, %struct.ref_s* %5, %struct.gs_memory_s* %8) #3
  store i32 %call, i32* %npop, align 4, !tbaa !21
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load i32, i32* %npop, align 4, !tbaa !21
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %npop, align 4, !tbaa !21
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 0
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !19
  %pr = getelementptr inbounds %struct.local_rects_s, %struct.local_rects_s* %lr, i32 0, i32 0
  %14 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pr, align 8, !tbaa !41
  %count = getelementptr inbounds %struct.local_rects_s, %struct.local_rects_s* %lr, i32 0, i32 1
  %15 = load i32, i32* %count, align 4, !tbaa !43
  %call1 = call i32 @gs_rectclip(%struct.gs_state_s* %13, %struct.gs_rect_s* %14, i32 %15) #3
  store i32 %call1, i32* %code, align 4, !tbaa !21
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 1
  %current3 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory2, i32 0, i32 0
  %17 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current3, align 8, !tbaa !22
  %18 = bitcast %struct.gs_ref_memory_s* %17 to %struct.gs_memory_s*
  call void @rect_release(%struct.local_rects_s* %lr, %struct.gs_memory_s* %18) #3
  %19 = load i32, i32* %code, align 4, !tbaa !21
  %cmp4 = icmp slt i32 %19, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %20 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %21 = load i32, i32* %npop, align 4, !tbaa !21
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 26
  %stack8 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack7, i32 0, i32 0
  %p9 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 0
  %23 = load %struct.ref_s*, %struct.ref_s** %p9, align 8, !tbaa !5
  %idx.ext = sext i32 %21 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 %idx.neg
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p9, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5, %if.then
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  %25 = bitcast i32* %npop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast %struct.local_rects_s* %lr to i8*
  call void @llvm.lifetime.end(i64 176, i8* %26) #2
  %27 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @zrectfill(%struct.gs_context_state_s* %i_ctx_p) #1 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %lr = alloca %struct.local_rects_s, align 8
  %npop = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.local_rects_s* %lr to i8*
  call void @llvm.lifetime.start(i64 176, i8* %3) #2
  %4 = bitcast i32* %npop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %7 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !22
  %8 = bitcast %struct.gs_ref_memory_s* %7 to %struct.gs_memory_s*
  %call = call i32 @rect_get(%struct.local_rects_s* %lr, %struct.ref_s* %5, %struct.gs_memory_s* %8) #3
  store i32 %call, i32* %npop, align 4, !tbaa !21
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load i32, i32* %npop, align 4, !tbaa !21
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %npop, align 4, !tbaa !21
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 0
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !19
  %pr = getelementptr inbounds %struct.local_rects_s, %struct.local_rects_s* %lr, i32 0, i32 0
  %14 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pr, align 8, !tbaa !41
  %count = getelementptr inbounds %struct.local_rects_s, %struct.local_rects_s* %lr, i32 0, i32 1
  %15 = load i32, i32* %count, align 4, !tbaa !43
  %call1 = call i32 @gs_rectfill(%struct.gs_state_s* %13, %struct.gs_rect_s* %14, i32 %15) #3
  store i32 %call1, i32* %code, align 4, !tbaa !21
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 1
  %current3 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory2, i32 0, i32 0
  %17 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current3, align 8, !tbaa !22
  %18 = bitcast %struct.gs_ref_memory_s* %17 to %struct.gs_memory_s*
  call void @rect_release(%struct.local_rects_s* %lr, %struct.gs_memory_s* %18) #3
  %19 = load i32, i32* %code, align 4, !tbaa !21
  %cmp4 = icmp slt i32 %19, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %20 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %21 = load i32, i32* %npop, align 4, !tbaa !21
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 26
  %stack8 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack7, i32 0, i32 0
  %p9 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 0
  %23 = load %struct.ref_s*, %struct.ref_s** %p9, align 8, !tbaa !5
  %idx.ext = sext i32 %21 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 %idx.neg
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p9, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5, %if.then
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  %25 = bitcast i32* %npop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast %struct.local_rects_s* %lr to i8*
  call void @llvm.lifetime.end(i64 176, i8* %26) #2
  %27 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @zrectstroke(%struct.gs_context_state_s* %i_ctx_p) #1 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %mat = alloca %struct.gs_matrix_s, align 4
  %lr = alloca %struct.local_rects_s, align 8
  %npop = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #2
  %4 = bitcast %struct.local_rects_s* %lr to i8*
  call void @llvm.lifetime.start(i64 176, i8* %4) #2
  %5 = bitcast i32* %npop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %8 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !22
  %9 = bitcast %struct.gs_ref_memory_s* %8 to %struct.gs_memory_s*
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @read_matrix(%struct.gs_memory_s* %9, %struct.ref_s* %10, %struct.gs_matrix_s* %mat) #3
  %cmp = icmp sge i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -1
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 1
  %current2 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory1, i32 0, i32 0
  %13 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current2, align 8, !tbaa !22
  %14 = bitcast %struct.gs_ref_memory_s* %13 to %struct.gs_memory_s*
  %call3 = call i32 @rect_get(%struct.local_rects_s* %lr, %struct.ref_s* %add.ptr, %struct.gs_memory_s* %14) #3
  store i32 %call3, i32* %npop, align 4, !tbaa !21
  %15 = load i32, i32* %npop, align 4, !tbaa !21
  %cmp4 = icmp slt i32 %15, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %16 = load i32, i32* %npop, align 4, !tbaa !21
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 0
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !19
  %pr = getelementptr inbounds %struct.local_rects_s, %struct.local_rects_s* %lr, i32 0, i32 0
  %19 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pr, align 8, !tbaa !41
  %count = getelementptr inbounds %struct.local_rects_s, %struct.local_rects_s* %lr, i32 0, i32 1
  %20 = load i32, i32* %count, align 4, !tbaa !43
  %call6 = call i32 @gs_rectstroke(%struct.gs_state_s* %18, %struct.gs_rect_s* %19, i32 %20, %struct.gs_matrix_s* %mat) #3
  store i32 %call6, i32* %code, align 4, !tbaa !21
  %21 = load i32, i32* %npop, align 4, !tbaa !21
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %npop, align 4, !tbaa !21
  br label %if.end.17

if.else:                                          ; preds = %entry
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 1
  %current8 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory7, i32 0, i32 0
  %24 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current8, align 8, !tbaa !22
  %25 = bitcast %struct.gs_ref_memory_s* %24 to %struct.gs_memory_s*
  %call9 = call i32 @rect_get(%struct.local_rects_s* %lr, %struct.ref_s* %22, %struct.gs_memory_s* %25) #3
  store i32 %call9, i32* %npop, align 4, !tbaa !21
  %26 = load i32, i32* %npop, align 4, !tbaa !21
  %cmp10 = icmp slt i32 %26, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.else
  %27 = load i32, i32* %npop, align 4, !tbaa !21
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.else
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs13 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %28, i32 0, i32 0
  %29 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs13, align 8, !tbaa !19
  %pr14 = getelementptr inbounds %struct.local_rects_s, %struct.local_rects_s* %lr, i32 0, i32 0
  %30 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pr14, align 8, !tbaa !41
  %count15 = getelementptr inbounds %struct.local_rects_s, %struct.local_rects_s* %lr, i32 0, i32 1
  %31 = load i32, i32* %count15, align 4, !tbaa !43
  %call16 = call i32 @gs_rectstroke(%struct.gs_state_s* %29, %struct.gs_rect_s* %30, i32 %31, %struct.gs_matrix_s* null) #3
  store i32 %call16, i32* %code, align 4, !tbaa !21
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.12, %if.end
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory18 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 1
  %current19 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory18, i32 0, i32 0
  %33 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current19, align 8, !tbaa !22
  %34 = bitcast %struct.gs_ref_memory_s* %33 to %struct.gs_memory_s*
  call void @rect_release(%struct.local_rects_s* %lr, %struct.gs_memory_s* %34) #3
  %35 = load i32, i32* %code, align 4, !tbaa !21
  %cmp20 = icmp slt i32 %35, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.17
  %36 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.end.17
  %37 = load i32, i32* %npop, align 4, !tbaa !21
  %38 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack23 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %38, i32 0, i32 26
  %stack24 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack23, i32 0, i32 0
  %p25 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack24, i32 0, i32 0
  %39 = load %struct.ref_s*, %struct.ref_s** %p25, align 8, !tbaa !5
  %idx.ext = sext i32 %37 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i64 %idx.neg
  store %struct.ref_s* %add.ptr26, %struct.ref_s** %p25, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.22, %if.then.21, %if.then.11, %if.then.5
  %40 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #2
  %41 = bitcast i32* %npop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #2
  %42 = bitcast %struct.local_rects_s* %lr to i8*
  call void @llvm.lifetime.end(i64 176, i8* %42) #2
  %43 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %43) #2
  %44 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #2
  %45 = load i32, i32* %retval
  ret i32 %45
}

declare i32 @imemory_save_level(%struct.gs_ref_memory_s*) #0

declare i32 @gs_currentstrokeadjust(%struct.gs_state_s*) #0

declare i32 @gs_setstrokeadjust(%struct.gs_state_s*, i32) #0

declare i32 @zcopy(%struct.gs_context_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @rect_get(%struct.local_rects_s* %plr, %struct.ref_s* %op, %struct.gs_memory_s* %mem) #1 {
entry:
  %retval = alloca i32, align 4
  %plr.addr = alloca %struct.local_rects_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %format = alloca i32, align 4
  %code = alloca i32, align 4
  %n = alloca i32, align 4
  %count = alloca i32, align 4
  %pr = alloca %struct.gs_rect_s*, align 8
  %rv = alloca [4 x double], align 16
  %cleanup.dest.slot = alloca i32
  %rnum = alloca %struct.ref_s, align 8
  %i = alloca i32, align 4
  store %struct.local_rects_s* %plr, %struct.local_rects_s** %plr.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %format to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast %struct.gs_rect_s** %pr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast [4 x double]* %rv to i8*
  call void @llvm.lifetime.start(i64 32, i8* %5) #2
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %7 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !40
  %conv = zext i8 %8 to i32
  switch i32 %conv, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 18, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call = call i32 @num_array_format(%struct.ref_s* %9) #3
  store i32 %call, i32* %code, align 4, !tbaa !21
  %10 = load i32, i32* %code, align 4, !tbaa !21
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %11 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.79

if.end:                                           ; preds = %sw.bb
  %12 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %12, i32* %format, align 4, !tbaa !21
  %13 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %14 = load i32, i32* %format, align 4, !tbaa !21
  %call2 = call i32 @num_array_size(%struct.ref_s* %13, i32 %14) #3
  store i32 %call2, i32* %count, align 4, !tbaa !21
  %15 = load i32, i32* %count, align 4, !tbaa !21
  %rem = urem i32 %15, 4
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.79

if.end.4:                                         ; preds = %if.end
  %16 = load i32, i32* %count, align 4, !tbaa !21
  %div = udiv i32 %16, 4
  store i32 %div, i32* %count, align 4, !tbaa !21
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %17 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x double], [4 x double]* %rv, i32 0, i32 0
  %call5 = call i32 @num_params(%struct.ref_s* %17, i32 4, double* %arraydecay) #3
  store i32 %call5, i32* %code, align 4, !tbaa !21
  %18 = load i32, i32* %code, align 4, !tbaa !21
  %cmp6 = icmp slt i32 %18, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %sw.default
  %19 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.79

if.end.9:                                         ; preds = %sw.default
  %20 = load %struct.local_rects_s*, %struct.local_rects_s** %plr.addr, align 8, !tbaa !1
  %rl = getelementptr inbounds %struct.local_rects_s, %struct.local_rects_s* %20, i32 0, i32 2
  %arraydecay10 = getelementptr inbounds [5 x %struct.gs_rect_s], [5 x %struct.gs_rect_s]* %rl, i32 0, i32 0
  %21 = load %struct.local_rects_s*, %struct.local_rects_s** %plr.addr, align 8, !tbaa !1
  %pr11 = getelementptr inbounds %struct.local_rects_s, %struct.local_rects_s* %21, i32 0, i32 0
  store %struct.gs_rect_s* %arraydecay10, %struct.gs_rect_s** %pr11, align 8, !tbaa !41
  %22 = load %struct.local_rects_s*, %struct.local_rects_s** %plr.addr, align 8, !tbaa !1
  %count12 = getelementptr inbounds %struct.local_rects_s, %struct.local_rects_s* %22, i32 0, i32 1
  store i32 1, i32* %count12, align 4, !tbaa !43
  %arrayidx13 = getelementptr inbounds [4 x double], [4 x double]* %rv, i32 0, i64 0
  %23 = load double, double* %arrayidx13, align 8, !tbaa !38
  %24 = load %struct.local_rects_s*, %struct.local_rects_s** %plr.addr, align 8, !tbaa !1
  %rl14 = getelementptr inbounds %struct.local_rects_s, %struct.local_rects_s* %24, i32 0, i32 2
  %arrayidx15 = getelementptr inbounds [5 x %struct.gs_rect_s], [5 x %struct.gs_rect_s]* %rl14, i32 0, i64 0
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %arrayidx15, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  store double %23, double* %x, align 8, !tbaa !44
  %arrayidx16 = getelementptr inbounds [4 x double], [4 x double]* %rv, i32 0, i64 2
  %25 = load double, double* %arrayidx16, align 8, !tbaa !38
  %add = fadd double %23, %25
  %26 = load %struct.local_rects_s*, %struct.local_rects_s** %plr.addr, align 8, !tbaa !1
  %rl17 = getelementptr inbounds %struct.local_rects_s, %struct.local_rects_s* %26, i32 0, i32 2
  %arrayidx18 = getelementptr inbounds [5 x %struct.gs_rect_s], [5 x %struct.gs_rect_s]* %rl17, i32 0, i64 0
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %arrayidx18, i32 0, i32 1
  %x19 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  store double %add, double* %x19, align 8, !tbaa !47
  %arrayidx20 = getelementptr inbounds [4 x double], [4 x double]* %rv, i32 0, i64 1
  %27 = load double, double* %arrayidx20, align 8, !tbaa !38
  %28 = load %struct.local_rects_s*, %struct.local_rects_s** %plr.addr, align 8, !tbaa !1
  %rl21 = getelementptr inbounds %struct.local_rects_s, %struct.local_rects_s* %28, i32 0, i32 2
  %arrayidx22 = getelementptr inbounds [5 x %struct.gs_rect_s], [5 x %struct.gs_rect_s]* %rl21, i32 0, i64 0
  %p23 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %arrayidx22, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p23, i32 0, i32 1
  store double %27, double* %y, align 8, !tbaa !48
  %arrayidx24 = getelementptr inbounds [4 x double], [4 x double]* %rv, i32 0, i64 3
  %29 = load double, double* %arrayidx24, align 8, !tbaa !38
  %add25 = fadd double %27, %29
  %30 = load %struct.local_rects_s*, %struct.local_rects_s** %plr.addr, align 8, !tbaa !1
  %rl26 = getelementptr inbounds %struct.local_rects_s, %struct.local_rects_s* %30, i32 0, i32 2
  %arrayidx27 = getelementptr inbounds [5 x %struct.gs_rect_s], [5 x %struct.gs_rect_s]* %rl26, i32 0, i64 0
  %q28 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %arrayidx27, i32 0, i32 1
  %y29 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q28, i32 0, i32 1
  store double %add25, double* %y29, align 8, !tbaa !49
  store i32 4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.79

sw.epilog:                                        ; preds = %if.end.4
  %31 = load i32, i32* %count, align 4, !tbaa !21
  %32 = load %struct.local_rects_s*, %struct.local_rects_s** %plr.addr, align 8, !tbaa !1
  %count30 = getelementptr inbounds %struct.local_rects_s, %struct.local_rects_s* %32, i32 0, i32 1
  store i32 %31, i32* %count30, align 4, !tbaa !43
  %33 = load i32, i32* %count, align 4, !tbaa !21
  %cmp31 = icmp ule i32 %33, 5
  br i1 %cmp31, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %sw.epilog
  %34 = load %struct.local_rects_s*, %struct.local_rects_s** %plr.addr, align 8, !tbaa !1
  %rl34 = getelementptr inbounds %struct.local_rects_s, %struct.local_rects_s* %34, i32 0, i32 2
  %arraydecay35 = getelementptr inbounds [5 x %struct.gs_rect_s], [5 x %struct.gs_rect_s]* %rl34, i32 0, i32 0
  store %struct.gs_rect_s* %arraydecay35, %struct.gs_rect_s** %pr, align 8, !tbaa !1
  br label %if.end.41

if.else:                                          ; preds = %sw.epilog
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %35, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %36 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !50
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %38 = load i32, i32* %count, align 4, !tbaa !21
  %call36 = call i8* %36(%struct.gs_memory_s* %37, i32 %38, i32 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0)) #3
  %39 = bitcast i8* %call36 to %struct.gs_rect_s*
  store %struct.gs_rect_s* %39, %struct.gs_rect_s** %pr, align 8, !tbaa !1
  %40 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pr, align 8, !tbaa !1
  %cmp37 = icmp eq %struct.gs_rect_s* %40, null
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.else
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.79

if.end.40:                                        ; preds = %if.else
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.33
  %41 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pr, align 8, !tbaa !1
  %42 = load %struct.local_rects_s*, %struct.local_rects_s** %plr.addr, align 8, !tbaa !1
  %pr42 = getelementptr inbounds %struct.local_rects_s, %struct.local_rects_s* %42, i32 0, i32 0
  store %struct.gs_rect_s* %41, %struct.gs_rect_s** %pr42, align 8, !tbaa !41
  store i32 0, i32* %n, align 4, !tbaa !21
  br label %for.cond

for.cond:                                         ; preds = %for.inc.76, %if.end.41
  %43 = load i32, i32* %n, align 4, !tbaa !21
  %44 = load i32, i32* %count, align 4, !tbaa !21
  %cmp43 = icmp ult i32 %43, %44
  br i1 %cmp43, label %for.body, label %for.end.78

for.body:                                         ; preds = %for.cond
  %45 = bitcast %struct.ref_s* %rnum to i8*
  call void @llvm.lifetime.start(i64 16, i8* %45) #2
  %46 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #2
  store i32 0, i32* %i, align 4, !tbaa !21
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc, %for.body
  %47 = load i32, i32* %i, align 4, !tbaa !21
  %cmp46 = icmp slt i32 %47, 4
  br i1 %cmp46, label %for.body.48, label %for.end

for.body.48:                                      ; preds = %for.cond.45
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %49 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %50 = load i32, i32* %format, align 4, !tbaa !21
  %51 = load i32, i32* %n, align 4, !tbaa !21
  %shl = shl i32 %51, 2
  %52 = load i32, i32* %i, align 4, !tbaa !21
  %add49 = add i32 %shl, %52
  %call50 = call i32 @num_array_get(%struct.gs_memory_s* %48, %struct.ref_s* %49, i32 %50, i32 %add49, %struct.ref_s* %rnum) #3
  store i32 %call50, i32* %code, align 4, !tbaa !21
  %53 = load i32, i32* %code, align 4, !tbaa !21
  switch i32 %53, label %sw.default.59 [
    i32 11, label %sw.bb.51
    i32 16, label %sw.bb.54
  ]

sw.bb.51:                                         ; preds = %for.body.48
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rnum, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %54 = load i64, i64* %intval, align 8, !tbaa !35
  %conv52 = sitofp i64 %54 to double
  %55 = load i32, i32* %i, align 4, !tbaa !21
  %idxprom = sext i32 %55 to i64
  %arrayidx53 = getelementptr inbounds [4 x double], [4 x double]* %rv, i32 0, i64 %idxprom
  store double %conv52, double* %arrayidx53, align 8, !tbaa !38
  br label %sw.epilog.60

sw.bb.54:                                         ; preds = %for.body.48
  %value55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rnum, i32 0, i32 1
  %realval = bitcast %union.v* %value55 to float*
  %56 = load float, float* %realval, align 4, !tbaa !36
  %conv56 = fpext float %56 to double
  %57 = load i32, i32* %i, align 4, !tbaa !21
  %idxprom57 = sext i32 %57 to i64
  %arrayidx58 = getelementptr inbounds [4 x double], [4 x double]* %rv, i32 0, i64 %idxprom57
  store double %conv56, double* %arrayidx58, align 8, !tbaa !38
  br label %sw.epilog.60

sw.default.59:                                    ; preds = %for.body.48
  %58 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %58, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog.60:                                     ; preds = %sw.bb.54, %sw.bb.51
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.60
  %59 = load i32, i32* %i, align 4, !tbaa !21
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %i, align 4, !tbaa !21
  br label %for.cond.45

for.end:                                          ; preds = %for.cond.45
  %arrayidx61 = getelementptr inbounds [4 x double], [4 x double]* %rv, i32 0, i64 0
  %60 = load double, double* %arrayidx61, align 8, !tbaa !38
  %61 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pr, align 8, !tbaa !1
  %p62 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %61, i32 0, i32 0
  %x63 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p62, i32 0, i32 0
  store double %60, double* %x63, align 8, !tbaa !44
  %arrayidx64 = getelementptr inbounds [4 x double], [4 x double]* %rv, i32 0, i64 2
  %62 = load double, double* %arrayidx64, align 8, !tbaa !38
  %add65 = fadd double %60, %62
  %63 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pr, align 8, !tbaa !1
  %q66 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %63, i32 0, i32 1
  %x67 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q66, i32 0, i32 0
  store double %add65, double* %x67, align 8, !tbaa !47
  %arrayidx68 = getelementptr inbounds [4 x double], [4 x double]* %rv, i32 0, i64 1
  %64 = load double, double* %arrayidx68, align 8, !tbaa !38
  %65 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pr, align 8, !tbaa !1
  %p69 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %65, i32 0, i32 0
  %y70 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p69, i32 0, i32 1
  store double %64, double* %y70, align 8, !tbaa !48
  %arrayidx71 = getelementptr inbounds [4 x double], [4 x double]* %rv, i32 0, i64 3
  %66 = load double, double* %arrayidx71, align 8, !tbaa !38
  %add72 = fadd double %64, %66
  %67 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pr, align 8, !tbaa !1
  %q73 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %67, i32 0, i32 1
  %y74 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q73, i32 0, i32 1
  store double %add72, double* %y74, align 8, !tbaa !49
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %sw.default.59
  %68 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #2
  %69 = bitcast %struct.ref_s* %rnum to i8*
  call void @llvm.lifetime.end(i64 16, i8* %69) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.79 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.76

for.inc.76:                                       ; preds = %cleanup.cont
  %70 = load i32, i32* %n, align 4, !tbaa !21
  %inc77 = add i32 %70, 1
  store i32 %inc77, i32* %n, align 4, !tbaa !21
  %71 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %71, i32 1
  store %struct.gs_rect_s* %incdec.ptr, %struct.gs_rect_s** %pr, align 8, !tbaa !1
  br label %for.cond

for.end.78:                                       ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.79

cleanup.79:                                       ; preds = %for.end.78, %cleanup, %if.then.39, %if.end.9, %if.then.8, %if.then.3, %if.then
  %72 = bitcast [4 x double]* %rv to i8*
  call void @llvm.lifetime.end(i64 32, i8* %72) #2
  %73 = bitcast %struct.gs_rect_s** %pr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #2
  %74 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #2
  %75 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #2
  %76 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #2
  %77 = bitcast i32* %format to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #2
  %78 = load i32, i32* %retval
  ret i32 %78
}

declare i32 @gs_rectappend(%struct.gs_state_s*, %struct.gs_rect_s*, i32) #0

; Function Attrs: nounwind uwtable
define internal void @rect_release(%struct.local_rects_s* %plr, %struct.gs_memory_s* %mem) #1 {
entry:
  %plr.addr = alloca %struct.local_rects_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.local_rects_s* %plr, %struct.local_rects_s** %plr.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.local_rects_s*, %struct.local_rects_s** %plr.addr, align 8, !tbaa !1
  %pr = getelementptr inbounds %struct.local_rects_s, %struct.local_rects_s* %0, i32 0, i32 0
  %1 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pr, align 8, !tbaa !41
  %2 = load %struct.local_rects_s*, %struct.local_rects_s** %plr.addr, align 8, !tbaa !1
  %rl = getelementptr inbounds %struct.local_rects_s, %struct.local_rects_s* %2, i32 0, i32 2
  %arraydecay = getelementptr inbounds [5 x %struct.gs_rect_s], [5 x %struct.gs_rect_s]* %rl, i32 0, i32 0
  %cmp = icmp ne %struct.gs_rect_s* %1, %arraydecay
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %4 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !26
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %6 = load %struct.local_rects_s*, %struct.local_rects_s** %plr.addr, align 8, !tbaa !1
  %pr1 = getelementptr inbounds %struct.local_rects_s, %struct.local_rects_s* %6, i32 0, i32 0
  %7 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pr1, align 8, !tbaa !41
  %8 = bitcast %struct.gs_rect_s* %7 to i8*
  call void %4(%struct.gs_memory_s* %5, i8* %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0)) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @num_array_format(%struct.ref_s*) #0

declare i32 @num_array_size(%struct.ref_s*, i32) #0

declare i32 @num_array_get(%struct.gs_memory_s*, %struct.ref_s*, i32, i32, %struct.ref_s*) #0

declare i32 @gs_rectclip(%struct.gs_state_s*, %struct.gs_rect_s*, i32) #0

declare i32 @gs_rectfill(%struct.gs_state_s*, %struct.gs_rect_s*, i32) #0

declare i32 @read_matrix(%struct.gs_memory_s*, %struct.ref_s*, %struct.gs_matrix_s*) #0

declare i32 @gs_rectstroke(%struct.gs_state_s*, %struct.gs_rect_s*, i32, %struct.gs_matrix_s*) #0

declare %struct.gs_state_s* @gs_gstate(%struct.gs_state_s*) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin }

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
!19 = !{!6, !2, i64 0}
!20 = !{!7, !9, i64 48}
!21 = !{!9, !9, i64 0}
!22 = !{!6, !2, i64 8}
!23 = !{!24, !2, i64 72}
!24 = !{!"gs_memory_s", !2, i64 0, !25, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!25 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!26 = !{!24, !2, i64 24}
!27 = !{!7, !9, i64 68}
!28 = !{!10, !12, i64 0}
!29 = !{!6, !2, i64 640}
!30 = !{!6, !9, i64 688}
!31 = !{!24, !2, i64 128}
!32 = !{!7, !9, i64 64}
!33 = !{i64 0, i64 2, !34, i64 2, i64 2, !34, i64 4, i64 4, !21, i64 8, i64 8, !35, i64 8, i64 2, !34, i64 8, i64 4, !36, i64 8, i64 8, !35, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !35}
!34 = !{!12, !12, i64 0}
!35 = !{!13, !13, i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"float", !3, i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"double", !3, i64 0}
!40 = !{!3, !3, i64 0}
!41 = !{!42, !2, i64 0}
!42 = !{!"local_rects_s", !2, i64 0, !9, i64 8, !3, i64 16}
!43 = !{!42, !9, i64 8}
!44 = !{!45, !39, i64 0}
!45 = !{!"gs_rect_s", !46, i64 0, !46, i64 16}
!46 = !{!"gs_point_s", !39, i64 0, !39, i64 8}
!47 = !{!45, !39, i64 16}
!48 = !{!45, !39, i64 8}
!49 = !{!45, !39, i64 24}
!50 = !{!24, !2, i64 88}
