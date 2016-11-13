; ModuleID = './iutil.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
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
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_param_list_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
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
%struct.dict_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.name_s = type opaque
%struct.gx_device_s = type opaque
%struct.obj_header_s = type opaque
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_notify_list_s = type { %struct.gs_memory_s*, %struct.gs_notify_registration_s* }
%struct.gs_notify_registration_s = type { i32 (i8*, i8*)*, i8*, %struct.gs_notify_registration_s* }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_font_procs_s = type { i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)*, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i64, i64)* }
%struct.gs_point_s = type { double, double }
%struct.gs_font_info_s = type { i32, i32, i32, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_glyph_info_s = type { i32, [2 x %struct.gs_point_s], %struct.gs_point_s, %struct.gs_rect_s, i32, i64* }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gx_path_s = type opaque
%struct.gs_text_enum_s = type opaque
%struct.gs_show_enum_s = type opaque
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_uid_s = type { i64, i64* }
%struct.font_data_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %union._fs }
%union._fs = type { %struct._f42 }
%struct._f42 = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, i32, i64 }
%struct.gs_font_base_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32 }

@ref_type_properties = constant [64 x i8] c"\00\00\09\03\03\03\03\03\00\01\00\00\00\02\04\02\00\00\03\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02", align 16
@obj_cvp.type_strings = internal constant [21 x i8*] [i8* null, i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [7 x i8] c"-dict-\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"-file-\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"-array-\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"-packedarray-\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"-fontID-\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"-mark-\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"-save-\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"-string-\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"-device-\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%.9g\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@s_PSSE_template = external constant %struct.stream_template_s, align 8
@.str.13 = private unnamed_addr constant [5 x i8] c"...)\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"-foreign-struct-\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"-(struct)-\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@op_def_count = external constant i32, align 4
@op_defs_all = external constant [0 x %struct.op_def*], align 8
@.str.21 = private unnamed_addr constant [7 x i8] c"@0x%lx\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"0.0001\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"--nostringval--\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"write_matrix\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"Private\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"+%02d\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"-%02d\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c".0\00", align 1

; Function Attrs: nounwind uwtable
define i32 @refcpy_to_old(%struct.ref_s* %aref, i32 %index, %struct.ref_s* %from, i32 %size, %struct.gs_dual_memory_s* %idmemory, i8* %cname) #0 {
entry:
  %retval = alloca i32, align 4
  %aref.addr = alloca %struct.ref_s*, align 8
  %index.addr = alloca i32, align 4
  %from.addr = alloca %struct.ref_s*, align 8
  %size.addr = alloca i32, align 4
  %idmemory.addr = alloca %struct.gs_dual_memory_s*, align 8
  %cname.addr = alloca i8*, align 8
  %to = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %aref, %struct.ref_s** %aref.addr, align 8, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.ref_s* %from, %struct.ref_s** %from.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_dual_memory_s* %idmemory, %struct.gs_dual_memory_s** %idmemory.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %to to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %aref.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %2 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 %idx.ext
  store %struct.ref_s* %add.ptr, %struct.ref_s** %to, align 8, !tbaa !1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %from.addr, align 8, !tbaa !1
  %6 = load i32, i32* %size.addr, align 4, !tbaa !5
  %7 = load %struct.ref_s*, %struct.ref_s** %aref.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = load i16, i16* %type_attrs, align 2, !tbaa !7
  %conv = zext i16 %8 to i32
  %and = and i32 %conv, 12
  %call = call i32 @refs_check_space(%struct.ref_s* %5, i32 %6, i32 %and) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %9 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.ref_s*, %struct.ref_s** %to, align 8, !tbaa !1
  %12 = load %struct.ref_s*, %struct.ref_s** %from.addr, align 8, !tbaa !1
  %cmp2 = icmp ule %struct.ref_s* %11, %12
  br i1 %cmp2, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %13 = load %struct.ref_s*, %struct.ref_s** %from.addr, align 8, !tbaa !1
  %14 = load i32, i32* %size.addr, align 4, !tbaa !5
  %idx.ext4 = zext i32 %14 to i64
  %add.ptr5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 %idx.ext4
  %15 = load %struct.ref_s*, %struct.ref_s** %to, align 8, !tbaa !1
  %cmp6 = icmp ule %struct.ref_s* %add.ptr5, %15
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %if.then.8
  %16 = load i32, i32* %size.addr, align 4, !tbaa !5
  %dec = add i32 %16, -1
  store i32 %dec, i32* %size.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load %struct.ref_s*, %struct.ref_s** %to, align 8, !tbaa !1
  %tas9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %type_attrs10 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas9, i32 0, i32 0
  %18 = load i16, i16* %type_attrs10, align 2, !tbaa !7
  %conv11 = zext i16 %18 to i32
  %19 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %idmemory.addr, align 8, !tbaa !1
  %test_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %19, i32 0, i32 4
  %20 = load i32, i32* %test_mask, align 4, !tbaa !11
  %and12 = and i32 %conv11, %20
  %cmp13 = icmp eq i32 %and12, 0
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %21 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %idmemory.addr, align 8, !tbaa !1
  %22 = load %struct.ref_s*, %struct.ref_s** %aref.addr, align 8, !tbaa !1
  %23 = load %struct.ref_s*, %struct.ref_s** %to, align 8, !tbaa !1
  %24 = bitcast %struct.ref_s* %23 to i16*
  %25 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call15 = call i32 @alloc_save_change(%struct.gs_dual_memory_s* %21, %struct.ref_s* %22, i16* %24, i8* %25) #5
  br label %cond.end

cond.false:                                       ; preds = %while.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call15, %cond.true ], [ 0, %cond.false ]
  %26 = load %struct.ref_s*, %struct.ref_s** %to, align 8, !tbaa !1
  %27 = load %struct.ref_s*, %struct.ref_s** %from.addr, align 8, !tbaa !1
  %28 = bitcast %struct.ref_s* %26 to i8*
  %29 = bitcast %struct.ref_s* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 16, i32 8, i1 false), !tbaa.struct !14
  %30 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %idmemory.addr, align 8, !tbaa !1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %30, i32 0, i32 5
  %31 = load i32, i32* %new_mask, align 4, !tbaa !20
  %32 = load %struct.ref_s*, %struct.ref_s** %to, align 8, !tbaa !1
  %tas16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 0
  %type_attrs17 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas16, i32 0, i32 0
  %33 = load i16, i16* %type_attrs17, align 2, !tbaa !7
  %conv18 = zext i16 %33 to i32
  %or = or i32 %conv18, %31
  %conv19 = trunc i32 %or to i16
  store i16 %conv19, i16* %type_attrs17, align 2, !tbaa !7
  %34 = load %struct.ref_s*, %struct.ref_s** %to, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %to, align 8, !tbaa !1
  %35 = load %struct.ref_s*, %struct.ref_s** %from.addr, align 8, !tbaa !1
  %incdec.ptr20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 1
  store %struct.ref_s* %incdec.ptr20, %struct.ref_s** %from.addr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.47

if.else:                                          ; preds = %lor.lhs.false
  %36 = load i32, i32* %size.addr, align 4, !tbaa !5
  %37 = load %struct.ref_s*, %struct.ref_s** %from.addr, align 8, !tbaa !1
  %idx.ext21 = zext i32 %36 to i64
  %add.ptr22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i64 %idx.ext21
  store %struct.ref_s* %add.ptr22, %struct.ref_s** %from.addr, align 8, !tbaa !1
  %38 = load i32, i32* %size.addr, align 4, !tbaa !5
  %39 = load %struct.ref_s*, %struct.ref_s** %to, align 8, !tbaa !1
  %idx.ext23 = zext i32 %38 to i64
  %add.ptr24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i64 %idx.ext23
  store %struct.ref_s* %add.ptr24, %struct.ref_s** %to, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %cond.end.39, %if.else
  %40 = load i32, i32* %size.addr, align 4, !tbaa !5
  %dec25 = add i32 %40, -1
  store i32 %dec25, i32* %size.addr, align 4, !tbaa !5
  %tobool26 = icmp ne i32 %40, 0
  br i1 %tobool26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = load %struct.ref_s*, %struct.ref_s** %from.addr, align 8, !tbaa !1
  %incdec.ptr27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i32 -1
  store %struct.ref_s* %incdec.ptr27, %struct.ref_s** %from.addr, align 8, !tbaa !1
  %42 = load %struct.ref_s*, %struct.ref_s** %to, align 8, !tbaa !1
  %incdec.ptr28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 -1
  store %struct.ref_s* %incdec.ptr28, %struct.ref_s** %to, align 8, !tbaa !1
  %43 = load %struct.ref_s*, %struct.ref_s** %to, align 8, !tbaa !1
  %tas29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i32 0, i32 0
  %type_attrs30 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas29, i32 0, i32 0
  %44 = load i16, i16* %type_attrs30, align 2, !tbaa !7
  %conv31 = zext i16 %44 to i32
  %45 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %idmemory.addr, align 8, !tbaa !1
  %test_mask32 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %45, i32 0, i32 4
  %46 = load i32, i32* %test_mask32, align 4, !tbaa !11
  %and33 = and i32 %conv31, %46
  %cmp34 = icmp eq i32 %and33, 0
  br i1 %cmp34, label %cond.true.36, label %cond.false.38

cond.true.36:                                     ; preds = %for.body
  %47 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %idmemory.addr, align 8, !tbaa !1
  %48 = load %struct.ref_s*, %struct.ref_s** %aref.addr, align 8, !tbaa !1
  %49 = load %struct.ref_s*, %struct.ref_s** %to, align 8, !tbaa !1
  %50 = bitcast %struct.ref_s* %49 to i16*
  %51 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call37 = call i32 @alloc_save_change(%struct.gs_dual_memory_s* %47, %struct.ref_s* %48, i16* %50, i8* %51) #5
  br label %cond.end.39

cond.false.38:                                    ; preds = %for.body
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.38, %cond.true.36
  %cond40 = phi i32 [ %call37, %cond.true.36 ], [ 0, %cond.false.38 ]
  %52 = load %struct.ref_s*, %struct.ref_s** %to, align 8, !tbaa !1
  %53 = load %struct.ref_s*, %struct.ref_s** %from.addr, align 8, !tbaa !1
  %54 = bitcast %struct.ref_s* %52 to i8*
  %55 = bitcast %struct.ref_s* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 16, i32 8, i1 false), !tbaa.struct !14
  %56 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %idmemory.addr, align 8, !tbaa !1
  %new_mask41 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %56, i32 0, i32 5
  %57 = load i32, i32* %new_mask41, align 4, !tbaa !20
  %58 = load %struct.ref_s*, %struct.ref_s** %to, align 8, !tbaa !1
  %tas42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i32 0, i32 0
  %type_attrs43 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas42, i32 0, i32 0
  %59 = load i16, i16* %type_attrs43, align 2, !tbaa !7
  %conv44 = zext i16 %59 to i32
  %or45 = or i32 %conv44, %57
  %conv46 = trunc i32 %or45 to i16
  store i16 %conv46, i16* %type_attrs43, align 2, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.47

if.end.47:                                        ; preds = %for.end, %while.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.47, %if.then
  %60 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast %struct.ref_s** %to to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = load i32, i32* %retval
  ret i32 %62
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @refs_check_space(%struct.ref_s* %bot, i32 %size, i32 %space) #0 {
entry:
  %retval = alloca i32, align 4
  %bot.addr = alloca %struct.ref_s*, align 8
  %size.addr = alloca i32, align 4
  %space.addr = alloca i32, align 4
  store %struct.ref_s* %bot, %struct.ref_s** %bot.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %space, i32* %space.addr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %size.addr, align 4, !tbaa !5
  %dec = add i32 %0, -1
  store i32 %dec, i32* %size.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.ref_s*, %struct.ref_s** %bot.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %2 = load i16, i16* %type_attrs, align 2, !tbaa !7
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 12
  %3 = load i32, i32* %space.addr, align 4, !tbaa !5
  %cmp = icmp ugt i32 %and, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 -7, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** %bot.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %bot.addr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare i32 @alloc_save_change(%struct.gs_dual_memory_s*, %struct.ref_s*, i16*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @refcpy_to_new(%struct.ref_s* %to, %struct.ref_s* %from, i32 %size, %struct.gs_dual_memory_s* %idmemory) #0 {
entry:
  %to.addr = alloca %struct.ref_s*, align 8
  %from.addr = alloca %struct.ref_s*, align 8
  %size.addr = alloca i32, align 4
  %idmemory.addr = alloca %struct.gs_dual_memory_s*, align 8
  store %struct.ref_s* %to, %struct.ref_s** %to.addr, align 8, !tbaa !1
  store %struct.ref_s* %from, %struct.ref_s** %from.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_dual_memory_s* %idmemory, %struct.gs_dual_memory_s** %idmemory.addr, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %size.addr, align 4, !tbaa !5
  %dec = add i32 %0, -1
  store i32 %dec, i32* %size.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.ref_s*, %struct.ref_s** %to.addr, align 8, !tbaa !1
  %2 = load %struct.ref_s*, %struct.ref_s** %from.addr, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s* %1 to i8*
  %4 = bitcast %struct.ref_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 16, i32 8, i1 false), !tbaa.struct !14
  %5 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %idmemory.addr, align 8, !tbaa !1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %5, i32 0, i32 5
  %6 = load i32, i32* %new_mask, align 4, !tbaa !20
  %7 = load %struct.ref_s*, %struct.ref_s** %to.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = load i16, i16* %type_attrs, align 2, !tbaa !7
  %conv = zext i16 %8 to i32
  %or = or i32 %conv, %6
  %conv1 = trunc i32 %or to i16
  store i16 %conv1, i16* %type_attrs, align 2, !tbaa !7
  %9 = load %struct.ref_s*, %struct.ref_s** %to.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %to.addr, align 8, !tbaa !1
  %10 = load %struct.ref_s*, %struct.ref_s** %from.addr, align 8, !tbaa !1
  %incdec.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 1
  store %struct.ref_s* %incdec.ptr2, %struct.ref_s** %from.addr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @refset_null_new(%struct.ref_s* %to, i32 %size, i32 %new_mask) #0 {
entry:
  %to.addr = alloca %struct.ref_s*, align 8
  %size.addr = alloca i32, align 4
  %new_mask.addr = alloca i32, align 4
  store %struct.ref_s* %to, %struct.ref_s** %to.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %new_mask, i32* %new_mask.addr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %size.addr, align 4, !tbaa !5
  %dec = add i32 %0, -1
  store i32 %dec, i32* %size.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %new_mask.addr, align 4, !tbaa !5
  %add = add i32 3584, %1
  %conv = trunc i32 %add to i16
  %2 = load %struct.ref_s*, %struct.ref_s** %to.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 %conv, i16* %type_attrs, align 2, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load %struct.ref_s*, %struct.ref_s** %to.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %to.addr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @obj_eq(%struct.gs_memory_s* %mem, %struct.ref_s* %pref1, %struct.ref_s* %pref2) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pref1.addr = alloca %struct.ref_s*, align 8
  %pref2.addr = alloca %struct.ref_s*, align 8
  %nref = alloca %struct.ref_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %pref1, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  store %struct.ref_s* %pref2, %struct.ref_s** %pref2.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s* %nref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %2 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !21
  %conv = zext i8 %3 to i32
  %4 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8, !tbaa !1
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs2 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 0
  %5 = bitcast i16* %type_attrs2 to i8*
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx3, align 1, !tbaa !21
  %conv4 = zext i8 %6 to i32
  %cmp = icmp ne i32 %conv, %conv4
  br i1 %cmp, label %if.then, label %if.end.103

if.then:                                          ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  %tas6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs7 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas6, i32 0, i32 0
  %8 = bitcast i16* %type_attrs7 to i8*
  %arrayidx8 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx8, align 1, !tbaa !21
  %conv9 = zext i8 %9 to i32
  switch i32 %conv9, label %sw.default [
    i32 11, label %sw.bb
    i32 16, label %sw.bb.20
    i32 13, label %sw.bb.37
    i32 18, label %sw.bb.45
    i32 5, label %sw.bb.56
    i32 6, label %sw.bb.56
  ]

sw.bb:                                            ; preds = %if.then
  %10 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8, !tbaa !1
  %tas10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %type_attrs11 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas10, i32 0, i32 0
  %11 = bitcast i16* %type_attrs11 to i8*
  %arrayidx12 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx12, align 1, !tbaa !21
  %conv13 = zext i8 %12 to i32
  %cmp14 = icmp eq i32 %conv13, 16
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %sw.bb
  %13 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %realval = bitcast %union.v* %value to float*
  %14 = load float, float* %realval, align 4, !tbaa !18
  %15 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  %value16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 1
  %intval = bitcast %union.v* %value16 to i64*
  %16 = load i64, i64* %intval, align 8, !tbaa !16
  %conv17 = sitofp i64 %16 to float
  %cmp18 = fcmp oeq float %14, %conv17
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb
  %17 = phi i1 [ false, %sw.bb ], [ %cmp18, %land.rhs ]
  %land.ext = zext i1 %17 to i32
  store i32 %land.ext, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.20:                                         ; preds = %if.then
  %18 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8, !tbaa !1
  %tas21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %type_attrs22 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas21, i32 0, i32 0
  %19 = bitcast i16* %type_attrs22 to i8*
  %arrayidx23 = getelementptr inbounds i8, i8* %19, i64 1
  %20 = load i8, i8* %arrayidx23, align 1, !tbaa !21
  %conv24 = zext i8 %20 to i32
  %cmp25 = icmp eq i32 %conv24, 11
  br i1 %cmp25, label %land.rhs.27, label %land.end.35

land.rhs.27:                                      ; preds = %sw.bb.20
  %21 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8, !tbaa !1
  %value28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 1
  %intval29 = bitcast %union.v* %value28 to i64*
  %22 = load i64, i64* %intval29, align 8, !tbaa !16
  %conv30 = sitofp i64 %22 to float
  %23 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  %value31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 1
  %realval32 = bitcast %union.v* %value31 to float*
  %24 = load float, float* %realval32, align 4, !tbaa !18
  %cmp33 = fcmp oeq float %conv30, %24
  br label %land.end.35

land.end.35:                                      ; preds = %land.rhs.27, %sw.bb.20
  %25 = phi i1 [ false, %sw.bb.20 ], [ %cmp33, %land.rhs.27 ]
  %land.ext36 = zext i1 %25 to i32
  store i32 %land.ext36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.37:                                         ; preds = %if.then
  %26 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8, !tbaa !1
  %tas38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 0
  %type_attrs39 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas38, i32 0, i32 0
  %27 = bitcast i16* %type_attrs39 to i8*
  %arrayidx40 = getelementptr inbounds i8, i8* %27, i64 1
  %28 = load i8, i8* %arrayidx40, align 1, !tbaa !21
  %conv41 = zext i8 %28 to i32
  %cmp42 = icmp eq i32 %conv41, 18
  br i1 %cmp42, label %if.end, label %if.then.44

if.then.44:                                       ; preds = %sw.bb.37
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.bb.37
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 2
  %30 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !22
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %30, i32 0, i32 16
  %31 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !25
  %32 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  call void @names_string_ref(%struct.name_table_s* %31, %struct.ref_s* %32, %struct.ref_s* %nref) #5
  store %struct.ref_s* %nref, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.45:                                         ; preds = %if.then
  %33 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8, !tbaa !1
  %tas46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 0
  %type_attrs47 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas46, i32 0, i32 0
  %34 = bitcast i16* %type_attrs47 to i8*
  %arrayidx48 = getelementptr inbounds i8, i8* %34, i64 1
  %35 = load i8, i8* %arrayidx48, align 1, !tbaa !21
  %conv49 = zext i8 %35 to i32
  %cmp50 = icmp eq i32 %conv49, 13
  br i1 %cmp50, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %sw.bb.45
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %sw.bb.45
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx54 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %36, i32 0, i32 2
  %37 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx54, align 8, !tbaa !22
  %gs_name_table55 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %37, i32 0, i32 16
  %38 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table55, align 8, !tbaa !25
  %39 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8, !tbaa !1
  call void @names_string_ref(%struct.name_table_s* %38, %struct.ref_s* %39, %struct.ref_s* %nref) #5
  store %struct.ref_s* %nref, %struct.ref_s** %pref2.addr, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.56:                                         ; preds = %if.then, %if.then
  %40 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  %tas57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 0, i32 0
  %type_attrs58 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas57, i32 0, i32 0
  %41 = bitcast i16* %type_attrs58 to i8*
  %arrayidx59 = getelementptr inbounds i8, i8* %41, i64 1
  %42 = load i8, i8* %arrayidx59, align 1, !tbaa !21
  %conv60 = zext i8 %42 to i32
  %43 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8, !tbaa !1
  %tas61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i32 0, i32 0
  %type_attrs62 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas61, i32 0, i32 0
  %44 = bitcast i16* %type_attrs62 to i8*
  %arrayidx63 = getelementptr inbounds i8, i8* %44, i64 1
  %45 = load i8, i8* %arrayidx63, align 1, !tbaa !21
  %conv64 = zext i8 %45 to i32
  %add = add nsw i32 %conv60, %conv64
  %cmp65 = icmp eq i32 %add, 11
  br i1 %cmp65, label %land.lhs.true, label %land.end.75

land.lhs.true:                                    ; preds = %sw.bb.56
  %46 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  %tas67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas67, i32 0, i32 2
  %47 = load i32, i32* %rsize, align 4, !tbaa !27
  %cmp68 = icmp eq i32 %47, 0
  br i1 %cmp68, label %land.rhs.70, label %land.end.75

land.rhs.70:                                      ; preds = %land.lhs.true
  %48 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8, !tbaa !1
  %tas71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i32 0, i32 0
  %rsize72 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas71, i32 0, i32 2
  %49 = load i32, i32* %rsize72, align 4, !tbaa !27
  %cmp73 = icmp eq i32 %49, 0
  br label %land.end.75

land.end.75:                                      ; preds = %land.rhs.70, %land.lhs.true, %sw.bb.56
  %50 = phi i1 [ false, %land.lhs.true ], [ false, %sw.bb.56 ], [ %cmp73, %land.rhs.70 ]
  %land.ext76 = zext i1 %50 to i32
  store i32 %land.ext76, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %if.then
  %51 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  %tas77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i32 0, i32 0
  %type_attrs78 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas77, i32 0, i32 0
  %52 = load i16, i16* %type_attrs78, align 2, !tbaa !7
  %conv79 = zext i16 %52 to i32
  %cmp80 = icmp sge i32 %conv79, 5376
  br i1 %cmp80, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.default
  br label %cond.end

cond.false:                                       ; preds = %sw.default
  %53 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  %tas82 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i32 0, i32 0
  %type_attrs83 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas82, i32 0, i32 0
  %54 = bitcast i16* %type_attrs83 to i8*
  %arrayidx84 = getelementptr inbounds i8, i8* %54, i64 1
  %55 = load i8, i8* %arrayidx84, align 1, !tbaa !21
  %conv85 = zext i8 %55 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 15, %cond.true ], [ %conv85, %cond.false ]
  %56 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8, !tbaa !1
  %tas86 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i32 0, i32 0
  %type_attrs87 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas86, i32 0, i32 0
  %57 = load i16, i16* %type_attrs87, align 2, !tbaa !7
  %conv88 = zext i16 %57 to i32
  %cmp89 = icmp sge i32 %conv88, 5376
  br i1 %cmp89, label %cond.true.91, label %cond.false.92

cond.true.91:                                     ; preds = %cond.end
  br label %cond.end.97

cond.false.92:                                    ; preds = %cond.end
  %58 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8, !tbaa !1
  %tas93 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i32 0, i32 0
  %type_attrs94 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas93, i32 0, i32 0
  %59 = bitcast i16* %type_attrs94 to i8*
  %arrayidx95 = getelementptr inbounds i8, i8* %59, i64 1
  %60 = load i8, i8* %arrayidx95, align 1, !tbaa !21
  %conv96 = zext i8 %60 to i32
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.92, %cond.true.91
  %cond98 = phi i32 [ 15, %cond.true.91 ], [ %conv96, %cond.false.92 ]
  %cmp99 = icmp ne i32 %cond, %cond98
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %cond.end.97
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.102:                                       ; preds = %cond.end.97
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.102, %if.end.53, %if.end
  br label %if.end.103

if.end.103:                                       ; preds = %sw.epilog, %entry
  %61 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  %tas104 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i32 0, i32 0
  %type_attrs105 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas104, i32 0, i32 0
  %62 = load i16, i16* %type_attrs105, align 2, !tbaa !7
  %conv106 = zext i16 %62 to i32
  %cmp107 = icmp sge i32 %conv106, 5376
  br i1 %cmp107, label %cond.true.109, label %cond.false.110

cond.true.109:                                    ; preds = %if.end.103
  br label %cond.end.115

cond.false.110:                                   ; preds = %if.end.103
  %63 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  %tas111 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %63, i32 0, i32 0
  %type_attrs112 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas111, i32 0, i32 0
  %64 = bitcast i16* %type_attrs112 to i8*
  %arrayidx113 = getelementptr inbounds i8, i8* %64, i64 1
  %65 = load i8, i8* %arrayidx113, align 1, !tbaa !21
  %conv114 = zext i8 %65 to i32
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.false.110, %cond.true.109
  %cond116 = phi i32 [ 15, %cond.true.109 ], [ %conv114, %cond.false.110 ]
  switch i32 %cond116, label %sw.epilog.265 [
    i32 4, label %sw.bb.117
    i32 5, label %sw.bb.136
    i32 6, label %sw.bb.136
    i32 1, label %sw.bb.156
    i32 2, label %sw.bb.164
    i32 3, label %sw.bb.170
    i32 11, label %sw.bb.185
    i32 12, label %sw.bb.192
    i32 14, label %sw.bb.192
    i32 13, label %sw.bb.193
    i32 20, label %sw.bb.199
    i32 15, label %sw.bb.199
    i32 16, label %sw.bb.225
    i32 17, label %sw.bb.232
    i32 18, label %sw.bb.238
    i32 19, label %sw.bb.247
    i32 8, label %sw.bb.253
    i32 9, label %sw.bb.253
    i32 10, label %sw.bb.259
  ]

sw.bb.117:                                        ; preds = %cond.end.115
  %66 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  %value118 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %66, i32 0, i32 1
  %refs = bitcast %union.v* %value118 to %struct.ref_s**
  %67 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %68 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8, !tbaa !1
  %value119 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i32 0, i32 1
  %refs120 = bitcast %union.v* %value119 to %struct.ref_s**
  %69 = load %struct.ref_s*, %struct.ref_s** %refs120, align 8, !tbaa !1
  %cmp121 = icmp eq %struct.ref_s* %67, %69
  br i1 %cmp121, label %land.rhs.127, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.117
  %70 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  %tas123 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %70, i32 0, i32 0
  %rsize124 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas123, i32 0, i32 2
  %71 = load i32, i32* %rsize124, align 4, !tbaa !27
  %cmp125 = icmp eq i32 %71, 0
  br i1 %cmp125, label %land.rhs.127, label %land.end.134

land.rhs.127:                                     ; preds = %lor.lhs.false, %sw.bb.117
  %72 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  %tas128 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i32 0, i32 0
  %rsize129 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas128, i32 0, i32 2
  %73 = load i32, i32* %rsize129, align 4, !tbaa !27
  %74 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8, !tbaa !1
  %tas130 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i32 0, i32 0
  %rsize131 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas130, i32 0, i32 2
  %75 = load i32, i32* %rsize131, align 4, !tbaa !27
  %cmp132 = icmp eq i32 %73, %75
  br label %land.end.134

land.end.134:                                     ; preds = %land.rhs.127, %lor.lhs.false
  %76 = phi i1 [ false, %lor.lhs.false ], [ %cmp132, %land.rhs.127 ]
  %land.ext135 = zext i1 %76 to i32
  store i32 %land.ext135, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.136:                                        ; preds = %cond.end.115, %cond.end.115
  %77 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  %value137 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %77, i32 0, i32 1
  %packed = bitcast %union.v* %value137 to i16**
  %78 = load i16*, i16** %packed, align 8, !tbaa !1
  %79 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8, !tbaa !1
  %value138 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %79, i32 0, i32 1
  %packed139 = bitcast %union.v* %value138 to i16**
  %80 = load i16*, i16** %packed139, align 8, !tbaa !1
  %cmp140 = icmp eq i16* %78, %80
  br i1 %cmp140, label %land.rhs.147, label %lor.lhs.false.142

lor.lhs.false.142:                                ; preds = %sw.bb.136
  %81 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  %tas143 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %81, i32 0, i32 0
  %rsize144 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas143, i32 0, i32 2
  %82 = load i32, i32* %rsize144, align 4, !tbaa !27
  %cmp145 = icmp eq i32 %82, 0
  br i1 %cmp145, label %land.rhs.147, label %land.end.154

land.rhs.147:                                     ; preds = %lor.lhs.false.142, %sw.bb.136
  %83 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  %tas148 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %83, i32 0, i32 0
  %rsize149 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas148, i32 0, i32 2
  %84 = load i32, i32* %rsize149, align 4, !tbaa !27
  %85 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8, !tbaa !1
  %tas150 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %85, i32 0, i32 0
  %rsize151 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas150, i32 0, i32 2
  %86 = load i32, i32* %rsize151, align 4, !tbaa !27
  %cmp152 = icmp eq i32 %84, %86
  br label %land.end.154

land.end.154:                                     ; preds = %land.rhs.147, %lor.lhs.false.142
  %87 = phi i1 [ false, %lor.lhs.false.142 ], [ %cmp152, %land.rhs.147 ]
  %land.ext155 = zext i1 %87 to i32
  store i32 %land.ext155, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.156:                                        ; preds = %cond.end.115
  %88 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  %value157 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %88, i32 0, i32 1
  %boolval = bitcast %union.v* %value157 to i16*
  %89 = load i16, i16* %boolval, align 2, !tbaa !15
  %conv158 = zext i16 %89 to i32
  %90 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8, !tbaa !1
  %value159 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %90, i32 0, i32 1
  %boolval160 = bitcast %union.v* %value159 to i16*
  %91 = load i16, i16* %boolval160, align 2, !tbaa !15
  %conv161 = zext i16 %91 to i32
  %cmp162 = icmp eq i32 %conv158, %conv161
  %conv163 = zext i1 %cmp162 to i32
  store i32 %conv163, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.164:                                        ; preds = %cond.end.115
  %92 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  %value165 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %92, i32 0, i32 1
  %pdict = bitcast %union.v* %value165 to %struct.dict_s**
  %93 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %94 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8, !tbaa !1
  %value166 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %94, i32 0, i32 1
  %pdict167 = bitcast %union.v* %value166 to %struct.dict_s**
  %95 = load %struct.dict_s*, %struct.dict_s** %pdict167, align 8, !tbaa !1
  %cmp168 = icmp eq %struct.dict_s* %93, %95
  %conv169 = zext i1 %cmp168 to i32
  store i32 %conv169, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.170:                                        ; preds = %cond.end.115
  %96 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  %value171 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %96, i32 0, i32 1
  %pfile = bitcast %union.v* %value171 to %struct.stream_s**
  %97 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  %98 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8, !tbaa !1
  %value172 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %98, i32 0, i32 1
  %pfile173 = bitcast %union.v* %value172 to %struct.stream_s**
  %99 = load %struct.stream_s*, %struct.stream_s** %pfile173, align 8, !tbaa !1
  %cmp174 = icmp eq %struct.stream_s* %97, %99
  br i1 %cmp174, label %land.rhs.176, label %land.end.183

land.rhs.176:                                     ; preds = %sw.bb.170
  %100 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  %tas177 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %100, i32 0, i32 0
  %rsize178 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas177, i32 0, i32 2
  %101 = load i32, i32* %rsize178, align 4, !tbaa !27
  %102 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8, !tbaa !1
  %tas179 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %102, i32 0, i32 0
  %rsize180 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas179, i32 0, i32 2
  %103 = load i32, i32* %rsize180, align 4, !tbaa !27
  %cmp181 = icmp eq i32 %101, %103
  br label %land.end.183

land.end.183:                                     ; preds = %land.rhs.176, %sw.bb.170
  %104 = phi i1 [ false, %sw.bb.170 ], [ %cmp181, %land.rhs.176 ]
  %land.ext184 = zext i1 %104 to i32
  store i32 %land.ext184, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.185:                                        ; preds = %cond.end.115
  %105 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  %value186 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %105, i32 0, i32 1
  %intval187 = bitcast %union.v* %value186 to i64*
  %106 = load i64, i64* %intval187, align 8, !tbaa !16
  %107 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8, !tbaa !1
  %value188 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %107, i32 0, i32 1
  %intval189 = bitcast %union.v* %value188 to i64*
  %108 = load i64, i64* %intval189, align 8, !tbaa !16
  %cmp190 = icmp eq i64 %106, %108
  %conv191 = zext i1 %cmp190 to i32
  store i32 %conv191, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.192:                                        ; preds = %cond.end.115, %cond.end.115
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.193:                                        ; preds = %cond.end.115
  %109 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  %value194 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %109, i32 0, i32 1
  %pname = bitcast %union.v* %value194 to %struct.name_s**
  %110 = load %struct.name_s*, %struct.name_s** %pname, align 8, !tbaa !1
  %111 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8, !tbaa !1
  %value195 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %111, i32 0, i32 1
  %pname196 = bitcast %union.v* %value195 to %struct.name_s**
  %112 = load %struct.name_s*, %struct.name_s** %pname196, align 8, !tbaa !1
  %cmp197 = icmp eq %struct.name_s* %110, %112
  %conv198 = zext i1 %cmp197 to i32
  store i32 %conv198, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.199:                                        ; preds = %cond.end.115, %cond.end.115
  %113 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  %tas200 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %113, i32 0, i32 0
  %rsize201 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas200, i32 0, i32 2
  %114 = load i32, i32* %rsize201, align 4, !tbaa !27
  %cmp202 = icmp eq i32 %114, 0
  br i1 %cmp202, label %cond.true.204, label %cond.false.206

cond.true.204:                                    ; preds = %sw.bb.199
  %115 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  %call = call zeroext i16 @op_find_index(%struct.ref_s* %115) #5
  %conv205 = zext i16 %call to i32
  br label %cond.end.209

cond.false.206:                                   ; preds = %sw.bb.199
  %116 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  %tas207 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %116, i32 0, i32 0
  %rsize208 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas207, i32 0, i32 2
  %117 = load i32, i32* %rsize208, align 4, !tbaa !27
  br label %cond.end.209

cond.end.209:                                     ; preds = %cond.false.206, %cond.true.204
  %cond210 = phi i32 [ %conv205, %cond.true.204 ], [ %117, %cond.false.206 ]
  %118 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8, !tbaa !1
  %tas211 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %118, i32 0, i32 0
  %rsize212 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas211, i32 0, i32 2
  %119 = load i32, i32* %rsize212, align 4, !tbaa !27
  %cmp213 = icmp eq i32 %119, 0
  br i1 %cmp213, label %cond.true.215, label %cond.false.218

cond.true.215:                                    ; preds = %cond.end.209
  %120 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8, !tbaa !1
  %call216 = call zeroext i16 @op_find_index(%struct.ref_s* %120) #5
  %conv217 = zext i16 %call216 to i32
  br label %cond.end.221

cond.false.218:                                   ; preds = %cond.end.209
  %121 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8, !tbaa !1
  %tas219 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %121, i32 0, i32 0
  %rsize220 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas219, i32 0, i32 2
  %122 = load i32, i32* %rsize220, align 4, !tbaa !27
  br label %cond.end.221

cond.end.221:                                     ; preds = %cond.false.218, %cond.true.215
  %cond222 = phi i32 [ %conv217, %cond.true.215 ], [ %122, %cond.false.218 ]
  %cmp223 = icmp eq i32 %cond210, %cond222
  %conv224 = zext i1 %cmp223 to i32
  store i32 %conv224, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.225:                                        ; preds = %cond.end.115
  %123 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  %value226 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %123, i32 0, i32 1
  %realval227 = bitcast %union.v* %value226 to float*
  %124 = load float, float* %realval227, align 4, !tbaa !18
  %125 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8, !tbaa !1
  %value228 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %125, i32 0, i32 1
  %realval229 = bitcast %union.v* %value228 to float*
  %126 = load float, float* %realval229, align 4, !tbaa !18
  %cmp230 = fcmp oeq float %124, %126
  %conv231 = zext i1 %cmp230 to i32
  store i32 %conv231, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.232:                                        ; preds = %cond.end.115
  %127 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8, !tbaa !1
  %value233 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %127, i32 0, i32 1
  %saveid = bitcast %union.v* %value233 to i64*
  %128 = load i64, i64* %saveid, align 8, !tbaa !16
  %129 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  %value234 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %129, i32 0, i32 1
  %saveid235 = bitcast %union.v* %value234 to i64*
  %130 = load i64, i64* %saveid235, align 8, !tbaa !16
  %cmp236 = icmp eq i64 %128, %130
  %conv237 = zext i1 %cmp236 to i32
  store i32 %conv237, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.238:                                        ; preds = %cond.end.115
  %131 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  %value239 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %131, i32 0, i32 1
  %bytes = bitcast %union.v* %value239 to i8**
  %132 = load i8*, i8** %bytes, align 8, !tbaa !1
  %133 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  %tas240 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %133, i32 0, i32 0
  %rsize241 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas240, i32 0, i32 2
  %134 = load i32, i32* %rsize241, align 4, !tbaa !27
  %135 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8, !tbaa !1
  %value242 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %135, i32 0, i32 1
  %bytes243 = bitcast %union.v* %value242 to i8**
  %136 = load i8*, i8** %bytes243, align 8, !tbaa !1
  %137 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8, !tbaa !1
  %tas244 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %137, i32 0, i32 0
  %rsize245 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas244, i32 0, i32 2
  %138 = load i32, i32* %rsize245, align 4, !tbaa !27
  %call246 = call i32 @bytes_compare(i8* %132, i32 %134, i8* %136, i32 %138) #5
  %tobool = icmp ne i32 %call246, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.247:                                        ; preds = %cond.end.115
  %139 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  %value248 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %139, i32 0, i32 1
  %pdevice = bitcast %union.v* %value248 to %struct.gx_device_s**
  %140 = load %struct.gx_device_s*, %struct.gx_device_s** %pdevice, align 8, !tbaa !1
  %141 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8, !tbaa !1
  %value249 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %141, i32 0, i32 1
  %pdevice250 = bitcast %union.v* %value249 to %struct.gx_device_s**
  %142 = load %struct.gx_device_s*, %struct.gx_device_s** %pdevice250, align 8, !tbaa !1
  %cmp251 = icmp eq %struct.gx_device_s* %140, %142
  %conv252 = zext i1 %cmp251 to i32
  store i32 %conv252, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.253:                                        ; preds = %cond.end.115, %cond.end.115
  %143 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  %value254 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %143, i32 0, i32 1
  %pstruct = bitcast %union.v* %value254 to %struct.obj_header_s**
  %144 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %145 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8, !tbaa !1
  %value255 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %145, i32 0, i32 1
  %pstruct256 = bitcast %union.v* %value255 to %struct.obj_header_s**
  %146 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct256, align 8, !tbaa !1
  %cmp257 = icmp eq %struct.obj_header_s* %144, %146
  %conv258 = zext i1 %cmp257 to i32
  store i32 %conv258, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.259:                                        ; preds = %cond.end.115
  %147 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %148 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  %value260 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %148, i32 0, i32 1
  %pstruct261 = bitcast %union.v* %value260 to %struct.obj_header_s**
  %149 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct261, align 8, !tbaa !1
  %150 = bitcast %struct.obj_header_s* %149 to %struct.gs_font_s*
  %151 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8, !tbaa !1
  %value262 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %151, i32 0, i32 1
  %pstruct263 = bitcast %union.v* %value262 to %struct.obj_header_s**
  %152 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct263, align 8, !tbaa !1
  %153 = bitcast %struct.obj_header_s* %152 to %struct.gs_font_s*
  %call264 = call i32 @fid_eq(%struct.gs_memory_s* %147, %struct.gs_font_s* %150, %struct.gs_font_s* %153) #5
  store i32 %call264, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog.265:                                    ; preds = %cond.end.115
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.265, %sw.bb.259, %sw.bb.253, %sw.bb.247, %sw.bb.238, %sw.bb.232, %sw.bb.225, %cond.end.221, %sw.bb.193, %sw.bb.192, %sw.bb.185, %land.end.183, %sw.bb.164, %sw.bb.156, %land.end.154, %land.end.134, %if.then.101, %land.end.75, %if.then.52, %if.then.44, %land.end.35, %land.end
  %154 = bitcast %struct.ref_s* %nref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %154) #1
  %155 = load i32, i32* %retval
  ret i32 %155
}

declare void @names_string_ref(%struct.name_table_s*, %struct.ref_s*, %struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define zeroext i16 @op_find_index(%struct.ref_s* %pref) #0 {
entry:
  %retval = alloca i16, align 2
  %pref.addr = alloca %struct.ref_s*, align 8
  %proc = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %opp = alloca %struct.op_def**, align 8
  %opend = alloca %struct.op_def**, align 8
  %def = alloca %struct.op_def*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %0 = bitcast i32 (%struct.gs_context_state_s*)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %opproc = bitcast %union.v* %value to i32 (%struct.gs_context_state_s*)**
  %2 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  store i32 (%struct.gs_context_state_s*)* %2, i32 (%struct.gs_context_state_s*)** %proc, align 8, !tbaa !1
  %3 = bitcast %struct.op_def*** %opp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store %struct.op_def** getelementptr inbounds ([0 x %struct.op_def*], [0 x %struct.op_def*]* @op_defs_all, i32 0, i32 0), %struct.op_def*** %opp, align 8, !tbaa !1
  %4 = bitcast %struct.op_def*** %opend to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.op_def**, %struct.op_def*** %opp, align 8, !tbaa !1
  %6 = load i32, i32* @op_def_count, align 4, !tbaa !5
  %div = udiv i32 %6, 16
  %idx.ext = zext i32 %div to i64
  %add.ptr = getelementptr inbounds %struct.op_def*, %struct.op_def** %5, i64 %idx.ext
  store %struct.op_def** %add.ptr, %struct.op_def*** %opend, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.9, %entry
  %7 = load %struct.op_def**, %struct.op_def*** %opp, align 8, !tbaa !1
  %8 = load %struct.op_def**, %struct.op_def*** %opend, align 8, !tbaa !1
  %cmp = icmp ult %struct.op_def** %7, %8
  br i1 %cmp, label %for.body, label %for.end.11

for.body:                                         ; preds = %for.cond
  %9 = bitcast %struct.op_def** %def to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.op_def**, %struct.op_def*** %opp, align 8, !tbaa !1
  %11 = load %struct.op_def*, %struct.op_def** %10, align 8, !tbaa !1
  store %struct.op_def* %11, %struct.op_def** %def, align 8, !tbaa !1
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %12 = load %struct.op_def*, %struct.op_def** %def, align 8, !tbaa !1
  %oname = getelementptr inbounds %struct.op_def, %struct.op_def* %12, i32 0, i32 0
  %13 = load i8*, i8** %oname, align 8, !tbaa !28
  %cmp2 = icmp ne i8* %13, null
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %14 = load %struct.op_def*, %struct.op_def** %def, align 8, !tbaa !1
  %proc4 = getelementptr inbounds %struct.op_def, %struct.op_def* %14, i32 0, i32 1
  %15 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %proc4, align 8, !tbaa !30
  %16 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %proc, align 8, !tbaa !1
  %cmp5 = icmp eq i32 (%struct.gs_context_state_s*)* %15, %16
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %17 = load %struct.op_def**, %struct.op_def*** %opp, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint %struct.op_def** %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([0 x %struct.op_def*]* @op_defs_all to i64)
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %mul = mul nsw i64 %sub.ptr.div, 16
  %18 = load %struct.op_def*, %struct.op_def** %def, align 8, !tbaa !1
  %19 = load %struct.op_def**, %struct.op_def*** %opp, align 8, !tbaa !1
  %20 = load %struct.op_def*, %struct.op_def** %19, align 8, !tbaa !1
  %sub.ptr.lhs.cast6 = ptrtoint %struct.op_def* %18 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.op_def* %20 to i64
  %sub.ptr.sub7 = sub i64 %sub.ptr.lhs.cast6, %sub.ptr.rhs.cast
  %sub.ptr.div8 = sdiv exact i64 %sub.ptr.sub7, 16
  %add = add nsw i64 %mul, %sub.ptr.div8
  %conv = trunc i64 %add to i16
  store i16 %conv, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load %struct.op_def*, %struct.op_def** %def, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.op_def, %struct.op_def* %21, i32 1
  store %struct.op_def* %incdec.ptr, %struct.op_def** %def, align 8, !tbaa !1
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %22 = bitcast %struct.op_def** %def to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.12 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.9

for.inc.9:                                        ; preds = %cleanup.cont
  %23 = load %struct.op_def**, %struct.op_def*** %opp, align 8, !tbaa !1
  %incdec.ptr10 = getelementptr inbounds %struct.op_def*, %struct.op_def** %23, i32 1
  store %struct.op_def** %incdec.ptr10, %struct.op_def*** %opp, align 8, !tbaa !1
  br label %for.cond

for.end.11:                                       ; preds = %for.cond
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.12

cleanup.12:                                       ; preds = %for.end.11, %cleanup
  %24 = bitcast %struct.op_def*** %opend to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast %struct.op_def*** %opp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast i32 (%struct.gs_context_state_s*)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = load i16, i16* %retval
  ret i16 %27
}

declare i32 @bytes_compare(i8*, i32, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @fid_eq(%struct.gs_memory_s* %mem, %struct.gs_font_s* %pfont1, %struct.gs_font_s* %pfont2) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pfont1.addr = alloca %struct.gs_font_s*, align 8
  %pfont2.addr = alloca %struct.gs_font_s*, align 8
  %puid1 = alloca %struct.gs_uid_s*, align 8
  %puid2 = alloca %struct.gs_uid_s*, align 8
  %cleanup.dest.slot = alloca i32
  %pfd1 = alloca %struct.font_data_s*, align 8
  %pfd2 = alloca %struct.font_data_s*, align 8
  %ppd1 = alloca %struct.ref_s*, align 8
  %ppd2 = alloca %struct.ref_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %pfont1, %struct.gs_font_s** %pfont1.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %pfont2, %struct.gs_font_s** %pfont2.addr, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont1.addr, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %0, i32 0, i32 7
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %base, align 8, !tbaa !31
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont1.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_font_s* %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont1.addr, align 8, !tbaa !1
  %base1 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %3, i32 0, i32 7
  %4 = load %struct.gs_font_s*, %struct.gs_font_s** %base1, align 8, !tbaa !31
  store %struct.gs_font_s* %4, %struct.gs_font_s** %pfont1.addr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.2

while.cond.2:                                     ; preds = %while.body.5, %while.end
  %5 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont2.addr, align 8, !tbaa !1
  %base3 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %5, i32 0, i32 7
  %6 = load %struct.gs_font_s*, %struct.gs_font_s** %base3, align 8, !tbaa !31
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont2.addr, align 8, !tbaa !1
  %cmp4 = icmp ne %struct.gs_font_s* %6, %7
  br i1 %cmp4, label %while.body.5, label %while.end.7

while.body.5:                                     ; preds = %while.cond.2
  %8 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont2.addr, align 8, !tbaa !1
  %base6 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %8, i32 0, i32 7
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %base6, align 8, !tbaa !31
  store %struct.gs_font_s* %9, %struct.gs_font_s** %pfont2.addr, align 8, !tbaa !1
  br label %while.cond.2

while.end.7:                                      ; preds = %while.cond.2
  %10 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont1.addr, align 8, !tbaa !1
  %11 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont2.addr, align 8, !tbaa !1
  %cmp8 = icmp eq %struct.gs_font_s* %10, %11
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %while.end.7
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.end.7
  %12 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont1.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %12, i32 0, i32 11
  %13 = load i32, i32* %FontType, align 4, !tbaa !37
  switch i32 %13, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %14 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont1.addr, align 8, !tbaa !1
  %FontType9 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %14, i32 0, i32 11
  %15 = load i32, i32* %FontType9, align 4, !tbaa !37
  %16 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont2.addr, align 8, !tbaa !1
  %FontType10 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %16, i32 0, i32 11
  %17 = load i32, i32* %FontType10, align 4, !tbaa !37
  %cmp11 = icmp eq i32 %15, %17
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %sw.bb
  br label %sw.epilog

if.end.13:                                        ; preds = %sw.bb
  br label %sw.default

sw.default:                                       ; preds = %if.end, %if.end.13
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.then.12
  %18 = bitcast %struct.gs_uid_s** %puid1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont1.addr, align 8, !tbaa !1
  %20 = bitcast %struct.gs_font_s* %19 to %struct.gs_font_base_s*
  %UID = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %20, i32 0, i32 24
  store %struct.gs_uid_s* %UID, %struct.gs_uid_s** %puid1, align 8, !tbaa !1
  %21 = bitcast %struct.gs_uid_s** %puid2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont2.addr, align 8, !tbaa !1
  %23 = bitcast %struct.gs_font_s* %22 to %struct.gs_font_base_s*
  %UID14 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %23, i32 0, i32 24
  store %struct.gs_uid_s* %UID14, %struct.gs_uid_s** %puid2, align 8, !tbaa !1
  %24 = load %struct.gs_uid_s*, %struct.gs_uid_s** %puid1, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %24, i32 0, i32 0
  %25 = load i64, i64* %id, align 8, !tbaa !38
  %and = and i64 %25, -16777216
  %cmp15 = icmp eq i64 %and, 0
  br i1 %cmp15, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %26 = load %struct.gs_uid_s*, %struct.gs_uid_s** %puid2, align 8, !tbaa !1
  %id16 = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %26, i32 0, i32 0
  %27 = load i64, i64* %id16, align 8, !tbaa !38
  %and17 = and i64 %27, -16777216
  %cmp18 = icmp eq i64 %and17, 0
  br i1 %cmp18, label %if.then.25, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false
  %28 = load %struct.gs_uid_s*, %struct.gs_uid_s** %puid1, align 8, !tbaa !1
  %id20 = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %28, i32 0, i32 0
  %29 = load i64, i64* %id20, align 8, !tbaa !38
  %cmp21 = icmp slt i64 %29, 0
  br i1 %cmp21, label %land.lhs.true, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %lor.lhs.false.19
  %30 = load %struct.gs_uid_s*, %struct.gs_uid_s** %puid2, align 8, !tbaa !1
  %id23 = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %30, i32 0, i32 0
  %31 = load i64, i64* %id23, align 8, !tbaa !38
  %cmp24 = icmp slt i64 %31, 0
  br i1 %cmp24, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %lor.lhs.false.22, %lor.lhs.false.19
  %32 = load %struct.gs_uid_s*, %struct.gs_uid_s** %puid1, align 8, !tbaa !1
  %33 = load %struct.gs_uid_s*, %struct.gs_uid_s** %puid2, align 8, !tbaa !1
  %call = call i32 @uid_equal(%struct.gs_uid_s* %32, %struct.gs_uid_s* %33) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %land.lhs.true, %lor.lhs.false, %sw.epilog
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %land.lhs.true, %lor.lhs.false.22
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.26, %if.then.25
  %34 = bitcast %struct.gs_uid_s** %puid2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast %struct.gs_uid_s** %puid1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  %36 = bitcast %struct.font_data_s** %pfd1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  %37 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont1.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %37, i32 0, i32 8
  %38 = load i8*, i8** %client_data, align 8, !tbaa !40
  %39 = bitcast i8* %38 to %struct.font_data_s*
  store %struct.font_data_s* %39, %struct.font_data_s** %pfd1, align 8, !tbaa !1
  %40 = bitcast %struct.font_data_s** %pfd2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont2.addr, align 8, !tbaa !1
  %client_data28 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %41, i32 0, i32 8
  %42 = load i8*, i8** %client_data28, align 8, !tbaa !40
  %43 = bitcast i8* %42 to %struct.font_data_s*
  store %struct.font_data_s* %43, %struct.font_data_s** %pfd2, align 8, !tbaa !1
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %45 = load %struct.font_data_s*, %struct.font_data_s** %pfd1, align 8, !tbaa !1
  %BuildChar = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %45, i32 0, i32 1
  %46 = load %struct.font_data_s*, %struct.font_data_s** %pfd2, align 8, !tbaa !1
  %BuildChar29 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %46, i32 0, i32 1
  %call30 = call i32 @obj_eq(%struct.gs_memory_s* %44, %struct.ref_s* %BuildChar, %struct.ref_s* %BuildChar29) #5
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %land.lhs.true.32, label %if.then.44

land.lhs.true.32:                                 ; preds = %cleanup.cont
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %48 = load %struct.font_data_s*, %struct.font_data_s** %pfd1, align 8, !tbaa !1
  %BuildGlyph = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %48, i32 0, i32 2
  %49 = load %struct.font_data_s*, %struct.font_data_s** %pfd2, align 8, !tbaa !1
  %BuildGlyph33 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %49, i32 0, i32 2
  %call34 = call i32 @obj_eq(%struct.gs_memory_s* %47, %struct.ref_s* %BuildGlyph, %struct.ref_s* %BuildGlyph33) #5
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %land.lhs.true.36, label %if.then.44

land.lhs.true.36:                                 ; preds = %land.lhs.true.32
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %51 = load %struct.font_data_s*, %struct.font_data_s** %pfd1, align 8, !tbaa !1
  %Encoding = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %51, i32 0, i32 3
  %52 = load %struct.font_data_s*, %struct.font_data_s** %pfd2, align 8, !tbaa !1
  %Encoding37 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %52, i32 0, i32 3
  %call38 = call i32 @obj_eq(%struct.gs_memory_s* %50, %struct.ref_s* %Encoding, %struct.ref_s* %Encoding37) #5
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %land.lhs.true.40, label %if.then.44

land.lhs.true.40:                                 ; preds = %land.lhs.true.36
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %54 = load %struct.font_data_s*, %struct.font_data_s** %pfd1, align 8, !tbaa !1
  %CharStrings = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %54, i32 0, i32 4
  %55 = load %struct.font_data_s*, %struct.font_data_s** %pfd2, align 8, !tbaa !1
  %CharStrings41 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %55, i32 0, i32 4
  %call42 = call i32 @obj_eq(%struct.gs_memory_s* %53, %struct.ref_s* %CharStrings, %struct.ref_s* %CharStrings41) #5
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %land.lhs.true.40, %land.lhs.true.36, %land.lhs.true.32, %cleanup.cont
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.65

if.end.45:                                        ; preds = %land.lhs.true.40
  %56 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont1.addr, align 8, !tbaa !1
  %FontType46 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %56, i32 0, i32 11
  %57 = load i32, i32* %FontType46, align 4, !tbaa !37
  %cmp47 = icmp eq i32 %57, 1
  br i1 %cmp47, label %if.then.48, label %if.end.64

if.then.48:                                       ; preds = %if.end.45
  %58 = bitcast %struct.ref_s** %ppd1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %58) #1
  %59 = bitcast %struct.ref_s** %ppd2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %59) #1
  %60 = load %struct.font_data_s*, %struct.font_data_s** %pfd1, align 8, !tbaa !1
  %dict = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %60, i32 0, i32 0
  %call49 = call i32 @dict_find_string(%struct.ref_s* %dict, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), %struct.ref_s** %ppd1) #5
  %cmp50 = icmp sgt i32 %call49, 0
  br i1 %cmp50, label %land.lhs.true.51, label %if.end.59

land.lhs.true.51:                                 ; preds = %if.then.48
  %61 = load %struct.font_data_s*, %struct.font_data_s** %pfd2, align 8, !tbaa !1
  %dict52 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %61, i32 0, i32 0
  %call53 = call i32 @dict_find_string(%struct.ref_s* %dict52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), %struct.ref_s** %ppd2) #5
  %cmp54 = icmp sgt i32 %call53, 0
  br i1 %cmp54, label %land.lhs.true.55, label %if.end.59

land.lhs.true.55:                                 ; preds = %land.lhs.true.51
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %63 = load %struct.ref_s*, %struct.ref_s** %ppd1, align 8, !tbaa !1
  %64 = load %struct.ref_s*, %struct.ref_s** %ppd2, align 8, !tbaa !1
  %call56 = call i32 @obj_eq(%struct.gs_memory_s* %62, %struct.ref_s* %63, %struct.ref_s* %64) #5
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.end.59, label %if.then.58

if.then.58:                                       ; preds = %land.lhs.true.55
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.60

if.end.59:                                        ; preds = %land.lhs.true.55, %land.lhs.true.51, %if.then.48
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.60

cleanup.60:                                       ; preds = %if.end.59, %if.then.58
  %65 = bitcast %struct.ref_s** %ppd2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast %struct.ref_s** %ppd1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %cleanup.dest.62 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.62, label %cleanup.65 [
    i32 0, label %cleanup.cont.63
  ]

cleanup.cont.63:                                  ; preds = %cleanup.60
  br label %if.end.64

if.end.64:                                        ; preds = %cleanup.cont.63, %if.end.45
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.65

cleanup.65:                                       ; preds = %if.end.64, %cleanup.60, %if.then.44
  %67 = bitcast %struct.font_data_s** %pfd2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast %struct.font_data_s** %pfd1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %cleanup.dest.67 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.67, label %unreachable [
    i32 0, label %cleanup.cont.68
    i32 1, label %return
  ]

cleanup.cont.68:                                  ; preds = %cleanup.65
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %cleanup.cont.68, %cleanup.65, %cleanup, %sw.default, %if.then
  %69 = load i32, i32* %retval
  ret i32 %69

unreachable:                                      ; preds = %cleanup.65, %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @obj_ident_eq(%struct.gs_memory_s* %mem, %struct.ref_s* %pref1, %struct.ref_s* %pref2) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pref1.addr = alloca %struct.ref_s*, align 8
  %pref2.addr = alloca %struct.ref_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %pref1, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  store %struct.ref_s* %pref2, %struct.ref_s** %pref2.addr, align 8, !tbaa !1
  %0 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %1 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 1
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !21
  %conv = zext i8 %2 to i32
  %3 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8, !tbaa !1
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs2 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 0
  %4 = bitcast i16* %type_attrs2 to i8*
  %arrayidx3 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx3, align 1, !tbaa !21
  %conv4 = zext i8 %5 to i32
  %cmp = icmp ne i32 %conv, %conv4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  %tas6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs7 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas6, i32 0, i32 0
  %7 = bitcast i16* %type_attrs7 to i8*
  %arrayidx8 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx8, align 1, !tbaa !21
  %conv9 = zext i8 %8 to i32
  %cmp10 = icmp eq i32 %conv9, 18
  br i1 %cmp10, label %if.then.12, label %if.end.22

if.then.12:                                       ; preds = %if.end
  %9 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %10 = load i8*, i8** %bytes, align 8, !tbaa !1
  %11 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8, !tbaa !1
  %value13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %bytes14 = bitcast %union.v* %value13 to i8**
  %12 = load i8*, i8** %bytes14, align 8, !tbaa !1
  %cmp15 = icmp eq i8* %10, %12
  br i1 %cmp15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.12
  %13 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  %tas17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas17, i32 0, i32 2
  %14 = load i32, i32* %rsize, align 4, !tbaa !27
  %15 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8, !tbaa !1
  %tas18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %rsize19 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas18, i32 0, i32 2
  %16 = load i32, i32* %rsize19, align 4, !tbaa !27
  %cmp20 = icmp eq i32 %14, %16
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.12
  %17 = phi i1 [ false, %if.then.12 ], [ %cmp20, %land.rhs ]
  %land.ext = zext i1 %17 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %19 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8, !tbaa !1
  %20 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8, !tbaa !1
  %call = call i32 @obj_eq(%struct.gs_memory_s* %18, %struct.ref_s* %19, %struct.ref_s* %20) #5
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end.22, %land.end, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define i32 @obj_string_data(%struct.gs_memory_s* %mem, %struct.ref_s* %op, i8** %pchars, i32* %plen) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %pchars.addr = alloca i8**, align 8
  %plen.addr = alloca i32*, align 8
  %nref = alloca %struct.ref_s, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store i8** %pchars, i8*** %pchars.addr, align 8, !tbaa !1
  store i32* %plen, i32** %plen.addr, align 8, !tbaa !1
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %1 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 1
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !21
  %conv = zext i8 %2 to i32
  switch i32 %conv, label %sw.default [
    i32 13, label %sw.bb
    i32 18, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %3 = bitcast %struct.ref_s* %nref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 2
  %5 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !22
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %5, i32 0, i32 16
  %6 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !25
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  call void @names_string_ref(%struct.name_table_s* %6, %struct.ref_s* %7, %struct.ref_s* %nref) #5
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nref, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %8 = load i8*, i8** %bytes, align 8, !tbaa !1
  %9 = load i8**, i8*** %pchars.addr, align 8, !tbaa !1
  store i8* %8, i8** %9, align 8, !tbaa !1
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nref, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 2
  %10 = load i32, i32* %rsize, align 4, !tbaa !27
  %11 = load i32*, i32** %plen.addr, align 8, !tbaa !1
  store i32 %10, i32* %11, align 4, !tbaa !5
  store i32 0, i32* %retval
  %12 = bitcast %struct.ref_s* %nref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %12) #1
  br label %return

sw.bb.2:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.bb.2
  %13 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs4 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 0
  %14 = load i16, i16* %type_attrs4, align 2, !tbaa !7
  %conv5 = zext i16 %14 to i32
  %and = and i32 %conv5, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  store i32 -7, i32* %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %15 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 1
  %bytes7 = bitcast %union.v* %value6 to i8**
  %16 = load i8*, i8** %bytes7, align 8, !tbaa !1
  %17 = load i8**, i8*** %pchars.addr, align 8, !tbaa !1
  store i8* %16, i8** %17, align 8, !tbaa !1
  %18 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %rsize9 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas8, i32 0, i32 2
  %19 = load i32, i32* %rsize9, align 4, !tbaa !27
  %20 = load i32*, i32** %plen.addr, align 8, !tbaa !1
  store i32 %19, i32* %20, align 4, !tbaa !5
  store i32 0, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %do.end, %if.then, %sw.bb
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define i32 @obj_cvp(%struct.ref_s* %op, i8* %str, i32 %len, i32* %prlen, i32 %full_print, i32 %start_pos, %struct.gs_memory_s* %mem, i32 %restart) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %prlen.addr = alloca i32*, align 8
  %full_print.addr = alloca i32, align 4
  %start_pos.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %restart.addr = alloca i32, align 4
  %buf = alloca [50 x i8], align 16
  %data = alloca i8*, align 8
  %size = alloca i32, align 4
  %code = alloca i32, align 4
  %nref = alloca %struct.ref_s, align 8
  %value = alloca float, align 4
  %scanned = alloca float, align 4
  %cleanup.dest.slot = alloca i32
  %truncate = alloca i32, align 4
  %r = alloca %struct.stream_cursor_read_s, align 8
  %w = alloca %struct.stream_cursor_write_s, align 8
  %skip = alloca i32, align 4
  %wstr = alloca i8*, align 8
  %len1 = alloca i32, align 4
  %status = alloca i32, align 4
  %written = alloca i32, align 4
  %rtype = alloca i32, align 4
  %index = alloca i32, align 4
  %opt = alloca %struct.op_array_table_s*, align 8
  %index343 = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  store i32* %prlen, i32** %prlen.addr, align 8, !tbaa !1
  store i32 %full_print, i32* %full_print.addr, align 4, !tbaa !5
  store i32 %start_pos, i32* %start_pos.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %restart, i32* %restart.addr, align 4, !tbaa !5
  %0 = bitcast [50 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 50, i8* %0) #1
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay, i8** %data, align 8, !tbaa !1
  %2 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.ref_s* %nref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = load i32, i32* %full_print.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.278

if.then:                                          ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %7 = load i16, i16* %type_attrs, align 2, !tbaa !7
  %conv = zext i16 %7 to i32
  %cmp = icmp sge i32 %conv, 5376
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %9 = bitcast i16* %type_attrs3 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx, align 1, !tbaa !21
  %conv4 = zext i8 %10 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 15, %cond.true ], [ %conv4, %cond.false ]
  switch i32 %cond, label %sw.default [
    i32 1, label %sw.bb
    i32 11, label %sw.bb
    i32 16, label %sw.bb.5
    i32 15, label %sw.bb.18
    i32 20, label %sw.bb.18
    i32 13, label %sw.bb.32
    i32 14, label %sw.bb.61
    i32 18, label %sw.bb.62
    i32 9, label %sw.bb.209
    i32 8, label %sw.bb.209
  ]

sw.bb:                                            ; preds = %cond.end, %cond.end
  br label %sw.epilog

sw.bb.5:                                          ; preds = %cond.end
  %11 = bitcast float* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %realval = bitcast %union.v* %value6 to float*
  %13 = load float, float* %realval, align 4, !tbaa !18
  store float %13, float* %value, align 4, !tbaa !18
  %14 = bitcast float* %scanned to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %arraydecay7 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %15 = load float, float* %value, align 4, !tbaa !18
  %conv8 = fpext float %15 to double
  %call = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), double %conv8) #5
  %arraydecay9 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %call10 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), float* %scanned) #6
  %16 = load float, float* %scanned, align 4, !tbaa !18
  %17 = load float, float* %value, align 4, !tbaa !18
  %cmp11 = fcmp une float %16, %17
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %sw.bb.5
  %arraydecay14 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %18 = load float, float* %value, align 4, !tbaa !18
  %conv15 = fpext float %18 to double
  %call16 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), double %conv15) #5
  br label %if.end

if.end:                                           ; preds = %if.then.13, %sw.bb.5
  %arraydecay17 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  call void @ensure_dot(i8* %arraydecay17) #5
  store i32 3, i32* %cleanup.dest.slot
  %19 = bitcast float* %scanned to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast float* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %cleanup.dest391 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest391, label %cleanup.418 [
    i32 3, label %rs
  ]

sw.bb.18:                                         ; preds = %cond.end, %cond.end
  %21 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %arraydecay19 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay19, i64 2
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %23 = load i32, i32* %restart.addr, align 4, !tbaa !5
  %call20 = call i32 @obj_cvp(%struct.ref_s* %21, i8* %add.ptr, i32 46, i32* %size, i32 0, i32 0, %struct.gs_memory_s* %22, i32 %23) #5
  store i32 %call20, i32* %code, align 4, !tbaa !5
  %24 = load i32, i32* %code, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %24, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %sw.bb.18
  %25 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.418

if.end.24:                                        ; preds = %sw.bb.18
  %26 = load i32, i32* %size, align 4, !tbaa !5
  %add = add i32 %26, 3
  %idxprom = zext i32 %add to i64
  %arrayidx25 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i64 %idxprom
  store i8 45, i8* %arrayidx25, align 1, !tbaa !21
  %27 = load i32, i32* %size, align 4, !tbaa !5
  %add26 = add i32 %27, 2
  %idxprom27 = zext i32 %add26 to i64
  %arrayidx28 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i64 %idxprom27
  store i8 45, i8* %arrayidx28, align 1, !tbaa !21
  %arrayidx29 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i64 1
  store i8 45, i8* %arrayidx29, align 1, !tbaa !21
  %arrayidx30 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i64 0
  store i8 45, i8* %arrayidx30, align 1, !tbaa !21
  %28 = load i32, i32* %size, align 4, !tbaa !5
  %add31 = add i32 %28, 4
  store i32 %add31, i32* %size, align 4, !tbaa !5
  br label %nl

sw.bb.32:                                         ; preds = %cond.end
  %29 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 0
  %type_attrs34 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas33, i32 0, i32 0
  %30 = load i16, i16* %type_attrs34, align 2, !tbaa !7
  %conv35 = zext i16 %30 to i32
  %and = and i32 %conv35, 128
  %tobool36 = icmp ne i32 %and, 0
  br i1 %tobool36, label %if.then.37, label %if.end.43

if.then.37:                                       ; preds = %sw.bb.32
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %32 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call38 = call i32 @obj_string_data(%struct.gs_memory_s* %31, %struct.ref_s* %32, i8** %data, i32* %size) #5
  store i32 %call38, i32* %code, align 4, !tbaa !5
  %33 = load i32, i32* %code, align 4, !tbaa !5
  %cmp39 = icmp slt i32 %33, 0
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.then.37
  %34 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.418

if.end.42:                                        ; preds = %if.then.37
  br label %nl

if.end.43:                                        ; preds = %sw.bb.32
  %35 = load i32, i32* %start_pos.addr, align 4, !tbaa !5
  %cmp44 = icmp ugt i32 %35, 0
  br i1 %cmp44, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %if.end.43
  %36 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %37 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %38 = load i32, i32* %len.addr, align 4, !tbaa !5
  %39 = load i32*, i32** %prlen.addr, align 8, !tbaa !1
  %40 = load i32, i32* %start_pos.addr, align 4, !tbaa !5
  %sub = sub i32 %40, 1
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %42 = load i32, i32* %restart.addr, align 4, !tbaa !5
  %call47 = call i32 @obj_cvp(%struct.ref_s* %36, i8* %37, i32 %38, i32* %39, i32 0, i32 %sub, %struct.gs_memory_s* %41, i32 %42) #5
  store i32 %call47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.418

if.end.48:                                        ; preds = %if.end.43
  %43 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp49 = icmp ult i32 %43, 1
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.48
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.418

if.end.52:                                        ; preds = %if.end.48
  %44 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %45 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %add.ptr53 = getelementptr inbounds i8, i8* %45, i64 1
  %46 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub54 = sub i32 %46, 1
  %47 = load i32*, i32** %prlen.addr, align 8, !tbaa !1
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %49 = load i32, i32* %restart.addr, align 4, !tbaa !5
  %call55 = call i32 @obj_cvp(%struct.ref_s* %44, i8* %add.ptr53, i32 %sub54, i32* %47, i32 0, i32 0, %struct.gs_memory_s* %48, i32 %49) #5
  store i32 %call55, i32* %code, align 4, !tbaa !5
  %50 = load i32, i32* %code, align 4, !tbaa !5
  %cmp56 = icmp slt i32 %50, 0
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.52
  %51 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %51, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.418

if.end.59:                                        ; preds = %if.end.52
  %52 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds i8, i8* %52, i64 0
  store i8 47, i8* %arrayidx60, align 1, !tbaa !21
  %53 = load i32*, i32** %prlen.addr, align 8, !tbaa !1
  %54 = load i32, i32* %53, align 4, !tbaa !5
  %inc = add i32 %54, 1
  store i32 %inc, i32* %53, align 4, !tbaa !5
  %55 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %55, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.418

sw.bb.61:                                         ; preds = %cond.end
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8** %data, align 8, !tbaa !1
  br label %rs

sw.bb.62:                                         ; preds = %cond.end
  %56 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i32 0, i32 0
  %type_attrs64 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas63, i32 0, i32 0
  %57 = load i16, i16* %type_attrs64, align 2, !tbaa !7
  %conv65 = zext i16 %57 to i32
  %and66 = and i32 %conv65, 32
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %if.end.69, label %if.then.68

if.then.68:                                       ; preds = %sw.bb.62
  br label %other

if.end.69:                                        ; preds = %sw.bb.62
  %58 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas70, i32 0, i32 2
  %59 = load i32, i32* %rsize, align 4, !tbaa !27
  store i32 %59, i32* %size, align 4, !tbaa !5
  %60 = bitcast i32* %truncate to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #1
  %61 = load i32, i32* %full_print.addr, align 4, !tbaa !5
  %cmp71 = icmp eq i32 %61, 1
  br i1 %cmp71, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.69
  %62 = load i32, i32* %size, align 4, !tbaa !5
  %cmp73 = icmp ugt i32 %62, 200
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.69
  %63 = phi i1 [ false, %if.end.69 ], [ %cmp73, %land.rhs ]
  %land.ext = zext i1 %63 to i32
  store i32 %land.ext, i32* %truncate, align 4, !tbaa !5
  %64 = bitcast %struct.stream_cursor_read_s* %r to i8*
  call void @llvm.lifetime.start(i64 24, i8* %64) #1
  %65 = bitcast %struct.stream_cursor_write_s* %w to i8*
  call void @llvm.lifetime.start(i64 24, i8* %65) #1
  %66 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %66) #1
  %67 = bitcast i8** %wstr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %67) #1
  %68 = bitcast i32* %len1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #1
  %69 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #1
  store i32 1, i32* %status, align 4, !tbaa !5
  %70 = load i32, i32* %start_pos.addr, align 4, !tbaa !5
  %cmp75 = icmp eq i32 %70, 0
  br i1 %cmp75, label %if.then.77, label %if.else

if.then.77:                                       ; preds = %land.end
  %71 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp78 = icmp ult i32 %71, 1
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.then.77
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.200

if.end.81:                                        ; preds = %if.then.77
  %72 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %arrayidx82 = getelementptr inbounds i8, i8* %72, i64 0
  store i8 40, i8* %arrayidx82, align 1, !tbaa !21
  store i32 0, i32* %skip, align 4, !tbaa !5
  %73 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %add.ptr83 = getelementptr inbounds i8, i8* %73, i64 1
  store i8* %add.ptr83, i8** %wstr, align 8, !tbaa !1
  br label %if.end.85

if.else:                                          ; preds = %land.end
  %74 = load i32, i32* %start_pos.addr, align 4, !tbaa !5
  %sub84 = sub i32 %74, 1
  store i32 %sub84, i32* %skip, align 4, !tbaa !5
  %75 = load i8*, i8** %str.addr, align 8, !tbaa !1
  store i8* %75, i8** %wstr, align 8, !tbaa !1
  br label %if.end.85

if.end.85:                                        ; preds = %if.else, %if.end.81
  %76 = load i32, i32* %len.addr, align 4, !tbaa !5
  %conv86 = zext i32 %76 to i64
  %77 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %78 = load i8*, i8** %wstr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %77 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %78 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add87 = add nsw i64 %conv86, %sub.ptr.sub
  %conv88 = trunc i64 %add87 to i32
  store i32 %conv88, i32* %len1, align 4, !tbaa !5
  %79 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value89 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %79, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value89 to i8**
  %80 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %add.ptr90 = getelementptr inbounds i8, i8* %80, i64 -1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  store i8* %add.ptr90, i8** %ptr, align 8, !tbaa !41
  %ptr91 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  %81 = load i8*, i8** %ptr91, align 8, !tbaa !41
  %82 = load i32, i32* %truncate, align 4, !tbaa !5
  %tobool92 = icmp ne i32 %82, 0
  br i1 %tobool92, label %cond.true.93, label %cond.false.94

cond.true.93:                                     ; preds = %if.end.85
  br label %cond.end.95

cond.false.94:                                    ; preds = %if.end.85
  %83 = load i32, i32* %size, align 4, !tbaa !5
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.94, %cond.true.93
  %cond96 = phi i32 [ 200, %cond.true.93 ], [ %83, %cond.false.94 ]
  %idx.ext = zext i32 %cond96 to i64
  %add.ptr97 = getelementptr inbounds i8, i8* %81, i64 %idx.ext
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  store i8* %add.ptr97, i8** %limit, align 8, !tbaa !43
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %cond.end.95
  %84 = load i32, i32* %skip, align 4, !tbaa !5
  %tobool98 = icmp ne i32 %84, 0
  br i1 %tobool98, label %land.rhs.99, label %land.end.102

land.rhs.99:                                      ; preds = %while.cond
  %85 = load i32, i32* %status, align 4, !tbaa !5
  %cmp100 = icmp eq i32 %85, 1
  br label %land.end.102

land.end.102:                                     ; preds = %land.rhs.99, %while.cond
  %86 = phi i1 [ false, %while.cond ], [ %cmp100, %land.rhs.99 ]
  br i1 %86, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.102
  %87 = bitcast i32* %written to i8*
  call void @llvm.lifetime.start(i64 4, i8* %87) #1
  %arraydecay104 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %add.ptr105 = getelementptr inbounds i8, i8* %arraydecay104, i64 -1
  %ptr106 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  store i8* %add.ptr105, i8** %ptr106, align 8, !tbaa !44
  %ptr107 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %88 = load i8*, i8** %ptr107, align 8, !tbaa !44
  %89 = load i32, i32* %skip, align 4, !tbaa !5
  %90 = load i32, i32* %len1, align 4, !tbaa !5
  %add108 = add i32 %89, %90
  %conv109 = zext i32 %add108 to i64
  %cmp110 = icmp ult i64 %conv109, 50
  br i1 %cmp110, label %cond.true.112, label %cond.false.115

cond.true.112:                                    ; preds = %while.body
  %91 = load i32, i32* %skip, align 4, !tbaa !5
  %92 = load i32, i32* %len1, align 4, !tbaa !5
  %add113 = add i32 %91, %92
  %conv114 = zext i32 %add113 to i64
  br label %cond.end.116

cond.false.115:                                   ; preds = %while.body
  br label %cond.end.116

cond.end.116:                                     ; preds = %cond.false.115, %cond.true.112
  %cond117 = phi i64 [ %conv114, %cond.true.112 ], [ 50, %cond.false.115 ]
  %add.ptr118 = getelementptr inbounds i8, i8* %88, i64 %cond117
  %limit119 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 2
  store i8* %add.ptr118, i8** %limit119, align 8, !tbaa !46
  %93 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_PSSE_template, i32 0, i32 2), align 8, !tbaa !47
  %call120 = call i32 %93(%struct.stream_state_s* null, %struct.stream_cursor_read_s* %r, %struct.stream_cursor_write_s* %w, i32 0) #5
  store i32 %call120, i32* %status, align 4, !tbaa !5
  %ptr121 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %94 = load i8*, i8** %ptr121, align 8, !tbaa !44
  %arraydecay122 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %add.ptr123 = getelementptr inbounds i8, i8* %arraydecay122, i64 -1
  %sub.ptr.lhs.cast124 = ptrtoint i8* %94 to i64
  %sub.ptr.rhs.cast125 = ptrtoint i8* %add.ptr123 to i64
  %sub.ptr.sub126 = sub i64 %sub.ptr.lhs.cast124, %sub.ptr.rhs.cast125
  %conv127 = trunc i64 %sub.ptr.sub126 to i32
  store i32 %conv127, i32* %written, align 4, !tbaa !5
  %95 = load i32, i32* %written, align 4, !tbaa !5
  %96 = load i32, i32* %skip, align 4, !tbaa !5
  %cmp128 = icmp ugt i32 %95, %96
  br i1 %cmp128, label %if.then.130, label %if.end.139

if.then.130:                                      ; preds = %cond.end.116
  %97 = load i32, i32* %skip, align 4, !tbaa !5
  %98 = load i32, i32* %written, align 4, !tbaa !5
  %sub131 = sub i32 %98, %97
  store i32 %sub131, i32* %written, align 4, !tbaa !5
  %99 = load i8*, i8** %wstr, align 8, !tbaa !1
  %arraydecay132 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %100 = load i32, i32* %skip, align 4, !tbaa !5
  %idx.ext133 = zext i32 %100 to i64
  %add.ptr134 = getelementptr inbounds i8, i8* %arraydecay132, i64 %idx.ext133
  %101 = load i32, i32* %written, align 4, !tbaa !5
  %conv135 = zext i32 %101 to i64
  %call136 = call i8* @memcpy(i8* %99, i8* %add.ptr134, i64 %conv135) #6
  %102 = load i32, i32* %written, align 4, !tbaa !5
  %103 = load i8*, i8** %wstr, align 8, !tbaa !1
  %idx.ext137 = zext i32 %102 to i64
  %add.ptr138 = getelementptr inbounds i8, i8* %103, i64 %idx.ext137
  store i8* %add.ptr138, i8** %wstr, align 8, !tbaa !1
  store i32 0, i32* %skip, align 4, !tbaa !5
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup

if.end.139:                                       ; preds = %cond.end.116
  %104 = load i32, i32* %written, align 4, !tbaa !5
  %105 = load i32, i32* %skip, align 4, !tbaa !5
  %sub140 = sub i32 %105, %104
  store i32 %sub140, i32* %skip, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.139, %if.then.130
  %106 = bitcast i32* %written to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 7, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %cleanup, %land.end.102
  %107 = load i32, i32* %status, align 4, !tbaa !5
  %cmp141 = icmp eq i32 %107, 0
  br i1 %cmp141, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %while.end
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.143, %while.end
  %108 = load i8*, i8** %wstr, align 8, !tbaa !1
  %add.ptr145 = getelementptr inbounds i8, i8* %108, i64 -1
  %ptr146 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  store i8* %add.ptr145, i8** %ptr146, align 8, !tbaa !44
  %109 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %add.ptr147 = getelementptr inbounds i8, i8* %109, i64 -1
  %110 = load i32, i32* %len.addr, align 4, !tbaa !5
  %idx.ext148 = zext i32 %110 to i64
  %add.ptr149 = getelementptr inbounds i8, i8* %add.ptr147, i64 %idx.ext148
  %limit150 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 2
  store i8* %add.ptr149, i8** %limit150, align 8, !tbaa !46
  %111 = load i32, i32* %status, align 4, !tbaa !5
  %cmp151 = icmp eq i32 %111, 1
  br i1 %cmp151, label %if.then.153, label %if.end.155

if.then.153:                                      ; preds = %if.end.144
  %112 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_PSSE_template, i32 0, i32 2), align 8, !tbaa !47
  %call154 = call i32 %112(%struct.stream_state_s* null, %struct.stream_cursor_read_s* %r, %struct.stream_cursor_write_s* %w, i32 0) #5
  store i32 %call154, i32* %status, align 4, !tbaa !5
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.153, %if.end.144
  %ptr156 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %113 = load i8*, i8** %ptr156, align 8, !tbaa !44
  %114 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %add.ptr157 = getelementptr inbounds i8, i8* %114, i64 -1
  %sub.ptr.lhs.cast158 = ptrtoint i8* %113 to i64
  %sub.ptr.rhs.cast159 = ptrtoint i8* %add.ptr157 to i64
  %sub.ptr.sub160 = sub i64 %sub.ptr.lhs.cast158, %sub.ptr.rhs.cast159
  %conv161 = trunc i64 %sub.ptr.sub160 to i32
  %115 = load i32*, i32** %prlen.addr, align 8, !tbaa !1
  store i32 %conv161, i32* %115, align 4, !tbaa !5
  %116 = load i32, i32* %status, align 4, !tbaa !5
  %cmp162 = icmp ne i32 %116, 0
  br i1 %cmp162, label %if.then.164, label %if.end.165

if.then.164:                                      ; preds = %if.end.155
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.200

if.end.165:                                       ; preds = %if.end.155
  %117 = load i32, i32* %truncate, align 4, !tbaa !5
  %tobool166 = icmp ne i32 %117, 0
  br i1 %tobool166, label %if.then.167, label %if.else.183

if.then.167:                                      ; preds = %if.end.165
  %118 = load i32, i32* %len.addr, align 4, !tbaa !5
  %119 = load i32*, i32** %prlen.addr, align 8, !tbaa !1
  %120 = load i32, i32* %119, align 4, !tbaa !5
  %sub168 = sub i32 %118, %120
  %121 = load i32, i32* %skip, align 4, !tbaa !5
  %sub169 = sub i32 4, %121
  %cmp170 = icmp ult i32 %sub168, %sub169
  br i1 %cmp170, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %if.then.167
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.200

if.end.173:                                       ; preds = %if.then.167
  %ptr174 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %122 = load i8*, i8** %ptr174, align 8, !tbaa !44
  %add.ptr175 = getelementptr inbounds i8, i8* %122, i64 1
  %123 = load i32, i32* %skip, align 4, !tbaa !5
  %idx.ext176 = zext i32 %123 to i64
  %add.ptr177 = getelementptr inbounds i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i64 %idx.ext176
  %124 = load i32, i32* %skip, align 4, !tbaa !5
  %sub178 = sub i32 4, %124
  %conv179 = zext i32 %sub178 to i64
  %call180 = call i8* @memcpy(i8* %add.ptr175, i8* %add.ptr177, i64 %conv179) #6
  %125 = load i32, i32* %skip, align 4, !tbaa !5
  %sub181 = sub i32 4, %125
  %126 = load i32*, i32** %prlen.addr, align 8, !tbaa !1
  %127 = load i32, i32* %126, align 4, !tbaa !5
  %add182 = add i32 %127, %sub181
  store i32 %add182, i32* %126, align 4, !tbaa !5
  br label %if.end.199

if.else.183:                                      ; preds = %if.end.165
  %128 = load i32, i32* %len.addr, align 4, !tbaa !5
  %129 = load i32*, i32** %prlen.addr, align 8, !tbaa !1
  %130 = load i32, i32* %129, align 4, !tbaa !5
  %sub184 = sub i32 %128, %130
  %131 = load i32, i32* %skip, align 4, !tbaa !5
  %sub185 = sub i32 1, %131
  %cmp186 = icmp ult i32 %sub184, %sub185
  br i1 %cmp186, label %if.then.188, label %if.end.189

if.then.188:                                      ; preds = %if.else.183
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.200

if.end.189:                                       ; preds = %if.else.183
  %ptr190 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %132 = load i8*, i8** %ptr190, align 8, !tbaa !44
  %add.ptr191 = getelementptr inbounds i8, i8* %132, i64 1
  %133 = load i32, i32* %skip, align 4, !tbaa !5
  %idx.ext192 = zext i32 %133 to i64
  %add.ptr193 = getelementptr inbounds i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i64 %idx.ext192
  %134 = load i32, i32* %skip, align 4, !tbaa !5
  %sub194 = sub i32 1, %134
  %conv195 = zext i32 %sub194 to i64
  %call196 = call i8* @memcpy(i8* %add.ptr191, i8* %add.ptr193, i64 %conv195) #6
  %135 = load i32, i32* %skip, align 4, !tbaa !5
  %sub197 = sub i32 1, %135
  %136 = load i32*, i32** %prlen.addr, align 8, !tbaa !1
  %137 = load i32, i32* %136, align 4, !tbaa !5
  %add198 = add i32 %137, %sub197
  store i32 %add198, i32* %136, align 4, !tbaa !5
  br label %if.end.199

if.end.199:                                       ; preds = %if.end.189, %if.end.173
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.200

cleanup.200:                                      ; preds = %if.end.199, %if.then.188, %if.then.172, %if.then.164, %if.then.80
  %138 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #1
  %139 = bitcast i32* %len1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #1
  %140 = bitcast i8** %wstr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #1
  %141 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  %142 = bitcast %struct.stream_cursor_write_s* %w to i8*
  call void @llvm.lifetime.end(i64 24, i8* %142) #1
  %143 = bitcast %struct.stream_cursor_read_s* %r to i8*
  call void @llvm.lifetime.end(i64 24, i8* %143) #1
  %144 = bitcast i32* %truncate to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #1
  %cleanup.dest.207 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.207, label %cleanup.418 [
    i32 0, label %cleanup.cont.208
  ]

cleanup.cont.208:                                 ; preds = %cleanup.200
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.418

sw.bb.209:                                        ; preds = %cond.end, %cond.end
  %145 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas210 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %145, i32 0, i32 0
  %type_attrs211 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas210, i32 0, i32 0
  %146 = load i16, i16* %type_attrs211, align 2, !tbaa !7
  %conv212 = zext i16 %146 to i32
  %and213 = and i32 %conv212, 12
  %cmp214 = icmp eq i32 %and213, 0
  br i1 %cmp214, label %if.then.216, label %if.end.217

if.then.216:                                      ; preds = %sw.bb.209
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i8** %data, align 8, !tbaa !1
  br label %rs

if.end.217:                                       ; preds = %sw.bb.209
  %147 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %tobool218 = icmp ne %struct.gs_memory_s* %147, null
  br i1 %tobool218, label %if.end.220, label %if.then.219

if.then.219:                                      ; preds = %if.end.217
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i8** %data, align 8, !tbaa !1
  br label %rs

if.end.220:                                       ; preds = %if.end.217
  %148 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %148, i32 0, i32 1
  %object_type = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 15
  %149 = load %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)** %object_type, align 8, !tbaa !49
  %150 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %151 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value221 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %151, i32 0, i32 1
  %pstruct = bitcast %union.v* %value221 to %struct.obj_header_s**
  %152 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %153 = bitcast %struct.obj_header_s* %152 to i8*
  %call222 = call %struct.gs_memory_struct_type_s* %149(%struct.gs_memory_s* %150, i8* %153) #5
  %call223 = call i8* @gs_struct_type_name(%struct.gs_memory_struct_type_s* %call222) #5
  store i8* %call223, i8** %data, align 8, !tbaa !1
  %154 = load i8*, i8** %data, align 8, !tbaa !1
  %call224 = call i64 @strlen(i8* %154) #7
  %conv225 = trunc i64 %call224 to i32
  store i32 %conv225, i32* %size, align 4, !tbaa !5
  %155 = load i32, i32* %size, align 4, !tbaa !5
  %cmp226 = icmp ugt i32 %155, 4
  br i1 %cmp226, label %land.lhs.true, label %if.end.235

land.lhs.true:                                    ; preds = %if.end.220
  %156 = load i8*, i8** %data, align 8, !tbaa !1
  %157 = load i32, i32* %size, align 4, !tbaa !5
  %idx.ext228 = zext i32 %157 to i64
  %add.ptr229 = getelementptr inbounds i8, i8* %156, i64 %idx.ext228
  %add.ptr230 = getelementptr inbounds i8, i8* %add.ptr229, i64 -4
  %call231 = call i32 @memcmp(i8* %add.ptr230, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i64 4) #7
  %tobool232 = icmp ne i32 %call231, 0
  br i1 %tobool232, label %if.end.235, label %if.then.233

if.then.233:                                      ; preds = %land.lhs.true
  %158 = load i32, i32* %size, align 4, !tbaa !5
  %sub234 = sub i32 %158, 4
  store i32 %sub234, i32* %size, align 4, !tbaa !5
  br label %if.end.235

if.end.235:                                       ; preds = %if.then.233, %land.lhs.true, %if.end.220
  %159 = load i32, i32* %size, align 4, !tbaa !5
  %conv236 = zext i32 %159 to i64
  %cmp237 = icmp ugt i64 %conv236, 48
  br i1 %cmp237, label %if.then.239, label %if.end.240

if.then.239:                                      ; preds = %if.end.235
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.418

if.end.240:                                       ; preds = %if.end.235
  %arrayidx241 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i64 0
  store i8 45, i8* %arrayidx241, align 1, !tbaa !21
  %arraydecay242 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %add.ptr243 = getelementptr inbounds i8, i8* %arraydecay242, i64 1
  %160 = load i8*, i8** %data, align 8, !tbaa !1
  %161 = load i32, i32* %size, align 4, !tbaa !5
  %conv244 = zext i32 %161 to i64
  %call245 = call i8* @memcpy(i8* %add.ptr243, i8* %160, i64 %conv244) #6
  %162 = load i32, i32* %size, align 4, !tbaa !5
  %add246 = add i32 %162, 1
  %idxprom247 = zext i32 %add246 to i64
  %arrayidx248 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i64 %idxprom247
  store i8 45, i8* %arrayidx248, align 1, !tbaa !21
  %163 = load i32, i32* %size, align 4, !tbaa !5
  %add249 = add i32 %163, 2
  store i32 %add249, i32* %size, align 4, !tbaa !5
  %arraydecay250 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay250, i8** %data, align 8, !tbaa !1
  br label %nl

sw.default:                                       ; preds = %cond.end
  br label %other

other:                                            ; preds = %sw.default, %if.then.68
  %164 = bitcast i32* %rtype to i8*
  call void @llvm.lifetime.start(i64 4, i8* %164) #1
  %165 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas251 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %165, i32 0, i32 0
  %type_attrs252 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas251, i32 0, i32 0
  %166 = load i16, i16* %type_attrs252, align 2, !tbaa !7
  %conv253 = zext i16 %166 to i32
  %cmp254 = icmp sge i32 %conv253, 5376
  br i1 %cmp254, label %cond.true.256, label %cond.false.257

cond.true.256:                                    ; preds = %other
  br label %cond.end.262

cond.false.257:                                   ; preds = %other
  %167 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas258 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %167, i32 0, i32 0
  %type_attrs259 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas258, i32 0, i32 0
  %168 = bitcast i16* %type_attrs259 to i8*
  %arrayidx260 = getelementptr inbounds i8, i8* %168, i64 1
  %169 = load i8, i8* %arrayidx260, align 1, !tbaa !21
  %conv261 = zext i8 %169 to i32
  br label %cond.end.262

cond.end.262:                                     ; preds = %cond.false.257, %cond.true.256
  %cond263 = phi i32 [ 15, %cond.true.256 ], [ %conv261, %cond.false.257 ]
  store i32 %cond263, i32* %rtype, align 4, !tbaa !5
  %170 = load i32, i32* %rtype, align 4, !tbaa !5
  %conv264 = sext i32 %170 to i64
  %cmp265 = icmp uge i64 %conv264, 21
  br i1 %cmp265, label %if.then.267, label %if.end.268

if.then.267:                                      ; preds = %cond.end.262
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.275

if.end.268:                                       ; preds = %cond.end.262
  %171 = load i32, i32* %rtype, align 4, !tbaa !5
  %idxprom269 = sext i32 %171 to i64
  %arrayidx270 = getelementptr inbounds [21 x i8*], [21 x i8*]* @obj_cvp.type_strings, i32 0, i64 %idxprom269
  %172 = load i8*, i8** %arrayidx270, align 8, !tbaa !1
  store i8* %172, i8** %data, align 8, !tbaa !1
  %173 = load i8*, i8** %data, align 8, !tbaa !1
  %cmp271 = icmp eq i8* %173, null
  br i1 %cmp271, label %if.then.273, label %if.end.274

if.then.273:                                      ; preds = %if.end.268
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.275

if.end.274:                                       ; preds = %if.end.268
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.275

cleanup.275:                                      ; preds = %if.end.274, %if.then.273, %if.then.267
  %174 = bitcast i32* %rtype to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
  %cleanup.dest.276 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.276, label %cleanup.418 [
    i32 0, label %cleanup.cont.277
  ]

cleanup.cont.277:                                 ; preds = %cleanup.275
  br label %rs

sw.epilog:                                        ; preds = %sw.bb
  br label %if.end.278

if.end.278:                                       ; preds = %sw.epilog, %entry
  %175 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas279 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %175, i32 0, i32 0
  %type_attrs280 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas279, i32 0, i32 0
  %176 = load i16, i16* %type_attrs280, align 2, !tbaa !7
  %conv281 = zext i16 %176 to i32
  %cmp282 = icmp sge i32 %conv281, 5376
  br i1 %cmp282, label %cond.true.284, label %cond.false.285

cond.true.284:                                    ; preds = %if.end.278
  br label %cond.end.290

cond.false.285:                                   ; preds = %if.end.278
  %177 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas286 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %177, i32 0, i32 0
  %type_attrs287 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas286, i32 0, i32 0
  %178 = bitcast i16* %type_attrs287 to i8*
  %arrayidx288 = getelementptr inbounds i8, i8* %178, i64 1
  %179 = load i8, i8* %arrayidx288, align 1, !tbaa !21
  %conv289 = zext i8 %179 to i32
  br label %cond.end.290

cond.end.290:                                     ; preds = %cond.false.285, %cond.true.284
  %cond291 = phi i32 [ 15, %cond.true.284 ], [ %conv289, %cond.false.285 ]
  switch i32 %cond291, label %sw.default.389 [
    i32 1, label %sw.bb.292
    i32 11, label %sw.bb.297
    i32 18, label %sw.bb.301
    i32 13, label %sw.bb.309
    i32 20, label %sw.bb.315
    i32 15, label %sw.bb.342
    i32 16, label %sw.bb.373
  ]

sw.bb.292:                                        ; preds = %cond.end.290
  %180 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value293 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %180, i32 0, i32 1
  %boolval = bitcast %union.v* %value293 to i16*
  %181 = load i16, i16* %boolval, align 2, !tbaa !15
  %conv294 = zext i16 %181 to i32
  %tobool295 = icmp ne i32 %conv294, 0
  %cond296 = select i1 %tobool295, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0)
  store i8* %cond296, i8** %data, align 8, !tbaa !1
  br label %sw.epilog.390

sw.bb.297:                                        ; preds = %cond.end.290
  %arraydecay298 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %182 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value299 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %182, i32 0, i32 1
  %intval = bitcast %union.v* %value299 to i64*
  %183 = load i64, i64* %intval, align 8, !tbaa !16
  %call300 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay298, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i64 %183) #5
  br label %sw.epilog.390

sw.bb.301:                                        ; preds = %cond.end.290
  br label %do.body

do.body:                                          ; preds = %sw.bb.301
  %184 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas302 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %184, i32 0, i32 0
  %type_attrs303 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas302, i32 0, i32 0
  %185 = load i16, i16* %type_attrs303, align 2, !tbaa !7
  %conv304 = zext i16 %185 to i32
  %and305 = and i32 %conv304, 32
  %tobool306 = icmp ne i32 %and305, 0
  br i1 %tobool306, label %if.end.308, label %if.then.307

if.then.307:                                      ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.418

if.end.308:                                       ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.308
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %sw.bb.309

sw.bb.309:                                        ; preds = %cond.end.290, %do.end
  %186 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %187 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call310 = call i32 @obj_string_data(%struct.gs_memory_s* %186, %struct.ref_s* %187, i8** %data, i32* %size) #5
  store i32 %call310, i32* %code, align 4, !tbaa !5
  %188 = load i32, i32* %code, align 4, !tbaa !5
  %cmp311 = icmp slt i32 %188, 0
  br i1 %cmp311, label %if.then.313, label %if.end.314

if.then.313:                                      ; preds = %sw.bb.309
  %189 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %189, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.418

if.end.314:                                       ; preds = %sw.bb.309
  br label %nl

sw.bb.315:                                        ; preds = %cond.end.290
  %190 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %190) #1
  %191 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas316 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %191, i32 0, i32 0
  %rsize317 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas316, i32 0, i32 2
  %192 = load i32, i32* %rsize317, align 4, !tbaa !27
  %cmp318 = icmp eq i32 %192, 0
  br i1 %cmp318, label %cond.true.320, label %cond.false.323

cond.true.320:                                    ; preds = %sw.bb.315
  %193 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call321 = call zeroext i16 @op_find_index(%struct.ref_s* %193) #5
  %conv322 = zext i16 %call321 to i32
  br label %cond.end.326

cond.false.323:                                   ; preds = %sw.bb.315
  %194 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas324 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %194, i32 0, i32 0
  %rsize325 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas324, i32 0, i32 2
  %195 = load i32, i32* %rsize325, align 4, !tbaa !27
  br label %cond.end.326

cond.end.326:                                     ; preds = %cond.false.323, %cond.true.320
  %cond327 = phi i32 [ %conv322, %cond.true.320 ], [ %195, %cond.false.323 ]
  store i32 %cond327, i32* %index, align 4, !tbaa !5
  %196 = bitcast %struct.op_array_table_s** %opt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %196) #1
  %197 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %198 = load i32, i32* %index, align 4, !tbaa !5
  %call328 = call %struct.op_array_table_s* @get_op_array(%struct.gs_memory_s* %197, i32 %198) #5
  store %struct.op_array_table_s* %call328, %struct.op_array_table_s** %opt, align 8, !tbaa !1
  %199 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %199, i32 0, i32 2
  %200 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !22
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %200, i32 0, i32 16
  %201 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !25
  %202 = load i32, i32* %index, align 4, !tbaa !5
  %203 = load %struct.op_array_table_s*, %struct.op_array_table_s** %opt, align 8, !tbaa !1
  %base_index = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %203, i32 0, i32 3
  %204 = load i32, i32* %base_index, align 4, !tbaa !50
  %sub329 = sub i32 %202, %204
  %idxprom330 = zext i32 %sub329 to i64
  %205 = load %struct.op_array_table_s*, %struct.op_array_table_s** %opt, align 8, !tbaa !1
  %nx_table = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %205, i32 0, i32 1
  %206 = load i16*, i16** %nx_table, align 8, !tbaa !52
  %arrayidx331 = getelementptr inbounds i16, i16* %206, i64 %idxprom330
  %207 = load i16, i16* %arrayidx331, align 2, !tbaa !15
  %conv332 = zext i16 %207 to i32
  call void @names_index_ref(%struct.name_table_s* %201, i32 %conv332, %struct.ref_s* %nref) #5
  %208 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx333 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %208, i32 0, i32 2
  %209 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx333, align 8, !tbaa !22
  %gs_name_table334 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %209, i32 0, i32 16
  %210 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table334, align 8, !tbaa !25
  call void @names_string_ref(%struct.name_table_s* %210, %struct.ref_s* %nref, %struct.ref_s* %nref) #5
  %211 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call335 = call i32 @obj_string_data(%struct.gs_memory_s* %211, %struct.ref_s* %nref, i8** %data, i32* %size) #5
  store i32 %call335, i32* %code, align 4, !tbaa !5
  %212 = load i32, i32* %code, align 4, !tbaa !5
  %cmp336 = icmp slt i32 %212, 0
  br i1 %cmp336, label %if.then.338, label %if.end.339

if.then.338:                                      ; preds = %cond.end.326
  %213 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %213, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.340

if.end.339:                                       ; preds = %cond.end.326
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.340

cleanup.340:                                      ; preds = %if.end.339, %if.then.338
  %214 = bitcast %struct.op_array_table_s** %opt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %214) #1
  %215 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #1
  %cleanup.dest394 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest394, label %cleanup.418 [
    i32 4, label %nl
  ]

sw.bb.342:                                        ; preds = %cond.end.290
  %216 = bitcast i32* %index343 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %216) #1
  %217 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas344 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %217, i32 0, i32 0
  %rsize345 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas344, i32 0, i32 2
  %218 = load i32, i32* %rsize345, align 4, !tbaa !27
  %cmp346 = icmp eq i32 %218, 0
  br i1 %cmp346, label %cond.true.348, label %cond.false.351

cond.true.348:                                    ; preds = %sw.bb.342
  %219 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call349 = call zeroext i16 @op_find_index(%struct.ref_s* %219) #5
  %conv350 = zext i16 %call349 to i32
  br label %cond.end.354

cond.false.351:                                   ; preds = %sw.bb.342
  %220 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas352 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %220, i32 0, i32 0
  %rsize353 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas352, i32 0, i32 2
  %221 = load i32, i32* %rsize353, align 4, !tbaa !27
  br label %cond.end.354

cond.end.354:                                     ; preds = %cond.false.351, %cond.true.348
  %cond355 = phi i32 [ %conv350, %cond.true.348 ], [ %221, %cond.false.351 ]
  store i32 %cond355, i32* %index343, align 4, !tbaa !5
  %222 = load i32, i32* %index343, align 4, !tbaa !5
  %cmp356 = icmp ugt i32 %222, 0
  br i1 %cmp356, label %land.lhs.true.358, label %if.end.368

land.lhs.true.358:                                ; preds = %cond.end.354
  %223 = load i32, i32* %index343, align 4, !tbaa !5
  %224 = load i32, i32* @op_def_count, align 4, !tbaa !5
  %cmp359 = icmp ult i32 %223, %224
  br i1 %cmp359, label %if.then.361, label %if.end.368

if.then.361:                                      ; preds = %land.lhs.true.358
  %225 = load i32, i32* %index343, align 4, !tbaa !5
  %and362 = and i32 %225, 15
  %idxprom363 = zext i32 %and362 to i64
  %226 = load i32, i32* %index343, align 4, !tbaa !5
  %shr = lshr i32 %226, 4
  %idxprom364 = zext i32 %shr to i64
  %arrayidx365 = getelementptr inbounds [0 x %struct.op_def*], [0 x %struct.op_def*]* @op_defs_all, i32 0, i64 %idxprom364
  %227 = load %struct.op_def*, %struct.op_def** %arrayidx365, align 8, !tbaa !1
  %arrayidx366 = getelementptr inbounds %struct.op_def, %struct.op_def* %227, i64 %idxprom363
  %oname = getelementptr inbounds %struct.op_def, %struct.op_def* %arrayidx366, i32 0, i32 0
  %228 = load i8*, i8** %oname, align 8, !tbaa !28
  %add.ptr367 = getelementptr inbounds i8, i8* %228, i64 1
  store i8* %add.ptr367, i8** %data, align 8, !tbaa !1
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup.372

if.end.368:                                       ; preds = %land.lhs.true.358, %cond.end.354
  %arraydecay369 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %229 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value370 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %229, i32 0, i32 1
  %opproc = bitcast %union.v* %value370 to i32 (%struct.gs_context_state_s*)**
  %230 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %231 = ptrtoint i32 (%struct.gs_context_state_s*)* %230 to i64
  %call371 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay369, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i64 %231) #5
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup.372

cleanup.372:                                      ; preds = %if.end.368, %if.then.361
  %232 = bitcast i32* %index343 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %232) #1
  br label %sw.epilog.390

sw.bb.373:                                        ; preds = %cond.end.290
  %233 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value374 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %233, i32 0, i32 1
  %realval375 = bitcast %union.v* %value374 to float*
  %234 = load float, float* %realval375, align 4, !tbaa !18
  %cmp376 = fcmp oeq float %234, 0x3F1A36E2E0000000
  br i1 %cmp376, label %if.then.378, label %if.else.381

if.then.378:                                      ; preds = %sw.bb.373
  %arraydecay379 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %call380 = call i8* @strcpy(i8* %arraydecay379, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0)) #6
  br label %if.end.387

if.else.381:                                      ; preds = %sw.bb.373
  %arraydecay382 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %235 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value383 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %235, i32 0, i32 1
  %realval384 = bitcast %union.v* %value383 to float*
  %236 = load float, float* %realval384, align 4, !tbaa !18
  %conv385 = fpext float %236 to double
  %call386 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay382, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), double %conv385) #5
  br label %if.end.387

if.end.387:                                       ; preds = %if.else.381, %if.then.378
  %arraydecay388 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  call void @ensure_dot(i8* %arraydecay388) #5
  br label %sw.epilog.390

sw.default.389:                                   ; preds = %cond.end.290
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0), i8** %data, align 8, !tbaa !1
  br label %sw.epilog.390

sw.epilog.390:                                    ; preds = %sw.default.389, %if.end.387, %cleanup.372, %sw.bb.297, %sw.bb.292
  br label %rs

rs:                                               ; preds = %sw.epilog.390, %if.end, %cleanup.cont.277, %if.then.219, %if.then.216, %sw.bb.61
  %237 = load i8*, i8** %data, align 8, !tbaa !1
  %call392 = call i64 @strlen(i8* %237) #7
  %conv393 = trunc i64 %call392 to i32
  store i32 %conv393, i32* %size, align 4, !tbaa !5
  br label %nl

nl:                                               ; preds = %rs, %cleanup.340, %if.end.314, %if.end.240, %if.end.42, %if.end.24
  %238 = load i32, i32* %size, align 4, !tbaa !5
  %239 = load i32, i32* %start_pos.addr, align 4, !tbaa !5
  %cmp395 = icmp ult i32 %238, %239
  br i1 %cmp395, label %if.then.397, label %if.end.398

if.then.397:                                      ; preds = %nl
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.418

if.end.398:                                       ; preds = %nl
  %240 = load i32, i32* %restart.addr, align 4, !tbaa !5
  %tobool399 = icmp ne i32 %240, 0
  br i1 %tobool399, label %if.end.404, label %land.lhs.true.400

land.lhs.true.400:                                ; preds = %if.end.398
  %241 = load i32, i32* %size, align 4, !tbaa !5
  %242 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp401 = icmp ugt i32 %241, %242
  br i1 %cmp401, label %if.then.403, label %if.end.404

if.then.403:                                      ; preds = %land.lhs.true.400
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.418

if.end.404:                                       ; preds = %land.lhs.true.400, %if.end.398
  %243 = load i32, i32* %start_pos.addr, align 4, !tbaa !5
  %244 = load i32, i32* %size, align 4, !tbaa !5
  %sub405 = sub i32 %244, %243
  store i32 %sub405, i32* %size, align 4, !tbaa !5
  %245 = load i32, i32* %size, align 4, !tbaa !5
  %246 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp406 = icmp ult i32 %245, %246
  br i1 %cmp406, label %cond.true.408, label %cond.false.409

cond.true.408:                                    ; preds = %if.end.404
  %247 = load i32, i32* %size, align 4, !tbaa !5
  br label %cond.end.410

cond.false.409:                                   ; preds = %if.end.404
  %248 = load i32, i32* %len.addr, align 4, !tbaa !5
  br label %cond.end.410

cond.end.410:                                     ; preds = %cond.false.409, %cond.true.408
  %cond411 = phi i32 [ %247, %cond.true.408 ], [ %248, %cond.false.409 ]
  %249 = load i32*, i32** %prlen.addr, align 8, !tbaa !1
  store i32 %cond411, i32* %249, align 4, !tbaa !5
  %250 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %251 = load i8*, i8** %data, align 8, !tbaa !1
  %252 = load i32, i32* %start_pos.addr, align 4, !tbaa !5
  %idx.ext412 = zext i32 %252 to i64
  %add.ptr413 = getelementptr inbounds i8, i8* %251, i64 %idx.ext412
  %253 = load i32*, i32** %prlen.addr, align 8, !tbaa !1
  %254 = load i32, i32* %253, align 4, !tbaa !5
  %conv414 = zext i32 %254 to i64
  %call415 = call i8* @memmove(i8* %250, i8* %add.ptr413, i64 %conv414) #6
  %255 = load i32, i32* %size, align 4, !tbaa !5
  %256 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp416 = icmp ugt i32 %255, %256
  %conv417 = zext i1 %cmp416 to i32
  store i32 %conv417, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.418

cleanup.418:                                      ; preds = %cond.end.410, %if.then.403, %if.then.397, %cleanup.340, %if.end, %if.then.313, %if.then.307, %cleanup.275, %if.then.239, %cleanup.cont.208, %cleanup.200, %if.end.59, %if.then.58, %if.then.51, %if.then.46, %if.then.41, %if.then.23
  %257 = bitcast %struct.ref_s* %nref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %257) #1
  %258 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %258) #1
  %259 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %259) #1
  %260 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %260) #1
  %261 = bitcast [50 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 50, i8* %261) #1
  %262 = load i32, i32* %retval
  ret i32 %262

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @gs_sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal void @ensure_dot(i8* %buf) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %pe = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  %0 = bitcast i8** %pe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %call = call i8* @strchr(i8* %1, i32 101) #6
  store i8* %call, i8** %pe, align 8, !tbaa !1
  %2 = load i8*, i8** %pe, align 8, !tbaa !1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.else.7

if.then:                                          ; preds = %entry
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i8*, i8** %pe, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 1
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i32* %i) #6
  %5 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp sge i32 %5, 0
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %6 = load i8*, i8** %pe, align 8, !tbaa !1
  %add.ptr3 = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %call4 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %add.ptr3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %7) #5
  br label %if.end

if.else:                                          ; preds = %if.then
  %8 = load i8*, i8** %pe, align 8, !tbaa !1
  %add.ptr5 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %sub = sub nsw i32 0, %9
  %call6 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %add.ptr5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %sub) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  br label %if.end.13

if.else.7:                                        ; preds = %entry
  %11 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %call8 = call i8* @strchr(i8* %11, i32 46) #6
  %cmp9 = icmp eq i8* %call8, null
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.else.7
  %12 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %call11 = call i8* @strcat(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0)) #6
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.else.7
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end
  %13 = bitcast i8** %pe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  ret void
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare i8* @gs_struct_type_name(%struct.gs_memory_struct_type_s*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

declare %struct.op_array_table_s* @get_op_array(%struct.gs_memory_s*, i32) #2

declare void @names_index_ref(%struct.name_table_s*, i32, %struct.ref_s*) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @memmove(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define i32 @obj_cvs(%struct.gs_memory_s* %mem, %struct.ref_s* %op, i8* %str, i32 %len, i32* %prlen, i8** %pchars) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %prlen.addr = alloca i32*, align 8
  %pchars.addr = alloca i8**, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  store i32* %prlen, i32** %prlen.addr, align 8, !tbaa !1
  store i8** %pchars, i8*** %pchars.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %3 = load i32, i32* %len.addr, align 4, !tbaa !5
  %4 = load i32*, i32** %prlen.addr, align 8, !tbaa !1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @obj_cvp(%struct.ref_s* %1, i8* %2, i32 %3, i32* %4, i32 0, i32 0, %struct.gs_memory_s* %5, i32 0) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load i8**, i8*** %pchars.addr, align 8, !tbaa !1
  %tobool = icmp ne i8** %7, null
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %10 = load i8**, i8*** %pchars.addr, align 8, !tbaa !1
  %11 = load i32*, i32** %prlen.addr, align 8, !tbaa !1
  %call2 = call i32 @obj_string_data(%struct.gs_memory_s* %8, %struct.ref_s* %9, i8** %10, i32* %11) #5
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %12 = load i8**, i8*** %pchars.addr, align 8, !tbaa !1
  %tobool3 = icmp ne i8** %12, null
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.else
  %13 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %14 = load i8**, i8*** %pchars.addr, align 8, !tbaa !1
  store i8* %13, i8** %14, align 8, !tbaa !1
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.else
  %15 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.end
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define void @op_index_ref(%struct.gs_memory_s* %mem, i32 %index, %struct.ref_s* %pref) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %index.addr = alloca i32, align 4
  %pref.addr = alloca %struct.ref_s*, align 8
  %opt = alloca %struct.op_array_table_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %0 = bitcast %struct.op_array_table_s** %opt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %index.addr, align 4, !tbaa !5
  %2 = load i32, i32* @op_def_count, align 4, !tbaa !5
  %cmp = icmp ult i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  %and = and i32 %3, 15
  %idxprom = zext i32 %and to i64
  %4 = load i32, i32* %index.addr, align 4, !tbaa !5
  %shr = lshr i32 %4, 4
  %idxprom1 = zext i32 %shr to i64
  %arrayidx = getelementptr inbounds [0 x %struct.op_def*], [0 x %struct.op_def*]* @op_defs_all, i32 0, i64 %idxprom1
  %5 = load %struct.op_def*, %struct.op_def** %arrayidx, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds %struct.op_def, %struct.op_def* %5, i64 %idxprom
  %proc = getelementptr inbounds %struct.op_def, %struct.op_def* %arrayidx2, i32 0, i32 1
  %6 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %proc, align 8, !tbaa !30
  %7 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %opproc = bitcast %union.v* %value to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* %6, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %8 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3968, i16* %type_attrs, align 2, !tbaa !7
  %9 = load i32, i32* %index.addr, align 4, !tbaa !5
  %10 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 2
  store i32 %9, i32* %rsize, align 4, !tbaa !27
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %12 = load i32, i32* %index.addr, align 4, !tbaa !5
  %call = call %struct.op_array_table_s* @get_op_array(%struct.gs_memory_s* %11, i32 %12) #5
  store %struct.op_array_table_s* %call, %struct.op_array_table_s** %opt, align 8, !tbaa !1
  %13 = load %struct.op_array_table_s*, %struct.op_array_table_s** %opt, align 8, !tbaa !1
  %table = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %13, i32 0, i32 0
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %table, i32 0, i32 1
  %const_refs = bitcast %union.v* %value4 to %struct.ref_s**
  %14 = load %struct.ref_s*, %struct.ref_s** %const_refs, align 8, !tbaa !1
  %15 = load i32, i32* %index.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %15 to i64
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 %idx.ext
  %16 = load %struct.op_array_table_s*, %struct.op_array_table_s** %opt, align 8, !tbaa !1
  %base_index = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %16, i32 0, i32 3
  %17 = load i32, i32* %base_index, align 4, !tbaa !50
  %idx.ext5 = zext i32 %17 to i64
  %idx.neg = sub i64 0, %idx.ext5
  %add.ptr6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i64 %idx.neg
  %18 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %value7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 1
  %const_refs8 = bitcast %union.v* %value7 to %struct.ref_s**
  store %struct.ref_s* %add.ptr6, %struct.ref_s** %const_refs8, align 8, !tbaa !1
  %19 = load %struct.op_array_table_s*, %struct.op_array_table_s** %opt, align 8, !tbaa !1
  %attrs = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %19, i32 0, i32 4
  %20 = load i32, i32* %attrs, align 4, !tbaa !53
  %add = add i32 5120, %20
  %conv = trunc i32 %add to i16
  %21 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %type_attrs10 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas9, i32 0, i32 0
  store i16 %conv, i16* %type_attrs10, align 2, !tbaa !7
  %22 = load i32, i32* %index.addr, align 4, !tbaa !5
  %23 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %rsize12 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas11, i32 0, i32 2
  store i32 %22, i32* %rsize12, align 4, !tbaa !27
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %24 = bitcast %struct.op_array_table_s** %opt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @array_get(%struct.gs_memory_s* %mem, %struct.ref_s* %aref, i64 %index_long, %struct.ref_s* %pref) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %aref.addr = alloca %struct.ref_s*, align 8
  %index_long.addr = alloca i64, align 8
  %pref.addr = alloca %struct.ref_s*, align 8
  %pvalue = alloca %struct.ref_s*, align 8
  %packed = alloca i16*, align 8
  %index = alloca i32, align 4
  %packed14 = alloca i16*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %aref, %struct.ref_s** %aref.addr, align 8, !tbaa !1
  store i64 %index_long, i64* %index_long.addr, align 8, !tbaa !16
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %0 = load i64, i64* %index_long.addr, align 8, !tbaa !16
  %1 = load %struct.ref_s*, %struct.ref_s** %aref.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %2 = load i32, i32* %rsize, align 4, !tbaa !27
  %conv = zext i32 %2 to i64
  %cmp = icmp uge i64 %0, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %aref.addr, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %4 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !21
  %conv3 = zext i8 %5 to i32
  switch i32 %conv3, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb.4
    i32 6, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %if.end
  %6 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.ref_s*, %struct.ref_s** %aref.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %8 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %9 = load i64, i64* %index_long.addr, align 8, !tbaa !16
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 %9
  store %struct.ref_s* %add.ptr, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %10 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %11 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %12 = bitcast %struct.ref_s* %10 to i8*
  %13 = bitcast %struct.ref_s* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 16, i32 8, i1 false), !tbaa.struct !14
  %14 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.end
  %15 = bitcast i16** %packed to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.ref_s*, %struct.ref_s** %aref.addr, align 8, !tbaa !1
  %value5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 1
  %packed6 = bitcast %union.v* %value5 to i16**
  %17 = load i16*, i16** %packed6, align 8, !tbaa !1
  store i16* %17, i16** %packed, align 8, !tbaa !1
  %18 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load i64, i64* %index_long.addr, align 8, !tbaa !16
  %conv7 = trunc i64 %19 to i32
  store i32 %conv7, i32* %index, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %sw.bb.4
  %20 = load i32, i32* %index, align 4, !tbaa !5
  %dec = add i32 %20, -1
  store i32 %dec, i32* %index, align 4, !tbaa !5
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i16*, i16** %packed, align 8, !tbaa !1
  %22 = load i16, i16* %21, align 2, !tbaa !15
  %conv8 = zext i16 %22 to i32
  %cmp9 = icmp sge i32 %conv8, 16384
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %23 = load i16*, i16** %packed, align 8, !tbaa !1
  %add.ptr11 = getelementptr inbounds i16, i16* %23, i64 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %24 = load i16*, i16** %packed, align 8, !tbaa !1
  %add.ptr12 = getelementptr inbounds i16, i16* %24, i64 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i16* [ %add.ptr11, %cond.true ], [ %add.ptr12, %cond.false ]
  store i16* %cond, i16** %packed, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %26 = load i16*, i16** %packed, align 8, !tbaa !1
  %27 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  call void @packed_get(%struct.gs_memory_s* %25, i16* %26, %struct.ref_s* %27) #5
  %28 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast i16** %packed to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.end
  %30 = bitcast i16** %packed14 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  %31 = load %struct.ref_s*, %struct.ref_s** %aref.addr, align 8, !tbaa !1
  %value15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 1
  %packed16 = bitcast %union.v* %value15 to i16**
  %32 = load i16*, i16** %packed16, align 8, !tbaa !1
  %33 = load i64, i64* %index_long.addr, align 8, !tbaa !16
  %add.ptr17 = getelementptr inbounds i16, i16* %32, i64 %33
  store i16* %add.ptr17, i16** %packed14, align 8, !tbaa !1
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %35 = load i16*, i16** %packed14, align 8, !tbaa !1
  %36 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  call void @packed_get(%struct.gs_memory_s* %34, i16* %35, %struct.ref_s* %36) #5
  %37 = bitcast i16** %packed14 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 -20, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.13, %for.end, %sw.bb
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define void @packed_get(%struct.gs_memory_s* %mem, i16* %packed, %struct.ref_s* %pref) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %packed.addr = alloca i16*, align 8
  %pref.addr = alloca %struct.ref_s*, align 8
  %elt = alloca i16, align 2
  %value = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i16* %packed, i16** %packed.addr, align 8, !tbaa !1
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %0 = bitcast i16* %elt to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = load i16*, i16** %packed.addr, align 8, !tbaa !1
  %2 = load i16, i16* %1, align 2, !tbaa !15
  store i16 %2, i16* %elt, align 2, !tbaa !15
  %3 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i16, i16* %elt, align 2, !tbaa !15
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 4095
  store i32 %and, i32* %value, align 4, !tbaa !5
  %5 = load i16, i16* %elt, align 2, !tbaa !15
  %conv1 = zext i16 %5 to i32
  %shr = ashr i32 %conv1, 13
  switch i32 %shr, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.2
    i32 6, label %sw.bb.7
    i32 7, label %sw.bb.8
    i32 0, label %sw.bb.15
    i32 1, label %sw.bb.15
  ]

sw.default:                                       ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3584, i16* %type_attrs, align 2, !tbaa !7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %8 = load i32, i32* %value, align 4, !tbaa !5
  %9 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  call void @op_index_ref(%struct.gs_memory_s* %7, i32 %8, %struct.ref_s* %9) #5
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %10 = load i32, i32* %value, align 4, !tbaa !5
  %conv3 = zext i32 %10 to i64
  %add = add nsw i64 %conv3, -2048
  %11 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %intval = bitcast %union.v* %value4 to i64*
  store i64 %add, i64* %intval, align 8, !tbaa !16
  %12 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %type_attrs6 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas5, i32 0, i32 0
  store i16 2816, i16* %type_attrs6, align 2, !tbaa !7
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 2
  %14 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !22
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %14, i32 0, i32 16
  %15 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !25
  %16 = load i32, i32* %value, align 4, !tbaa !5
  %17 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  call void @names_index_ref(%struct.name_table_s* %15, i32 %16, %struct.ref_s* %17) #5
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 2
  %19 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx9, align 8, !tbaa !22
  %gs_name_table10 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %19, i32 0, i32 16
  %20 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table10, align 8, !tbaa !25
  %21 = load i32, i32* %value, align 4, !tbaa !5
  %22 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  call void @names_index_ref(%struct.name_table_s* %20, i32 %21, %struct.ref_s* %22) #5
  %23 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %type_attrs12 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas11, i32 0, i32 0
  %24 = load i16, i16* %type_attrs12, align 2, !tbaa !7
  %conv13 = zext i16 %24 to i32
  %or = or i32 %conv13, 128
  %conv14 = trunc i32 %or to i16
  store i16 %conv14, i16* %type_attrs12, align 2, !tbaa !7
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry, %entry
  %25 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %26 = load i16*, i16** %packed.addr, align 8, !tbaa !1
  %27 = bitcast i16* %26 to %struct.ref_s*
  %28 = bitcast %struct.ref_s* %25 to i8*
  %29 = bitcast %struct.ref_s* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 16, i32 8, i1 false), !tbaa.struct !14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.15, %sw.bb.8, %sw.bb.7, %sw.bb.2, %sw.bb, %sw.default
  %30 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast i16* %elt to i8*
  call void @llvm.lifetime.end(i64 2, i8* %31) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @string_to_ref(i8* %cstr, %struct.ref_s* %pref, %struct.gs_ref_memory_s* %mem, i8* %cname) #0 {
entry:
  %retval = alloca i32, align 4
  %cstr.addr = alloca i8*, align 8
  %pref.addr = alloca %struct.ref_s*, align 8
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %cname.addr = alloca i8*, align 8
  %size = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %cstr, i8** %cstr.addr, align 8, !tbaa !1
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8*, i8** %cstr.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %1) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %size, align 4, !tbaa !5
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %4 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %5 = load i32, i32* %size, align 4, !tbaa !5
  %6 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call1 = call i32 @gs_alloc_string_ref(%struct.gs_ref_memory_s* %3, %struct.ref_s* %4, i32 112, i32 %5, i8* %6) #5
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %10 = load i8*, i8** %bytes, align 8, !tbaa !1
  %11 = load i8*, i8** %cstr.addr, align 8, !tbaa !1
  %12 = load i32, i32* %size, align 4, !tbaa !5
  %conv3 = zext i32 %12 to i64
  %call4 = call i8* @memcpy(i8* %10, i8* %11, i64 %conv3) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i32 @gs_alloc_string_ref(%struct.gs_ref_memory_s*, %struct.ref_s*, i32, i32, i8*) #2

; Function Attrs: nounwind uwtable
define i8* @ref_to_string(%struct.ref_s* %pref, %struct.gs_memory_s* %mem, i8* %cname) #0 {
entry:
  %retval = alloca i8*, align 8
  %pref.addr = alloca %struct.ref_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cname.addr = alloca i8*, align 8
  %size = alloca i32, align 4
  %str = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %2 = load i32, i32* %rsize, align 4, !tbaa !27
  store i32 %2, i32* %size, align 4, !tbaa !5
  %3 = bitcast i8** %str to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %5 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !54
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %7 = load i32, i32* %size, align 4, !tbaa !5
  %add = add i32 %7, 1
  %8 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %5(%struct.gs_memory_s* %6, i32 %add, i8* %8) #5
  store i8* %call, i8** %str, align 8, !tbaa !1
  %9 = load i8*, i8** %str, align 8, !tbaa !1
  %cmp = icmp eq i8* %9, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load i8*, i8** %str, align 8, !tbaa !1
  %11 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %12 = load i8*, i8** %bytes, align 8, !tbaa !1
  %13 = load i32, i32* %size, align 4, !tbaa !5
  %conv = zext i32 %13 to i64
  %call1 = call i8* @memcpy(i8* %10, i8* %12, i64 %conv) #6
  %14 = load i32, i32* %size, align 4, !tbaa !5
  %idxprom = zext i32 %14 to i64
  %15 = load i8*, i8** %str, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !21
  %16 = load i8*, i8** %str, align 8, !tbaa !1
  store i8* %16, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %17 = bitcast i8** %str to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = load i8*, i8** %retval
  ret i8* %19
}

; Function Attrs: nounwind uwtable
define i32 @num_params(%struct.ref_s* %op, i32 %count, double* %pval) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %count.addr = alloca i32, align 4
  %pval.addr = alloca double*, align 8
  %mask = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  store double* %pval, double** %pval.addr, align 8, !tbaa !1
  %0 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %mask, align 4, !tbaa !5
  %1 = load i32, i32* %count.addr, align 4, !tbaa !5
  %2 = load double*, double** %pval.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds double, double* %2, i64 %idx.ext
  store double* %add.ptr, double** %pval.addr, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %3 = load i32, i32* %count.addr, align 4, !tbaa !5
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %count.addr, align 4, !tbaa !5
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %mask, align 4, !tbaa !5
  %shl = shl i32 %4, 1
  store i32 %shl, i32* %mask, align 4, !tbaa !5
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %6 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !21
  %conv = zext i8 %7 to i32
  switch i32 %conv, label %sw.default [
    i32 16, label %sw.bb
    i32 11, label %sw.bb.2
    i32 0, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %while.body
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %realval = bitcast %union.v* %value to float*
  %9 = load float, float* %realval, align 4, !tbaa !18
  %conv1 = fpext float %9 to double
  %10 = load double*, double** %pval.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds double, double* %10, i32 -1
  store double* %incdec.ptr, double** %pval.addr, align 8, !tbaa !1
  store double %conv1, double* %incdec.ptr, align 8, !tbaa !55
  br label %sw.epilog

sw.bb.2:                                          ; preds = %while.body
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %intval = bitcast %union.v* %value3 to i64*
  %12 = load i64, i64* %intval, align 8, !tbaa !16
  %conv4 = sitofp i64 %12 to double
  %13 = load double*, double** %pval.addr, align 8, !tbaa !1
  %incdec.ptr5 = getelementptr inbounds double, double* %13, i32 -1
  store double* %incdec.ptr5, double** %pval.addr, align 8, !tbaa !1
  store double %conv4, double* %incdec.ptr5, align 8, !tbaa !55
  %14 = load i32, i32* %mask, align 4, !tbaa !5
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %mask, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.6:                                          ; preds = %while.body
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %while.body
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.2, %sw.bb
  %15 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %incdec.ptr7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 -1
  store %struct.ref_s* %incdec.ptr7, %struct.ref_s** %op.addr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load i32, i32* %mask, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %16, 0
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  br label %cond.end

cond.false:                                       ; preds = %while.end
  %17 = load i32, i32* %mask, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %17, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %sw.default, %sw.bb.6
  %18 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @float_params(%struct.ref_s* %op, i32 %count, float* %pval) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %count.addr = alloca i32, align 4
  %pval.addr = alloca float*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  store float* %pval, float** %pval.addr, align 8, !tbaa !1
  %0 = load i32, i32* %count.addr, align 4, !tbaa !5
  %1 = load float*, float** %pval.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %0 to i64
  %add.ptr = getelementptr inbounds float, float* %1, i64 %idx.ext
  store float* %add.ptr, float** %pval.addr, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %count.addr, align 4, !tbaa !5
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %count.addr, align 4, !tbaa !5
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !21
  %conv = zext i8 %5 to i32
  switch i32 %conv, label %sw.default [
    i32 16, label %sw.bb
    i32 11, label %sw.bb.1
    i32 0, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %for.body
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %realval = bitcast %union.v* %value to float*
  %7 = load float, float* %realval, align 4, !tbaa !18
  %8 = load float*, float** %pval.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds float, float* %8, i32 -1
  store float* %incdec.ptr, float** %pval.addr, align 8, !tbaa !1
  store float %7, float* %incdec.ptr, align 4, !tbaa !18
  br label %sw.epilog

sw.bb.1:                                          ; preds = %for.body
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %intval = bitcast %union.v* %value2 to i64*
  %10 = load i64, i64* %intval, align 8, !tbaa !16
  %conv3 = sitofp i64 %10 to float
  %11 = load float*, float** %pval.addr, align 8, !tbaa !1
  %incdec.ptr4 = getelementptr inbounds float, float* %11, i32 -1
  store float* %incdec.ptr4, float** %pval.addr, align 8, !tbaa !1
  store float %conv3, float* %incdec.ptr4, align 4, !tbaa !18
  br label %sw.epilog

sw.bb.5:                                          ; preds = %for.body
  store i32 -17, i32* %retval
  br label %return

sw.default:                                       ; preds = %for.body
  store i32 -20, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.1, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %12 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %incdec.ptr6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 -1
  store %struct.ref_s* %incdec.ptr6, %struct.ref_s** %op.addr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %sw.default, %sw.bb.5
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @process_float_array(%struct.gs_memory_s* %mem, %struct.ref_s* %parray, i32 %count, float* %pval) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %parray.addr = alloca %struct.ref_s*, align 8
  %count.addr = alloca i32, align 4
  %pval.addr = alloca float*, align 8
  %code = alloca i32, align 4
  %indx0 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  %subcount = alloca i32, align 4
  %ref_buff = alloca [20 x %struct.ref_s], align 16
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %parray, %struct.ref_s** %parray.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  store float* %pval, float** %pval.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %1 = bitcast i32* %indx0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %indx0, align 4, !tbaa !5
  %2 = load %struct.ref_s*, %struct.ref_s** %parray.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %3 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !21
  %conv = zext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** %parray.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %6 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %7 = load i32, i32* %count.addr, align 4, !tbaa !5
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 %idx.ext
  %add.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i64 -1
  %8 = load i32, i32* %count.addr, align 4, !tbaa !5
  %9 = load float*, float** %pval.addr, align 8, !tbaa !1
  %call = call i32 @float_params(%struct.ref_s* %add.ptr2, i32 %8, float* %9) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.28, %if.end
  %10 = load i32, i32* %count.addr, align 4, !tbaa !5
  %cmp3 = icmp sgt i32 %10, 0
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp sge i32 %11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %subcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast [20 x %struct.ref_s]* %ref_buff to i8*
  call void @llvm.lifetime.start(i64 320, i8* %15) #1
  %16 = load i32, i32* %count.addr, align 4, !tbaa !5
  %conv7 = sext i32 %16 to i64
  %cmp8 = icmp ugt i64 %conv7, 20
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %17 = load i32, i32* %count.addr, align 4, !tbaa !5
  %conv10 = sext i32 %17 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 20, %cond.true ], [ %conv10, %cond.false ]
  %conv11 = trunc i64 %cond to i32
  store i32 %conv11, i32* %subcount, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %19 = load i32, i32* %subcount, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %18, %19
  br i1 %cmp12, label %land.rhs.14, label %land.end.17

land.rhs.14:                                      ; preds = %for.cond
  %20 = load i32, i32* %code, align 4, !tbaa !5
  %cmp15 = icmp sge i32 %20, 0
  br label %land.end.17

land.end.17:                                      ; preds = %land.rhs.14, %for.cond
  %21 = phi i1 [ false, %for.cond ], [ %cmp15, %land.rhs.14 ]
  br i1 %21, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.17
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %23 = load %struct.ref_s*, %struct.ref_s** %parray.addr, align 8, !tbaa !1
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %25 = load i32, i32* %indx0, align 4, !tbaa !5
  %add = add nsw i32 %24, %25
  %conv18 = sext i32 %add to i64
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %26 to i64
  %arrayidx19 = getelementptr inbounds [20 x %struct.ref_s], [20 x %struct.ref_s]* %ref_buff, i32 0, i64 %idxprom
  %call20 = call i32 @array_get(%struct.gs_memory_s* %22, %struct.ref_s* %23, i64 %conv18, %struct.ref_s* %arrayidx19) #5
  store i32 %call20, i32* %code, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %land.end.17
  %28 = load i32, i32* %code, align 4, !tbaa !5
  %cmp21 = icmp sge i32 %28, 0
  br i1 %cmp21, label %if.then.23, label %if.end.28

if.then.23:                                       ; preds = %for.end
  %arraydecay = getelementptr inbounds [20 x %struct.ref_s], [20 x %struct.ref_s]* %ref_buff, i32 0, i32 0
  %29 = load i32, i32* %subcount, align 4, !tbaa !5
  %idx.ext24 = sext i32 %29 to i64
  %add.ptr25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arraydecay, i64 %idx.ext24
  %add.ptr26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr25, i64 -1
  %30 = load i32, i32* %subcount, align 4, !tbaa !5
  %31 = load float*, float** %pval.addr, align 8, !tbaa !1
  %call27 = call i32 @float_params(%struct.ref_s* %add.ptr26, i32 %30, float* %31) #5
  store i32 %call27, i32* %code, align 4, !tbaa !5
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.23, %for.end
  %32 = load i32, i32* %subcount, align 4, !tbaa !5
  %33 = load i32, i32* %count.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %33, %32
  store i32 %sub, i32* %count.addr, align 4, !tbaa !5
  %34 = load i32, i32* %subcount, align 4, !tbaa !5
  %35 = load float*, float** %pval.addr, align 8, !tbaa !1
  %idx.ext29 = sext i32 %34 to i64
  %add.ptr30 = getelementptr inbounds float, float* %35, i64 %idx.ext29
  store float* %add.ptr30, float** %pval.addr, align 8, !tbaa !1
  %36 = load i32, i32* %subcount, align 4, !tbaa !5
  %37 = load i32, i32* %indx0, align 4, !tbaa !5
  %add31 = add nsw i32 %37, %36
  store i32 %add31, i32* %indx0, align 4, !tbaa !5
  %38 = bitcast [20 x %struct.ref_s]* %ref_buff to i8*
  call void @llvm.lifetime.end(i64 320, i8* %38) #1
  %39 = bitcast i32* %subcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %41 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %41, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %42 = bitcast i32* %indx0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define i32 @real_param(%struct.ref_s* %op, double* %pparam) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %pparam.addr = alloca double*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store double* %pparam, double** %pparam.addr, align 8, !tbaa !1
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %1 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 1
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !21
  %conv = zext i8 %2 to i32
  switch i32 %conv, label %sw.default [
    i32 11, label %sw.bb
    i32 16, label %sw.bb.2
    i32 0, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %4 = load i64, i64* %intval, align 8, !tbaa !16
  %conv1 = sitofp i64 %4 to double
  %5 = load double*, double** %pparam.addr, align 8, !tbaa !1
  store double %conv1, double* %5, align 8, !tbaa !55
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %realval = bitcast %union.v* %value3 to float*
  %7 = load float, float* %realval, align 4, !tbaa !18
  %conv4 = fpext float %7 to double
  %8 = load double*, double** %pparam.addr, align 8, !tbaa !1
  store double %conv4, double* %8, align 8, !tbaa !55
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  store i32 -17, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.2, %sw.bb
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %sw.bb.5
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @float_param(%struct.ref_s* %op, float* %pparam) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  %pparam.addr = alloca float*, align 8
  %dval = alloca double, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store float* %pparam, float** %pparam.addr, align 8, !tbaa !1
  %0 = bitcast double* %dval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call = call i32 @real_param(%struct.ref_s* %2, double* %dval) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %3 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load double, double* %dval, align 8, !tbaa !55
  %conv = fptrunc double %4 to float
  %5 = load float*, float** %pparam.addr, align 8, !tbaa !1
  store float %conv, float* %5, align 4, !tbaa !18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %code, align 4, !tbaa !5
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  %8 = bitcast double* %dval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @int_param(%struct.ref_s* %op, i32 %max_value, i32* %pparam) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %max_value.addr = alloca i32, align 4
  %pparam.addr = alloca i32*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store i32 %max_value, i32* %max_value.addr, align 4, !tbaa !5
  store i32* %pparam, i32** %pparam.addr, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %1 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 1
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !21
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %3) #5
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %do.body
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %5 = load i64, i64* %intval, align 8, !tbaa !16
  %6 = load i32, i32* %max_value.addr, align 4, !tbaa !5
  %conv2 = sext i32 %6 to i64
  %cmp3 = icmp ugt i64 %5, %conv2
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %if.end.6
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %intval8 = bitcast %union.v* %value7 to i64*
  %8 = load i64, i64* %intval8, align 8, !tbaa !16
  %conv9 = trunc i64 %8 to i32
  %9 = load i32*, i32** %pparam.addr, align 8, !tbaa !1
  store i32 %conv9, i32* %9, align 4, !tbaa !5
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.5, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @check_type_failed(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %1 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 1
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !21
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  %cond = select i1 %cmp, i32 -17, i32 -20
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @make_reals(%struct.ref_s* %op, double* %pval, i32 %count) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  %pval.addr = alloca double*, align 8
  %count.addr = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store double* %pval, double** %pval.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %count.addr, align 4, !tbaa !5
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %count.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load double*, double** %pval.addr, align 8, !tbaa !1
  %2 = load double, double* %1, align 8, !tbaa !55
  %conv = fptrunc double %2 to float
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 1
  %realval = bitcast %union.v* %value to float*
  store float %conv, float* %realval, align 4, !tbaa !18
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 4096, i16* %type_attrs, align 2, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %6 = load double*, double** %pval.addr, align 8, !tbaa !1
  %incdec.ptr1 = getelementptr inbounds double, double* %6, i32 1
  store double* %incdec.ptr1, double** %pval.addr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @make_floats(%struct.ref_s* %op, float* %pval, i32 %count) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  %pval.addr = alloca float*, align 8
  %count.addr = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store float* %pval, float** %pval.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %count.addr, align 4, !tbaa !5
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %count.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load float*, float** %pval.addr, align 8, !tbaa !1
  %2 = load float, float* %1, align 4, !tbaa !18
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 1
  %realval = bitcast %union.v* %value to float*
  store float %2, float* %realval, align 4, !tbaa !18
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 4096, i16* %type_attrs, align 2, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %6 = load float*, float** %pval.addr, align 8, !tbaa !1
  %incdec.ptr1 = getelementptr inbounds float, float* %6, i32 1
  store float* %incdec.ptr1, float** %pval.addr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @check_proc_failed(%struct.ref_s* %pref) #0 {
entry:
  %retval = alloca i32, align 4
  %pref.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %0 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %1 = load i16, i16* %type_attrs, align 2, !tbaa !7
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 15360
  %cmp = icmp eq i32 %and, 1024
  br i1 %cmp, label %if.then, label %if.else.7

if.then:                                          ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %3 = load i16, i16* %type_attrs3, align 2, !tbaa !7
  %conv4 = zext i16 %3 to i32
  %and5 = and i32 %conv4, 128
  %tobool = icmp ne i32 %and5, 0
  br i1 %tobool, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  store i32 -7, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  store i32 -20, i32* %retval
  br label %return

if.else.7:                                        ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs9 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas8, i32 0, i32 0
  %5 = bitcast i16* %type_attrs9 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !21
  %conv10 = zext i8 %6 to i32
  %cmp11 = icmp eq i32 %conv10, 0
  br i1 %cmp11, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.else.7
  store i32 -17, i32* %retval
  br label %return

if.else.14:                                       ; preds = %if.else.7
  store i32 -20, i32* %retval
  br label %return

return:                                           ; preds = %if.else.14, %if.then.13, %if.else, %if.then.6
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @read_matrix(%struct.gs_memory_s* %mem, %struct.ref_s* %op, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %code = alloca i32, align 4
  %values = alloca [6 x %struct.ref_s], align 16
  %pvalues = alloca %struct.ref_s*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast [6 x %struct.ref_s]* %values to i8*
  call void @llvm.lifetime.start(i64 96, i8* %1) #1
  %2 = bitcast %struct.ref_s** %pvalues to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !21
  %conv = zext i8 %5 to i32
  switch i32 %conv, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb.1
    i32 6, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %7 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  store %struct.ref_s* %7, %struct.ref_s** %pvalues, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry, %entry
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.1
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %9, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %conv3 = sext i32 %12 to i64
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %13 to i64
  %arrayidx4 = getelementptr inbounds [6 x %struct.ref_s], [6 x %struct.ref_s]* %values, i32 0, i64 %idxprom
  %call = call i32 @array_get(%struct.gs_memory_s* %10, %struct.ref_s* %11, i64 %conv3, %struct.ref_s* %arrayidx4) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %14 = load i32, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %14, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %15 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [6 x %struct.ref_s], [6 x %struct.ref_s]* %values, i32 0, i32 0
  store %struct.ref_s* %arraydecay, %struct.ref_s** %pvalues, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %17 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.21 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %18 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call7 = call i32 @check_type_failed(%struct.ref_s* %18) #5
  store i32 %call7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.21

sw.epilog:                                        ; preds = %cleanup.cont, %sw.bb
  br label %do.body

do.body:                                          ; preds = %sw.epilog
  %19 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %type_attrs9 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas8, i32 0, i32 0
  %20 = load i16, i16* %type_attrs9, align 2, !tbaa !7
  %conv10 = zext i16 %20 to i32
  %and = and i32 %conv10, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.21

if.end.12:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.12
  br label %do.end

do.end:                                           ; preds = %do.cond
  %21 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas13, i32 0, i32 2
  %22 = load i32, i32* %rsize, align 4, !tbaa !27
  %cmp14 = icmp ne i32 %22, 6
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %do.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.21

if.end.17:                                        ; preds = %do.end
  %23 = load %struct.ref_s*, %struct.ref_s** %pvalues, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 5
  %24 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %25 = bitcast %struct.gs_matrix_s* %24 to float*
  %call18 = call i32 @float_params(%struct.ref_s* %add.ptr, i32 6, float* %25) #5
  store i32 %call18, i32* %code, align 4, !tbaa !5
  %26 = load i32, i32* %code, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %26, 0
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.17
  %27 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.end.17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %27, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.21

cleanup.21:                                       ; preds = %cond.end, %if.then.16, %if.then.11, %sw.default, %cleanup
  %28 = bitcast %struct.ref_s** %pvalues to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = bitcast [6 x %struct.ref_s]* %values to i8*
  call void @llvm.lifetime.end(i64 96, i8* %29) #1
  %30 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define i32 @write_matrix_in(%struct.ref_s* %op, %struct.gs_matrix_s* %pmat, %struct.gs_dual_memory_s* %idmemory, %struct.gs_ref_memory_s* %imem) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %idmemory.addr = alloca %struct.gs_dual_memory_s*, align 8
  %imem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %aptr = alloca %struct.ref_s*, align 8
  %pel = alloca float*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_dual_memory_s* %idmemory, %struct.gs_dual_memory_s** %idmemory.addr, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %imem, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %aptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast float** %pel to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = load i16, i16* %type_attrs, align 2, !tbaa !7
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 16144
  %cmp = icmp eq i32 %and, 1040
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %6 = bitcast i16* %type_attrs3 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !21
  %conv4 = zext i8 %7 to i32
  %cmp5 = icmp eq i32 %conv4, 4
  br i1 %cmp5, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %8) #5
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas7, i32 0, i32 2
  %10 = load i32, i32* %rsize, align 4, !tbaa !27
  %cmp8 = icmp ne i32 %10, 6
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %12 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  store %struct.ref_s* %12, %struct.ref_s** %aptr, align 8, !tbaa !1
  %13 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %14 = bitcast %struct.gs_matrix_s* %13 to float*
  store float* %14, float** %pel, align 8, !tbaa !1
  store i32 5, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %cmp12 = icmp sge i32 %15, 0
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %idmemory.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_dual_memory_s* %16, null
  br i1 %tobool, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %for.body
  %17 = load %struct.ref_s*, %struct.ref_s** %aptr, align 8, !tbaa !1
  %tas15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %type_attrs16 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas15, i32 0, i32 0
  %18 = load i16, i16* %type_attrs16, align 2, !tbaa !7
  %conv17 = zext i16 %18 to i32
  %19 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %idmemory.addr, align 8, !tbaa !1
  %test_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %19, i32 0, i32 4
  %20 = load i32, i32* %test_mask, align 4, !tbaa !11
  %and18 = and i32 %conv17, %20
  %cmp19 = icmp eq i32 %and18, 0
  br i1 %cmp19, label %cond.true.21, label %cond.false.23

cond.true.21:                                     ; preds = %if.then.14
  %21 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %idmemory.addr, align 8, !tbaa !1
  %22 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %23 = load %struct.ref_s*, %struct.ref_s** %aptr, align 8, !tbaa !1
  %24 = bitcast %struct.ref_s* %23 to i16*
  %call22 = call i32 @alloc_save_change(%struct.gs_dual_memory_s* %21, %struct.ref_s* %22, i16* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0)) #5
  br label %cond.end.24

cond.false.23:                                    ; preds = %if.then.14
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.23, %cond.true.21
  %cond25 = phi i32 [ %call22, %cond.true.21 ], [ 0, %cond.false.23 ]
  %25 = load float*, float** %pel, align 8, !tbaa !1
  %26 = load float, float* %25, align 4, !tbaa !18
  %27 = load %struct.ref_s*, %struct.ref_s** %aptr, align 8, !tbaa !1
  %value26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 1
  %realval = bitcast %union.v* %value26 to float*
  store float %26, float* %realval, align 4, !tbaa !18
  %28 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %idmemory.addr, align 8, !tbaa !1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %28, i32 0, i32 5
  %29 = load i32, i32* %new_mask, align 4, !tbaa !20
  %or = or i32 0, %29
  %add = add i32 4096, %or
  %conv27 = trunc i32 %add to i16
  %30 = load %struct.ref_s*, %struct.ref_s** %aptr, align 8, !tbaa !1
  %tas28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 0
  %type_attrs29 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas28, i32 0, i32 0
  store i16 %conv27, i16* %type_attrs29, align 2, !tbaa !7
  br label %if.end.37

if.else:                                          ; preds = %for.body
  %31 = load float*, float** %pel, align 8, !tbaa !1
  %32 = load float, float* %31, align 4, !tbaa !18
  %33 = load %struct.ref_s*, %struct.ref_s** %aptr, align 8, !tbaa !1
  %value30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 1
  %realval31 = bitcast %union.v* %value30 to float*
  store float %32, float* %realval31, align 4, !tbaa !18
  %34 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %call32 = call i32 @imemory_new_mask(%struct.gs_ref_memory_s* %34) #5
  %add33 = add i32 4096, %call32
  %conv34 = trunc i32 %add33 to i16
  %35 = load %struct.ref_s*, %struct.ref_s** %aptr, align 8, !tbaa !1
  %tas35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 0
  %type_attrs36 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas35, i32 0, i32 0
  store i16 %conv34, i16* %type_attrs36, align 2, !tbaa !7
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %cond.end.24
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %36, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  %37 = load %struct.ref_s*, %struct.ref_s** %aptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %aptr, align 8, !tbaa !1
  %38 = load float*, float** %pel, align 8, !tbaa !1
  %incdec.ptr38 = getelementptr inbounds float, float* %38, i32 1
  store float* %incdec.ptr38, float** %pel, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.10, %cond.end
  %39 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast float** %pel to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast %struct.ref_s** %aptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = load i32, i32* %retval
  ret i32 %42
}

declare i32 @imemory_new_mask(%struct.gs_ref_memory_s*) #2

declare i32 @uid_equal(%struct.gs_uid_s*, %struct.gs_uid_s*) #2

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !10, i64 0}
!8 = !{!"ref_s", !9, i64 0, !3, i64 8}
!9 = !{!"tas_s", !10, i64 0, !10, i64 2, !6, i64 4}
!10 = !{!"short", !3, i64 0}
!11 = !{!12, !6, i64 64}
!12 = !{!"gs_dual_memory_s", !2, i64 0, !13, i64 8, !6, i64 48, !2, i64 56, !6, i64 64, !6, i64 68}
!13 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!14 = !{i64 0, i64 2, !15, i64 2, i64 2, !15, i64 4, i64 4, !5, i64 8, i64 8, !16, i64 8, i64 2, !15, i64 8, i64 4, !18, i64 8, i64 8, !16, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !16}
!15 = !{!10, !10, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !3, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"float", !3, i64 0}
!20 = !{!12, !6, i64 68}
!21 = !{!3, !3, i64 0}
!22 = !{!23, !2, i64 192}
!23 = !{!"gs_memory_s", !2, i64 0, !24, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!24 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!25 = !{!26, !2, i64 120}
!26 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !17, i64 104, !2, i64 112, !2, i64 120, !6, i64 128, !2, i64 136, !6, i64 144, !6, i64 148, !3, i64 152, !2, i64 168, !6, i64 176, !2, i64 184, !6, i64 192, !2, i64 200, !2, i64 208}
!27 = !{!8, !6, i64 4}
!28 = !{!29, !2, i64 0}
!29 = !{!"", !2, i64 0, !2, i64 8}
!30 = !{!29, !2, i64 8}
!31 = !{!32, !2, i64 64}
!32 = !{!"gs_font_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !33, i64 40, !17, i64 56, !2, i64 64, !2, i64 72, !34, i64 80, !34, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !19, i64 156, !6, i64 160, !35, i64 168, !36, i64 272, !36, i64 324}
!33 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!34 = !{!"gs_matrix_s", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !19, i64 20}
!35 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!36 = !{!"gs_font_name_s", !3, i64 0, !6, i64 48}
!37 = !{!32, !3, i64 128}
!38 = !{!39, !17, i64 0}
!39 = !{!"gs_uid_s", !17, i64 0, !2, i64 8}
!40 = !{!32, !2, i64 72}
!41 = !{!42, !2, i64 0}
!42 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!43 = !{!42, !2, i64 8}
!44 = !{!45, !2, i64 8}
!45 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!46 = !{!45, !2, i64 16}
!47 = !{!48, !2, i64 16}
!48 = !{!"stream_template_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !6, i64 28, !2, i64 32, !2, i64 40, !2, i64 48}
!49 = !{!23, !2, i64 128}
!50 = !{!51, !6, i64 28}
!51 = !{!"op_array_table_s", !8, i64 0, !2, i64 16, !6, i64 24, !6, i64 28, !6, i64 32}
!52 = !{!51, !2, i64 16}
!53 = !{!51, !6, i64 32}
!54 = !{!23, !2, i64 136}
!55 = !{!56, !56, i64 0}
!56 = !{!"double", !3, i64 0}
