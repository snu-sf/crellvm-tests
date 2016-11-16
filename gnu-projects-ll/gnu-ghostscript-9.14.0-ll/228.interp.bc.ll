; ModuleID = './interp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type { i32, i32, i32, i32, i32, i32, %struct.gs_memory_s*, [4096 x i32], [2048 x %struct.sub_] }
%struct.sub_ = type { %struct.name_sub_table_s*, %struct.name_string_sub_table_s* }
%struct.name_sub_table_s = type { [512 x %struct.name_s], i32 }
%struct.name_s = type { %struct.ref_s* }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }
%struct.name_string_sub_table_s = type { [512 x %struct.name_string_s] }
%struct.name_string_s = type { i32, i8* }
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
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
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.op_def = type { i8*, i32 (%struct.gs_context_state_s*)* }
%struct.gs_context_state_s = type { %struct.gs_state_s*, %struct.gs_dual_memory_s, i32, %struct.ref_s, %struct.ref_s, i64, i64, i64, i32, i32, %struct.ref_s, %struct.ref_s, i32, i32, i32, i32, %struct.gs_file_path_s*, [3 x %struct.ref_s], %struct.stream_s*, %struct.op_array_table_s, %struct.op_array_table_s, i32 (%struct.gs_context_state_s**)*, i32, i32 (%struct.gs_context_state_s**)*, %struct.dict_stack_s, %struct.exec_stack_s, %struct.op_stack_s, %struct.i_plugin_holder_s* }
%struct.gs_state_s = type opaque
%struct.gs_dual_memory_s = type { %struct.gs_ref_memory_s*, %struct.vm_spaces_s, i32, i32 (%struct.gs_dual_memory_s*, i32)*, i32, i32 }
%struct.gs_ref_memory_s = type opaque
%struct.vm_spaces_s = type { void (%struct.vm_spaces_s*, i32)*, %union.anon }
%union.anon = type { [4 x %struct.gs_ref_memory_s*] }
%struct.gs_file_path_s = type opaque
%struct.op_array_table_s = type { %struct.ref_s, i16*, i32, i32, i32 }
%struct.dict_stack_s = type { %struct.ref_stack_s, i32, i32, i32, i16*, i32, %struct.ref_s*, %struct.ref_s }
%struct.ref_stack_s = type { %struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, %struct.ref_stack_params_s*, %struct.gs_ref_memory_s* }
%struct.ref_stack_params_s = type opaque
%struct.exec_stack_s = type { %struct.ref_stack_s, %struct.ref_s* }
%struct.op_stack_s = type { %struct.ref_stack_s }
%struct.i_plugin_holder_s = type opaque
%struct._ssn = type { %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s* }
%struct.gs_memory_gc_status_s = type { i64, i64, i32*, i32, i32, i64 }
%struct.interp_error_s = type { i32, i32, %struct.ref_s*, %struct.ref_s }
%struct.scanner_state_s = type { %struct.ref_s, i32, i32, i32, i32, %struct.dynamic_area_s, %union.sss_, %struct.se_ }
%struct.dynamic_area_s = type { i8*, i8*, i8*, i32, [1023 x i8], %struct.gs_memory_s* }
%union.sss_ = type { %struct.stream_A85D_state_s }
%struct.stream_A85D_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i64, i32, i32 }
%struct.se_ = type { %struct.ref_s, i32, [121 x i8] }
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
%struct.obj_header_s = type { %union._d }
%union._d = type { %struct.obj_header_data_s }
%struct.obj_header_data_s = type { %union._f, i32, %union._t, i64 }
%union._f = type { %struct._h }
%struct._h = type { i32 }
%union._t = type { %struct.gs_memory_struct_type_s* }
%struct.int_remap_color_info_s = type { i32 (%struct.gs_context_state_s*)*, [64 x float] }

@.str = private unnamed_addr constant [13 x i8] c"dict_stack_t\00", align 1
@dict_stack_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 0, i16 0, %struct.gs_memory_struct_type_s* @st_ref_stack, %struct.gc_ptr_element_s* null }, align 8
@st_dict_stack = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 152, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @dict_stack_reloc_ptrs to i8*) }, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"exec_stack_t\00", align 1
@exec_stack_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 0, i16 0, %struct.gs_memory_struct_type_s* @st_ref_stack, %struct.gc_ptr_element_s* null }, align 8
@st_exec_stack = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 104, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @exec_stack_reloc_ptrs to i8*) }, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"op_stack_t\00", align 1
@op_stack_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 0, i16 0, %struct.gs_memory_struct_type_s* @st_ref_stack, %struct.gc_ptr_element_s* null }, align 8
@st_op_stack = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 96, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @op_stack_reloc_ptrs to i8*) }, align 8
@gs_interp_max_op_num_args = constant i32 16, align 4
@gs_interp_num_special_ops = constant i32 10, align 4
@tx_next_index = constant i32 31, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"systemdict\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"2add\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"2def\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"1dup\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"2exch\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"2if\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"3ifelse\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"1index\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"1pop\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"2roll\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"2sub\00", align 1
@interp1_op_defs = constant [12 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* null }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zadd }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zdef }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zdup }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zexch }, %struct.op_def { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zif }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zifelse }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zindex }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zpop }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zroll }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsub }, %struct.op_def zeroinitializer], align 16
@.str.14 = private unnamed_addr constant [22 x i8] c"0.currentstackprotect\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"1.setstackprotect\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"2.errorexec\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"0.finderrorobject\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"0%interp_exit\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"0%oparray_pop\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"0%errorexec_pop\00", align 1
@interp2_op_defs = constant [8 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrentstackprotect }, %struct.op_def { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetstackprotect }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zerrorexec }, %struct.op_def { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zfinderrorobject }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @interp_exit }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @oparray_pop }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @errorexec_pop }, %struct.op_def zeroinitializer], align 16
@.str.21 = private unnamed_addr constant [15 x i8] c"./psi/interp.c\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"Fatal error %d in gs_interp_init!\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"gs_interp_alloc_stacks\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"interp_reclaim(pi_ctx_p)\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"gs_interpret\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"errordict\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"ErrorNames\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"gs_errorinfo_put_string\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"$error\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"errorinfo\00", align 1
@st_ref_stack = external constant %struct.gs_memory_struct_type_s, align 8
@.str.31 = private unnamed_addr constant [22 x i8] c"gs_call_interp(epref)\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"gserrordict\00", align 1
@op_def_count = external constant i32, align 4
@op_defs_all = external constant [0 x %struct.op_def*], align 8
@.str.33 = private unnamed_addr constant [11 x i8] c"copy_stack\00", align 1

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare i32 @zadd(%struct.gs_context_state_s*) #0

declare i32 @zdef(%struct.gs_context_state_s*) #0

declare i32 @zdup(%struct.gs_context_state_s*) #0

declare i32 @zexch(%struct.gs_context_state_s*) #0

declare i32 @zif(%struct.gs_context_state_s*) #0

declare i32 @zifelse(%struct.gs_context_state_s*) #0

declare i32 @zindex(%struct.gs_context_state_s*) #0

declare i32 @zpop(%struct.gs_context_state_s*) #0

declare i32 @zroll(%struct.gs_context_state_s*) #0

declare i32 @zsub(%struct.gs_context_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @zcurrentstackprotect(%struct.gs_context_state_s* %i_ctx_p) #1 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %ep = alloca %struct.ref_s*, align 8
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
  %3 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call %struct.ref_s* @oparray_find(%struct.gs_context_state_s* %4) #3
  store %struct.ref_s* %call, %struct.ref_s** %ep, align 8, !tbaa !1
  %5 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %cmp = icmp eq %struct.ref_s* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %8 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !19
  %cmp3 = icmp ugt %struct.ref_s* %add.ptr, %8
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !20
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 26
  %stack8 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack7, i32 0, i32 0
  %p9 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 0
  store %struct.ref_s* %10, %struct.ref_s** %p9, align 8, !tbaa !5
  br label %if.end.10

if.end.10:                                        ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end.10
  br label %do.end

do.end:                                           ; preds = %do.cond
  %12 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %opproc = bitcast %union.v* %value to i32 (%struct.gs_context_state_s*)**
  %13 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %cmp11 = icmp eq i32 (%struct.gs_context_state_s*)* %13, @oparray_cleanup
  %conv = zext i1 %cmp11 to i32
  %conv12 = trunc i32 %conv to i16
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  %boolval = bitcast %union.v* %value13 to i16*
  store i16 %conv12, i16* %boolval, align 2, !tbaa !21
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 256, i16* %type_attrs, align 2, !tbaa !22
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.4, %if.then
  %16 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  %17 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetstackprotect(%struct.gs_context_state_s* %i_ctx_p) #1 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %ep = alloca %struct.ref_s*, align 8
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
  %3 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call %struct.ref_s* @oparray_find(%struct.gs_context_state_s* %4) #3
  store %struct.ref_s* %call, %struct.ref_s** %ep, align 8, !tbaa !1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %6 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !23
  %conv = zext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call2 = call i32 @check_type_failed(%struct.ref_s* %8) #3
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.ref_s* %9, null
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  %11 = load i16, i16* %boolval, align 2, !tbaa !21
  %conv7 = zext i16 %11 to i32
  %tobool = icmp ne i32 %conv7, 0
  %cond = select i1 %tobool, i32 (%struct.gs_context_state_s*)* @oparray_cleanup, i32 (%struct.gs_context_state_s*)* @oparray_no_cleanup
  %12 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %value8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %opproc = bitcast %union.v* %value8 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* %cond, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack9 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 26
  %stack10 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack9, i32 0, i32 0
  %p11 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack10, i32 0, i32 0
  %14 = load %struct.ref_s*, %struct.ref_s** %p11, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p11, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5, %if.then
  %15 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  %16 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @zerrorexec(%struct.gs_context_state_s* %i_ctx_p) #1 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %es_code_ = alloca i32, align 4
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
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 1
  %6 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !24
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 1
  %cmp = icmp ult %struct.ref_s* %4, %add.ptr
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.64

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 25
  %stack3 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p4 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack3, i32 0, i32 0
  %8 = load %struct.ref_s*, %struct.ref_s** %p4, align 8, !tbaa !25
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 25
  %stack6 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack5, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 2
  %10 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !26
  %add.ptr7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -4
  %cmp8 = icmp ugt %struct.ref_s* %8, %add.ptr7
  br i1 %cmp8, label %if.then.9, label %if.end.15

if.then.9:                                        ; preds = %if.end
  %11 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 25
  %stack11 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack10, i32 0, i32 0
  %call = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack11, i32 4) #3
  store i32 %call, i32* %es_code_, align 4, !tbaa !27
  %13 = load i32, i32* %es_code_, align 4, !tbaa !27
  %cmp12 = icmp slt i32 %13, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.9
  %14 = load i32, i32* %es_code_, align 4, !tbaa !27
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.then.9
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then.13
  %15 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.64 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.15

if.end.15:                                        ; preds = %cleanup.cont, %if.end
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack16 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 25
  %stack17 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack16, i32 0, i32 0
  %p18 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack17, i32 0, i32 0
  %17 = load %struct.ref_s*, %struct.ref_s** %p18, align 8, !tbaa !25
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p18, align 8, !tbaa !25
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack19 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 25
  %stack20 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack19, i32 0, i32 0
  %p21 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack20, i32 0, i32 0
  %19 = load %struct.ref_s*, %struct.ref_s** %p21, align 8, !tbaa !25
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  %opproc = bitcast %union.v* %value to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @errorexec_cleanup, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack22 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 25
  %stack23 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack22, i32 0, i32 0
  %p24 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack23, i32 0, i32 0
  %21 = load %struct.ref_s*, %struct.ref_s** %p24, align 8, !tbaa !25
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3712, i16* %type_attrs, align 2, !tbaa !22
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack25 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 25
  %stack26 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack25, i32 0, i32 0
  %p27 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack26, i32 0, i32 0
  %23 = load %struct.ref_s*, %struct.ref_s** %p27, align 8, !tbaa !25
  %tas28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas28, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !28
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack29 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 25
  %stack30 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack29, i32 0, i32 0
  %p31 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack30, i32 0, i32 0
  %25 = load %struct.ref_s*, %struct.ref_s** %p31, align 8, !tbaa !25
  %incdec.ptr32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 1
  store %struct.ref_s* %incdec.ptr32, %struct.ref_s** %p31, align 8, !tbaa !25
  %26 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 -1
  %27 = bitcast %struct.ref_s* %incdec.ptr32 to i8*
  %28 = bitcast %struct.ref_s* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 16, i32 8, i1 false), !tbaa.struct !29
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack33 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 25
  %stack34 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack33, i32 0, i32 0
  %p35 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack34, i32 0, i32 0
  %30 = load %struct.ref_s*, %struct.ref_s** %p35, align 8, !tbaa !25
  %incdec.ptr36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 1
  store %struct.ref_s* %incdec.ptr36, %struct.ref_s** %p35, align 8, !tbaa !25
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack37 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 25
  %stack38 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack37, i32 0, i32 0
  %p39 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack38, i32 0, i32 0
  %32 = load %struct.ref_s*, %struct.ref_s** %p39, align 8, !tbaa !25
  %value40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 1
  %opproc41 = bitcast %union.v* %value40 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @errorexec_pop, i32 (%struct.gs_context_state_s*)** %opproc41, align 8, !tbaa !1
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack42 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 25
  %stack43 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack42, i32 0, i32 0
  %p44 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack43, i32 0, i32 0
  %34 = load %struct.ref_s*, %struct.ref_s** %p44, align 8, !tbaa !25
  %tas45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 0
  %type_attrs46 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas45, i32 0, i32 0
  store i16 3968, i16* %type_attrs46, align 2, !tbaa !22
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack47 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %35, i32 0, i32 25
  %stack48 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack47, i32 0, i32 0
  %p49 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack48, i32 0, i32 0
  %36 = load %struct.ref_s*, %struct.ref_s** %p49, align 8, !tbaa !25
  %tas50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 0
  %rsize51 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas50, i32 0, i32 2
  store i32 0, i32* %rsize51, align 4, !tbaa !28
  %37 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call52 = call i32 @zexec(%struct.gs_context_state_s* %37) #3
  store i32 %call52, i32* %code, align 4, !tbaa !27
  %38 = load i32, i32* %code, align 4, !tbaa !27
  %cmp53 = icmp sge i32 %38, 0
  br i1 %cmp53, label %if.then.54, label %if.else

if.then.54:                                       ; preds = %if.end.15
  %39 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack55 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %39, i32 0, i32 26
  %stack56 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack55, i32 0, i32 0
  %p57 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack56, i32 0, i32 0
  %40 = load %struct.ref_s*, %struct.ref_s** %p57, align 8, !tbaa !5
  %add.ptr58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i64 -1
  store %struct.ref_s* %add.ptr58, %struct.ref_s** %p57, align 8, !tbaa !5
  br label %if.end.63

if.else:                                          ; preds = %if.end.15
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack59 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 25
  %stack60 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack59, i32 0, i32 0
  %p61 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack60, i32 0, i32 0
  %42 = load %struct.ref_s*, %struct.ref_s** %p61, align 8, !tbaa !25
  %add.ptr62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i64 -3
  store %struct.ref_s* %add.ptr62, %struct.ref_s** %p61, align 8, !tbaa !25
  br label %if.end.63

if.end.63:                                        ; preds = %if.else, %if.then.54
  %43 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %43, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.64

cleanup.64:                                       ; preds = %if.end.63, %cleanup, %if.then
  %44 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #2
  %45 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #2
  %46 = load i32, i32* %retval
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define internal i32 @zfinderrorobject(%struct.gs_context_state_s* %i_ctx_p) #1 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %errobj = alloca %struct.ref_s, align 8
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
  %3 = bitcast %struct.ref_s* %errobj to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #2
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @errorexec_find(%struct.gs_context_state_s* %4, %struct.ref_s* %errobj) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else.9

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 2
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %7 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !19
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %7
  br i1 %cmp, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 26
  %stack5 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack4, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack5, i32 0, i32 7
  store i32 2, i32* %requested, align 4, !tbaa !20
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 26
  %stack7 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack6, i32 0, i32 0
  %p8 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack7, i32 0, i32 0
  store %struct.ref_s* %9, %struct.ref_s** %p8, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -1
  %12 = bitcast %struct.ref_s* %arrayidx to i8*
  %13 = bitcast %struct.ref_s* %errobj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 16, i32 8, i1 false), !tbaa.struct !29
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  store i16 1, i16* %boolval, align 2, !tbaa !21
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 256, i16* %type_attrs, align 2, !tbaa !22
  br label %if.end.31

if.else.9:                                        ; preds = %entry
  br label %do.body.10

do.body.10:                                       ; preds = %if.else.9
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 1
  store %struct.ref_s* %add.ptr11, %struct.ref_s** %op, align 8, !tbaa !1
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack12 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 26
  %stack13 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack12, i32 0, i32 0
  %top14 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack13, i32 0, i32 2
  %18 = load %struct.ref_s*, %struct.ref_s** %top14, align 8, !tbaa !19
  %cmp15 = icmp ugt %struct.ref_s* %add.ptr11, %18
  br i1 %cmp15, label %if.then.16, label %if.else.20

if.then.16:                                       ; preds = %do.body.10
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack17 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 26
  %stack18 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack17, i32 0, i32 0
  %requested19 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack18, i32 0, i32 7
  store i32 1, i32* %requested19, align 4, !tbaa !20
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.20:                                       ; preds = %do.body.10
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack21 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 26
  %stack22 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack21, i32 0, i32 0
  %p23 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack22, i32 0, i32 0
  store %struct.ref_s* %20, %struct.ref_s** %p23, align 8, !tbaa !5
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.20
  br label %do.cond.25

do.cond.25:                                       ; preds = %if.end.24
  br label %do.end.26

do.end.26:                                        ; preds = %do.cond.25
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 1
  %boolval28 = bitcast %union.v* %value27 to i16*
  store i16 0, i16* %boolval28, align 2, !tbaa !21
  %23 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %type_attrs30 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas29, i32 0, i32 0
  store i16 256, i16* %type_attrs30, align 2, !tbaa !22
  br label %if.end.31

if.end.31:                                        ; preds = %do.end.26, %do.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.31, %if.then.16, %if.then.3
  %24 = bitcast %struct.ref_s* %errobj to i8*
  call void @llvm.lifetime.end(i64 16, i8* %24) #2
  %25 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @interp_exit(%struct.gs_context_state_s* %i_ctx_p) #1 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  ret i32 -102
}

; Function Attrs: nounwind uwtable
define internal i32 @oparray_pop(%struct.gs_context_state_s* %i_ctx_p) #1 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %1 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !25
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i64 -4
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p, align 8, !tbaa !25
  ret i32 14
}

; Function Attrs: nounwind uwtable
define internal i32 @errorexec_pop(%struct.gs_context_state_s* %i_ctx_p) #1 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %1 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !25
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i64 -2
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p, align 8, !tbaa !25
  ret i32 14
}

; Function Attrs: nounwind uwtable
define i32 @gs_interp_init(%struct.gs_context_state_s** %pi_ctx_p, %struct.ref_s* %psystem_dict, %struct.gs_dual_memory_s* %dmem) #1 {
entry:
  %pi_ctx_p.addr = alloca %struct.gs_context_state_s**, align 8
  %psystem_dict.addr = alloca %struct.ref_s*, align 8
  %dmem.addr = alloca %struct.gs_dual_memory_s*, align 8
  %pcst = alloca %struct.gs_context_state_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_context_state_s** %pi_ctx_p, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %psystem_dict, %struct.ref_s** %psystem_dict.addr, align 8, !tbaa !1
  store %struct.gs_dual_memory_s* %dmem, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_context_state_s** %pcst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  store %struct.gs_context_state_s* null, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.ref_s*, %struct.ref_s** %psystem_dict.addr, align 8, !tbaa !1
  %3 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %call = call i32 @context_state_alloc(%struct.gs_context_state_s** %pcst, %struct.ref_s* %2, %struct.gs_dual_memory_s* %3) #3
  store i32 %call, i32* %code, align 4, !tbaa !27
  %4 = load i32, i32* %code, align 4, !tbaa !27
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %call1 = call i32 @context_state_load(%struct.gs_context_state_s* %5) #3
  store i32 %call1, i32* %code, align 4, !tbaa !27
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %code, align 4, !tbaa !27
  %cmp2 = icmp slt i32 %6, 0
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  %call4 = call i8* @gs_program_name() #3
  %call5 = call i64 @gs_revision_number() #3
  call void @eprintf_program_ident(i8* %call4, i64 %call5) #3
  call void @lprintf_file_and_line(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), i32 303) #3
  %7 = load i32, i32* %code, align 4, !tbaa !27
  %call6 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i32 0, i32 0), i32 %7) #3
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.3, %if.end
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %9 = load %struct.gs_context_state_s**, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_context_state_s* %8, %struct.gs_context_state_s** %9, align 8, !tbaa !1
  %10 = load i32, i32* %code, align 4, !tbaa !27
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #2
  %12 = bitcast %struct.gs_context_state_s** %pcst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  ret i32 %10
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @context_state_alloc(%struct.gs_context_state_s**, %struct.ref_s*, %struct.gs_dual_memory_s*) #0

declare i32 @context_state_load(%struct.gs_context_state_s*) #0

declare void @eprintf_program_ident(i8*, i64) #0

declare i8* @gs_program_name() #0

declare i64 @gs_revision_number() #0

declare void @lprintf_file_and_line(i8*, i32) #0

declare i32 @errprintf_nomem(i8*, ...) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @gs_interp_alloc_stacks(%struct.gs_ref_memory_s* %mem, %struct.gs_context_state_s* %pcst) #1 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %pcst.addr = alloca %struct.gs_context_state_s*, align 8
  %code = alloca i32, align 4
  %smem = alloca %struct.gs_ref_memory_s*, align 8
  %stk = alloca %struct.ref_s, align 8
  %cleanup.dest.slot = alloca i32
  %pos = alloca %struct.ref_stack_s*, align 8
  %pes = alloca %struct.ref_stack_s*, align 8
  %euop = alloca %struct.ref_s, align 8
  %pds = alloca %struct.ref_stack_s*, align 8
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_context_state_s* %pcst, %struct.gs_context_state_s** %pcst.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.gs_ref_memory_s** %smem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_ref_memory_s* %2 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %stable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 3
  %4 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable, align 8, !tbaa !33
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gs_ref_memory_s* %5 to %struct.gs_memory_s*
  %call = call %struct.gs_memory_s* %4(%struct.gs_memory_s* %6) #3
  %7 = bitcast %struct.gs_memory_s* %call to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %7, %struct.gs_ref_memory_s** %smem, align 8, !tbaa !1
  %8 = bitcast %struct.ref_s* %stk to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #2
  %9 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %smem, align 8, !tbaa !1
  %call1 = call i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s* %9, %struct.ref_s* %stk, i32 0, i32 5857, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i32 0, i32 0)) #3
  store i32 %call1, i32* %code, align 4, !tbaa !27
  %10 = load i32, i32* %code, align 4, !tbaa !27
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.37

if.end:                                           ; preds = %entry
  %12 = bitcast %struct.ref_stack_s** %pos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  store %struct.ref_stack_s* %stack, %struct.ref_stack_s** %pos, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %stk, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  store i32 822, i32* %rsize, align 4, !tbaa !28
  %14 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pos, align 8, !tbaa !1
  %15 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %smem, align 8, !tbaa !1
  %call2 = call i32 @ref_stack_init(%struct.ref_stack_s* %14, %struct.ref_s* %stk, i32 10, i32 10, %struct.ref_s* null, %struct.gs_ref_memory_s* %15, %struct.ref_stack_params_s* null) #3
  store i32 %call2, i32* %code, align 4, !tbaa !27
  %16 = load i32, i32* %code, align 4, !tbaa !27
  %cmp3 = icmp slt i32 %16, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %17 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %18 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pos, align 8, !tbaa !1
  call void @ref_stack_set_error_codes(%struct.ref_stack_s* %18, i32 -17, i32 -16) #3
  %19 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pos, align 8, !tbaa !1
  %call6 = call i32 @ref_stack_set_max_count(%struct.ref_stack_s* %19, i64 800) #3
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %stk, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %20 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 822
  store %struct.ref_s* %add.ptr, %struct.ref_s** %refs, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.4
  %21 = bitcast %struct.ref_stack_s** %pos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.37 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %22 = bitcast %struct.ref_stack_s** %pes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #2
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 25
  %stack7 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  store %struct.ref_stack_s* %stack7, %struct.ref_stack_s** %pes, align 8, !tbaa !1
  %24 = bitcast %struct.ref_s* %euop to i8*
  call void @llvm.lifetime.start(i64 16, i8* %24) #2
  %tas8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %stk, i32 0, i32 0
  %rsize9 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas8, i32 0, i32 2
  store i32 5013, i32* %rsize9, align 4, !tbaa !28
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %euop, i32 0, i32 1
  %opproc = bitcast %union.v* %value10 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @estack_underflow, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %tas11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %euop, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas11, i32 0, i32 0
  store i16 3968, i16* %type_attrs, align 2, !tbaa !22
  %tas12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %euop, i32 0, i32 0
  %rsize13 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas12, i32 0, i32 2
  store i32 0, i32* %rsize13, align 4, !tbaa !28
  %25 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pes, align 8, !tbaa !1
  %26 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %smem, align 8, !tbaa !1
  %call14 = call i32 @ref_stack_init(%struct.ref_stack_s* %25, %struct.ref_s* %stk, i32 1, i32 10, %struct.ref_s* %euop, %struct.gs_ref_memory_s* %26, %struct.ref_stack_params_s* null) #3
  store i32 %call14, i32* %code, align 4, !tbaa !27
  %27 = load i32, i32* %code, align 4, !tbaa !27
  %cmp15 = icmp slt i32 %27, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %cleanup.cont
  %28 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.22

if.end.17:                                        ; preds = %cleanup.cont
  %29 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pes, align 8, !tbaa !1
  call void @ref_stack_set_error_codes(%struct.ref_stack_s* %29, i32 -104, i32 -5) #3
  %30 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pes, align 8, !tbaa !1
  call void @ref_stack_allow_expansion(%struct.ref_stack_s* %30, i32 0) #3
  %31 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pes, align 8, !tbaa !1
  %call18 = call i32 @ref_stack_set_max_count(%struct.ref_stack_s* %31, i64 5000) #3
  %value19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %stk, i32 0, i32 1
  %refs20 = bitcast %union.v* %value19 to %struct.ref_s**
  %32 = load %struct.ref_s*, %struct.ref_s** %refs20, align 8, !tbaa !1
  %add.ptr21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 5013
  store %struct.ref_s* %add.ptr21, %struct.ref_s** %refs20, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.22

cleanup.22:                                       ; preds = %if.end.17, %if.then.16
  %33 = bitcast %struct.ref_s* %euop to i8*
  call void @llvm.lifetime.end(i64 16, i8* %33) #2
  %34 = bitcast %struct.ref_stack_s** %pes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #2
  %cleanup.dest.24 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.24, label %cleanup.37 [
    i32 0, label %cleanup.cont.25
  ]

cleanup.cont.25:                                  ; preds = %cleanup.22
  %35 = bitcast %struct.ref_stack_s** %pds to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #2
  %36 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %36, i32 0, i32 24
  %stack26 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 0
  store %struct.ref_stack_s* %stack26, %struct.ref_stack_s** %pds, align 8, !tbaa !1
  %tas27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %stk, i32 0, i32 0
  %rsize28 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas27, i32 0, i32 2
  store i32 22, i32* %rsize28, align 4, !tbaa !28
  %37 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pds, align 8, !tbaa !1
  %38 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %smem, align 8, !tbaa !1
  %call29 = call i32 @ref_stack_init(%struct.ref_stack_s* %37, %struct.ref_s* %stk, i32 0, i32 0, %struct.ref_s* null, %struct.gs_ref_memory_s* %38, %struct.ref_stack_params_s* null) #3
  store i32 %call29, i32* %code, align 4, !tbaa !27
  %39 = load i32, i32* %code, align 4, !tbaa !27
  %cmp30 = icmp slt i32 %39, 0
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %cleanup.cont.25
  %40 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.34

if.end.32:                                        ; preds = %cleanup.cont.25
  %41 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pds, align 8, !tbaa !1
  call void @ref_stack_set_error_codes(%struct.ref_stack_s* %41, i32 -4, i32 -3) #3
  %42 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pds, align 8, !tbaa !1
  %call33 = call i32 @ref_stack_set_max_count(%struct.ref_stack_s* %42, i64 20) #3
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.34

cleanup.34:                                       ; preds = %if.end.32, %if.then.31
  %43 = bitcast %struct.ref_stack_s** %pds to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #2
  %cleanup.dest.35 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.35, label %cleanup.37 [
    i32 0, label %cleanup.cont.36
  ]

cleanup.cont.36:                                  ; preds = %cleanup.34
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.37

cleanup.37:                                       ; preds = %cleanup.cont.36, %cleanup.34, %cleanup.22, %cleanup, %if.then
  %44 = bitcast %struct.ref_s* %stk to i8*
  call void @llvm.lifetime.end(i64 16, i8* %44) #2
  %45 = bitcast %struct.gs_ref_memory_s** %smem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #2
  %46 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #2
  %47 = load i32, i32* %retval
  ret i32 %47
}

declare i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s*, %struct.ref_s*, i32, i32, i8*) #0

declare i32 @ref_stack_init(%struct.ref_stack_s*, %struct.ref_s*, i32, i32, %struct.ref_s*, %struct.gs_ref_memory_s*, %struct.ref_stack_params_s*) #0

declare void @ref_stack_set_error_codes(%struct.ref_stack_s*, i32, i32) #0

declare i32 @ref_stack_set_max_count(%struct.ref_stack_s*, i64) #0

; Function Attrs: nounwind uwtable
define internal i32 @estack_underflow(%struct.gs_context_state_s* %i_ctx_p) #1 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  ret i32 -104
}

declare void @ref_stack_allow_expansion(%struct.ref_stack_s*, i32) #0

; Function Attrs: nounwind uwtable
define void @gs_interp_free_stacks(%struct.gs_ref_memory_s* %smem, %struct.gs_context_state_s* %pcst) #1 {
entry:
  %smem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %pcst.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_ref_memory_s* %smem, %struct.gs_ref_memory_s** %smem.addr, align 8, !tbaa !1
  store %struct.gs_context_state_s* %pcst, %struct.gs_context_state_s** %pcst.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 24
  %stack = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 0
  call void @ref_stack_release(%struct.ref_stack_s* %stack) #3
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  call void @ref_stack_release(%struct.ref_stack_s* %stack1) #3
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  call void @ref_stack_release(%struct.ref_stack_s* %stack2) #3
  ret void
}

declare void @ref_stack_release(%struct.ref_stack_s*) #0

; Function Attrs: nounwind uwtable
define void @gs_interp_reset(%struct.gs_context_state_s* %i_ctx_p) #1 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %call = call i32 @ref_stack_count(%struct.ref_stack_s* %stack2) #3
  call void @ref_stack_pop(%struct.ref_stack_s* %stack, i32 %call) #3
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 25
  %stack3 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %3, i32 0, i32 25
  %stack5 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack4, i32 0, i32 0
  %call6 = call i32 @ref_stack_count(%struct.ref_stack_s* %stack5) #3
  call void @ref_stack_pop(%struct.ref_stack_s* %stack3, i32 %call6) #3
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 25
  %stack8 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack7, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 0
  %5 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !25
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p, align 8, !tbaa !25
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack9 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 25
  %stack10 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack9, i32 0, i32 0
  %p11 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack10, i32 0, i32 0
  %7 = load %struct.ref_s*, %struct.ref_s** %p11, align 8, !tbaa !25
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %opproc = bitcast %union.v* %value to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @interp_exit, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack12 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 25
  %stack13 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack12, i32 0, i32 0
  %p14 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack13, i32 0, i32 0
  %9 = load %struct.ref_s*, %struct.ref_s** %p14, align 8, !tbaa !25
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3968, i16* %type_attrs, align 2, !tbaa !22
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack15 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 25
  %stack16 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack15, i32 0, i32 0
  %p17 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack16, i32 0, i32 0
  %11 = load %struct.ref_s*, %struct.ref_s** %p17, align 8, !tbaa !25
  %tas18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas18, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !28
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 24
  %stack19 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 0
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack20 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 24
  %stack21 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack20, i32 0, i32 0
  %call22 = call i32 @ref_stack_count(%struct.ref_stack_s* %stack21) #3
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack23 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 24
  %min_size = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack23, i32 0, i32 1
  %15 = load i32, i32* %min_size, align 4, !tbaa !36
  %sub = sub i32 %call22, %15
  call void @ref_stack_pop(%struct.ref_stack_s* %stack19, i32 %sub) #3
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack24 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 24
  call void @dstack_set_top(%struct.dict_stack_s* %dict_stack24) #3
  ret void
}

declare void @ref_stack_pop(%struct.ref_stack_s*, i32) #0

declare i32 @ref_stack_count(%struct.ref_stack_s*) #0

declare void @dstack_set_top(%struct.dict_stack_s*) #0

; Function Attrs: nounwind uwtable
define void @gs_interp_make_oper(%struct.ref_s* %opref, i32 (%struct.gs_context_state_s*)* %proc, i32 %idx) #1 {
entry:
  %opref.addr = alloca %struct.ref_s*, align 8
  %proc.addr = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %idx.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.ref_s* %opref, %struct.ref_s** %opref.addr, align 8, !tbaa !1
  store i32 (%struct.gs_context_state_s*)* %proc, i32 (%struct.gs_context_state_s*)** %proc.addr, align 8, !tbaa !1
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !27
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 10, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !27
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %proc.addr, align 8, !tbaa !1
  %3 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [12 x %struct.op_def], [12 x %struct.op_def]* @interp1_op_defs, i32 0, i64 %idxprom
  %proc1 = getelementptr inbounds %struct.op_def, %struct.op_def* %arrayidx, i32 0, i32 1
  %4 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %proc1, align 8, !tbaa !37
  %cmp2 = icmp ne i32 (%struct.gs_context_state_s*)* %2, %4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %do.body

do.body:                                          ; preds = %for.body
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %6 = load i32, i32* %i, align 4, !tbaa !27
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %land.end
  %7 = load i32, i32* %i, align 4, !tbaa !27
  %cmp3 = icmp sgt i32 %7, 0
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %8 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %proc.addr, align 8, !tbaa !1
  %9 = load %struct.ref_s*, %struct.ref_s** %opref.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %opproc = bitcast %union.v* %value to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* %8, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %10 = load i32, i32* %i, align 4, !tbaa !27
  %sub = sub nsw i32 %10, 1
  %add = add nsw i32 21, %sub
  %shl = shl i32 %add, 8
  %add4 = add nsw i32 %shl, 128
  %conv = trunc i32 %add4 to i16
  %11 = load %struct.ref_s*, %struct.ref_s** %opref.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 %conv, i16* %type_attrs, align 2, !tbaa !22
  %12 = load i32, i32* %i, align 4, !tbaa !27
  %13 = load %struct.ref_s*, %struct.ref_s** %opref.addr, align 8, !tbaa !1
  %tas5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas5, i32 0, i32 2
  store i32 %12, i32* %rsize, align 4, !tbaa !28
  br label %if.end

if.else:                                          ; preds = %for.end
  %14 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %proc.addr, align 8, !tbaa !1
  %15 = load %struct.ref_s*, %struct.ref_s** %opref.addr, align 8, !tbaa !1
  %value6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 1
  %opproc7 = bitcast %union.v* %value6 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* %14, i32 (%struct.gs_context_state_s*)** %opproc7, align 8, !tbaa !1
  %16 = load %struct.ref_s*, %struct.ref_s** %opref.addr, align 8, !tbaa !1
  %tas8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %type_attrs9 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas8, i32 0, i32 0
  store i16 3968, i16* %type_attrs9, align 2, !tbaa !22
  %17 = load i32, i32* %idx.addr, align 4, !tbaa !27
  %18 = load %struct.ref_s*, %struct.ref_s** %opref.addr, align 8, !tbaa !1
  %tas10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %rsize11 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas10, i32 0, i32 2
  store i32 %17, i32* %rsize11, align 4, !tbaa !28
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #2
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @interp_reclaim(%struct.gs_context_state_s** %pi_ctx_p, i32 %space) #1 {
entry:
  %pi_ctx_p.addr = alloca %struct.gs_context_state_s**, align 8
  %space.addr = alloca i32, align 4
  %i_ctx_p = alloca %struct.gs_context_state_s*, align 8
  %ctx_root = alloca %struct.gs_gc_root_s, align 8
  %code = alloca i32, align 4
  store %struct.gs_context_state_s** %pi_ctx_p, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  store i32 %space, i32* %space.addr, align 4, !tbaa !27
  %0 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s**, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %1, align 8, !tbaa !1
  store %struct.gs_context_state_s* %2, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %3 = bitcast %struct.gs_gc_root_s* %ctx_root to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #2
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %system = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 1
  %6 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system, align 8, !tbaa !39
  %7 = bitcast %struct.gs_ref_memory_s* %6 to %struct.gs_memory_s*
  %8 = load %struct.gs_context_state_s**, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gs_context_state_s** %8 to i8**
  %call = call i32 @gs_register_struct_root(%struct.gs_memory_s* %7, %struct.gs_gc_root_s* %ctx_root, i8** %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0)) #3
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 1
  %reclaim = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory1, i32 0, i32 3
  %11 = load i32 (%struct.gs_dual_memory_s*, i32)*, i32 (%struct.gs_dual_memory_s*, i32)** %reclaim, align 8, !tbaa !41
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 1
  %13 = load i32, i32* %space.addr, align 4, !tbaa !27
  %call3 = call i32 %11(%struct.gs_dual_memory_s* %memory2, i32 %13) #3
  store i32 %call3, i32* %code, align 4, !tbaa !27
  %14 = load %struct.gs_context_state_s**, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %14, align 8, !tbaa !1
  store %struct.gs_context_state_s* %15, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 1
  %spaces5 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory4, i32 0, i32 1
  %memories6 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces5, i32 0, i32 1
  %named7 = bitcast %union.anon* %memories6 to %struct._ssn*
  %system8 = getelementptr inbounds %struct._ssn, %struct._ssn* %named7, i32 0, i32 1
  %17 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system8, align 8, !tbaa !39
  %18 = bitcast %struct.gs_ref_memory_s* %17 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 1
  %unregister_root = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 21
  %19 = load void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)** %unregister_root, align 8, !tbaa !42
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory9 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 1
  %spaces10 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory9, i32 0, i32 1
  %memories11 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces10, i32 0, i32 1
  %named12 = bitcast %union.anon* %memories11 to %struct._ssn*
  %system13 = getelementptr inbounds %struct._ssn, %struct._ssn* %named12, i32 0, i32 1
  %21 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system13, align 8, !tbaa !39
  %22 = bitcast %struct.gs_ref_memory_s* %21 to %struct.gs_memory_s*
  call void %19(%struct.gs_memory_s* %22, %struct.gs_gc_root_s* %ctx_root, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0)) #3
  %23 = load i32, i32* %code, align 4, !tbaa !27
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  %25 = bitcast %struct.gs_gc_root_s* %ctx_root to i8*
  call void @llvm.lifetime.end(i64 32, i8* %25) #2
  %26 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  ret i32 %23
}

declare i32 @gs_register_struct_root(%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8**, i8*) #0

; Function Attrs: nounwind uwtable
define i32 @gs_interpret(%struct.gs_context_state_s** %pi_ctx_p, %struct.ref_s* %pref, i32 %user_errors, i32* %pexit_code, %struct.ref_s* %perror_object) #1 {
entry:
  %pi_ctx_p.addr = alloca %struct.gs_context_state_s**, align 8
  %pref.addr = alloca %struct.ref_s*, align 8
  %user_errors.addr = alloca i32, align 4
  %pexit_code.addr = alloca i32*, align 8
  %perror_object.addr = alloca %struct.ref_s*, align 8
  %i_ctx_p = alloca %struct.gs_context_state_s*, align 8
  %error_root = alloca %struct.gs_gc_root_s, align 8
  %code = alloca i32, align 4
  store %struct.gs_context_state_s** %pi_ctx_p, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  store i32 %user_errors, i32* %user_errors.addr, align 4, !tbaa !27
  store i32* %pexit_code, i32** %pexit_code.addr, align 8, !tbaa !1
  store %struct.ref_s* %perror_object, %struct.ref_s** %perror_object.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s**, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %1, align 8, !tbaa !1
  store %struct.gs_context_state_s* %2, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %3 = bitcast %struct.gs_gc_root_s* %error_root to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #2
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %system = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 1
  %6 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system, align 8, !tbaa !39
  %7 = bitcast %struct.gs_ref_memory_s* %6 to %struct.gs_memory_s*
  %8 = bitcast %struct.ref_s** %perror_object.addr to i8**
  %call = call i32 @gs_register_ref_root(%struct.gs_memory_s* %7, %struct.gs_gc_root_s* %error_root, i8** %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0)) #3
  %9 = load %struct.gs_context_state_s**, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  %10 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %11 = load i32, i32* %user_errors.addr, align 4, !tbaa !27
  %12 = load i32*, i32** %pexit_code.addr, align 8, !tbaa !1
  %13 = load %struct.ref_s*, %struct.ref_s** %perror_object.addr, align 8, !tbaa !1
  %call1 = call i32 @gs_call_interp(%struct.gs_context_state_s** %9, %struct.ref_s* %10, i32 %11, i32* %12, %struct.ref_s* %13) #3
  store i32 %call1, i32* %code, align 4, !tbaa !27
  %14 = load %struct.gs_context_state_s**, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %14, align 8, !tbaa !1
  store %struct.gs_context_state_s* %15, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 1
  %spaces3 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory2, i32 0, i32 1
  %memories4 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces3, i32 0, i32 1
  %named5 = bitcast %union.anon* %memories4 to %struct._ssn*
  %system6 = getelementptr inbounds %struct._ssn, %struct._ssn* %named5, i32 0, i32 1
  %17 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system6, align 8, !tbaa !39
  %18 = bitcast %struct.gs_ref_memory_s* %17 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 1
  %unregister_root = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 21
  %19 = load void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)** %unregister_root, align 8, !tbaa !42
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 1
  %spaces8 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory7, i32 0, i32 1
  %memories9 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces8, i32 0, i32 1
  %named10 = bitcast %union.anon* %memories9 to %struct._ssn*
  %system11 = getelementptr inbounds %struct._ssn, %struct._ssn* %named10, i32 0, i32 1
  %21 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system11, align 8, !tbaa !39
  %22 = bitcast %struct.gs_ref_memory_s* %21 to %struct.gs_memory_s*
  call void %19(%struct.gs_memory_s* %22, %struct.gs_gc_root_s* %error_root, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0)) #3
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  call void @set_gc_signal(%struct.gs_context_state_s* %23, i32* null, i32 0) #3
  %24 = load i32, i32* %code, align 4, !tbaa !27
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast %struct.gs_gc_root_s* %error_root to i8*
  call void @llvm.lifetime.end(i64 32, i8* %26) #2
  %27 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  ret i32 %24
}

declare i32 @gs_register_ref_root(%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8**, i8*) #0

; Function Attrs: nounwind uwtable
define internal i32 @gs_call_interp(%struct.gs_context_state_s** %pi_ctx_p, %struct.ref_s* %pref, i32 %user_errors, i32* %pexit_code, %struct.ref_s* %perror_object) #1 {
entry:
  %retval = alloca i32, align 4
  %pi_ctx_p.addr = alloca %struct.gs_context_state_s**, align 8
  %pref.addr = alloca %struct.ref_s*, align 8
  %user_errors.addr = alloca i32, align 4
  %pexit_code.addr = alloca i32*, align 8
  %perror_object.addr = alloca %struct.ref_s*, align 8
  %epref = alloca %struct.ref_s*, align 8
  %doref = alloca %struct.ref_s, align 8
  %perrordict = alloca %struct.ref_s*, align 8
  %error_name = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %ccode = alloca i32, align 4
  %saref = alloca %struct.ref_s, align 8
  %gc_signal = alloca i32, align 4
  %i_ctx_p = alloca %struct.gs_context_state_s*, align 8
  %epref_root = alloca %struct.gs_gc_root_s, align 8
  %cleanup.dest.slot = alloca i32
  %count = alloca i32, align 4
  %limit = alloca i32, align 4
  %skip = alloca i32, align 4
  %i = alloca i32, align 4
  %ep = alloca %struct.ref_s*, align 8
  store %struct.gs_context_state_s** %pi_ctx_p, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  store i32 %user_errors, i32* %user_errors.addr, align 4, !tbaa !27
  store i32* %pexit_code, i32** %pexit_code.addr, align 8, !tbaa !1
  store %struct.ref_s* %perror_object, %struct.ref_s** %perror_object.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %epref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  store %struct.ref_s* %1, %struct.ref_s** %epref, align 8, !tbaa !1
  %2 = bitcast %struct.ref_s* %doref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #2
  %3 = bitcast %struct.ref_s** %perrordict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast %struct.ref_s* %error_name to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #2
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %ccode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast %struct.ref_s* %saref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #2
  %8 = bitcast i32* %gc_signal to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  store i32 0, i32* %gc_signal, align 4, !tbaa !27
  %9 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.gs_context_state_s**, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %10, align 8, !tbaa !1
  store %struct.gs_context_state_s* %11, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %12 = load i32*, i32** %pexit_code.addr, align 8, !tbaa !1
  store i32 0, i32* %12, align 4, !tbaa !27
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 1
  call void @ialloc_reset_requested(%struct.gs_dual_memory_s* %memory) #3
  br label %again

again:                                            ; preds = %if.end.302, %if.then.257, %if.end.233, %if.then.144, %sw.bb.69, %sw.bb.65, %entry
  %14 = load %struct.ref_s*, %struct.ref_s** %perror_object.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3584, i16* %type_attrs, align 2, !tbaa !22
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 24
  %stack = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 7
  store i32 0, i32* %requested, align 4, !tbaa !43
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %requested2 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1, i32 0, i32 7
  store i32 0, i32* %requested2, align 4, !tbaa !44
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 26
  %stack3 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %requested4 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack3, i32 0, i32 7
  store i32 0, i32* %requested4, align 4, !tbaa !20
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %again
  %18 = load i32, i32* %gc_signal, align 4, !tbaa !27
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = bitcast %struct.gs_gc_root_s* %epref_root to i8*
  call void @llvm.lifetime.start(i64 32, i8* %19) #2
  store i32 0, i32* %gc_signal, align 4, !tbaa !27
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory5, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %system = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 1
  %21 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system, align 8, !tbaa !39
  %22 = bitcast %struct.gs_ref_memory_s* %21 to %struct.gs_memory_s*
  %23 = bitcast %struct.ref_s** %epref to i8**
  %call = call i32 @gs_register_ref_root(%struct.gs_memory_s* %22, %struct.gs_gc_root_s* %epref_root, i8** %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i32 0, i32 0)) #3
  %24 = load %struct.gs_context_state_s**, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  %call6 = call i32 @interp_reclaim(%struct.gs_context_state_s** %24, i32 -1) #3
  store i32 %call6, i32* %code, align 4, !tbaa !27
  %25 = load %struct.gs_context_state_s**, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %25, align 8, !tbaa !1
  store %struct.gs_context_state_s* %26, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %27, i32 0, i32 1
  %spaces8 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory7, i32 0, i32 1
  %memories9 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces8, i32 0, i32 1
  %named10 = bitcast %union.anon* %memories9 to %struct._ssn*
  %system11 = getelementptr inbounds %struct._ssn, %struct._ssn* %named10, i32 0, i32 1
  %28 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system11, align 8, !tbaa !39
  %29 = bitcast %struct.gs_ref_memory_s* %28 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 1
  %unregister_root = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 21
  %30 = load void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)** %unregister_root, align 8, !tbaa !42
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory12 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 1
  %spaces13 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory12, i32 0, i32 1
  %memories14 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces13, i32 0, i32 1
  %named15 = bitcast %union.anon* %memories14 to %struct._ssn*
  %system16 = getelementptr inbounds %struct._ssn, %struct._ssn* %named15, i32 0, i32 1
  %32 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system16, align 8, !tbaa !39
  %33 = bitcast %struct.gs_ref_memory_s* %32 to %struct.gs_memory_s*
  call void %30(%struct.gs_memory_s* %33, %struct.gs_gc_root_s* %epref_root, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i32 0, i32 0)) #3
  %34 = load i32, i32* %code, align 4, !tbaa !27
  %cmp = icmp slt i32 %34, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %35 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %36 = bitcast %struct.gs_gc_root_s* %epref_root to i8*
  call void @llvm.lifetime.end(i64 32, i8* %36) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.303 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %37 = load %struct.gs_context_state_s**, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  %38 = load %struct.ref_s*, %struct.ref_s** %epref, align 8, !tbaa !1
  %39 = load %struct.ref_s*, %struct.ref_s** %perror_object.addr, align 8, !tbaa !1
  %call17 = call i32 @interp(%struct.gs_context_state_s** %37, %struct.ref_s* %38, %struct.ref_s* %39) #3
  store i32 %call17, i32* %code, align 4, !tbaa !27
  %40 = load %struct.gs_context_state_s**, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %40, align 8, !tbaa !1
  store %struct.gs_context_state_s* %41, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %42 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %error_object = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %42, i32 0, i32 10
  %tas18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %error_object, i32 0, i32 0
  %type_attrs19 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas18, i32 0, i32 0
  %43 = bitcast i16* %type_attrs19 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %43, i64 1
  %44 = load i8, i8* %arrayidx, align 1, !tbaa !23
  %conv = zext i8 %44 to i32
  %cmp20 = icmp eq i32 %conv, 0
  br i1 %cmp20, label %if.end.27, label %if.then.22

if.then.22:                                       ; preds = %while.end
  %45 = load %struct.ref_s*, %struct.ref_s** %perror_object.addr, align 8, !tbaa !1
  %46 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %error_object23 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %46, i32 0, i32 10
  %47 = bitcast %struct.ref_s* %45 to i8*
  %48 = bitcast %struct.ref_s* %error_object23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 16, i32 8, i1 false), !tbaa.struct !29
  %49 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %error_object24 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %49, i32 0, i32 10
  %tas25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %error_object24, i32 0, i32 0
  %type_attrs26 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas25, i32 0, i32 0
  store i16 0, i16* %type_attrs26, align 2, !tbaa !22
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.22, %while.end
  %50 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  call void @set_gc_signal(%struct.gs_context_state_s* %50, i32* %gc_signal, i32 1) #3
  %51 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack28 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %51, i32 0, i32 25
  %stack29 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack28, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack29, i32 0, i32 0
  %52 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !25
  %53 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack30 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %53, i32 0, i32 25
  %stack31 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack30, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack31, i32 0, i32 1
  %54 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !45
  %cmp32 = icmp ult %struct.ref_s* %52, %54
  br i1 %cmp32, label %if.then.34, label %if.end.41

if.then.34:                                       ; preds = %if.end.27
  %55 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack35 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %55, i32 0, i32 25
  %stack36 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack35, i32 0, i32 0
  %bot37 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack36, i32 0, i32 1
  %56 = load %struct.ref_s*, %struct.ref_s** %bot37, align 8, !tbaa !45
  %57 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack38 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %57, i32 0, i32 25
  %stack39 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack38, i32 0, i32 0
  %p40 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack39, i32 0, i32 0
  store %struct.ref_s* %56, %struct.ref_s** %p40, align 8, !tbaa !25
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.34, %if.end.27
  %58 = load i32, i32* %code, align 4, !tbaa !27
  switch i32 %58, label %sw.epilog [
    i32 -100, label %sw.bb
    i32 -101, label %sw.bb.42
    i32 -102, label %sw.bb.64
    i32 -104, label %sw.bb.65
    i32 -105, label %sw.bb.69
    i32 -106, label %sw.bb.83
    i32 -6, label %sw.bb.83
  ]

sw.bb:                                            ; preds = %if.end.41
  %59 = load i32*, i32** %pexit_code.addr, align 8, !tbaa !1
  store i32 255, i32* %59, align 4, !tbaa !27
  %60 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %60, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.303

sw.bb.42:                                         ; preds = %if.end.41
  %61 = load %struct.ref_s*, %struct.ref_s** %perror_object.addr, align 8, !tbaa !1
  %62 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack43 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %62, i32 0, i32 26
  %stack44 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack43, i32 0, i32 0
  %p45 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack44, i32 0, i32 0
  %63 = load %struct.ref_s*, %struct.ref_s** %p45, align 8, !tbaa !5
  %arrayidx46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %63, i64 -1
  %64 = bitcast %struct.ref_s* %61 to i8*
  %65 = bitcast %struct.ref_s* %arrayidx46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 16, i32 8, i1 false), !tbaa.struct !29
  %66 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack47 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %66, i32 0, i32 26
  %stack48 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack47, i32 0, i32 0
  %p49 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack48, i32 0, i32 0
  %67 = load %struct.ref_s*, %struct.ref_s** %p49, align 8, !tbaa !5
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %68 = load i64, i64* %intval, align 8, !tbaa !30
  %conv50 = trunc i64 %68 to i32
  store i32 %conv50, i32* %code, align 4, !tbaa !27
  %69 = load i32*, i32** %pexit_code.addr, align 8, !tbaa !1
  store i32 %conv50, i32* %69, align 4, !tbaa !27
  %70 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack51 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %70, i32 0, i32 26
  %stack52 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack51, i32 0, i32 0
  %p53 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack52, i32 0, i32 0
  %71 = load %struct.ref_s*, %struct.ref_s** %p53, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %71, i64 -2
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p53, align 8, !tbaa !5
  %72 = load i32, i32* %code, align 4, !tbaa !27
  %cmp54 = icmp eq i32 %72, 0
  br i1 %cmp54, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.42
  br label %cond.end.62

cond.false:                                       ; preds = %sw.bb.42
  %73 = load i32, i32* %code, align 4, !tbaa !27
  %cmp56 = icmp slt i32 %73, 0
  br i1 %cmp56, label %land.lhs.true, label %cond.false.61

land.lhs.true:                                    ; preds = %cond.false
  %74 = load i32, i32* %code, align 4, !tbaa !27
  %cmp58 = icmp sgt i32 %74, -100
  br i1 %cmp58, label %cond.true.60, label %cond.false.61

cond.true.60:                                     ; preds = %land.lhs.true
  %75 = load i32, i32* %code, align 4, !tbaa !27
  br label %cond.end

cond.false.61:                                    ; preds = %land.lhs.true, %cond.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false.61, %cond.true.60
  %cond = phi i32 [ %75, %cond.true.60 ], [ -100, %cond.false.61 ]
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.end, %cond.true
  %cond63 = phi i32 [ -101, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond63, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.303

sw.bb.64:                                         ; preds = %if.end.41
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.303

sw.bb.65:                                         ; preds = %if.end.41
  %76 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack66 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %76, i32 0, i32 25
  %stack67 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack66, i32 0, i32 0
  %call68 = call i32 @ref_stack_pop_block(%struct.ref_stack_s* %stack67) #3
  %77 = load %struct.ref_s*, %struct.ref_s** %perror_object.addr, align 8, !tbaa !1
  %78 = bitcast %struct.ref_s* %doref to i8*
  %79 = bitcast %struct.ref_s* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* %79, i64 16, i32 8, i1 false), !tbaa.struct !29
  store %struct.ref_s* %doref, %struct.ref_s** %epref, align 8, !tbaa !1
  br label %again

sw.bb.69:                                         ; preds = %if.end.41
  %80 = load %struct.gs_context_state_s**, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  %81 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack70 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %81, i32 0, i32 26
  %stack71 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack70, i32 0, i32 0
  %p72 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack71, i32 0, i32 0
  %82 = load %struct.ref_s*, %struct.ref_s** %p72, align 8, !tbaa !5
  %value73 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %82, i32 0, i32 1
  %intval74 = bitcast %union.v* %value73 to i64*
  %83 = load i64, i64* %intval74, align 8, !tbaa !30
  %cmp75 = icmp eq i64 %83, 2
  %cond77 = select i1 %cmp75, i32 8, i32 12
  %call78 = call i32 @interp_reclaim(%struct.gs_context_state_s** %80, i32 %cond77) #3
  store i32 %call78, i32* %code, align 4, !tbaa !27
  %84 = load %struct.gs_context_state_s**, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  %85 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %84, align 8, !tbaa !1
  store %struct.gs_context_state_s* %85, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %value79 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %doref, i32 0, i32 1
  %opproc = bitcast %union.v* %value79 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @zpop, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %tas80 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %doref, i32 0, i32 0
  %type_attrs81 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas80, i32 0, i32 0
  store i16 3968, i16* %type_attrs81, align 2, !tbaa !22
  %tas82 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %doref, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas82, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !28
  store %struct.ref_s* %doref, %struct.ref_s** %epref, align 8, !tbaa !1
  br label %again

sw.bb.83:                                         ; preds = %if.end.41, %if.end.41
  %86 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %86, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.303

sw.epilog:                                        ; preds = %if.end.41
  %87 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack84 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %87, i32 0, i32 26
  %stack85 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack84, i32 0, i32 0
  %p86 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack85, i32 0, i32 0
  %88 = load %struct.ref_s*, %struct.ref_s** %p86, align 8, !tbaa !5
  %89 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack87 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %89, i32 0, i32 26
  %stack88 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack87, i32 0, i32 0
  %bot89 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack88, i32 0, i32 1
  %90 = load %struct.ref_s*, %struct.ref_s** %bot89, align 8, !tbaa !24
  %add.ptr90 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %90, i64 -1
  %cmp91 = icmp ult %struct.ref_s* %88, %add.ptr90
  br i1 %cmp91, label %if.then.93, label %if.end.101

if.then.93:                                       ; preds = %sw.epilog
  %91 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack94 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %91, i32 0, i32 26
  %stack95 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack94, i32 0, i32 0
  %bot96 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack95, i32 0, i32 1
  %92 = load %struct.ref_s*, %struct.ref_s** %bot96, align 8, !tbaa !24
  %add.ptr97 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %92, i64 -1
  %93 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack98 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %93, i32 0, i32 26
  %stack99 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack98, i32 0, i32 0
  %p100 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack99, i32 0, i32 0
  store %struct.ref_s* %add.ptr97, %struct.ref_s** %p100, align 8, !tbaa !5
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.93, %sw.epilog
  %94 = load i32, i32* %code, align 4, !tbaa !27
  switch i32 %94, label %sw.epilog.259 [
    i32 -3, label %sw.bb.102
    i32 -4, label %sw.bb.138
    i32 -5, label %sw.bb.147
    i32 -16, label %sw.bb.207
    i32 -17, label %sw.bb.251
  ]

sw.bb.102:                                        ; preds = %if.end.101
  %95 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack103 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %95, i32 0, i32 26
  %stack104 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack103, i32 0, i32 0
  %p105 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack104, i32 0, i32 0
  %96 = load %struct.ref_s*, %struct.ref_s** %p105, align 8, !tbaa !5
  %97 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack106 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %97, i32 0, i32 26
  %stack107 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack106, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack107, i32 0, i32 2
  %98 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !19
  %cmp108 = icmp uge %struct.ref_s* %96, %98
  br i1 %cmp108, label %if.then.110, label %if.end.118

if.then.110:                                      ; preds = %sw.bb.102
  %99 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack111 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %99, i32 0, i32 26
  %stack112 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack111, i32 0, i32 0
  %call113 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack112, i32 1) #3
  store i32 %call113, i32* %ccode, align 4, !tbaa !27
  %cmp114 = icmp slt i32 %call113, 0
  br i1 %cmp114, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %if.then.110
  %100 = load i32, i32* %ccode, align 4, !tbaa !27
  store i32 %100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.303

if.end.117:                                       ; preds = %if.then.110
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %sw.bb.102
  %101 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %102 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack119 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %102, i32 0, i32 24
  %stack120 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack119, i32 0, i32 0
  %103 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack121 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %103, i32 0, i32 24
  %min_size = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack121, i32 0, i32 1
  %104 = load i32, i32* %min_size, align 4, !tbaa !36
  %call122 = call i32 @copy_stack(%struct.gs_context_state_s* %101, %struct.ref_stack_s* %stack120, i32 %104, %struct.ref_s* %saref) #3
  store i32 %call122, i32* %ccode, align 4, !tbaa !27
  %105 = load i32, i32* %ccode, align 4, !tbaa !27
  %cmp123 = icmp slt i32 %105, 0
  br i1 %cmp123, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %if.end.118
  %106 = load i32, i32* %ccode, align 4, !tbaa !27
  store i32 %106, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.303

if.end.126:                                       ; preds = %if.end.118
  %107 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack127 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %107, i32 0, i32 24
  %stack128 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack127, i32 0, i32 0
  %108 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack129 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %108, i32 0, i32 24
  %stack130 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack129, i32 0, i32 0
  %call131 = call i32 @ref_stack_count(%struct.ref_stack_s* %stack130) #3
  %109 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack132 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %109, i32 0, i32 24
  %min_size133 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack132, i32 0, i32 1
  %110 = load i32, i32* %min_size133, align 4, !tbaa !36
  %sub = sub i32 %call131, %110
  call void @ref_stack_pop(%struct.ref_stack_s* %stack128, i32 %sub) #3
  %111 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack134 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %111, i32 0, i32 24
  call void @dstack_set_top(%struct.dict_stack_s* %dict_stack134) #3
  %112 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack135 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %112, i32 0, i32 26
  %stack136 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack135, i32 0, i32 0
  %p137 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack136, i32 0, i32 0
  %113 = load %struct.ref_s*, %struct.ref_s** %p137, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %113, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p137, align 8, !tbaa !5
  %114 = bitcast %struct.ref_s* %incdec.ptr to i8*
  %115 = bitcast %struct.ref_s* %saref to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %114, i8* %115, i64 16, i32 8, i1 false), !tbaa.struct !29
  br label %sw.epilog.259

sw.bb.138:                                        ; preds = %if.end.101
  %116 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack139 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %116, i32 0, i32 24
  %stack140 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack139, i32 0, i32 0
  %call141 = call i32 @ref_stack_pop_block(%struct.ref_stack_s* %stack140) #3
  %cmp142 = icmp sge i32 %call141, 0
  br i1 %cmp142, label %if.then.144, label %if.end.146

if.then.144:                                      ; preds = %sw.bb.138
  %117 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack145 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %117, i32 0, i32 24
  call void @dstack_set_top(%struct.dict_stack_s* %dict_stack145) #3
  %118 = load %struct.ref_s*, %struct.ref_s** %perror_object.addr, align 8, !tbaa !1
  %119 = bitcast %struct.ref_s* %doref to i8*
  %120 = bitcast %struct.ref_s* %118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %119, i8* %120, i64 16, i32 8, i1 false), !tbaa.struct !29
  store %struct.ref_s* %doref, %struct.ref_s** %epref, align 8, !tbaa !1
  br label %again

if.end.146:                                       ; preds = %sw.bb.138
  br label %sw.epilog.259

sw.bb.147:                                        ; preds = %if.end.101
  %121 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack148 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %121, i32 0, i32 26
  %stack149 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack148, i32 0, i32 0
  %p150 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack149, i32 0, i32 0
  %122 = load %struct.ref_s*, %struct.ref_s** %p150, align 8, !tbaa !5
  %123 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack151 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %123, i32 0, i32 26
  %stack152 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack151, i32 0, i32 0
  %top153 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack152, i32 0, i32 2
  %124 = load %struct.ref_s*, %struct.ref_s** %top153, align 8, !tbaa !19
  %cmp154 = icmp uge %struct.ref_s* %122, %124
  br i1 %cmp154, label %if.then.156, label %if.end.164

if.then.156:                                      ; preds = %sw.bb.147
  %125 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack157 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %125, i32 0, i32 26
  %stack158 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack157, i32 0, i32 0
  %call159 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack158, i32 1) #3
  store i32 %call159, i32* %ccode, align 4, !tbaa !27
  %cmp160 = icmp slt i32 %call159, 0
  br i1 %cmp160, label %if.then.162, label %if.end.163

if.then.162:                                      ; preds = %if.then.156
  %126 = load i32, i32* %ccode, align 4, !tbaa !27
  store i32 %126, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.303

if.end.163:                                       ; preds = %if.then.156
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %sw.bb.147
  %127 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %128 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack165 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %128, i32 0, i32 25
  %stack166 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack165, i32 0, i32 0
  %call167 = call i32 @copy_stack(%struct.gs_context_state_s* %127, %struct.ref_stack_s* %stack166, i32 0, %struct.ref_s* %saref) #3
  store i32 %call167, i32* %ccode, align 4, !tbaa !27
  %129 = load i32, i32* %ccode, align 4, !tbaa !27
  %cmp168 = icmp slt i32 %129, 0
  br i1 %cmp168, label %if.then.170, label %if.end.171

if.then.170:                                      ; preds = %if.end.164
  %130 = load i32, i32* %ccode, align 4, !tbaa !27
  store i32 %130, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.303

if.end.171:                                       ; preds = %if.end.164
  %131 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %131) #2
  %132 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack172 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %132, i32 0, i32 25
  %stack173 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack172, i32 0, i32 0
  %call174 = call i32 @ref_stack_count(%struct.ref_stack_s* %stack173) #3
  store i32 %call174, i32* %count, align 4, !tbaa !27
  %133 = bitcast i32* %limit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %133) #2
  %134 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack175 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %134, i32 0, i32 25
  %stack176 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack175, i32 0, i32 0
  %max_stack = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack176, i32 0, i32 6
  %value177 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %max_stack, i32 0, i32 1
  %intval178 = bitcast %union.v* %value177 to i64*
  %135 = load i64, i64* %intval178, align 8, !tbaa !30
  %conv179 = trunc i64 %135 to i32
  %sub180 = sub i32 %conv179, 20
  store i32 %sub180, i32* %limit, align 4, !tbaa !27
  %136 = load i32, i32* %count, align 4, !tbaa !27
  %137 = load i32, i32* %limit, align 4, !tbaa !27
  %cmp181 = icmp ugt i32 %136, %137
  br i1 %cmp181, label %if.then.183, label %if.end.202

if.then.183:                                      ; preds = %if.end.171
  %138 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %138) #2
  %139 = load i32, i32* %count, align 4, !tbaa !27
  %140 = load i32, i32* %limit, align 4, !tbaa !27
  %sub184 = sub i32 %139, %140
  store i32 %sub184, i32* %skip, align 4, !tbaa !27
  %141 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %141) #2
  %142 = load i32, i32* %skip, align 4, !tbaa !27
  store i32 %142, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.183
  %143 = load i32, i32* %i, align 4, !tbaa !27
  %144 = load i32, i32* %skip, align 4, !tbaa !27
  %add = add nsw i32 %144, 8
  %cmp185 = icmp slt i32 %143, %add
  br i1 %cmp185, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %145 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %145) #2
  %146 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack187 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %146, i32 0, i32 25
  %stack188 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack187, i32 0, i32 0
  %147 = load i32, i32* %i, align 4, !tbaa !27
  %conv189 = sext i32 %147 to i64
  %call190 = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %stack188, i64 %conv189) #3
  store %struct.ref_s* %call190, %struct.ref_s** %ep, align 8, !tbaa !1
  %148 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %tas191 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %148, i32 0, i32 0
  %type_attrs192 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas191, i32 0, i32 0
  %149 = load i16, i16* %type_attrs192, align 2, !tbaa !22
  %conv193 = zext i16 %149 to i32
  %and = and i32 %conv193, 16256
  %cmp194 = icmp eq i32 %and, 3712
  br i1 %cmp194, label %if.then.196, label %if.end.198

if.then.196:                                      ; preds = %for.body
  %150 = load i32, i32* %i, align 4, !tbaa !27
  %add197 = add nsw i32 %150, 1
  store i32 %add197, i32* %skip, align 4, !tbaa !27
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.199

if.end.198:                                       ; preds = %for.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.199

cleanup.199:                                      ; preds = %if.end.198, %if.then.196
  %151 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #2
  %cleanup.dest.200 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.200, label %unreachable [
    i32 0, label %cleanup.cont.201
    i32 7, label %for.end
  ]

cleanup.cont.201:                                 ; preds = %cleanup.199
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.201
  %152 = load i32, i32* %i, align 4, !tbaa !27
  %inc = add nsw i32 %152, 1
  store i32 %inc, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %cleanup.199, %for.cond
  %153 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %154 = load i32, i32* %skip, align 4, !tbaa !27
  call void @pop_estack(%struct.gs_context_state_s* %153, i32 %154) #3
  %155 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #2
  %156 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #2
  br label %if.end.202

if.end.202:                                       ; preds = %for.end, %if.end.171
  %157 = bitcast i32* %limit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #2
  %158 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #2
  %159 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack203 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %159, i32 0, i32 26
  %stack204 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack203, i32 0, i32 0
  %p205 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack204, i32 0, i32 0
  %160 = load %struct.ref_s*, %struct.ref_s** %p205, align 8, !tbaa !5
  %incdec.ptr206 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %160, i32 1
  store %struct.ref_s* %incdec.ptr206, %struct.ref_s** %p205, align 8, !tbaa !5
  %161 = bitcast %struct.ref_s* %incdec.ptr206 to i8*
  %162 = bitcast %struct.ref_s* %saref to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %161, i8* %162, i64 16, i32 8, i1 false), !tbaa.struct !29
  br label %sw.epilog.259

sw.bb.207:                                        ; preds = %if.end.101
  %163 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack208 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %163, i32 0, i32 26
  %stack209 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack208, i32 0, i32 0
  %164 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack210 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %164, i32 0, i32 26
  %stack211 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack210, i32 0, i32 0
  %requested212 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack211, i32 0, i32 7
  %165 = load i32, i32* %requested212, align 4, !tbaa !20
  %call213 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack209, i32 %165) #3
  %cmp214 = icmp sge i32 %call213, 0
  br i1 %cmp214, label %if.then.216, label %if.end.234

if.then.216:                                      ; preds = %sw.bb.207
  %166 = load %struct.ref_s*, %struct.ref_s** %perror_object.addr, align 8, !tbaa !1
  %167 = bitcast %struct.ref_s* %doref to i8*
  %168 = bitcast %struct.ref_s* %166 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %167, i8* %168, i64 16, i32 8, i1 false), !tbaa.struct !29
  %tas217 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %doref, i32 0, i32 0
  %type_attrs218 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas217, i32 0, i32 0
  %169 = load i16, i16* %type_attrs218, align 2, !tbaa !22
  %conv219 = zext i16 %169 to i32
  %and220 = and i32 %conv219, 15552
  %cmp221 = icmp eq i32 %and220, 1216
  br i1 %cmp221, label %if.then.223, label %if.end.233

if.then.223:                                      ; preds = %if.then.216
  %170 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack224 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %170, i32 0, i32 26
  %stack225 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack224, i32 0, i32 0
  %p226 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack225, i32 0, i32 0
  %171 = load %struct.ref_s*, %struct.ref_s** %p226, align 8, !tbaa !5
  %incdec.ptr227 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %171, i32 1
  store %struct.ref_s* %incdec.ptr227, %struct.ref_s** %p226, align 8, !tbaa !5
  %172 = bitcast %struct.ref_s* %incdec.ptr227 to i8*
  %173 = bitcast %struct.ref_s* %doref to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %172, i8* %173, i64 16, i32 8, i1 false), !tbaa.struct !29
  %value228 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %doref, i32 0, i32 1
  %const_refs = bitcast %union.v* %value228 to %struct.ref_s**
  store %struct.ref_s* null, %struct.ref_s** %const_refs, align 8, !tbaa !1
  %tas229 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %doref, i32 0, i32 0
  %type_attrs230 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas229, i32 0, i32 0
  store i16 1248, i16* %type_attrs230, align 2, !tbaa !22
  %tas231 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %doref, i32 0, i32 0
  %rsize232 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas231, i32 0, i32 2
  store i32 0, i32* %rsize232, align 4, !tbaa !28
  br label %if.end.233

if.end.233:                                       ; preds = %if.then.223, %if.then.216
  store %struct.ref_s* %doref, %struct.ref_s** %epref, align 8, !tbaa !1
  br label %again

if.end.234:                                       ; preds = %sw.bb.207
  %174 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %175 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack235 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %175, i32 0, i32 26
  %stack236 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack235, i32 0, i32 0
  %call237 = call i32 @copy_stack(%struct.gs_context_state_s* %174, %struct.ref_stack_s* %stack236, i32 0, %struct.ref_s* %saref) #3
  store i32 %call237, i32* %ccode, align 4, !tbaa !27
  %176 = load i32, i32* %ccode, align 4, !tbaa !27
  %cmp238 = icmp slt i32 %176, 0
  br i1 %cmp238, label %if.then.240, label %if.end.241

if.then.240:                                      ; preds = %if.end.234
  %177 = load i32, i32* %ccode, align 4, !tbaa !27
  store i32 %177, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.303

if.end.241:                                       ; preds = %if.end.234
  %178 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack242 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %178, i32 0, i32 26
  %stack243 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack242, i32 0, i32 0
  %179 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack244 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %179, i32 0, i32 26
  %stack245 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack244, i32 0, i32 0
  %call246 = call i32 @ref_stack_count(%struct.ref_stack_s* %stack245) #3
  call void @ref_stack_pop(%struct.ref_stack_s* %stack243, i32 %call246) #3
  %180 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack247 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %180, i32 0, i32 26
  %stack248 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack247, i32 0, i32 0
  %p249 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack248, i32 0, i32 0
  %181 = load %struct.ref_s*, %struct.ref_s** %p249, align 8, !tbaa !5
  %incdec.ptr250 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %181, i32 1
  store %struct.ref_s* %incdec.ptr250, %struct.ref_s** %p249, align 8, !tbaa !5
  %182 = bitcast %struct.ref_s* %incdec.ptr250 to i8*
  %183 = bitcast %struct.ref_s* %saref to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %182, i8* %183, i64 16, i32 8, i1 false), !tbaa.struct !29
  br label %sw.epilog.259

sw.bb.251:                                        ; preds = %if.end.101
  %184 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack252 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %184, i32 0, i32 26
  %stack253 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack252, i32 0, i32 0
  %call254 = call i32 @ref_stack_pop_block(%struct.ref_stack_s* %stack253) #3
  %cmp255 = icmp sge i32 %call254, 0
  br i1 %cmp255, label %if.then.257, label %if.end.258

if.then.257:                                      ; preds = %sw.bb.251
  %185 = load %struct.ref_s*, %struct.ref_s** %perror_object.addr, align 8, !tbaa !1
  %186 = bitcast %struct.ref_s* %doref to i8*
  %187 = bitcast %struct.ref_s* %185 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %186, i8* %187, i64 16, i32 8, i1 false), !tbaa.struct !29
  store %struct.ref_s* %doref, %struct.ref_s** %epref, align 8, !tbaa !1
  br label %again

if.end.258:                                       ; preds = %sw.bb.251
  br label %sw.epilog.259

sw.epilog.259:                                    ; preds = %if.end.101, %if.end.258, %if.end.241, %if.end.202, %if.end.146, %if.end.126
  %188 = load i32, i32* %user_errors.addr, align 4, !tbaa !27
  %cmp260 = icmp slt i32 %188, 0
  br i1 %cmp260, label %if.then.262, label %if.end.263

if.then.262:                                      ; preds = %sw.epilog.259
  %189 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %189, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.303

if.end.263:                                       ; preds = %sw.epilog.259
  %190 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %191 = load i32, i32* %code, align 4, !tbaa !27
  %call264 = call i32 @gs_errorname(%struct.gs_context_state_s* %190, i32 %191, %struct.ref_s* %error_name) #3
  %cmp265 = icmp slt i32 %call264, 0
  br i1 %cmp265, label %if.then.267, label %if.end.268

if.then.267:                                      ; preds = %if.end.263
  %192 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %192, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.303

if.end.268:                                       ; preds = %if.end.263
  %193 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack269 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %193, i32 0, i32 24
  %system_dict = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack269, i32 0, i32 7
  %call270 = call i32 @dict_find_string(%struct.ref_s* %system_dict, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), %struct.ref_s** %perrordict) #3
  %cmp271 = icmp sle i32 %call270, 0
  br i1 %cmp271, label %if.then.286, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.268
  %194 = load %struct.ref_s*, %struct.ref_s** %perrordict, align 8, !tbaa !1
  %call273 = call i32 @dict_find(%struct.ref_s* %194, %struct.ref_s* %error_name, %struct.ref_s** %epref) #3
  %cmp274 = icmp sle i32 %call273, 0
  br i1 %cmp274, label %land.lhs.true.276, label %if.end.287

land.lhs.true.276:                                ; preds = %lor.lhs.false
  %195 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack277 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %195, i32 0, i32 24
  %system_dict278 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack277, i32 0, i32 7
  %call279 = call i32 @dict_find_string(%struct.ref_s* %system_dict278, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), %struct.ref_s** %perrordict) #3
  %cmp280 = icmp sle i32 %call279, 0
  br i1 %cmp280, label %if.then.286, label %lor.lhs.false.282

lor.lhs.false.282:                                ; preds = %land.lhs.true.276
  %196 = load %struct.ref_s*, %struct.ref_s** %perrordict, align 8, !tbaa !1
  %call283 = call i32 @dict_find(%struct.ref_s* %196, %struct.ref_s* %error_name, %struct.ref_s** %epref) #3
  %cmp284 = icmp sle i32 %call283, 0
  br i1 %cmp284, label %if.then.286, label %if.end.287

if.then.286:                                      ; preds = %lor.lhs.false.282, %land.lhs.true.276, %if.end.268
  %197 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %197, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.303

if.end.287:                                       ; preds = %lor.lhs.false.282, %lor.lhs.false
  %198 = load %struct.ref_s*, %struct.ref_s** %epref, align 8, !tbaa !1
  %199 = bitcast %struct.ref_s* %doref to i8*
  %200 = bitcast %struct.ref_s* %198 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %199, i8* %200, i64 16, i32 8, i1 false), !tbaa.struct !29
  store %struct.ref_s* %doref, %struct.ref_s** %epref, align 8, !tbaa !1
  %201 = load i32, i32* %code, align 4, !tbaa !27
  %cmp288 = icmp eq i32 %201, -6
  br i1 %cmp288, label %if.end.302, label %lor.lhs.false.290

lor.lhs.false.290:                                ; preds = %if.end.287
  %202 = load i32, i32* %code, align 4, !tbaa !27
  %cmp291 = icmp eq i32 %202, -19
  br i1 %cmp291, label %if.end.302, label %if.then.293

if.then.293:                                      ; preds = %lor.lhs.false.290
  %203 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack294 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %203, i32 0, i32 26
  %stack295 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack294, i32 0, i32 0
  %p296 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack295, i32 0, i32 0
  %204 = load %struct.ref_s*, %struct.ref_s** %p296, align 8, !tbaa !5
  %incdec.ptr297 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %204, i32 1
  store %struct.ref_s* %incdec.ptr297, %struct.ref_s** %p296, align 8, !tbaa !5
  %205 = load %struct.ref_s*, %struct.ref_s** %perror_object.addr, align 8, !tbaa !1
  %206 = bitcast %struct.ref_s* %incdec.ptr297 to i8*
  %207 = bitcast %struct.ref_s* %205 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %206, i8* %207, i64 16, i32 8, i1 false), !tbaa.struct !29
  %208 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %209 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack298 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %209, i32 0, i32 26
  %stack299 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack298, i32 0, i32 0
  %p300 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack299, i32 0, i32 0
  %210 = load %struct.ref_s*, %struct.ref_s** %p300, align 8, !tbaa !5
  %call301 = call i32 @errorexec_find(%struct.gs_context_state_s* %208, %struct.ref_s* %210) #3
  br label %if.end.302

if.end.302:                                       ; preds = %if.then.293, %lor.lhs.false.290, %if.end.287
  br label %again

cleanup.303:                                      ; preds = %if.then.286, %if.then.267, %if.then.262, %if.then.240, %if.then.170, %if.then.162, %if.then.125, %if.then.116, %sw.bb.83, %sw.bb.64, %cond.end.62, %sw.bb, %cleanup
  %211 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %211) #2
  %212 = bitcast i32* %gc_signal to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #2
  %213 = bitcast %struct.ref_s* %saref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %213) #2
  %214 = bitcast i32* %ccode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #2
  %215 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #2
  %216 = bitcast %struct.ref_s* %error_name to i8*
  call void @llvm.lifetime.end(i64 16, i8* %216) #2
  %217 = bitcast %struct.ref_s** %perrordict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %217) #2
  %218 = bitcast %struct.ref_s* %doref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %218) #2
  %219 = bitcast %struct.ref_s** %epref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %219) #2
  %220 = load i32, i32* %retval
  ret i32 %220

unreachable:                                      ; preds = %cleanup.199
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @set_gc_signal(%struct.gs_context_state_s* %i_ctx_p, i32* %psignal, i32 %value) #1 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %psignal.addr = alloca i32*, align 8
  %value.addr = alloca i32, align 4
  %stat = alloca %struct.gs_memory_gc_status_s, align 8
  %i = alloca i32, align 4
  %mem = alloca %struct.gs_ref_memory_s*, align 8
  %mem_stable = alloca %struct.gs_ref_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32* %psignal, i32** %psignal.addr, align 8, !tbaa !1
  store i32 %value, i32* %value.addr, align 4, !tbaa !27
  %0 = bitcast %struct.gs_memory_gc_status_s* %stat to i8*
  call void @llvm.lifetime.start(i64 40, i8* %0) #2
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !27
  %conv = sext i32 %2 to i64
  %cmp = icmp ult i64 %conv, 4
  br i1 %cmp, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  %3 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %indexed = bitcast %union.anon* %memories to [4 x %struct.gs_ref_memory_s*]*
  %arrayidx = getelementptr inbounds [4 x %struct.gs_ref_memory_s*], [4 x %struct.gs_ref_memory_s*]* %indexed, i32 0, i64 %idxprom
  %6 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %6, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %7 = bitcast %struct.gs_ref_memory_s** %mem_stable to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %cmp2 = icmp eq %struct.gs_ref_memory_s* %8, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %if.end
  %9 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %10 = bitcast %struct.gs_ref_memory_s* %9 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 1
  %stable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 3
  %11 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable, align 8, !tbaa !33
  %12 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %13 = bitcast %struct.gs_ref_memory_s* %12 to %struct.gs_memory_s*
  %call = call %struct.gs_memory_s* %11(%struct.gs_memory_s* %13) #3
  %14 = bitcast %struct.gs_memory_s* %call to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %14, %struct.gs_ref_memory_s** %mem_stable, align 8, !tbaa !1
  %15 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  call void @gs_memory_gc_status(%struct.gs_ref_memory_s* %15, %struct.gs_memory_gc_status_s* %stat) #3
  %16 = load i32*, i32** %psignal.addr, align 8, !tbaa !1
  %psignal5 = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %stat, i32 0, i32 2
  store i32* %16, i32** %psignal5, align 8, !tbaa !46
  %17 = load i32, i32* %value.addr, align 4, !tbaa !27
  %signal_value = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %stat, i32 0, i32 3
  store i32 %17, i32* %signal_value, align 4, !tbaa !48
  %18 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  call void @gs_memory_set_gc_status(%struct.gs_ref_memory_s* %18, %struct.gs_memory_gc_status_s* %stat) #3
  %19 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem_stable, align 8, !tbaa !1
  %20 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %cmp6 = icmp eq %struct.gs_ref_memory_s* %19, %20
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.cond.4
  br label %for.end

if.end.9:                                         ; preds = %for.cond.4
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %21 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem_stable, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %21, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  br label %for.cond.4

for.end:                                          ; preds = %if.then.8
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %22 = bitcast %struct.gs_ref_memory_s** %mem_stable to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  %23 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc.11
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.11

for.inc.11:                                       ; preds = %cleanup.cont, %cleanup
  %24 = load i32, i32* %i, align 4, !tbaa !27
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  %25 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast %struct.gs_memory_gc_status_s* %stat to i8*
  call void @llvm.lifetime.end(i64 40, i8* %26) #2
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @gs_errorname(%struct.gs_context_state_s* %i_ctx_p, i32 %code, %struct.ref_s* %perror_name) #1 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %code.addr = alloca i32, align 4
  %perror_name.addr = alloca %struct.ref_s*, align 8
  %perrordict = alloca %struct.ref_s*, align 8
  %pErrorNames = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 %code, i32* %code.addr, align 4, !tbaa !27
  store %struct.ref_s* %perror_name, %struct.ref_s** %perror_name.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %perrordict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.ref_s** %pErrorNames to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 24
  %system_dict = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 7
  %call = call i32 @dict_find_string(%struct.ref_s* %system_dict, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), %struct.ref_s** %perrordict) #3
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %3, i32 0, i32 24
  %system_dict2 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack1, i32 0, i32 7
  %call3 = call i32 @dict_find_string(%struct.ref_s* %system_dict2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), %struct.ref_s** %pErrorNames) #3
  %cmp4 = icmp sle i32 %call3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !49
  %6 = bitcast %struct.gs_ref_memory_s* %5 to %struct.gs_memory_s*
  %7 = load %struct.ref_s*, %struct.ref_s** %pErrorNames, align 8, !tbaa !1
  %8 = load i32, i32* %code.addr, align 4, !tbaa !27
  %sub = sub nsw i32 0, %8
  %sub5 = sub nsw i32 %sub, 1
  %conv = sext i32 %sub5 to i64
  %9 = load %struct.ref_s*, %struct.ref_s** %perror_name.addr, align 8, !tbaa !1
  %call6 = call i32 @array_get(%struct.gs_memory_s* %6, %struct.ref_s* %7, i64 %conv, %struct.ref_s* %9) #3
  store i32 %call6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast %struct.ref_s** %pErrorNames to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #2
  %11 = bitcast %struct.ref_s** %perrordict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #0

declare i32 @array_get(%struct.gs_memory_s*, %struct.ref_s*, i64, %struct.ref_s*) #0

; Function Attrs: nounwind uwtable
define i32 @gs_errorinfo_put_string(%struct.gs_context_state_s* %i_ctx_p, i8* %str) #1 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %str.addr = alloca i8*, align 8
  %rstr = alloca %struct.ref_s, align 8
  %pderror = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s* %rstr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %1 = bitcast %struct.ref_s** %pderror to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !49
  %call = call i32 @string_to_ref(i8* %3, %struct.ref_s* %rstr, %struct.gs_ref_memory_s* %5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i32 0, i32 0)) #3
  store i32 %call, i32* %code, align 4, !tbaa !27
  %6 = load i32, i32* %code, align 4, !tbaa !27
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 24
  %system_dict = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 7
  %call1 = call i32 @dict_find_string(%struct.ref_s* %system_dict, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), %struct.ref_s** %pderror) #3
  %cmp2 = icmp sle i32 %call1, 0
  br i1 %cmp2, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load %struct.ref_s*, %struct.ref_s** %pderror, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %10 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx, align 1, !tbaa !23
  %conv = zext i8 %11 to i32
  %cmp3 = icmp eq i32 %conv, 2
  br i1 %cmp3, label %lor.lhs.false.5, label %if.then.10

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %12 = load %struct.ref_s*, %struct.ref_s** %pderror, align 8, !tbaa !1
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 24
  %call7 = call i32 @dict_put_string(%struct.ref_s* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), %struct.ref_s* %rstr, %struct.dict_stack_s* %dict_stack6) #3
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false.5, %lor.lhs.false, %if.end
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %lor.lhs.false.5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.10, %if.then
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  %15 = bitcast %struct.ref_s** %pderror to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  %16 = bitcast %struct.ref_s* %rstr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %16) #2
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i32 @string_to_ref(i8*, %struct.ref_s*, %struct.gs_ref_memory_s*, i8*) #0

declare i32 @dict_put_string(%struct.ref_s*, i8*, %struct.ref_s*, %struct.dict_stack_s*) #0

declare void @ialloc_reset_requested(%struct.gs_dual_memory_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @interp(%struct.gs_context_state_s** %pi_ctx_p, %struct.ref_s* %pref, %struct.ref_s* %perror_object) #1 {
entry:
  %retval = alloca i32, align 4
  %pi_ctx_p.addr = alloca %struct.gs_context_state_s**, align 8
  %pref.addr = alloca %struct.ref_s*, align 8
  %perror_object.addr = alloca %struct.ref_s*, align 8
  %i_ctx_p = alloca %struct.gs_context_state_s*, align 8
  %iref_packed = alloca i16*, align 8
  %icount = alloca i32, align 4
  %iosp = alloca %struct.ref_s*, align 8
  %iesp = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %token = alloca %struct.ref_s, align 8
  %pvalue = alloca %struct.ref_s*, align 8
  %opindex = alloca i32, align 4
  %whichp = alloca %struct.ref_s*, align 8
  %ierror = alloca %struct.interp_error_s, align 8
  %int_nt = alloca %struct.name_table_s*, align 8
  %ticks_left = alloca i32, align 4
  %nidx = alloca i32, align 4
  %htemp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %s = alloca %struct.stream_s*, align 8
  %sstate = alloca %struct.scanner_state_s, align 8
  %fcode = alloca i32, align 4
  %file_token = alloca %struct.ref_s, align 8
  %ss = alloca %struct.stream_s, align 8
  %sstate1364 = alloca %struct.scanner_state_s, align 8
  %size = alloca i32, align 4
  %index = alloca i32, align 4
  %nidx1668 = alloca i32, align 4
  %nidx1716 = alloca i32, align 4
  %htemp1733 = alloca i32, align 4
  store %struct.gs_context_state_s** %pi_ctx_p, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  store %struct.ref_s* %perror_object, %struct.ref_s** %perror_object.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s**, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %1, align 8, !tbaa !1
  store %struct.gs_context_state_s* %2, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %3 = bitcast i16** %iref_packed to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %5 = bitcast %struct.ref_s* %4 to i16*
  store i16* %5, i16** %iref_packed, align 8, !tbaa !1
  %6 = bitcast i32* %icount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  store i32 0, i32* %icount, align 4, !tbaa !27
  %7 = bitcast %struct.ref_s** %iosp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %9 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %9, %struct.ref_s** %iosp, align 8, !tbaa !1
  %10 = bitcast %struct.ref_s** %iesp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p2 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1, i32 0, i32 0
  %12 = load %struct.ref_s*, %struct.ref_s** %p2, align 8, !tbaa !25
  store %struct.ref_s* %12, %struct.ref_s** %iesp, align 8, !tbaa !1
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = bitcast %struct.ref_s* %token to i8*
  call void @llvm.lifetime.start(i64 16, i8* %14) #2
  %15 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  store %struct.ref_s* null, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %16 = bitcast i32* %opindex to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = bitcast %struct.ref_s** %whichp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  %18 = bitcast %struct.interp_error_s* %ierror to i8*
  call void @llvm.lifetime.start(i64 32, i8* %18) #2
  %19 = bitcast %struct.name_table_s** %int_nt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #2
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %21 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !49
  %22 = bitcast %struct.gs_ref_memory_s* %21 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 2
  %23 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !50
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %23, i32 0, i32 16
  %24 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !51
  store %struct.name_table_s* %24, %struct.name_table_s** %int_nt, align 8, !tbaa !1
  %25 = bitcast i32* %ticks_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #2
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %time_slice_ticks = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 22
  %27 = load i32, i32* %time_slice_ticks, align 4, !tbaa !53
  store i32 %27, i32* %ticks_left, align 4, !tbaa !27
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  call void @set_gc_signal(%struct.gs_context_state_s* %28, i32* %ticks_left, i32 -100) #3
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 25
  %current_file = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack3, i32 0, i32 1
  store %struct.ref_s* null, %struct.ref_s** %current_file, align 8, !tbaa !54
  %30 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 25
  %stack5 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack4, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack5, i32 0, i32 2
  %32 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !26
  %cmp = icmp uge %struct.ref_s* %30, %32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %code6 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 -5, i32* %code6, align 4, !tbaa !55
  %line = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 902, i32* %line, align 4, !tbaa !57
  %33 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %obj = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 2
  store %struct.ref_s* %33, %struct.ref_s** %obj, align 8, !tbaa !58
  br label %rwe

if.end:                                           ; preds = %entry
  %34 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %iesp, align 8, !tbaa !1
  %35 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %36 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %37 = bitcast %struct.ref_s* %35 to i8*
  %38 = bitcast %struct.ref_s* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 16, i32 8, i1 false), !tbaa.struct !29
  br label %bot.1858

top.7:                                            ; preds = %if.end.1897, %if.then.1881, %if.then.1866, %if.then.1862, %cleanup.1841, %cleanup.1431, %cleanup.1360, %cond.end.1150, %if.then.1101, %if.then.1040, %if.then.853, %if.then.826, %if.then.804, %cond.end.676, %cond.end.631, %cond.end.586, %cond.end.542, %if.then.498, %if.then.485, %cond.end.292, %cond.end.210, %cond.end.165, %cond.end.99, %cond.end
  br label %do.body

do.body:                                          ; preds = %top.7
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %39 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %39, i64 0
  %40 = load i16, i16* %arrayidx, align 2, !tbaa !21
  %conv = zext i16 %40 to i32
  %shr = ashr i32 %conv, 6
  switch i32 %shr, label %sw.default.1434 [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 18, label %sw.bb.10
    i32 10, label %sw.bb.10
    i32 14, label %sw.bb.10
    i32 74, label %sw.bb.10
    i32 22, label %sw.bb.10
    i32 26, label %sw.bb.10
    i32 17, label %sw.bb.13
    i32 16, label %sw.bb.13
    i32 4, label %sw.bb.13
    i32 6, label %sw.bb.13
    i32 9, label %sw.bb.13
    i32 8, label %sw.bb.13
    i32 13, label %sw.bb.13
    i32 12, label %sw.bb.13
    i32 40, label %sw.bb.13
    i32 42, label %sw.bb.13
    i32 44, label %sw.bb.13
    i32 46, label %sw.bb.13
    i32 48, label %sw.bb.13
    i32 50, label %sw.bb.13
    i32 52, label %sw.bb.13
    i32 56, label %sw.bb.13
    i32 80, label %sw.bb.13
    i32 60, label %sw.bb.13
    i32 64, label %sw.bb.13
    i32 66, label %sw.bb.13
    i32 68, label %sw.bb.13
    i32 70, label %sw.bb.13
    i32 73, label %sw.bb.13
    i32 72, label %sw.bb.13
    i32 21, label %sw.bb.13
    i32 20, label %sw.bb.13
    i32 25, label %sw.bb.13
    i32 24, label %sw.bb.13
    i32 76, label %sw.bb.13
    i32 78, label %sw.bb.13
    i32 32, label %sw.bb.13
    i32 34, label %sw.bb.13
    i32 36, label %sw.bb.13
    i32 38, label %sw.bb.13
    i32 19, label %sw.bb.17
    i32 23, label %sw.bb.17
    i32 27, label %sw.bb.17
    i32 86, label %sw.bb.21
    i32 90, label %sw.bb.56
    i32 94, label %sw.bb.101
    i32 98, label %sw.bb.167
    i32 102, label %sw.bb.212
    i32 106, label %sw.bb.333
    i32 110, label %sw.bb.500
    i32 114, label %sw.bb.544
    i32 118, label %sw.bb.588
    i32 122, label %sw.bb.633
    i32 58, label %sw.bb.678
    i32 82, label %sw.bb.679
    i32 62, label %sw.bb.828
    i32 54, label %sw.bb.962
    i32 15, label %sw.bb.1152
    i32 75, label %sw.bb.1363
  ]

sw.bb:                                            ; preds = %do.end, %do.end
  %code8 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 -100, i32* %code8, align 4, !tbaa !55
  %line9 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 967, i32* %line9, align 4, !tbaa !57
  br label %rwei

sw.bb.10:                                         ; preds = %do.end, %do.end, %do.end, %do.end, %do.end, %do.end
  %code11 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 -7, i32* %code11, align 4, !tbaa !55
  %line12 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 973, i32* %line12, align 4, !tbaa !57
  br label %rwei

sw.bb.13:                                         ; preds = %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end
  br label %do.body.14

do.body.14:                                       ; preds = %sw.bb.13
  br label %do.cond.15

do.cond.15:                                       ; preds = %do.body.14
  br label %do.end.16

do.end.16:                                        ; preds = %do.cond.15
  br label %sw.epilog.1844

sw.bb.17:                                         ; preds = %do.end, %do.end, %do.end
  br label %do.body.18

do.body.18:                                       ; preds = %sw.bb.17
  br label %do.cond.19

do.cond.19:                                       ; preds = %do.body.18
  br label %do.end.20

do.end.20:                                        ; preds = %do.cond.19
  br label %sw.epilog.1844

sw.bb.21:                                         ; preds = %do.end
  br label %x_add

x_add:                                            ; preds = %cleanup.1841, %sw.bb.1047, %sw.bb.21
  br label %do.body.22

do.body.22:                                       ; preds = %x_add
  br label %do.cond.23

do.cond.23:                                       ; preds = %do.body.22
  br label %do.end.24

do.end.24:                                        ; preds = %do.cond.23
  %41 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %42 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack25 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %42, i32 0, i32 26
  %stack26 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack25, i32 0, i32 0
  %p27 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack26, i32 0, i32 0
  store %struct.ref_s* %41, %struct.ref_s** %p27, align 8, !tbaa !5
  %43 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %call = call i32 @zop_add(%struct.gs_context_state_s* %43) #3
  store i32 %call, i32* %code, align 4, !tbaa !27
  %cmp28 = icmp slt i32 %call, 0
  br i1 %cmp28, label %if.then.30, label %if.end.41

if.then.30:                                       ; preds = %do.end.24
  %44 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %45 = bitcast i16* %44 to %struct.ref_s*
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %46 = bitcast i16* %type_attrs to i8*
  %arrayidx31 = getelementptr inbounds i8, i8* %46, i64 1
  %47 = load i8, i8* %arrayidx31, align 1, !tbaa !23
  %conv32 = zext i8 %47 to i32
  %cmp33 = icmp eq i32 %conv32, 13
  br i1 %cmp33, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %if.then.30
  %48 = load i32, i32* %code, align 4, !tbaa !27
  %code36 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 %48, i32* %code36, align 4, !tbaa !55
  %line37 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1022, i32* %line37, align 4, !tbaa !57
  %49 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %obj38 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 2
  store %struct.ref_s* %49, %struct.ref_s** %obj38, align 8, !tbaa !58
  br label %rwe

if.else:                                          ; preds = %if.then.30
  %50 = load i32, i32* %code, align 4, !tbaa !27
  %code39 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 %50, i32* %code39, align 4, !tbaa !55
  %line40 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1022, i32* %line40, align 4, !tbaa !57
  br label %rwei

if.end.41:                                        ; preds = %do.end.24
  %51 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %incdec.ptr42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i32 -1
  store %struct.ref_s* %incdec.ptr42, %struct.ref_s** %iosp, align 8, !tbaa !1
  %52 = load i32, i32* %icount, align 4, !tbaa !27
  %dec = add nsw i32 %52, -1
  store i32 %dec, i32* %icount, align 4, !tbaa !27
  %cmp43 = icmp sle i32 %dec, 0
  br i1 %cmp43, label %if.then.45, label %if.end.51

if.then.45:                                       ; preds = %if.end.41
  %53 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp46 = icmp slt i32 %53, 0
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.then.45
  br label %up

if.end.49:                                        ; preds = %if.then.45
  %54 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %incdec.ptr50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i32 -1
  store %struct.ref_s* %incdec.ptr50, %struct.ref_s** %iesp, align 8, !tbaa !1
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.49, %if.end.41
  %55 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %56 = load i16, i16* %55, align 2, !tbaa !21
  %conv52 = zext i16 %56 to i32
  %cmp53 = icmp sge i32 %conv52, 16384
  br i1 %cmp53, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.51
  %57 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i16, i16* %57, i64 1
  br label %cond.end

cond.false:                                       ; preds = %if.end.51
  %58 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %59 = bitcast i16* %58 to %struct.ref_s*
  %add.ptr55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %59, i64 1
  %60 = bitcast %struct.ref_s* %add.ptr55 to i16*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i16* [ %add.ptr, %cond.true ], [ %60, %cond.false ]
  store i16* %cond, i16** %iref_packed, align 8, !tbaa !1
  br label %top.7

sw.bb.56:                                         ; preds = %do.end
  br label %x_def

x_def:                                            ; preds = %cleanup.1841, %sw.bb.1048, %sw.bb.56
  br label %do.body.57

do.body.57:                                       ; preds = %x_def
  br label %do.cond.58

do.cond.58:                                       ; preds = %do.body.57
  br label %do.end.59

do.end.59:                                        ; preds = %do.cond.58
  %61 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %62 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack60 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %62, i32 0, i32 26
  %stack61 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack60, i32 0, i32 0
  %p62 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack61, i32 0, i32 0
  store %struct.ref_s* %61, %struct.ref_s** %p62, align 8, !tbaa !5
  %63 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %call63 = call i32 @zop_def(%struct.gs_context_state_s* %63) #3
  store i32 %call63, i32* %code, align 4, !tbaa !27
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.then.66, label %if.end.80

if.then.66:                                       ; preds = %do.end.59
  %64 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %65 = bitcast i16* %64 to %struct.ref_s*
  %tas67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %65, i32 0, i32 0
  %type_attrs68 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas67, i32 0, i32 0
  %66 = bitcast i16* %type_attrs68 to i8*
  %arrayidx69 = getelementptr inbounds i8, i8* %66, i64 1
  %67 = load i8, i8* %arrayidx69, align 1, !tbaa !23
  %conv70 = zext i8 %67 to i32
  %cmp71 = icmp eq i32 %conv70, 13
  br i1 %cmp71, label %if.then.73, label %if.else.77

if.then.73:                                       ; preds = %if.then.66
  %68 = load i32, i32* %code, align 4, !tbaa !27
  %code74 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 %68, i32* %code74, align 4, !tbaa !55
  %line75 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1029, i32* %line75, align 4, !tbaa !57
  %69 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %obj76 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 2
  store %struct.ref_s* %69, %struct.ref_s** %obj76, align 8, !tbaa !58
  br label %rwe

if.else.77:                                       ; preds = %if.then.66
  %70 = load i32, i32* %code, align 4, !tbaa !27
  %code78 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 %70, i32* %code78, align 4, !tbaa !55
  %line79 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1029, i32* %line79, align 4, !tbaa !57
  br label %rwei

if.end.80:                                        ; preds = %do.end.59
  %71 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %add.ptr81 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %71, i64 -2
  store %struct.ref_s* %add.ptr81, %struct.ref_s** %iosp, align 8, !tbaa !1
  %72 = load i32, i32* %icount, align 4, !tbaa !27
  %dec82 = add nsw i32 %72, -1
  store i32 %dec82, i32* %icount, align 4, !tbaa !27
  %cmp83 = icmp sle i32 %dec82, 0
  br i1 %cmp83, label %if.then.85, label %if.end.91

if.then.85:                                       ; preds = %if.end.80
  %73 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp86 = icmp slt i32 %73, 0
  br i1 %cmp86, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %if.then.85
  br label %up

if.end.89:                                        ; preds = %if.then.85
  %74 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %incdec.ptr90 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i32 -1
  store %struct.ref_s* %incdec.ptr90, %struct.ref_s** %iesp, align 8, !tbaa !1
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.89, %if.end.80
  %75 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %76 = load i16, i16* %75, align 2, !tbaa !21
  %conv92 = zext i16 %76 to i32
  %cmp93 = icmp sge i32 %conv92, 16384
  br i1 %cmp93, label %cond.true.95, label %cond.false.97

cond.true.95:                                     ; preds = %if.end.91
  %77 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %add.ptr96 = getelementptr inbounds i16, i16* %77, i64 1
  br label %cond.end.99

cond.false.97:                                    ; preds = %if.end.91
  %78 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %79 = bitcast i16* %78 to %struct.ref_s*
  %add.ptr98 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %79, i64 1
  %80 = bitcast %struct.ref_s* %add.ptr98 to i16*
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.false.97, %cond.true.95
  %cond100 = phi i16* [ %add.ptr96, %cond.true.95 ], [ %80, %cond.false.97 ]
  store i16* %cond100, i16** %iref_packed, align 8, !tbaa !1
  br label %top.7

sw.bb.101:                                        ; preds = %do.end
  br label %x_dup

x_dup:                                            ; preds = %cleanup.1841, %sw.bb.1049, %sw.bb.101
  br label %do.body.102

do.body.102:                                      ; preds = %x_dup
  br label %do.cond.103

do.cond.103:                                      ; preds = %do.body.102
  br label %do.end.104

do.end.104:                                       ; preds = %do.cond.103
  %81 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %82 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack105 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %82, i32 0, i32 26
  %stack106 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack105, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack106, i32 0, i32 1
  %83 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !24
  %cmp107 = icmp ult %struct.ref_s* %81, %83
  br i1 %cmp107, label %if.then.109, label %if.end.123

if.then.109:                                      ; preds = %do.end.104
  %84 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %85 = bitcast i16* %84 to %struct.ref_s*
  %tas110 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %85, i32 0, i32 0
  %type_attrs111 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas110, i32 0, i32 0
  %86 = bitcast i16* %type_attrs111 to i8*
  %arrayidx112 = getelementptr inbounds i8, i8* %86, i64 1
  %87 = load i8, i8* %arrayidx112, align 1, !tbaa !23
  %conv113 = zext i8 %87 to i32
  %cmp114 = icmp eq i32 %conv113, 13
  br i1 %cmp114, label %if.then.116, label %if.else.120

if.then.116:                                      ; preds = %if.then.109
  %code117 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 -17, i32* %code117, align 4, !tbaa !55
  %line118 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1035, i32* %line118, align 4, !tbaa !57
  %88 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %obj119 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 2
  store %struct.ref_s* %88, %struct.ref_s** %obj119, align 8, !tbaa !58
  br label %rwe

if.else.120:                                      ; preds = %if.then.109
  %code121 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 -17, i32* %code121, align 4, !tbaa !55
  %line122 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1035, i32* %line122, align 4, !tbaa !57
  br label %rwei

if.end.123:                                       ; preds = %do.end.104
  %89 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %90 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack124 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %90, i32 0, i32 26
  %stack125 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack124, i32 0, i32 0
  %top126 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack125, i32 0, i32 2
  %91 = load %struct.ref_s*, %struct.ref_s** %top126, align 8, !tbaa !19
  %cmp127 = icmp uge %struct.ref_s* %89, %91
  br i1 %cmp127, label %if.then.129, label %if.end.145

if.then.129:                                      ; preds = %if.end.123
  %92 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack130 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %92, i32 0, i32 26
  %stack131 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack130, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack131, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !20
  %93 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %94 = bitcast i16* %93 to %struct.ref_s*
  %tas132 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %94, i32 0, i32 0
  %type_attrs133 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas132, i32 0, i32 0
  %95 = bitcast i16* %type_attrs133 to i8*
  %arrayidx134 = getelementptr inbounds i8, i8* %95, i64 1
  %96 = load i8, i8* %arrayidx134, align 1, !tbaa !23
  %conv135 = zext i8 %96 to i32
  %cmp136 = icmp eq i32 %conv135, 13
  br i1 %cmp136, label %if.then.138, label %if.else.142

if.then.138:                                      ; preds = %if.then.129
  %code139 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 -16, i32* %code139, align 4, !tbaa !55
  %line140 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1038, i32* %line140, align 4, !tbaa !57
  %97 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %obj141 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 2
  store %struct.ref_s* %97, %struct.ref_s** %obj141, align 8, !tbaa !58
  br label %rwe

if.else.142:                                      ; preds = %if.then.129
  %code143 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 -16, i32* %code143, align 4, !tbaa !55
  %line144 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1038, i32* %line144, align 4, !tbaa !57
  br label %rwei

if.end.145:                                       ; preds = %if.end.123
  %98 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %incdec.ptr146 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %98, i32 1
  store %struct.ref_s* %incdec.ptr146, %struct.ref_s** %iosp, align 8, !tbaa !1
  %99 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %100 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %add.ptr147 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %100, i64 -1
  %101 = bitcast %struct.ref_s* %99 to i8*
  %102 = bitcast %struct.ref_s* %add.ptr147 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %101, i8* %102, i64 16, i32 8, i1 false), !tbaa.struct !29
  %103 = load i32, i32* %icount, align 4, !tbaa !27
  %dec148 = add nsw i32 %103, -1
  store i32 %dec148, i32* %icount, align 4, !tbaa !27
  %cmp149 = icmp sle i32 %dec148, 0
  br i1 %cmp149, label %if.then.151, label %if.end.157

if.then.151:                                      ; preds = %if.end.145
  %104 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp152 = icmp slt i32 %104, 0
  br i1 %cmp152, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %if.then.151
  br label %up

if.end.155:                                       ; preds = %if.then.151
  %105 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %incdec.ptr156 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %105, i32 -1
  store %struct.ref_s* %incdec.ptr156, %struct.ref_s** %iesp, align 8, !tbaa !1
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.155, %if.end.145
  %106 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %107 = load i16, i16* %106, align 2, !tbaa !21
  %conv158 = zext i16 %107 to i32
  %cmp159 = icmp sge i32 %conv158, 16384
  br i1 %cmp159, label %cond.true.161, label %cond.false.163

cond.true.161:                                    ; preds = %if.end.157
  %108 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %add.ptr162 = getelementptr inbounds i16, i16* %108, i64 1
  br label %cond.end.165

cond.false.163:                                   ; preds = %if.end.157
  %109 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %110 = bitcast i16* %109 to %struct.ref_s*
  %add.ptr164 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %110, i64 1
  %111 = bitcast %struct.ref_s* %add.ptr164 to i16*
  br label %cond.end.165

cond.end.165:                                     ; preds = %cond.false.163, %cond.true.161
  %cond166 = phi i16* [ %add.ptr162, %cond.true.161 ], [ %111, %cond.false.163 ]
  store i16* %cond166, i16** %iref_packed, align 8, !tbaa !1
  br label %top.7

sw.bb.167:                                        ; preds = %do.end
  br label %x_exch

x_exch:                                           ; preds = %cleanup.1841, %sw.bb.1050, %sw.bb.167
  br label %do.body.168

do.body.168:                                      ; preds = %x_exch
  br label %do.cond.169

do.cond.169:                                      ; preds = %do.body.168
  br label %do.end.170

do.end.170:                                       ; preds = %do.cond.169
  %112 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %113 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack171 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %113, i32 0, i32 26
  %stack172 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack171, i32 0, i32 0
  %bot173 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack172, i32 0, i32 1
  %114 = load %struct.ref_s*, %struct.ref_s** %bot173, align 8, !tbaa !24
  %cmp174 = icmp ule %struct.ref_s* %112, %114
  br i1 %cmp174, label %if.then.176, label %if.end.190

if.then.176:                                      ; preds = %do.end.170
  %115 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %116 = bitcast i16* %115 to %struct.ref_s*
  %tas177 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %116, i32 0, i32 0
  %type_attrs178 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas177, i32 0, i32 0
  %117 = bitcast i16* %type_attrs178 to i8*
  %arrayidx179 = getelementptr inbounds i8, i8* %117, i64 1
  %118 = load i8, i8* %arrayidx179, align 1, !tbaa !23
  %conv180 = zext i8 %118 to i32
  %cmp181 = icmp eq i32 %conv180, 13
  br i1 %cmp181, label %if.then.183, label %if.else.187

if.then.183:                                      ; preds = %if.then.176
  %code184 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 -17, i32* %code184, align 4, !tbaa !55
  %line185 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1046, i32* %line185, align 4, !tbaa !57
  %119 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %obj186 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 2
  store %struct.ref_s* %119, %struct.ref_s** %obj186, align 8, !tbaa !58
  br label %rwe

if.else.187:                                      ; preds = %if.then.176
  %code188 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 -17, i32* %code188, align 4, !tbaa !55
  %line189 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1046, i32* %line189, align 4, !tbaa !57
  br label %rwei

if.end.190:                                       ; preds = %do.end.170
  %120 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %121 = bitcast %struct.ref_s* %token to i8*
  %122 = bitcast %struct.ref_s* %120 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %121, i8* %122, i64 16, i32 8, i1 false), !tbaa.struct !29
  %123 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %124 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %add.ptr191 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %124, i64 -1
  %125 = bitcast %struct.ref_s* %123 to i8*
  %126 = bitcast %struct.ref_s* %add.ptr191 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %125, i8* %126, i64 16, i32 8, i1 false), !tbaa.struct !29
  %127 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %add.ptr192 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %127, i64 -1
  %128 = bitcast %struct.ref_s* %add.ptr192 to i8*
  %129 = bitcast %struct.ref_s* %token to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %128, i8* %129, i64 16, i32 8, i1 false), !tbaa.struct !29
  %130 = load i32, i32* %icount, align 4, !tbaa !27
  %dec193 = add nsw i32 %130, -1
  store i32 %dec193, i32* %icount, align 4, !tbaa !27
  %cmp194 = icmp sle i32 %dec193, 0
  br i1 %cmp194, label %if.then.196, label %if.end.202

if.then.196:                                      ; preds = %if.end.190
  %131 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp197 = icmp slt i32 %131, 0
  br i1 %cmp197, label %if.then.199, label %if.end.200

if.then.199:                                      ; preds = %if.then.196
  br label %up

if.end.200:                                       ; preds = %if.then.196
  %132 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %incdec.ptr201 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %132, i32 -1
  store %struct.ref_s* %incdec.ptr201, %struct.ref_s** %iesp, align 8, !tbaa !1
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.200, %if.end.190
  %133 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %134 = load i16, i16* %133, align 2, !tbaa !21
  %conv203 = zext i16 %134 to i32
  %cmp204 = icmp sge i32 %conv203, 16384
  br i1 %cmp204, label %cond.true.206, label %cond.false.208

cond.true.206:                                    ; preds = %if.end.202
  %135 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %add.ptr207 = getelementptr inbounds i16, i16* %135, i64 1
  br label %cond.end.210

cond.false.208:                                   ; preds = %if.end.202
  %136 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %137 = bitcast i16* %136 to %struct.ref_s*
  %add.ptr209 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %137, i64 1
  %138 = bitcast %struct.ref_s* %add.ptr209 to i16*
  br label %cond.end.210

cond.end.210:                                     ; preds = %cond.false.208, %cond.true.206
  %cond211 = phi i16* [ %add.ptr207, %cond.true.206 ], [ %138, %cond.false.208 ]
  store i16* %cond211, i16** %iref_packed, align 8, !tbaa !1
  br label %top.7

sw.bb.212:                                        ; preds = %do.end
  br label %x_if

x_if:                                             ; preds = %cleanup.1841, %sw.bb.1051, %sw.bb.212
  br label %do.body.213

do.body.213:                                      ; preds = %x_if
  br label %do.cond.214

do.cond.214:                                      ; preds = %do.body.213
  br label %do.end.215

do.end.215:                                       ; preds = %do.cond.214
  %139 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %tas216 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %139, i32 0, i32 0
  %type_attrs217 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas216, i32 0, i32 0
  %140 = load i16, i16* %type_attrs217, align 2, !tbaa !22
  %conv218 = zext i16 %140 to i32
  %and = and i32 %conv218, 15552
  %cmp219 = icmp eq i32 %and, 1216
  br i1 %cmp219, label %if.end.237, label %if.then.221

if.then.221:                                      ; preds = %do.end.215
  %141 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %142 = bitcast i16* %141 to %struct.ref_s*
  %tas222 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %142, i32 0, i32 0
  %type_attrs223 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas222, i32 0, i32 0
  %143 = bitcast i16* %type_attrs223 to i8*
  %arrayidx224 = getelementptr inbounds i8, i8* %143, i64 1
  %144 = load i8, i8* %arrayidx224, align 1, !tbaa !23
  %conv225 = zext i8 %144 to i32
  %cmp226 = icmp eq i32 %conv225, 13
  br i1 %cmp226, label %if.then.228, label %if.else.233

if.then.228:                                      ; preds = %if.then.221
  %145 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %call229 = call i32 @check_proc_failed(%struct.ref_s* %145) #3
  %code230 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 %call229, i32* %code230, align 4, !tbaa !55
  %line231 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1054, i32* %line231, align 4, !tbaa !57
  %146 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %obj232 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 2
  store %struct.ref_s* %146, %struct.ref_s** %obj232, align 8, !tbaa !58
  br label %rwe

if.else.233:                                      ; preds = %if.then.221
  %147 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %call234 = call i32 @check_proc_failed(%struct.ref_s* %147) #3
  %code235 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 %call234, i32* %code235, align 4, !tbaa !55
  %line236 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1054, i32* %line236, align 4, !tbaa !57
  br label %rwei

if.end.237:                                       ; preds = %do.end.215
  %148 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %add.ptr238 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %148, i64 -1
  %tas239 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr238, i32 0, i32 0
  %type_attrs240 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas239, i32 0, i32 0
  %149 = bitcast i16* %type_attrs240 to i8*
  %arrayidx241 = getelementptr inbounds i8, i8* %149, i64 1
  %150 = load i8, i8* %arrayidx241, align 1, !tbaa !23
  %conv242 = zext i8 %150 to i32
  %cmp243 = icmp eq i32 %conv242, 1
  br i1 %cmp243, label %if.end.271, label %if.then.245

if.then.245:                                      ; preds = %if.end.237
  %151 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %152 = bitcast i16* %151 to %struct.ref_s*
  %tas246 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %152, i32 0, i32 0
  %type_attrs247 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas246, i32 0, i32 0
  %153 = bitcast i16* %type_attrs247 to i8*
  %arrayidx248 = getelementptr inbounds i8, i8* %153, i64 1
  %154 = load i8, i8* %arrayidx248, align 1, !tbaa !23
  %conv249 = zext i8 %154 to i32
  %cmp250 = icmp eq i32 %conv249, 13
  br i1 %cmp250, label %if.then.252, label %if.else.262

if.then.252:                                      ; preds = %if.then.245
  %155 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %156 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack253 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %156, i32 0, i32 26
  %stack254 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack253, i32 0, i32 0
  %bot255 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack254, i32 0, i32 1
  %157 = load %struct.ref_s*, %struct.ref_s** %bot255, align 8, !tbaa !24
  %cmp256 = icmp ule %struct.ref_s* %155, %157
  %cond258 = select i1 %cmp256, i32 -17, i32 -20
  %code259 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 %cond258, i32* %code259, align 4, !tbaa !55
  %line260 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1057, i32* %line260, align 4, !tbaa !57
  %158 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %obj261 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 2
  store %struct.ref_s* %158, %struct.ref_s** %obj261, align 8, !tbaa !58
  br label %rwe

if.else.262:                                      ; preds = %if.then.245
  %159 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %160 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack263 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %160, i32 0, i32 26
  %stack264 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack263, i32 0, i32 0
  %bot265 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack264, i32 0, i32 1
  %161 = load %struct.ref_s*, %struct.ref_s** %bot265, align 8, !tbaa !24
  %cmp266 = icmp ule %struct.ref_s* %159, %161
  %cond268 = select i1 %cmp266, i32 -17, i32 -20
  %code269 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 %cond268, i32* %code269, align 4, !tbaa !55
  %line270 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1057, i32* %line270, align 4, !tbaa !57
  br label %rwei

if.end.271:                                       ; preds = %if.end.237
  %162 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %arrayidx272 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %162, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx272, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  %163 = load i16, i16* %boolval, align 2, !tbaa !21
  %tobool = icmp ne i16 %163, 0
  br i1 %tobool, label %if.end.294, label %if.then.273

if.then.273:                                      ; preds = %if.end.271
  %164 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %add.ptr274 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %164, i64 -2
  store %struct.ref_s* %add.ptr274, %struct.ref_s** %iosp, align 8, !tbaa !1
  %165 = load i32, i32* %icount, align 4, !tbaa !27
  %dec275 = add nsw i32 %165, -1
  store i32 %dec275, i32* %icount, align 4, !tbaa !27
  %cmp276 = icmp sle i32 %dec275, 0
  br i1 %cmp276, label %if.then.278, label %if.end.284

if.then.278:                                      ; preds = %if.then.273
  %166 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp279 = icmp slt i32 %166, 0
  br i1 %cmp279, label %if.then.281, label %if.end.282

if.then.281:                                      ; preds = %if.then.278
  br label %up

if.end.282:                                       ; preds = %if.then.278
  %167 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %incdec.ptr283 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %167, i32 -1
  store %struct.ref_s* %incdec.ptr283, %struct.ref_s** %iesp, align 8, !tbaa !1
  br label %if.end.284

if.end.284:                                       ; preds = %if.end.282, %if.then.273
  %168 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %169 = load i16, i16* %168, align 2, !tbaa !21
  %conv285 = zext i16 %169 to i32
  %cmp286 = icmp sge i32 %conv285, 16384
  br i1 %cmp286, label %cond.true.288, label %cond.false.290

cond.true.288:                                    ; preds = %if.end.284
  %170 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %add.ptr289 = getelementptr inbounds i16, i16* %170, i64 1
  br label %cond.end.292

cond.false.290:                                   ; preds = %if.end.284
  %171 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %172 = bitcast i16* %171 to %struct.ref_s*
  %add.ptr291 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %172, i64 1
  %173 = bitcast %struct.ref_s* %add.ptr291 to i16*
  br label %cond.end.292

cond.end.292:                                     ; preds = %cond.false.290, %cond.true.288
  %cond293 = phi i16* [ %add.ptr289, %cond.true.288 ], [ %173, %cond.false.290 ]
  store i16* %cond293, i16** %iref_packed, align 8, !tbaa !1
  br label %top.7

if.end.294:                                       ; preds = %if.end.271
  %174 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %175 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack295 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %175, i32 0, i32 25
  %stack296 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack295, i32 0, i32 0
  %top297 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack296, i32 0, i32 2
  %176 = load %struct.ref_s*, %struct.ref_s** %top297, align 8, !tbaa !26
  %cmp298 = icmp uge %struct.ref_s* %174, %176
  br i1 %cmp298, label %if.then.300, label %if.end.314

if.then.300:                                      ; preds = %if.end.294
  %177 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %178 = bitcast i16* %177 to %struct.ref_s*
  %tas301 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %178, i32 0, i32 0
  %type_attrs302 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas301, i32 0, i32 0
  %179 = bitcast i16* %type_attrs302 to i8*
  %arrayidx303 = getelementptr inbounds i8, i8* %179, i64 1
  %180 = load i8, i8* %arrayidx303, align 1, !tbaa !23
  %conv304 = zext i8 %180 to i32
  %cmp305 = icmp eq i32 %conv304, 13
  br i1 %cmp305, label %if.then.307, label %if.else.311

if.then.307:                                      ; preds = %if.then.300
  %code308 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 -5, i32* %code308, align 4, !tbaa !55
  %line309 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1063, i32* %line309, align 4, !tbaa !57
  %181 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %obj310 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 2
  store %struct.ref_s* %181, %struct.ref_s** %obj310, align 8, !tbaa !58
  br label %rwe

if.else.311:                                      ; preds = %if.then.300
  %code312 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 -5, i32* %code312, align 4, !tbaa !55
  %line313 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1063, i32* %line313, align 4, !tbaa !57
  br label %rwei

if.end.314:                                       ; preds = %if.end.294
  %182 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp315 = icmp sgt i32 %182, 0
  br i1 %cmp315, label %cond.true.317, label %cond.false.329

cond.true.317:                                    ; preds = %if.end.314
  %183 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %184 = load i16, i16* %183, align 2, !tbaa !21
  %conv318 = zext i16 %184 to i32
  %cmp319 = icmp sge i32 %conv318, 16384
  br i1 %cmp319, label %cond.true.321, label %cond.false.323

cond.true.321:                                    ; preds = %cond.true.317
  %185 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %add.ptr322 = getelementptr inbounds i16, i16* %185, i64 1
  br label %cond.end.325

cond.false.323:                                   ; preds = %cond.true.317
  %186 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %187 = bitcast i16* %186 to %struct.ref_s*
  %add.ptr324 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %187, i64 1
  %188 = bitcast %struct.ref_s* %add.ptr324 to i16*
  br label %cond.end.325

cond.end.325:                                     ; preds = %cond.false.323, %cond.true.321
  %cond326 = phi i16* [ %add.ptr322, %cond.true.321 ], [ %188, %cond.false.323 ]
  %189 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %value327 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %189, i32 0, i32 1
  %packed = bitcast %union.v* %value327 to i16**
  store i16* %cond326, i16** %packed, align 8, !tbaa !1
  %190 = load i32, i32* %icount, align 4, !tbaa !27
  %191 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %tas328 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %191, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas328, i32 0, i32 2
  store i32 %190, i32* %rsize, align 4, !tbaa !28
  br label %cond.end.330

cond.false.329:                                   ; preds = %if.end.314
  br label %cond.end.330

cond.end.330:                                     ; preds = %cond.false.329, %cond.end.325
  %cond331 = phi i32 [ %190, %cond.end.325 ], [ 0, %cond.false.329 ]
  %192 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  store %struct.ref_s* %192, %struct.ref_s** %whichp, align 8, !tbaa !1
  %193 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %add.ptr332 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %193, i64 -2
  store %struct.ref_s* %add.ptr332, %struct.ref_s** %iosp, align 8, !tbaa !1
  br label %ifup

sw.bb.333:                                        ; preds = %do.end
  br label %x_ifelse

x_ifelse:                                         ; preds = %cleanup.1841, %sw.bb.1052, %sw.bb.333
  br label %do.body.334

do.body.334:                                      ; preds = %x_ifelse
  br label %do.cond.335

do.cond.335:                                      ; preds = %do.body.334
  br label %do.end.336

do.end.336:                                       ; preds = %do.cond.335
  %194 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %tas337 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %194, i32 0, i32 0
  %type_attrs338 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas337, i32 0, i32 0
  %195 = load i16, i16* %type_attrs338, align 2, !tbaa !22
  %conv339 = zext i16 %195 to i32
  %and340 = and i32 %conv339, 15552
  %cmp341 = icmp eq i32 %and340, 1216
  br i1 %cmp341, label %if.end.359, label %if.then.343

if.then.343:                                      ; preds = %do.end.336
  %196 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %197 = bitcast i16* %196 to %struct.ref_s*
  %tas344 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %197, i32 0, i32 0
  %type_attrs345 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas344, i32 0, i32 0
  %198 = bitcast i16* %type_attrs345 to i8*
  %arrayidx346 = getelementptr inbounds i8, i8* %198, i64 1
  %199 = load i8, i8* %arrayidx346, align 1, !tbaa !23
  %conv347 = zext i8 %199 to i32
  %cmp348 = icmp eq i32 %conv347, 13
  br i1 %cmp348, label %if.then.350, label %if.else.355

if.then.350:                                      ; preds = %if.then.343
  %200 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %call351 = call i32 @check_proc_failed(%struct.ref_s* %200) #3
  %code352 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 %call351, i32* %code352, align 4, !tbaa !55
  %line353 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1071, i32* %line353, align 4, !tbaa !57
  %201 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %obj354 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 2
  store %struct.ref_s* %201, %struct.ref_s** %obj354, align 8, !tbaa !58
  br label %rwe

if.else.355:                                      ; preds = %if.then.343
  %202 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %call356 = call i32 @check_proc_failed(%struct.ref_s* %202) #3
  %code357 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 %call356, i32* %code357, align 4, !tbaa !55
  %line358 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1071, i32* %line358, align 4, !tbaa !57
  br label %rwei

if.end.359:                                       ; preds = %do.end.336
  %203 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %add.ptr360 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %203, i64 -1
  %tas361 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr360, i32 0, i32 0
  %type_attrs362 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas361, i32 0, i32 0
  %204 = load i16, i16* %type_attrs362, align 2, !tbaa !22
  %conv363 = zext i16 %204 to i32
  %and364 = and i32 %conv363, 15552
  %cmp365 = icmp eq i32 %and364, 1216
  br i1 %cmp365, label %if.end.385, label %if.then.367

if.then.367:                                      ; preds = %if.end.359
  %205 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %206 = bitcast i16* %205 to %struct.ref_s*
  %tas368 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %206, i32 0, i32 0
  %type_attrs369 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas368, i32 0, i32 0
  %207 = bitcast i16* %type_attrs369 to i8*
  %arrayidx370 = getelementptr inbounds i8, i8* %207, i64 1
  %208 = load i8, i8* %arrayidx370, align 1, !tbaa !23
  %conv371 = zext i8 %208 to i32
  %cmp372 = icmp eq i32 %conv371, 13
  br i1 %cmp372, label %if.then.374, label %if.else.380

if.then.374:                                      ; preds = %if.then.367
  %209 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %add.ptr375 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %209, i64 -1
  %call376 = call i32 @check_proc_failed(%struct.ref_s* %add.ptr375) #3
  %code377 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 %call376, i32* %code377, align 4, !tbaa !55
  %line378 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1073, i32* %line378, align 4, !tbaa !57
  %210 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %obj379 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 2
  store %struct.ref_s* %210, %struct.ref_s** %obj379, align 8, !tbaa !58
  br label %rwe

if.else.380:                                      ; preds = %if.then.367
  %211 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %add.ptr381 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %211, i64 -1
  %call382 = call i32 @check_proc_failed(%struct.ref_s* %add.ptr381) #3
  %code383 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 %call382, i32* %code383, align 4, !tbaa !55
  %line384 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1073, i32* %line384, align 4, !tbaa !57
  br label %rwei

if.end.385:                                       ; preds = %if.end.359
  %212 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %add.ptr386 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %212, i64 -2
  %tas387 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr386, i32 0, i32 0
  %type_attrs388 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas387, i32 0, i32 0
  %213 = bitcast i16* %type_attrs388 to i8*
  %arrayidx389 = getelementptr inbounds i8, i8* %213, i64 1
  %214 = load i8, i8* %arrayidx389, align 1, !tbaa !23
  %conv390 = zext i8 %214 to i32
  %cmp391 = icmp eq i32 %conv390, 1
  br i1 %cmp391, label %if.end.421, label %if.then.393

if.then.393:                                      ; preds = %if.end.385
  %215 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %216 = bitcast i16* %215 to %struct.ref_s*
  %tas394 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %216, i32 0, i32 0
  %type_attrs395 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas394, i32 0, i32 0
  %217 = bitcast i16* %type_attrs395 to i8*
  %arrayidx396 = getelementptr inbounds i8, i8* %217, i64 1
  %218 = load i8, i8* %arrayidx396, align 1, !tbaa !23
  %conv397 = zext i8 %218 to i32
  %cmp398 = icmp eq i32 %conv397, 13
  br i1 %cmp398, label %if.then.400, label %if.else.411

if.then.400:                                      ; preds = %if.then.393
  %219 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %220 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack401 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %220, i32 0, i32 26
  %stack402 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack401, i32 0, i32 0
  %bot403 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack402, i32 0, i32 1
  %221 = load %struct.ref_s*, %struct.ref_s** %bot403, align 8, !tbaa !24
  %add.ptr404 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %221, i64 2
  %cmp405 = icmp ult %struct.ref_s* %219, %add.ptr404
  %cond407 = select i1 %cmp405, i32 -17, i32 -20
  %code408 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 %cond407, i32* %code408, align 4, !tbaa !55
  %line409 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1076, i32* %line409, align 4, !tbaa !57
  %222 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %obj410 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 2
  store %struct.ref_s* %222, %struct.ref_s** %obj410, align 8, !tbaa !58
  br label %rwe

if.else.411:                                      ; preds = %if.then.393
  %223 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %224 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack412 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %224, i32 0, i32 26
  %stack413 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack412, i32 0, i32 0
  %bot414 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack413, i32 0, i32 1
  %225 = load %struct.ref_s*, %struct.ref_s** %bot414, align 8, !tbaa !24
  %add.ptr415 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %225, i64 2
  %cmp416 = icmp ult %struct.ref_s* %223, %add.ptr415
  %cond418 = select i1 %cmp416, i32 -17, i32 -20
  %code419 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 %cond418, i32* %code419, align 4, !tbaa !55
  %line420 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1076, i32* %line420, align 4, !tbaa !57
  br label %rwei

if.end.421:                                       ; preds = %if.end.385
  %226 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %227 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack422 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %227, i32 0, i32 25
  %stack423 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack422, i32 0, i32 0
  %top424 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack423, i32 0, i32 2
  %228 = load %struct.ref_s*, %struct.ref_s** %top424, align 8, !tbaa !26
  %cmp425 = icmp uge %struct.ref_s* %226, %228
  br i1 %cmp425, label %if.then.427, label %if.end.441

if.then.427:                                      ; preds = %if.end.421
  %229 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %230 = bitcast i16* %229 to %struct.ref_s*
  %tas428 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %230, i32 0, i32 0
  %type_attrs429 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas428, i32 0, i32 0
  %231 = bitcast i16* %type_attrs429 to i8*
  %arrayidx430 = getelementptr inbounds i8, i8* %231, i64 1
  %232 = load i8, i8* %arrayidx430, align 1, !tbaa !23
  %conv431 = zext i8 %232 to i32
  %cmp432 = icmp eq i32 %conv431, 13
  br i1 %cmp432, label %if.then.434, label %if.else.438

if.then.434:                                      ; preds = %if.then.427
  %code435 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 -5, i32* %code435, align 4, !tbaa !55
  %line436 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1078, i32* %line436, align 4, !tbaa !57
  %233 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %obj437 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 2
  store %struct.ref_s* %233, %struct.ref_s** %obj437, align 8, !tbaa !58
  br label %rwe

if.else.438:                                      ; preds = %if.then.427
  %code439 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 -5, i32* %code439, align 4, !tbaa !55
  %line440 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1078, i32* %line440, align 4, !tbaa !57
  br label %rwei

if.end.441:                                       ; preds = %if.end.421
  %234 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp442 = icmp sgt i32 %234, 0
  br i1 %cmp442, label %cond.true.444, label %cond.false.458

cond.true.444:                                    ; preds = %if.end.441
  %235 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %236 = load i16, i16* %235, align 2, !tbaa !21
  %conv445 = zext i16 %236 to i32
  %cmp446 = icmp sge i32 %conv445, 16384
  br i1 %cmp446, label %cond.true.448, label %cond.false.450

cond.true.448:                                    ; preds = %cond.true.444
  %237 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %add.ptr449 = getelementptr inbounds i16, i16* %237, i64 1
  br label %cond.end.452

cond.false.450:                                   ; preds = %cond.true.444
  %238 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %239 = bitcast i16* %238 to %struct.ref_s*
  %add.ptr451 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %239, i64 1
  %240 = bitcast %struct.ref_s* %add.ptr451 to i16*
  br label %cond.end.452

cond.end.452:                                     ; preds = %cond.false.450, %cond.true.448
  %cond453 = phi i16* [ %add.ptr449, %cond.true.448 ], [ %240, %cond.false.450 ]
  %241 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %value454 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %241, i32 0, i32 1
  %packed455 = bitcast %union.v* %value454 to i16**
  store i16* %cond453, i16** %packed455, align 8, !tbaa !1
  %242 = load i32, i32* %icount, align 4, !tbaa !27
  %243 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %tas456 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %243, i32 0, i32 0
  %rsize457 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas456, i32 0, i32 2
  store i32 %242, i32* %rsize457, align 4, !tbaa !28
  br label %cond.end.459

cond.false.458:                                   ; preds = %if.end.441
  br label %cond.end.459

cond.end.459:                                     ; preds = %cond.false.458, %cond.end.452
  %cond460 = phi i32 [ %242, %cond.end.452 ], [ 0, %cond.false.458 ]
  %244 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %arrayidx461 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %244, i64 -2
  %value462 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx461, i32 0, i32 1
  %boolval463 = bitcast %union.v* %value462 to i16*
  %245 = load i16, i16* %boolval463, align 2, !tbaa !21
  %conv464 = zext i16 %245 to i32
  %tobool465 = icmp ne i32 %conv464, 0
  br i1 %tobool465, label %cond.true.466, label %cond.false.468

cond.true.466:                                    ; preds = %cond.end.459
  %246 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %add.ptr467 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %246, i64 -1
  br label %cond.end.469

cond.false.468:                                   ; preds = %cond.end.459
  %247 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  br label %cond.end.469

cond.end.469:                                     ; preds = %cond.false.468, %cond.true.466
  %cond470 = phi %struct.ref_s* [ %add.ptr467, %cond.true.466 ], [ %247, %cond.false.468 ]
  store %struct.ref_s* %cond470, %struct.ref_s** %whichp, align 8, !tbaa !1
  %248 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %add.ptr471 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %248, i64 -3
  store %struct.ref_s* %add.ptr471, %struct.ref_s** %iosp, align 8, !tbaa !1
  br label %ifup

ifup:                                             ; preds = %cond.end.469, %cond.end.330
  %249 = load %struct.ref_s*, %struct.ref_s** %whichp, align 8, !tbaa !1
  %tas472 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %249, i32 0, i32 0
  %rsize473 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas472, i32 0, i32 2
  %250 = load i32, i32* %rsize473, align 4, !tbaa !28
  %sub = sub i32 %250, 1
  store i32 %sub, i32* %icount, align 4, !tbaa !27
  %cmp474 = icmp sle i32 %sub, 0
  br i1 %cmp474, label %if.then.476, label %if.end.487

if.then.476:                                      ; preds = %ifup
  %251 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp477 = icmp slt i32 %251, 0
  br i1 %cmp477, label %if.then.479, label %if.end.480

if.then.479:                                      ; preds = %if.then.476
  br label %up

if.end.480:                                       ; preds = %if.then.476
  %252 = load %struct.ref_s*, %struct.ref_s** %whichp, align 8, !tbaa !1
  %value481 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %252, i32 0, i32 1
  %refs = bitcast %union.v* %value481 to %struct.ref_s**
  %253 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %254 = bitcast %struct.ref_s* %253 to i16*
  store i16* %254, i16** %iref_packed, align 8, !tbaa !1
  %255 = load i32, i32* %ticks_left, align 4, !tbaa !27
  %dec482 = add nsw i32 %255, -1
  store i32 %dec482, i32* %ticks_left, align 4, !tbaa !27
  %cmp483 = icmp sgt i32 %dec482, 0
  br i1 %cmp483, label %if.then.485, label %if.end.486

if.then.485:                                      ; preds = %if.end.480
  br label %top.7

if.end.486:                                       ; preds = %if.end.480
  br label %if.end.487

if.end.487:                                       ; preds = %if.end.486, %ifup
  %256 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %incdec.ptr488 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %256, i32 1
  store %struct.ref_s* %incdec.ptr488, %struct.ref_s** %iesp, align 8, !tbaa !1
  %257 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %tas489 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %257, i32 0, i32 0
  %258 = load %struct.ref_s*, %struct.ref_s** %whichp, align 8, !tbaa !1
  %tas490 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %258, i32 0, i32 0
  %259 = bitcast %struct.tas_s* %tas489 to i8*
  %260 = bitcast %struct.tas_s* %tas490 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %259, i8* %260, i64 8, i32 4, i1 false), !tbaa.struct !59
  %261 = load %struct.ref_s*, %struct.ref_s** %whichp, align 8, !tbaa !1
  %value491 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %261, i32 0, i32 1
  %refs492 = bitcast %union.v* %value491 to %struct.ref_s**
  %262 = load %struct.ref_s*, %struct.ref_s** %refs492, align 8, !tbaa !1
  %263 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %value493 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %263, i32 0, i32 1
  %refs494 = bitcast %union.v* %value493 to %struct.ref_s**
  store %struct.ref_s* %262, %struct.ref_s** %refs494, align 8, !tbaa !1
  %264 = bitcast %struct.ref_s* %262 to i16*
  store i16* %264, i16** %iref_packed, align 8, !tbaa !1
  %265 = load i32, i32* %ticks_left, align 4, !tbaa !27
  %dec495 = add nsw i32 %265, -1
  store i32 %dec495, i32* %ticks_left, align 4, !tbaa !27
  %cmp496 = icmp sgt i32 %dec495, 0
  br i1 %cmp496, label %if.then.498, label %if.end.499

if.then.498:                                      ; preds = %if.end.487
  br label %top.7

if.end.499:                                       ; preds = %if.end.487
  br label %slice

sw.bb.500:                                        ; preds = %do.end
  br label %x_index

x_index:                                          ; preds = %cleanup.1841, %sw.bb.1053, %sw.bb.500
  br label %do.body.501

do.body.501:                                      ; preds = %x_index
  br label %do.cond.502

do.cond.502:                                      ; preds = %do.body.501
  br label %do.end.503

do.end.503:                                       ; preds = %do.cond.502
  %266 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %267 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack504 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %267, i32 0, i32 26
  %stack505 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack504, i32 0, i32 0
  %p506 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack505, i32 0, i32 0
  store %struct.ref_s* %266, %struct.ref_s** %p506, align 8, !tbaa !5
  %268 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %call507 = call i32 @zindex(%struct.gs_context_state_s* %268) #3
  store i32 %call507, i32* %code, align 4, !tbaa !27
  %cmp508 = icmp slt i32 %call507, 0
  br i1 %cmp508, label %if.then.510, label %if.end.524

if.then.510:                                      ; preds = %do.end.503
  %269 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %270 = bitcast i16* %269 to %struct.ref_s*
  %tas511 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %270, i32 0, i32 0
  %type_attrs512 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas511, i32 0, i32 0
  %271 = bitcast i16* %type_attrs512 to i8*
  %arrayidx513 = getelementptr inbounds i8, i8* %271, i64 1
  %272 = load i8, i8* %arrayidx513, align 1, !tbaa !23
  %conv514 = zext i8 %272 to i32
  %cmp515 = icmp eq i32 %conv514, 13
  br i1 %cmp515, label %if.then.517, label %if.else.521

if.then.517:                                      ; preds = %if.then.510
  %273 = load i32, i32* %code, align 4, !tbaa !27
  %code518 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 %273, i32* %code518, align 4, !tbaa !55
  %line519 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1101, i32* %line519, align 4, !tbaa !57
  %274 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %obj520 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 2
  store %struct.ref_s* %274, %struct.ref_s** %obj520, align 8, !tbaa !58
  br label %rwe

if.else.521:                                      ; preds = %if.then.510
  %275 = load i32, i32* %code, align 4, !tbaa !27
  %code522 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 %275, i32* %code522, align 4, !tbaa !55
  %line523 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1101, i32* %line523, align 4, !tbaa !57
  br label %rwei

if.end.524:                                       ; preds = %do.end.503
  %276 = load i32, i32* %icount, align 4, !tbaa !27
  %dec525 = add nsw i32 %276, -1
  store i32 %dec525, i32* %icount, align 4, !tbaa !27
  %cmp526 = icmp sle i32 %dec525, 0
  br i1 %cmp526, label %if.then.528, label %if.end.534

if.then.528:                                      ; preds = %if.end.524
  %277 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp529 = icmp slt i32 %277, 0
  br i1 %cmp529, label %if.then.531, label %if.end.532

if.then.531:                                      ; preds = %if.then.528
  br label %up

if.end.532:                                       ; preds = %if.then.528
  %278 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %incdec.ptr533 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %278, i32 -1
  store %struct.ref_s* %incdec.ptr533, %struct.ref_s** %iesp, align 8, !tbaa !1
  br label %if.end.534

if.end.534:                                       ; preds = %if.end.532, %if.end.524
  %279 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %280 = load i16, i16* %279, align 2, !tbaa !21
  %conv535 = zext i16 %280 to i32
  %cmp536 = icmp sge i32 %conv535, 16384
  br i1 %cmp536, label %cond.true.538, label %cond.false.540

cond.true.538:                                    ; preds = %if.end.534
  %281 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %add.ptr539 = getelementptr inbounds i16, i16* %281, i64 1
  br label %cond.end.542

cond.false.540:                                   ; preds = %if.end.534
  %282 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %283 = bitcast i16* %282 to %struct.ref_s*
  %add.ptr541 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %283, i64 1
  %284 = bitcast %struct.ref_s* %add.ptr541 to i16*
  br label %cond.end.542

cond.end.542:                                     ; preds = %cond.false.540, %cond.true.538
  %cond543 = phi i16* [ %add.ptr539, %cond.true.538 ], [ %284, %cond.false.540 ]
  store i16* %cond543, i16** %iref_packed, align 8, !tbaa !1
  br label %top.7

sw.bb.544:                                        ; preds = %do.end
  br label %x_pop

x_pop:                                            ; preds = %cleanup.1841, %sw.bb.1054, %sw.bb.544
  br label %do.body.545

do.body.545:                                      ; preds = %x_pop
  br label %do.cond.546

do.cond.546:                                      ; preds = %do.body.545
  br label %do.end.547

do.end.547:                                       ; preds = %do.cond.546
  %285 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %286 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack548 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %286, i32 0, i32 26
  %stack549 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack548, i32 0, i32 0
  %bot550 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack549, i32 0, i32 1
  %287 = load %struct.ref_s*, %struct.ref_s** %bot550, align 8, !tbaa !24
  %cmp551 = icmp ult %struct.ref_s* %285, %287
  br i1 %cmp551, label %if.then.553, label %if.end.567

if.then.553:                                      ; preds = %do.end.547
  %288 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %289 = bitcast i16* %288 to %struct.ref_s*
  %tas554 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %289, i32 0, i32 0
  %type_attrs555 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas554, i32 0, i32 0
  %290 = bitcast i16* %type_attrs555 to i8*
  %arrayidx556 = getelementptr inbounds i8, i8* %290, i64 1
  %291 = load i8, i8* %arrayidx556, align 1, !tbaa !23
  %conv557 = zext i8 %291 to i32
  %cmp558 = icmp eq i32 %conv557, 13
  br i1 %cmp558, label %if.then.560, label %if.else.564

if.then.560:                                      ; preds = %if.then.553
  %code561 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 -17, i32* %code561, align 4, !tbaa !55
  %line562 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1106, i32* %line562, align 4, !tbaa !57
  %292 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %obj563 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 2
  store %struct.ref_s* %292, %struct.ref_s** %obj563, align 8, !tbaa !58
  br label %rwe

if.else.564:                                      ; preds = %if.then.553
  %code565 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 -17, i32* %code565, align 4, !tbaa !55
  %line566 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1106, i32* %line566, align 4, !tbaa !57
  br label %rwei

if.end.567:                                       ; preds = %do.end.547
  %293 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %incdec.ptr568 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %293, i32 -1
  store %struct.ref_s* %incdec.ptr568, %struct.ref_s** %iosp, align 8, !tbaa !1
  %294 = load i32, i32* %icount, align 4, !tbaa !27
  %dec569 = add nsw i32 %294, -1
  store i32 %dec569, i32* %icount, align 4, !tbaa !27
  %cmp570 = icmp sle i32 %dec569, 0
  br i1 %cmp570, label %if.then.572, label %if.end.578

if.then.572:                                      ; preds = %if.end.567
  %295 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp573 = icmp slt i32 %295, 0
  br i1 %cmp573, label %if.then.575, label %if.end.576

if.then.575:                                      ; preds = %if.then.572
  br label %up

if.end.576:                                       ; preds = %if.then.572
  %296 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %incdec.ptr577 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %296, i32 -1
  store %struct.ref_s* %incdec.ptr577, %struct.ref_s** %iesp, align 8, !tbaa !1
  br label %if.end.578

if.end.578:                                       ; preds = %if.end.576, %if.end.567
  %297 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %298 = load i16, i16* %297, align 2, !tbaa !21
  %conv579 = zext i16 %298 to i32
  %cmp580 = icmp sge i32 %conv579, 16384
  br i1 %cmp580, label %cond.true.582, label %cond.false.584

cond.true.582:                                    ; preds = %if.end.578
  %299 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %add.ptr583 = getelementptr inbounds i16, i16* %299, i64 1
  br label %cond.end.586

cond.false.584:                                   ; preds = %if.end.578
  %300 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %301 = bitcast i16* %300 to %struct.ref_s*
  %add.ptr585 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %301, i64 1
  %302 = bitcast %struct.ref_s* %add.ptr585 to i16*
  br label %cond.end.586

cond.end.586:                                     ; preds = %cond.false.584, %cond.true.582
  %cond587 = phi i16* [ %add.ptr583, %cond.true.582 ], [ %302, %cond.false.584 ]
  store i16* %cond587, i16** %iref_packed, align 8, !tbaa !1
  br label %top.7

sw.bb.588:                                        ; preds = %do.end
  br label %x_roll

x_roll:                                           ; preds = %cleanup.1841, %sw.bb.1055, %sw.bb.588
  br label %do.body.589

do.body.589:                                      ; preds = %x_roll
  br label %do.cond.590

do.cond.590:                                      ; preds = %do.body.589
  br label %do.end.591

do.end.591:                                       ; preds = %do.cond.590
  %303 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %304 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack592 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %304, i32 0, i32 26
  %stack593 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack592, i32 0, i32 0
  %p594 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack593, i32 0, i32 0
  store %struct.ref_s* %303, %struct.ref_s** %p594, align 8, !tbaa !5
  %305 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %call595 = call i32 @zroll(%struct.gs_context_state_s* %305) #3
  store i32 %call595, i32* %code, align 4, !tbaa !27
  %cmp596 = icmp slt i32 %call595, 0
  br i1 %cmp596, label %if.then.598, label %if.end.612

if.then.598:                                      ; preds = %do.end.591
  %306 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %307 = bitcast i16* %306 to %struct.ref_s*
  %tas599 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %307, i32 0, i32 0
  %type_attrs600 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas599, i32 0, i32 0
  %308 = bitcast i16* %type_attrs600 to i8*
  %arrayidx601 = getelementptr inbounds i8, i8* %308, i64 1
  %309 = load i8, i8* %arrayidx601, align 1, !tbaa !23
  %conv602 = zext i8 %309 to i32
  %cmp603 = icmp eq i32 %conv602, 13
  br i1 %cmp603, label %if.then.605, label %if.else.609

if.then.605:                                      ; preds = %if.then.598
  %310 = load i32, i32* %code, align 4, !tbaa !27
  %code606 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 %310, i32* %code606, align 4, !tbaa !55
  %line607 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1113, i32* %line607, align 4, !tbaa !57
  %311 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %obj608 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 2
  store %struct.ref_s* %311, %struct.ref_s** %obj608, align 8, !tbaa !58
  br label %rwe

if.else.609:                                      ; preds = %if.then.598
  %312 = load i32, i32* %code, align 4, !tbaa !27
  %code610 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 %312, i32* %code610, align 4, !tbaa !55
  %line611 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1113, i32* %line611, align 4, !tbaa !57
  br label %rwei

if.end.612:                                       ; preds = %do.end.591
  %313 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %add.ptr613 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %313, i64 -2
  store %struct.ref_s* %add.ptr613, %struct.ref_s** %iosp, align 8, !tbaa !1
  %314 = load i32, i32* %icount, align 4, !tbaa !27
  %dec614 = add nsw i32 %314, -1
  store i32 %dec614, i32* %icount, align 4, !tbaa !27
  %cmp615 = icmp sle i32 %dec614, 0
  br i1 %cmp615, label %if.then.617, label %if.end.623

if.then.617:                                      ; preds = %if.end.612
  %315 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp618 = icmp slt i32 %315, 0
  br i1 %cmp618, label %if.then.620, label %if.end.621

if.then.620:                                      ; preds = %if.then.617
  br label %up

if.end.621:                                       ; preds = %if.then.617
  %316 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %incdec.ptr622 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %316, i32 -1
  store %struct.ref_s* %incdec.ptr622, %struct.ref_s** %iesp, align 8, !tbaa !1
  br label %if.end.623

if.end.623:                                       ; preds = %if.end.621, %if.end.612
  %317 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %318 = load i16, i16* %317, align 2, !tbaa !21
  %conv624 = zext i16 %318 to i32
  %cmp625 = icmp sge i32 %conv624, 16384
  br i1 %cmp625, label %cond.true.627, label %cond.false.629

cond.true.627:                                    ; preds = %if.end.623
  %319 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %add.ptr628 = getelementptr inbounds i16, i16* %319, i64 1
  br label %cond.end.631

cond.false.629:                                   ; preds = %if.end.623
  %320 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %321 = bitcast i16* %320 to %struct.ref_s*
  %add.ptr630 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %321, i64 1
  %322 = bitcast %struct.ref_s* %add.ptr630 to i16*
  br label %cond.end.631

cond.end.631:                                     ; preds = %cond.false.629, %cond.true.627
  %cond632 = phi i16* [ %add.ptr628, %cond.true.627 ], [ %322, %cond.false.629 ]
  store i16* %cond632, i16** %iref_packed, align 8, !tbaa !1
  br label %top.7

sw.bb.633:                                        ; preds = %do.end
  br label %x_sub

x_sub:                                            ; preds = %cleanup.1841, %sw.bb.1056, %sw.bb.633
  br label %do.body.634

do.body.634:                                      ; preds = %x_sub
  br label %do.cond.635

do.cond.635:                                      ; preds = %do.body.634
  br label %do.end.636

do.end.636:                                       ; preds = %do.cond.635
  %323 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %324 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack637 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %324, i32 0, i32 26
  %stack638 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack637, i32 0, i32 0
  %p639 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack638, i32 0, i32 0
  store %struct.ref_s* %323, %struct.ref_s** %p639, align 8, !tbaa !5
  %325 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %call640 = call i32 @zop_sub(%struct.gs_context_state_s* %325) #3
  store i32 %call640, i32* %code, align 4, !tbaa !27
  %cmp641 = icmp slt i32 %call640, 0
  br i1 %cmp641, label %if.then.643, label %if.end.657

if.then.643:                                      ; preds = %do.end.636
  %326 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %327 = bitcast i16* %326 to %struct.ref_s*
  %tas644 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %327, i32 0, i32 0
  %type_attrs645 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas644, i32 0, i32 0
  %328 = bitcast i16* %type_attrs645 to i8*
  %arrayidx646 = getelementptr inbounds i8, i8* %328, i64 1
  %329 = load i8, i8* %arrayidx646, align 1, !tbaa !23
  %conv647 = zext i8 %329 to i32
  %cmp648 = icmp eq i32 %conv647, 13
  br i1 %cmp648, label %if.then.650, label %if.else.654

if.then.650:                                      ; preds = %if.then.643
  %330 = load i32, i32* %code, align 4, !tbaa !27
  %code651 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 %330, i32* %code651, align 4, !tbaa !55
  %line652 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1120, i32* %line652, align 4, !tbaa !57
  %331 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %obj653 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 2
  store %struct.ref_s* %331, %struct.ref_s** %obj653, align 8, !tbaa !58
  br label %rwe

if.else.654:                                      ; preds = %if.then.643
  %332 = load i32, i32* %code, align 4, !tbaa !27
  %code655 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 %332, i32* %code655, align 4, !tbaa !55
  %line656 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1120, i32* %line656, align 4, !tbaa !57
  br label %rwei

if.end.657:                                       ; preds = %do.end.636
  %333 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %incdec.ptr658 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %333, i32 -1
  store %struct.ref_s* %incdec.ptr658, %struct.ref_s** %iosp, align 8, !tbaa !1
  %334 = load i32, i32* %icount, align 4, !tbaa !27
  %dec659 = add nsw i32 %334, -1
  store i32 %dec659, i32* %icount, align 4, !tbaa !27
  %cmp660 = icmp sle i32 %dec659, 0
  br i1 %cmp660, label %if.then.662, label %if.end.668

if.then.662:                                      ; preds = %if.end.657
  %335 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp663 = icmp slt i32 %335, 0
  br i1 %cmp663, label %if.then.665, label %if.end.666

if.then.665:                                      ; preds = %if.then.662
  br label %up

if.end.666:                                       ; preds = %if.then.662
  %336 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %incdec.ptr667 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %336, i32 -1
  store %struct.ref_s* %incdec.ptr667, %struct.ref_s** %iesp, align 8, !tbaa !1
  br label %if.end.668

if.end.668:                                       ; preds = %if.end.666, %if.end.657
  %337 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %338 = load i16, i16* %337, align 2, !tbaa !21
  %conv669 = zext i16 %338 to i32
  %cmp670 = icmp sge i32 %conv669, 16384
  br i1 %cmp670, label %cond.true.672, label %cond.false.674

cond.true.672:                                    ; preds = %if.end.668
  %339 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %add.ptr673 = getelementptr inbounds i16, i16* %339, i64 1
  br label %cond.end.676

cond.false.674:                                   ; preds = %if.end.668
  %340 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %341 = bitcast i16* %340 to %struct.ref_s*
  %add.ptr675 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %341, i64 1
  %342 = bitcast %struct.ref_s* %add.ptr675 to i16*
  br label %cond.end.676

cond.end.676:                                     ; preds = %cond.false.674, %cond.true.672
  %cond677 = phi i16* [ %add.ptr673, %cond.true.672 ], [ %342, %cond.false.674 ]
  store i16* %cond677, i16** %iref_packed, align 8, !tbaa !1
  br label %top.7

sw.bb.678:                                        ; preds = %do.end
  br label %bot.1858

sw.bb.679:                                        ; preds = %do.end
  br label %do.body.680

do.body.680:                                      ; preds = %sw.bb.679
  br label %do.cond.681

do.cond.681:                                      ; preds = %do.body.680
  br label %do.end.682

do.end.682:                                       ; preds = %do.cond.681
  %343 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %344 = bitcast i16* %343 to %struct.ref_s*
  %tas683 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %344, i32 0, i32 0
  %rsize684 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas683, i32 0, i32 2
  %345 = load i32, i32* %rsize684, align 4, !tbaa !28
  %cmp685 = icmp eq i32 %345, 0
  br i1 %cmp685, label %cond.true.687, label %cond.false.690

cond.true.687:                                    ; preds = %do.end.682
  %346 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %347 = bitcast i16* %346 to %struct.ref_s*
  %call688 = call zeroext i16 @op_find_index(%struct.ref_s* %347) #3
  %conv689 = zext i16 %call688 to i32
  br label %cond.end.693

cond.false.690:                                   ; preds = %do.end.682
  %348 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %349 = bitcast i16* %348 to %struct.ref_s*
  %tas691 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %349, i32 0, i32 0
  %rsize692 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas691, i32 0, i32 2
  %350 = load i32, i32* %rsize692, align 4, !tbaa !28
  br label %cond.end.693

cond.end.693:                                     ; preds = %cond.false.690, %cond.true.687
  %cond694 = phi i32 [ %conv689, %cond.true.687 ], [ %350, %cond.false.690 ]
  store i32 %cond694, i32* %opindex, align 4, !tbaa !27
  %351 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %352 = bitcast i16* %351 to %struct.ref_s*
  %value695 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %352, i32 0, i32 1
  %const_refs = bitcast %union.v* %value695 to %struct.ref_s**
  %353 = load %struct.ref_s*, %struct.ref_s** %const_refs, align 8, !tbaa !1
  store %struct.ref_s* %353, %struct.ref_s** %pvalue, align 8, !tbaa !1
  br label %opst

opst:                                             ; preds = %cond.end.1072, %cond.end.693
  %354 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp696 = icmp sgt i32 %354, 0
  br i1 %cmp696, label %cond.true.698, label %cond.false.704

cond.true.698:                                    ; preds = %opst
  %355 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %356 = bitcast i16* %355 to %struct.ref_s*
  %add.ptr699 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %356, i64 1
  %357 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %value700 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %357, i32 0, i32 1
  %const_refs701 = bitcast %union.v* %value700 to %struct.ref_s**
  store %struct.ref_s* %add.ptr699, %struct.ref_s** %const_refs701, align 8, !tbaa !1
  %358 = load i32, i32* %icount, align 4, !tbaa !27
  %359 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %tas702 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %359, i32 0, i32 0
  %rsize703 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas702, i32 0, i32 2
  store i32 %358, i32* %rsize703, align 4, !tbaa !28
  br label %cond.end.705

cond.false.704:                                   ; preds = %opst
  br label %cond.end.705

cond.end.705:                                     ; preds = %cond.false.704, %cond.true.698
  %cond706 = phi i32 [ %358, %cond.true.698 ], [ 0, %cond.false.704 ]
  br label %oppr

oppr:                                             ; preds = %cleanup.1841, %cond.end.705
  %360 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %361 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack707 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %361, i32 0, i32 25
  %stack708 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack707, i32 0, i32 0
  %top709 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack708, i32 0, i32 2
  %362 = load %struct.ref_s*, %struct.ref_s** %top709, align 8, !tbaa !26
  %add.ptr710 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %362, i64 -4
  %cmp711 = icmp uge %struct.ref_s* %360, %add.ptr710
  br i1 %cmp711, label %if.then.713, label %if.end.716

if.then.713:                                      ; preds = %oppr
  %code714 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 -5, i32* %code714, align 4, !tbaa !55
  %line715 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1135, i32* %line715, align 4, !tbaa !57
  br label %rwei

if.end.716:                                       ; preds = %oppr
  %363 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %add.ptr717 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %363, i64 5
  store %struct.ref_s* %add.ptr717, %struct.ref_s** %iesp, align 8, !tbaa !1
  %364 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %365 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack718 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %365, i32 0, i32 26
  %stack719 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack718, i32 0, i32 0
  %p720 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack719, i32 0, i32 0
  store %struct.ref_s* %364, %struct.ref_s** %p720, align 8, !tbaa !5
  %366 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %add.ptr721 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %366, i64 -4
  %value722 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr721, i32 0, i32 1
  %opproc = bitcast %union.v* %value722 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @oparray_cleanup, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %367 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %add.ptr723 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %367, i64 -4
  %tas724 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr723, i32 0, i32 0
  %type_attrs725 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas724, i32 0, i32 0
  store i16 3712, i16* %type_attrs725, align 2, !tbaa !22
  %368 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %add.ptr726 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %368, i64 -4
  %tas727 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr726, i32 0, i32 0
  %rsize728 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas727, i32 0, i32 2
  store i32 0, i32* %rsize728, align 4, !tbaa !28
  %369 = load i32, i32* %opindex, align 4, !tbaa !27
  %conv729 = zext i32 %369 to i64
  %370 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %add.ptr730 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %370, i64 -3
  %value731 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr730, i32 0, i32 1
  %intval = bitcast %union.v* %value731 to i64*
  store i64 %conv729, i64* %intval, align 8, !tbaa !30
  %371 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %add.ptr732 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %371, i64 -3
  %tas733 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr732, i32 0, i32 0
  %type_attrs734 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas733, i32 0, i32 0
  store i16 2816, i16* %type_attrs734, align 2, !tbaa !22
  %372 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack735 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %372, i32 0, i32 26
  %stack736 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack735, i32 0, i32 0
  %p737 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack736, i32 0, i32 0
  %373 = load %struct.ref_s*, %struct.ref_s** %p737, align 8, !tbaa !60
  %add.ptr738 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %373, i64 1
  %374 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack739 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %374, i32 0, i32 26
  %stack740 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack739, i32 0, i32 0
  %bot741 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack740, i32 0, i32 1
  %375 = load %struct.ref_s*, %struct.ref_s** %bot741, align 8, !tbaa !61
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %add.ptr738 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %375 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %376 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack742 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %376, i32 0, i32 26
  %stack743 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack742, i32 0, i32 0
  %extension_used = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack743, i32 0, i32 5
  %377 = load i32, i32* %extension_used, align 4, !tbaa !62
  %conv744 = zext i32 %377 to i64
  %add = add nsw i64 %sub.ptr.div, %conv744
  %378 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %add.ptr745 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %378, i64 -2
  %value746 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr745, i32 0, i32 1
  %intval747 = bitcast %union.v* %value746 to i64*
  store i64 %add, i64* %intval747, align 8, !tbaa !30
  %379 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %add.ptr748 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %379, i64 -2
  %tas749 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr748, i32 0, i32 0
  %type_attrs750 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas749, i32 0, i32 0
  store i16 2816, i16* %type_attrs750, align 2, !tbaa !22
  %380 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %380, i32 0, i32 24
  %stack751 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 0
  %p752 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack751, i32 0, i32 0
  %381 = load %struct.ref_s*, %struct.ref_s** %p752, align 8, !tbaa !60
  %add.ptr753 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %381, i64 1
  %382 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack754 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %382, i32 0, i32 24
  %stack755 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack754, i32 0, i32 0
  %bot756 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack755, i32 0, i32 1
  %383 = load %struct.ref_s*, %struct.ref_s** %bot756, align 8, !tbaa !61
  %sub.ptr.lhs.cast757 = ptrtoint %struct.ref_s* %add.ptr753 to i64
  %sub.ptr.rhs.cast758 = ptrtoint %struct.ref_s* %383 to i64
  %sub.ptr.sub759 = sub i64 %sub.ptr.lhs.cast757, %sub.ptr.rhs.cast758
  %sub.ptr.div760 = sdiv exact i64 %sub.ptr.sub759, 16
  %384 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack761 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %384, i32 0, i32 24
  %stack762 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack761, i32 0, i32 0
  %extension_used763 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack762, i32 0, i32 5
  %385 = load i32, i32* %extension_used763, align 4, !tbaa !62
  %conv764 = zext i32 %385 to i64
  %add765 = add nsw i64 %sub.ptr.div760, %conv764
  %386 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %add.ptr766 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %386, i64 -1
  %value767 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr766, i32 0, i32 1
  %intval768 = bitcast %union.v* %value767 to i64*
  store i64 %add765, i64* %intval768, align 8, !tbaa !30
  %387 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %add.ptr769 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %387, i64 -1
  %tas770 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr769, i32 0, i32 0
  %type_attrs771 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas770, i32 0, i32 0
  store i16 2816, i16* %type_attrs771, align 2, !tbaa !22
  %388 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %value772 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %388, i32 0, i32 1
  %opproc773 = bitcast %union.v* %value772 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @oparray_pop, i32 (%struct.gs_context_state_s*)** %opproc773, align 8, !tbaa !1
  %389 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %tas774 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %389, i32 0, i32 0
  %type_attrs775 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas774, i32 0, i32 0
  store i16 3968, i16* %type_attrs775, align 2, !tbaa !22
  %390 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %tas776 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %390, i32 0, i32 0
  %rsize777 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas776, i32 0, i32 2
  store i32 0, i32* %rsize777, align 4, !tbaa !28
  br label %pr

prst:                                             ; preds = %do.end.1046
  %391 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp778 = icmp sgt i32 %391, 0
  br i1 %cmp778, label %cond.true.780, label %cond.false.786

cond.true.780:                                    ; preds = %prst
  %392 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %393 = bitcast i16* %392 to %struct.ref_s*
  %add.ptr781 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %393, i64 1
  %394 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %value782 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %394, i32 0, i32 1
  %const_refs783 = bitcast %union.v* %value782 to %struct.ref_s**
  store %struct.ref_s* %add.ptr781, %struct.ref_s** %const_refs783, align 8, !tbaa !1
  %395 = load i32, i32* %icount, align 4, !tbaa !27
  %396 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %tas784 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %396, i32 0, i32 0
  %rsize785 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas784, i32 0, i32 2
  store i32 %395, i32* %rsize785, align 4, !tbaa !28
  br label %cond.end.787

cond.false.786:                                   ; preds = %prst
  br label %cond.end.787

cond.end.787:                                     ; preds = %cond.false.786, %cond.true.780
  %cond788 = phi i32 [ %395, %cond.true.780 ], [ 0, %cond.false.786 ]
  br label %pr

pr:                                               ; preds = %cleanup.1841, %cleanup.1431, %cleanup.1360, %cond.end.787, %if.end.716
  %397 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %tas789 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %397, i32 0, i32 0
  %rsize790 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas789, i32 0, i32 2
  %398 = load i32, i32* %rsize790, align 4, !tbaa !28
  %sub791 = sub i32 %398, 1
  store i32 %sub791, i32* %icount, align 4, !tbaa !27
  %cmp792 = icmp sle i32 %sub791, 0
  br i1 %cmp792, label %if.then.794, label %if.end.806

if.then.794:                                      ; preds = %pr
  %399 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp795 = icmp slt i32 %399, 0
  br i1 %cmp795, label %if.then.797, label %if.end.798

if.then.797:                                      ; preds = %if.then.794
  br label %up

if.end.798:                                       ; preds = %if.then.794
  %400 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %value799 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %400, i32 0, i32 1
  %refs800 = bitcast %union.v* %value799 to %struct.ref_s**
  %401 = load %struct.ref_s*, %struct.ref_s** %refs800, align 8, !tbaa !1
  %402 = bitcast %struct.ref_s* %401 to i16*
  store i16* %402, i16** %iref_packed, align 8, !tbaa !1
  %403 = load i32, i32* %ticks_left, align 4, !tbaa !27
  %dec801 = add nsw i32 %403, -1
  store i32 %dec801, i32* %ticks_left, align 4, !tbaa !27
  %cmp802 = icmp sgt i32 %dec801, 0
  br i1 %cmp802, label %if.then.804, label %if.end.805

if.then.804:                                      ; preds = %if.end.798
  br label %top.7

if.end.805:                                       ; preds = %if.end.798
  br label %if.end.806

if.end.806:                                       ; preds = %if.end.805, %pr
  %404 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %405 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack807 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %405, i32 0, i32 25
  %stack808 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack807, i32 0, i32 0
  %top809 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack808, i32 0, i32 2
  %406 = load %struct.ref_s*, %struct.ref_s** %top809, align 8, !tbaa !26
  %cmp810 = icmp uge %struct.ref_s* %404, %406
  br i1 %cmp810, label %if.then.812, label %if.end.815

if.then.812:                                      ; preds = %if.end.806
  %code813 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 -5, i32* %code813, align 4, !tbaa !55
  %line814 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1155, i32* %line814, align 4, !tbaa !57
  br label %rwei

if.end.815:                                       ; preds = %if.end.806
  %407 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %incdec.ptr816 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %407, i32 1
  store %struct.ref_s* %incdec.ptr816, %struct.ref_s** %iesp, align 8, !tbaa !1
  %408 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %tas817 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %408, i32 0, i32 0
  %409 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %tas818 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %409, i32 0, i32 0
  %410 = bitcast %struct.tas_s* %tas817 to i8*
  %411 = bitcast %struct.tas_s* %tas818 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %410, i8* %411, i64 8, i32 4, i1 false), !tbaa.struct !59
  %412 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %value819 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %412, i32 0, i32 1
  %refs820 = bitcast %union.v* %value819 to %struct.ref_s**
  %413 = load %struct.ref_s*, %struct.ref_s** %refs820, align 8, !tbaa !1
  %414 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %value821 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %414, i32 0, i32 1
  %refs822 = bitcast %union.v* %value821 to %struct.ref_s**
  store %struct.ref_s* %413, %struct.ref_s** %refs822, align 8, !tbaa !1
  %415 = bitcast %struct.ref_s* %413 to i16*
  store i16* %415, i16** %iref_packed, align 8, !tbaa !1
  %416 = load i32, i32* %ticks_left, align 4, !tbaa !27
  %dec823 = add nsw i32 %416, -1
  store i32 %dec823, i32* %ticks_left, align 4, !tbaa !27
  %cmp824 = icmp sgt i32 %dec823, 0
  br i1 %cmp824, label %if.then.826, label %if.end.827

if.then.826:                                      ; preds = %if.end.815
  br label %top.7

if.end.827:                                       ; preds = %if.end.815
  br label %slice

sw.bb.828:                                        ; preds = %do.end
  br label %do.body.829

do.body.829:                                      ; preds = %sw.bb.828
  br label %do.cond.830

do.cond.830:                                      ; preds = %do.body.829
  br label %do.end.831

do.end.831:                                       ; preds = %do.cond.830
  %417 = load i32, i32* %ticks_left, align 4, !tbaa !27
  %dec832 = add nsw i32 %417, -1
  store i32 %dec832, i32* %ticks_left, align 4, !tbaa !27
  %cmp833 = icmp sle i32 %dec832, 0
  br i1 %cmp833, label %if.then.835, label %if.end.836

if.then.835:                                      ; preds = %do.end.831
  br label %if.end.836

if.end.836:                                       ; preds = %if.then.835, %do.end.831
  %418 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %419 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack837 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %419, i32 0, i32 25
  %stack838 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack837, i32 0, i32 0
  %p839 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack838, i32 0, i32 0
  store %struct.ref_s* %418, %struct.ref_s** %p839, align 8, !tbaa !25
  %420 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %421 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack840 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %421, i32 0, i32 26
  %stack841 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack840, i32 0, i32 0
  %p842 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack841, i32 0, i32 0
  store %struct.ref_s* %420, %struct.ref_s** %p842, align 8, !tbaa !5
  %422 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %423 = bitcast i16* %422 to %struct.ref_s*
  %value843 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %423, i32 0, i32 1
  %opproc844 = bitcast %union.v* %value843 to i32 (%struct.gs_context_state_s*)**
  %424 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %opproc844, align 8, !tbaa !1
  %425 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %call845 = call i32 %424(%struct.gs_context_state_s* %425) #3
  store i32 %call845, i32* %code, align 4, !tbaa !27
  switch i32 %call845, label %sw.epilog [
    i32 0, label %sw.bb.846
    i32 1, label %sw.bb.846
    i32 5, label %sw.bb.856
    i32 14, label %sw.bb.879
    i32 22, label %sw.bb.893
    i32 -103, label %sw.bb.905
  ]

sw.bb.846:                                        ; preds = %if.end.836, %if.end.836
  %426 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack847 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %426, i32 0, i32 26
  %stack848 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack847, i32 0, i32 0
  %p849 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack848, i32 0, i32 0
  %427 = load %struct.ref_s*, %struct.ref_s** %p849, align 8, !tbaa !5
  store %struct.ref_s* %427, %struct.ref_s** %iosp, align 8, !tbaa !1
  %428 = load i32, i32* %icount, align 4, !tbaa !27
  %dec850 = add nsw i32 %428, -1
  store i32 %dec850, i32* %icount, align 4, !tbaa !27
  %cmp851 = icmp sgt i32 %dec850, 0
  br i1 %cmp851, label %if.then.853, label %if.else.855

if.then.853:                                      ; preds = %sw.bb.846
  %429 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %430 = bitcast i16* %429 to %struct.ref_s*
  %add.ptr854 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %430, i64 1
  %431 = bitcast %struct.ref_s* %add.ptr854 to i16*
  store i16* %431, i16** %iref_packed, align 8, !tbaa !1
  br label %top.7

if.else.855:                                      ; preds = %sw.bb.846
  br label %out

sw.bb.856:                                        ; preds = %if.end.836
  %432 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp857 = icmp sgt i32 %432, 0
  br i1 %cmp857, label %cond.true.859, label %cond.false.865

cond.true.859:                                    ; preds = %sw.bb.856
  %433 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %434 = bitcast i16* %433 to %struct.ref_s*
  %add.ptr860 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %434, i64 1
  %435 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %value861 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %435, i32 0, i32 1
  %const_refs862 = bitcast %union.v* %value861 to %struct.ref_s**
  store %struct.ref_s* %add.ptr860, %struct.ref_s** %const_refs862, align 8, !tbaa !1
  %436 = load i32, i32* %icount, align 4, !tbaa !27
  %437 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %tas863 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %437, i32 0, i32 0
  %rsize864 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas863, i32 0, i32 2
  store i32 %436, i32* %rsize864, align 4, !tbaa !28
  br label %cond.end.866

cond.false.865:                                   ; preds = %sw.bb.856
  br label %cond.end.866

cond.end.866:                                     ; preds = %cond.false.865, %cond.true.859
  %cond867 = phi i32 [ %436, %cond.true.859 ], [ 0, %cond.false.865 ]
  br label %opush

opush:                                            ; preds = %cleanup.1841, %cond.end.1114, %cond.end.866
  %438 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack868 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %438, i32 0, i32 26
  %stack869 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack868, i32 0, i32 0
  %p870 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack869, i32 0, i32 0
  %439 = load %struct.ref_s*, %struct.ref_s** %p870, align 8, !tbaa !5
  store %struct.ref_s* %439, %struct.ref_s** %iosp, align 8, !tbaa !1
  %440 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack871 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %440, i32 0, i32 25
  %stack872 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack871, i32 0, i32 0
  %p873 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack872, i32 0, i32 0
  %441 = load %struct.ref_s*, %struct.ref_s** %p873, align 8, !tbaa !25
  store %struct.ref_s* %441, %struct.ref_s** %iesp, align 8, !tbaa !1
  %442 = load i32, i32* %ticks_left, align 4, !tbaa !27
  %dec874 = add nsw i32 %442, -1
  store i32 %dec874, i32* %ticks_left, align 4, !tbaa !27
  %cmp875 = icmp sgt i32 %dec874, 0
  br i1 %cmp875, label %if.then.877, label %if.end.878

if.then.877:                                      ; preds = %opush
  br label %up

if.end.878:                                       ; preds = %opush
  br label %slice

sw.bb.879:                                        ; preds = %if.end.836
  br label %opop

opop:                                             ; preds = %sw.bb.1116, %sw.bb.879
  %443 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack880 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %443, i32 0, i32 26
  %stack881 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack880, i32 0, i32 0
  %p882 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack881, i32 0, i32 0
  %444 = load %struct.ref_s*, %struct.ref_s** %p882, align 8, !tbaa !5
  store %struct.ref_s* %444, %struct.ref_s** %iosp, align 8, !tbaa !1
  %445 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack883 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %445, i32 0, i32 25
  %stack884 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack883, i32 0, i32 0
  %p885 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack884, i32 0, i32 0
  %446 = load %struct.ref_s*, %struct.ref_s** %p885, align 8, !tbaa !25
  %447 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %cmp886 = icmp eq %struct.ref_s* %446, %447
  br i1 %cmp886, label %if.then.888, label %if.end.889

if.then.888:                                      ; preds = %opop
  br label %bot.1858

if.end.889:                                       ; preds = %opop
  %448 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack890 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %448, i32 0, i32 25
  %stack891 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack890, i32 0, i32 0
  %p892 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack891, i32 0, i32 0
  %449 = load %struct.ref_s*, %struct.ref_s** %p892, align 8, !tbaa !25
  store %struct.ref_s* %449, %struct.ref_s** %iesp, align 8, !tbaa !1
  br label %up

sw.bb.893:                                        ; preds = %if.end.836
  %450 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp894 = icmp sgt i32 %450, 0
  br i1 %cmp894, label %cond.true.896, label %cond.false.902

cond.true.896:                                    ; preds = %sw.bb.893
  %451 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %452 = bitcast i16* %451 to %struct.ref_s*
  %add.ptr897 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %452, i64 1
  %453 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %value898 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %453, i32 0, i32 1
  %const_refs899 = bitcast %union.v* %value898 to %struct.ref_s**
  store %struct.ref_s* %add.ptr897, %struct.ref_s** %const_refs899, align 8, !tbaa !1
  %454 = load i32, i32* %icount, align 4, !tbaa !27
  %455 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %tas900 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %455, i32 0, i32 0
  %rsize901 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas900, i32 0, i32 2
  store i32 %454, i32* %rsize901, align 4, !tbaa !28
  br label %cond.end.903

cond.false.902:                                   ; preds = %sw.bb.893
  br label %cond.end.903

cond.end.903:                                     ; preds = %cond.false.902, %cond.true.896
  %cond904 = phi i32 [ %454, %cond.true.896 ], [ 0, %cond.false.902 ]
  br label %res

sw.bb.905:                                        ; preds = %if.end.836
  br label %oe_remap

oe_remap:                                         ; preds = %sw.bb.1129, %sw.bb.905
  %456 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp906 = icmp sgt i32 %456, 0
  br i1 %cmp906, label %cond.true.908, label %cond.false.914

cond.true.908:                                    ; preds = %oe_remap
  %457 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %458 = bitcast i16* %457 to %struct.ref_s*
  %add.ptr909 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %458, i64 1
  %459 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %value910 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %459, i32 0, i32 1
  %const_refs911 = bitcast %union.v* %value910 to %struct.ref_s**
  store %struct.ref_s* %add.ptr909, %struct.ref_s** %const_refs911, align 8, !tbaa !1
  %460 = load i32, i32* %icount, align 4, !tbaa !27
  %461 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %tas912 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %461, i32 0, i32 0
  %rsize913 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas912, i32 0, i32 2
  store i32 %460, i32* %rsize913, align 4, !tbaa !28
  br label %cond.end.915

cond.false.914:                                   ; preds = %oe_remap
  br label %cond.end.915

cond.end.915:                                     ; preds = %cond.false.914, %cond.true.908
  %cond916 = phi i32 [ %460, %cond.true.908 ], [ 0, %cond.false.914 ]
  br label %remap

remap:                                            ; preds = %cleanup.1841, %cond.end.915
  %462 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %add.ptr917 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %462, i64 2
  %463 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack918 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %463, i32 0, i32 25
  %stack919 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack918, i32 0, i32 0
  %top920 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack919, i32 0, i32 2
  %464 = load %struct.ref_s*, %struct.ref_s** %top920, align 8, !tbaa !26
  %cmp921 = icmp uge %struct.ref_s* %add.ptr917, %464
  br i1 %cmp921, label %if.then.923, label %if.end.939

if.then.923:                                      ; preds = %remap
  %465 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %466 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack924 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %466, i32 0, i32 25
  %stack925 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack924, i32 0, i32 0
  %p926 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack925, i32 0, i32 0
  store %struct.ref_s* %465, %struct.ref_s** %p926, align 8, !tbaa !25
  %467 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack927 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %467, i32 0, i32 25
  %stack928 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack927, i32 0, i32 0
  %call929 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack928, i32 2) #3
  store i32 %call929, i32* %code, align 4, !tbaa !27
  %468 = load i32, i32* %code, align 4, !tbaa !27
  %cmp930 = icmp slt i32 %468, 0
  br i1 %cmp930, label %if.then.932, label %if.end.935

if.then.932:                                      ; preds = %if.then.923
  %469 = load i32, i32* %code, align 4, !tbaa !27
  %code933 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 %469, i32* %code933, align 4, !tbaa !55
  %line934 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1212, i32* %line934, align 4, !tbaa !57
  br label %rwei

if.end.935:                                       ; preds = %if.then.923
  %470 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack936 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %470, i32 0, i32 25
  %stack937 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack936, i32 0, i32 0
  %p938 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack937, i32 0, i32 0
  %471 = load %struct.ref_s*, %struct.ref_s** %p938, align 8, !tbaa !25
  store %struct.ref_s* %471, %struct.ref_s** %iesp, align 8, !tbaa !1
  br label %if.end.939

if.end.939:                                       ; preds = %if.end.935, %remap
  %472 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory940 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %472, i32 0, i32 1
  %current941 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory940, i32 0, i32 0
  %473 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current941, align 8, !tbaa !49
  %474 = bitcast %struct.gs_ref_memory_s* %473 to %struct.gs_memory_s*
  %475 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %476 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %add.ptr942 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %476, i64 1
  call void @packed_get(%struct.gs_memory_s* %474, i16* %475, %struct.ref_s* %add.ptr942) #3
  %477 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %477, i32 0, i32 0
  %478 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !63
  %call943 = call i8* @gs_state_client_data(%struct.gs_state_s* %478) #3
  %479 = bitcast i8* %call943 to %struct.int_gstate_s*
  %remap_color_info = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %479, i32 0, i32 11
  %value944 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %remap_color_info, i32 0, i32 1
  %pstruct = bitcast %union.v* %value944 to %struct.obj_header_s**
  %480 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %481 = bitcast %struct.obj_header_s* %480 to %struct.int_remap_color_info_s*
  %proc = getelementptr inbounds %struct.int_remap_color_info_s, %struct.int_remap_color_info_s* %481, i32 0, i32 0
  %482 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %proc, align 8, !tbaa !64
  %483 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %add.ptr945 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %483, i64 2
  %value946 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr945, i32 0, i32 1
  %opproc947 = bitcast %union.v* %value946 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* %482, i32 (%struct.gs_context_state_s*)** %opproc947, align 8, !tbaa !1
  %484 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %add.ptr948 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %484, i64 2
  %tas949 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr948, i32 0, i32 0
  %type_attrs950 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas949, i32 0, i32 0
  store i16 3968, i16* %type_attrs950, align 2, !tbaa !22
  %485 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %add.ptr951 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %485, i64 2
  %tas952 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr951, i32 0, i32 0
  %rsize953 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas952, i32 0, i32 2
  store i32 0, i32* %rsize953, align 4, !tbaa !28
  %486 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %add.ptr954 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %486, i64 2
  store %struct.ref_s* %add.ptr954, %struct.ref_s** %iesp, align 8, !tbaa !1
  br label %up

sw.epilog:                                        ; preds = %if.end.836
  %487 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack955 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %487, i32 0, i32 26
  %stack956 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack955, i32 0, i32 0
  %p957 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack956, i32 0, i32 0
  %488 = load %struct.ref_s*, %struct.ref_s** %p957, align 8, !tbaa !5
  store %struct.ref_s* %488, %struct.ref_s** %iosp, align 8, !tbaa !1
  %489 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack958 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %489, i32 0, i32 25
  %stack959 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack958, i32 0, i32 0
  %p960 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack959, i32 0, i32 0
  %490 = load %struct.ref_s*, %struct.ref_s** %p960, align 8, !tbaa !25
  store %struct.ref_s* %490, %struct.ref_s** %iesp, align 8, !tbaa !1
  %line961 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1224, i32* %line961, align 4, !tbaa !57
  br label %rweci

sw.bb.962:                                        ; preds = %do.end
  br label %do.body.963

do.body.963:                                      ; preds = %sw.bb.962
  br label %do.cond.964

do.cond.964:                                      ; preds = %do.body.963
  br label %do.end.965

do.end.965:                                       ; preds = %do.cond.964
  %491 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %492 = bitcast i16* %491 to %struct.ref_s*
  %value966 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %492, i32 0, i32 1
  %pname = bitcast %union.v* %value966 to %struct.name_s**
  %493 = load %struct.name_s*, %struct.name_s** %pname, align 8, !tbaa !1
  %pvalue967 = getelementptr inbounds %struct.name_s, %struct.name_s* %493, i32 0, i32 0
  %494 = load %struct.ref_s*, %struct.ref_s** %pvalue967, align 8, !tbaa !66
  store %struct.ref_s* %494, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %495 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %496 = ptrtoint %struct.ref_s* %495 to i64
  %cmp968 = icmp ugt i64 %496, 1
  br i1 %cmp968, label %if.end.1009, label %if.then.970

if.then.970:                                      ; preds = %do.end.965
  %497 = bitcast i32* %nidx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %497) #2
  %498 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %499 = bitcast i16* %498 to %struct.ref_s*
  %value971 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %499, i32 0, i32 1
  %pname972 = bitcast %union.v* %value971 to %struct.name_s**
  %500 = load %struct.name_s*, %struct.name_s** %pname972, align 8, !tbaa !1
  %501 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %502 = bitcast i16* %501 to %struct.ref_s*
  %tas973 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %502, i32 0, i32 0
  %rsize974 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas973, i32 0, i32 2
  %503 = load i32, i32* %rsize974, align 4, !tbaa !28
  %and975 = and i32 %503, 511
  %idx.ext = zext i32 %and975 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr976 = getelementptr inbounds %struct.name_s, %struct.name_s* %500, i64 %idx.neg
  %504 = bitcast %struct.name_s* %add.ptr976 to %struct.name_sub_table_s*
  %high_index = getelementptr inbounds %struct.name_sub_table_s, %struct.name_sub_table_s* %504, i32 0, i32 1
  %505 = load i32, i32* %high_index, align 4, !tbaa !68
  %506 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %507 = bitcast i16* %506 to %struct.ref_s*
  %tas977 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %507, i32 0, i32 0
  %rsize978 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas977, i32 0, i32 2
  %508 = load i32, i32* %rsize978, align 4, !tbaa !28
  %add979 = add i32 %505, %508
  store i32 %add979, i32* %nidx, align 4, !tbaa !27
  %509 = bitcast i32* %htemp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %509) #2
  br label %do.body.980

do.body.980:                                      ; preds = %if.then.970
  br label %do.cond.981

do.cond.981:                                      ; preds = %do.body.980
  br label %do.end.982

do.end.982:                                       ; preds = %do.cond.981
  %510 = load i32, i32* %nidx, align 4, !tbaa !27
  %511 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack983 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %511, i32 0, i32 24
  %top_npairs = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack983, i32 0, i32 5
  %512 = load i32, i32* %top_npairs, align 4, !tbaa !70
  %sub984 = sub i32 %512, 1
  %and985 = and i32 %510, %sub984
  %add986 = add i32 %and985, 1
  store i32 %add986, i32* %htemp, align 4, !tbaa !27
  %idxprom = zext i32 %add986 to i64
  %513 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack987 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %513, i32 0, i32 24
  %top_keys = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack987, i32 0, i32 4
  %514 = load i16*, i16** %top_keys, align 8, !tbaa !71
  %arrayidx988 = getelementptr inbounds i16, i16* %514, i64 %idxprom
  %515 = load i16, i16* %arrayidx988, align 2, !tbaa !21
  %conv989 = zext i16 %515 to i32
  %516 = load i32, i32* %nidx, align 4, !tbaa !27
  %add990 = add i32 49152, %516
  %cmp991 = icmp eq i32 %conv989, %add990
  br i1 %cmp991, label %cond.true.993, label %cond.false.997

cond.true.993:                                    ; preds = %do.end.982
  %517 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack994 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %517, i32 0, i32 24
  %top_values = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack994, i32 0, i32 6
  %518 = load %struct.ref_s*, %struct.ref_s** %top_values, align 8, !tbaa !72
  %519 = load i32, i32* %htemp, align 4, !tbaa !27
  %idx.ext995 = zext i32 %519 to i64
  %add.ptr996 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %518, i64 %idx.ext995
  br label %cond.end.1000

cond.false.997:                                   ; preds = %do.end.982
  %520 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack998 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %520, i32 0, i32 24
  %521 = load i32, i32* %nidx, align 4, !tbaa !27
  %call999 = call %struct.ref_s* @dstack_find_name_by_index(%struct.dict_stack_s* %dict_stack998, i32 %521) #3
  br label %cond.end.1000

cond.end.1000:                                    ; preds = %cond.false.997, %cond.true.993
  %cond1001 = phi %struct.ref_s* [ %add.ptr996, %cond.true.993 ], [ %call999, %cond.false.997 ]
  store %struct.ref_s* %cond1001, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %cmp1002 = icmp eq %struct.ref_s* %cond1001, null
  br i1 %cmp1002, label %if.then.1004, label %if.end.1007

if.then.1004:                                     ; preds = %cond.end.1000
  %code1005 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 -21, i32* %code1005, align 4, !tbaa !55
  %line1006 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1234, i32* %line1006, align 4, !tbaa !57
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup

if.end.1007:                                      ; preds = %cond.end.1000
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.1004, %if.end.1007
  %522 = bitcast i32* %htemp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %522) #2
  %523 = bitcast i32* %nidx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %523) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.2012 [
    i32 0, label %cleanup.cont
    i32 8, label %rwei
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.1009

if.end.1009:                                      ; preds = %cleanup.cont, %do.end.965
  %524 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %525 = bitcast %struct.ref_s* %524 to i16*
  %arrayidx1010 = getelementptr inbounds i16, i16* %525, i64 0
  %526 = load i16, i16* %arrayidx1010, align 2, !tbaa !21
  %conv1011 = zext i16 %526 to i32
  %shr1012 = ashr i32 %conv1011, 6
  switch i32 %shr1012, label %sw.default [
    i32 0, label %sw.bb.1013
    i32 2, label %sw.bb.1013
    i32 18, label %sw.bb.1016
    i32 10, label %sw.bb.1016
    i32 14, label %sw.bb.1016
    i32 74, label %sw.bb.1016
    i32 22, label %sw.bb.1016
    i32 26, label %sw.bb.1016
    i32 17, label %sw.bb.1019
    i32 16, label %sw.bb.1019
    i32 4, label %sw.bb.1019
    i32 6, label %sw.bb.1019
    i32 9, label %sw.bb.1019
    i32 8, label %sw.bb.1019
    i32 13, label %sw.bb.1019
    i32 12, label %sw.bb.1019
    i32 40, label %sw.bb.1019
    i32 42, label %sw.bb.1019
    i32 44, label %sw.bb.1019
    i32 46, label %sw.bb.1019
    i32 48, label %sw.bb.1019
    i32 50, label %sw.bb.1019
    i32 52, label %sw.bb.1019
    i32 56, label %sw.bb.1019
    i32 80, label %sw.bb.1019
    i32 60, label %sw.bb.1019
    i32 64, label %sw.bb.1019
    i32 66, label %sw.bb.1019
    i32 68, label %sw.bb.1019
    i32 70, label %sw.bb.1019
    i32 73, label %sw.bb.1019
    i32 72, label %sw.bb.1019
    i32 21, label %sw.bb.1019
    i32 20, label %sw.bb.1019
    i32 25, label %sw.bb.1019
    i32 24, label %sw.bb.1019
    i32 76, label %sw.bb.1019
    i32 78, label %sw.bb.1019
    i32 32, label %sw.bb.1019
    i32 34, label %sw.bb.1019
    i32 36, label %sw.bb.1019
    i32 38, label %sw.bb.1019
    i32 19, label %sw.bb.1043
    i32 23, label %sw.bb.1043
    i32 27, label %sw.bb.1043
    i32 86, label %sw.bb.1047
    i32 90, label %sw.bb.1048
    i32 94, label %sw.bb.1049
    i32 98, label %sw.bb.1050
    i32 102, label %sw.bb.1051
    i32 106, label %sw.bb.1052
    i32 110, label %sw.bb.1053
    i32 114, label %sw.bb.1054
    i32 118, label %sw.bb.1055
    i32 122, label %sw.bb.1056
    i32 58, label %sw.bb.1057
    i32 82, label %sw.bb.1058
    i32 62, label %sw.bb.1076
    i32 54, label %sw.bb.1140
    i32 15, label %sw.bb.1140
    i32 75, label %sw.bb.1140
  ]

sw.bb.1013:                                       ; preds = %if.end.1009, %if.end.1009
  %code1014 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 -100, i32* %code1014, align 4, !tbaa !55
  %line1015 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1240, i32* %line1015, align 4, !tbaa !57
  br label %rwei

sw.bb.1016:                                       ; preds = %if.end.1009, %if.end.1009, %if.end.1009, %if.end.1009, %if.end.1009, %if.end.1009
  %code1017 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 -7, i32* %code1017, align 4, !tbaa !55
  %line1018 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1242, i32* %line1018, align 4, !tbaa !57
  br label %rwei

sw.bb.1019:                                       ; preds = %if.end.1009, %if.end.1009, %if.end.1009, %if.end.1009, %if.end.1009, %if.end.1009, %if.end.1009, %if.end.1009, %if.end.1009, %if.end.1009, %if.end.1009, %if.end.1009, %if.end.1009, %if.end.1009, %if.end.1009, %if.end.1009, %if.end.1009, %if.end.1009, %if.end.1009, %if.end.1009, %if.end.1009, %if.end.1009, %if.end.1009, %if.end.1009, %if.end.1009, %if.end.1009, %if.end.1009, %if.end.1009, %if.end.1009, %if.end.1009, %if.end.1009, %if.end.1009, %if.end.1009, %if.end.1009
  br label %do.body.1020

do.body.1020:                                     ; preds = %sw.bb.1019
  br label %do.cond.1021

do.cond.1021:                                     ; preds = %do.body.1020
  br label %do.end.1022

do.end.1022:                                      ; preds = %do.cond.1021
  %527 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %528 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack1023 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %528, i32 0, i32 26
  %stack1024 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1023, i32 0, i32 0
  %top1025 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1024, i32 0, i32 2
  %529 = load %struct.ref_s*, %struct.ref_s** %top1025, align 8, !tbaa !19
  %cmp1026 = icmp uge %struct.ref_s* %527, %529
  br i1 %cmp1026, label %if.then.1028, label %if.end.1035

if.then.1028:                                     ; preds = %do.end.1022
  %530 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack1029 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %530, i32 0, i32 26
  %stack1030 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1029, i32 0, i32 0
  %requested1031 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1030, i32 0, i32 7
  store i32 1, i32* %requested1031, align 4, !tbaa !20
  %code1032 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 -16, i32* %code1032, align 4, !tbaa !55
  %line1033 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1251, i32* %line1033, align 4, !tbaa !57
  %531 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %obj1034 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 2
  store %struct.ref_s* %531, %struct.ref_s** %obj1034, align 8, !tbaa !58
  br label %rwe

if.end.1035:                                      ; preds = %do.end.1022
  %532 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %incdec.ptr1036 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %532, i32 1
  store %struct.ref_s* %incdec.ptr1036, %struct.ref_s** %iosp, align 8, !tbaa !1
  %533 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %534 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %535 = bitcast %struct.ref_s* %533 to i8*
  %536 = bitcast %struct.ref_s* %534 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %535, i8* %536, i64 16, i32 8, i1 false), !tbaa.struct !29
  %537 = load i32, i32* %icount, align 4, !tbaa !27
  %dec1037 = add nsw i32 %537, -1
  store i32 %dec1037, i32* %icount, align 4, !tbaa !27
  %cmp1038 = icmp sgt i32 %dec1037, 0
  br i1 %cmp1038, label %if.then.1040, label %if.else.1042

if.then.1040:                                     ; preds = %if.end.1035
  %538 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %539 = bitcast i16* %538 to %struct.ref_s*
  %add.ptr1041 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %539, i64 1
  %540 = bitcast %struct.ref_s* %add.ptr1041 to i16*
  store i16* %540, i16** %iref_packed, align 8, !tbaa !1
  br label %top.7

if.else.1042:                                     ; preds = %if.end.1035
  br label %out

sw.bb.1043:                                       ; preds = %if.end.1009, %if.end.1009, %if.end.1009
  br label %do.body.1044

do.body.1044:                                     ; preds = %sw.bb.1043
  br label %do.cond.1045

do.cond.1045:                                     ; preds = %do.body.1044
  br label %do.end.1046

do.end.1046:                                      ; preds = %do.cond.1045
  br label %prst

sw.bb.1047:                                       ; preds = %if.end.1009
  br label %x_add

sw.bb.1048:                                       ; preds = %if.end.1009
  br label %x_def

sw.bb.1049:                                       ; preds = %if.end.1009
  br label %x_dup

sw.bb.1050:                                       ; preds = %if.end.1009
  br label %x_exch

sw.bb.1051:                                       ; preds = %if.end.1009
  br label %x_if

sw.bb.1052:                                       ; preds = %if.end.1009
  br label %x_ifelse

sw.bb.1053:                                       ; preds = %if.end.1009
  br label %x_index

sw.bb.1054:                                       ; preds = %if.end.1009
  br label %x_pop

sw.bb.1055:                                       ; preds = %if.end.1009
  br label %x_roll

sw.bb.1056:                                       ; preds = %if.end.1009
  br label %x_sub

sw.bb.1057:                                       ; preds = %if.end.1009
  br label %bot.1858

sw.bb.1058:                                       ; preds = %if.end.1009
  br label %do.body.1059

do.body.1059:                                     ; preds = %sw.bb.1058
  br label %do.cond.1060

do.cond.1060:                                     ; preds = %do.body.1059
  br label %do.end.1061

do.end.1061:                                      ; preds = %do.cond.1060
  %541 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %tas1062 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %541, i32 0, i32 0
  %rsize1063 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1062, i32 0, i32 2
  %542 = load i32, i32* %rsize1063, align 4, !tbaa !28
  %cmp1064 = icmp eq i32 %542, 0
  br i1 %cmp1064, label %cond.true.1066, label %cond.false.1069

cond.true.1066:                                   ; preds = %do.end.1061
  %543 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %call1067 = call zeroext i16 @op_find_index(%struct.ref_s* %543) #3
  %conv1068 = zext i16 %call1067 to i32
  br label %cond.end.1072

cond.false.1069:                                  ; preds = %do.end.1061
  %544 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %tas1070 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %544, i32 0, i32 0
  %rsize1071 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1070, i32 0, i32 2
  %545 = load i32, i32* %rsize1071, align 4, !tbaa !28
  br label %cond.end.1072

cond.end.1072:                                    ; preds = %cond.false.1069, %cond.true.1066
  %cond1073 = phi i32 [ %conv1068, %cond.true.1066 ], [ %545, %cond.false.1069 ]
  store i32 %cond1073, i32* %opindex, align 4, !tbaa !27
  %546 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %value1074 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %546, i32 0, i32 1
  %const_refs1075 = bitcast %union.v* %value1074 to %struct.ref_s**
  %547 = load %struct.ref_s*, %struct.ref_s** %const_refs1075, align 8, !tbaa !1
  store %struct.ref_s* %547, %struct.ref_s** %pvalue, align 8, !tbaa !1
  br label %opst

sw.bb.1076:                                       ; preds = %if.end.1009
  br label %do.body.1077

do.body.1077:                                     ; preds = %sw.bb.1076
  br label %do.cond.1078

do.cond.1078:                                     ; preds = %do.body.1077
  br label %do.end.1079

do.end.1079:                                      ; preds = %do.cond.1078
  %548 = load i32, i32* %ticks_left, align 4, !tbaa !27
  %dec1080 = add nsw i32 %548, -1
  store i32 %dec1080, i32* %ticks_left, align 4, !tbaa !27
  %cmp1081 = icmp sle i32 %dec1080, 0
  br i1 %cmp1081, label %if.then.1083, label %if.end.1084

if.then.1083:                                     ; preds = %do.end.1079
  br label %if.end.1084

if.end.1084:                                      ; preds = %if.then.1083, %do.end.1079
  %549 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %550 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack1085 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %550, i32 0, i32 25
  %stack1086 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1085, i32 0, i32 0
  %p1087 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1086, i32 0, i32 0
  store %struct.ref_s* %549, %struct.ref_s** %p1087, align 8, !tbaa !25
  %551 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %552 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack1088 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %552, i32 0, i32 26
  %stack1089 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1088, i32 0, i32 0
  %p1090 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1089, i32 0, i32 0
  store %struct.ref_s* %551, %struct.ref_s** %p1090, align 8, !tbaa !5
  %553 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %value1091 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %553, i32 0, i32 1
  %opproc1092 = bitcast %union.v* %value1091 to i32 (%struct.gs_context_state_s*)**
  %554 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %opproc1092, align 8, !tbaa !1
  %555 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %call1093 = call i32 %554(%struct.gs_context_state_s* %555) #3
  store i32 %call1093, i32* %code, align 4, !tbaa !27
  switch i32 %call1093, label %sw.epilog.1130 [
    i32 0, label %sw.bb.1094
    i32 1, label %sw.bb.1094
    i32 5, label %sw.bb.1104
    i32 14, label %sw.bb.1116
    i32 22, label %sw.bb.1117
    i32 -103, label %sw.bb.1129
  ]

sw.bb.1094:                                       ; preds = %if.end.1084, %if.end.1084
  %556 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack1095 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %556, i32 0, i32 26
  %stack1096 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1095, i32 0, i32 0
  %p1097 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1096, i32 0, i32 0
  %557 = load %struct.ref_s*, %struct.ref_s** %p1097, align 8, !tbaa !5
  store %struct.ref_s* %557, %struct.ref_s** %iosp, align 8, !tbaa !1
  %558 = load i32, i32* %icount, align 4, !tbaa !27
  %dec1098 = add nsw i32 %558, -1
  store i32 %dec1098, i32* %icount, align 4, !tbaa !27
  %cmp1099 = icmp sgt i32 %dec1098, 0
  br i1 %cmp1099, label %if.then.1101, label %if.else.1103

if.then.1101:                                     ; preds = %sw.bb.1094
  %559 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %560 = bitcast i16* %559 to %struct.ref_s*
  %add.ptr1102 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %560, i64 1
  %561 = bitcast %struct.ref_s* %add.ptr1102 to i16*
  store i16* %561, i16** %iref_packed, align 8, !tbaa !1
  br label %top.7

if.else.1103:                                     ; preds = %sw.bb.1094
  br label %out

sw.bb.1104:                                       ; preds = %if.end.1084
  %562 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp1105 = icmp sgt i32 %562, 0
  br i1 %cmp1105, label %cond.true.1107, label %cond.false.1113

cond.true.1107:                                   ; preds = %sw.bb.1104
  %563 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %564 = bitcast i16* %563 to %struct.ref_s*
  %add.ptr1108 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %564, i64 1
  %565 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %value1109 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %565, i32 0, i32 1
  %const_refs1110 = bitcast %union.v* %value1109 to %struct.ref_s**
  store %struct.ref_s* %add.ptr1108, %struct.ref_s** %const_refs1110, align 8, !tbaa !1
  %566 = load i32, i32* %icount, align 4, !tbaa !27
  %567 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %tas1111 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %567, i32 0, i32 0
  %rsize1112 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1111, i32 0, i32 2
  store i32 %566, i32* %rsize1112, align 4, !tbaa !28
  br label %cond.end.1114

cond.false.1113:                                  ; preds = %sw.bb.1104
  br label %cond.end.1114

cond.end.1114:                                    ; preds = %cond.false.1113, %cond.true.1107
  %cond1115 = phi i32 [ %566, %cond.true.1107 ], [ 0, %cond.false.1113 ]
  br label %opush

sw.bb.1116:                                       ; preds = %if.end.1084
  br label %opop

sw.bb.1117:                                       ; preds = %if.end.1084
  %568 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp1118 = icmp sgt i32 %568, 0
  br i1 %cmp1118, label %cond.true.1120, label %cond.false.1126

cond.true.1120:                                   ; preds = %sw.bb.1117
  %569 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %570 = bitcast i16* %569 to %struct.ref_s*
  %add.ptr1121 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %570, i64 1
  %571 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %value1122 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %571, i32 0, i32 1
  %const_refs1123 = bitcast %union.v* %value1122 to %struct.ref_s**
  store %struct.ref_s* %add.ptr1121, %struct.ref_s** %const_refs1123, align 8, !tbaa !1
  %572 = load i32, i32* %icount, align 4, !tbaa !27
  %573 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %tas1124 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %573, i32 0, i32 0
  %rsize1125 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1124, i32 0, i32 2
  store i32 %572, i32* %rsize1125, align 4, !tbaa !28
  br label %cond.end.1127

cond.false.1126:                                  ; preds = %sw.bb.1117
  br label %cond.end.1127

cond.end.1127:                                    ; preds = %cond.false.1126, %cond.true.1120
  %cond1128 = phi i32 [ %572, %cond.true.1120 ], [ 0, %cond.false.1126 ]
  br label %res

sw.bb.1129:                                       ; preds = %if.end.1084
  br label %oe_remap

sw.epilog.1130:                                   ; preds = %if.end.1084
  %574 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack1131 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %574, i32 0, i32 26
  %stack1132 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1131, i32 0, i32 0
  %p1133 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1132, i32 0, i32 0
  %575 = load %struct.ref_s*, %struct.ref_s** %p1133, align 8, !tbaa !5
  store %struct.ref_s* %575, %struct.ref_s** %iosp, align 8, !tbaa !1
  %576 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack1134 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %576, i32 0, i32 25
  %stack1135 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1134, i32 0, i32 0
  %p1136 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1135, i32 0, i32 0
  %577 = load %struct.ref_s*, %struct.ref_s** %p1136, align 8, !tbaa !25
  store %struct.ref_s* %577, %struct.ref_s** %iesp, align 8, !tbaa !1
  %578 = load i32, i32* %code, align 4, !tbaa !27
  %code1137 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 %578, i32* %code1137, align 4, !tbaa !55
  %line1138 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1318, i32* %line1138, align 4, !tbaa !57
  %579 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %obj1139 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 2
  store %struct.ref_s* %579, %struct.ref_s** %obj1139, align 8, !tbaa !58
  br label %rwe

sw.bb.1140:                                       ; preds = %if.end.1009, %if.end.1009, %if.end.1009
  br label %sw.default

sw.default:                                       ; preds = %if.end.1009, %sw.bb.1140
  %580 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp1141 = icmp sgt i32 %580, 0
  br i1 %cmp1141, label %cond.true.1143, label %cond.false.1149

cond.true.1143:                                   ; preds = %sw.default
  %581 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %582 = bitcast i16* %581 to %struct.ref_s*
  %add.ptr1144 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %582, i64 1
  %583 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %value1145 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %583, i32 0, i32 1
  %const_refs1146 = bitcast %union.v* %value1145 to %struct.ref_s**
  store %struct.ref_s* %add.ptr1144, %struct.ref_s** %const_refs1146, align 8, !tbaa !1
  %584 = load i32, i32* %icount, align 4, !tbaa !27
  %585 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %tas1147 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %585, i32 0, i32 0
  %rsize1148 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1147, i32 0, i32 2
  store i32 %584, i32* %rsize1148, align 4, !tbaa !28
  br label %cond.end.1150

cond.false.1149:                                  ; preds = %sw.default
  br label %cond.end.1150

cond.end.1150:                                    ; preds = %cond.false.1149, %cond.true.1143
  %cond1151 = phi i32 [ %584, %cond.true.1143 ], [ 0, %cond.false.1149 ]
  store i32 0, i32* %icount, align 4, !tbaa !27
  %586 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %587 = bitcast %struct.ref_s* %586 to i16*
  store i16* %587, i16** %iref_packed, align 8, !tbaa !1
  br label %top.7

sw.bb.1152:                                       ; preds = %do.end
  %588 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %588) #2
  %589 = bitcast %struct.scanner_state_s* %sstate to i8*
  call void @llvm.lifetime.start(i64 1368, i8* %589) #2
  br label %do.body.1153

do.body.1153:                                     ; preds = %sw.bb.1152
  %590 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %591 = bitcast i16* %590 to %struct.ref_s*
  %value1154 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %591, i32 0, i32 1
  %pfile = bitcast %union.v* %value1154 to %struct.stream_s**
  %592 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %592, %struct.stream_s** %s, align 8, !tbaa !1
  %593 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %593, i32 0, i32 19
  %594 = load i16, i16* %read_id, align 2, !tbaa !73
  %conv1155 = zext i16 %594 to i32
  %595 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %596 = bitcast i16* %595 to %struct.ref_s*
  %tas1156 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %596, i32 0, i32 0
  %rsize1157 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1156, i32 0, i32 2
  %597 = load i32, i32* %rsize1157, align 4, !tbaa !28
  %cmp1158 = icmp ne i32 %conv1155, %597
  br i1 %cmp1158, label %if.then.1160, label %if.end.1183

if.then.1160:                                     ; preds = %do.body.1153
  %598 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id1161 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %598, i32 0, i32 19
  %599 = load i16, i16* %read_id1161, align 2, !tbaa !73
  %conv1162 = zext i16 %599 to i32
  %cmp1163 = icmp eq i32 %conv1162, 0
  br i1 %cmp1163, label %land.lhs.true, label %if.else.1181

land.lhs.true:                                    ; preds = %if.then.1160
  %600 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %600, i32 0, i32 20
  %601 = load i16, i16* %write_id, align 2, !tbaa !78
  %conv1165 = zext i16 %601 to i32
  %602 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %603 = bitcast i16* %602 to %struct.ref_s*
  %tas1166 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %603, i32 0, i32 0
  %rsize1167 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1166, i32 0, i32 2
  %604 = load i32, i32* %rsize1167, align 4, !tbaa !28
  %cmp1168 = icmp eq i32 %conv1165, %604
  br i1 %cmp1168, label %if.then.1170, label %if.else.1181

if.then.1170:                                     ; preds = %land.lhs.true
  %605 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %605) #2
  %606 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %607 = bitcast i16* %606 to %struct.ref_s*
  %call1171 = call i32 @file_switch_to_read(%struct.ref_s* %607) #3
  store i32 %call1171, i32* %fcode, align 4, !tbaa !27
  %608 = load i32, i32* %fcode, align 4, !tbaa !27
  %cmp1172 = icmp slt i32 %608, 0
  br i1 %cmp1172, label %if.then.1174, label %if.end.1177

if.then.1174:                                     ; preds = %if.then.1170
  %609 = load i32, i32* %fcode, align 4, !tbaa !27
  %code1175 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 %609, i32* %code1175, align 4, !tbaa !55
  %line1176 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1335, i32* %line1176, align 4, !tbaa !57
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup.1178

if.end.1177:                                      ; preds = %if.then.1170
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1178

cleanup.1178:                                     ; preds = %if.then.1174, %if.end.1177
  %610 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %610) #2
  %cleanup.dest.1179 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1179, label %cleanup.1360 [
    i32 0, label %cleanup.cont.1180
  ]

cleanup.cont.1180:                                ; preds = %cleanup.1178
  br label %if.end.1182

if.else.1181:                                     ; preds = %land.lhs.true, %if.then.1160
  %611 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %invalid_file_stream = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %611, i32 0, i32 18
  %612 = load %struct.stream_s*, %struct.stream_s** %invalid_file_stream, align 8, !tbaa !79
  store %struct.stream_s* %612, %struct.stream_s** %s, align 8, !tbaa !1
  br label %if.end.1182

if.end.1182:                                      ; preds = %if.else.1181, %cleanup.cont.1180
  br label %if.end.1183

if.end.1183:                                      ; preds = %if.end.1182, %do.body.1153
  br label %do.cond.1184

do.cond.1184:                                     ; preds = %if.end.1183
  br label %do.end.1185

do.end.1185:                                      ; preds = %do.cond.1184
  br label %rt

rt:                                               ; preds = %if.then.1217, %do.end.1185
  %613 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %614 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack1186 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %614, i32 0, i32 26
  %stack1187 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1186, i32 0, i32 0
  %top1188 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1187, i32 0, i32 2
  %615 = load %struct.ref_s*, %struct.ref_s** %top1188, align 8, !tbaa !19
  %cmp1189 = icmp uge %struct.ref_s* %613, %615
  br i1 %cmp1189, label %if.then.1191, label %if.end.1197

if.then.1191:                                     ; preds = %rt
  %616 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack1192 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %616, i32 0, i32 26
  %stack1193 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1192, i32 0, i32 0
  %requested1194 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1193, i32 0, i32 7
  store i32 1, i32* %requested1194, align 4, !tbaa !20
  %code1195 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 -16, i32* %code1195, align 4, !tbaa !55
  %line1196 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1338, i32* %line1196, align 4, !tbaa !57
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup.1360

if.end.1197:                                      ; preds = %rt
  %617 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %618 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack1198 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %618, i32 0, i32 26
  %stack1199 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1198, i32 0, i32 0
  %p1200 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1199, i32 0, i32 0
  store %struct.ref_s* %617, %struct.ref_s** %p1200, align 8, !tbaa !5
  %619 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %620 = bitcast i16* %619 to %struct.ref_s*
  %621 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %scanner_options = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %621, i32 0, i32 12
  %622 = load i32, i32* %scanner_options, align 4, !tbaa !80
  call void @gs_scanner_init_options(%struct.scanner_state_s* %sstate, %struct.ref_s* %620, i32 %622) #3
  br label %again

again:                                            ; preds = %sw.bb.1310, %if.end.1197
  %623 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %call1201 = call i32 @gs_scan_token(%struct.gs_context_state_s* %623, %struct.ref_s* %token, %struct.scanner_state_s* %sstate) #3
  store i32 %call1201, i32* %code, align 4, !tbaa !27
  %624 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack1202 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %624, i32 0, i32 26
  %stack1203 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1202, i32 0, i32 0
  %p1204 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1203, i32 0, i32 0
  %625 = load %struct.ref_s*, %struct.ref_s** %p1204, align 8, !tbaa !5
  store %struct.ref_s* %625, %struct.ref_s** %iosp, align 8, !tbaa !1
  %626 = load i32, i32* %code, align 4, !tbaa !27
  switch i32 %626, label %sw.default.1355 [
    i32 0, label %sw.bb.1205
    i32 -21, label %sw.bb.1243
    i32 2, label %sw.bb.1248
    i32 1, label %sw.bb.1251
    i32 3, label %sw.bb.1275
    i32 4, label %sw.bb.1323
    i32 5, label %sw.bb.1323
  ]

sw.bb.1205:                                       ; preds = %again
  %tas1206 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %token, i32 0, i32 0
  %type_attrs1207 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1206, i32 0, i32 0
  %627 = load i16, i16* %type_attrs1207, align 2, !tbaa !22
  %conv1208 = zext i16 %627 to i32
  %and1209 = and i32 %conv1208, 128
  %tobool1210 = icmp ne i32 %and1209, 0
  br i1 %tobool1210, label %lor.lhs.false, label %if.then.1217

lor.lhs.false:                                    ; preds = %sw.bb.1205
  %tas1211 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %token, i32 0, i32 0
  %type_attrs1212 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1211, i32 0, i32 0
  %628 = load i16, i16* %type_attrs1212, align 2, !tbaa !22
  %conv1213 = zext i16 %628 to i32
  %and1214 = and i32 %conv1213, 15360
  %cmp1215 = icmp eq i32 %and1214, 1024
  br i1 %cmp1215, label %if.then.1217, label %if.end.1219

if.then.1217:                                     ; preds = %lor.lhs.false, %sw.bb.1205
  %629 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %incdec.ptr1218 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %629, i32 1
  store %struct.ref_s* %incdec.ptr1218, %struct.ref_s** %iosp, align 8, !tbaa !1
  %630 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %631 = bitcast %struct.ref_s* %630 to i8*
  %632 = bitcast %struct.ref_s* %token to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %631, i8* %632, i64 16, i32 8, i1 false), !tbaa.struct !29
  br label %rt

if.end.1219:                                      ; preds = %lor.lhs.false
  %633 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp1220 = icmp sgt i32 %633, 0
  br i1 %cmp1220, label %cond.true.1222, label %cond.false.1228

cond.true.1222:                                   ; preds = %if.end.1219
  %634 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %635 = bitcast i16* %634 to %struct.ref_s*
  %add.ptr1223 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %635, i64 1
  %636 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %value1224 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %636, i32 0, i32 1
  %const_refs1225 = bitcast %union.v* %value1224 to %struct.ref_s**
  store %struct.ref_s* %add.ptr1223, %struct.ref_s** %const_refs1225, align 8, !tbaa !1
  %637 = load i32, i32* %icount, align 4, !tbaa !27
  %638 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %tas1226 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %638, i32 0, i32 0
  %rsize1227 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1226, i32 0, i32 2
  store i32 %637, i32* %rsize1227, align 4, !tbaa !28
  br label %cond.end.1229

cond.false.1228:                                  ; preds = %if.end.1219
  br label %cond.end.1229

cond.end.1229:                                    ; preds = %cond.false.1228, %cond.true.1222
  %cond1230 = phi i32 [ %637, %cond.true.1222 ], [ 0, %cond.false.1228 ]
  %639 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %640 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack1231 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %640, i32 0, i32 25
  %stack1232 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1231, i32 0, i32 0
  %top1233 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1232, i32 0, i32 2
  %641 = load %struct.ref_s*, %struct.ref_s** %top1233, align 8, !tbaa !26
  %cmp1234 = icmp uge %struct.ref_s* %639, %641
  br i1 %cmp1234, label %if.then.1236, label %if.end.1239

if.then.1236:                                     ; preds = %cond.end.1229
  %code1237 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 -5, i32* %code1237, align 4, !tbaa !55
  %line1238 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1364, i32* %line1238, align 4, !tbaa !57
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup.1360

if.end.1239:                                      ; preds = %cond.end.1229
  %642 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %incdec.ptr1240 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %642, i32 1
  store %struct.ref_s* %incdec.ptr1240, %struct.ref_s** %iesp, align 8, !tbaa !1
  %643 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack1241 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %643, i32 0, i32 25
  %current_file1242 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1241, i32 0, i32 1
  store %struct.ref_s* %incdec.ptr1240, %struct.ref_s** %current_file1242, align 8, !tbaa !54
  %644 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %645 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %646 = bitcast i16* %645 to %struct.ref_s*
  %647 = bitcast %struct.ref_s* %644 to i8*
  %648 = bitcast %struct.ref_s* %646 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %647, i8* %648, i64 16, i32 8, i1 false), !tbaa.struct !29
  %649 = bitcast %struct.ref_s* %token to i16*
  store i16* %649, i16** %iref_packed, align 8, !tbaa !1
  store i32 0, i32* %icount, align 4, !tbaa !27
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.1360

sw.bb.1243:                                       ; preds = %again
  %650 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %call1244 = call i32 @gs_scanner_error_object(%struct.gs_context_state_s* %650, %struct.scanner_state_s* %sstate, %struct.ref_s* %token) #3
  %651 = load i32, i32* %code, align 4, !tbaa !27
  %code1245 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 %651, i32* %code1245, align 4, !tbaa !55
  %line1246 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1372, i32* %line1246, align 4, !tbaa !57
  %obj1247 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 2
  store %struct.ref_s* %token, %struct.ref_s** %obj1247, align 8, !tbaa !58
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.1360

sw.bb.1248:                                       ; preds = %again
  %652 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack1249 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %652, i32 0, i32 25
  %current_file1250 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1249, i32 0, i32 1
  store %struct.ref_s* null, %struct.ref_s** %current_file1250, align 8, !tbaa !54
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.1360

sw.bb.1251:                                       ; preds = %again
  %653 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp1252 = icmp sgt i32 %653, 0
  br i1 %cmp1252, label %cond.true.1254, label %cond.false.1260

cond.true.1254:                                   ; preds = %sw.bb.1251
  %654 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %655 = bitcast i16* %654 to %struct.ref_s*
  %add.ptr1255 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %655, i64 1
  %656 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %value1256 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %656, i32 0, i32 1
  %const_refs1257 = bitcast %union.v* %value1256 to %struct.ref_s**
  store %struct.ref_s* %add.ptr1255, %struct.ref_s** %const_refs1257, align 8, !tbaa !1
  %657 = load i32, i32* %icount, align 4, !tbaa !27
  %658 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %tas1258 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %658, i32 0, i32 0
  %rsize1259 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1258, i32 0, i32 2
  store i32 %657, i32* %rsize1259, align 4, !tbaa !28
  br label %cond.end.1261

cond.false.1260:                                  ; preds = %sw.bb.1251
  br label %cond.end.1261

cond.end.1261:                                    ; preds = %cond.false.1260, %cond.true.1254
  %cond1262 = phi i32 [ %657, %cond.true.1254 ], [ 0, %cond.false.1260 ]
  %659 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %660 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack1263 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %660, i32 0, i32 25
  %stack1264 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1263, i32 0, i32 0
  %top1265 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1264, i32 0, i32 2
  %661 = load %struct.ref_s*, %struct.ref_s** %top1265, align 8, !tbaa !26
  %cmp1266 = icmp uge %struct.ref_s* %659, %661
  br i1 %cmp1266, label %if.then.1268, label %if.end.1271

if.then.1268:                                     ; preds = %cond.end.1261
  %code1269 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 -5, i32* %code1269, align 4, !tbaa !55
  %line1270 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1382, i32* %line1270, align 4, !tbaa !57
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup.1360

if.end.1271:                                      ; preds = %cond.end.1261
  %662 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %incdec.ptr1272 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %662, i32 1
  store %struct.ref_s* %incdec.ptr1272, %struct.ref_s** %iesp, align 8, !tbaa !1
  %663 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack1273 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %663, i32 0, i32 25
  %current_file1274 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1273, i32 0, i32 1
  store %struct.ref_s* %incdec.ptr1272, %struct.ref_s** %current_file1274, align 8, !tbaa !54
  %664 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %665 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %666 = bitcast i16* %665 to %struct.ref_s*
  %667 = bitcast %struct.ref_s* %664 to i8*
  %668 = bitcast %struct.ref_s* %666 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %667, i8* %668, i64 16, i32 8, i1 false), !tbaa.struct !29
  store %struct.ref_s* %token, %struct.ref_s** %pvalue, align 8, !tbaa !1
  store i32 50, i32* %cleanup.dest.slot
  br label %cleanup.1360

sw.bb.1275:                                       ; preds = %again
  %669 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp1276 = icmp sgt i32 %669, 0
  br i1 %cmp1276, label %cond.true.1278, label %cond.false.1284

cond.true.1278:                                   ; preds = %sw.bb.1275
  %670 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %671 = bitcast i16* %670 to %struct.ref_s*
  %add.ptr1279 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %671, i64 1
  %672 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %value1280 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %672, i32 0, i32 1
  %const_refs1281 = bitcast %union.v* %value1280 to %struct.ref_s**
  store %struct.ref_s* %add.ptr1279, %struct.ref_s** %const_refs1281, align 8, !tbaa !1
  %673 = load i32, i32* %icount, align 4, !tbaa !27
  %674 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %tas1282 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %674, i32 0, i32 0
  %rsize1283 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1282, i32 0, i32 2
  store i32 %673, i32* %rsize1283, align 4, !tbaa !28
  br label %cond.end.1285

cond.false.1284:                                  ; preds = %sw.bb.1275
  br label %cond.end.1285

cond.end.1285:                                    ; preds = %cond.false.1284, %cond.true.1278
  %cond1286 = phi i32 [ %673, %cond.true.1278 ], [ 0, %cond.false.1284 ]
  %675 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %676 = bitcast i16* %675 to %struct.ref_s*
  %677 = bitcast %struct.ref_s* %token to i8*
  %678 = bitcast %struct.ref_s* %676 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %677, i8* %678, i64 16, i32 8, i1 false), !tbaa.struct !29
  %679 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %680 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack1287 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %680, i32 0, i32 25
  %stack1288 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1287, i32 0, i32 0
  %top1289 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1288, i32 0, i32 2
  %681 = load %struct.ref_s*, %struct.ref_s** %top1289, align 8, !tbaa !26
  %cmp1290 = icmp uge %struct.ref_s* %679, %681
  br i1 %cmp1290, label %if.then.1292, label %if.end.1295

if.then.1292:                                     ; preds = %cond.end.1285
  %code1293 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 -5, i32* %code1293, align 4, !tbaa !55
  %line1294 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1394, i32* %line1294, align 4, !tbaa !57
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup.1360

if.end.1295:                                      ; preds = %cond.end.1285
  %682 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %incdec.ptr1296 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %682, i32 1
  store %struct.ref_s* %incdec.ptr1296, %struct.ref_s** %iesp, align 8, !tbaa !1
  %683 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %684 = bitcast %struct.ref_s* %683 to i8*
  %685 = bitcast %struct.ref_s* %token to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %684, i8* %685, i64 16, i32 8, i1 false), !tbaa.struct !29
  %686 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %687 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack1297 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %687, i32 0, i32 25
  %stack1298 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1297, i32 0, i32 0
  %p1299 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1298, i32 0, i32 0
  store %struct.ref_s* %686, %struct.ref_s** %p1299, align 8, !tbaa !25
  %688 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %689 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack1300 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %689, i32 0, i32 26
  %stack1301 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1300, i32 0, i32 0
  %p1302 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1301, i32 0, i32 0
  store %struct.ref_s* %688, %struct.ref_s** %p1302, align 8, !tbaa !5
  %690 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %call1303 = call i32 @gs_scan_handle_refill(%struct.gs_context_state_s* %690, %struct.scanner_state_s* %sstate, i32 1, i32 (%struct.gs_context_state_s*)* @ztokenexec_continue) #3
  store i32 %call1303, i32* %code, align 4, !tbaa !27
  br label %scan_cont

scan_cont:                                        ; preds = %cleanup.cont.1354, %if.end.1295
  %691 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack1304 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %691, i32 0, i32 26
  %stack1305 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1304, i32 0, i32 0
  %p1306 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1305, i32 0, i32 0
  %692 = load %struct.ref_s*, %struct.ref_s** %p1306, align 8, !tbaa !5
  store %struct.ref_s* %692, %struct.ref_s** %iosp, align 8, !tbaa !1
  %693 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack1307 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %693, i32 0, i32 25
  %stack1308 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1307, i32 0, i32 0
  %p1309 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1308, i32 0, i32 0
  %694 = load %struct.ref_s*, %struct.ref_s** %p1309, align 8, !tbaa !25
  store %struct.ref_s* %694, %struct.ref_s** %iesp, align 8, !tbaa !1
  %695 = load i32, i32* %code, align 4, !tbaa !27
  switch i32 %695, label %sw.epilog.1320 [
    i32 0, label %sw.bb.1310
    i32 5, label %sw.bb.1312
  ]

sw.bb.1310:                                       ; preds = %scan_cont
  %696 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %incdec.ptr1311 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %696, i32 -1
  store %struct.ref_s* %incdec.ptr1311, %struct.ref_s** %iesp, align 8, !tbaa !1
  br label %again

sw.bb.1312:                                       ; preds = %scan_cont
  %697 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack1313 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %697, i32 0, i32 25
  %current_file1314 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1313, i32 0, i32 1
  store %struct.ref_s* null, %struct.ref_s** %current_file1314, align 8, !tbaa !54
  %698 = load i32, i32* %ticks_left, align 4, !tbaa !27
  %dec1315 = add nsw i32 %698, -1
  store i32 %dec1315, i32* %ticks_left, align 4, !tbaa !27
  %cmp1316 = icmp sgt i32 %dec1315, 0
  br i1 %cmp1316, label %if.then.1318, label %if.end.1319

if.then.1318:                                     ; preds = %sw.bb.1312
  store i32 16, i32* %cleanup.dest.slot
  br label %cleanup.1360

if.end.1319:                                      ; preds = %sw.bb.1312
  store i32 33, i32* %cleanup.dest.slot
  br label %cleanup.1360

sw.epilog.1320:                                   ; preds = %scan_cont
  %699 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %incdec.ptr1321 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %699, i32 -1
  store %struct.ref_s* %incdec.ptr1321, %struct.ref_s** %iesp, align 8, !tbaa !1
  %line1322 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1416, i32* %line1322, align 4, !tbaa !57
  store i32 61, i32* %cleanup.dest.slot
  br label %cleanup.1360

sw.bb.1323:                                       ; preds = %again, %again
  %700 = bitcast %struct.ref_s* %file_token to i8*
  call void @llvm.lifetime.start(i64 16, i8* %700) #2
  %701 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp1324 = icmp sgt i32 %701, 0
  br i1 %cmp1324, label %cond.true.1326, label %cond.false.1332

cond.true.1326:                                   ; preds = %sw.bb.1323
  %702 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %703 = bitcast i16* %702 to %struct.ref_s*
  %add.ptr1327 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %703, i64 1
  %704 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %value1328 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %704, i32 0, i32 1
  %const_refs1329 = bitcast %union.v* %value1328 to %struct.ref_s**
  store %struct.ref_s* %add.ptr1327, %struct.ref_s** %const_refs1329, align 8, !tbaa !1
  %705 = load i32, i32* %icount, align 4, !tbaa !27
  %706 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %tas1330 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %706, i32 0, i32 0
  %rsize1331 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1330, i32 0, i32 2
  store i32 %705, i32* %rsize1331, align 4, !tbaa !28
  br label %cond.end.1333

cond.false.1332:                                  ; preds = %sw.bb.1323
  br label %cond.end.1333

cond.end.1333:                                    ; preds = %cond.false.1332, %cond.true.1326
  %cond1334 = phi i32 [ %705, %cond.true.1326 ], [ 0, %cond.false.1332 ]
  %707 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %708 = bitcast i16* %707 to %struct.ref_s*
  %709 = bitcast %struct.ref_s* %file_token to i8*
  %710 = bitcast %struct.ref_s* %708 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %709, i8* %710, i64 16, i32 8, i1 false), !tbaa.struct !29
  %711 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %712 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack1335 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %712, i32 0, i32 25
  %stack1336 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1335, i32 0, i32 0
  %top1337 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1336, i32 0, i32 2
  %713 = load %struct.ref_s*, %struct.ref_s** %top1337, align 8, !tbaa !26
  %cmp1338 = icmp uge %struct.ref_s* %711, %713
  br i1 %cmp1338, label %if.then.1340, label %if.end.1343

if.then.1340:                                     ; preds = %cond.end.1333
  %code1341 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 -5, i32* %code1341, align 4, !tbaa !55
  %line1342 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1425, i32* %line1342, align 4, !tbaa !57
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup.1352

if.end.1343:                                      ; preds = %cond.end.1333
  %714 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %incdec.ptr1344 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %714, i32 1
  store %struct.ref_s* %incdec.ptr1344, %struct.ref_s** %iesp, align 8, !tbaa !1
  %715 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %716 = bitcast %struct.ref_s* %715 to i8*
  %717 = bitcast %struct.ref_s* %file_token to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %716, i8* %717, i64 16, i32 8, i1 false), !tbaa.struct !29
  %718 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %719 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack1345 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %719, i32 0, i32 25
  %stack1346 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1345, i32 0, i32 0
  %p1347 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1346, i32 0, i32 0
  store %struct.ref_s* %718, %struct.ref_s** %p1347, align 8, !tbaa !25
  %720 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %721 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack1348 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %721, i32 0, i32 26
  %stack1349 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1348, i32 0, i32 0
  %p1350 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1349, i32 0, i32 0
  store %struct.ref_s* %720, %struct.ref_s** %p1350, align 8, !tbaa !5
  %722 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %723 = load i32, i32* %code, align 4, !tbaa !27
  %call1351 = call i32 @ztoken_handle_comment(%struct.gs_context_state_s* %722, %struct.scanner_state_s* %sstate, %struct.ref_s* %token, i32 %723, i32 1, i32 1, i32 (%struct.gs_context_state_s*)* @ztokenexec_continue) #3
  store i32 %call1351, i32* %code, align 4, !tbaa !27
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1352

cleanup.1352:                                     ; preds = %if.then.1340, %if.end.1343
  %724 = bitcast %struct.ref_s* %file_token to i8*
  call void @llvm.lifetime.end(i64 16, i8* %724) #2
  %cleanup.dest.1353 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1353, label %cleanup.1360 [
    i32 0, label %cleanup.cont.1354
  ]

cleanup.cont.1354:                                ; preds = %cleanup.1352
  br label %scan_cont

sw.default.1355:                                  ; preds = %again
  %725 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %726 = bitcast i16* %725 to %struct.ref_s*
  %727 = bitcast %struct.ref_s* %token to i8*
  %728 = bitcast %struct.ref_s* %726 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %727, i8* %728, i64 16, i32 8, i1 false), !tbaa.struct !29
  %729 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %call1356 = call i32 @gs_scanner_error_object(%struct.gs_context_state_s* %729, %struct.scanner_state_s* %sstate, %struct.ref_s* %token) #3
  %730 = load i32, i32* %code, align 4, !tbaa !27
  %code1357 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 %730, i32* %code1357, align 4, !tbaa !55
  %line1358 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1439, i32* %line1358, align 4, !tbaa !57
  %obj1359 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 2
  store %struct.ref_s* %token, %struct.ref_s** %obj1359, align 8, !tbaa !58
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.1360

cleanup.1360:                                     ; preds = %sw.default.1355, %sw.epilog.1320, %if.end.1319, %if.then.1318, %if.then.1292, %if.then.1268, %sw.bb.1248, %sw.bb.1243, %if.then.1236, %if.then.1191, %cleanup.1352, %if.end.1271, %if.end.1239, %cleanup.1178
  %731 = bitcast %struct.scanner_state_s* %sstate to i8*
  call void @llvm.lifetime.end(i64 1368, i8* %731) #2
  %732 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %732) #2
  %cleanup.dest.1362 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1362, label %cleanup.2012 [
    i32 4, label %top.7
    i32 50, label %pr
    i32 3, label %bot.1858
    i32 16, label %up
    i32 33, label %slice
    i32 61, label %rweci
    i32 8, label %rwei
    i32 2, label %rwe
  ]

sw.bb.1363:                                       ; preds = %do.end
  %733 = bitcast %struct.stream_s* %ss to i8*
  call void @llvm.lifetime.start(i64 352, i8* %733) #2
  %734 = bitcast %struct.scanner_state_s* %sstate1364 to i8*
  call void @llvm.lifetime.start(i64 1368, i8* %734) #2
  call void @s_init(%struct.stream_s* %ss, %struct.gs_memory_s* null) #3
  %735 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %736 = bitcast i16* %735 to %struct.ref_s*
  %value1365 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %736, i32 0, i32 1
  %bytes = bitcast %union.v* %value1365 to i8**
  %737 = load i8*, i8** %bytes, align 8, !tbaa !1
  %738 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %739 = bitcast i16* %738 to %struct.ref_s*
  %tas1366 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %739, i32 0, i32 0
  %rsize1367 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1366, i32 0, i32 2
  %740 = load i32, i32* %rsize1367, align 4, !tbaa !28
  call void @sread_string(%struct.stream_s* %ss, i8* %737, i32 %740) #3
  call void @gs_scanner_init_stream_options(%struct.scanner_state_s* %sstate1364, %struct.stream_s* %ss, i32 1) #3
  %741 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %742 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack1368 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %742, i32 0, i32 26
  %stack1369 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1368, i32 0, i32 0
  %p1370 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1369, i32 0, i32 0
  store %struct.ref_s* %741, %struct.ref_s** %p1370, align 8, !tbaa !5
  %743 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %call1371 = call i32 @gs_scan_token(%struct.gs_context_state_s* %743, %struct.ref_s* %token, %struct.scanner_state_s* %sstate1364) #3
  store i32 %call1371, i32* %code, align 4, !tbaa !27
  %744 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack1372 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %744, i32 0, i32 26
  %stack1373 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1372, i32 0, i32 0
  %p1374 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1373, i32 0, i32 0
  %745 = load %struct.ref_s*, %struct.ref_s** %p1374, align 8, !tbaa !5
  store %struct.ref_s* %745, %struct.ref_s** %iosp, align 8, !tbaa !1
  %746 = load i32, i32* %code, align 4, !tbaa !27
  switch i32 %746, label %sw.default.1426 [
    i32 0, label %sw.bb.1375
    i32 1, label %sw.bb.1375
    i32 2, label %sw.bb.1424
    i32 3, label %sw.bb.1425
  ]

sw.bb.1375:                                       ; preds = %sw.bb.1363, %sw.bb.1363
  %747 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp1376 = icmp sgt i32 %747, 0
  br i1 %cmp1376, label %cond.true.1378, label %cond.false.1384

cond.true.1378:                                   ; preds = %sw.bb.1375
  %748 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %749 = bitcast i16* %748 to %struct.ref_s*
  %add.ptr1379 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %749, i64 1
  %750 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %value1380 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %750, i32 0, i32 1
  %const_refs1381 = bitcast %union.v* %value1380 to %struct.ref_s**
  store %struct.ref_s* %add.ptr1379, %struct.ref_s** %const_refs1381, align 8, !tbaa !1
  %751 = load i32, i32* %icount, align 4, !tbaa !27
  %752 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %tas1382 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %752, i32 0, i32 0
  %rsize1383 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1382, i32 0, i32 2
  store i32 %751, i32* %rsize1383, align 4, !tbaa !28
  br label %cond.end.1385

cond.false.1384:                                  ; preds = %sw.bb.1375
  br label %cond.end.1385

cond.end.1385:                                    ; preds = %cond.false.1384, %cond.true.1378
  %cond1386 = phi i32 [ %751, %cond.true.1378 ], [ 0, %cond.false.1384 ]
  %753 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %753) #2
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %ss, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  %754 = load i8*, i8** %limit, align 8, !tbaa !81
  %cursor1387 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %ss, i32 0, i32 5
  %r1388 = bitcast %union.stream_cursor_s* %cursor1387 to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r1388, i32 0, i32 0
  %755 = load i8*, i8** %ptr, align 8, !tbaa !83
  %sub.ptr.lhs.cast1389 = ptrtoint i8* %754 to i64
  %sub.ptr.rhs.cast1390 = ptrtoint i8* %755 to i64
  %sub.ptr.sub1391 = sub i64 %sub.ptr.lhs.cast1389, %sub.ptr.rhs.cast1390
  %conv1392 = trunc i64 %sub.ptr.sub1391 to i32
  store i32 %conv1392, i32* %size, align 4, !tbaa !27
  %756 = load i32, i32* %size, align 4, !tbaa !27
  %tobool1393 = icmp ne i32 %756, 0
  br i1 %tobool1393, label %if.then.1394, label %if.end.1416

if.then.1394:                                     ; preds = %cond.end.1385
  %757 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %758 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack1395 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %758, i32 0, i32 25
  %stack1396 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1395, i32 0, i32 0
  %top1397 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1396, i32 0, i32 2
  %759 = load %struct.ref_s*, %struct.ref_s** %top1397, align 8, !tbaa !26
  %cmp1398 = icmp uge %struct.ref_s* %757, %759
  br i1 %cmp1398, label %if.then.1400, label %if.end.1403

if.then.1400:                                     ; preds = %if.then.1394
  %code1401 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 -5, i32* %code1401, align 4, !tbaa !55
  %line1402 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1464, i32* %line1402, align 4, !tbaa !57
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup.1417

if.end.1403:                                      ; preds = %if.then.1394
  %760 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %incdec.ptr1404 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %760, i32 1
  store %struct.ref_s* %incdec.ptr1404, %struct.ref_s** %iesp, align 8, !tbaa !1
  %761 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %762 = bitcast i16* %761 to %struct.ref_s*
  %tas1405 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %762, i32 0, i32 0
  %type_attrs1406 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1405, i32 0, i32 0
  %763 = load i16, i16* %type_attrs1406, align 2, !tbaa !22
  %764 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %tas1407 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %764, i32 0, i32 0
  %type_attrs1408 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1407, i32 0, i32 0
  store i16 %763, i16* %type_attrs1408, align 2, !tbaa !22
  %cursor1409 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %ss, i32 0, i32 5
  %r1410 = bitcast %union.stream_cursor_s* %cursor1409 to %struct.stream_cursor_read_s*
  %ptr1411 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r1410, i32 0, i32 0
  %765 = load i8*, i8** %ptr1411, align 8, !tbaa !83
  %add.ptr1412 = getelementptr inbounds i8, i8* %765, i64 1
  %766 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %value1413 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %766, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value1413 to i8**
  store i8* %add.ptr1412, i8** %const_bytes, align 8, !tbaa !1
  %767 = load i32, i32* %size, align 4, !tbaa !27
  %768 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %tas1414 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %768, i32 0, i32 0
  %rsize1415 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1414, i32 0, i32 2
  store i32 %767, i32* %rsize1415, align 4, !tbaa !28
  br label %if.end.1416

if.end.1416:                                      ; preds = %if.end.1403, %cond.end.1385
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1417

cleanup.1417:                                     ; preds = %if.then.1400, %if.end.1416
  %769 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %769) #2
  %cleanup.dest.1418 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1418, label %cleanup.1431 [
    i32 0, label %cleanup.cont.1419
  ]

cleanup.cont.1419:                                ; preds = %cleanup.1417
  %770 = load i32, i32* %code, align 4, !tbaa !27
  %cmp1420 = icmp eq i32 %770, 0
  br i1 %cmp1420, label %if.then.1422, label %if.end.1423

if.then.1422:                                     ; preds = %cleanup.cont.1419
  %771 = bitcast %struct.ref_s* %token to i16*
  store i16* %771, i16** %iref_packed, align 8, !tbaa !1
  store i32 0, i32* %icount, align 4, !tbaa !27
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.1431

if.end.1423:                                      ; preds = %cleanup.cont.1419
  store %struct.ref_s* %token, %struct.ref_s** %pvalue, align 8, !tbaa !1
  store i32 50, i32* %cleanup.dest.slot
  br label %cleanup.1431

sw.bb.1424:                                       ; preds = %sw.bb.1363
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.1431

sw.bb.1425:                                       ; preds = %sw.bb.1363
  store i32 -18, i32* %code, align 4, !tbaa !27
  br label %sw.default.1426

sw.default.1426:                                  ; preds = %sw.bb.1363, %sw.bb.1425
  %772 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %773 = bitcast i16* %772 to %struct.ref_s*
  %774 = bitcast %struct.ref_s* %token to i8*
  %775 = bitcast %struct.ref_s* %773 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %774, i8* %775, i64 16, i32 8, i1 false), !tbaa.struct !29
  %776 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %call1427 = call i32 @gs_scanner_error_object(%struct.gs_context_state_s* %776, %struct.scanner_state_s* %sstate1364, %struct.ref_s* %token) #3
  %777 = load i32, i32* %code, align 4, !tbaa !27
  %code1428 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 %777, i32* %code1428, align 4, !tbaa !55
  %line1429 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1486, i32* %line1429, align 4, !tbaa !57
  %obj1430 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 2
  store %struct.ref_s* %token, %struct.ref_s** %obj1430, align 8, !tbaa !58
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.1431

cleanup.1431:                                     ; preds = %sw.default.1426, %sw.bb.1424, %if.end.1423, %if.then.1422, %cleanup.1417
  %778 = bitcast %struct.scanner_state_s* %sstate1364 to i8*
  call void @llvm.lifetime.end(i64 1368, i8* %778) #2
  %779 = bitcast %struct.stream_s* %ss to i8*
  call void @llvm.lifetime.end(i64 352, i8* %779) #2
  %cleanup.dest.1433 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1433, label %cleanup.2012 [
    i32 4, label %top.7
    i32 50, label %pr
    i32 3, label %bot.1858
    i32 8, label %rwei
    i32 2, label %rwe
  ]

sw.default.1434:                                  ; preds = %do.end
  %780 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %780) #2
  %781 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %782 = load i16, i16* %781, align 2, !tbaa !21
  %conv1435 = zext i16 %782 to i32
  %shr1436 = ashr i32 %conv1435, 13
  switch i32 %shr1436, label %sw.epilog.1840 [
    i32 0, label %sw.bb.1437
    i32 1, label %sw.bb.1437
    i32 2, label %sw.bb.1460
    i32 3, label %sw.bb.1628
    i32 6, label %sw.bb.1664
    i32 7, label %sw.bb.1712
  ]

sw.bb.1437:                                       ; preds = %sw.default.1434, %sw.default.1434
  br label %do.body.1438

do.body.1438:                                     ; preds = %sw.bb.1437
  br label %do.cond.1439

do.cond.1439:                                     ; preds = %do.body.1438
  br label %do.end.1440

do.end.1440:                                      ; preds = %do.cond.1439
  %783 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %784 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack1441 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %784, i32 0, i32 26
  %stack1442 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1441, i32 0, i32 0
  %top1443 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1442, i32 0, i32 2
  %785 = load %struct.ref_s*, %struct.ref_s** %top1443, align 8, !tbaa !19
  %cmp1444 = icmp uge %struct.ref_s* %783, %785
  br i1 %cmp1444, label %if.then.1446, label %if.end.1452

if.then.1446:                                     ; preds = %do.end.1440
  %786 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack1447 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %786, i32 0, i32 26
  %stack1448 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1447, i32 0, i32 0
  %requested1449 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1448, i32 0, i32 7
  store i32 1, i32* %requested1449, align 4, !tbaa !20
  %code1450 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 -16, i32* %code1450, align 4, !tbaa !55
  %line1451 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1500, i32* %line1451, align 4, !tbaa !57
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup.1841

if.end.1452:                                      ; preds = %do.end.1440
  %787 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %incdec.ptr1453 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %787, i32 1
  store %struct.ref_s* %incdec.ptr1453, %struct.ref_s** %iosp, align 8, !tbaa !1
  %788 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %789 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %790 = bitcast i16* %789 to %struct.ref_s*
  %791 = bitcast %struct.ref_s* %788 to i8*
  %792 = bitcast %struct.ref_s* %790 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %791, i8* %792, i64 16, i32 8, i1 false), !tbaa.struct !29
  %793 = load i32, i32* %icount, align 4, !tbaa !27
  %dec1454 = add nsw i32 %793, -1
  store i32 %dec1454, i32* %icount, align 4, !tbaa !27
  %cmp1455 = icmp sgt i32 %dec1454, 0
  br i1 %cmp1455, label %if.then.1457, label %if.else.1459

if.then.1457:                                     ; preds = %if.end.1452
  %794 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %795 = bitcast i16* %794 to %struct.ref_s*
  %add.ptr1458 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %795, i64 1
  %796 = bitcast %struct.ref_s* %add.ptr1458 to i16*
  store i16* %796, i16** %iref_packed, align 8, !tbaa !1
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.1841

if.else.1459:                                     ; preds = %if.end.1452
  store i32 55, i32* %cleanup.dest.slot
  br label %cleanup.1841

sw.bb.1460:                                       ; preds = %sw.default.1434
  %797 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %798 = load i16, i16* %797, align 2, !tbaa !21
  %conv1461 = zext i16 %798 to i32
  %and1462 = and i32 %conv1461, 4095
  store i32 %and1462, i32* %index, align 4, !tbaa !27
  %799 = load i32, i32* %ticks_left, align 4, !tbaa !27
  %dec1463 = add nsw i32 %799, -1
  store i32 %dec1463, i32* %ticks_left, align 4, !tbaa !27
  %cmp1464 = icmp sle i32 %dec1463, 0
  br i1 %cmp1464, label %if.then.1466, label %if.end.1467

if.then.1466:                                     ; preds = %sw.bb.1460
  br label %if.end.1467

if.end.1467:                                      ; preds = %if.then.1466, %sw.bb.1460
  %800 = load i32, i32* %index, align 4, !tbaa !27
  %801 = load i32, i32* @op_def_count, align 4, !tbaa !27
  %cmp1468 = icmp ult i32 %800, %801
  br i1 %cmp1468, label %if.end.1510, label %if.then.1470

if.then.1470:                                     ; preds = %if.end.1467
  br label %do.body.1471

do.body.1471:                                     ; preds = %if.then.1470
  br label %do.cond.1472

do.cond.1472:                                     ; preds = %do.body.1471
  br label %do.end.1473

do.end.1473:                                      ; preds = %do.cond.1472
  %802 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp1474 = icmp sgt i32 %802, 0
  br i1 %cmp1474, label %cond.true.1476, label %cond.false.1482

cond.true.1476:                                   ; preds = %do.end.1473
  %803 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %add.ptr1477 = getelementptr inbounds i16, i16* %803, i64 1
  %804 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %value1478 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %804, i32 0, i32 1
  %packed1479 = bitcast %union.v* %value1478 to i16**
  store i16* %add.ptr1477, i16** %packed1479, align 8, !tbaa !1
  %805 = load i32, i32* %icount, align 4, !tbaa !27
  %806 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %tas1480 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %806, i32 0, i32 0
  %rsize1481 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1480, i32 0, i32 2
  store i32 %805, i32* %rsize1481, align 4, !tbaa !28
  br label %cond.end.1483

cond.false.1482:                                  ; preds = %do.end.1473
  br label %cond.end.1483

cond.end.1483:                                    ; preds = %cond.false.1482, %cond.true.1476
  %cond1484 = phi i32 [ %805, %cond.true.1476 ], [ 0, %cond.false.1482 ]
  %807 = load i32, i32* %index, align 4, !tbaa !27
  store i32 %807, i32* %opindex, align 4, !tbaa !27
  %808 = load i32, i32* @op_def_count, align 4, !tbaa !27
  %809 = load i32, i32* %index, align 4, !tbaa !27
  %sub1485 = sub i32 %809, %808
  store i32 %sub1485, i32* %index, align 4, !tbaa !27
  %810 = load i32, i32* %index, align 4, !tbaa !27
  %811 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_array_table_global = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %811, i32 0, i32 19
  %table = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %op_array_table_global, i32 0, i32 0
  %tas1486 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %table, i32 0, i32 0
  %rsize1487 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1486, i32 0, i32 2
  %812 = load i32, i32* %rsize1487, align 4, !tbaa !28
  %cmp1488 = icmp ult i32 %810, %812
  br i1 %cmp1488, label %cond.true.1490, label %cond.false.1497

cond.true.1490:                                   ; preds = %cond.end.1483
  %813 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_array_table_global1491 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %813, i32 0, i32 19
  %table1492 = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %op_array_table_global1491, i32 0, i32 0
  %value1493 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %table1492, i32 0, i32 1
  %const_refs1494 = bitcast %union.v* %value1493 to %struct.ref_s**
  %814 = load %struct.ref_s*, %struct.ref_s** %const_refs1494, align 8, !tbaa !1
  %815 = load i32, i32* %index, align 4, !tbaa !27
  %idx.ext1495 = zext i32 %815 to i64
  %add.ptr1496 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %814, i64 %idx.ext1495
  br label %cond.end.1508

cond.false.1497:                                  ; preds = %cond.end.1483
  %816 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_array_table_local = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %816, i32 0, i32 20
  %table1498 = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %op_array_table_local, i32 0, i32 0
  %value1499 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %table1498, i32 0, i32 1
  %const_refs1500 = bitcast %union.v* %value1499 to %struct.ref_s**
  %817 = load %struct.ref_s*, %struct.ref_s** %const_refs1500, align 8, !tbaa !1
  %818 = load i32, i32* %index, align 4, !tbaa !27
  %819 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_array_table_global1501 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %819, i32 0, i32 19
  %table1502 = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %op_array_table_global1501, i32 0, i32 0
  %tas1503 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %table1502, i32 0, i32 0
  %rsize1504 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1503, i32 0, i32 2
  %820 = load i32, i32* %rsize1504, align 4, !tbaa !28
  %sub1505 = sub i32 %818, %820
  %idx.ext1506 = zext i32 %sub1505 to i64
  %add.ptr1507 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %817, i64 %idx.ext1506
  br label %cond.end.1508

cond.end.1508:                                    ; preds = %cond.false.1497, %cond.true.1490
  %cond1509 = phi %struct.ref_s* [ %add.ptr1496, %cond.true.1490 ], [ %add.ptr1507, %cond.false.1497 ]
  store %struct.ref_s* %cond1509, %struct.ref_s** %pvalue, align 8, !tbaa !1
  store i32 49, i32* %cleanup.dest.slot
  br label %cleanup.1841

if.end.1510:                                      ; preds = %if.end.1467
  br label %do.body.1511

do.body.1511:                                     ; preds = %if.end.1510
  br label %do.cond.1512

do.cond.1512:                                     ; preds = %do.body.1511
  br label %do.end.1513

do.end.1513:                                      ; preds = %do.cond.1512
  %821 = load i32, i32* %index, align 4, !tbaa !27
  switch i32 %821, label %sw.default.1525 [
    i32 1, label %sw.bb.1514
    i32 2, label %sw.bb.1515
    i32 3, label %sw.bb.1516
    i32 4, label %sw.bb.1517
    i32 5, label %sw.bb.1518
    i32 6, label %sw.bb.1519
    i32 7, label %sw.bb.1520
    i32 8, label %sw.bb.1521
    i32 9, label %sw.bb.1522
    i32 10, label %sw.bb.1523
    i32 0, label %sw.bb.1524
  ]

sw.bb.1514:                                       ; preds = %do.end.1513
  store i32 13, i32* %cleanup.dest.slot
  br label %cleanup.1841

sw.bb.1515:                                       ; preds = %do.end.1513
  store i32 17, i32* %cleanup.dest.slot
  br label %cleanup.1841

sw.bb.1516:                                       ; preds = %do.end.1513
  store i32 20, i32* %cleanup.dest.slot
  br label %cleanup.1841

sw.bb.1517:                                       ; preds = %do.end.1513
  store i32 23, i32* %cleanup.dest.slot
  br label %cleanup.1841

sw.bb.1518:                                       ; preds = %do.end.1513
  store i32 26, i32* %cleanup.dest.slot
  br label %cleanup.1841

sw.bb.1519:                                       ; preds = %do.end.1513
  store i32 30, i32* %cleanup.dest.slot
  br label %cleanup.1841

sw.bb.1520:                                       ; preds = %do.end.1513
  store i32 34, i32* %cleanup.dest.slot
  br label %cleanup.1841

sw.bb.1521:                                       ; preds = %do.end.1513
  store i32 37, i32* %cleanup.dest.slot
  br label %cleanup.1841

sw.bb.1522:                                       ; preds = %do.end.1513
  store i32 40, i32* %cleanup.dest.slot
  br label %cleanup.1841

sw.bb.1523:                                       ; preds = %do.end.1513
  store i32 43, i32* %cleanup.dest.slot
  br label %cleanup.1841

sw.bb.1524:                                       ; preds = %do.end.1513
  br label %sw.default.1525

sw.default.1525:                                  ; preds = %do.end.1513, %sw.bb.1524
  br label %sw.epilog.1526

sw.epilog.1526:                                   ; preds = %sw.default.1525
  br label %do.body.1527

do.body.1527:                                     ; preds = %sw.epilog.1526
  br label %do.cond.1528

do.cond.1528:                                     ; preds = %do.body.1527
  br label %do.end.1529

do.end.1529:                                      ; preds = %do.cond.1528
  %822 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %823 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack1530 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %823, i32 0, i32 25
  %stack1531 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1530, i32 0, i32 0
  %p1532 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1531, i32 0, i32 0
  store %struct.ref_s* %822, %struct.ref_s** %p1532, align 8, !tbaa !25
  %824 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %825 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack1533 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %825, i32 0, i32 26
  %stack1534 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1533, i32 0, i32 0
  %p1535 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1534, i32 0, i32 0
  store %struct.ref_s* %824, %struct.ref_s** %p1535, align 8, !tbaa !5
  %826 = load i32, i32* %index, align 4, !tbaa !27
  %and1536 = and i32 %826, 15
  %idxprom1537 = zext i32 %and1536 to i64
  %827 = load i32, i32* %index, align 4, !tbaa !27
  %shr1538 = lshr i32 %827, 4
  %idxprom1539 = zext i32 %shr1538 to i64
  %arrayidx1540 = getelementptr inbounds [0 x %struct.op_def*], [0 x %struct.op_def*]* @op_defs_all, i32 0, i64 %idxprom1539
  %828 = load %struct.op_def*, %struct.op_def** %arrayidx1540, align 8, !tbaa !1
  %arrayidx1541 = getelementptr inbounds %struct.op_def, %struct.op_def* %828, i64 %idxprom1537
  %proc1542 = getelementptr inbounds %struct.op_def, %struct.op_def* %arrayidx1541, i32 0, i32 1
  %829 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %proc1542, align 8, !tbaa !37
  %830 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %call1543 = call i32 %829(%struct.gs_context_state_s* %830) #3
  store i32 %call1543, i32* %code, align 4, !tbaa !27
  switch i32 %call1543, label %sw.epilog.1620 [
    i32 0, label %sw.bb.1544
    i32 1, label %sw.bb.1544
    i32 5, label %sw.bb.1559
    i32 14, label %sw.bb.1571
    i32 22, label %sw.bb.1596
    i32 -103, label %sw.bb.1608
  ]

sw.bb.1544:                                       ; preds = %do.end.1529, %do.end.1529
  %831 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack1545 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %831, i32 0, i32 26
  %stack1546 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1545, i32 0, i32 0
  %p1547 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1546, i32 0, i32 0
  %832 = load %struct.ref_s*, %struct.ref_s** %p1547, align 8, !tbaa !5
  store %struct.ref_s* %832, %struct.ref_s** %iosp, align 8, !tbaa !1
  %833 = load i32, i32* %icount, align 4, !tbaa !27
  %dec1548 = add nsw i32 %833, -1
  store i32 %dec1548, i32* %icount, align 4, !tbaa !27
  %cmp1549 = icmp sle i32 %dec1548, 0
  br i1 %cmp1549, label %if.then.1551, label %if.end.1557

if.then.1551:                                     ; preds = %sw.bb.1544
  %834 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp1552 = icmp slt i32 %834, 0
  br i1 %cmp1552, label %if.then.1554, label %if.end.1555

if.then.1554:                                     ; preds = %if.then.1551
  store i32 16, i32* %cleanup.dest.slot
  br label %cleanup.1841

if.end.1555:                                      ; preds = %if.then.1551
  %835 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %incdec.ptr1556 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %835, i32 -1
  store %struct.ref_s* %incdec.ptr1556, %struct.ref_s** %iesp, align 8, !tbaa !1
  br label %if.end.1557

if.end.1557:                                      ; preds = %if.end.1555, %sw.bb.1544
  %836 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %incdec.ptr1558 = getelementptr inbounds i16, i16* %836, i32 1
  store i16* %incdec.ptr1558, i16** %iref_packed, align 8, !tbaa !1
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.1841

sw.bb.1559:                                       ; preds = %do.end.1529
  %837 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp1560 = icmp sgt i32 %837, 0
  br i1 %cmp1560, label %cond.true.1562, label %cond.false.1568

cond.true.1562:                                   ; preds = %sw.bb.1559
  %838 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %add.ptr1563 = getelementptr inbounds i16, i16* %838, i64 1
  %839 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %value1564 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %839, i32 0, i32 1
  %packed1565 = bitcast %union.v* %value1564 to i16**
  store i16* %add.ptr1563, i16** %packed1565, align 8, !tbaa !1
  %840 = load i32, i32* %icount, align 4, !tbaa !27
  %841 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %tas1566 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %841, i32 0, i32 0
  %rsize1567 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1566, i32 0, i32 2
  store i32 %840, i32* %rsize1567, align 4, !tbaa !28
  br label %cond.end.1569

cond.false.1568:                                  ; preds = %sw.bb.1559
  br label %cond.end.1569

cond.end.1569:                                    ; preds = %cond.false.1568, %cond.true.1562
  %cond1570 = phi i32 [ %840, %cond.true.1562 ], [ 0, %cond.false.1568 ]
  store i32 56, i32* %cleanup.dest.slot
  br label %cleanup.1841

sw.bb.1571:                                       ; preds = %do.end.1529
  %842 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack1572 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %842, i32 0, i32 26
  %stack1573 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1572, i32 0, i32 0
  %p1574 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1573, i32 0, i32 0
  %843 = load %struct.ref_s*, %struct.ref_s** %p1574, align 8, !tbaa !5
  store %struct.ref_s* %843, %struct.ref_s** %iosp, align 8, !tbaa !1
  %844 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack1575 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %844, i32 0, i32 25
  %stack1576 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1575, i32 0, i32 0
  %p1577 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1576, i32 0, i32 0
  %845 = load %struct.ref_s*, %struct.ref_s** %p1577, align 8, !tbaa !25
  %846 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %cmp1578 = icmp eq %struct.ref_s* %845, %846
  br i1 %cmp1578, label %if.then.1580, label %if.end.1592

if.then.1580:                                     ; preds = %sw.bb.1571
  %847 = load i32, i32* %icount, align 4, !tbaa !27
  %dec1581 = add nsw i32 %847, -1
  store i32 %dec1581, i32* %icount, align 4, !tbaa !27
  %cmp1582 = icmp sle i32 %dec1581, 0
  br i1 %cmp1582, label %if.then.1584, label %if.end.1590

if.then.1584:                                     ; preds = %if.then.1580
  %848 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp1585 = icmp slt i32 %848, 0
  br i1 %cmp1585, label %if.then.1587, label %if.end.1588

if.then.1587:                                     ; preds = %if.then.1584
  store i32 16, i32* %cleanup.dest.slot
  br label %cleanup.1841

if.end.1588:                                      ; preds = %if.then.1584
  %849 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %incdec.ptr1589 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %849, i32 -1
  store %struct.ref_s* %incdec.ptr1589, %struct.ref_s** %iesp, align 8, !tbaa !1
  br label %if.end.1590

if.end.1590:                                      ; preds = %if.end.1588, %if.then.1580
  %850 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %incdec.ptr1591 = getelementptr inbounds i16, i16* %850, i32 1
  store i16* %incdec.ptr1591, i16** %iref_packed, align 8, !tbaa !1
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.1841

if.end.1592:                                      ; preds = %sw.bb.1571
  %851 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack1593 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %851, i32 0, i32 25
  %stack1594 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1593, i32 0, i32 0
  %p1595 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1594, i32 0, i32 0
  %852 = load %struct.ref_s*, %struct.ref_s** %p1595, align 8, !tbaa !25
  store %struct.ref_s* %852, %struct.ref_s** %iesp, align 8, !tbaa !1
  store i32 16, i32* %cleanup.dest.slot
  br label %cleanup.1841

sw.bb.1596:                                       ; preds = %do.end.1529
  %853 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp1597 = icmp sgt i32 %853, 0
  br i1 %cmp1597, label %cond.true.1599, label %cond.false.1605

cond.true.1599:                                   ; preds = %sw.bb.1596
  %854 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %add.ptr1600 = getelementptr inbounds i16, i16* %854, i64 1
  %855 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %value1601 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %855, i32 0, i32 1
  %packed1602 = bitcast %union.v* %value1601 to i16**
  store i16* %add.ptr1600, i16** %packed1602, align 8, !tbaa !1
  %856 = load i32, i32* %icount, align 4, !tbaa !27
  %857 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %tas1603 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %857, i32 0, i32 0
  %rsize1604 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1603, i32 0, i32 2
  store i32 %856, i32* %rsize1604, align 4, !tbaa !28
  br label %cond.end.1606

cond.false.1605:                                  ; preds = %sw.bb.1596
  br label %cond.end.1606

cond.end.1606:                                    ; preds = %cond.false.1605, %cond.true.1599
  %cond1607 = phi i32 [ %856, %cond.true.1599 ], [ 0, %cond.false.1605 ]
  store i32 58, i32* %cleanup.dest.slot
  br label %cleanup.1841

sw.bb.1608:                                       ; preds = %do.end.1529
  %858 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp1609 = icmp sgt i32 %858, 0
  br i1 %cmp1609, label %cond.true.1611, label %cond.false.1617

cond.true.1611:                                   ; preds = %sw.bb.1608
  %859 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %add.ptr1612 = getelementptr inbounds i16, i16* %859, i64 1
  %860 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %value1613 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %860, i32 0, i32 1
  %packed1614 = bitcast %union.v* %value1613 to i16**
  store i16* %add.ptr1612, i16** %packed1614, align 8, !tbaa !1
  %861 = load i32, i32* %icount, align 4, !tbaa !27
  %862 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %tas1615 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %862, i32 0, i32 0
  %rsize1616 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1615, i32 0, i32 2
  store i32 %861, i32* %rsize1616, align 4, !tbaa !28
  br label %cond.end.1618

cond.false.1617:                                  ; preds = %sw.bb.1608
  br label %cond.end.1618

cond.end.1618:                                    ; preds = %cond.false.1617, %cond.true.1611
  %cond1619 = phi i32 [ %861, %cond.true.1611 ], [ 0, %cond.false.1617 ]
  store i32 60, i32* %cleanup.dest.slot
  br label %cleanup.1841

sw.epilog.1620:                                   ; preds = %do.end.1529
  %863 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack1621 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %863, i32 0, i32 26
  %stack1622 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1621, i32 0, i32 0
  %p1623 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1622, i32 0, i32 0
  %864 = load %struct.ref_s*, %struct.ref_s** %p1623, align 8, !tbaa !5
  store %struct.ref_s* %864, %struct.ref_s** %iosp, align 8, !tbaa !1
  %865 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack1624 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %865, i32 0, i32 25
  %stack1625 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1624, i32 0, i32 0
  %p1626 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1625, i32 0, i32 0
  %866 = load %struct.ref_s*, %struct.ref_s** %p1626, align 8, !tbaa !25
  store %struct.ref_s* %866, %struct.ref_s** %iesp, align 8, !tbaa !1
  %line1627 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1585, i32* %line1627, align 4, !tbaa !57
  store i32 61, i32* %cleanup.dest.slot
  br label %cleanup.1841

sw.bb.1628:                                       ; preds = %sw.default.1434
  br label %do.body.1629

do.body.1629:                                     ; preds = %sw.bb.1628
  br label %do.cond.1630

do.cond.1630:                                     ; preds = %do.body.1629
  br label %do.end.1631

do.end.1631:                                      ; preds = %do.cond.1630
  %867 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %868 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack1632 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %868, i32 0, i32 26
  %stack1633 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1632, i32 0, i32 0
  %top1634 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1633, i32 0, i32 2
  %869 = load %struct.ref_s*, %struct.ref_s** %top1634, align 8, !tbaa !19
  %cmp1635 = icmp uge %struct.ref_s* %867, %869
  br i1 %cmp1635, label %if.then.1637, label %if.end.1643

if.then.1637:                                     ; preds = %do.end.1631
  %870 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack1638 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %870, i32 0, i32 26
  %stack1639 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1638, i32 0, i32 0
  %requested1640 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1639, i32 0, i32 7
  store i32 1, i32* %requested1640, align 4, !tbaa !20
  %code1641 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 -16, i32* %code1641, align 4, !tbaa !55
  %line1642 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1589, i32* %line1642, align 4, !tbaa !57
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup.1841

if.end.1643:                                      ; preds = %do.end.1631
  %871 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %incdec.ptr1644 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %871, i32 1
  store %struct.ref_s* %incdec.ptr1644, %struct.ref_s** %iosp, align 8, !tbaa !1
  %872 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %873 = load i16, i16* %872, align 2, !tbaa !21
  %conv1645 = zext i16 %873 to i32
  %and1646 = and i32 %conv1645, 4095
  %add1647 = add nsw i32 %and1646, -2048
  %conv1648 = sext i32 %add1647 to i64
  %874 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %value1649 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %874, i32 0, i32 1
  %intval1650 = bitcast %union.v* %value1649 to i64*
  store i64 %conv1648, i64* %intval1650, align 8, !tbaa !30
  %875 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %tas1651 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %875, i32 0, i32 0
  %type_attrs1652 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1651, i32 0, i32 0
  store i16 2816, i16* %type_attrs1652, align 2, !tbaa !22
  %876 = load i32, i32* %icount, align 4, !tbaa !27
  %dec1653 = add nsw i32 %876, -1
  store i32 %dec1653, i32* %icount, align 4, !tbaa !27
  %cmp1654 = icmp sle i32 %dec1653, 0
  br i1 %cmp1654, label %if.then.1656, label %if.end.1662

if.then.1656:                                     ; preds = %if.end.1643
  %877 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp1657 = icmp slt i32 %877, 0
  br i1 %cmp1657, label %if.then.1659, label %if.end.1660

if.then.1659:                                     ; preds = %if.then.1656
  store i32 16, i32* %cleanup.dest.slot
  br label %cleanup.1841

if.end.1660:                                      ; preds = %if.then.1656
  %878 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %incdec.ptr1661 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %878, i32 -1
  store %struct.ref_s* %incdec.ptr1661, %struct.ref_s** %iesp, align 8, !tbaa !1
  br label %if.end.1662

if.end.1662:                                      ; preds = %if.end.1660, %if.end.1643
  %879 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %incdec.ptr1663 = getelementptr inbounds i16, i16* %879, i32 1
  store i16* %incdec.ptr1663, i16** %iref_packed, align 8, !tbaa !1
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.1841

sw.bb.1664:                                       ; preds = %sw.default.1434
  br label %do.body.1665

do.body.1665:                                     ; preds = %sw.bb.1664
  br label %do.cond.1666

do.cond.1666:                                     ; preds = %do.body.1665
  br label %do.end.1667

do.end.1667:                                      ; preds = %do.cond.1666
  %880 = bitcast i32* %nidx1668 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %880) #2
  %881 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %882 = load i16, i16* %881, align 2, !tbaa !21
  %conv1669 = zext i16 %882 to i32
  %and1670 = and i32 %conv1669, 4095
  store i32 %and1670, i32* %nidx1668, align 4, !tbaa !27
  %883 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %884 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack1671 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %884, i32 0, i32 26
  %stack1672 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1671, i32 0, i32 0
  %top1673 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1672, i32 0, i32 2
  %885 = load %struct.ref_s*, %struct.ref_s** %top1673, align 8, !tbaa !19
  %cmp1674 = icmp uge %struct.ref_s* %883, %885
  br i1 %cmp1674, label %if.then.1676, label %if.end.1682

if.then.1676:                                     ; preds = %do.end.1667
  %886 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack1677 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %886, i32 0, i32 26
  %stack1678 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1677, i32 0, i32 0
  %requested1679 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1678, i32 0, i32 7
  store i32 1, i32* %requested1679, align 4, !tbaa !20
  %code1680 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 -16, i32* %code1680, align 4, !tbaa !55
  %line1681 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1601, i32* %line1681, align 4, !tbaa !57
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup.1711

if.end.1682:                                      ; preds = %do.end.1667
  %887 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %incdec.ptr1683 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %887, i32 1
  store %struct.ref_s* %incdec.ptr1683, %struct.ref_s** %iosp, align 8, !tbaa !1
  %888 = load i32, i32* %nidx1668, align 4, !tbaa !27
  %shr1684 = lshr i32 %888, 9
  %idxprom1685 = zext i32 %shr1684 to i64
  %889 = load %struct.name_table_s*, %struct.name_table_s** %int_nt, align 8, !tbaa !1
  %sub1686 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %889, i32 0, i32 8
  %arrayidx1687 = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub1686, i32 0, i64 %idxprom1685
  %names = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx1687, i32 0, i32 0
  %890 = load %struct.name_sub_table_s*, %struct.name_sub_table_s** %names, align 8, !tbaa !84
  %names1688 = getelementptr inbounds %struct.name_sub_table_s, %struct.name_sub_table_s* %890, i32 0, i32 0
  %arraydecay = getelementptr inbounds [512 x %struct.name_s], [512 x %struct.name_s]* %names1688, i32 0, i32 0
  %891 = load i32, i32* %nidx1668, align 4, !tbaa !27
  %and1689 = and i32 %891, 511
  %idx.ext1690 = zext i32 %and1689 to i64
  %add.ptr1691 = getelementptr inbounds %struct.name_s, %struct.name_s* %arraydecay, i64 %idx.ext1690
  %892 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %value1692 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %892, i32 0, i32 1
  %pname1693 = bitcast %union.v* %value1692 to %struct.name_s**
  store %struct.name_s* %add.ptr1691, %struct.name_s** %pname1693, align 8, !tbaa !1
  %893 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %tas1694 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %893, i32 0, i32 0
  %type_attrs1695 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1694, i32 0, i32 0
  store i16 3332, i16* %type_attrs1695, align 2, !tbaa !22
  %894 = load i32, i32* %nidx1668, align 4, !tbaa !27
  %conv1696 = trunc i32 %894 to i16
  %conv1697 = zext i16 %conv1696 to i32
  %895 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %tas1698 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %895, i32 0, i32 0
  %rsize1699 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1698, i32 0, i32 2
  store i32 %conv1697, i32* %rsize1699, align 4, !tbaa !28
  %896 = load i32, i32* %icount, align 4, !tbaa !27
  %dec1700 = add nsw i32 %896, -1
  store i32 %dec1700, i32* %icount, align 4, !tbaa !27
  %cmp1701 = icmp sle i32 %dec1700, 0
  br i1 %cmp1701, label %if.then.1703, label %if.end.1709

if.then.1703:                                     ; preds = %if.end.1682
  %897 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp1704 = icmp slt i32 %897, 0
  br i1 %cmp1704, label %if.then.1706, label %if.end.1707

if.then.1706:                                     ; preds = %if.then.1703
  store i32 16, i32* %cleanup.dest.slot
  br label %cleanup.1711

if.end.1707:                                      ; preds = %if.then.1703
  %898 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %incdec.ptr1708 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %898, i32 -1
  store %struct.ref_s* %incdec.ptr1708, %struct.ref_s** %iesp, align 8, !tbaa !1
  br label %if.end.1709

if.end.1709:                                      ; preds = %if.end.1707, %if.end.1682
  %899 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %incdec.ptr1710 = getelementptr inbounds i16, i16* %899, i32 1
  store i16* %incdec.ptr1710, i16** %iref_packed, align 8, !tbaa !1
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.1711

cleanup.1711:                                     ; preds = %if.then.1706, %if.then.1676, %if.end.1709
  %900 = bitcast i32* %nidx1668 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %900) #2
  br label %cleanup.1841

sw.bb.1712:                                       ; preds = %sw.default.1434
  br label %do.body.1713

do.body.1713:                                     ; preds = %sw.bb.1712
  br label %do.cond.1714

do.cond.1714:                                     ; preds = %do.body.1713
  br label %do.end.1715

do.end.1715:                                      ; preds = %do.cond.1714
  %901 = bitcast i32* %nidx1716 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %901) #2
  %902 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %903 = load i16, i16* %902, align 2, !tbaa !21
  %conv1717 = zext i16 %903 to i32
  %and1718 = and i32 %conv1717, 4095
  store i32 %and1718, i32* %nidx1716, align 4, !tbaa !27
  %904 = load i32, i32* %nidx1716, align 4, !tbaa !27
  %shr1719 = lshr i32 %904, 9
  %idxprom1720 = zext i32 %shr1719 to i64
  %905 = load %struct.name_table_s*, %struct.name_table_s** %int_nt, align 8, !tbaa !1
  %sub1721 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %905, i32 0, i32 8
  %arrayidx1722 = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub1721, i32 0, i64 %idxprom1720
  %names1723 = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx1722, i32 0, i32 0
  %906 = load %struct.name_sub_table_s*, %struct.name_sub_table_s** %names1723, align 8, !tbaa !84
  %names1724 = getelementptr inbounds %struct.name_sub_table_s, %struct.name_sub_table_s* %906, i32 0, i32 0
  %arraydecay1725 = getelementptr inbounds [512 x %struct.name_s], [512 x %struct.name_s]* %names1724, i32 0, i32 0
  %907 = load i32, i32* %nidx1716, align 4, !tbaa !27
  %and1726 = and i32 %907, 511
  %idx.ext1727 = zext i32 %and1726 to i64
  %add.ptr1728 = getelementptr inbounds %struct.name_s, %struct.name_s* %arraydecay1725, i64 %idx.ext1727
  %pvalue1729 = getelementptr inbounds %struct.name_s, %struct.name_s* %add.ptr1728, i32 0, i32 0
  %908 = load %struct.ref_s*, %struct.ref_s** %pvalue1729, align 8, !tbaa !66
  store %struct.ref_s* %908, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %909 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %910 = ptrtoint %struct.ref_s* %909 to i64
  %cmp1730 = icmp ugt i64 %910, 1
  br i1 %cmp1730, label %if.end.1770, label %if.then.1732

if.then.1732:                                     ; preds = %do.end.1715
  %911 = bitcast i32* %htemp1733 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %911) #2
  br label %do.body.1734

do.body.1734:                                     ; preds = %if.then.1732
  br label %do.cond.1735

do.cond.1735:                                     ; preds = %do.body.1734
  br label %do.end.1736

do.end.1736:                                      ; preds = %do.cond.1735
  %912 = load i32, i32* %nidx1716, align 4, !tbaa !27
  %913 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack1737 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %913, i32 0, i32 24
  %top_npairs1738 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack1737, i32 0, i32 5
  %914 = load i32, i32* %top_npairs1738, align 4, !tbaa !70
  %sub1739 = sub i32 %914, 1
  %and1740 = and i32 %912, %sub1739
  %add1741 = add i32 %and1740, 1
  store i32 %add1741, i32* %htemp1733, align 4, !tbaa !27
  %idxprom1742 = zext i32 %add1741 to i64
  %915 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack1743 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %915, i32 0, i32 24
  %top_keys1744 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack1743, i32 0, i32 4
  %916 = load i16*, i16** %top_keys1744, align 8, !tbaa !71
  %arrayidx1745 = getelementptr inbounds i16, i16* %916, i64 %idxprom1742
  %917 = load i16, i16* %arrayidx1745, align 2, !tbaa !21
  %conv1746 = zext i16 %917 to i32
  %918 = load i32, i32* %nidx1716, align 4, !tbaa !27
  %add1747 = add i32 49152, %918
  %cmp1748 = icmp eq i32 %conv1746, %add1747
  br i1 %cmp1748, label %cond.true.1750, label %cond.false.1755

cond.true.1750:                                   ; preds = %do.end.1736
  %919 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack1751 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %919, i32 0, i32 24
  %top_values1752 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack1751, i32 0, i32 6
  %920 = load %struct.ref_s*, %struct.ref_s** %top_values1752, align 8, !tbaa !72
  %921 = load i32, i32* %htemp1733, align 4, !tbaa !27
  %idx.ext1753 = zext i32 %921 to i64
  %add.ptr1754 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %920, i64 %idx.ext1753
  br label %cond.end.1758

cond.false.1755:                                  ; preds = %do.end.1736
  %922 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack1756 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %922, i32 0, i32 24
  %923 = load i32, i32* %nidx1716, align 4, !tbaa !27
  %call1757 = call %struct.ref_s* @dstack_find_name_by_index(%struct.dict_stack_s* %dict_stack1756, i32 %923) #3
  br label %cond.end.1758

cond.end.1758:                                    ; preds = %cond.false.1755, %cond.true.1750
  %cond1759 = phi %struct.ref_s* [ %add.ptr1754, %cond.true.1750 ], [ %call1757, %cond.false.1755 ]
  store %struct.ref_s* %cond1759, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %cmp1760 = icmp eq %struct.ref_s* %cond1759, null
  br i1 %cmp1760, label %if.then.1762, label %if.end.1766

if.then.1762:                                     ; preds = %cond.end.1758
  %924 = load %struct.name_table_s*, %struct.name_table_s** %int_nt, align 8, !tbaa !1
  %925 = load i32, i32* %nidx1716, align 4, !tbaa !27
  call void @names_index_ref(%struct.name_table_s* %924, i32 %925, %struct.ref_s* %token) #3
  %code1763 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 -21, i32* %code1763, align 4, !tbaa !55
  %line1764 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1618, i32* %line1764, align 4, !tbaa !57
  %obj1765 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 2
  store %struct.ref_s* %token, %struct.ref_s** %obj1765, align 8, !tbaa !58
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.1767

if.end.1766:                                      ; preds = %cond.end.1758
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1767

cleanup.1767:                                     ; preds = %if.then.1762, %if.end.1766
  %926 = bitcast i32* %htemp1733 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %926) #2
  %cleanup.dest.1768 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1768, label %cleanup.1839 [
    i32 0, label %cleanup.cont.1769
  ]

cleanup.cont.1769:                                ; preds = %cleanup.1767
  br label %if.end.1770

if.end.1770:                                      ; preds = %cleanup.cont.1769, %do.end.1715
  %927 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %tas1771 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %927, i32 0, i32 0
  %type_attrs1772 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1771, i32 0, i32 0
  %928 = load i16, i16* %type_attrs1772, align 2, !tbaa !22
  %conv1773 = zext i16 %928 to i32
  %and1774 = and i32 %conv1773, 192
  %cmp1775 = icmp eq i32 %and1774, 64
  br i1 %cmp1775, label %if.then.1777, label %if.end.1805

if.then.1777:                                     ; preds = %if.end.1770
  br label %do.body.1778

do.body.1778:                                     ; preds = %if.then.1777
  br label %do.cond.1779

do.cond.1779:                                     ; preds = %do.body.1778
  br label %do.end.1780

do.end.1780:                                      ; preds = %do.cond.1779
  %929 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %930 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack1781 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %930, i32 0, i32 26
  %stack1782 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1781, i32 0, i32 0
  %top1783 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1782, i32 0, i32 2
  %931 = load %struct.ref_s*, %struct.ref_s** %top1783, align 8, !tbaa !19
  %cmp1784 = icmp uge %struct.ref_s* %929, %931
  br i1 %cmp1784, label %if.then.1786, label %if.end.1792

if.then.1786:                                     ; preds = %do.end.1780
  %932 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack1787 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %932, i32 0, i32 26
  %stack1788 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1787, i32 0, i32 0
  %requested1789 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1788, i32 0, i32 7
  store i32 1, i32* %requested1789, align 4, !tbaa !20
  %code1790 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 -16, i32* %code1790, align 4, !tbaa !55
  %line1791 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1624, i32* %line1791, align 4, !tbaa !57
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup.1839

if.end.1792:                                      ; preds = %do.end.1780
  %933 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %incdec.ptr1793 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %933, i32 1
  store %struct.ref_s* %incdec.ptr1793, %struct.ref_s** %iosp, align 8, !tbaa !1
  %934 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %935 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %936 = bitcast %struct.ref_s* %934 to i8*
  %937 = bitcast %struct.ref_s* %935 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %936, i8* %937, i64 16, i32 8, i1 false), !tbaa.struct !29
  %938 = load i32, i32* %icount, align 4, !tbaa !27
  %dec1794 = add nsw i32 %938, -1
  store i32 %dec1794, i32* %icount, align 4, !tbaa !27
  %cmp1795 = icmp sle i32 %dec1794, 0
  br i1 %cmp1795, label %if.then.1797, label %if.end.1803

if.then.1797:                                     ; preds = %if.end.1792
  %939 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp1798 = icmp slt i32 %939, 0
  br i1 %cmp1798, label %if.then.1800, label %if.end.1801

if.then.1800:                                     ; preds = %if.then.1797
  store i32 16, i32* %cleanup.dest.slot
  br label %cleanup.1839

if.end.1801:                                      ; preds = %if.then.1797
  %940 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %incdec.ptr1802 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %940, i32 -1
  store %struct.ref_s* %incdec.ptr1802, %struct.ref_s** %iesp, align 8, !tbaa !1
  br label %if.end.1803

if.end.1803:                                      ; preds = %if.end.1801, %if.end.1792
  %941 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %incdec.ptr1804 = getelementptr inbounds i16, i16* %941, i32 1
  store i16* %incdec.ptr1804, i16** %iref_packed, align 8, !tbaa !1
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.1839

if.end.1805:                                      ; preds = %if.end.1770
  %942 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %tas1806 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %942, i32 0, i32 0
  %type_attrs1807 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1806, i32 0, i32 0
  %943 = load i16, i16* %type_attrs1807, align 2, !tbaa !22
  %conv1808 = zext i16 %943 to i32
  %and1809 = and i32 %conv1808, 15552
  %cmp1810 = icmp eq i32 %and1809, 1216
  br i1 %cmp1810, label %if.then.1812, label %if.end.1827

if.then.1812:                                     ; preds = %if.end.1805
  br label %do.body.1813

do.body.1813:                                     ; preds = %if.then.1812
  br label %do.cond.1814

do.cond.1814:                                     ; preds = %do.body.1813
  br label %do.end.1815

do.end.1815:                                      ; preds = %do.cond.1814
  %944 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp1816 = icmp sgt i32 %944, 0
  br i1 %cmp1816, label %cond.true.1818, label %cond.false.1824

cond.true.1818:                                   ; preds = %do.end.1815
  %945 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %add.ptr1819 = getelementptr inbounds i16, i16* %945, i64 1
  %946 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %value1820 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %946, i32 0, i32 1
  %packed1821 = bitcast %union.v* %value1820 to i16**
  store i16* %add.ptr1819, i16** %packed1821, align 8, !tbaa !1
  %947 = load i32, i32* %icount, align 4, !tbaa !27
  %948 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %tas1822 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %948, i32 0, i32 0
  %rsize1823 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1822, i32 0, i32 2
  store i32 %947, i32* %rsize1823, align 4, !tbaa !28
  br label %cond.end.1825

cond.false.1824:                                  ; preds = %do.end.1815
  br label %cond.end.1825

cond.end.1825:                                    ; preds = %cond.false.1824, %cond.true.1818
  %cond1826 = phi i32 [ %947, %cond.true.1818 ], [ 0, %cond.false.1824 ]
  store i32 50, i32* %cleanup.dest.slot
  br label %cleanup.1839

if.end.1827:                                      ; preds = %if.end.1805
  %949 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp1828 = icmp sgt i32 %949, 0
  br i1 %cmp1828, label %cond.true.1830, label %cond.false.1836

cond.true.1830:                                   ; preds = %if.end.1827
  %950 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %add.ptr1831 = getelementptr inbounds i16, i16* %950, i64 1
  %951 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %value1832 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %951, i32 0, i32 1
  %packed1833 = bitcast %union.v* %value1832 to i16**
  store i16* %add.ptr1831, i16** %packed1833, align 8, !tbaa !1
  %952 = load i32, i32* %icount, align 4, !tbaa !27
  %953 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %tas1834 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %953, i32 0, i32 0
  %rsize1835 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1834, i32 0, i32 2
  store i32 %952, i32* %rsize1835, align 4, !tbaa !28
  br label %cond.end.1837

cond.false.1836:                                  ; preds = %if.end.1827
  br label %cond.end.1837

cond.end.1837:                                    ; preds = %cond.false.1836, %cond.true.1830
  %cond1838 = phi i32 [ %952, %cond.true.1830 ], [ 0, %cond.false.1836 ]
  store i32 0, i32* %icount, align 4, !tbaa !27
  %954 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %955 = bitcast %struct.ref_s* %954 to i16*
  store i16* %955, i16** %iref_packed, align 8, !tbaa !1
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.1839

cleanup.1839:                                     ; preds = %if.then.1800, %if.then.1786, %cond.end.1837, %cond.end.1825, %if.end.1803, %cleanup.1767
  %956 = bitcast i32* %nidx1716 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %956) #2
  br label %cleanup.1841

sw.epilog.1840:                                   ; preds = %sw.default.1434
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1841

cleanup.1841:                                     ; preds = %if.then.1659, %if.then.1637, %sw.epilog.1620, %cond.end.1606, %if.end.1592, %if.then.1587, %if.then.1554, %if.else.1459, %if.then.1446, %sw.epilog.1840, %cleanup.1839, %cleanup.1711, %if.end.1662, %cond.end.1618, %if.end.1590, %cond.end.1569, %if.end.1557, %sw.bb.1523, %sw.bb.1522, %sw.bb.1521, %sw.bb.1520, %sw.bb.1519, %sw.bb.1518, %sw.bb.1517, %sw.bb.1516, %sw.bb.1515, %sw.bb.1514, %cond.end.1508, %if.then.1457
  %957 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %957) #2
  %cleanup.dest.1842 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1842, label %cleanup.2012 [
    i32 0, label %cleanup.cont.1843
    i32 4, label %top.7
    i32 49, label %oppr
    i32 13, label %x_add
    i32 17, label %x_def
    i32 20, label %x_dup
    i32 23, label %x_exch
    i32 26, label %x_if
    i32 30, label %x_ifelse
    i32 34, label %x_index
    i32 37, label %x_pop
    i32 40, label %x_roll
    i32 43, label %x_sub
    i32 56, label %opush
    i32 60, label %remap
    i32 50, label %pr
    i32 55, label %out
    i32 16, label %up
    i32 58, label %res
    i32 61, label %rweci
    i32 8, label %rwei
    i32 2, label %rwe
  ]

cleanup.cont.1843:                                ; preds = %cleanup.1841
  br label %sw.epilog.1844

sw.epilog.1844:                                   ; preds = %cleanup.cont.1843, %do.end.20, %do.end.16
  %958 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %959 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack1845 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %959, i32 0, i32 26
  %stack1846 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1845, i32 0, i32 0
  %top1847 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1846, i32 0, i32 2
  %960 = load %struct.ref_s*, %struct.ref_s** %top1847, align 8, !tbaa !19
  %cmp1848 = icmp uge %struct.ref_s* %958, %960
  br i1 %cmp1848, label %if.then.1850, label %if.end.1856

if.then.1850:                                     ; preds = %sw.epilog.1844
  %961 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack1851 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %961, i32 0, i32 26
  %stack1852 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1851, i32 0, i32 0
  %requested1853 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1852, i32 0, i32 7
  store i32 1, i32* %requested1853, align 4, !tbaa !20
  %code1854 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 -16, i32* %code1854, align 4, !tbaa !55
  %line1855 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1647, i32* %line1855, align 4, !tbaa !57
  br label %rwei

if.end.1856:                                      ; preds = %sw.epilog.1844
  %962 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %incdec.ptr1857 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %962, i32 1
  store %struct.ref_s* %incdec.ptr1857, %struct.ref_s** %iosp, align 8, !tbaa !1
  %963 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %964 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %965 = bitcast i16* %964 to %struct.ref_s*
  %966 = bitcast %struct.ref_s* %963 to i8*
  %967 = bitcast %struct.ref_s* %965 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %966, i8* %967, i64 16, i32 8, i1 false), !tbaa.struct !29
  br label %bot.1858

bot.1858:                                         ; preds = %if.end.1856, %cleanup.1431, %cleanup.1360, %sw.bb.1057, %if.then.888, %sw.bb.678, %if.end
  %968 = load i32, i32* %icount, align 4, !tbaa !27
  %dec1859 = add nsw i32 %968, -1
  store i32 %dec1859, i32* %icount, align 4, !tbaa !27
  %cmp1860 = icmp sgt i32 %dec1859, 0
  br i1 %cmp1860, label %if.then.1862, label %if.else.1864

if.then.1862:                                     ; preds = %bot.1858
  %969 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %970 = bitcast i16* %969 to %struct.ref_s*
  %add.ptr1863 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %970, i64 1
  %971 = bitcast %struct.ref_s* %add.ptr1863 to i16*
  store i16* %971, i16** %iref_packed, align 8, !tbaa !1
  br label %top.7

if.else.1864:                                     ; preds = %bot.1858
  br label %out

out:                                              ; preds = %cleanup.1841, %if.else.1864, %if.else.1103, %if.else.1042, %if.else.855
  %972 = load i32, i32* %icount, align 4, !tbaa !27
  %tobool1865 = icmp ne i32 %972, 0
  br i1 %tobool1865, label %if.end.1869, label %if.then.1866

if.then.1866:                                     ; preds = %out
  %973 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %incdec.ptr1867 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %973, i32 -1
  store %struct.ref_s* %incdec.ptr1867, %struct.ref_s** %iesp, align 8, !tbaa !1
  %974 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %975 = bitcast i16* %974 to %struct.ref_s*
  %add.ptr1868 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %975, i64 1
  %976 = bitcast %struct.ref_s* %add.ptr1868 to i16*
  store i16* %976, i16** %iref_packed, align 8, !tbaa !1
  br label %top.7

if.end.1869:                                      ; preds = %out
  br label %up

up:                                               ; preds = %if.end.1914, %if.then.1895, %if.end.1869, %cleanup.1841, %cleanup.1360, %if.end.939, %if.end.889, %if.then.877, %if.then.797, %if.then.665, %if.then.620, %if.then.575, %if.then.531, %if.then.479, %if.then.281, %if.then.199, %if.then.154, %if.then.88, %if.then.48
  %977 = load i32, i32* %ticks_left, align 4, !tbaa !27
  %dec1870 = add nsw i32 %977, -1
  store i32 %dec1870, i32* %ticks_left, align 4, !tbaa !27
  %cmp1871 = icmp slt i32 %dec1870, 0
  br i1 %cmp1871, label %if.then.1873, label %if.end.1874

if.then.1873:                                     ; preds = %up
  br label %slice

if.end.1874:                                      ; preds = %up
  %978 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %tas1875 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %978, i32 0, i32 0
  %type_attrs1876 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1875, i32 0, i32 0
  %979 = load i16, i16* %type_attrs1876, align 2, !tbaa !22
  %conv1877 = zext i16 %979 to i32
  %and1878 = and i32 %conv1877, 15552
  %cmp1879 = icmp eq i32 %and1878, 1216
  br i1 %cmp1879, label %if.end.1883, label %if.then.1881

if.then.1881:                                     ; preds = %if.end.1874
  %980 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %incdec.ptr1882 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %980, i32 -1
  store %struct.ref_s* %incdec.ptr1882, %struct.ref_s** %iesp, align 8, !tbaa !1
  %981 = bitcast %struct.ref_s* %980 to i16*
  store i16* %981, i16** %iref_packed, align 8, !tbaa !1
  store i32 0, i32* %icount, align 4, !tbaa !27
  br label %top.7

if.end.1883:                                      ; preds = %if.end.1874
  %982 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %value1884 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %982, i32 0, i32 1
  %refs1885 = bitcast %union.v* %value1884 to %struct.ref_s**
  %983 = load %struct.ref_s*, %struct.ref_s** %refs1885, align 8, !tbaa !1
  %984 = bitcast %struct.ref_s* %983 to i16*
  store i16* %984, i16** %iref_packed, align 8, !tbaa !1
  %985 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %tas1886 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %985, i32 0, i32 0
  %rsize1887 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1886, i32 0, i32 2
  %986 = load i32, i32* %rsize1887, align 4, !tbaa !28
  %sub1888 = sub i32 %986, 1
  store i32 %sub1888, i32* %icount, align 4, !tbaa !27
  %987 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp1889 = icmp sle i32 %987, 0
  br i1 %cmp1889, label %if.then.1891, label %if.end.1897

if.then.1891:                                     ; preds = %if.end.1883
  %988 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %incdec.ptr1892 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %988, i32 -1
  store %struct.ref_s* %incdec.ptr1892, %struct.ref_s** %iesp, align 8, !tbaa !1
  %989 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp1893 = icmp slt i32 %989, 0
  br i1 %cmp1893, label %if.then.1895, label %if.end.1896

if.then.1895:                                     ; preds = %if.then.1891
  br label %up

if.end.1896:                                      ; preds = %if.then.1891
  br label %if.end.1897

if.end.1897:                                      ; preds = %if.end.1896, %if.end.1883
  br label %top.7

res:                                              ; preds = %cleanup.1841, %cond.end.1127, %cond.end.903
  %990 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %991 = load %struct.gs_context_state_s**, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_context_state_s* %990, %struct.gs_context_state_s** %991, align 8, !tbaa !1
  %992 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %reschedule_proc = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %992, i32 0, i32 23
  %993 = load i32 (%struct.gs_context_state_s**)*, i32 (%struct.gs_context_state_s**)** %reschedule_proc, align 8, !tbaa !86
  %994 = load %struct.gs_context_state_s**, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  %call1898 = call i32 %993(%struct.gs_context_state_s** %994) #3
  store i32 %call1898, i32* %code, align 4, !tbaa !27
  %995 = load %struct.gs_context_state_s**, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  %996 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %995, align 8, !tbaa !1
  store %struct.gs_context_state_s* %996, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  br label %sched

sched:                                            ; preds = %do.end.1943, %res
  %997 = load i32, i32* %code, align 4, !tbaa !27
  %cmp1899 = icmp slt i32 %997, 0
  br i1 %cmp1899, label %if.then.1901, label %if.end.1914

if.then.1901:                                     ; preds = %sched
  %998 = load i32, i32* %code, align 4, !tbaa !27
  %code1902 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 %998, i32* %code1902, align 4, !tbaa !55
  %line1903 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 1
  store i32 1684, i32* %line1903, align 4, !tbaa !57
  %full = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 3
  %value1904 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %full, i32 0, i32 1
  %const_refs1905 = bitcast %union.v* %value1904 to %struct.ref_s**
  store %struct.ref_s* null, %struct.ref_s** %const_refs1905, align 8, !tbaa !1
  %full1906 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 3
  %tas1907 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %full1906, i32 0, i32 0
  %type_attrs1908 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1907, i32 0, i32 0
  store i16 1248, i16* %type_attrs1908, align 2, !tbaa !22
  %full1909 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 3
  %tas1910 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %full1909, i32 0, i32 0
  %rsize1911 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1910, i32 0, i32 2
  store i32 0, i32* %rsize1911, align 4, !tbaa !28
  %full1912 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 3
  %obj1913 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 2
  store %struct.ref_s* %full1912, %struct.ref_s** %obj1913, align 8, !tbaa !58
  %999 = bitcast %struct.ref_s* %full1912 to i16*
  store i16* %999, i16** %iref_packed, align 8, !tbaa !1
  br label %error_exit

if.end.1914:                                      ; preds = %sched
  %1000 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack1915 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1000, i32 0, i32 26
  %stack1916 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1915, i32 0, i32 0
  %p1917 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1916, i32 0, i32 0
  %1001 = load %struct.ref_s*, %struct.ref_s** %p1917, align 8, !tbaa !5
  store %struct.ref_s* %1001, %struct.ref_s** %iosp, align 8, !tbaa !1
  %1002 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack1918 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1002, i32 0, i32 25
  %stack1919 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1918, i32 0, i32 0
  %p1920 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1919, i32 0, i32 0
  %1003 = load %struct.ref_s*, %struct.ref_s** %p1920, align 8, !tbaa !25
  store %struct.ref_s* %1003, %struct.ref_s** %iesp, align 8, !tbaa !1
  br label %up

slice:                                            ; preds = %cleanup.1360, %if.then.1873, %if.end.878, %if.end.827, %if.end.499
  %1004 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %1005 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack1921 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1005, i32 0, i32 26
  %stack1922 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1921, i32 0, i32 0
  %p1923 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1922, i32 0, i32 0
  store %struct.ref_s* %1004, %struct.ref_s** %p1923, align 8, !tbaa !5
  %1006 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %1007 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack1924 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1007, i32 0, i32 25
  %stack1925 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1924, i32 0, i32 0
  %p1926 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1925, i32 0, i32 0
  store %struct.ref_s* %1006, %struct.ref_s** %p1926, align 8, !tbaa !25
  %1008 = load i32, i32* %ticks_left, align 4, !tbaa !27
  %cmp1927 = icmp sle i32 %1008, -100
  br i1 %cmp1927, label %if.then.1929, label %if.else.1931

if.then.1929:                                     ; preds = %slice
  %1009 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %1010 = load %struct.gs_context_state_s**, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_context_state_s* %1009, %struct.gs_context_state_s** %1010, align 8, !tbaa !1
  %1011 = load %struct.gs_context_state_s**, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  %call1930 = call i32 @interp_reclaim(%struct.gs_context_state_s** %1011, i32 -1) #3
  store i32 %call1930, i32* %code, align 4, !tbaa !27
  %1012 = load %struct.gs_context_state_s**, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  %1013 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %1012, align 8, !tbaa !1
  store %struct.gs_context_state_s* %1013, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  br label %if.end.1939

if.else.1931:                                     ; preds = %slice
  %1014 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %time_slice_proc = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1014, i32 0, i32 21
  %1015 = load i32 (%struct.gs_context_state_s**)*, i32 (%struct.gs_context_state_s**)** %time_slice_proc, align 8, !tbaa !87
  %cmp1932 = icmp ne i32 (%struct.gs_context_state_s**)* %1015, null
  br i1 %cmp1932, label %if.then.1934, label %if.else.1937

if.then.1934:                                     ; preds = %if.else.1931
  %1016 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %1017 = load %struct.gs_context_state_s**, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_context_state_s* %1016, %struct.gs_context_state_s** %1017, align 8, !tbaa !1
  %1018 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %time_slice_proc1935 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1018, i32 0, i32 21
  %1019 = load i32 (%struct.gs_context_state_s**)*, i32 (%struct.gs_context_state_s**)** %time_slice_proc1935, align 8, !tbaa !87
  %1020 = load %struct.gs_context_state_s**, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  %call1936 = call i32 %1019(%struct.gs_context_state_s** %1020) #3
  store i32 %call1936, i32* %code, align 4, !tbaa !27
  %1021 = load %struct.gs_context_state_s**, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  %1022 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %1021, align 8, !tbaa !1
  store %struct.gs_context_state_s* %1022, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  br label %if.end.1938

if.else.1937:                                     ; preds = %if.else.1931
  store i32 0, i32* %code, align 4, !tbaa !27
  br label %if.end.1938

if.end.1938:                                      ; preds = %if.else.1937, %if.then.1934
  br label %if.end.1939

if.end.1939:                                      ; preds = %if.end.1938, %if.then.1929
  %1023 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %time_slice_ticks1940 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1023, i32 0, i32 22
  %1024 = load i32, i32* %time_slice_ticks1940, align 4, !tbaa !53
  store i32 %1024, i32* %ticks_left, align 4, !tbaa !27
  br label %do.body.1941

do.body.1941:                                     ; preds = %if.end.1939
  br label %do.cond.1942

do.cond.1942:                                     ; preds = %do.body.1941
  br label %do.end.1943

do.end.1943:                                      ; preds = %do.cond.1942
  br label %sched

rweci:                                            ; preds = %cleanup.1841, %cleanup.1360, %sw.epilog
  %1025 = load i32, i32* %code, align 4, !tbaa !27
  %code1944 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  store i32 %1025, i32* %code1944, align 4, !tbaa !55
  br label %rwei

rwei:                                             ; preds = %rweci, %cleanup.1841, %cleanup.1431, %cleanup.1360, %cleanup, %if.then.1850, %sw.bb.1016, %sw.bb.1013, %if.then.932, %if.then.812, %if.then.713, %if.else.654, %if.else.609, %if.else.564, %if.else.521, %if.else.438, %if.else.411, %if.else.380, %if.else.355, %if.else.311, %if.else.262, %if.else.233, %if.else.187, %if.else.142, %if.else.120, %if.else.77, %if.else, %sw.bb.10, %sw.bb
  %1026 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %1027 = bitcast i16* %1026 to %struct.ref_s*
  %obj1945 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 2
  store %struct.ref_s* %1027, %struct.ref_s** %obj1945, align 8, !tbaa !58
  br label %rwe

rwe:                                              ; preds = %rwei, %cleanup.1841, %cleanup.1431, %cleanup.1360, %sw.epilog.1130, %if.then.1028, %if.then.650, %if.then.605, %if.then.560, %if.then.517, %if.then.434, %if.then.400, %if.then.374, %if.then.350, %if.then.307, %if.then.252, %if.then.228, %if.then.183, %if.then.138, %if.then.116, %if.then.73, %if.then.35, %if.then
  %1028 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %1029 = load i16, i16* %1028, align 2, !tbaa !21
  %conv1946 = zext i16 %1029 to i32
  %cmp1947 = icmp sge i32 %conv1946, 16384
  br i1 %cmp1947, label %if.else.1961, label %if.then.1949

if.then.1949:                                     ; preds = %rwe
  %1030 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp1950 = icmp sgt i32 %1030, 0
  br i1 %cmp1950, label %cond.true.1952, label %cond.false.1958

cond.true.1952:                                   ; preds = %if.then.1949
  %1031 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %1032 = bitcast i16* %1031 to %struct.ref_s*
  %add.ptr1953 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1032, i64 1
  %1033 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %value1954 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1033, i32 0, i32 1
  %const_refs1955 = bitcast %union.v* %value1954 to %struct.ref_s**
  store %struct.ref_s* %add.ptr1953, %struct.ref_s** %const_refs1955, align 8, !tbaa !1
  %1034 = load i32, i32* %icount, align 4, !tbaa !27
  %1035 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %tas1956 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1035, i32 0, i32 0
  %rsize1957 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1956, i32 0, i32 2
  store i32 %1034, i32* %rsize1957, align 4, !tbaa !28
  br label %cond.end.1959

cond.false.1958:                                  ; preds = %if.then.1949
  br label %cond.end.1959

cond.end.1959:                                    ; preds = %cond.false.1958, %cond.true.1952
  %cond1960 = phi i32 [ %1034, %cond.true.1952 ], [ 0, %cond.false.1958 ]
  br label %if.end.1985

if.else.1961:                                     ; preds = %rwe
  %1036 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory1962 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1036, i32 0, i32 1
  %current1963 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory1962, i32 0, i32 0
  %1037 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current1963, align 8, !tbaa !49
  %1038 = bitcast %struct.gs_ref_memory_s* %1037 to %struct.gs_memory_s*
  %obj1964 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 2
  %1039 = load %struct.ref_s*, %struct.ref_s** %obj1964, align 8, !tbaa !58
  %1040 = bitcast %struct.ref_s* %1039 to i16*
  %full1965 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 3
  call void @packed_get(%struct.gs_memory_s* %1038, i16* %1040, %struct.ref_s* %full1965) #3
  %1041 = load i32, i32* %icount, align 4, !tbaa !27
  %cmp1966 = icmp sgt i32 %1041, 0
  br i1 %cmp1966, label %cond.true.1968, label %cond.false.1974

cond.true.1968:                                   ; preds = %if.else.1961
  %1042 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %add.ptr1969 = getelementptr inbounds i16, i16* %1042, i64 1
  %1043 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %value1970 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1043, i32 0, i32 1
  %packed1971 = bitcast %union.v* %value1970 to i16**
  store i16* %add.ptr1969, i16** %packed1971, align 8, !tbaa !1
  %1044 = load i32, i32* %icount, align 4, !tbaa !27
  %1045 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %tas1972 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1045, i32 0, i32 0
  %rsize1973 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1972, i32 0, i32 2
  store i32 %1044, i32* %rsize1973, align 4, !tbaa !28
  br label %cond.end.1975

cond.false.1974:                                  ; preds = %if.else.1961
  br label %cond.end.1975

cond.end.1975:                                    ; preds = %cond.false.1974, %cond.true.1968
  %cond1976 = phi i32 [ %1044, %cond.true.1968 ], [ 0, %cond.false.1974 ]
  %1046 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %1047 = bitcast i16* %1046 to %struct.ref_s*
  %obj1977 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 2
  %1048 = load %struct.ref_s*, %struct.ref_s** %obj1977, align 8, !tbaa !58
  %cmp1978 = icmp eq %struct.ref_s* %1047, %1048
  br i1 %cmp1978, label %if.then.1980, label %if.end.1982

if.then.1980:                                     ; preds = %cond.end.1975
  %full1981 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 3
  %1049 = bitcast %struct.ref_s* %full1981 to i16*
  store i16* %1049, i16** %iref_packed, align 8, !tbaa !1
  br label %if.end.1982

if.end.1982:                                      ; preds = %if.then.1980, %cond.end.1975
  %full1983 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 3
  %obj1984 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 2
  store %struct.ref_s* %full1983, %struct.ref_s** %obj1984, align 8, !tbaa !58
  br label %if.end.1985

if.end.1985:                                      ; preds = %if.end.1982, %cond.end.1959
  br label %error_exit

error_exit:                                       ; preds = %if.end.1985, %if.then.1901
  %code1986 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  %1050 = load i32, i32* %code1986, align 4, !tbaa !55
  %cmp1987 = icmp eq i32 %1050, -6
  br i1 %cmp1987, label %if.then.1993, label %lor.lhs.false.1989

lor.lhs.false.1989:                               ; preds = %error_exit
  %code1990 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  %1051 = load i32, i32* %code1990, align 4, !tbaa !55
  %cmp1991 = icmp eq i32 %1051, -19
  br i1 %cmp1991, label %if.then.1993, label %if.end.2003

if.then.1993:                                     ; preds = %lor.lhs.false.1989, %error_exit
  %1052 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %1053 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack1994 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1053, i32 0, i32 25
  %stack1995 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1994, i32 0, i32 0
  %top1996 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1995, i32 0, i32 2
  %1054 = load %struct.ref_s*, %struct.ref_s** %top1996, align 8, !tbaa !26
  %cmp1997 = icmp uge %struct.ref_s* %1052, %1054
  br i1 %cmp1997, label %if.then.1999, label %if.else.2000

if.then.1999:                                     ; preds = %if.then.1993
  store i32 -5, i32* %code, align 4, !tbaa !27
  br label %if.end.2002

if.else.2000:                                     ; preds = %if.then.1993
  %1055 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %incdec.ptr2001 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1055, i32 1
  store %struct.ref_s* %incdec.ptr2001, %struct.ref_s** %iesp, align 8, !tbaa !1
  %1056 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %1057 = load i16*, i16** %iref_packed, align 8, !tbaa !1
  %1058 = bitcast i16* %1057 to %struct.ref_s*
  %1059 = bitcast %struct.ref_s* %1056 to i8*
  %1060 = bitcast %struct.ref_s* %1058 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1059, i8* %1060, i64 16, i32 8, i1 false), !tbaa.struct !29
  br label %if.end.2002

if.end.2002:                                      ; preds = %if.else.2000, %if.then.1999
  br label %if.end.2003

if.end.2003:                                      ; preds = %if.end.2002, %lor.lhs.false.1989
  %1061 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8, !tbaa !1
  %1062 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack2004 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1062, i32 0, i32 25
  %stack2005 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack2004, i32 0, i32 0
  %p2006 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2005, i32 0, i32 0
  store %struct.ref_s* %1061, %struct.ref_s** %p2006, align 8, !tbaa !25
  %1063 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8, !tbaa !1
  %1064 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack2007 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1064, i32 0, i32 26
  %stack2008 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack2007, i32 0, i32 0
  %p2009 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2008, i32 0, i32 0
  store %struct.ref_s* %1063, %struct.ref_s** %p2009, align 8, !tbaa !5
  %1065 = load %struct.ref_s*, %struct.ref_s** %perror_object.addr, align 8, !tbaa !1
  %obj2010 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 2
  %1066 = load %struct.ref_s*, %struct.ref_s** %obj2010, align 8, !tbaa !58
  %1067 = bitcast %struct.ref_s* %1065 to i8*
  %1068 = bitcast %struct.ref_s* %1066 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1067, i8* %1068, i64 16, i32 8, i1 false), !tbaa.struct !29
  %code2011 = getelementptr inbounds %struct.interp_error_s, %struct.interp_error_s* %ierror, i32 0, i32 0
  %1069 = load i32, i32* %code2011, align 4, !tbaa !55
  store i32 %1069, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.2012

cleanup.2012:                                     ; preds = %if.end.2003, %cleanup.1841, %cleanup.1431, %cleanup.1360, %cleanup
  %1070 = bitcast i32* %ticks_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1070) #2
  %1071 = bitcast %struct.name_table_s** %int_nt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1071) #2
  %1072 = bitcast %struct.interp_error_s* %ierror to i8*
  call void @llvm.lifetime.end(i64 32, i8* %1072) #2
  %1073 = bitcast %struct.ref_s** %whichp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1073) #2
  %1074 = bitcast i32* %opindex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1074) #2
  %1075 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1075) #2
  %1076 = bitcast %struct.ref_s* %token to i8*
  call void @llvm.lifetime.end(i64 16, i8* %1076) #2
  %1077 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1077) #2
  %1078 = bitcast %struct.ref_s** %iesp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1078) #2
  %1079 = bitcast %struct.ref_s** %iosp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1079) #2
  %1080 = bitcast i32* %icount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1080) #2
  %1081 = bitcast i16** %iref_packed to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1081) #2
  %1082 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1082) #2
  %1083 = load i32, i32* %retval
  ret i32 %1083
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @ref_stack_pop_block(%struct.ref_stack_s*) #0

declare i32 @ref_stack_extend(%struct.ref_stack_s*, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @copy_stack(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_stack_s* %pstack, i32 %skip, %struct.ref_s* %arr) #1 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pstack.addr = alloca %struct.ref_stack_s*, align 8
  %skip.addr = alloca i32, align 4
  %arr.addr = alloca %struct.ref_s*, align 8
  %size = alloca i32, align 4
  %save_space = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_stack_s* %pstack, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  store i32 %skip, i32* %skip.addr, align 4, !tbaa !27
  store %struct.ref_s* %arr, %struct.ref_s** %arr.addr, align 8, !tbaa !1
  %0 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %call = call i32 @ref_stack_count(%struct.ref_stack_s* %1) #3
  %2 = load i32, i32* %skip.addr, align 4, !tbaa !27
  %sub = sub i32 %call, %2
  store i32 %sub, i32* %size, align 4, !tbaa !27
  %3 = bitcast i32* %save_space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 2
  %5 = load i32, i32* %current_space, align 4, !tbaa !88
  store i32 %5, i32* %save_space, align 4, !tbaa !27
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load i32, i32* %size, align 4, !tbaa !27
  %cmp = icmp ugt i32 %7, 65535
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 65535, i32* %size, align 4, !tbaa !27
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 1
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory1, i32 12) #3
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory2, i32 0, i32 0
  %10 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !49
  %11 = load %struct.ref_s*, %struct.ref_s** %arr.addr, align 8, !tbaa !1
  %12 = load i32, i32* %size, align 4, !tbaa !27
  %call3 = call i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s* %10, %struct.ref_s* %11, i32 112, i32 %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0)) #3
  store i32 %call3, i32* %code, align 4, !tbaa !27
  %13 = load i32, i32* %code, align 4, !tbaa !27
  %cmp4 = icmp sge i32 %13, 0
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %14 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %15 = load %struct.ref_s*, %struct.ref_s** %arr.addr, align 8, !tbaa !1
  %16 = load i32, i32* %size, align 4, !tbaa !27
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 1
  %call7 = call i32 @ref_stack_store(%struct.ref_stack_s* %14, %struct.ref_s* %15, i32 %16, i32 0, i32 1, i32 1, %struct.gs_dual_memory_s* %memory6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0)) #3
  store i32 %call7, i32* %code, align 4, !tbaa !27
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory9 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 1
  %19 = load i32, i32* %save_space, align 4, !tbaa !27
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory9, i32 %19) #3
  %20 = load i32, i32* %code, align 4, !tbaa !27
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  %22 = bitcast i32* %save_space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #2
  %23 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #2
  ret i32 %20
}

declare %struct.ref_s* @ref_stack_index(%struct.ref_stack_s*, i64) #0

declare void @pop_estack(%struct.gs_context_state_s*, i32) #0

declare i32 @dict_find(%struct.ref_s*, %struct.ref_s*, %struct.ref_s**) #0

; Function Attrs: nounwind uwtable
define internal i32 @errorexec_find(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %perror_object) #1 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %perror_object.addr = alloca %struct.ref_s*, align 8
  %i = alloca i64, align 8
  %ep = alloca %struct.ref_s*, align 8
  %opindex = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %perror_object, %struct.ref_s** %perror_object.addr, align 8, !tbaa !1
  %0 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  store i64 0, i64* %i, align 8, !tbaa !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %3 = load i64, i64* %i, align 8, !tbaa !30
  %call = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %stack, i64 %3) #3
  store %struct.ref_s* %call, %struct.ref_s** %ep, align 8, !tbaa !1
  %cmp = icmp ne %struct.ref_s* %call, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = load i16, i16* %type_attrs, align 2, !tbaa !22
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 16256
  %cmp1 = icmp eq i32 %and, 3712
  br i1 %cmp1, label %if.then, label %if.end.33

if.then:                                          ; preds = %for.body
  %6 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %opproc = bitcast %union.v* %value to i32 (%struct.gs_context_state_s*)**
  %7 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %cmp3 = icmp eq i32 (%struct.gs_context_state_s*)* %7, @oparray_cleanup
  br i1 %cmp3, label %if.then.5, label %if.end.11

if.then.5:                                        ; preds = %if.then
  %8 = bitcast i32* %opindex to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 1
  %value6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %intval = bitcast %union.v* %value6 to i64*
  %10 = load i64, i64* %intval, align 8, !tbaa !30
  %conv7 = trunc i64 %10 to i32
  store i32 %conv7, i32* %opindex, align 4, !tbaa !27
  %11 = load i32, i32* %opindex, align 4, !tbaa !27
  %cmp8 = icmp eq i32 %11, 0
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then.5
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.5
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %13 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !49
  %14 = bitcast %struct.gs_ref_memory_s* %13 to %struct.gs_memory_s*
  %15 = load i32, i32* %opindex, align 4, !tbaa !27
  %16 = load %struct.ref_s*, %struct.ref_s** %perror_object.addr, align 8, !tbaa !1
  call void @op_index_ref(%struct.gs_memory_s* %14, i32 %15, %struct.ref_s* %16) #3
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.10
  %17 = bitcast i32* %opindex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.34 [
    i32 4, label %for.inc
  ]

if.end.11:                                        ; preds = %if.then
  %18 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %value12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 1
  %opproc13 = bitcast %union.v* %value12 to i32 (%struct.gs_context_state_s*)**
  %19 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %opproc13, align 8, !tbaa !1
  %cmp14 = icmp eq i32 (%struct.gs_context_state_s*)* %19, @oparray_no_cleanup
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.11
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.34

if.end.17:                                        ; preds = %if.end.11
  %20 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %value18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 1
  %opproc19 = bitcast %union.v* %value18 to i32 (%struct.gs_context_state_s*)**
  %21 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %opproc19, align 8, !tbaa !1
  %cmp20 = icmp eq i32 (%struct.gs_context_state_s*)* %21, @errorexec_cleanup
  br i1 %cmp20, label %if.then.22, label %if.end.32

if.then.22:                                       ; preds = %if.end.17
  %22 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 1
  %tas23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %type_attrs24 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas23, i32 0, i32 0
  %23 = bitcast i16* %type_attrs24 to i8*
  %arrayidx25 = getelementptr inbounds i8, i8* %23, i64 1
  %24 = load i8, i8* %arrayidx25, align 1, !tbaa !23
  %conv26 = zext i8 %24 to i32
  %cmp27 = icmp eq i32 %conv26, 14
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.22
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.34

if.end.30:                                        ; preds = %if.then.22
  %25 = load %struct.ref_s*, %struct.ref_s** %perror_object.addr, align 8, !tbaa !1
  %26 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 1
  %27 = bitcast %struct.ref_s* %25 to i8*
  %28 = bitcast %struct.ref_s* %arrayidx31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 16, i32 8, i1 false), !tbaa.struct !29
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.34

if.end.32:                                        ; preds = %if.end.17
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.33, %cleanup
  %29 = load i64, i64* %i, align 8, !tbaa !30
  %inc = add nsw i64 %29, 1
  store i64 %inc, i64* %i, align 8, !tbaa !30
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.34

cleanup.34:                                       ; preds = %for.end, %if.end.30, %if.then.29, %if.then.16, %cleanup
  %30 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  %31 = bitcast i64* %i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  %32 = load i32, i32* %retval
  ret i32 %32
}

declare i32 @zop_add(%struct.gs_context_state_s*) #0

declare i32 @zop_def(%struct.gs_context_state_s*) #0

declare i32 @check_proc_failed(%struct.ref_s*) #0

declare i32 @zop_sub(%struct.gs_context_state_s*) #0

declare zeroext i16 @op_find_index(%struct.ref_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @oparray_cleanup(%struct.gs_context_state_s* %i_ctx_p) #1 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %ep = alloca %struct.ref_s*, align 8
  %ocount_old = alloca i32, align 4
  %dcount_old = alloca i32, align 4
  %ocount = alloca i32, align 4
  %dcount = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !25
  store %struct.ref_s* %2, %struct.ref_s** %ep, align 8, !tbaa !1
  %3 = bitcast i32* %ocount_old to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 3
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %5 = load i64, i64* %intval, align 8, !tbaa !30
  %conv = trunc i64 %5 to i32
  store i32 %conv, i32* %ocount_old, align 4, !tbaa !27
  %6 = bitcast i32* %dcount_old to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 4
  %value2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx1, i32 0, i32 1
  %intval3 = bitcast %union.v* %value2 to i64*
  %8 = load i64, i64* %intval3, align 8, !tbaa !30
  %conv4 = trunc i64 %8 to i32
  store i32 %conv4, i32* %dcount_old, align 4, !tbaa !27
  %9 = bitcast i32* %ocount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 26
  %stack5 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %call = call i32 @ref_stack_count(%struct.ref_stack_s* %stack5) #3
  store i32 %call, i32* %ocount, align 4, !tbaa !27
  %11 = bitcast i32* %dcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 24
  %stack6 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 0
  %call7 = call i32 @ref_stack_count(%struct.ref_stack_s* %stack6) #3
  store i32 %call7, i32* %dcount, align 4, !tbaa !27
  %13 = load i32, i32* %ocount, align 4, !tbaa !27
  %14 = load i32, i32* %ocount_old, align 4, !tbaa !27
  %cmp = icmp ugt i32 %13, %14
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack9 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 26
  %stack10 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack9, i32 0, i32 0
  %16 = load i32, i32* %ocount, align 4, !tbaa !27
  %17 = load i32, i32* %ocount_old, align 4, !tbaa !27
  %sub = sub i32 %16, %17
  call void @ref_stack_pop(%struct.ref_stack_s* %stack10, i32 %sub) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load i32, i32* %dcount, align 4, !tbaa !27
  %19 = load i32, i32* %dcount_old, align 4, !tbaa !27
  %cmp11 = icmp ugt i32 %18, %19
  br i1 %cmp11, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %if.end
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack14 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 24
  %stack15 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack14, i32 0, i32 0
  %21 = load i32, i32* %dcount, align 4, !tbaa !27
  %22 = load i32, i32* %dcount_old, align 4, !tbaa !27
  %sub16 = sub i32 %21, %22
  call void @ref_stack_pop(%struct.ref_stack_s* %stack15, i32 %sub16) #3
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack17 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 24
  call void @dstack_set_top(%struct.dict_stack_s* %dict_stack17) #3
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.13, %if.end
  %24 = bitcast i32* %dcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  %25 = bitcast i32* %ocount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast i32* %dcount_old to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = bitcast i32* %ocount_old to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  %28 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  ret i32 0
}

declare void @packed_get(%struct.gs_memory_s*, i16*, %struct.ref_s*) #0

declare i8* @gs_state_client_data(%struct.gs_state_s*) #0

declare %struct.ref_s* @dstack_find_name_by_index(%struct.dict_stack_s*, i32) #0

declare i32 @file_switch_to_read(%struct.ref_s*) #0

declare void @gs_scanner_init_options(%struct.scanner_state_s*, %struct.ref_s*, i32) #0

declare i32 @gs_scan_token(%struct.gs_context_state_s*, %struct.ref_s*, %struct.scanner_state_s*) #0

declare i32 @gs_scanner_error_object(%struct.gs_context_state_s*, %struct.scanner_state_s*, %struct.ref_s*) #0

declare i32 @gs_scan_handle_refill(%struct.gs_context_state_s*, %struct.scanner_state_s*, i32, i32 (%struct.gs_context_state_s*)*) #0

declare i32 @ztokenexec_continue(%struct.gs_context_state_s*) #0

declare i32 @ztoken_handle_comment(%struct.gs_context_state_s*, %struct.scanner_state_s*, %struct.ref_s*, i32, i32, i32, i32 (%struct.gs_context_state_s*)*) #0

declare void @s_init(%struct.stream_s*, %struct.gs_memory_s*) #0

declare void @sread_string(%struct.stream_s*, i8*, i32) #0

declare void @gs_scanner_init_stream_options(%struct.scanner_state_s*, %struct.stream_s*, i32) #0

declare void @names_index_ref(%struct.name_table_s*, i32, %struct.ref_s*) #0

declare void @ialloc_set_space(%struct.gs_dual_memory_s*, i32) #0

declare i32 @ref_stack_store(%struct.ref_stack_s*, %struct.ref_s*, i32, i32, i32, i32, %struct.gs_dual_memory_s*, i8*) #0

declare void @op_index_ref(%struct.gs_memory_s*, i32, %struct.ref_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @oparray_no_cleanup(%struct.gs_context_state_s* %i_ctx_p) #1 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @errorexec_cleanup(%struct.gs_context_state_s* %i_ctx_p) #1 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  ret i32 0
}

declare void @gs_memory_gc_status(%struct.gs_ref_memory_s*, %struct.gs_memory_gc_status_s*) #0

declare void @gs_memory_set_gc_status(%struct.gs_ref_memory_s*, %struct.gs_memory_gc_status_s*) #0

declare i32 @zexec(%struct.gs_context_state_s*) #0

; Function Attrs: nounwind uwtable
define internal %struct.ref_s* @oparray_find(%struct.gs_context_state_s* %i_ctx_p) #1 {
entry:
  %retval = alloca %struct.ref_s*, align 8
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %i = alloca i64, align 8
  %ep = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  store i64 0, i64* %i, align 8, !tbaa !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %3 = load i64, i64* %i, align 8, !tbaa !30
  %call = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %stack, i64 %3) #3
  store %struct.ref_s* %call, %struct.ref_s** %ep, align 8, !tbaa !1
  %cmp = icmp ne %struct.ref_s* %call, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = load i16, i16* %type_attrs, align 2, !tbaa !22
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 16256
  %cmp1 = icmp eq i32 %and, 3712
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %6 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %opproc = bitcast %union.v* %value to i32 (%struct.gs_context_state_s*)**
  %7 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %cmp3 = icmp eq i32 (%struct.gs_context_state_s*)* %7, @oparray_cleanup
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %8 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %value5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %opproc6 = bitcast %union.v* %value5 to i32 (%struct.gs_context_state_s*)**
  %9 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %opproc6, align 8, !tbaa !1
  %cmp7 = icmp eq i32 (%struct.gs_context_state_s*)* %9, @oparray_no_cleanup
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %10 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  store %struct.ref_s* %10, %struct.ref_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i64, i64* %i, align 8, !tbaa !30
  %inc = add nsw i64 %11, 1
  store i64 %inc, i64* %i, align 8, !tbaa !30
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.ref_s* null, %struct.ref_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %12 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  %13 = bitcast i64* %i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = load %struct.ref_s*, %struct.ref_s** %retval
  ret %struct.ref_s* %14
}

declare i32 @check_type_failed(%struct.ref_s*) #0

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
!19 = !{!6, !2, i64 640}
!20 = !{!6, !9, i64 688}
!21 = !{!12, !12, i64 0}
!22 = !{!10, !12, i64 0}
!23 = !{!3, !3, i64 0}
!24 = !{!6, !2, i64 632}
!25 = !{!6, !2, i64 520}
!26 = !{!6, !2, i64 536}
!27 = !{!9, !9, i64 0}
!28 = !{!10, !9, i64 4}
!29 = !{i64 0, i64 2, !21, i64 2, i64 2, !21, i64 4, i64 4, !27, i64 8, i64 8, !30, i64 8, i64 2, !21, i64 8, i64 4, !31, i64 8, i64 8, !30, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !30}
!30 = !{!13, !13, i64 0}
!31 = !{!32, !32, i64 0}
!32 = !{!"float", !3, i64 0}
!33 = !{!34, !2, i64 32}
!34 = !{!"gs_memory_s", !2, i64 0, !35, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!35 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!36 = !{!6, !9, i64 464}
!37 = !{!38, !2, i64 8}
!38 = !{!"", !2, i64 0, !2, i64 8}
!39 = !{!40, !2, i64 8}
!40 = !{!"_ssn", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!41 = !{!7, !2, i64 56}
!42 = !{!34, !2, i64 176}
!43 = !{!6, !9, i64 432}
!44 = !{!6, !9, i64 584}
!45 = !{!6, !2, i64 528}
!46 = !{!47, !2, i64 16}
!47 = !{!"gs_memory_gc_status_s", !13, i64 0, !13, i64 8, !2, i64 16, !9, i64 24, !9, i64 28, !13, i64 32}
!48 = !{!47, !9, i64 24}
!49 = !{!6, !2, i64 8}
!50 = !{!34, !2, i64 192}
!51 = !{!52, !2, i64 120}
!52 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !13, i64 104, !2, i64 112, !2, i64 120, !9, i64 128, !2, i64 136, !9, i64 144, !9, i64 148, !3, i64 152, !2, i64 168, !9, i64 176, !2, i64 184, !9, i64 192, !2, i64 200, !2, i64 208}
!53 = !{!6, !9, i64 352}
!54 = !{!17, !2, i64 96}
!55 = !{!56, !9, i64 0}
!56 = !{!"interp_error_s", !9, i64 0, !9, i64 4, !2, i64 8, !10, i64 16}
!57 = !{!56, !9, i64 4}
!58 = !{!56, !2, i64 8}
!59 = !{i64 0, i64 2, !21, i64 2, i64 2, !21, i64 4, i64 4, !27}
!60 = !{!16, !2, i64 0}
!61 = !{!16, !2, i64 8}
!62 = !{!16, !9, i64 44}
!63 = !{!6, !2, i64 0}
!64 = !{!65, !2, i64 0}
!65 = !{!"int_remap_color_info_s", !2, i64 0, !3, i64 8}
!66 = !{!67, !2, i64 0}
!67 = !{!"name_s", !2, i64 0}
!68 = !{!69, !9, i64 4096}
!69 = !{!"name_sub_table_s", !3, i64 0, !9, i64 4096}
!70 = !{!15, !9, i64 120}
!71 = !{!15, !2, i64 112}
!72 = !{!15, !2, i64 128}
!73 = !{!74, !12, i64 264}
!74 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !9, i64 144, !9, i64 148, !12, i64 152, !3, i64 154, !3, i64 155, !75, i64 160, !13, i64 176, !76, i64 184, !2, i64 240, !9, i64 248, !9, i64 252, !2, i64 256, !12, i64 264, !12, i64 266, !2, i64 272, !2, i64 280, !9, i64 288, !9, i64 292, !2, i64 296, !2, i64 304, !77, i64 312, !9, i64 328, !13, i64 336, !13, i64 344}
!75 = !{!"gs_string_s", !2, i64 0, !9, i64 8}
!76 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!77 = !{!"gs_const_string_s", !2, i64 0, !9, i64 8}
!78 = !{!74, !12, i64 266}
!79 = !{!6, !2, i64 256}
!80 = !{!6, !9, i64 184}
!81 = !{!82, !2, i64 8}
!82 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!83 = !{!82, !2, i64 0}
!84 = !{!85, !2, i64 0}
!85 = !{!"sub_", !2, i64 0, !2, i64 8}
!86 = !{!6, !2, i64 360}
!87 = !{!6, !2, i64 344}
!88 = !{!7, !9, i64 48}
