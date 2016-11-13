; ModuleID = './zfsample.bc'
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
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gs_function_s = type { %struct.gs_function_head_s, %struct.gs_function_params_s }
%struct.gs_function_head_s = type { i32, %struct.gs_function_procs_s }
%struct.gs_function_procs_s = type { i32 (%struct.gs_function_s*, float*, float*)*, i32 (%struct.gs_function_s*, float*, float*, i32*)*, void (%struct.gs_function_s*, %struct.gs_function_info_s*)*, i32 (%struct.gs_function_s*, %struct.gs_param_list_s*)*, i32 (%struct.gs_function_s*, %struct.gs_function_s**, %struct.gs_range_s*, %struct.gs_memory_s*)*, void (%struct.gs_function_params_s*, %struct.gs_memory_s*)*, void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_function_s*, %struct.stream_s*)* }
%struct.gs_function_info_s = type { %struct.gs_data_source_s*, i64, %struct.gs_function_s**, i32 }
%struct.gs_data_source_s = type { i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)*, i32, %union.d_ }
%union.d_ = type { %struct.gs_const_string_s }
%struct.gs_range_s = type { float, float }
%struct.gs_function_params_s = type { i32, float*, i32, float* }
%struct.gs_function_Sd_params_s = type { i32, float*, i32, float*, i32, %struct.gs_data_source_s, i32, float*, float*, i32*, double*, i32*, i32*, i32 }
%struct.PS_colour_space_s = type { i8*, i32 (%struct.gs_context_state_s*, %struct.ref_s*, i32*, i32*, i32)*, i32 (%struct.gs_context_state_s*, %struct.ref_s**)*, i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.ref_s**, i32*)*, i32 (%struct.gs_context_state_s*, %struct.ref_s*, i32*)*, i32 (%struct.gs_context_state_s*, %struct.ref_s*, float*)*, i32 (%struct.gs_context_state_s*, %struct.ref_s*, float*)*, i32 (%struct.gs_context_state_s*, %struct.ref_s*, i32, i32*, i32*, i32*)*, i32 (%struct.gs_context_state_s*, %struct.ref_s*, i32*, i32*, i32*)*, i32 (%struct.gs_context_state_s*, %struct.ref_s*, float*, i32)*, i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.ref_s*)*, i32 (%struct.gs_context_state_s*, %struct.ref_s*)* }
%struct.gs_sampled_data_enum_s = type { [16 x i32], i32, %struct.gs_function_s* }
%struct.obj_header_s = type opaque

@.str = private unnamed_addr constant [30 x i8] c"make_sampled_function(Domain)\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"make_type4_function(Domain)\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"make_sampled_function(Range)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Size\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"cube_build_func0(bytes)\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"level2dict\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"1.buildsampledfunction\00", align 1
@zfsample_op_defs = constant [3 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* null }, %struct.op_def { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zbuildsampledfunction }, %struct.op_def zeroinitializer], align 16
@determine_sampled_data_size.size_list = internal constant [8 x i32] [i32 512, i32 50, i32 20, i32 10, i32 7, i32 5, i32 4, i32 3], align 16
@.str.7 = private unnamed_addr constant [29 x i8] c"zbuildsampledfuntion(params)\00", align 1
@st_gs_sampled_data_enum = internal constant %struct.gs_memory_struct_type_s { i32 80, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @gs_sampled_data_enum_reloc_ptrs to i8*) }, align 8
@.str.8 = private unnamed_addr constant [21 x i8] c"gs_sampled_data_enum\00", align 1
@gs_sampled_data_enum_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @gs_sampled_data_enum_enum_ptrs, i32 0, i32 0) }, align 8
@gs_sampled_data_enum_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 72 }], align 2
@.str.9 = private unnamed_addr constant [27 x i8] c"sampled_data_continue(pfn)\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"sampled_data_continue((enum)\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"sampled_data_finish(cref)\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"sampled_data_finish(pfn)\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"sampled_data_finish(enum)\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"Function\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"Order\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"BitsPerSample\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"Domain\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"Range\00", align 1

; Function Attrs: nounwind uwtable
define i32 @make_sampled_function(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %arr, %struct.ref_s* %pproc, %struct.gs_function_s** %func) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %arr.addr = alloca %struct.ref_s*, align 8
  %pproc.addr = alloca %struct.ref_s*, align 8
  %func.addr = alloca %struct.gs_function_s**, align 8
  %code = alloca i32, align 4
  %ptr = alloca i32*, align 8
  %i = alloca i32, align 4
  %total_size = alloca i32, align 4
  %num_components = alloca i32, align 4
  %CIESubst = alloca i32, align 4
  %bytes = alloca i8*, align 8
  %fptr = alloca float*, align 8
  %pfn = alloca %struct.gs_function_s*, align 8
  %params = alloca %struct.gs_function_Sd_params_s, align 8
  %alternatespace = alloca %struct.ref_s, align 8
  %palternatespace = alloca %struct.ref_s*, align 8
  %space = alloca %struct.PS_colour_space_s*, align 8
  %altspace = alloca %struct.PS_colour_space_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %arr, %struct.ref_s** %arr.addr, align 8, !tbaa !1
  store %struct.ref_s* %pproc, %struct.ref_s** %pproc.addr, align 8, !tbaa !1
  store %struct.gs_function_s** %func, %struct.gs_function_s*** %func.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %1 = bitcast i32** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %total_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %CIESubst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i8** %bytes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i8* null, i8** %bytes, align 8, !tbaa !1
  %7 = bitcast float** %fptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast %struct.gs_function_s** %pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gs_function_s**, %struct.gs_function_s*** %func.addr, align 8, !tbaa !1
  %10 = load %struct.gs_function_s*, %struct.gs_function_s** %9, align 8, !tbaa !1
  store %struct.gs_function_s* %10, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %11 = bitcast %struct.gs_function_Sd_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 136, i8* %11) #1
  %12 = bitcast %struct.gs_function_Sd_params_s* %params to i8*
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 136, i32 8, i1 false)
  %13 = bitcast %struct.ref_s* %alternatespace to i8*
  call void @llvm.lifetime.start(i64 16, i8* %13) #1
  %14 = bitcast %struct.ref_s** %palternatespace to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store %struct.ref_s* %alternatespace, %struct.ref_s** %palternatespace, align 8, !tbaa !1
  %15 = bitcast %struct.PS_colour_space_s** %space to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast %struct.PS_colour_space_s** %altspace to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %18 = load %struct.ref_s*, %struct.ref_s** %arr.addr, align 8, !tbaa !1
  %call = call i32 @get_space_object(%struct.gs_context_state_s* %17, %struct.ref_s* %18, %struct.PS_colour_space_s** %space) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %19 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %19, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %20 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %21 = load %struct.PS_colour_space_s*, %struct.PS_colour_space_s** %space, align 8, !tbaa !1
  %alternateproc = getelementptr inbounds %struct.PS_colour_space_s, %struct.PS_colour_space_s* %21, i32 0, i32 3
  %22 = load i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.ref_s**, i32*)*, i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.ref_s**, i32*)** %alternateproc, align 8, !tbaa !7
  %tobool = icmp ne i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.ref_s**, i32*)* %22, null
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.2:                                         ; preds = %if.end
  %23 = load %struct.PS_colour_space_s*, %struct.PS_colour_space_s** %space, align 8, !tbaa !1
  %alternateproc3 = getelementptr inbounds %struct.PS_colour_space_s, %struct.PS_colour_space_s* %23, i32 0, i32 3
  %24 = load i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.ref_s**, i32*)*, i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.ref_s**, i32*)** %alternateproc3, align 8, !tbaa !7
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %26 = load %struct.ref_s*, %struct.ref_s** %arr.addr, align 8, !tbaa !1
  %call4 = call i32 %24(%struct.gs_context_state_s* %25, %struct.ref_s* %26, %struct.ref_s** %palternatespace, i32* %CIESubst) #3
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %27 = load i32, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %27, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.2
  %28 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end.2
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %30 = load %struct.ref_s*, %struct.ref_s** %palternatespace, align 8, !tbaa !1
  %call8 = call i32 @get_space_object(%struct.gs_context_state_s* %29, %struct.ref_s* %30, %struct.PS_colour_space_s** %altspace) #3
  store i32 %call8, i32* %code, align 4, !tbaa !5
  %31 = load i32, i32* %code, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %31, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  %32 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.7
  %Order = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 4
  store i32 3, i32* %Order, align 4, !tbaa !9
  %BitsPerSample = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 6
  store i32 16, i32* %BitsPerSample, align 4, !tbaa !12
  %33 = load %struct.PS_colour_space_s*, %struct.PS_colour_space_s** %space, align 8, !tbaa !1
  %numcomponents = getelementptr inbounds %struct.PS_colour_space_s, %struct.PS_colour_space_s* %33, i32 0, i32 4
  %34 = load i32 (%struct.gs_context_state_s*, %struct.ref_s*, i32*)*, i32 (%struct.gs_context_state_s*, %struct.ref_s*, i32*)** %numcomponents, align 8, !tbaa !13
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %36 = load %struct.ref_s*, %struct.ref_s** %arr.addr, align 8, !tbaa !1
  %call12 = call i32 %34(%struct.gs_context_state_s* %35, %struct.ref_s* %36, i32* %num_components) #3
  store i32 %call12, i32* %code, align 4, !tbaa !5
  %37 = load i32, i32* %code, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %37, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  %38 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.end.11
  %39 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %39, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %40 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !14
  %41 = bitcast %struct.gs_ref_memory_s* %40 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %41, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %42 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !27
  %43 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory16 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %43, i32 0, i32 1
  %current17 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory16, i32 0, i32 0
  %44 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current17, align 8, !tbaa !14
  %45 = bitcast %struct.gs_ref_memory_s* %44 to %struct.gs_memory_s*
  %46 = load i32, i32* %num_components, align 4, !tbaa !5
  %mul = mul nsw i32 %46, 2
  %call18 = call i8* %42(%struct.gs_memory_s* %45, i32 %mul, i32 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0)) #3
  %47 = bitcast i8* %call18 to float*
  store float* %47, float** %fptr, align 8, !tbaa !1
  %48 = load float*, float** %fptr, align 8, !tbaa !1
  %tobool19 = icmp ne float* %48, null
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.end.15
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.15
  %49 = load %struct.PS_colour_space_s*, %struct.PS_colour_space_s** %space, align 8, !tbaa !1
  %domain = getelementptr inbounds %struct.PS_colour_space_s, %struct.PS_colour_space_s* %49, i32 0, i32 6
  %50 = load i32 (%struct.gs_context_state_s*, %struct.ref_s*, float*)*, i32 (%struct.gs_context_state_s*, %struct.ref_s*, float*)** %domain, align 8, !tbaa !30
  %51 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %52 = load %struct.ref_s*, %struct.ref_s** %arr.addr, align 8, !tbaa !1
  %53 = load float*, float** %fptr, align 8, !tbaa !1
  %call22 = call i32 %50(%struct.gs_context_state_s* %51, %struct.ref_s* %52, float* %53) #3
  store i32 %call22, i32* %code, align 4, !tbaa !5
  %54 = load i32, i32* %code, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %54, 0
  br i1 %cmp23, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %if.end.21
  %55 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory25 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %55, i32 0, i32 1
  %current26 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory25, i32 0, i32 0
  %56 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current26, align 8, !tbaa !14
  %57 = bitcast %struct.gs_ref_memory_s* %56 to %struct.gs_memory_s*
  %58 = load float*, float** %fptr, align 8, !tbaa !1
  %59 = bitcast float* %58 to i8*
  call void @gs_free_const_object(%struct.gs_memory_s* %57, i8* %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0)) #3
  %60 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %60, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.end.21
  %61 = load float*, float** %fptr, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 1
  store float* %61, float** %Domain, align 8, !tbaa !31
  %62 = load i32, i32* %num_components, align 4, !tbaa !5
  %m = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 0
  store i32 %62, i32* %m, align 4, !tbaa !32
  %63 = load %struct.PS_colour_space_s*, %struct.PS_colour_space_s** %altspace, align 8, !tbaa !1
  %numcomponents28 = getelementptr inbounds %struct.PS_colour_space_s, %struct.PS_colour_space_s* %63, i32 0, i32 4
  %64 = load i32 (%struct.gs_context_state_s*, %struct.ref_s*, i32*)*, i32 (%struct.gs_context_state_s*, %struct.ref_s*, i32*)** %numcomponents28, align 8, !tbaa !13
  %65 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %66 = load %struct.ref_s*, %struct.ref_s** %palternatespace, align 8, !tbaa !1
  %call29 = call i32 %64(%struct.gs_context_state_s* %65, %struct.ref_s* %66, i32* %num_components) #3
  store i32 %call29, i32* %code, align 4, !tbaa !5
  %67 = load i32, i32* %code, align 4, !tbaa !5
  %cmp30 = icmp slt i32 %67, 0
  br i1 %cmp30, label %if.then.31, label %if.end.35

if.then.31:                                       ; preds = %if.end.27
  %68 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory32 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %68, i32 0, i32 1
  %current33 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory32, i32 0, i32 0
  %69 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current33, align 8, !tbaa !14
  %70 = bitcast %struct.gs_ref_memory_s* %69 to %struct.gs_memory_s*
  %Domain34 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 1
  %71 = load float*, float** %Domain34, align 8, !tbaa !31
  %72 = bitcast float* %71 to i8*
  call void @gs_free_const_object(%struct.gs_memory_s* %70, i8* %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0)) #3
  %73 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %73, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %if.end.27
  %74 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory36 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %74, i32 0, i32 1
  %current37 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory36, i32 0, i32 0
  %75 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current37, align 8, !tbaa !14
  %76 = bitcast %struct.gs_ref_memory_s* %75 to %struct.gs_memory_s*
  %procs38 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %76, i32 0, i32 1
  %alloc_byte_array39 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs38, i32 0, i32 10
  %77 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array39, align 8, !tbaa !27
  %78 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory40 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %78, i32 0, i32 1
  %current41 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory40, i32 0, i32 0
  %79 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current41, align 8, !tbaa !14
  %80 = bitcast %struct.gs_ref_memory_s* %79 to %struct.gs_memory_s*
  %81 = load i32, i32* %num_components, align 4, !tbaa !5
  %mul42 = mul nsw i32 %81, 2
  %call43 = call i8* %77(%struct.gs_memory_s* %80, i32 %mul42, i32 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0)) #3
  %82 = bitcast i8* %call43 to float*
  store float* %82, float** %fptr, align 8, !tbaa !1
  %83 = load float*, float** %fptr, align 8, !tbaa !1
  %tobool44 = icmp ne float* %83, null
  br i1 %tobool44, label %if.end.49, label %if.then.45

if.then.45:                                       ; preds = %if.end.35
  %84 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory46 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %84, i32 0, i32 1
  %current47 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory46, i32 0, i32 0
  %85 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current47, align 8, !tbaa !14
  %86 = bitcast %struct.gs_ref_memory_s* %85 to %struct.gs_memory_s*
  %Domain48 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 1
  %87 = load float*, float** %Domain48, align 8, !tbaa !31
  %88 = bitcast float* %87 to i8*
  call void @gs_free_const_object(%struct.gs_memory_s* %86, i8* %88, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0)) #3
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.49:                                        ; preds = %if.end.35
  %89 = load %struct.PS_colour_space_s*, %struct.PS_colour_space_s** %altspace, align 8, !tbaa !1
  %range = getelementptr inbounds %struct.PS_colour_space_s, %struct.PS_colour_space_s* %89, i32 0, i32 5
  %90 = load i32 (%struct.gs_context_state_s*, %struct.ref_s*, float*)*, i32 (%struct.gs_context_state_s*, %struct.ref_s*, float*)** %range, align 8, !tbaa !33
  %91 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %92 = load %struct.ref_s*, %struct.ref_s** %palternatespace, align 8, !tbaa !1
  %93 = load float*, float** %fptr, align 8, !tbaa !1
  %call50 = call i32 %90(%struct.gs_context_state_s* %91, %struct.ref_s* %92, float* %93) #3
  store i32 %call50, i32* %code, align 4, !tbaa !5
  %94 = load i32, i32* %code, align 4, !tbaa !5
  %cmp51 = icmp slt i32 %94, 0
  br i1 %cmp51, label %if.then.52, label %if.end.58

if.then.52:                                       ; preds = %if.end.49
  %95 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory53 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %95, i32 0, i32 1
  %current54 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory53, i32 0, i32 0
  %96 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current54, align 8, !tbaa !14
  %97 = bitcast %struct.gs_ref_memory_s* %96 to %struct.gs_memory_s*
  %Domain55 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 1
  %98 = load float*, float** %Domain55, align 8, !tbaa !31
  %99 = bitcast float* %98 to i8*
  call void @gs_free_const_object(%struct.gs_memory_s* %97, i8* %99, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0)) #3
  %100 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory56 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %100, i32 0, i32 1
  %current57 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory56, i32 0, i32 0
  %101 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current57, align 8, !tbaa !14
  %102 = bitcast %struct.gs_ref_memory_s* %101 to %struct.gs_memory_s*
  %103 = load float*, float** %fptr, align 8, !tbaa !1
  %104 = bitcast float* %103 to i8*
  call void @gs_free_const_object(%struct.gs_memory_s* %102, i8* %104, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0)) #3
  %105 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %105, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.58:                                        ; preds = %if.end.49
  %106 = load float*, float** %fptr, align 8, !tbaa !1
  %Range = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 3
  store float* %106, float** %Range, align 8, !tbaa !34
  %107 = load i32, i32* %num_components, align 4, !tbaa !5
  %n = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 2
  store i32 %107, i32* %n, align 4, !tbaa !35
  %108 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory59 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %108, i32 0, i32 1
  %current60 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory59, i32 0, i32 0
  %109 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current60, align 8, !tbaa !14
  %110 = bitcast %struct.gs_ref_memory_s* %109 to %struct.gs_memory_s*
  %procs61 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %110, i32 0, i32 1
  %alloc_byte_array62 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs61, i32 0, i32 10
  %111 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array62, align 8, !tbaa !27
  %112 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory63 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %112, i32 0, i32 1
  %current64 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory63, i32 0, i32 0
  %113 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current64, align 8, !tbaa !14
  %114 = bitcast %struct.gs_ref_memory_s* %113 to %struct.gs_memory_s*
  %m65 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 0
  %115 = load i32, i32* %m65, align 4, !tbaa !32
  %call66 = call i8* %111(%struct.gs_memory_s* %114, i32 %115, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)) #3
  %116 = bitcast i8* %call66 to i32*
  store i32* %116, i32** %ptr, align 8, !tbaa !1
  %117 = load i32*, i32** %ptr, align 8, !tbaa !1
  %cmp67 = icmp eq i32* %117, null
  br i1 %cmp67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.end.58
  store i32 -25, i32* %code, align 4, !tbaa !5
  br label %fail

if.end.69:                                        ; preds = %if.end.58
  %118 = load i32*, i32** %ptr, align 8, !tbaa !1
  %Size = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 9
  store i32* %118, i32** %Size, align 8, !tbaa !36
  %m70 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 0
  %119 = load i32, i32* %m70, align 4, !tbaa !32
  %n71 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 2
  %120 = load i32, i32* %n71, align 4, !tbaa !35
  %BitsPerSample72 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 6
  %121 = load i32, i32* %BitsPerSample72, align 4, !tbaa !12
  %Size73 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 9
  %122 = load i32*, i32** %Size73, align 8, !tbaa !36
  %call74 = call i32 @determine_sampled_data_size(i32 %119, i32 %120, i32 %121, i32* %122) #3
  store i32 %call74, i32* %code, align 4, !tbaa !5
  %123 = load i32, i32* %code, align 4, !tbaa !5
  %cmp75 = icmp slt i32 %123, 0
  br i1 %cmp75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.end.69
  br label %fail

if.end.77:                                        ; preds = %if.end.69
  %n78 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 2
  %124 = load i32, i32* %n78, align 4, !tbaa !35
  %BitsPerSample79 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 6
  %125 = load i32, i32* %BitsPerSample79, align 4, !tbaa !12
  %shr = ashr i32 %125, 3
  %mul80 = mul nsw i32 %124, %shr
  store i32 %mul80, i32* %total_size, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.77
  %126 = load i32, i32* %i, align 4, !tbaa !5
  %m81 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 0
  %127 = load i32, i32* %m81, align 4, !tbaa !32
  %cmp82 = icmp slt i32 %126, %127
  br i1 %cmp82, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %128 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %128 to i64
  %Size83 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 9
  %129 = load i32*, i32** %Size83, align 8, !tbaa !36
  %arrayidx = getelementptr inbounds i32, i32* %129, i64 %idxprom
  %130 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %131 = load i32, i32* %total_size, align 4, !tbaa !5
  %mul84 = mul nsw i32 %131, %130
  store i32 %mul84, i32* %total_size, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %132 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %132, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %133 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory85 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %133, i32 0, i32 1
  %current86 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory85, i32 0, i32 0
  %134 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current86, align 8, !tbaa !14
  %135 = bitcast %struct.gs_ref_memory_s* %134 to %struct.gs_memory_s*
  %procs87 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %135, i32 0, i32 1
  %alloc_byte_array88 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs87, i32 0, i32 10
  %136 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array88, align 8, !tbaa !27
  %137 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory89 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %137, i32 0, i32 1
  %current90 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory89, i32 0, i32 0
  %138 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current90, align 8, !tbaa !14
  %139 = bitcast %struct.gs_ref_memory_s* %138 to %struct.gs_memory_s*
  %140 = load i32, i32* %total_size, align 4, !tbaa !5
  %call91 = call i8* %136(%struct.gs_memory_s* %139, i32 %140, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0)) #3
  store i8* %call91, i8** %bytes, align 8, !tbaa !1
  %141 = load i8*, i8** %bytes, align 8, !tbaa !1
  %tobool92 = icmp ne i8* %141, null
  br i1 %tobool92, label %if.end.94, label %if.then.93

if.then.93:                                       ; preds = %for.end
  store i32 -25, i32* %code, align 4, !tbaa !5
  br label %fail

if.end.94:                                        ; preds = %for.end
  %DataSource = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 5
  %type = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource, i32 0, i32 1
  store i32 1, i32* %type, align 4, !tbaa !37
  %142 = load i8*, i8** %bytes, align 8, !tbaa !1
  %DataSource95 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 5
  %data = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource95, i32 0, i32 2
  %str = bitcast %union.d_* %data to %struct.gs_const_string_s*
  %data96 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 0
  store i8* %142, i8** %data96, align 8, !tbaa !38
  %143 = load i32, i32* %total_size, align 4, !tbaa !5
  %DataSource97 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 5
  %data98 = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource97, i32 0, i32 2
  %str99 = bitcast %union.d_* %data98 to %struct.gs_const_string_s*
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str99, i32 0, i32 1
  store i32 %143, i32* %size, align 4, !tbaa !40
  %DataSource100 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 5
  %access = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource100, i32 0, i32 0
  store i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)* @data_source_access_bytes, i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)** %access, align 8, !tbaa !41
  %144 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory101 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %144, i32 0, i32 1
  %current102 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory101, i32 0, i32 0
  %145 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current102, align 8, !tbaa !14
  %146 = bitcast %struct.gs_ref_memory_s* %145 to %struct.gs_memory_s*
  %call103 = call i32 @gs_function_Sd_init(%struct.gs_function_s** %pfn, %struct.gs_function_Sd_params_s* %params, %struct.gs_memory_s* %146) #3
  store i32 %call103, i32* %code, align 4, !tbaa !5
  %147 = load i32, i32* %code, align 4, !tbaa !5
  %cmp104 = icmp slt i32 %147, 0
  br i1 %cmp104, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %if.end.94
  %148 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %148, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.106:                                       ; preds = %if.end.94
  %149 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %150 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %151 = load %struct.ref_s*, %struct.ref_s** %pproc.addr, align 8, !tbaa !1
  %152 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory107 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %152, i32 0, i32 1
  %current108 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory107, i32 0, i32 0
  %153 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current108, align 8, !tbaa !14
  %154 = bitcast %struct.gs_ref_memory_s* %153 to %struct.gs_memory_s*
  %call109 = call i32 @sampled_data_setup(%struct.gs_context_state_s* %149, %struct.gs_function_s* %150, %struct.ref_s* %151, i32 (%struct.gs_context_state_s*)* @sampled_data_finish, %struct.gs_memory_s* %154) #3
  store i32 %call109, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

fail:                                             ; preds = %if.then.93, %if.then.76, %if.then.68
  %155 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory110 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %155, i32 0, i32 1
  %current111 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory110, i32 0, i32 0
  %156 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current111, align 8, !tbaa !14
  %157 = bitcast %struct.gs_ref_memory_s* %156 to %struct.gs_memory_s*
  call void @gs_function_Sd_free_params(%struct.gs_function_Sd_params_s* %params, %struct.gs_memory_s* %157) #3
  %158 = load i32, i32* %code, align 4, !tbaa !5
  %cmp112 = icmp slt i32 %158, 0
  br i1 %cmp112, label %cond.true, label %cond.false

cond.true:                                        ; preds = %fail
  %159 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %fail
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %159, %cond.true ], [ -15, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.106, %if.then.105, %if.then.52, %if.then.45, %if.then.31, %if.then.24, %if.then.20, %if.then.14, %if.then.10, %if.then.6, %if.then.1, %if.then
  %160 = bitcast %struct.PS_colour_space_s** %altspace to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #1
  %161 = bitcast %struct.PS_colour_space_s** %space to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #1
  %162 = bitcast %struct.ref_s** %palternatespace to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #1
  %163 = bitcast %struct.ref_s* %alternatespace to i8*
  call void @llvm.lifetime.end(i64 16, i8* %163) #1
  %164 = bitcast %struct.gs_function_Sd_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 136, i8* %164) #1
  %165 = bitcast %struct.gs_function_s** %pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %165) #1
  %166 = bitcast float** %fptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %166) #1
  %167 = bitcast i8** %bytes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %167) #1
  %168 = bitcast i32* %CIESubst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #1
  %169 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #1
  %170 = bitcast i32* %total_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #1
  %171 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #1
  %172 = bitcast i32** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %172) #1
  %173 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #1
  %174 = load i32, i32* %retval
  ret i32 %174
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare i32 @get_space_object(%struct.gs_context_state_s*, %struct.ref_s*, %struct.PS_colour_space_s**) #2

declare void @gs_free_const_object(%struct.gs_memory_s*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @determine_sampled_data_size(i32 %num_inputs, i32 %num_outputs, i32 %sample_size, i32* %Size) #0 {
entry:
  %retval = alloca i32, align 4
  %num_inputs.addr = alloca i32, align 4
  %num_outputs.addr = alloca i32, align 4
  %sample_size.addr = alloca i32, align 4
  %Size.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %num_inputs, i32* %num_inputs.addr, align 4, !tbaa !5
  store i32 %num_outputs, i32* %num_outputs.addr, align 4, !tbaa !5
  store i32 %sample_size, i32* %sample_size.addr, align 4, !tbaa !5
  store i32* %Size, i32** %Size.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %num_inputs.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %num_inputs.addr, align 4, !tbaa !5
  %cmp1 = icmp sle i32 %3, 8
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %num_inputs.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %4, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @determine_sampled_data_size.size_list, i32 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4, !tbaa !5
  store i32 %5, i32* %size, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  store i32 2, i32* %size, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end.9, %if.end
  br label %while.body

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %7 = load i32, i32* %num_inputs.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %size, align 4, !tbaa !5
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %9 to i64
  %10 = load i32*, i32** %Size.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i32, i32* %10, i64 %idxprom3
  store i32 %8, i32* %arrayidx4, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %num_inputs.addr, align 4, !tbaa !5
  %13 = load i32, i32* %num_outputs.addr, align 4, !tbaa !5
  %14 = load i32, i32* %sample_size.addr, align 4, !tbaa !5
  %15 = load i32*, i32** %Size.addr, align 8, !tbaa !1
  %call = call i32 @valid_cube_size(i32 %12, i32 %13, i32 %14, i32* %15) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %for.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %for.end
  %16 = load i32, i32* %size, align 4, !tbaa !5
  %cmp7 = icmp eq i32 %16, 2
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.6
  %17 = load i32, i32* %size, align 4, !tbaa !5
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %size, align 4, !tbaa !5
  br label %while.cond

cleanup:                                          ; preds = %if.then.8, %if.then.5
  %18 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare i32 @data_source_access_bytes(%struct.gs_data_source_s*, i64, i32, i8*, i8**) #2

declare i32 @gs_function_Sd_init(%struct.gs_function_s**, %struct.gs_function_Sd_params_s*, %struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @sampled_data_setup(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_function_s* %pfn, %struct.ref_s* %pproc, i32 (%struct.gs_context_state_s*)* %finish_proc, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pfn.addr = alloca %struct.gs_function_s*, align 8
  %pproc.addr = alloca %struct.ref_s*, align 8
  %finish_proc.addr = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %penum = alloca %struct.gs_sampled_data_enum_s*, align 8
  %i = alloca i32, align 4
  %params = alloca %struct.gs_function_Sd_params_s*, align 8
  %es_code_ = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_function_s* %pfn, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  store %struct.ref_s* %pproc, %struct.ref_s** %pproc.addr, align 8, !tbaa !1
  store i32 (%struct.gs_context_state_s*)* %finish_proc, i32 (%struct.gs_context_state_s*)** %finish_proc.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !42
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_sampled_data_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.gs_function_Sd_params_s** %params to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %6, i32 0, i32 1
  %7 = bitcast %struct.gs_function_params_s* %params1 to %struct.gs_function_Sd_params_s*
  store %struct.gs_function_Sd_params_s* %7, %struct.gs_function_Sd_params_s** %params, align 8, !tbaa !1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 25
  %stack2 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p3 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 0
  %9 = load %struct.ref_s*, %struct.ref_s** %p3, align 8, !tbaa !43
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 25
  %stack5 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack4, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack5, i32 0, i32 2
  %11 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !44
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -4
  %cmp = icmp ugt %struct.ref_s* %9, %add.ptr
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %12 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 25
  %stack7 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack6, i32 0, i32 0
  %call = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack7, i32 4) #3
  store i32 %call, i32* %es_code_, align 4, !tbaa !5
  %14 = load i32, i32* %es_code_, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %14, 0
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %15 = load i32, i32* %es_code_, align 4, !tbaa !5
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.9
  %16 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.133 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.10

if.end.10:                                        ; preds = %cleanup.cont, %entry
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack11 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 26
  %stack12 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack11, i32 0, i32 0
  %top13 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack12, i32 0, i32 2
  %18 = load %struct.ref_s*, %struct.ref_s** %top13, align 8, !tbaa !45
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack14 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 26
  %stack15 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack14, i32 0, i32 0
  %p16 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack15, i32 0, i32 0
  %20 = load %struct.ref_s*, %struct.ref_s** %p16, align 8, !tbaa !42
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %18 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %20 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %21 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params, align 8, !tbaa !1
  %m = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %21, i32 0, i32 0
  %22 = load i32, i32* %m, align 4, !tbaa !32
  %add = add nsw i32 %22, 3
  %conv = sext i32 %add to i64
  %cmp17 = icmp slt i64 %sub.ptr.div, %conv
  br i1 %cmp17, label %if.then.19, label %if.end.24

if.then.19:                                       ; preds = %if.end.10
  %23 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params, align 8, !tbaa !1
  %m20 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %23, i32 0, i32 0
  %24 = load i32, i32* %m20, align 4, !tbaa !32
  %add21 = add nsw i32 %24, 3
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack22 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 26
  %stack23 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack22, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack23, i32 0, i32 7
  store i32 %add21, i32* %requested, align 4, !tbaa !46
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.133

if.end.24:                                        ; preds = %if.end.10
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack25 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 26
  %stack26 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack25, i32 0, i32 0
  %top27 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack26, i32 0, i32 2
  %27 = load %struct.ref_s*, %struct.ref_s** %top27, align 8, !tbaa !45
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack28 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %28, i32 0, i32 26
  %stack29 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack28, i32 0, i32 0
  %p30 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack29, i32 0, i32 0
  %29 = load %struct.ref_s*, %struct.ref_s** %p30, align 8, !tbaa !42
  %sub.ptr.lhs.cast31 = ptrtoint %struct.ref_s* %27 to i64
  %sub.ptr.rhs.cast32 = ptrtoint %struct.ref_s* %29 to i64
  %sub.ptr.sub33 = sub i64 %sub.ptr.lhs.cast31, %sub.ptr.rhs.cast32
  %sub.ptr.div34 = sdiv exact i64 %sub.ptr.sub33, 16
  %30 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params, align 8, !tbaa !1
  %n = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %30, i32 0, i32 2
  %31 = load i32, i32* %n, align 4, !tbaa !35
  %add35 = add nsw i32 %31, 3
  %conv36 = sext i32 %add35 to i64
  %cmp37 = icmp slt i64 %sub.ptr.div34, %conv36
  br i1 %cmp37, label %if.then.39, label %if.end.45

if.then.39:                                       ; preds = %if.end.24
  %32 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params, align 8, !tbaa !1
  %n40 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %32, i32 0, i32 2
  %33 = load i32, i32* %n40, align 4, !tbaa !35
  %add41 = add nsw i32 %33, 3
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack42 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 26
  %stack43 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack42, i32 0, i32 0
  %requested44 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack43, i32 0, i32 7
  store i32 %add41, i32* %requested44, align 4, !tbaa !46
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.133

if.end.45:                                        ; preds = %if.end.24
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %35, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %36 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !14
  %37 = bitcast %struct.gs_ref_memory_s* %36 to %struct.gs_memory_s*
  %call46 = call %struct.gs_sampled_data_enum_s* @gs_sampled_data_enum_alloc(%struct.gs_memory_s* %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0)) #3
  store %struct.gs_sampled_data_enum_s* %call46, %struct.gs_sampled_data_enum_s** %penum, align 8, !tbaa !1
  %38 = load %struct.gs_sampled_data_enum_s*, %struct.gs_sampled_data_enum_s** %penum, align 8, !tbaa !1
  %cmp47 = icmp eq %struct.gs_sampled_data_enum_s* %38, null
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.45
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.133

if.end.50:                                        ; preds = %if.end.45
  %39 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  %40 = load %struct.gs_sampled_data_enum_s*, %struct.gs_sampled_data_enum_s** %penum, align 8, !tbaa !1
  %pfn51 = getelementptr inbounds %struct.gs_sampled_data_enum_s, %struct.gs_sampled_data_enum_s* %40, i32 0, i32 2
  store %struct.gs_function_s* %39, %struct.gs_function_s** %pfn51, align 8, !tbaa !47
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.50
  %41 = load i32, i32* %i, align 4, !tbaa !5
  %42 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params, align 8, !tbaa !1
  %m52 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %42, i32 0, i32 0
  %43 = load i32, i32* %m52, align 4, !tbaa !32
  %cmp53 = icmp slt i32 %41, %43
  br i1 %cmp53, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %44 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %44 to i64
  %45 = load %struct.gs_sampled_data_enum_s*, %struct.gs_sampled_data_enum_s** %penum, align 8, !tbaa !1
  %indexes = getelementptr inbounds %struct.gs_sampled_data_enum_s, %struct.gs_sampled_data_enum_s* %45, i32 0, i32 0
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* %indexes, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %46 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %47 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack55 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %47, i32 0, i32 26
  %stack56 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack55, i32 0, i32 0
  %call57 = call i32 @ref_stack_count(%struct.ref_stack_s* %stack56) #3
  %48 = load %struct.gs_sampled_data_enum_s*, %struct.gs_sampled_data_enum_s** %penum, align 8, !tbaa !1
  %o_stack_depth = getelementptr inbounds %struct.gs_sampled_data_enum_s, %struct.gs_sampled_data_enum_s* %48, i32 0, i32 1
  store i32 %call57, i32* %o_stack_depth, align 4, !tbaa !49
  br label %do.body

do.body:                                          ; preds = %for.end
  %49 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i64 3
  store %struct.ref_s* %add.ptr58, %struct.ref_s** %op, align 8, !tbaa !1
  %50 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack59 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %50, i32 0, i32 26
  %stack60 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack59, i32 0, i32 0
  %top61 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack60, i32 0, i32 2
  %51 = load %struct.ref_s*, %struct.ref_s** %top61, align 8, !tbaa !45
  %cmp62 = icmp ugt %struct.ref_s* %add.ptr58, %51
  br i1 %cmp62, label %if.then.64, label %if.else

if.then.64:                                       ; preds = %do.body
  %52 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack65 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %52, i32 0, i32 26
  %stack66 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack65, i32 0, i32 0
  %requested67 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack66, i32 0, i32 7
  store i32 3, i32* %requested67, align 4, !tbaa !46
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.133

if.else:                                          ; preds = %do.body
  %53 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %54 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack68 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %54, i32 0, i32 26
  %stack69 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack68, i32 0, i32 0
  %p70 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack69, i32 0, i32 0
  store %struct.ref_s* %53, %struct.ref_s** %p70, align 8, !tbaa !42
  br label %if.end.71

if.end.71:                                        ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end.71
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.77, %do.end
  %55 = load i32, i32* %i, align 4, !tbaa !5
  %cmp73 = icmp slt i32 %55, 3
  br i1 %cmp73, label %for.body.75, label %for.end.79

for.body.75:                                      ; preds = %for.cond.72
  %56 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %57 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext = sext i32 %57 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr76 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i64 %idx.neg
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr76, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3584, i16* %type_attrs, align 2, !tbaa !50
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.body.75
  %58 = load i32, i32* %i, align 4, !tbaa !5
  %inc78 = add nsw i32 %58, 1
  store i32 %inc78, i32* %i, align 4, !tbaa !5
  br label %for.cond.72

for.end.79:                                       ; preds = %for.cond.72
  %59 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack80 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %59, i32 0, i32 25
  %stack81 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack80, i32 0, i32 0
  %p82 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack81, i32 0, i32 0
  %60 = load %struct.ref_s*, %struct.ref_s** %p82, align 8, !tbaa !43
  %add.ptr83 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %60, i64 3
  store %struct.ref_s* %add.ptr83, %struct.ref_s** %p82, align 8, !tbaa !43
  %61 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %finish_proc.addr, align 8, !tbaa !1
  %62 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack84 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %62, i32 0, i32 25
  %stack85 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack84, i32 0, i32 0
  %p86 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack85, i32 0, i32 0
  %63 = load %struct.ref_s*, %struct.ref_s** %p86, align 8, !tbaa !43
  %add.ptr87 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %63, i64 -2
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr87, i32 0, i32 1
  %opproc = bitcast %union.v* %value to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* %61, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %64 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack88 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %64, i32 0, i32 25
  %stack89 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack88, i32 0, i32 0
  %p90 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack89, i32 0, i32 0
  %65 = load %struct.ref_s*, %struct.ref_s** %p90, align 8, !tbaa !43
  %add.ptr91 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %65, i64 -2
  %tas92 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr91, i32 0, i32 0
  %type_attrs93 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas92, i32 0, i32 0
  store i16 3968, i16* %type_attrs93, align 2, !tbaa !50
  %66 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack94 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %66, i32 0, i32 25
  %stack95 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack94, i32 0, i32 0
  %p96 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack95, i32 0, i32 0
  %67 = load %struct.ref_s*, %struct.ref_s** %p96, align 8, !tbaa !43
  %add.ptr97 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i64 -2
  %tas98 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr97, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas98, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !51
  %68 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack99 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %68, i32 0, i32 25
  %stack100 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack99, i32 0, i32 0
  %p101 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack100, i32 0, i32 0
  %69 = load %struct.ref_s*, %struct.ref_s** %p101, align 8, !tbaa !43
  %arrayidx102 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i64 -1
  %70 = load %struct.ref_s*, %struct.ref_s** %pproc.addr, align 8, !tbaa !1
  %71 = bitcast %struct.ref_s* %arrayidx102 to i8*
  %72 = bitcast %struct.ref_s* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* %72, i64 16, i32 8, i1 false), !tbaa.struct !52
  %73 = load %struct.gs_sampled_data_enum_s*, %struct.gs_sampled_data_enum_s** %penum, align 8, !tbaa !1
  %74 = bitcast %struct.gs_sampled_data_enum_s* %73 to %struct.obj_header_s*
  %75 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack103 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %75, i32 0, i32 25
  %stack104 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack103, i32 0, i32 0
  %p105 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack104, i32 0, i32 0
  %76 = load %struct.ref_s*, %struct.ref_s** %p105, align 8, !tbaa !43
  %value106 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %76, i32 0, i32 1
  %pstruct = bitcast %union.v* %value106 to %struct.obj_header_s**
  store %struct.obj_header_s* %74, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %77 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory107 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %77, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory107, i32 0, i32 2
  %78 = load i32, i32* %current_space, align 4, !tbaa !57
  %or = or i32 0, %78
  %add108 = add i32 2048, %or
  %conv109 = trunc i32 %add108 to i16
  %79 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack110 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %79, i32 0, i32 25
  %stack111 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack110, i32 0, i32 0
  %p112 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack111, i32 0, i32 0
  %80 = load %struct.ref_s*, %struct.ref_s** %p112, align 8, !tbaa !43
  %tas113 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %80, i32 0, i32 0
  %type_attrs114 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas113, i32 0, i32 0
  store i16 %conv109, i16* %type_attrs114, align 2, !tbaa !50
  %81 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack115 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %81, i32 0, i32 25
  %stack116 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack115, i32 0, i32 0
  %p117 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack116, i32 0, i32 0
  %82 = load %struct.ref_s*, %struct.ref_s** %p117, align 8, !tbaa !43
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %82, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p117, align 8, !tbaa !43
  %83 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack118 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %83, i32 0, i32 25
  %stack119 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack118, i32 0, i32 0
  %p120 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack119, i32 0, i32 0
  %84 = load %struct.ref_s*, %struct.ref_s** %p120, align 8, !tbaa !43
  %value121 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %84, i32 0, i32 1
  %opproc122 = bitcast %union.v* %value121 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @sampled_data_sample, i32 (%struct.gs_context_state_s*)** %opproc122, align 8, !tbaa !1
  %85 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack123 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %85, i32 0, i32 25
  %stack124 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack123, i32 0, i32 0
  %p125 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack124, i32 0, i32 0
  %86 = load %struct.ref_s*, %struct.ref_s** %p125, align 8, !tbaa !43
  %tas126 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %86, i32 0, i32 0
  %type_attrs127 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas126, i32 0, i32 0
  store i16 3968, i16* %type_attrs127, align 2, !tbaa !50
  %87 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack128 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %87, i32 0, i32 25
  %stack129 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack128, i32 0, i32 0
  %p130 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack129, i32 0, i32 0
  %88 = load %struct.ref_s*, %struct.ref_s** %p130, align 8, !tbaa !43
  %tas131 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %88, i32 0, i32 0
  %rsize132 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas131, i32 0, i32 2
  store i32 0, i32* %rsize132, align 4, !tbaa !51
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.133

cleanup.133:                                      ; preds = %for.end.79, %if.then.64, %if.then.49, %if.then.39, %if.then.19, %cleanup
  %89 = bitcast %struct.gs_function_Sd_params_s** %params to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  %90 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast %struct.gs_sampled_data_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  %92 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %93 = load i32, i32* %retval
  ret i32 %93
}

; Function Attrs: nounwind uwtable
define internal i32 @sampled_data_finish(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %penum = alloca %struct.gs_sampled_data_enum_s*, align 8
  %params = alloca %struct.gs_function_Sd_params_s*, align 8
  %pfn4 = alloca %struct.gs_function_s*, align 8
  %cref = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !42
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_sampled_data_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p2 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1, i32 0, i32 0
  %5 = load %struct.ref_s*, %struct.ref_s** %p2, align 8, !tbaa !43
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %6 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %7 = bitcast %struct.obj_header_s* %6 to %struct.gs_sampled_data_enum_s*
  store %struct.gs_sampled_data_enum_s* %7, %struct.gs_sampled_data_enum_s** %penum, align 8, !tbaa !1
  %8 = bitcast %struct.gs_function_Sd_params_s** %params to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gs_sampled_data_enum_s*, %struct.gs_sampled_data_enum_s** %penum, align 8, !tbaa !1
  %pfn = getelementptr inbounds %struct.gs_sampled_data_enum_s, %struct.gs_sampled_data_enum_s* %9, i32 0, i32 2
  %10 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn, align 8, !tbaa !47
  %params3 = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %10, i32 0, i32 1
  %11 = bitcast %struct.gs_function_params_s* %params3 to %struct.gs_function_Sd_params_s*
  store %struct.gs_function_Sd_params_s* %11, %struct.gs_function_Sd_params_s** %params, align 8, !tbaa !1
  %12 = bitcast %struct.gs_function_s** %pfn4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast %struct.ref_s* %cref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %13) #1
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params, align 8, !tbaa !1
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %17 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !14
  %18 = bitcast %struct.gs_ref_memory_s* %17 to %struct.gs_memory_s*
  %call = call i32 @gs_function_Sd_init(%struct.gs_function_s** %pfn4, %struct.gs_function_Sd_params_s* %15, %struct.gs_memory_s* %18) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %19 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %19, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %20 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 1
  %current6 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory5, i32 0, i32 0
  %22 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current6, align 8, !tbaa !14
  %call7 = call i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s* %22, %struct.ref_s* %cref, i32 192, i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0)) #3
  store i32 %call7, i32* %code, align 4, !tbaa !5
  %23 = load i32, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %23, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %24 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end
  %25 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn4, align 8, !tbaa !1
  %26 = bitcast %struct.gs_function_s* %25 to %struct.obj_header_s*
  %value11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %cref, i32 0, i32 1
  %refs = bitcast %union.v* %value11 to %struct.ref_s**
  %27 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %value12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 1
  %pstruct13 = bitcast %union.v* %value12 to %struct.obj_header_s**
  store %struct.obj_header_s* %26, %struct.obj_header_s** %pstruct13, align 8, !tbaa !1
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory14 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %28, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory14, i32 0, i32 2
  %29 = load i32, i32* %current_space, align 4, !tbaa !57
  %or = or i32 192, %29
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory15 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory15, i32 0, i32 5
  %31 = load i32, i32* %new_mask, align 4, !tbaa !58
  %or16 = or i32 %or, %31
  %add = add i32 2048, %or16
  %conv = trunc i32 %add to i16
  %value17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %cref, i32 0, i32 1
  %refs18 = bitcast %union.v* %value17 to %struct.ref_s**
  %32 = load %struct.ref_s*, %struct.ref_s** %refs18, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 %conv, i16* %type_attrs, align 2, !tbaa !50
  %value19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %cref, i32 0, i32 1
  %refs20 = bitcast %union.v* %value19 to %struct.ref_s**
  %33 = load %struct.ref_s*, %struct.ref_s** %refs20, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 1
  %value21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %opproc = bitcast %union.v* %value21 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @zexecfunction, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory22 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 1
  %new_mask23 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory22, i32 0, i32 5
  %35 = load i32, i32* %new_mask23, align 4, !tbaa !58
  %or24 = or i32 128, %35
  %add25 = add i32 3840, %or24
  %conv26 = trunc i32 %add25 to i16
  %value27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %cref, i32 0, i32 1
  %refs28 = bitcast %union.v* %value27 to %struct.ref_s**
  %36 = load %struct.ref_s*, %struct.ref_s** %refs28, align 8, !tbaa !1
  %add.ptr29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 1
  %tas30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr29, i32 0, i32 0
  %type_attrs31 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas30, i32 0, i32 0
  store i16 %conv26, i16* %type_attrs31, align 2, !tbaa !50
  %value32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %cref, i32 0, i32 1
  %refs33 = bitcast %union.v* %value32 to %struct.ref_s**
  %37 = load %struct.ref_s*, %struct.ref_s** %refs33, align 8, !tbaa !1
  %add.ptr34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i64 1
  %tas35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr34, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas35, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !51
  %38 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %39 = bitcast %struct.ref_s* %38 to i8*
  %40 = bitcast %struct.ref_s* %cref to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 16, i32 8, i1 false), !tbaa.struct !52
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack36 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 25
  %stack37 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack36, i32 0, i32 0
  %p38 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack37, i32 0, i32 0
  %42 = load %struct.ref_s*, %struct.ref_s** %p38, align 8, !tbaa !43
  %add.ptr39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i64 -3
  store %struct.ref_s* %add.ptr39, %struct.ref_s** %p38, align 8, !tbaa !43
  %43 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory40 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %43, i32 0, i32 1
  %current41 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory40, i32 0, i32 0
  %44 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current41, align 8, !tbaa !14
  %45 = bitcast %struct.gs_ref_memory_s* %44 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %45, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %46 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !59
  %47 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory42 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %47, i32 0, i32 1
  %current43 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory42, i32 0, i32 0
  %48 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current43, align 8, !tbaa !14
  %49 = bitcast %struct.gs_ref_memory_s* %48 to %struct.gs_memory_s*
  %50 = load %struct.gs_sampled_data_enum_s*, %struct.gs_sampled_data_enum_s** %penum, align 8, !tbaa !1
  %pfn44 = getelementptr inbounds %struct.gs_sampled_data_enum_s, %struct.gs_sampled_data_enum_s* %50, i32 0, i32 2
  %51 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn44, align 8, !tbaa !47
  %52 = bitcast %struct.gs_function_s* %51 to i8*
  call void %46(%struct.gs_memory_s* %49, i8* %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0)) #3
  %53 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory45 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %53, i32 0, i32 1
  %current46 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory45, i32 0, i32 0
  %54 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current46, align 8, !tbaa !14
  %55 = bitcast %struct.gs_ref_memory_s* %54 to %struct.gs_memory_s*
  %procs47 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %55, i32 0, i32 1
  %free_object48 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs47, i32 0, i32 2
  %56 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object48, align 8, !tbaa !59
  %57 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory49 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %57, i32 0, i32 1
  %current50 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory49, i32 0, i32 0
  %58 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current50, align 8, !tbaa !14
  %59 = bitcast %struct.gs_ref_memory_s* %58 to %struct.gs_memory_s*
  %60 = load %struct.gs_sampled_data_enum_s*, %struct.gs_sampled_data_enum_s** %penum, align 8, !tbaa !1
  %61 = bitcast %struct.gs_sampled_data_enum_s* %60 to i8*
  call void %56(%struct.gs_memory_s* %59, i8* %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0)) #3
  store i32 14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.10, %if.then.9, %if.then
  %62 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast %struct.ref_s* %cref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %63) #1
  %64 = bitcast %struct.gs_function_s** %pfn4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast %struct.gs_function_Sd_params_s** %params to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast %struct.gs_sampled_data_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = load i32, i32* %retval
  ret i32 %68
}

declare void @gs_function_Sd_free_params(%struct.gs_function_Sd_params_s*, %struct.gs_memory_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @zbuildsampledfunction(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %pdict = alloca %struct.ref_s*, align 8
  %pfunc = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %pfn = alloca %struct.gs_function_s*, align 8
  %params = alloca %struct.gs_function_Sd_params_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !42
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %pdict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  store %struct.ref_s* %4, %struct.ref_s** %pdict, align 8, !tbaa !1
  %5 = bitcast %struct.ref_s** %pfunc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %7 = bitcast %struct.gs_function_s** %pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast %struct.gs_function_Sd_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 136, i8* %8) #1
  %9 = bitcast %struct.gs_function_Sd_params_s* %params to i8*
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 136, i32 8, i1 false)
  %10 = load %struct.ref_s*, %struct.ref_s** %pdict, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %11 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx, align 1, !tbaa !60
  %conv = zext i8 %12 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %13 = load %struct.ref_s*, %struct.ref_s** %pdict, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %13) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = load %struct.ref_s*, %struct.ref_s** %pdict, align 8, !tbaa !1
  %call2 = call i32 @dict_find_string(%struct.ref_s* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), %struct.ref_s** %pfunc) #3
  %cmp3 = icmp sle i32 %call2, 0
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.6
  %15 = load %struct.ref_s*, %struct.ref_s** %pfunc, align 8, !tbaa !1
  %tas7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %type_attrs8 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas7, i32 0, i32 0
  %16 = load i16, i16* %type_attrs8, align 2, !tbaa !50
  %conv9 = zext i16 %16 to i32
  %and = and i32 %conv9, 15552
  %cmp10 = icmp eq i32 %and, 1216
  br i1 %cmp10, label %if.end.14, label %if.then.12

if.then.12:                                       ; preds = %do.body
  %17 = load %struct.ref_s*, %struct.ref_s** %pfunc, align 8, !tbaa !1
  %call13 = call i32 @check_proc_failed(%struct.ref_s* %17) #3
  store i32 %call13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.14
  br label %do.end

do.end:                                           ; preds = %do.cond
  %18 = load %struct.ref_s*, %struct.ref_s** %pdict, align 8, !tbaa !1
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %20 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !14
  %21 = bitcast %struct.gs_ref_memory_s* %20 to %struct.gs_memory_s*
  %call15 = call i32 @cube_build_func0(%struct.ref_s* %18, %struct.gs_function_Sd_params_s* %params, %struct.gs_memory_s* %21) #3
  store i32 %call15, i32* %code, align 4, !tbaa !5
  %22 = load i32, i32* %code, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %22, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %do.end
  %23 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %do.end
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory20 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 1
  %current21 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory20, i32 0, i32 0
  %25 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current21, align 8, !tbaa !14
  %26 = bitcast %struct.gs_ref_memory_s* %25 to %struct.gs_memory_s*
  %call22 = call i32 @gs_function_Sd_init(%struct.gs_function_s** %pfn, %struct.gs_function_Sd_params_s* %params, %struct.gs_memory_s* %26) #3
  store i32 %call22, i32* %code, align 4, !tbaa !5
  %27 = load i32, i32* %code, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %27, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.19
  %28 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.end.19
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %30 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %31 = load %struct.ref_s*, %struct.ref_s** %pfunc, align 8, !tbaa !1
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory27 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 1
  %current28 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory27, i32 0, i32 0
  %33 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current28, align 8, !tbaa !14
  %34 = bitcast %struct.gs_ref_memory_s* %33 to %struct.gs_memory_s*
  %call29 = call i32 @sampled_data_setup(%struct.gs_context_state_s* %29, %struct.gs_function_s* %30, %struct.ref_s* %31, i32 (%struct.gs_context_state_s*)* @sampled_data_finish, %struct.gs_memory_s* %34) #3
  store i32 %call29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.26, %if.then.25, %if.then.18, %if.then.12, %if.then.5, %if.then
  %35 = bitcast %struct.gs_function_Sd_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 136, i8* %35) #1
  %36 = bitcast %struct.gs_function_s** %pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast %struct.ref_s** %pfunc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast %struct.ref_s** %pdict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal i32 @valid_cube_size(i32 %num_inputs, i32 %num_outputs, i32 %sample_size, i32* %Size) #0 {
entry:
  %retval = alloca i32, align 4
  %num_inputs.addr = alloca i32, align 4
  %num_outputs.addr = alloca i32, align 4
  %sample_size.addr = alloca i32, align 4
  %Size.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %total_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %num_inputs, i32* %num_inputs.addr, align 4, !tbaa !5
  store i32 %num_outputs, i32* %num_outputs.addr, align 4, !tbaa !5
  store i32 %sample_size, i32* %sample_size.addr, align 4, !tbaa !5
  store i32* %Size, i32** %Size.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %total_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %num_outputs.addr, align 4, !tbaa !5
  %3 = load i32, i32* %sample_size.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %2, %3
  store i32 %mul, i32* %total_size, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %5 = load i32, i32* %num_inputs.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %7 = load i32*, i32** %Size.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %cmp1 = icmp sle i32 %8, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom2 = sext i32 %9 to i64
  %10 = load i32*, i32** %Size.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i32, i32* %10, i64 %idxprom2
  %11 = load i32, i32* %arrayidx3, align 4, !tbaa !5
  %12 = load i32, i32* %total_size, align 4, !tbaa !5
  %div = sdiv i32 65536, %12
  %cmp4 = icmp sgt i32 %11, %div
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %13 to i64
  %14 = load i32*, i32** %Size.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i32, i32* %14, i64 %idxprom5
  %15 = load i32, i32* %arrayidx6, align 4, !tbaa !5
  %16 = load i32, i32* %total_size, align 4, !tbaa !5
  %mul7 = mul nsw i32 %16, %15
  store i32 %mul7, i32* %total_size, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %18 = bitcast i32* %total_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare i32 @ref_stack_extend(%struct.ref_stack_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal %struct.gs_sampled_data_enum_s* @gs_sampled_data_enum_alloc(%struct.gs_memory_s* %mem, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %1 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !61
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %1(%struct.gs_memory_s* %2, %struct.gs_memory_struct_type_s* @st_gs_sampled_data_enum, i8* %3) #3
  %4 = bitcast i8* %call to %struct.gs_sampled_data_enum_s*
  ret %struct.gs_sampled_data_enum_s* %4
}

declare i32 @ref_stack_count(%struct.ref_stack_s*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32 @sampled_data_sample(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %penum = alloca %struct.gs_sampled_data_enum_s*, align 8
  %proc = alloca %struct.ref_s, align 8
  %params = alloca %struct.gs_function_Sd_params_s*, align 8
  %num_inputs = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %dmin = alloca double, align 8
  %dmax = alloca double, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !42
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_sampled_data_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p2 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1, i32 0, i32 0
  %5 = load %struct.ref_s*, %struct.ref_s** %p2, align 8, !tbaa !43
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %6 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %7 = bitcast %struct.obj_header_s* %6 to %struct.gs_sampled_data_enum_s*
  store %struct.gs_sampled_data_enum_s* %7, %struct.gs_sampled_data_enum_s** %penum, align 8, !tbaa !1
  %8 = bitcast %struct.ref_s* %proc to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #1
  %9 = bitcast %struct.gs_function_Sd_params_s** %params to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gs_sampled_data_enum_s*, %struct.gs_sampled_data_enum_s** %penum, align 8, !tbaa !1
  %pfn = getelementptr inbounds %struct.gs_sampled_data_enum_s, %struct.gs_sampled_data_enum_s* %10, i32 0, i32 2
  %11 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn, align 8, !tbaa !47
  %params3 = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %11, i32 0, i32 1
  %12 = bitcast %struct.gs_function_params_s* %params3 to %struct.gs_function_Sd_params_s*
  store %struct.gs_function_Sd_params_s* %12, %struct.gs_function_Sd_params_s** %params, align 8, !tbaa !1
  %13 = bitcast i32* %num_inputs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params, align 8, !tbaa !1
  %m = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %14, i32 0, i32 0
  %15 = load i32, i32* %m, align 4, !tbaa !32
  store i32 %15, i32* %num_inputs, align 4, !tbaa !5
  %16 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %17 = load i32, i32* %num_inputs, align 4, !tbaa !5
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %idx.ext = sext i32 %17 to i64
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 %idx.ext
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 26
  %stack5 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack4, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack5, i32 0, i32 2
  %20 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !45
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %20
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %21 = load i32, i32* %num_inputs, align 4, !tbaa !5
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 26
  %stack7 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack6, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack7, i32 0, i32 7
  store i32 %21, i32* %requested, align 4, !tbaa !46
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %23 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack8 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 26
  %stack9 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack8, i32 0, i32 0
  %p10 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack9, i32 0, i32 0
  store %struct.ref_s* %23, %struct.ref_s** %p10, align 8, !tbaa !42
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %26 = load i32, i32* %num_inputs, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %25, %26
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = bitcast double* %dmin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %mul = mul nsw i32 2, %28
  %idxprom = sext i32 %mul to i64
  %29 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %29, i32 0, i32 1
  %30 = load float*, float** %Domain, align 8, !tbaa !31
  %arrayidx = getelementptr inbounds float, float* %30, i64 %idxprom
  %31 = load float, float* %arrayidx, align 4, !tbaa !55
  %conv = fpext float %31 to double
  store double %conv, double* %dmin, align 8, !tbaa !62
  %32 = bitcast double* %dmax to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  %33 = load i32, i32* %i, align 4, !tbaa !5
  %mul12 = mul nsw i32 2, %33
  %add = add nsw i32 %mul12, 1
  %idxprom13 = sext i32 %add to i64
  %34 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params, align 8, !tbaa !1
  %Domain14 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %34, i32 0, i32 1
  %35 = load float*, float** %Domain14, align 8, !tbaa !31
  %arrayidx15 = getelementptr inbounds float, float* %35, i64 %idxprom13
  %36 = load float, float* %arrayidx15, align 4, !tbaa !55
  %conv16 = fpext float %36 to double
  store double %conv16, double* %dmax, align 8, !tbaa !62
  %37 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %37 to i64
  %38 = load %struct.gs_sampled_data_enum_s*, %struct.gs_sampled_data_enum_s** %penum, align 8, !tbaa !1
  %indexes = getelementptr inbounds %struct.gs_sampled_data_enum_s, %struct.gs_sampled_data_enum_s* %38, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [16 x i32], [16 x i32]* %indexes, i32 0, i64 %idxprom17
  %39 = load i32, i32* %arrayidx18, align 4, !tbaa !5
  %conv19 = sitofp i32 %39 to double
  %40 = load double, double* %dmax, align 8, !tbaa !62
  %41 = load double, double* %dmin, align 8, !tbaa !62
  %sub = fsub double %40, %41
  %mul20 = fmul double %conv19, %sub
  %42 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom21 = sext i32 %42 to i64
  %43 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params, align 8, !tbaa !1
  %Size = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %43, i32 0, i32 9
  %44 = load i32*, i32** %Size, align 8, !tbaa !36
  %arrayidx22 = getelementptr inbounds i32, i32* %44, i64 %idxprom21
  %45 = load i32, i32* %arrayidx22, align 4, !tbaa !5
  %sub23 = sub nsw i32 %45, 1
  %conv24 = sitofp i32 %sub23 to double
  %div = fdiv double %mul20, %conv24
  %46 = load double, double* %dmin, align 8, !tbaa !62
  %add25 = fadd double %div, %46
  %conv26 = fptrunc double %add25 to float
  %47 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %48 = load i32, i32* %num_inputs, align 4, !tbaa !5
  %idx.ext27 = sext i32 %48 to i64
  %idx.neg = sub i64 0, %idx.ext27
  %add.ptr28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i64 %idx.neg
  %49 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext29 = sext i32 %49 to i64
  %add.ptr30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr28, i64 %idx.ext29
  %add.ptr31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr30, i64 1
  %value32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr31, i32 0, i32 1
  %realval = bitcast %union.v* %value32 to float*
  store float %conv26, float* %realval, align 4, !tbaa !55
  %50 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %51 = load i32, i32* %num_inputs, align 4, !tbaa !5
  %idx.ext33 = sext i32 %51 to i64
  %idx.neg34 = sub i64 0, %idx.ext33
  %add.ptr35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i64 %idx.neg34
  %52 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext36 = sext i32 %52 to i64
  %add.ptr37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr35, i64 %idx.ext36
  %add.ptr38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr37, i64 1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr38, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 4096, i16* %type_attrs, align 2, !tbaa !50
  %53 = bitcast double* %dmax to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast double* %dmin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %55 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %56 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack39 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %56, i32 0, i32 25
  %stack40 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack39, i32 0, i32 0
  %p41 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack40, i32 0, i32 0
  %57 = load %struct.ref_s*, %struct.ref_s** %p41, align 8, !tbaa !43
  %arrayidx42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i64 -1
  %58 = bitcast %struct.ref_s* %proc to i8*
  %59 = bitcast %struct.ref_s* %arrayidx42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 16, i32 8, i1 false), !tbaa.struct !52
  %60 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack43 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %60, i32 0, i32 25
  %stack44 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack43, i32 0, i32 0
  %p45 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack44, i32 0, i32 0
  %61 = load %struct.ref_s*, %struct.ref_s** %p45, align 8, !tbaa !43
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p45, align 8, !tbaa !43
  %62 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack46 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %62, i32 0, i32 25
  %stack47 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack46, i32 0, i32 0
  %p48 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack47, i32 0, i32 0
  %63 = load %struct.ref_s*, %struct.ref_s** %p48, align 8, !tbaa !43
  %value49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %63, i32 0, i32 1
  %opproc = bitcast %union.v* %value49 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @sampled_data_continue, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %64 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack50 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %64, i32 0, i32 25
  %stack51 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack50, i32 0, i32 0
  %p52 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack51, i32 0, i32 0
  %65 = load %struct.ref_s*, %struct.ref_s** %p52, align 8, !tbaa !43
  %tas53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %65, i32 0, i32 0
  %type_attrs54 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas53, i32 0, i32 0
  store i16 3968, i16* %type_attrs54, align 2, !tbaa !50
  %66 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack55 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %66, i32 0, i32 25
  %stack56 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack55, i32 0, i32 0
  %p57 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack56, i32 0, i32 0
  %67 = load %struct.ref_s*, %struct.ref_s** %p57, align 8, !tbaa !43
  %tas58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas58, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !51
  %68 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack59 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %68, i32 0, i32 25
  %stack60 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack59, i32 0, i32 0
  %p61 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack60, i32 0, i32 0
  %69 = load %struct.ref_s*, %struct.ref_s** %p61, align 8, !tbaa !43
  %incdec.ptr62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i32 1
  store %struct.ref_s* %incdec.ptr62, %struct.ref_s** %p61, align 8, !tbaa !43
  %70 = bitcast %struct.ref_s* %incdec.ptr62 to i8*
  %71 = bitcast %struct.ref_s* %proc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* %71, i64 16, i32 8, i1 false), !tbaa.struct !52
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %72 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast i32* %num_inputs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast %struct.gs_function_Sd_params_s** %params to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast %struct.ref_s* %proc to i8*
  call void @llvm.lifetime.end(i64 16, i8* %75) #1
  %76 = bitcast %struct.gs_sampled_data_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = load i32, i32* %retval
  ret i32 %78
}

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @sampled_data_continue(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %penum = alloca %struct.gs_sampled_data_enum_s*, align 8
  %params = alloca %struct.gs_function_Sd_params_s*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %num_out = alloca i32, align 4
  %code = alloca i32, align 4
  %data_ptr = alloca i8*, align 8
  %sampled_data_value_max = alloca double, align 8
  %bps = alloca i32, align 4
  %stack_depth_adjust = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %cv = alloca i64, align 8
  %value43 = alloca double, align 8
  %rmin = alloca double, align 8
  %rmax = alloca double, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !42
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_sampled_data_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p2 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1, i32 0, i32 0
  %5 = load %struct.ref_s*, %struct.ref_s** %p2, align 8, !tbaa !43
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %6 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %7 = bitcast %struct.obj_header_s* %6 to %struct.gs_sampled_data_enum_s*
  store %struct.gs_sampled_data_enum_s* %7, %struct.gs_sampled_data_enum_s** %penum, align 8, !tbaa !1
  %8 = bitcast %struct.gs_function_Sd_params_s** %params to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gs_sampled_data_enum_s*, %struct.gs_sampled_data_enum_s** %penum, align 8, !tbaa !1
  %pfn = getelementptr inbounds %struct.gs_sampled_data_enum_s, %struct.gs_sampled_data_enum_s* %9, i32 0, i32 2
  %10 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn, align 8, !tbaa !47
  %params3 = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %10, i32 0, i32 1
  %11 = bitcast %struct.gs_function_params_s* %params3 to %struct.gs_function_Sd_params_s*
  store %struct.gs_function_Sd_params_s* %11, %struct.gs_function_Sd_params_s** %params, align 8, !tbaa !1
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %num_out to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params, align 8, !tbaa !1
  %n = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %15, i32 0, i32 2
  %16 = load i32, i32* %n, align 4, !tbaa !35
  store i32 %16, i32* %num_out, align 4, !tbaa !5
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %18 = bitcast i8** %data_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = bitcast double* %sampled_data_value_max to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params, align 8, !tbaa !1
  %BitsPerSample = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %20, i32 0, i32 6
  %21 = load i32, i32* %BitsPerSample, align 4, !tbaa !12
  %shl = shl i32 1, %21
  %sub = sub nsw i32 %shl, 1
  %conv = sitofp i32 %sub to double
  store double %conv, double* %sampled_data_value_max, align 8, !tbaa !62
  %22 = bitcast i32* %bps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params, align 8, !tbaa !1
  %BitsPerSample4 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %23, i32 0, i32 6
  %24 = load i32, i32* %BitsPerSample4, align 4, !tbaa !12
  %shr = ashr i32 %24, 3
  store i32 %shr, i32* %bps, align 4, !tbaa !5
  %25 = bitcast i32* %stack_depth_adjust to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  store i32 0, i32* %stack_depth_adjust, align 4, !tbaa !5
  %26 = load i32, i32* %num_out, align 4, !tbaa !5
  %add = add nsw i32 %26, 3
  %27 = load %struct.gs_sampled_data_enum_s*, %struct.gs_sampled_data_enum_s** %penum, align 8, !tbaa !1
  %o_stack_depth = getelementptr inbounds %struct.gs_sampled_data_enum_s, %struct.gs_sampled_data_enum_s* %27, i32 0, i32 1
  %28 = load i32, i32* %o_stack_depth, align 4, !tbaa !49
  %add5 = add nsw i32 %add, %28
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 26
  %stack7 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack6, i32 0, i32 0
  %call = call i32 @ref_stack_count(%struct.ref_stack_s* %stack7) #3
  %cmp = icmp ne i32 %add5, %call
  br i1 %cmp, label %if.then, label %if.end.39

if.then:                                          ; preds = %entry
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack9 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 26
  %stack10 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack9, i32 0, i32 0
  %call11 = call i32 @ref_stack_count(%struct.ref_stack_s* %stack10) #3
  %31 = load %struct.gs_sampled_data_enum_s*, %struct.gs_sampled_data_enum_s** %penum, align 8, !tbaa !1
  %o_stack_depth12 = getelementptr inbounds %struct.gs_sampled_data_enum_s, %struct.gs_sampled_data_enum_s* %31, i32 0, i32 1
  %32 = load i32, i32* %o_stack_depth12, align 4, !tbaa !49
  %sub13 = sub i32 %call11, %32
  store i32 %sub13, i32* %stack_depth_adjust, align 4, !tbaa !5
  %33 = load i32, i32* %stack_depth_adjust, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %33, 0
  br i1 %cmp14, label %if.then.16, label %if.end.38

if.then.16:                                       ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %if.then.16
  %34 = load i32, i32* %stack_depth_adjust, align 4, !tbaa !5
  %sub17 = sub nsw i32 0, %34
  %35 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %idx.ext = sext i32 %sub17 to i64
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 %idx.ext
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %36 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack18 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %36, i32 0, i32 26
  %stack19 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack18, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack19, i32 0, i32 2
  %37 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !45
  %cmp20 = icmp ugt %struct.ref_s* %add.ptr, %37
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %do.body
  %38 = load i32, i32* %stack_depth_adjust, align 4, !tbaa !5
  %sub23 = sub nsw i32 0, %38
  %39 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack24 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %39, i32 0, i32 26
  %stack25 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack24, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack25, i32 0, i32 7
  store i32 %sub23, i32* %requested, align 4, !tbaa !46
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.176

if.else:                                          ; preds = %do.body
  %40 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack26 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 26
  %stack27 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack26, i32 0, i32 0
  %p28 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack27, i32 0, i32 0
  store %struct.ref_s* %40, %struct.ref_s** %p28, align 8, !tbaa !42
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %42 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %42, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %43 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !14
  %44 = bitcast %struct.gs_ref_memory_s* %43 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %44, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %45 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !59
  %46 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory29 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %46, i32 0, i32 1
  %current30 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory29, i32 0, i32 0
  %47 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current30, align 8, !tbaa !14
  %48 = bitcast %struct.gs_ref_memory_s* %47 to %struct.gs_memory_s*
  %49 = load %struct.gs_sampled_data_enum_s*, %struct.gs_sampled_data_enum_s** %penum, align 8, !tbaa !1
  %pfn31 = getelementptr inbounds %struct.gs_sampled_data_enum_s, %struct.gs_sampled_data_enum_s* %49, i32 0, i32 2
  %50 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn31, align 8, !tbaa !47
  %51 = bitcast %struct.gs_function_s* %50 to i8*
  call void %45(%struct.gs_memory_s* %48, i8* %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0)) #3
  %52 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory32 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %52, i32 0, i32 1
  %current33 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory32, i32 0, i32 0
  %53 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current33, align 8, !tbaa !14
  %54 = bitcast %struct.gs_ref_memory_s* %53 to %struct.gs_memory_s*
  %procs34 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %54, i32 0, i32 1
  %free_object35 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs34, i32 0, i32 2
  %55 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object35, align 8, !tbaa !59
  %56 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory36 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %56, i32 0, i32 1
  %current37 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory36, i32 0, i32 0
  %57 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current37, align 8, !tbaa !14
  %58 = bitcast %struct.gs_ref_memory_s* %57 to %struct.gs_memory_s*
  %59 = load %struct.gs_sampled_data_enum_s*, %struct.gs_sampled_data_enum_s** %penum, align 8, !tbaa !1
  %60 = bitcast %struct.gs_sampled_data_enum_s* %59 to i8*
  call void %55(%struct.gs_memory_s* %58, i8* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0)) #3
  store i32 -23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.176

if.end.38:                                        ; preds = %if.then
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %entry
  %61 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params, align 8, !tbaa !1
  %62 = load %struct.gs_sampled_data_enum_s*, %struct.gs_sampled_data_enum_s** %penum, align 8, !tbaa !1
  %indexes = getelementptr inbounds %struct.gs_sampled_data_enum_s, %struct.gs_sampled_data_enum_s* %62, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %indexes, i32 0, i32 0
  %call40 = call i8* @cube_ptr_from_index(%struct.gs_function_Sd_params_s* %61, i32* %arraydecay) #3
  store i8* %call40, i8** %data_ptr, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.92, %if.end.39
  %63 = load i32, i32* %i, align 4, !tbaa !5
  %64 = load i32, i32* %num_out, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %63, %64
  br i1 %cmp41, label %for.body, label %for.end.94

for.body:                                         ; preds = %for.cond
  %65 = bitcast i64* %cv to i8*
  call void @llvm.lifetime.start(i64 8, i8* %65) #1
  %66 = bitcast double* %value43 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %66) #1
  %67 = bitcast double* %rmin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %67) #1
  %68 = load i32, i32* %i, align 4, !tbaa !5
  %mul = mul nsw i32 2, %68
  %idxprom = sext i32 %mul to i64
  %69 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params, align 8, !tbaa !1
  %Range = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %69, i32 0, i32 3
  %70 = load float*, float** %Range, align 8, !tbaa !34
  %arrayidx = getelementptr inbounds float, float* %70, i64 %idxprom
  %71 = load float, float* %arrayidx, align 4, !tbaa !55
  %conv44 = fpext float %71 to double
  store double %conv44, double* %rmin, align 8, !tbaa !62
  %72 = bitcast double* %rmax to i8*
  call void @llvm.lifetime.start(i64 8, i8* %72) #1
  %73 = load i32, i32* %i, align 4, !tbaa !5
  %mul45 = mul nsw i32 2, %73
  %add46 = add nsw i32 %mul45, 1
  %idxprom47 = sext i32 %add46 to i64
  %74 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params, align 8, !tbaa !1
  %Range48 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %74, i32 0, i32 3
  %75 = load float*, float** %Range48, align 8, !tbaa !34
  %arrayidx49 = getelementptr inbounds float, float* %75, i64 %idxprom47
  %76 = load float, float* %arrayidx49, align 4, !tbaa !55
  %conv50 = fpext float %76 to double
  store double %conv50, double* %rmax, align 8, !tbaa !62
  %77 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %78 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext51 = sext i32 %78 to i64
  %add.ptr52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %77, i64 %idx.ext51
  %79 = load i32, i32* %num_out, align 4, !tbaa !5
  %idx.ext53 = sext i32 %79 to i64
  %idx.neg = sub i64 0, %idx.ext53
  %add.ptr54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr52, i64 %idx.neg
  %add.ptr55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr54, i64 1
  %call56 = call i32 @real_param(%struct.ref_s* %add.ptr55, double* %value43) #3
  store i32 %call56, i32* %code, align 4, !tbaa !5
  %80 = load i32, i32* %code, align 4, !tbaa !5
  %cmp57 = icmp slt i32 %80, 0
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %for.body
  %81 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %81, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.60:                                        ; preds = %for.body
  %82 = load double, double* %value43, align 8, !tbaa !62
  %83 = load double, double* %rmin, align 8, !tbaa !62
  %cmp61 = fcmp olt double %82, %83
  br i1 %cmp61, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %if.end.60
  %84 = load double, double* %rmin, align 8, !tbaa !62
  store double %84, double* %value43, align 8, !tbaa !62
  br label %if.end.69

if.else.64:                                       ; preds = %if.end.60
  %85 = load double, double* %value43, align 8, !tbaa !62
  %86 = load double, double* %rmax, align 8, !tbaa !62
  %cmp65 = fcmp ogt double %85, %86
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.else.64
  %87 = load double, double* %rmax, align 8, !tbaa !62
  store double %87, double* %value43, align 8, !tbaa !62
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %if.else.64
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.63
  %88 = load double, double* %value43, align 8, !tbaa !62
  %89 = load double, double* %rmin, align 8, !tbaa !62
  %sub70 = fsub double %88, %89
  %90 = load double, double* %rmax, align 8, !tbaa !62
  %91 = load double, double* %rmin, align 8, !tbaa !62
  %sub71 = fsub double %90, %91
  %div = fdiv double %sub70, %sub71
  store double %div, double* %value43, align 8, !tbaa !62
  %92 = load double, double* %value43, align 8, !tbaa !62
  %93 = load double, double* %sampled_data_value_max, align 8, !tbaa !62
  %mul72 = fmul double %92, %93
  %add73 = fadd double %mul72, 5.000000e-01
  %conv74 = fptosi double %add73 to i32
  %conv75 = sext i32 %conv74 to i64
  store i64 %conv75, i64* %cv, align 8, !tbaa !54
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc, %if.end.69
  %94 = load i32, i32* %j, align 4, !tbaa !5
  %95 = load i32, i32* %bps, align 4, !tbaa !5
  %cmp77 = icmp slt i32 %94, %95
  br i1 %cmp77, label %for.body.79, label %for.end

for.body.79:                                      ; preds = %for.cond.76
  %96 = load i64, i64* %cv, align 8, !tbaa !54
  %97 = load i32, i32* %bps, align 4, !tbaa !5
  %sub80 = sub nsw i32 %97, 1
  %98 = load i32, i32* %j, align 4, !tbaa !5
  %sub81 = sub nsw i32 %sub80, %98
  %mul82 = mul nsw i32 %sub81, 8
  %sh_prom = zext i32 %mul82 to i64
  %shr83 = lshr i64 %96, %sh_prom
  %conv84 = trunc i64 %shr83 to i8
  %99 = load i32, i32* %bps, align 4, !tbaa !5
  %100 = load i32, i32* %i, align 4, !tbaa !5
  %mul85 = mul nsw i32 %99, %100
  %101 = load i32, i32* %j, align 4, !tbaa !5
  %add86 = add nsw i32 %mul85, %101
  %idxprom87 = sext i32 %add86 to i64
  %102 = load i8*, i8** %data_ptr, align 8, !tbaa !1
  %arrayidx88 = getelementptr inbounds i8, i8* %102, i64 %idxprom87
  store i8 %conv84, i8* %arrayidx88, align 1, !tbaa !60
  br label %for.inc

for.inc:                                          ; preds = %for.body.79
  %103 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %103, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond.76

for.end:                                          ; preds = %for.cond.76
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.59
  %104 = bitcast double* %rmax to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #1
  %105 = bitcast double* %rmin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #1
  %106 = bitcast double* %value43 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #1
  %107 = bitcast i64* %cv to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.176 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.92

for.inc.92:                                       ; preds = %cleanup.cont
  %108 = load i32, i32* %i, align 4, !tbaa !5
  %inc93 = add nsw i32 %108, 1
  store i32 %inc93, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end.94:                                       ; preds = %for.cond
  %109 = load i32, i32* %num_out, align 4, !tbaa !5
  %110 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack95 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %110, i32 0, i32 26
  %stack96 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack95, i32 0, i32 0
  %p97 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack96, i32 0, i32 0
  %111 = load %struct.ref_s*, %struct.ref_s** %p97, align 8, !tbaa !42
  %idx.ext98 = sext i32 %109 to i64
  %idx.neg99 = sub i64 0, %idx.ext98
  %add.ptr100 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %111, i64 %idx.neg99
  store %struct.ref_s* %add.ptr100, %struct.ref_s** %p97, align 8, !tbaa !42
  %112 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params, align 8, !tbaa !1
  %113 = load %struct.gs_sampled_data_enum_s*, %struct.gs_sampled_data_enum_s** %penum, align 8, !tbaa !1
  %indexes101 = getelementptr inbounds %struct.gs_sampled_data_enum_s, %struct.gs_sampled_data_enum_s* %113, i32 0, i32 0
  %arraydecay102 = getelementptr inbounds [16 x i32], [16 x i32]* %indexes101, i32 0, i32 0
  %call103 = call i32 @increment_cube_indexes(%struct.gs_function_Sd_params_s* %112, i32* %arraydecay102) #3
  %tobool = icmp ne i32 %call103, 0
  br i1 %tobool, label %if.then.104, label %if.else.137

if.then.104:                                      ; preds = %for.end.94
  %114 = load i32, i32* %stack_depth_adjust, align 4, !tbaa !5
  %cmp105 = icmp eq i32 %114, 0
  br i1 %cmp105, label %if.then.107, label %if.else.112

if.then.107:                                      ; preds = %if.then.104
  %115 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack108 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %115, i32 0, i32 26
  %stack109 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack108, i32 0, i32 0
  %p110 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack109, i32 0, i32 0
  %116 = load %struct.ref_s*, %struct.ref_s** %p110, align 8, !tbaa !42
  %add.ptr111 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %116, i64 -3
  store %struct.ref_s* %add.ptr111, %struct.ref_s** %p110, align 8, !tbaa !42
  br label %if.end.120

if.else.112:                                      ; preds = %if.then.104
  %117 = load i32, i32* %stack_depth_adjust, align 4, !tbaa !5
  %118 = load i32, i32* %num_out, align 4, !tbaa !5
  %sub113 = sub nsw i32 %117, %118
  %119 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack114 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %119, i32 0, i32 26
  %stack115 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack114, i32 0, i32 0
  %p116 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack115, i32 0, i32 0
  %120 = load %struct.ref_s*, %struct.ref_s** %p116, align 8, !tbaa !42
  %idx.ext117 = sext i32 %sub113 to i64
  %idx.neg118 = sub i64 0, %idx.ext117
  %add.ptr119 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %120, i64 %idx.neg118
  store %struct.ref_s* %add.ptr119, %struct.ref_s** %p116, align 8, !tbaa !42
  br label %if.end.120

if.end.120:                                       ; preds = %if.else.112, %if.then.107
  store i32 0, i32* %code, align 4, !tbaa !5
  %121 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack121 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %121, i32 0, i32 25
  %stack122 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack121, i32 0, i32 0
  %p123 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack122, i32 0, i32 0
  %122 = load %struct.ref_s*, %struct.ref_s** %p123, align 8, !tbaa !43
  %add.ptr124 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %122, i64 -2
  %value125 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr124, i32 0, i32 1
  %opproc = bitcast %union.v* %value125 to i32 (%struct.gs_context_state_s*)**
  %123 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %cmp126 = icmp ne i32 (%struct.gs_context_state_s*)* %123, null
  br i1 %cmp126, label %if.then.128, label %if.end.136

if.then.128:                                      ; preds = %if.end.120
  %124 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack129 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %124, i32 0, i32 25
  %stack130 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack129, i32 0, i32 0
  %p131 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack130, i32 0, i32 0
  %125 = load %struct.ref_s*, %struct.ref_s** %p131, align 8, !tbaa !43
  %add.ptr132 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %125, i64 -2
  %value133 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr132, i32 0, i32 1
  %opproc134 = bitcast %union.v* %value133 to i32 (%struct.gs_context_state_s*)**
  %126 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %opproc134, align 8, !tbaa !1
  %127 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call135 = call i32 %126(%struct.gs_context_state_s* %127) #3
  store i32 %call135, i32* %code, align 4, !tbaa !5
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.128, %if.end.120
  %128 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %128, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.176

if.else.137:                                      ; preds = %for.end.94
  %129 = load i32, i32* %stack_depth_adjust, align 4, !tbaa !5
  %tobool138 = icmp ne i32 %129, 0
  br i1 %tobool138, label %if.then.139, label %if.end.173

if.then.139:                                      ; preds = %if.else.137
  %130 = load i32, i32* %num_out, align 4, !tbaa !5
  %131 = load i32, i32* %stack_depth_adjust, align 4, !tbaa !5
  %sub140 = sub nsw i32 %131, %130
  store i32 %sub140, i32* %stack_depth_adjust, align 4, !tbaa !5
  br label %do.body.141

do.body.141:                                      ; preds = %if.then.139
  %132 = load i32, i32* %stack_depth_adjust, align 4, !tbaa !5
  %sub142 = sub nsw i32 3, %132
  %133 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %idx.ext143 = sext i32 %sub142 to i64
  %add.ptr144 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %133, i64 %idx.ext143
  store %struct.ref_s* %add.ptr144, %struct.ref_s** %op, align 8, !tbaa !1
  %134 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack145 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %134, i32 0, i32 26
  %stack146 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack145, i32 0, i32 0
  %top147 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack146, i32 0, i32 2
  %135 = load %struct.ref_s*, %struct.ref_s** %top147, align 8, !tbaa !45
  %cmp148 = icmp ugt %struct.ref_s* %add.ptr144, %135
  br i1 %cmp148, label %if.then.150, label %if.else.155

if.then.150:                                      ; preds = %do.body.141
  %136 = load i32, i32* %stack_depth_adjust, align 4, !tbaa !5
  %sub151 = sub nsw i32 3, %136
  %137 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack152 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %137, i32 0, i32 26
  %stack153 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack152, i32 0, i32 0
  %requested154 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack153, i32 0, i32 7
  store i32 %sub151, i32* %requested154, align 4, !tbaa !46
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.176

if.else.155:                                      ; preds = %do.body.141
  %138 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %139 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack156 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %139, i32 0, i32 26
  %stack157 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack156, i32 0, i32 0
  %p158 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack157, i32 0, i32 0
  store %struct.ref_s* %138, %struct.ref_s** %p158, align 8, !tbaa !42
  br label %if.end.159

if.end.159:                                       ; preds = %if.else.155
  br label %do.cond.160

do.cond.160:                                      ; preds = %if.end.159
  br label %do.end.161

do.end.161:                                       ; preds = %do.cond.160
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.162

for.cond.162:                                     ; preds = %for.inc.170, %do.end.161
  %140 = load i32, i32* %i, align 4, !tbaa !5
  %141 = load i32, i32* %stack_depth_adjust, align 4, !tbaa !5
  %sub163 = sub nsw i32 3, %141
  %cmp164 = icmp slt i32 %140, %sub163
  br i1 %cmp164, label %for.body.166, label %for.end.172

for.body.166:                                     ; preds = %for.cond.162
  %142 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %143 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext167 = sext i32 %143 to i64
  %idx.neg168 = sub i64 0, %idx.ext167
  %add.ptr169 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %142, i64 %idx.neg168
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr169, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3584, i16* %type_attrs, align 2, !tbaa !50
  br label %for.inc.170

for.inc.170:                                      ; preds = %for.body.166
  %144 = load i32, i32* %i, align 4, !tbaa !5
  %inc171 = add nsw i32 %144, 1
  store i32 %inc171, i32* %i, align 4, !tbaa !5
  br label %for.cond.162

for.end.172:                                      ; preds = %for.cond.162
  br label %if.end.173

if.end.173:                                       ; preds = %for.end.172, %if.else.137
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173
  %145 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call175 = call i32 @sampled_data_sample(%struct.gs_context_state_s* %145) #3
  store i32 %call175, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.176

cleanup.176:                                      ; preds = %if.end.174, %if.then.150, %if.end.136, %cleanup, %do.end, %if.then.22
  %146 = bitcast i32* %stack_depth_adjust to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #1
  %147 = bitcast i32* %bps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #1
  %148 = bitcast double* %sampled_data_value_max to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  %149 = bitcast i8** %data_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #1
  %150 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #1
  %151 = bitcast i32* %num_out to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #1
  %152 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #1
  %153 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #1
  %154 = bitcast %struct.gs_function_Sd_params_s** %params to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #1
  %155 = bitcast %struct.gs_sampled_data_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #1
  %156 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %156) #1
  %157 = load i32, i32* %retval
  ret i32 %157
}

; Function Attrs: nounwind uwtable
define internal i8* @cube_ptr_from_index(%struct.gs_function_Sd_params_s* %params, i32* %indexes) #0 {
entry:
  %params.addr = alloca %struct.gs_function_Sd_params_s*, align 8
  %indexes.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  store %struct.gs_function_Sd_params_s* %params, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  store i32* %indexes, i32** %indexes.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %sum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %m = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %2, i32 0, i32 0
  %3 = load i32, i32* %m, align 4, !tbaa !32
  %sub = sub nsw i32 %3, 1
  %idxprom = sext i32 %sub to i64
  %4 = load i32*, i32** %indexes.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4, !tbaa !5
  store i32 %5, i32* %sum, align 4, !tbaa !5
  %6 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %m1 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %6, i32 0, i32 0
  %7 = load i32, i32* %m1, align 4, !tbaa !32
  %sub2 = sub nsw i32 %7, 2
  store i32 %sub2, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp sge i32 %8, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %9 to i64
  %10 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %Size = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %10, i32 0, i32 9
  %11 = load i32*, i32** %Size, align 8, !tbaa !36
  %arrayidx4 = getelementptr inbounds i32, i32* %11, i64 %idxprom3
  %12 = load i32, i32* %arrayidx4, align 4, !tbaa !5
  %13 = load i32, i32* %sum, align 4, !tbaa !5
  %mul = mul nsw i32 %13, %12
  store i32 %mul, i32* %sum, align 4, !tbaa !5
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %14 to i64
  %15 = load i32*, i32** %indexes.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i32, i32* %15, i64 %idxprom5
  %16 = load i32, i32* %arrayidx6, align 4, !tbaa !5
  %17 = load i32, i32* %sum, align 4, !tbaa !5
  %add = add nsw i32 %17, %16
  store i32 %add, i32* %sum, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %DataSource = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %19, i32 0, i32 5
  %data = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource, i32 0, i32 2
  %str = bitcast %union.d_* %data to %struct.gs_const_string_s*
  %data7 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 0
  %20 = load i8*, i8** %data7, align 8, !tbaa !38
  %21 = load i32, i32* %sum, align 4, !tbaa !5
  %22 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %n = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %22, i32 0, i32 2
  %23 = load i32, i32* %n, align 4, !tbaa !35
  %mul8 = mul nsw i32 %21, %23
  %24 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %BitsPerSample = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %24, i32 0, i32 6
  %25 = load i32, i32* %BitsPerSample, align 4, !tbaa !12
  %shr = ashr i32 %25, 3
  %mul9 = mul nsw i32 %mul8, %shr
  %idx.ext = sext i32 %mul9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %idx.ext
  %26 = bitcast i32* %sum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  ret i8* %add.ptr
}

declare i32 @real_param(%struct.ref_s*, double*) #2

; Function Attrs: nounwind uwtable
define internal i32 @increment_cube_indexes(%struct.gs_function_Sd_params_s* %params, i32* %indexes) #0 {
entry:
  %retval = alloca i32, align 4
  %params.addr = alloca %struct.gs_function_Sd_params_s*, align 8
  %indexes.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_function_Sd_params_s* %params, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  store i32* %indexes, i32** %indexes.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end.10, %entry
  br label %while.body

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %2 = load i32*, i32** %indexes.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %arrayidx, align 4, !tbaa !5
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom1 = sext i32 %4 to i64
  %5 = load i32*, i32** %indexes.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4, !tbaa !5
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %7 to i64
  %8 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %Size = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %8, i32 0, i32 9
  %9 = load i32*, i32** %Size, align 8, !tbaa !36
  %arrayidx4 = getelementptr inbounds i32, i32* %9, i64 %idxprom3
  %10 = load i32, i32* %arrayidx4, align 4, !tbaa !5
  %cmp = icmp slt i32 %6, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %11 to i64
  %12 = load i32*, i32** %indexes.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i32, i32* %12, i64 %idxprom5
  store i32 0, i32* %arrayidx6, align 4, !tbaa !5
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %inc7 = add nsw i32 %13, 1
  store i32 %inc7, i32* %i, align 4, !tbaa !5
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %15 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %m = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %15, i32 0, i32 0
  %16 = load i32, i32* %m, align 4, !tbaa !32
  %cmp8 = icmp eq i32 %14, %16
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end
  br label %while.cond

cleanup:                                          ; preds = %if.then.9, %if.then
  %17 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s*, %struct.ref_s*, i32, i32, i8*) #2

declare i32 @zexecfunction(%struct.gs_context_state_s*) #2

declare i32 @check_type_failed(%struct.ref_s*) #2

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

declare i32 @check_proc_failed(%struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @cube_build_func0(%struct.ref_s* %pdict, %struct.gs_function_Sd_params_s* %params, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pdict.addr = alloca %struct.ref_s*, align 8
  %params.addr = alloca %struct.gs_function_Sd_params_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %bytes = alloca i8*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %total_size = alloca i32, align 4
  %ptr = alloca i32*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %pdict, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  store %struct.gs_function_Sd_params_s* %params, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i8** %bytes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i8* null, i8** %bytes, align 8, !tbaa !1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %total_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %5 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %Order = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %5, i32 0, i32 4
  %call = call i32 @dict_int_param(%struct.ref_s* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 1, i32 3, i32 1, i32* %Order) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %7 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %BitsPerSample = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %7, i32 0, i32 6
  %call1 = call i32 @dict_int_param(%struct.ref_s* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i32 1, i32 32, i32 0, i32* %BitsPerSample) #3
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %8 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %9 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %9, i32 0, i32 1
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call4 = call i32 @fn_build_float_array(%struct.ref_s* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i32 0, i32 1, float** %Domain, %struct.gs_memory_s* %10) #3
  %11 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %m = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %11, i32 0, i32 0
  store i32 %call4, i32* %m, align 4, !tbaa !32
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.3
  %12 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %13 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %Range = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %13, i32 0, i32 3
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call7 = call i32 @fn_build_float_array(%struct.ref_s* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 0, i32 1, float** %Range, %struct.gs_memory_s* %14) #3
  %15 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %n = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %15, i32 0, i32 2
  store i32 %call7, i32* %n, align 4, !tbaa !35
  store i32 %call7, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.6, %lor.lhs.false.3, %lor.lhs.false, %entry
  br label %fail

if.end:                                           ; preds = %lor.lhs.false.6
  %16 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %m9 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %16, i32 0, i32 0
  %17 = load i32, i32* %m9, align 4, !tbaa !32
  %shr = ashr i32 %17, 1
  store i32 %shr, i32* %m9, align 4, !tbaa !32
  %18 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %n10 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %18, i32 0, i32 2
  %19 = load i32, i32* %n10, align 4, !tbaa !35
  %shr11 = ashr i32 %19, 1
  store i32 %shr11, i32* %n10, align 4, !tbaa !35
  %20 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %m12 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %20, i32 0, i32 0
  %21 = load i32, i32* %m12, align 4, !tbaa !32
  %cmp13 = icmp eq i32 %21, 0
  br i1 %cmp13, label %if.then.23, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %if.end
  %22 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %n15 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %22, i32 0, i32 2
  %23 = load i32, i32* %n15, align 4, !tbaa !35
  %cmp16 = icmp eq i32 %23, 0
  br i1 %cmp16, label %if.then.23, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false.14
  %24 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %m18 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %24, i32 0, i32 0
  %25 = load i32, i32* %m18, align 4, !tbaa !32
  %cmp19 = icmp sgt i32 %25, 16
  br i1 %cmp19, label %if.then.23, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.17
  %26 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %n21 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %26, i32 0, i32 2
  %27 = load i32, i32* %n21, align 4, !tbaa !35
  %cmp22 = icmp sgt i32 %27, 128
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.lhs.false.20, %lor.lhs.false.17, %lor.lhs.false.14, %if.end
  store i32 -15, i32* %code, align 4, !tbaa !5
  br label %fail

if.end.24:                                        ; preds = %lor.lhs.false.20
  %28 = bitcast i32** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %30 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !27
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %32 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %m25 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %32, i32 0, i32 0
  %33 = load i32, i32* %m25, align 4, !tbaa !32
  %call26 = call i8* %30(%struct.gs_memory_s* %31, i32 %33, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)) #3
  %34 = bitcast i8* %call26 to i32*
  store i32* %34, i32** %ptr, align 8, !tbaa !1
  %35 = load i32*, i32** %ptr, align 8, !tbaa !1
  %cmp27 = icmp eq i32* %35, null
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.24
  store i32 -25, i32* %code, align 4, !tbaa !5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.end.24
  %36 = load i32*, i32** %ptr, align 8, !tbaa !1
  %37 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %Size = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %37, i32 0, i32 9
  store i32* %36, i32** %Size, align 8, !tbaa !36
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %39 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %40 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %m30 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %40, i32 0, i32 0
  %41 = load i32, i32* %m30, align 4, !tbaa !32
  %42 = load i32*, i32** %ptr, align 8, !tbaa !1
  %call31 = call i32 @dict_ints_param(%struct.gs_memory_s* %38, %struct.ref_s* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %41, i32* %42) #3
  store i32 %call31, i32* %code, align 4, !tbaa !5
  %43 = load i32, i32* %code, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %43, 0
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.29
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.end.29
  %44 = load i32, i32* %code, align 4, !tbaa !5
  %cmp35 = icmp eq i32 %44, 0
  br i1 %cmp35, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %if.end.34
  %45 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %m37 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %45, i32 0, i32 0
  %46 = load i32, i32* %m37, align 4, !tbaa !32
  %47 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %n38 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %47, i32 0, i32 2
  %48 = load i32, i32* %n38, align 4, !tbaa !35
  %49 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %BitsPerSample39 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %49, i32 0, i32 6
  %50 = load i32, i32* %BitsPerSample39, align 4, !tbaa !12
  %51 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %Size40 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %51, i32 0, i32 9
  %52 = load i32*, i32** %Size40, align 8, !tbaa !36
  %call41 = call i32 @determine_sampled_data_size(i32 %46, i32 %48, i32 %50, i32* %52) #3
  store i32 %call41, i32* %code, align 4, !tbaa !5
  %53 = load i32, i32* %code, align 4, !tbaa !5
  %cmp42 = icmp slt i32 %53, 0
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.then.36
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.44:                                        ; preds = %if.then.36
  br label %if.end.55

if.else:                                          ; preds = %if.end.34
  %54 = load i32, i32* %code, align 4, !tbaa !5
  %55 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %m45 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %55, i32 0, i32 0
  %56 = load i32, i32* %m45, align 4, !tbaa !32
  %cmp46 = icmp ne i32 %54, %56
  br i1 %cmp46, label %if.then.53, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %if.else
  %57 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %m48 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %57, i32 0, i32 0
  %58 = load i32, i32* %m48, align 4, !tbaa !32
  %59 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %n49 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %59, i32 0, i32 2
  %60 = load i32, i32* %n49, align 4, !tbaa !35
  %61 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %BitsPerSample50 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %61, i32 0, i32 6
  %62 = load i32, i32* %BitsPerSample50, align 4, !tbaa !12
  %63 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %Size51 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %63, i32 0, i32 9
  %64 = load i32*, i32** %Size51, align 8, !tbaa !36
  %call52 = call i32 @valid_cube_size(i32 %58, i32 %60, i32 %62, i32* %64) #3
  %tobool = icmp ne i32 %call52, 0
  br i1 %tobool, label %if.end.54, label %if.then.53

if.then.53:                                       ; preds = %lor.lhs.false.47, %if.else
  store i32 -15, i32* %code, align 4, !tbaa !5
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %lor.lhs.false.47
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.55:                                        ; preds = %if.end.44
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.54, %if.then.43, %if.then.33, %if.then.28, %if.end.55
  %65 = bitcast i32** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.76 [
    i32 0, label %cleanup.cont
    i32 2, label %fail
  ]

cleanup.cont:                                     ; preds = %cleanup
  %66 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %n56 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %66, i32 0, i32 2
  %67 = load i32, i32* %n56, align 4, !tbaa !35
  %68 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %BitsPerSample57 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %68, i32 0, i32 6
  %69 = load i32, i32* %BitsPerSample57, align 4, !tbaa !12
  %shr58 = ashr i32 %69, 3
  %mul = mul nsw i32 %67, %shr58
  store i32 %mul, i32* %total_size, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cleanup.cont
  %70 = load i32, i32* %i, align 4, !tbaa !5
  %71 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %m59 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %71, i32 0, i32 0
  %72 = load i32, i32* %m59, align 4, !tbaa !32
  %cmp60 = icmp slt i32 %70, %72
  br i1 %cmp60, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %73 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %73 to i64
  %74 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %Size61 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %74, i32 0, i32 9
  %75 = load i32*, i32** %Size61, align 8, !tbaa !36
  %arrayidx = getelementptr inbounds i32, i32* %75, i64 %idxprom
  %76 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %77 = load i32, i32* %total_size, align 4, !tbaa !5
  %mul62 = mul nsw i32 %77, %76
  store i32 %mul62, i32* %total_size, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %78 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %78, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %79 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs63 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %79, i32 0, i32 1
  %alloc_byte_array64 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs63, i32 0, i32 10
  %80 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array64, align 8, !tbaa !27
  %81 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %82 = load i32, i32* %total_size, align 4, !tbaa !5
  %call65 = call i8* %80(%struct.gs_memory_s* %81, i32 %82, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0)) #3
  store i8* %call65, i8** %bytes, align 8, !tbaa !1
  %83 = load i8*, i8** %bytes, align 8, !tbaa !1
  %tobool66 = icmp ne i8* %83, null
  br i1 %tobool66, label %if.end.68, label %if.then.67

if.then.67:                                       ; preds = %for.end
  store i32 -25, i32* %code, align 4, !tbaa !5
  br label %fail

if.end.68:                                        ; preds = %for.end
  %84 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %DataSource = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %84, i32 0, i32 5
  %type = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource, i32 0, i32 1
  store i32 1, i32* %type, align 4, !tbaa !37
  %85 = load i8*, i8** %bytes, align 8, !tbaa !1
  %86 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %DataSource69 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %86, i32 0, i32 5
  %data = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource69, i32 0, i32 2
  %str = bitcast %union.d_* %data to %struct.gs_const_string_s*
  %data70 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 0
  store i8* %85, i8** %data70, align 8, !tbaa !38
  %87 = load i32, i32* %total_size, align 4, !tbaa !5
  %88 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %DataSource71 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %88, i32 0, i32 5
  %data72 = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource71, i32 0, i32 2
  %str73 = bitcast %union.d_* %data72 to %struct.gs_const_string_s*
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str73, i32 0, i32 1
  store i32 %87, i32* %size, align 4, !tbaa !40
  %89 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %DataSource74 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %89, i32 0, i32 5
  %access = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource74, i32 0, i32 0
  store i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)* @data_source_access_bytes, i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)** %access, align 8, !tbaa !41
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.76

fail:                                             ; preds = %cleanup, %if.then.67, %if.then.23, %if.then
  %90 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %91 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gs_function_Sd_free_params(%struct.gs_function_Sd_params_s* %90, %struct.gs_memory_s* %91) #3
  %92 = load i32, i32* %code, align 4, !tbaa !5
  %cmp75 = icmp slt i32 %92, 0
  br i1 %cmp75, label %cond.true, label %cond.false

cond.true:                                        ; preds = %fail
  %93 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %fail
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %93, %cond.true ], [ -15, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.76

cleanup.76:                                       ; preds = %cond.end, %if.end.68, %cleanup
  %94 = bitcast i32* %total_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast i8** %bytes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = load i32, i32* %retval
  ret i32 %98
}

declare i32 @dict_int_param(%struct.ref_s*, i8*, i32, i32, i32, i32*) #2

declare i32 @fn_build_float_array(%struct.ref_s*, i8*, i32, i32, float**, %struct.gs_memory_s*) #2

declare i32 @dict_ints_param(%struct.gs_memory_s*, %struct.ref_s*, i8*, i32, i32*) #2

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
!7 = !{!8, !2, i64 24}
!8 = !{!"PS_colour_space_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88}
!9 = !{!10, !6, i64 32}
!10 = !{!"gs_function_Sd_params_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !11, i64 40, !6, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !6, i64 128}
!11 = !{!"gs_data_source_s", !2, i64 0, !3, i64 8, !3, i64 16}
!12 = !{!10, !6, i64 72}
!13 = !{!8, !2, i64 32}
!14 = !{!15, !2, i64 8}
!15 = !{!"gs_context_state_s", !2, i64 0, !16, i64 8, !6, i64 80, !18, i64 88, !18, i64 104, !21, i64 120, !21, i64 128, !21, i64 136, !6, i64 144, !6, i64 148, !18, i64 152, !18, i64 168, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !22, i64 264, !22, i64 304, !2, i64 344, !6, i64 352, !2, i64 360, !23, i64 368, !25, i64 520, !26, i64 624, !2, i64 720}
!16 = !{!"gs_dual_memory_s", !2, i64 0, !17, i64 8, !6, i64 48, !2, i64 56, !6, i64 64, !6, i64 68}
!17 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!18 = !{!"ref_s", !19, i64 0, !3, i64 8}
!19 = !{!"tas_s", !20, i64 0, !20, i64 2, !6, i64 4}
!20 = !{!"short", !3, i64 0}
!21 = !{!"long", !3, i64 0}
!22 = !{!"op_array_table_s", !18, i64 0, !2, i64 16, !6, i64 24, !6, i64 28, !6, i64 32}
!23 = !{!"dict_stack_s", !24, i64 0, !6, i64 96, !6, i64 100, !6, i64 104, !2, i64 112, !6, i64 120, !2, i64 128, !18, i64 136}
!24 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !18, i64 24, !6, i64 40, !6, i64 44, !18, i64 48, !6, i64 64, !6, i64 68, !6, i64 72, !2, i64 80, !2, i64 88}
!25 = !{!"exec_stack_s", !24, i64 0, !2, i64 96}
!26 = !{!"op_stack_s", !24, i64 0}
!27 = !{!28, !2, i64 88}
!28 = !{!"gs_memory_s", !2, i64 0, !29, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!29 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!30 = !{!8, !2, i64 48}
!31 = !{!10, !2, i64 8}
!32 = !{!10, !6, i64 0}
!33 = !{!8, !2, i64 40}
!34 = !{!10, !2, i64 24}
!35 = !{!10, !6, i64 16}
!36 = !{!10, !2, i64 96}
!37 = !{!11, !3, i64 8}
!38 = !{!39, !2, i64 0}
!39 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!40 = !{!39, !6, i64 8}
!41 = !{!11, !2, i64 0}
!42 = !{!15, !2, i64 624}
!43 = !{!15, !2, i64 520}
!44 = !{!15, !2, i64 536}
!45 = !{!15, !2, i64 640}
!46 = !{!15, !6, i64 688}
!47 = !{!48, !2, i64 72}
!48 = !{!"gs_sampled_data_enum_s", !3, i64 0, !6, i64 64, !2, i64 72}
!49 = !{!48, !6, i64 64}
!50 = !{!18, !20, i64 0}
!51 = !{!18, !6, i64 4}
!52 = !{i64 0, i64 2, !53, i64 2, i64 2, !53, i64 4, i64 4, !5, i64 8, i64 8, !54, i64 8, i64 2, !53, i64 8, i64 4, !55, i64 8, i64 8, !54, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !54}
!53 = !{!20, !20, i64 0}
!54 = !{!21, !21, i64 0}
!55 = !{!56, !56, i64 0}
!56 = !{!"float", !3, i64 0}
!57 = !{!16, !6, i64 48}
!58 = !{!16, !6, i64 68}
!59 = !{!28, !2, i64 24}
!60 = !{!3, !3, i64 0}
!61 = !{!28, !2, i64 72}
!62 = !{!63, !63, i64 0}
!63 = !{!"double", !3, i64 0}
