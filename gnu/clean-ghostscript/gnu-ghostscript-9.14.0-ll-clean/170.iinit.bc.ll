; ModuleID = './iinit.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i32, i32 }
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
%struct._ssn = type { %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s* }

@.str = private unnamed_addr constant [13 x i8] c"unknownerror\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"dictfull\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"dictstackoverflow\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"dictstackunderflow\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"execstackoverflow\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"interrupt\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"invalidaccess\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"invalidexit\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"invalidfileaccess\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"invalidfont\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"invalidrestore\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"ioerror\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"limitcheck\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"nocurrentpoint\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"rangecheck\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"stackoverflow\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"stackunderflow\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"syntaxerror\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"typecheck\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"undefinedfilename\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"undefinedresult\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"unmatchedmark\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"VMerror\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"configurationerror\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"undefinedresource\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"unregistered\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"invalidcontext\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"invalidid\00", align 1
@gs_error_names = constant [30 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0)], align 16
@.str.30 = private unnamed_addr constant [11 x i8] c"level2dict\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"ll3dict\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"globaldict\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"userdict\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"filterdict\00", align 1
@initial_dictionaries = constant [5 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), i32 251, i32 0 }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i32 43, i32 0 }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i32 0, i32 0 }, %struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i32 0, i32 1 }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), i32 43, i32 0 }], align 16
@initial_dstack = constant [1 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0)], align 8
@op_defs_all = external constant [0 x %struct.op_def*], align 8
@.str.35 = private unnamed_addr constant [11 x i8] c"systemdict\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"ErrorNames\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"./psi/iinit.c\00", align 1
@.str.41 = private unnamed_addr constant [39 x i8] c"op_init proc 0x%lx returned error %d!\0A\00", align 1
@gs_copyright = external constant i8*, align 8
@gs_product = external constant i8*, align 8
@gs_productfamily = external constant i8*, align 8
@gs_revision = external constant i64, align 8
@gs_revisiondate = external constant i64, align 8
@.str.42 = private unnamed_addr constant [10 x i8] c"copyright\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"product\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"productfamily\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"revision\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"revisiondate\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"opdef overrun! %s\0A\00", align 1
@gs_interp_max_op_num_args = external constant i32, align 4
@op_def_count = external constant i32, align 4
@.str.48 = private unnamed_addr constant [57 x i8] c"initial_enter failed (%d), entering /%s in -dict:%u/%u-\0A\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"op_array table\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"op_array nx_table\00", align 1

; Function Attrs: nounwind uwtable
define i32 @i_initial_enter_name(%struct.gs_context_state_s* %i_ctx_p, i8* %nstr, %struct.ref_s* %pref) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %nstr.addr = alloca i8*, align 8
  %pref.addr = alloca %struct.ref_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i8* %nstr, i8** %nstr.addr, align 8, !tbaa !1
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 24
  %system_dict = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 7
  %2 = load i8*, i8** %nstr.addr, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %call = call i32 @i_initial_enter_name_in(%struct.gs_context_state_s* %0, %struct.ref_s* %system_dict, i8* %2, %struct.ref_s* %3) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @i_initial_enter_name_in(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %pdict, i8* %nstr, %struct.ref_s* %pref) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pdict.addr = alloca %struct.ref_s*, align 8
  %nstr.addr = alloca i8*, align 8
  %pref.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %pdict, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  store i8* %nstr, i8** %nstr.addr, align 8, !tbaa !1
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %nstr.addr, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 24
  %call = call i32 @dict_put_string(%struct.ref_s* %1, i8* %2, %struct.ref_s* %3, %struct.dict_stack_s* %dict_stack) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %5 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i8* @gs_program_name() #5
  %call2 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call1, i64 %call2) #5
  call void @lprintf_file_and_line(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), i32 97) #5
  %6 = load i32, i32* %code, align 4, !tbaa !5
  %7 = load i8*, i8** %nstr.addr, align 8, !tbaa !1
  %8 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %call3 = call i32 @dict_length(%struct.ref_s* %8) #5
  %9 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %call4 = call i32 @dict_maxlength(%struct.ref_s* %9) #5
  %call5 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.48, i32 0, i32 0), i32 %6, i8* %7, i32 %call3, i32 %call4) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define void @i_initial_remove_name(%struct.gs_context_state_s* %i_ctx_p, i8* %nstr) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %nstr.addr = alloca i8*, align 8
  %nref = alloca %struct.ref_s, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i8* %nstr, i8** %nstr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s* %nref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !7
  %3 = bitcast %struct.gs_ref_memory_s* %2 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 2
  %4 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !20
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %4, i32 0, i32 16
  %5 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !23
  %6 = load i8*, i8** %nstr.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %nstr.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %7) #6
  %conv = trunc i64 %call to i32
  %call1 = call i32 @names_ref(%struct.name_table_s* %5, i8* %6, i32 %conv, %struct.ref_s* %nref, i32 -1) #5
  %cmp = icmp sge i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 24
  %system_dict = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 7
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 24
  %call4 = call i32 @dict_undef(%struct.ref_s* %system_dict, %struct.ref_s* %nref, %struct.dict_stack_s* %dict_stack3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = bitcast %struct.ref_s* %nref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %10) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @names_ref(%struct.name_table_s*, i8*, i32, %struct.ref_s*, i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @dict_undef(%struct.ref_s*, %struct.ref_s*, %struct.dict_stack_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gs_have_level2() #0 {
entry:
  %call = call i32 @gs_op_language_level() #5
  %cmp = icmp sge i32 %call, 2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_op_language_level() #0 {
entry:
  %tptr = alloca %struct.op_def**, align 8
  %level = alloca i32, align 4
  %def = alloca %struct.op_def*, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp42 = alloca i32, align 4
  %__s1_len53 = alloca i64, align 8
  %__s2_len55 = alloca i64, align 8
  %tmp56 = alloca i32, align 4
  %__s163 = alloca i8*, align 8
  %__result66 = alloca i32, align 4
  %tmp104 = alloca i32, align 4
  %0 = bitcast %struct.op_def*** %tptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %level to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 1, i32* %level, align 4, !tbaa !5
  store %struct.op_def** getelementptr inbounds ([0 x %struct.op_def*], [0 x %struct.op_def*]* @op_defs_all, i32 0, i32 0), %struct.op_def*** %tptr, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.121, %entry
  %2 = load %struct.op_def**, %struct.op_def*** %tptr, align 8, !tbaa !1
  %3 = load %struct.op_def*, %struct.op_def** %2, align 8, !tbaa !1
  %cmp = icmp ne %struct.op_def* %3, null
  br i1 %cmp, label %for.body, label %for.end.123

for.body:                                         ; preds = %for.cond
  %4 = bitcast %struct.op_def** %def to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.op_def**, %struct.op_def*** %tptr, align 8, !tbaa !1
  %6 = load %struct.op_def*, %struct.op_def** %5, align 8, !tbaa !1
  store %struct.op_def* %6, %struct.op_def** %def, align 8, !tbaa !1
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %7 = load %struct.op_def*, %struct.op_def** %def, align 8, !tbaa !1
  %oname = getelementptr inbounds %struct.op_def, %struct.op_def* %7, i32 0, i32 0
  %8 = load i8*, i8** %oname, align 8, !tbaa !25
  %cmp2 = icmp ne i8* %8, null
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %9 = load %struct.op_def*, %struct.op_def** %def, align 8, !tbaa !1
  %proc = getelementptr inbounds %struct.op_def, %struct.op_def* %9, i32 0, i32 1
  %10 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %proc, align 8, !tbaa !27
  %cmp4 = icmp eq i32 (%struct.gs_context_state_s*)* %10, null
  br i1 %cmp4, label %if.then, label %if.end.120

if.then:                                          ; preds = %for.body.3
  %11 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i64 1) to i64), i64 ptrtoint ([11 x i8]* @.str.30 to i64)), i64 1), label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then
  %call = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0)) #6
  store i64 %call, i64* %__s2_len, align 8, !tbaa !28
  %13 = load i64, i64* %__s2_len, align 8, !tbaa !28
  %cmp5 = icmp ult i64 %13, 4
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %14 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct.op_def*, %struct.op_def** %def, align 8, !tbaa !1
  %oname7 = getelementptr inbounds %struct.op_def, %struct.op_def* %15, i32 0, i32 0
  %16 = load i8*, i8** %oname7, align 8, !tbaa !25
  store i8* %16, i8** %__s1, align 8, !tbaa !1
  %17 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 0
  %19 = load i8, i8* %arrayidx, align 1, !tbaa !29
  %conv = zext i8 %19 to i32
  %20 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), align 1, !tbaa !29
  %conv9 = zext i8 %20 to i32
  %sub = sub nsw i32 %conv, %conv9
  store i32 %sub, i32* %__result, align 4, !tbaa !5
  %21 = load i64, i64* %__s2_len, align 8, !tbaa !28
  %cmp10 = icmp ugt i64 %21, 0
  br i1 %cmp10, label %land.lhs.true.12, label %if.end.41

land.lhs.true.12:                                 ; preds = %cond.true
  %22 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %22, 0
  br i1 %cmp13, label %if.then.15, label %if.end.41

if.then.15:                                       ; preds = %land.lhs.true.12
  %23 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i8, i8* %23, i64 1
  %24 = load i8, i8* %arrayidx16, align 1, !tbaa !29
  %conv17 = zext i8 %24 to i32
  %25 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i64 1), align 1, !tbaa !29
  %conv18 = zext i8 %25 to i32
  %sub19 = sub nsw i32 %conv17, %conv18
  store i32 %sub19, i32* %__result, align 4, !tbaa !5
  %26 = load i64, i64* %__s2_len, align 8, !tbaa !28
  %cmp20 = icmp ugt i64 %26, 1
  br i1 %cmp20, label %land.lhs.true.22, label %if.end.40

land.lhs.true.22:                                 ; preds = %if.then.15
  %27 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp23 = icmp eq i32 %27, 0
  br i1 %cmp23, label %if.then.25, label %if.end.40

if.then.25:                                       ; preds = %land.lhs.true.22
  %28 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8, i8* %28, i64 2
  %29 = load i8, i8* %arrayidx26, align 1, !tbaa !29
  %conv27 = zext i8 %29 to i32
  %30 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i64 2), align 1, !tbaa !29
  %conv28 = zext i8 %30 to i32
  %sub29 = sub nsw i32 %conv27, %conv28
  store i32 %sub29, i32* %__result, align 4, !tbaa !5
  %31 = load i64, i64* %__s2_len, align 8, !tbaa !28
  %cmp30 = icmp ugt i64 %31, 2
  br i1 %cmp30, label %land.lhs.true.32, label %if.end

land.lhs.true.32:                                 ; preds = %if.then.25
  %32 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp33 = icmp eq i32 %32, 0
  br i1 %cmp33, label %if.then.35, label %if.end

if.then.35:                                       ; preds = %land.lhs.true.32
  %33 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i8, i8* %33, i64 3
  %34 = load i8, i8* %arrayidx36, align 1, !tbaa !29
  %conv37 = zext i8 %34 to i32
  %35 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i64 3), align 1, !tbaa !29
  %conv38 = zext i8 %35 to i32
  %sub39 = sub nsw i32 %conv37, %conv38
  store i32 %sub39, i32* %__result, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.35, %land.lhs.true.32, %if.then.25
  br label %if.end.40

if.end.40:                                        ; preds = %if.end, %land.lhs.true.22, %if.then.15
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %land.lhs.true.12, %cond.true
  %36 = load i32, i32* %__result, align 4, !tbaa !5
  store i32 %36, i32* %tmp42, !tbaa !5
  %37 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = load i32, i32* %tmp42, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.then
  %40 = load %struct.op_def*, %struct.op_def** %def, align 8, !tbaa !1
  %oname43 = getelementptr inbounds %struct.op_def, %struct.op_def* %40, i32 0, i32 0
  %41 = load i8*, i8** %oname43, align 8, !tbaa !25
  %call44 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0)) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.41
  %cond = phi i32 [ %39, %if.end.41 ], [ %call44, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !5
  %42 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = load i32, i32* %tmp, !tbaa !5
  %tobool = icmp ne i32 %44, 0
  br i1 %tobool, label %if.else, label %if.then.45

if.then.45:                                       ; preds = %cond.end
  %45 = load i32, i32* %level, align 4, !tbaa !5
  %cmp46 = icmp sgt i32 %45, 2
  br i1 %cmp46, label %cond.true.48, label %cond.false.49

cond.true.48:                                     ; preds = %if.then.45
  %46 = load i32, i32* %level, align 4, !tbaa !5
  br label %cond.end.50

cond.false.49:                                    ; preds = %if.then.45
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.49, %cond.true.48
  %cond51 = phi i32 [ %46, %cond.true.48 ], [ 2, %cond.false.49 ]
  store i32 %cond51, i32* %level, align 4, !tbaa !5
  br label %if.end.119

if.else:                                          ; preds = %cond.end
  %47 = bitcast i64* %__s1_len53 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #1
  %48 = bitcast i64* %__s2_len55 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i64 1) to i64), i64 ptrtoint ([8 x i8]* @.str.31 to i64)), i64 1), label %land.lhs.true.57, label %cond.false.105

land.lhs.true.57:                                 ; preds = %if.else
  %call58 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0)) #6
  store i64 %call58, i64* %__s2_len55, align 8, !tbaa !28
  %49 = load i64, i64* %__s2_len55, align 8, !tbaa !28
  %cmp59 = icmp ult i64 %49, 4
  br i1 %cmp59, label %cond.true.61, label %cond.false.105

cond.true.61:                                     ; preds = %land.lhs.true.57
  %50 = bitcast i8** %__s163 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #1
  %51 = load %struct.op_def*, %struct.op_def** %def, align 8, !tbaa !1
  %oname64 = getelementptr inbounds %struct.op_def, %struct.op_def* %51, i32 0, i32 0
  %52 = load i8*, i8** %oname64, align 8, !tbaa !25
  store i8* %52, i8** %__s163, align 8, !tbaa !1
  %53 = bitcast i32* %__result66 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #1
  %54 = load i8*, i8** %__s163, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds i8, i8* %54, i64 0
  %55 = load i8, i8* %arrayidx67, align 1, !tbaa !29
  %conv68 = zext i8 %55 to i32
  %56 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), align 1, !tbaa !29
  %conv69 = zext i8 %56 to i32
  %sub70 = sub nsw i32 %conv68, %conv69
  store i32 %sub70, i32* %__result66, align 4, !tbaa !5
  %57 = load i64, i64* %__s2_len55, align 8, !tbaa !28
  %cmp71 = icmp ugt i64 %57, 0
  br i1 %cmp71, label %land.lhs.true.73, label %if.end.103

land.lhs.true.73:                                 ; preds = %cond.true.61
  %58 = load i32, i32* %__result66, align 4, !tbaa !5
  %cmp74 = icmp eq i32 %58, 0
  br i1 %cmp74, label %if.then.76, label %if.end.103

if.then.76:                                       ; preds = %land.lhs.true.73
  %59 = load i8*, i8** %__s163, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds i8, i8* %59, i64 1
  %60 = load i8, i8* %arrayidx77, align 1, !tbaa !29
  %conv78 = zext i8 %60 to i32
  %61 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i64 1), align 1, !tbaa !29
  %conv79 = zext i8 %61 to i32
  %sub80 = sub nsw i32 %conv78, %conv79
  store i32 %sub80, i32* %__result66, align 4, !tbaa !5
  %62 = load i64, i64* %__s2_len55, align 8, !tbaa !28
  %cmp81 = icmp ugt i64 %62, 1
  br i1 %cmp81, label %land.lhs.true.83, label %if.end.102

land.lhs.true.83:                                 ; preds = %if.then.76
  %63 = load i32, i32* %__result66, align 4, !tbaa !5
  %cmp84 = icmp eq i32 %63, 0
  br i1 %cmp84, label %if.then.86, label %if.end.102

if.then.86:                                       ; preds = %land.lhs.true.83
  %64 = load i8*, i8** %__s163, align 8, !tbaa !1
  %arrayidx87 = getelementptr inbounds i8, i8* %64, i64 2
  %65 = load i8, i8* %arrayidx87, align 1, !tbaa !29
  %conv88 = zext i8 %65 to i32
  %66 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i64 2), align 1, !tbaa !29
  %conv89 = zext i8 %66 to i32
  %sub90 = sub nsw i32 %conv88, %conv89
  store i32 %sub90, i32* %__result66, align 4, !tbaa !5
  %67 = load i64, i64* %__s2_len55, align 8, !tbaa !28
  %cmp91 = icmp ugt i64 %67, 2
  br i1 %cmp91, label %land.lhs.true.93, label %if.end.101

land.lhs.true.93:                                 ; preds = %if.then.86
  %68 = load i32, i32* %__result66, align 4, !tbaa !5
  %cmp94 = icmp eq i32 %68, 0
  br i1 %cmp94, label %if.then.96, label %if.end.101

if.then.96:                                       ; preds = %land.lhs.true.93
  %69 = load i8*, i8** %__s163, align 8, !tbaa !1
  %arrayidx97 = getelementptr inbounds i8, i8* %69, i64 3
  %70 = load i8, i8* %arrayidx97, align 1, !tbaa !29
  %conv98 = zext i8 %70 to i32
  %71 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i64 3), align 1, !tbaa !29
  %conv99 = zext i8 %71 to i32
  %sub100 = sub nsw i32 %conv98, %conv99
  store i32 %sub100, i32* %__result66, align 4, !tbaa !5
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.96, %land.lhs.true.93, %if.then.86
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %land.lhs.true.83, %if.then.76
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %land.lhs.true.73, %cond.true.61
  %72 = load i32, i32* %__result66, align 4, !tbaa !5
  store i32 %72, i32* %tmp104, !tbaa !5
  %73 = bitcast i32* %__result66 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i8** %__s163 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = load i32, i32* %tmp104, !tbaa !5
  br label %cond.end.108

cond.false.105:                                   ; preds = %land.lhs.true.57, %if.else
  %76 = load %struct.op_def*, %struct.op_def** %def, align 8, !tbaa !1
  %oname106 = getelementptr inbounds %struct.op_def, %struct.op_def* %76, i32 0, i32 0
  %77 = load i8*, i8** %oname106, align 8, !tbaa !25
  %call107 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0)) #7
  br label %cond.end.108

cond.end.108:                                     ; preds = %cond.false.105, %if.end.103
  %cond109 = phi i32 [ %75, %if.end.103 ], [ %call107, %cond.false.105 ]
  store i32 %cond109, i32* %tmp56, !tbaa !5
  %78 = bitcast i64* %__s2_len55 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast i64* %__s1_len53 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = load i32, i32* %tmp56, !tbaa !5
  %tobool110 = icmp ne i32 %80, 0
  br i1 %tobool110, label %if.end.118, label %if.then.111

if.then.111:                                      ; preds = %cond.end.108
  %81 = load i32, i32* %level, align 4, !tbaa !5
  %cmp112 = icmp sgt i32 %81, 3
  br i1 %cmp112, label %cond.true.114, label %cond.false.115

cond.true.114:                                    ; preds = %if.then.111
  %82 = load i32, i32* %level, align 4, !tbaa !5
  br label %cond.end.116

cond.false.115:                                   ; preds = %if.then.111
  br label %cond.end.116

cond.end.116:                                     ; preds = %cond.false.115, %cond.true.114
  %cond117 = phi i32 [ %82, %cond.true.114 ], [ 3, %cond.false.115 ]
  store i32 %cond117, i32* %level, align 4, !tbaa !5
  br label %if.end.118

if.end.118:                                       ; preds = %cond.end.116, %cond.end.108
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %cond.end.50
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end.120
  %83 = load %struct.op_def*, %struct.op_def** %def, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.op_def, %struct.op_def* %83, i32 1
  store %struct.op_def* %incdec.ptr, %struct.op_def** %def, align 8, !tbaa !1
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %84 = bitcast %struct.op_def** %def to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  br label %for.inc.121

for.inc.121:                                      ; preds = %for.end
  %85 = load %struct.op_def**, %struct.op_def*** %tptr, align 8, !tbaa !1
  %incdec.ptr122 = getelementptr inbounds %struct.op_def*, %struct.op_def** %85, i32 1
  store %struct.op_def** %incdec.ptr122, %struct.op_def*** %tptr, align 8, !tbaa !1
  br label %for.cond

for.end.123:                                      ; preds = %for.cond
  %86 = load i32, i32* %level, align 4, !tbaa !5
  %87 = bitcast i32* %level to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = bitcast %struct.op_def*** %tptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  ret i32 %86
}

; Function Attrs: nounwind uwtable
define i32 @obj_init(%struct.gs_context_state_s** %pi_ctx_p, %struct.gs_dual_memory_s* %idmem) #0 {
entry:
  %retval = alloca i32, align 4
  %pi_ctx_p.addr = alloca %struct.gs_context_state_s**, align 8
  %idmem.addr = alloca %struct.gs_dual_memory_s*, align 8
  %level = alloca i32, align 4
  %system_dict = alloca %struct.ref_s, align 8
  %i_ctx_p = alloca %struct.gs_context_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %idicts = alloca [5 x %struct.ref_s], align 16
  %i = alloca i32, align 4
  %tptr = alloca %struct.op_def**, align 8
  %def = alloca %struct.op_def*, align 8
  %dname = alloca i8*, align 8
  %r = alloca %struct.ref_s*, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp92 = alloca i32, align 4
  %idict = alloca %struct.ref_s*, align 8
  %save_space = alloca i32, align 4
  %vnull = alloca %struct.ref_s, align 8
  %vtrue = alloca %struct.ref_s, align 8
  %vfalse = alloca %struct.ref_s, align 8
  %n = alloca i32, align 4
  %i219 = alloca i32, align 4
  %era = alloca %struct.ref_s, align 8
  store %struct.gs_context_state_s** %pi_ctx_p, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_dual_memory_s* %idmem, %struct.gs_dual_memory_s** %idmem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %level to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %call = call i32 @gs_op_language_level() #5
  store i32 %call, i32* %level, align 4, !tbaa !5
  %1 = bitcast %struct.ref_s* %system_dict to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %idmem.addr, align 8, !tbaa !1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %4, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %global = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 2
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global, align 8, !tbaa !30
  %6 = load i32, i32* %level, align 4, !tbaa !5
  %cmp = icmp sge i32 %6, 3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %level, align 4, !tbaa !5
  %cmp1 = icmp sge i32 %7, 2
  %cond = select i1 %cmp1, i32 983, i32 631
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi i32 [ 1123, %cond.true ], [ %cond, %cond.false ]
  %call3 = call i32 @dict_alloc(%struct.gs_ref_memory_s* %5, i32 %cond2, %struct.ref_s* %system_dict) #5
  store i32 %call3, i32* %code, align 4, !tbaa !5
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %8, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %9 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.249

if.end:                                           ; preds = %cond.end
  %10 = load %struct.gs_context_state_s**, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  %11 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %idmem.addr, align 8, !tbaa !1
  %call5 = call i32 @gs_interp_init(%struct.gs_context_state_s** %10, %struct.ref_s* %system_dict, %struct.gs_dual_memory_s* %11) #5
  store i32 %call5, i32* %code, align 4, !tbaa !5
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %12, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %13 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.249

if.end.8:                                         ; preds = %if.end
  %14 = load %struct.gs_context_state_s**, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %14, align 8, !tbaa !1
  store %struct.gs_context_state_s* %15, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %16 = bitcast [5 x %struct.ref_s]* %idicts to i8*
  call void @llvm.lifetime.start(i64 80, i8* %16) #1
  %17 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast %struct.op_def*** %tptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 24
  %min_size = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 1
  store i32 2, i32* %min_size, align 4, !tbaa !32
  %arraydecay = getelementptr inbounds [5 x %struct.ref_s], [5 x %struct.ref_s]* %idicts, i32 0, i32 0
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 5
  %21 = load i32, i32* %new_mask, align 4, !tbaa !33
  call void @refset_null_new(%struct.ref_s* %arraydecay, i32 5, i32 %21) #5
  %22 = load i32, i32* %level, align 4, !tbaa !5
  %cmp9 = icmp sge i32 %22, 2
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.8
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack11 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 24
  %stack = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack11, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %24 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !34
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 2
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p, align 8, !tbaa !34
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack12 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 24
  %stack13 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack12, i32 0, i32 0
  %p14 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack13, i32 0, i32 0
  %26 = load %struct.ref_s*, %struct.ref_s** %p14, align 8, !tbaa !34
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 -1
  %27 = bitcast %struct.ref_s* %arrayidx to i8*
  %28 = bitcast %struct.ref_s* %system_dict to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 16, i32 8, i1 false), !tbaa.struct !35
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack15 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 24
  %min_size16 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack15, i32 0, i32 1
  %30 = load i32, i32* %min_size16, align 4, !tbaa !32
  %inc = add i32 %30, 1
  store i32 %inc, i32* %min_size16, align 4, !tbaa !32
  br label %if.end.20

if.else:                                          ; preds = %if.end.8
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack17 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 24
  %stack18 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack17, i32 0, i32 0
  %p19 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack18, i32 0, i32 0
  %32 = load %struct.ref_s*, %struct.ref_s** %p19, align 8, !tbaa !34
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p19, align 8, !tbaa !34
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.10
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack21 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 24
  %stack22 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack21, i32 0, i32 0
  %p23 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack22, i32 0, i32 0
  %34 = load %struct.ref_s*, %struct.ref_s** %p23, align 8, !tbaa !34
  %35 = bitcast %struct.ref_s* %34 to i8*
  %36 = bitcast %struct.ref_s* %system_dict to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 16, i32 8, i1 false), !tbaa.struct !35
  store %struct.op_def** getelementptr inbounds ([0 x %struct.op_def*], [0 x %struct.op_def*]* @op_defs_all, i32 0, i32 0), %struct.op_def*** %tptr, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.38, %if.end.20
  %37 = load %struct.op_def**, %struct.op_def*** %tptr, align 8, !tbaa !1
  %38 = load %struct.op_def*, %struct.op_def** %37, align 8, !tbaa !1
  %cmp24 = icmp ne %struct.op_def* %38, null
  br i1 %cmp24, label %for.body, label %for.end.40

for.body:                                         ; preds = %for.cond
  %39 = bitcast %struct.op_def** %def to i8*
  call void @llvm.lifetime.start(i64 8, i8* %39) #1
  %40 = load %struct.op_def**, %struct.op_def*** %tptr, align 8, !tbaa !1
  %41 = load %struct.op_def*, %struct.op_def** %40, align 8, !tbaa !1
  store %struct.op_def* %41, %struct.op_def** %def, align 8, !tbaa !1
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc, %for.body
  %42 = load %struct.op_def*, %struct.op_def** %def, align 8, !tbaa !1
  %oname = getelementptr inbounds %struct.op_def, %struct.op_def* %42, i32 0, i32 0
  %43 = load i8*, i8** %oname, align 8, !tbaa !25
  %cmp26 = icmp ne i8* %43, null
  br i1 %cmp26, label %for.body.27, label %for.end

for.body.27:                                      ; preds = %for.cond.25
  %44 = load %struct.op_def*, %struct.op_def** %def, align 8, !tbaa !1
  %proc = getelementptr inbounds %struct.op_def, %struct.op_def* %44, i32 0, i32 1
  %45 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %proc, align 8, !tbaa !27
  %cmp28 = icmp eq i32 (%struct.gs_context_state_s*)* %45, null
  br i1 %cmp28, label %if.then.29, label %if.end.36

if.then.29:                                       ; preds = %for.body.27
  %46 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %47 = load %struct.op_def*, %struct.op_def** %def, align 8, !tbaa !1
  %oname30 = getelementptr inbounds %struct.op_def, %struct.op_def* %47, i32 0, i32 0
  %48 = load i8*, i8** %oname30, align 8, !tbaa !25
  %arraydecay31 = getelementptr inbounds [5 x %struct.ref_s], [5 x %struct.ref_s]* %idicts, i32 0, i32 0
  %call32 = call %struct.ref_s* @make_initial_dict(%struct.gs_context_state_s* %46, i8* %48, %struct.ref_s* %arraydecay31) #5
  %cmp33 = icmp eq %struct.ref_s* %call32, null
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.29
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %if.then.29
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %for.body.27
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %49 = load %struct.op_def*, %struct.op_def** %def, align 8, !tbaa !1
  %incdec.ptr37 = getelementptr inbounds %struct.op_def, %struct.op_def* %49, i32 1
  store %struct.op_def* %incdec.ptr37, %struct.op_def** %def, align 8, !tbaa !1
  br label %for.cond.25

for.end:                                          ; preds = %for.cond.25
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.34
  %50 = bitcast %struct.op_def** %def to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.184 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.38

for.inc.38:                                       ; preds = %cleanup.cont
  %51 = load %struct.op_def**, %struct.op_def*** %tptr, align 8, !tbaa !1
  %incdec.ptr39 = getelementptr inbounds %struct.op_def*, %struct.op_def** %51, i32 1
  store %struct.op_def** %incdec.ptr39, %struct.op_def*** %tptr, align 8, !tbaa !1
  br label %for.cond

for.end.40:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.119, %for.end.40
  %52 = load i32, i32* %i, align 4, !tbaa !5
  %conv = sext i32 %52 to i64
  %cmp42 = icmp ult i64 %conv, 1
  br i1 %cmp42, label %for.body.44, label %for.end.121

for.body.44:                                      ; preds = %for.cond.41
  %53 = bitcast i8** %dname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #1
  %54 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %54 to i64
  %arrayidx45 = getelementptr inbounds [1 x i8*], [1 x i8*]* @initial_dstack, i32 0, i64 %idxprom
  %55 = load i8*, i8** %arrayidx45, align 8, !tbaa !1
  store i8* %55, i8** %dname, align 8, !tbaa !1
  %56 = bitcast %struct.ref_s** %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #1
  %57 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack46 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %57, i32 0, i32 24
  %stack47 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack46, i32 0, i32 0
  %p48 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack47, i32 0, i32 0
  %58 = load %struct.ref_s*, %struct.ref_s** %p48, align 8, !tbaa !34
  %incdec.ptr49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i32 1
  store %struct.ref_s* %incdec.ptr49, %struct.ref_s** %p48, align 8, !tbaa !34
  %59 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %59) #1
  %60 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %60) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i64 1) to i64), i64 ptrtoint ([9 x i8]* @.str.33 to i64)), i64 1), label %land.lhs.true, label %cond.false.93

land.lhs.true:                                    ; preds = %for.body.44
  %call50 = call i64 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0)) #6
  store i64 %call50, i64* %__s2_len, align 8, !tbaa !28
  %61 = load i64, i64* %__s2_len, align 8, !tbaa !28
  %cmp51 = icmp ult i64 %61, 4
  br i1 %cmp51, label %cond.true.53, label %cond.false.93

cond.true.53:                                     ; preds = %land.lhs.true
  %62 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %62) #1
  %63 = load i8*, i8** %dname, align 8, !tbaa !1
  store i8* %63, i8** %__s1, align 8, !tbaa !1
  %64 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #1
  %65 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds i8, i8* %65, i64 0
  %66 = load i8, i8* %arrayidx56, align 1, !tbaa !29
  %conv57 = zext i8 %66 to i32
  %67 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), align 1, !tbaa !29
  %conv58 = zext i8 %67 to i32
  %sub = sub nsw i32 %conv57, %conv58
  store i32 %sub, i32* %__result, align 4, !tbaa !5
  %68 = load i64, i64* %__s2_len, align 8, !tbaa !28
  %cmp59 = icmp ugt i64 %68, 0
  br i1 %cmp59, label %land.lhs.true.61, label %if.end.91

land.lhs.true.61:                                 ; preds = %cond.true.53
  %69 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp62 = icmp eq i32 %69, 0
  br i1 %cmp62, label %if.then.64, label %if.end.91

if.then.64:                                       ; preds = %land.lhs.true.61
  %70 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx65 = getelementptr inbounds i8, i8* %70, i64 1
  %71 = load i8, i8* %arrayidx65, align 1, !tbaa !29
  %conv66 = zext i8 %71 to i32
  %72 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i64 1), align 1, !tbaa !29
  %conv67 = zext i8 %72 to i32
  %sub68 = sub nsw i32 %conv66, %conv67
  store i32 %sub68, i32* %__result, align 4, !tbaa !5
  %73 = load i64, i64* %__s2_len, align 8, !tbaa !28
  %cmp69 = icmp ugt i64 %73, 1
  br i1 %cmp69, label %land.lhs.true.71, label %if.end.90

land.lhs.true.71:                                 ; preds = %if.then.64
  %74 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp72 = icmp eq i32 %74, 0
  br i1 %cmp72, label %if.then.74, label %if.end.90

if.then.74:                                       ; preds = %land.lhs.true.71
  %75 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds i8, i8* %75, i64 2
  %76 = load i8, i8* %arrayidx75, align 1, !tbaa !29
  %conv76 = zext i8 %76 to i32
  %77 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i64 2), align 1, !tbaa !29
  %conv77 = zext i8 %77 to i32
  %sub78 = sub nsw i32 %conv76, %conv77
  store i32 %sub78, i32* %__result, align 4, !tbaa !5
  %78 = load i64, i64* %__s2_len, align 8, !tbaa !28
  %cmp79 = icmp ugt i64 %78, 2
  br i1 %cmp79, label %land.lhs.true.81, label %if.end.89

land.lhs.true.81:                                 ; preds = %if.then.74
  %79 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp82 = icmp eq i32 %79, 0
  br i1 %cmp82, label %if.then.84, label %if.end.89

if.then.84:                                       ; preds = %land.lhs.true.81
  %80 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx85 = getelementptr inbounds i8, i8* %80, i64 3
  %81 = load i8, i8* %arrayidx85, align 1, !tbaa !29
  %conv86 = zext i8 %81 to i32
  %82 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i64 3), align 1, !tbaa !29
  %conv87 = zext i8 %82 to i32
  %sub88 = sub nsw i32 %conv86, %conv87
  store i32 %sub88, i32* %__result, align 4, !tbaa !5
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.84, %land.lhs.true.81, %if.then.74
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %land.lhs.true.71, %if.then.64
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %land.lhs.true.61, %cond.true.53
  %83 = load i32, i32* %__result, align 4, !tbaa !5
  store i32 %83, i32* %tmp92, !tbaa !5
  %84 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = load i32, i32* %tmp92, !tbaa !5
  br label %cond.end.95

cond.false.93:                                    ; preds = %land.lhs.true, %for.body.44
  %87 = load i8*, i8** %dname, align 8, !tbaa !1
  %call94 = call i32 @strcmp(i8* %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0)) #7
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.93, %if.end.91
  %cond96 = phi i32 [ %86, %if.end.91 ], [ %call94, %cond.false.93 ]
  store i32 %cond96, i32* %tmp, !tbaa !5
  %88 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %89 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  %90 = load i32, i32* %tmp, !tbaa !5
  %tobool = icmp ne i32 %90, 0
  br i1 %tobool, label %if.end.105, label %if.then.97

if.then.97:                                       ; preds = %cond.end.95
  %91 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack98 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %91, i32 0, i32 24
  %stack99 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack98, i32 0, i32 0
  %p100 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack99, i32 0, i32 0
  %92 = load %struct.ref_s*, %struct.ref_s** %p100, align 8, !tbaa !34
  %93 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack101 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %93, i32 0, i32 24
  %stack102 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack101, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack102, i32 0, i32 1
  %94 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !39
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %92 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %94 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %conv103 = trunc i64 %sub.ptr.div to i32
  %95 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack104 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %95, i32 0, i32 24
  %userdict_index = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack104, i32 0, i32 2
  store i32 %conv103, i32* %userdict_index, align 4, !tbaa !40
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.97, %cond.end.95
  %96 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %97 = load i8*, i8** %dname, align 8, !tbaa !1
  %arraydecay106 = getelementptr inbounds [5 x %struct.ref_s], [5 x %struct.ref_s]* %idicts, i32 0, i32 0
  %call107 = call %struct.ref_s* @make_initial_dict(%struct.gs_context_state_s* %96, i8* %97, %struct.ref_s* %arraydecay106) #5
  store %struct.ref_s* %call107, %struct.ref_s** %r, align 8, !tbaa !1
  %98 = load %struct.ref_s*, %struct.ref_s** %r, align 8, !tbaa !1
  %cmp108 = icmp eq %struct.ref_s* %98, null
  br i1 %cmp108, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %if.end.105
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.115

if.end.111:                                       ; preds = %if.end.105
  %99 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack112 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %99, i32 0, i32 24
  %stack113 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack112, i32 0, i32 0
  %p114 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack113, i32 0, i32 0
  %100 = load %struct.ref_s*, %struct.ref_s** %p114, align 8, !tbaa !34
  %101 = load %struct.ref_s*, %struct.ref_s** %r, align 8, !tbaa !1
  %102 = bitcast %struct.ref_s* %100 to i8*
  %103 = bitcast %struct.ref_s* %101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %102, i8* %103, i64 16, i32 8, i1 false), !tbaa.struct !35
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.115

cleanup.115:                                      ; preds = %if.end.111, %if.then.110
  %104 = bitcast %struct.ref_s** %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #1
  %105 = bitcast i8** %dname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #1
  %cleanup.dest.117 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.117, label %cleanup.184 [
    i32 0, label %cleanup.cont.118
  ]

cleanup.cont.118:                                 ; preds = %cleanup.115
  br label %for.inc.119

for.inc.119:                                      ; preds = %cleanup.cont.118
  %106 = load i32, i32* %i, align 4, !tbaa !5
  %inc120 = add nsw i32 %106, 1
  store i32 %inc120, i32* %i, align 4, !tbaa !5
  br label %for.cond.41

for.end.121:                                      ; preds = %for.cond.41
  %107 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %108 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack122 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %108, i32 0, i32 24
  %system_dict123 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack122, i32 0, i32 7
  %call124 = call i32 @i_initial_enter_name(%struct.gs_context_state_s* %107, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), %struct.ref_s* %system_dict123) #5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.125

for.cond.125:                                     ; preds = %for.inc.181, %for.end.121
  %109 = load i32, i32* %i, align 4, !tbaa !5
  %conv126 = sext i32 %109 to i64
  %cmp127 = icmp ult i64 %conv126, 5
  br i1 %cmp127, label %for.body.129, label %for.end.183

for.body.129:                                     ; preds = %for.cond.125
  %110 = bitcast %struct.ref_s** %idict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %110) #1
  %111 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom131 = sext i32 %111 to i64
  %arrayidx132 = getelementptr inbounds [5 x %struct.ref_s], [5 x %struct.ref_s]* %idicts, i32 0, i64 %idxprom131
  store %struct.ref_s* %arrayidx132, %struct.ref_s** %idict, align 8, !tbaa !1
  %112 = load %struct.ref_s*, %struct.ref_s** %idict, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %112, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %113 = bitcast i16* %type_attrs to i8*
  %arrayidx133 = getelementptr inbounds i8, i8* %113, i64 1
  %114 = load i8, i8* %arrayidx133, align 1, !tbaa !29
  %conv134 = zext i8 %114 to i32
  %cmp135 = icmp eq i32 %conv134, 14
  br i1 %cmp135, label %if.end.177, label %if.then.137

if.then.137:                                      ; preds = %for.body.129
  %115 = bitcast i32* %save_space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %115) #1
  %116 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack139 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %116, i32 0, i32 24
  %system_dict140 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack139, i32 0, i32 7
  %tas141 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %system_dict140, i32 0, i32 0
  %type_attrs142 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas141, i32 0, i32 0
  %117 = load i16, i16* %type_attrs142, align 2, !tbaa !41
  %conv143 = zext i16 %117 to i32
  %and = and i32 %conv143, 12
  store i32 %and, i32* %save_space, align 4, !tbaa !5
  %118 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack144 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %118, i32 0, i32 24
  %system_dict145 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack144, i32 0, i32 7
  %tas146 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %system_dict145, i32 0, i32 0
  %type_attrs147 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas146, i32 0, i32 0
  %119 = load i16, i16* %type_attrs147, align 2, !tbaa !41
  %conv148 = zext i16 %119 to i32
  %and149 = and i32 %conv148, -13
  %or = or i32 %and149, 12
  %conv150 = trunc i32 %or to i16
  %120 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack151 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %120, i32 0, i32 24
  %system_dict152 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack151, i32 0, i32 7
  %tas153 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %system_dict152, i32 0, i32 0
  %type_attrs154 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas153, i32 0, i32 0
  store i16 %conv150, i16* %type_attrs154, align 2, !tbaa !41
  %121 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %122 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom155 = sext i32 %122 to i64
  %arrayidx156 = getelementptr inbounds [5 x %struct.anon], [5 x %struct.anon]* @initial_dictionaries, i32 0, i64 %idxprom155
  %name = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx156, i32 0, i32 0
  %123 = load i8*, i8** %name, align 8, !tbaa !42
  %124 = load %struct.ref_s*, %struct.ref_s** %idict, align 8, !tbaa !1
  %call157 = call i32 @i_initial_enter_name(%struct.gs_context_state_s* %121, i8* %123, %struct.ref_s* %124) #5
  store i32 %call157, i32* %code, align 4, !tbaa !5
  %125 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack158 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %125, i32 0, i32 24
  %system_dict159 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack158, i32 0, i32 7
  %tas160 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %system_dict159, i32 0, i32 0
  %type_attrs161 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas160, i32 0, i32 0
  %126 = load i16, i16* %type_attrs161, align 2, !tbaa !41
  %conv162 = zext i16 %126 to i32
  %and163 = and i32 %conv162, -13
  %127 = load i32, i32* %save_space, align 4, !tbaa !5
  %or164 = or i32 %and163, %127
  %conv165 = trunc i32 %or164 to i16
  %128 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack166 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %128, i32 0, i32 24
  %system_dict167 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack166, i32 0, i32 7
  %tas168 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %system_dict167, i32 0, i32 0
  %type_attrs169 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas168, i32 0, i32 0
  store i16 %conv165, i16* %type_attrs169, align 2, !tbaa !41
  %129 = load i32, i32* %code, align 4, !tbaa !5
  %cmp170 = icmp slt i32 %129, 0
  br i1 %cmp170, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %if.then.137
  %130 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %130, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.174

if.end.173:                                       ; preds = %if.then.137
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.174

cleanup.174:                                      ; preds = %if.end.173, %if.then.172
  %131 = bitcast i32* %save_space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #1
  %cleanup.dest.175 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.175, label %cleanup.178 [
    i32 0, label %cleanup.cont.176
  ]

cleanup.cont.176:                                 ; preds = %cleanup.174
  br label %if.end.177

if.end.177:                                       ; preds = %cleanup.cont.176, %for.body.129
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.178

cleanup.178:                                      ; preds = %if.end.177, %cleanup.174
  %132 = bitcast %struct.ref_s** %idict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  %cleanup.dest.179 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.179, label %cleanup.184 [
    i32 0, label %cleanup.cont.180
  ]

cleanup.cont.180:                                 ; preds = %cleanup.178
  br label %for.inc.181

for.inc.181:                                      ; preds = %cleanup.cont.180
  %133 = load i32, i32* %i, align 4, !tbaa !5
  %inc182 = add nsw i32 %133, 1
  store i32 %inc182, i32* %i, align 4, !tbaa !5
  br label %for.cond.125

for.end.183:                                      ; preds = %for.cond.125
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.184

cleanup.184:                                      ; preds = %for.end.183, %cleanup.178, %cleanup.115, %cleanup
  %134 = bitcast %struct.op_def*** %tptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #1
  %135 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #1
  %136 = bitcast [5 x %struct.ref_s]* %idicts to i8*
  call void @llvm.lifetime.end(i64 80, i8* %136) #1
  %cleanup.dest.187 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.187, label %cleanup.249 [
    i32 0, label %cleanup.cont.188
  ]

cleanup.cont.188:                                 ; preds = %cleanup.184
  %137 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  call void @gs_interp_reset(%struct.gs_context_state_s* %137) #5
  %138 = bitcast %struct.ref_s* %vnull to i8*
  call void @llvm.lifetime.start(i64 16, i8* %138) #1
  %139 = bitcast %struct.ref_s* %vtrue to i8*
  call void @llvm.lifetime.start(i64 16, i8* %139) #1
  %140 = bitcast %struct.ref_s* %vfalse to i8*
  call void @llvm.lifetime.start(i64 16, i8* %140) #1
  %tas192 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vnull, i32 0, i32 0
  %type_attrs193 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas192, i32 0, i32 0
  store i16 3584, i16* %type_attrs193, align 2, !tbaa !41
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vtrue, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  store i16 1, i16* %boolval, align 2, !tbaa !36
  %tas194 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vtrue, i32 0, i32 0
  %type_attrs195 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas194, i32 0, i32 0
  store i16 256, i16* %type_attrs195, align 2, !tbaa !41
  %value196 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vfalse, i32 0, i32 1
  %boolval197 = bitcast %union.v* %value196 to i16*
  store i16 0, i16* %boolval197, align 2, !tbaa !36
  %tas198 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vfalse, i32 0, i32 0
  %type_attrs199 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas198, i32 0, i32 0
  store i16 256, i16* %type_attrs199, align 2, !tbaa !41
  %141 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %call200 = call i32 @i_initial_enter_name(%struct.gs_context_state_s* %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), %struct.ref_s* %vnull) #5
  store i32 %call200, i32* %code, align 4, !tbaa !5
  %cmp201 = icmp slt i32 %call200, 0
  br i1 %cmp201, label %if.then.210, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cleanup.cont.188
  %142 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %call203 = call i32 @i_initial_enter_name(%struct.gs_context_state_s* %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), %struct.ref_s* %vtrue) #5
  store i32 %call203, i32* %code, align 4, !tbaa !5
  %cmp204 = icmp slt i32 %call203, 0
  br i1 %cmp204, label %if.then.210, label %lor.lhs.false.206

lor.lhs.false.206:                                ; preds = %lor.lhs.false
  %143 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %call207 = call i32 @i_initial_enter_name(%struct.gs_context_state_s* %143, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), %struct.ref_s* %vfalse) #5
  store i32 %call207, i32* %code, align 4, !tbaa !5
  %cmp208 = icmp slt i32 %call207, 0
  br i1 %cmp208, label %if.then.210, label %if.end.211

if.then.210:                                      ; preds = %lor.lhs.false.206, %lor.lhs.false, %cleanup.cont.188
  %144 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %144, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.212

if.end.211:                                       ; preds = %lor.lhs.false.206
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.212

cleanup.212:                                      ; preds = %if.end.211, %if.then.210
  %145 = bitcast %struct.ref_s* %vfalse to i8*
  call void @llvm.lifetime.end(i64 16, i8* %145) #1
  %146 = bitcast %struct.ref_s* %vtrue to i8*
  call void @llvm.lifetime.end(i64 16, i8* %146) #1
  %147 = bitcast %struct.ref_s* %vnull to i8*
  call void @llvm.lifetime.end(i64 16, i8* %147) #1
  %cleanup.dest.215 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.215, label %cleanup.249 [
    i32 0, label %cleanup.cont.216
  ]

cleanup.cont.216:                                 ; preds = %cleanup.212
  %148 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %148) #1
  store i32 29, i32* %n, align 4, !tbaa !5
  %149 = bitcast i32* %i219 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %149) #1
  %150 = bitcast %struct.ref_s* %era to i8*
  call void @llvm.lifetime.start(i64 16, i8* %150) #1
  %151 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory221 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %151, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory221, i32 0, i32 0
  %152 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !7
  %153 = load i32, i32* %n, align 4, !tbaa !5
  %call222 = call i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s* %152, %struct.ref_s* %era, i32 96, i32 %153, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0)) #5
  store i32 %call222, i32* %code, align 4, !tbaa !5
  %154 = load i32, i32* %code, align 4, !tbaa !5
  %cmp223 = icmp slt i32 %154, 0
  br i1 %cmp223, label %if.then.225, label %if.end.226

if.then.225:                                      ; preds = %cleanup.cont.216
  %155 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %155, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.246

if.end.226:                                       ; preds = %cleanup.cont.216
  store i32 0, i32* %i219, align 4, !tbaa !5
  br label %for.cond.227

for.cond.227:                                     ; preds = %for.inc.242, %if.end.226
  %156 = load i32, i32* %i219, align 4, !tbaa !5
  %157 = load i32, i32* %n, align 4, !tbaa !5
  %cmp228 = icmp slt i32 %156, %157
  br i1 %cmp228, label %for.body.230, label %for.end.244

for.body.230:                                     ; preds = %for.cond.227
  %158 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory231 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %158, i32 0, i32 1
  %current232 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory231, i32 0, i32 0
  %159 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current232, align 8, !tbaa !7
  %160 = bitcast %struct.gs_ref_memory_s* %159 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %160, i32 0, i32 2
  %161 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !20
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %161, i32 0, i32 16
  %162 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !23
  %163 = load i32, i32* %i219, align 4, !tbaa !5
  %idxprom233 = sext i32 %163 to i64
  %arrayidx234 = getelementptr inbounds [30 x i8*], [30 x i8*]* @gs_error_names, i32 0, i64 %idxprom233
  %164 = load i8*, i8** %arrayidx234, align 8, !tbaa !1
  %value235 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %era, i32 0, i32 1
  %refs = bitcast %union.v* %value235 to %struct.ref_s**
  %165 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %166 = load i32, i32* %i219, align 4, !tbaa !5
  %idx.ext = sext i32 %166 to i64
  %add.ptr236 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %165, i64 %idx.ext
  %call237 = call i32 @names_enter_string(%struct.name_table_s* %162, i8* %164, %struct.ref_s* %add.ptr236) #5
  store i32 %call237, i32* %code, align 4, !tbaa !5
  %cmp238 = icmp slt i32 %call237, 0
  br i1 %cmp238, label %if.then.240, label %if.end.241

if.then.240:                                      ; preds = %for.body.230
  %167 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %167, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.246

if.end.241:                                       ; preds = %for.body.230
  br label %for.inc.242

for.inc.242:                                      ; preds = %if.end.241
  %168 = load i32, i32* %i219, align 4, !tbaa !5
  %inc243 = add nsw i32 %168, 1
  store i32 %inc243, i32* %i219, align 4, !tbaa !5
  br label %for.cond.227

for.end.244:                                      ; preds = %for.cond.227
  %169 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %call245 = call i32 @i_initial_enter_name(%struct.gs_context_state_s* %169, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), %struct.ref_s* %era) #5
  store i32 %call245, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.246

cleanup.246:                                      ; preds = %for.end.244, %if.then.240, %if.then.225
  %170 = bitcast %struct.ref_s* %era to i8*
  call void @llvm.lifetime.end(i64 16, i8* %170) #1
  %171 = bitcast i32* %i219 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #1
  %172 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #1
  br label %cleanup.249

cleanup.249:                                      ; preds = %cleanup.246, %cleanup.212, %cleanup.184, %if.then.7, %if.then
  %173 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #1
  %174 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %174) #1
  %175 = bitcast %struct.ref_s* %system_dict to i8*
  call void @llvm.lifetime.end(i64 16, i8* %175) #1
  %176 = bitcast i32* %level to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #1
  %177 = load i32, i32* %retval
  ret i32 %177
}

declare i32 @dict_alloc(%struct.gs_ref_memory_s*, i32, %struct.ref_s*) #2

declare i32 @gs_interp_init(%struct.gs_context_state_s**, %struct.ref_s*, %struct.gs_dual_memory_s*) #2

declare void @refset_null_new(%struct.ref_s*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal %struct.ref_s* @make_initial_dict(%struct.gs_context_state_s* %i_ctx_p, i8* %iname, %struct.ref_s* %idicts) #0 {
entry:
  %retval = alloca %struct.ref_s*, align 8
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %iname.addr = alloca i8*, align 8
  %idicts.addr = alloca %struct.ref_s*, align 8
  %i = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp35 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %dname = alloca i8*, align 8
  %dsize = alloca i32, align 4
  %__s1_len48 = alloca i64, align 8
  %__s2_len50 = alloca i64, align 8
  %tmp51 = alloca i32, align 4
  %dref = alloca %struct.ref_s*, align 8
  %mem = alloca %struct.gs_ref_memory_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i8* %iname, i8** %iname.addr, align 8, !tbaa !1
  store %struct.ref_s* %idicts, %struct.ref_s** %idicts.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i64 1) to i64), i64 ptrtoint ([11 x i8]* @.str.35 to i64)), i64 1), label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %call = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0)) #6
  store i64 %call, i64* %__s2_len, align 8, !tbaa !28
  %3 = load i64, i64* %__s2_len, align 8, !tbaa !28
  %cmp = icmp ult i64 %3, 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %4 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8*, i8** %iname.addr, align 8, !tbaa !1
  store i8* %5, i8** %__s1, align 8, !tbaa !1
  %6 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !29
  %conv = zext i8 %8 to i32
  %9 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), align 1, !tbaa !29
  %conv3 = zext i8 %9 to i32
  %sub = sub nsw i32 %conv, %conv3
  store i32 %sub, i32* %__result, align 4, !tbaa !5
  %10 = load i64, i64* %__s2_len, align 8, !tbaa !28
  %cmp4 = icmp ugt i64 %10, 0
  br i1 %cmp4, label %land.lhs.true.6, label %if.end.34

land.lhs.true.6:                                  ; preds = %cond.true
  %11 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp7 = icmp eq i32 %11, 0
  br i1 %cmp7, label %if.then, label %if.end.34

if.then:                                          ; preds = %land.lhs.true.6
  %12 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx9, align 1, !tbaa !29
  %conv10 = zext i8 %13 to i32
  %14 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i64 1), align 1, !tbaa !29
  %conv11 = zext i8 %14 to i32
  %sub12 = sub nsw i32 %conv10, %conv11
  store i32 %sub12, i32* %__result, align 4, !tbaa !5
  %15 = load i64, i64* %__s2_len, align 8, !tbaa !28
  %cmp13 = icmp ugt i64 %15, 1
  br i1 %cmp13, label %land.lhs.true.15, label %if.end.33

land.lhs.true.15:                                 ; preds = %if.then
  %16 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp16 = icmp eq i32 %16, 0
  br i1 %cmp16, label %if.then.18, label %if.end.33

if.then.18:                                       ; preds = %land.lhs.true.15
  %17 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %17, i64 2
  %18 = load i8, i8* %arrayidx19, align 1, !tbaa !29
  %conv20 = zext i8 %18 to i32
  %19 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i64 2), align 1, !tbaa !29
  %conv21 = zext i8 %19 to i32
  %sub22 = sub nsw i32 %conv20, %conv21
  store i32 %sub22, i32* %__result, align 4, !tbaa !5
  %20 = load i64, i64* %__s2_len, align 8, !tbaa !28
  %cmp23 = icmp ugt i64 %20, 2
  br i1 %cmp23, label %land.lhs.true.25, label %if.end

land.lhs.true.25:                                 ; preds = %if.then.18
  %21 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp26 = icmp eq i32 %21, 0
  br i1 %cmp26, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %land.lhs.true.25
  %22 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i8, i8* %22, i64 3
  %23 = load i8, i8* %arrayidx29, align 1, !tbaa !29
  %conv30 = zext i8 %23 to i32
  %24 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i64 3), align 1, !tbaa !29
  %conv31 = zext i8 %24 to i32
  %sub32 = sub nsw i32 %conv30, %conv31
  store i32 %sub32, i32* %__result, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.28, %land.lhs.true.25, %if.then.18
  br label %if.end.33

if.end.33:                                        ; preds = %if.end, %land.lhs.true.15, %if.then
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %land.lhs.true.6, %cond.true
  %25 = load i32, i32* %__result, align 4, !tbaa !5
  store i32 %25, i32* %tmp35, !tbaa !5
  %26 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = load i32, i32* %tmp35, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %29 = load i8*, i8** %iname.addr, align 8, !tbaa !1
  %call36 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0)) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.34
  %cond = phi i32 [ %28, %if.end.34 ], [ %call36, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !5
  %30 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = load i32, i32* %tmp, !tbaa !5
  %tobool = icmp ne i32 %32, 0
  br i1 %tobool, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %cond.end
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 24
  %system_dict = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 7
  store %struct.ref_s* %system_dict, %struct.ref_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90

if.end.38:                                        ; preds = %cond.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.38
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %conv39 = sext i32 %34 to i64
  %cmp40 = icmp ult i64 %conv39, 5
  br i1 %cmp40, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = bitcast i8** %dname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %36 to i64
  %arrayidx43 = getelementptr inbounds [5 x %struct.anon], [5 x %struct.anon]* @initial_dictionaries, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx43, i32 0, i32 0
  %37 = load i8*, i8** %name, align 8, !tbaa !42
  store i8* %37, i8** %dname, align 8, !tbaa !1
  %38 = bitcast i32* %dsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  %39 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom45 = sext i32 %39 to i64
  %arrayidx46 = getelementptr inbounds [5 x %struct.anon], [5 x %struct.anon]* @initial_dictionaries, i32 0, i64 %idxprom45
  %size = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx46, i32 0, i32 1
  %40 = load i32, i32* %size, align 4, !tbaa !44
  store i32 %40, i32* %dsize, align 4, !tbaa !5
  %41 = bitcast i64* %__s1_len48 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #1
  %42 = bitcast i64* %__s2_len50 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #1
  %43 = load i8*, i8** %iname.addr, align 8, !tbaa !1
  %44 = load i8*, i8** %dname, align 8, !tbaa !1
  %call52 = call i32 @strcmp(i8* %43, i8* %44) #7
  store i32 %call52, i32* %tmp51, !tbaa !5
  %45 = bitcast i64* %__s2_len50 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast i64* %__s1_len48 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = load i32, i32* %tmp51, !tbaa !5
  %tobool53 = icmp ne i32 %47, 0
  br i1 %tobool53, label %if.end.85, label %if.then.54

if.then.54:                                       ; preds = %for.body
  %48 = bitcast %struct.ref_s** %dref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #1
  %49 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom56 = sext i32 %49 to i64
  %50 = load %struct.ref_s*, %struct.ref_s** %idicts.addr, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i64 %idxprom56
  store %struct.ref_s* %arrayidx57, %struct.ref_s** %dref, align 8, !tbaa !1
  %51 = load %struct.ref_s*, %struct.ref_s** %dref, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %52 = bitcast i16* %type_attrs to i8*
  %arrayidx58 = getelementptr inbounds i8, i8* %52, i64 1
  %53 = load i8, i8* %arrayidx58, align 1, !tbaa !29
  %conv59 = zext i8 %53 to i32
  %cmp60 = icmp eq i32 %conv59, 14
  br i1 %cmp60, label %if.then.62, label %if.end.83

if.then.62:                                       ; preds = %if.then.54
  %54 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #1
  %55 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom64 = sext i32 %55 to i64
  %arrayidx65 = getelementptr inbounds [5 x %struct.anon], [5 x %struct.anon]* @initial_dictionaries, i32 0, i64 %idxprom64
  %local = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx65, i32 0, i32 2
  %56 = load i32, i32* %local, align 4, !tbaa !45
  %tobool66 = icmp ne i32 %56, 0
  br i1 %tobool66, label %cond.true.67, label %cond.false.69

cond.true.67:                                     ; preds = %if.then.62
  %57 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %57, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %local68 = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 3
  %58 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local68, align 8, !tbaa !46
  br label %cond.end.74

cond.false.69:                                    ; preds = %if.then.62
  %59 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory70 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %59, i32 0, i32 1
  %spaces71 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory70, i32 0, i32 1
  %memories72 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces71, i32 0, i32 1
  %named73 = bitcast %union.anon* %memories72 to %struct._ssn*
  %global = getelementptr inbounds %struct._ssn, %struct._ssn* %named73, i32 0, i32 2
  %60 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global, align 8, !tbaa !30
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.false.69, %cond.true.67
  %cond75 = phi %struct.gs_ref_memory_s* [ %58, %cond.true.67 ], [ %60, %cond.false.69 ]
  store %struct.gs_ref_memory_s* %cond75, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %61 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #1
  %62 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %63 = load i32, i32* %dsize, align 4, !tbaa !5
  %64 = load %struct.ref_s*, %struct.ref_s** %dref, align 8, !tbaa !1
  %call77 = call i32 @dict_alloc(%struct.gs_ref_memory_s* %62, i32 %63, %struct.ref_s* %64) #5
  store i32 %call77, i32* %code, align 4, !tbaa !5
  %65 = load i32, i32* %code, align 4, !tbaa !5
  %cmp78 = icmp slt i32 %65, 0
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %cond.end.74
  store %struct.ref_s* null, %struct.ref_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.81:                                        ; preds = %cond.end.74
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.81, %if.then.80
  %66 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.84 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.83

if.end.83:                                        ; preds = %cleanup.cont, %if.then.54
  %68 = load %struct.ref_s*, %struct.ref_s** %dref, align 8, !tbaa !1
  store %struct.ref_s* %68, %struct.ref_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.84

cleanup.84:                                       ; preds = %if.end.83, %cleanup
  %69 = bitcast %struct.ref_s** %dref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  br label %cleanup.86

if.end.85:                                        ; preds = %for.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.86

cleanup.86:                                       ; preds = %if.end.85, %cleanup.84
  %70 = bitcast i32* %dsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast i8** %dname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %cleanup.dest.88 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.88, label %cleanup.90 [
    i32 0, label %cleanup.cont.89
  ]

cleanup.cont.89:                                  ; preds = %cleanup.86
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.89
  %72 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %72, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.ref_s* null, %struct.ref_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90

cleanup.90:                                       ; preds = %for.end, %cleanup.86, %if.then.37
  %73 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = load %struct.ref_s*, %struct.ref_s** %retval
  ret %struct.ref_s* %74
}

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #4

declare void @gs_interp_reset(%struct.gs_context_state_s*) #2

declare i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s*, %struct.ref_s*, i32, i32, i8*) #2

declare i32 @names_enter_string(%struct.name_table_s*, i8*, %struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define i32 @zop_init(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %tptr = alloca %struct.op_def**, align 8
  %code = alloca i32, align 4
  %def = alloca %struct.op_def*, align 8
  %cleanup.dest.slot = alloca i32
  %vcr = alloca %struct.ref_s, align 8
  %vpr = alloca %struct.ref_s, align 8
  %vpf = alloca %struct.ref_s, align 8
  %vre = alloca %struct.ref_s, align 8
  %vrd = alloca %struct.ref_s, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.op_def*** %tptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.op_def** %def to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store %struct.op_def** getelementptr inbounds ([0 x %struct.op_def*], [0 x %struct.op_def*]* @op_defs_all, i32 0, i32 0), %struct.op_def*** %tptr, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.13, %entry
  %3 = load %struct.op_def**, %struct.op_def*** %tptr, align 8, !tbaa !1
  %4 = load %struct.op_def*, %struct.op_def** %3, align 8, !tbaa !1
  %cmp = icmp ne %struct.op_def* %4, null
  br i1 %cmp, label %for.body, label %for.end.15

for.body:                                         ; preds = %for.cond
  %5 = load %struct.op_def**, %struct.op_def*** %tptr, align 8, !tbaa !1
  %6 = load %struct.op_def*, %struct.op_def** %5, align 8, !tbaa !1
  store %struct.op_def* %6, %struct.op_def** %def, align 8, !tbaa !1
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %7 = load %struct.op_def*, %struct.op_def** %def, align 8, !tbaa !1
  %oname = getelementptr inbounds %struct.op_def, %struct.op_def* %7, i32 0, i32 0
  %8 = load i8*, i8** %oname, align 8, !tbaa !25
  %cmp2 = icmp ne i8* %8, null
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  br label %do.body

do.body:                                          ; preds = %for.body.3
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %9 = load %struct.op_def*, %struct.op_def** %def, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.op_def, %struct.op_def* %9, i32 1
  store %struct.op_def* %incdec.ptr, %struct.op_def** %def, align 8, !tbaa !1
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %10 = load %struct.op_def*, %struct.op_def** %def, align 8, !tbaa !1
  %proc = getelementptr inbounds %struct.op_def, %struct.op_def* %10, i32 0, i32 1
  %11 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %proc, align 8, !tbaa !27
  %cmp4 = icmp ne i32 (%struct.gs_context_state_s*)* %11, null
  br i1 %cmp4, label %if.then, label %if.end.12

if.then:                                          ; preds = %for.end
  %12 = load %struct.op_def*, %struct.op_def** %def, align 8, !tbaa !1
  %proc5 = getelementptr inbounds %struct.op_def, %struct.op_def* %12, i32 0, i32 1
  %13 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %proc5, align 8, !tbaa !27
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 %13(%struct.gs_context_state_s* %14) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %15, 0
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %call8 = call i8* @gs_program_name() #5
  %call9 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call8, i64 %call9) #5
  call void @lprintf_file_and_line(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), i32 379) #5
  %16 = load %struct.op_def*, %struct.op_def** %def, align 8, !tbaa !1
  %proc10 = getelementptr inbounds %struct.op_def, %struct.op_def* %16, i32 0, i32 1
  %17 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %proc10, align 8, !tbaa !27
  %18 = ptrtoint i32 (%struct.gs_context_state_s*)* %17 to i64
  %19 = load i32, i32* %code, align 4, !tbaa !5
  %call11 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.41, i32 0, i32 0), i64 %18, i32 %19) #5
  %20 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.65

if.end:                                           ; preds = %if.then
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %for.end
  br label %for.inc.13

for.inc.13:                                       ; preds = %if.end.12
  %21 = load %struct.op_def**, %struct.op_def*** %tptr, align 8, !tbaa !1
  %incdec.ptr14 = getelementptr inbounds %struct.op_def*, %struct.op_def** %21, i32 1
  store %struct.op_def** %incdec.ptr14, %struct.op_def*** %tptr, align 8, !tbaa !1
  br label %for.cond

for.end.15:                                       ; preds = %for.cond
  %22 = bitcast %struct.ref_s* %vcr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %22) #1
  %23 = bitcast %struct.ref_s* %vpr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %23) #1
  %24 = bitcast %struct.ref_s* %vpf to i8*
  call void @llvm.lifetime.start(i64 16, i8* %24) #1
  %25 = bitcast %struct.ref_s* %vre to i8*
  call void @llvm.lifetime.start(i64 16, i8* %25) #1
  %26 = bitcast %struct.ref_s* %vrd to i8*
  call void @llvm.lifetime.start(i64 16, i8* %26) #1
  %27 = load i8*, i8** @gs_copyright, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vcr, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  store i8* %27, i8** %const_bytes, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vcr, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 4704, i16* %type_attrs, align 2, !tbaa !41
  %28 = load i8*, i8** @gs_copyright, align 8, !tbaa !1
  %call16 = call i64 @strlen(i8* %28) #6
  %conv = trunc i64 %call16 to i32
  %tas17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vcr, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas17, i32 0, i32 2
  store i32 %conv, i32* %rsize, align 4, !tbaa !47
  %29 = load i8*, i8** @gs_product, align 8, !tbaa !1
  %value18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vpr, i32 0, i32 1
  %const_bytes19 = bitcast %union.v* %value18 to i8**
  store i8* %29, i8** %const_bytes19, align 8, !tbaa !1
  %tas20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vpr, i32 0, i32 0
  %type_attrs21 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas20, i32 0, i32 0
  store i16 4704, i16* %type_attrs21, align 2, !tbaa !41
  %30 = load i8*, i8** @gs_product, align 8, !tbaa !1
  %call22 = call i64 @strlen(i8* %30) #6
  %conv23 = trunc i64 %call22 to i32
  %tas24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vpr, i32 0, i32 0
  %rsize25 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas24, i32 0, i32 2
  store i32 %conv23, i32* %rsize25, align 4, !tbaa !47
  %31 = load i8*, i8** @gs_productfamily, align 8, !tbaa !1
  %value26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vpf, i32 0, i32 1
  %const_bytes27 = bitcast %union.v* %value26 to i8**
  store i8* %31, i8** %const_bytes27, align 8, !tbaa !1
  %tas28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vpf, i32 0, i32 0
  %type_attrs29 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas28, i32 0, i32 0
  store i16 4704, i16* %type_attrs29, align 2, !tbaa !41
  %32 = load i8*, i8** @gs_productfamily, align 8, !tbaa !1
  %call30 = call i64 @strlen(i8* %32) #6
  %conv31 = trunc i64 %call30 to i32
  %tas32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vpf, i32 0, i32 0
  %rsize33 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas32, i32 0, i32 2
  store i32 %conv31, i32* %rsize33, align 4, !tbaa !47
  %33 = load i64, i64* @gs_revision, align 8, !tbaa !28
  %value34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vre, i32 0, i32 1
  %intval = bitcast %union.v* %value34 to i64*
  store i64 %33, i64* %intval, align 8, !tbaa !28
  %tas35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vre, i32 0, i32 0
  %type_attrs36 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas35, i32 0, i32 0
  store i16 2816, i16* %type_attrs36, align 2, !tbaa !41
  %34 = load i64, i64* @gs_revisiondate, align 8, !tbaa !28
  %value37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vrd, i32 0, i32 1
  %intval38 = bitcast %union.v* %value37 to i64*
  store i64 %34, i64* %intval38, align 8, !tbaa !28
  %tas39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vrd, i32 0, i32 0
  %type_attrs40 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas39, i32 0, i32 0
  store i16 2816, i16* %type_attrs40, align 2, !tbaa !41
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call41 = call i32 @i_initial_enter_name(%struct.gs_context_state_s* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), %struct.ref_s* %vcr) #5
  store i32 %call41, i32* %code, align 4, !tbaa !5
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then.59, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.15
  %36 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call44 = call i32 @i_initial_enter_name(%struct.gs_context_state_s* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), %struct.ref_s* %vpr) #5
  store i32 %call44, i32* %code, align 4, !tbaa !5
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.then.59, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %lor.lhs.false
  %37 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call48 = call i32 @i_initial_enter_name(%struct.gs_context_state_s* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), %struct.ref_s* %vpf) #5
  store i32 %call48, i32* %code, align 4, !tbaa !5
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.then.59, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %lor.lhs.false.47
  %38 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call52 = call i32 @i_initial_enter_name(%struct.gs_context_state_s* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0), %struct.ref_s* %vre) #5
  store i32 %call52, i32* %code, align 4, !tbaa !5
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.then.59, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %lor.lhs.false.51
  %39 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call56 = call i32 @i_initial_enter_name(%struct.gs_context_state_s* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i32 0, i32 0), %struct.ref_s* %vrd) #5
  store i32 %call56, i32* %code, align 4, !tbaa !5
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %lor.lhs.false.55, %lor.lhs.false.51, %lor.lhs.false.47, %lor.lhs.false, %for.end.15
  %40 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.60:                                        ; preds = %lor.lhs.false.55
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.60, %if.then.59
  %41 = bitcast %struct.ref_s* %vrd to i8*
  call void @llvm.lifetime.end(i64 16, i8* %41) #1
  %42 = bitcast %struct.ref_s* %vre to i8*
  call void @llvm.lifetime.end(i64 16, i8* %42) #1
  %43 = bitcast %struct.ref_s* %vpf to i8*
  call void @llvm.lifetime.end(i64 16, i8* %43) #1
  %44 = bitcast %struct.ref_s* %vpr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %44) #1
  %45 = bitcast %struct.ref_s* %vcr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %45) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.65 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.65

cleanup.65:                                       ; preds = %cleanup.cont, %cleanup, %if.then.7
  %46 = bitcast %struct.op_def** %def to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast %struct.op_def*** %tptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = load i32, i32* %retval
  ret i32 %49
}

declare void @eprintf_program_ident(i8*, i64) #2

declare i8* @gs_program_name() #2

declare i64 @gs_revision_number() #2

declare void @lprintf_file_and_line(i8*, i32) #2

declare i32 @errprintf_nomem(i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @op_init(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %tptr = alloca %struct.op_def**, align 8
  %code = alloca i32, align 4
  %pdict = alloca %struct.ref_s*, align 8
  %def = alloca %struct.op_def*, align 8
  %nstr = alloca i8*, align 8
  %nref = alloca %struct.ref_s, align 8
  %cleanup.dest.slot = alloca i32
  %oper = alloca %struct.ref_s, align 8
  %index_in_table = alloca i32, align 4
  %opidx = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.op_def*** %tptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store %struct.op_def** getelementptr inbounds ([0 x %struct.op_def*], [0 x %struct.op_def*]* @op_defs_all, i32 0, i32 0), %struct.op_def*** %tptr, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.64, %entry
  %2 = load %struct.op_def**, %struct.op_def*** %tptr, align 8, !tbaa !1
  %3 = load %struct.op_def*, %struct.op_def** %2, align 8, !tbaa !1
  %cmp = icmp ne %struct.op_def* %3, null
  br i1 %cmp, label %for.body, label %for.end.66

for.body:                                         ; preds = %for.cond
  %4 = bitcast %struct.ref_s** %pdict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 24
  %system_dict = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 7
  store %struct.ref_s* %system_dict, %struct.ref_s** %pdict, align 8, !tbaa !1
  %6 = bitcast %struct.op_def** %def to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i8** %nstr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.op_def**, %struct.op_def*** %tptr, align 8, !tbaa !1
  %9 = load %struct.op_def*, %struct.op_def** %8, align 8, !tbaa !1
  store %struct.op_def* %9, %struct.op_def** %def, align 8, !tbaa !1
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %10 = load %struct.op_def*, %struct.op_def** %def, align 8, !tbaa !1
  %oname = getelementptr inbounds %struct.op_def, %struct.op_def* %10, i32 0, i32 0
  %11 = load i8*, i8** %oname, align 8, !tbaa !25
  store i8* %11, i8** %nstr, align 8, !tbaa !1
  %cmp2 = icmp ne i8* %11, null
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %12 = load %struct.op_def*, %struct.op_def** %def, align 8, !tbaa !1
  %proc = getelementptr inbounds %struct.op_def, %struct.op_def* %12, i32 0, i32 1
  %13 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %proc, align 8, !tbaa !27
  %cmp4 = icmp eq i32 (%struct.gs_context_state_s*)* %13, null
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.3
  %14 = bitcast %struct.ref_s* %nref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %14) #1
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %16 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !7
  %17 = bitcast %struct.gs_ref_memory_s* %16 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 2
  %18 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !20
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %18, i32 0, i32 16
  %19 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !23
  %20 = load i8*, i8** %nstr, align 8, !tbaa !1
  %21 = load i8*, i8** %nstr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %21) #6
  %conv = trunc i64 %call to i32
  %call5 = call i32 @names_ref(%struct.name_table_s* %19, i8* %20, i32 %conv, %struct.ref_s* %nref, i32 -1) #5
  store i32 %call5, i32* %code, align 4, !tbaa !5
  %22 = load i32, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %22, 0
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %23 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack9 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 24
  %system_dict10 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack9, i32 0, i32 7
  %call11 = call i32 @dict_find(%struct.ref_s* %system_dict10, %struct.ref_s* %nref, %struct.ref_s** %pdict) #5
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end
  %25 = load %struct.ref_s*, %struct.ref_s** %pdict, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %26 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i8, i8* %arrayidx, align 1, !tbaa !29
  %conv14 = zext i8 %27 to i32
  %cmp15 = icmp eq i32 %conv14, 2
  br i1 %cmp15, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.end.13
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end.13
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.18, %if.then.17, %if.then.12, %if.then.8
  %28 = bitcast %struct.ref_s* %nref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %28) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.59 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.57

if.else:                                          ; preds = %for.body.3
  %29 = bitcast %struct.ref_s* %oper to i8*
  call void @llvm.lifetime.start(i64 16, i8* %29) #1
  %30 = bitcast i32* %index_in_table to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = load %struct.op_def*, %struct.op_def** %def, align 8, !tbaa !1
  %32 = load %struct.op_def**, %struct.op_def*** %tptr, align 8, !tbaa !1
  %33 = load %struct.op_def*, %struct.op_def** %32, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint %struct.op_def* %31 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.op_def* %33 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %conv19 = trunc i64 %sub.ptr.div to i32
  store i32 %conv19, i32* %index_in_table, align 4, !tbaa !5
  %34 = bitcast i32* %opidx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load %struct.op_def**, %struct.op_def*** %tptr, align 8, !tbaa !1
  %sub.ptr.lhs.cast20 = ptrtoint %struct.op_def** %35 to i64
  %sub.ptr.sub21 = sub i64 %sub.ptr.lhs.cast20, ptrtoint ([0 x %struct.op_def*]* @op_defs_all to i64)
  %sub.ptr.div22 = sdiv exact i64 %sub.ptr.sub21, 8
  %mul = mul nsw i64 %sub.ptr.div22, 16
  %36 = load i32, i32* %index_in_table, align 4, !tbaa !5
  %conv23 = zext i32 %36 to i64
  %add = add nsw i64 %mul, %conv23
  %conv24 = trunc i64 %add to i32
  store i32 %conv24, i32* %opidx, align 4, !tbaa !5
  %37 = load i32, i32* %index_in_table, align 4, !tbaa !5
  %cmp25 = icmp uge i32 %37, 16
  br i1 %cmp25, label %if.then.27, label %if.end.32

if.then.27:                                       ; preds = %if.else
  %call28 = call i8* @gs_program_name() #5
  %call29 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call28, i64 %call29) #5
  call void @lprintf_file_and_line(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), i32 467) #5
  %38 = load %struct.op_def*, %struct.op_def** %def, align 8, !tbaa !1
  %oname30 = getelementptr inbounds %struct.op_def, %struct.op_def* %38, i32 0, i32 0
  %39 = load i8*, i8** %oname30, align 8, !tbaa !25
  %call31 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.47, i32 0, i32 0), i8* %39) #5
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.52

if.end.32:                                        ; preds = %if.else
  %40 = load %struct.op_def*, %struct.op_def** %def, align 8, !tbaa !1
  %proc33 = getelementptr inbounds %struct.op_def, %struct.op_def* %40, i32 0, i32 1
  %41 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %proc33, align 8, !tbaa !27
  %42 = load i32, i32* %opidx, align 4, !tbaa !5
  call void @gs_interp_make_oper(%struct.ref_s* %oper, i32 (%struct.gs_context_state_s*)* %41, i32 %42) #5
  %43 = load i8*, i8** %nstr, align 8, !tbaa !1
  %44 = load i8, i8* %43, align 1, !tbaa !29
  %conv34 = sext i8 %44 to i32
  %sub = sub nsw i32 %conv34, 48
  %45 = load i32, i32* @gs_interp_max_op_num_args, align 4, !tbaa !5
  %cmp35 = icmp sgt i32 %sub, %45
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.32
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.52

if.end.38:                                        ; preds = %if.end.32
  %46 = load i8*, i8** %nstr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr, i8** %nstr, align 8, !tbaa !1
  %47 = load i8*, i8** %nstr, align 8, !tbaa !1
  %48 = load i8, i8* %47, align 1, !tbaa !29
  %conv39 = sext i8 %48 to i32
  %cmp40 = icmp ne i32 %conv39, 37
  br i1 %cmp40, label %land.lhs.true, label %if.end.51

land.lhs.true:                                    ; preds = %if.end.38
  %tas42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %oper, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas42, i32 0, i32 2
  %49 = load i32, i32* %rsize, align 4, !tbaa !47
  %50 = load i32, i32* %opidx, align 4, !tbaa !5
  %cmp43 = icmp eq i32 %49, %50
  br i1 %cmp43, label %if.then.45, label %if.end.51

if.then.45:                                       ; preds = %land.lhs.true
  %51 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %52 = load %struct.ref_s*, %struct.ref_s** %pdict, align 8, !tbaa !1
  %53 = load i8*, i8** %nstr, align 8, !tbaa !1
  %call46 = call i32 @i_initial_enter_name_in(%struct.gs_context_state_s* %51, %struct.ref_s* %52, i8* %53, %struct.ref_s* %oper) #5
  store i32 %call46, i32* %code, align 4, !tbaa !5
  %54 = load i32, i32* %code, align 4, !tbaa !5
  %cmp47 = icmp slt i32 %54, 0
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.then.45
  %55 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %55, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.52

if.end.50:                                        ; preds = %if.then.45
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %land.lhs.true, %if.end.38
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.52

cleanup.52:                                       ; preds = %if.end.51, %if.then.49, %if.then.37, %if.then.27
  %56 = bitcast i32* %opidx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i32* %index_in_table to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast %struct.ref_s* %oper to i8*
  call void @llvm.lifetime.end(i64 16, i8* %58) #1
  %cleanup.dest.55 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.55, label %cleanup.59 [
    i32 0, label %cleanup.cont.56
  ]

cleanup.cont.56:                                  ; preds = %cleanup.52
  br label %if.end.57

if.end.57:                                        ; preds = %cleanup.cont.56, %cleanup.cont
  br label %for.inc

for.inc:                                          ; preds = %if.end.57
  %59 = load %struct.op_def*, %struct.op_def** %def, align 8, !tbaa !1
  %incdec.ptr58 = getelementptr inbounds %struct.op_def, %struct.op_def* %59, i32 1
  store %struct.op_def* %incdec.ptr58, %struct.op_def** %def, align 8, !tbaa !1
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.59

cleanup.59:                                       ; preds = %for.end, %cleanup.52, %cleanup
  %60 = bitcast i8** %nstr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = bitcast %struct.op_def** %def to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = bitcast %struct.ref_s** %pdict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %cleanup.dest.62 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.62, label %cleanup.86 [
    i32 0, label %cleanup.cont.63
  ]

cleanup.cont.63:                                  ; preds = %cleanup.59
  br label %for.inc.64

for.inc.64:                                       ; preds = %cleanup.cont.63
  %63 = load %struct.op_def**, %struct.op_def*** %tptr, align 8, !tbaa !1
  %incdec.ptr65 = getelementptr inbounds %struct.op_def*, %struct.op_def** %63, i32 1
  store %struct.op_def** %incdec.ptr65, %struct.op_def*** %tptr, align 8, !tbaa !1
  br label %for.cond

for.end.66:                                       ; preds = %for.cond
  %64 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %65 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_array_table_global = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %65, i32 0, i32 19
  %call67 = call i32 @alloc_op_array_table(%struct.gs_context_state_s* %64, i32 300, i32 8, %struct.op_array_table_s* %op_array_table_global) #5
  %cmp68 = icmp slt i32 %call67, 0
  %conv69 = zext i1 %cmp68 to i32
  store i32 %conv69, i32* %code, align 4, !tbaa !5
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %for.end.66
  %66 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %66, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.86

if.end.71:                                        ; preds = %for.end.66
  %67 = load i32, i32* @op_def_count, align 4, !tbaa !5
  %68 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_array_table_global72 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %68, i32 0, i32 19
  %base_index = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %op_array_table_global72, i32 0, i32 3
  store i32 %67, i32* %base_index, align 4, !tbaa !48
  %69 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %70 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_array_table_local = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %70, i32 0, i32 20
  %call73 = call i32 @alloc_op_array_table(%struct.gs_context_state_s* %69, i32 150, i32 12, %struct.op_array_table_s* %op_array_table_local) #5
  %cmp74 = icmp slt i32 %call73, 0
  %conv75 = zext i1 %cmp74 to i32
  store i32 %conv75, i32* %code, align 4, !tbaa !5
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.end.71
  %71 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %71, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.86

if.end.77:                                        ; preds = %if.end.71
  %72 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_array_table_global78 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %72, i32 0, i32 19
  %base_index79 = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %op_array_table_global78, i32 0, i32 3
  %73 = load i32, i32* %base_index79, align 4, !tbaa !48
  %74 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_array_table_global80 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %74, i32 0, i32 19
  %table = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %op_array_table_global80, i32 0, i32 0
  %tas81 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %table, i32 0, i32 0
  %rsize82 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas81, i32 0, i32 2
  %75 = load i32, i32* %rsize82, align 4, !tbaa !47
  %add83 = add i32 %73, %75
  %76 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_array_table_local84 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %76, i32 0, i32 20
  %base_index85 = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %op_array_table_local84, i32 0, i32 3
  store i32 %add83, i32* %base_index85, align 4, !tbaa !49
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.86

cleanup.86:                                       ; preds = %if.end.77, %if.then.76, %if.then.70, %cleanup.59
  %77 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast %struct.op_def*** %tptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = load i32, i32* %retval
  ret i32 %79
}

declare i32 @dict_find(%struct.ref_s*, %struct.ref_s*, %struct.ref_s**) #2

declare void @gs_interp_make_oper(%struct.ref_s*, i32 (%struct.gs_context_state_s*)*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @alloc_op_array_table(%struct.gs_context_state_s* %i_ctx_p, i32 %size, i32 %space, %struct.op_array_table_s* %opt) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %size.addr = alloca i32, align 4
  %space.addr = alloca i32, align 4
  %opt.addr = alloca %struct.op_array_table_s*, align 8
  %save_space = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %space, i32* %space.addr, align 4, !tbaa !5
  store %struct.op_array_table_s* %opt, %struct.op_array_table_s** %opt.addr, align 8, !tbaa !1
  %0 = bitcast i32* %save_space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 2
  %2 = load i32, i32* %current_space, align 4, !tbaa !50
  store i32 %2, i32* %save_space, align 4, !tbaa !5
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 1
  %5 = load i32, i32* %space.addr, align 4, !tbaa !5
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory1, i32 %5) #5
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory2, i32 0, i32 0
  %7 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !7
  %8 = load %struct.op_array_table_s*, %struct.op_array_table_s** %opt.addr, align 8, !tbaa !1
  %table = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %8, i32 0, i32 0
  %9 = load i32, i32* %size.addr, align 4, !tbaa !5
  %call = call i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s* %7, %struct.ref_s* %table, i32 96, i32 %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0)) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 1
  %11 = load i32, i32* %save_space, align 4, !tbaa !5
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory3, i32 %11) #5
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = load %struct.op_array_table_s*, %struct.op_array_table_s** %opt.addr, align 8, !tbaa !1
  %table4 = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %14, i32 0, i32 0
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %table4, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %15 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %16 = load i32, i32* %size.addr, align 4, !tbaa !5
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory5, i32 0, i32 5
  %18 = load i32, i32* %new_mask, align 4, !tbaa !33
  call void @refset_null_new(%struct.ref_s* %15, i32 %16, i32 %18) #5
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 1
  %current7 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory6, i32 0, i32 0
  %20 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current7, align 8, !tbaa !7
  %21 = bitcast %struct.gs_ref_memory_s* %20 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %22 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !51
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory8 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 1
  %current9 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory8, i32 0, i32 0
  %24 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current9, align 8, !tbaa !7
  %25 = bitcast %struct.gs_ref_memory_s* %24 to %struct.gs_memory_s*
  %26 = load i32, i32* %size.addr, align 4, !tbaa !5
  %call10 = call i8* %22(%struct.gs_memory_s* %25, i32 %26, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i32 0, i32 0)) #5
  %27 = bitcast i8* %call10 to i16*
  %28 = load %struct.op_array_table_s*, %struct.op_array_table_s** %opt.addr, align 8, !tbaa !1
  %nx_table = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %28, i32 0, i32 1
  store i16* %27, i16** %nx_table, align 8, !tbaa !52
  %29 = load %struct.op_array_table_s*, %struct.op_array_table_s** %opt.addr, align 8, !tbaa !1
  %nx_table11 = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %29, i32 0, i32 1
  %30 = load i16*, i16** %nx_table11, align 8, !tbaa !52
  %cmp12 = icmp eq i16* %30, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end
  %31 = load %struct.op_array_table_s*, %struct.op_array_table_s** %opt.addr, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %31, i32 0, i32 2
  store i32 0, i32* %count, align 4, !tbaa !53
  %32 = load i32, i32* %space.addr, align 4, !tbaa !5
  %or = or i32 %32, 128
  %33 = load %struct.op_array_table_s*, %struct.op_array_table_s** %opt.addr, align 8, !tbaa !1
  %attrs = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %33, i32 0, i32 4
  store i32 %or, i32* %attrs, align 4, !tbaa !54
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then.13, %if.then
  %34 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32* %save_space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare i32 @dict_put_string(%struct.ref_s*, i8*, %struct.ref_s*, %struct.dict_stack_s*) #2

declare i32 @dict_length(%struct.ref_s*) #2

declare i32 @dict_maxlength(%struct.ref_s*) #2

declare void @ialloc_set_space(%struct.gs_dual_memory_s*, i32) #2

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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 8}
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
!20 = !{!21, !2, i64 192}
!21 = !{!"gs_memory_s", !2, i64 0, !22, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!22 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!23 = !{!24, !2, i64 120}
!24 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !14, i64 104, !2, i64 112, !2, i64 120, !6, i64 128, !2, i64 136, !6, i64 144, !6, i64 148, !3, i64 152, !2, i64 168, !6, i64 176, !2, i64 184, !6, i64 192, !2, i64 200, !2, i64 208}
!25 = !{!26, !2, i64 0}
!26 = !{!"", !2, i64 0, !2, i64 8}
!27 = !{!26, !2, i64 8}
!28 = !{!14, !14, i64 0}
!29 = !{!3, !3, i64 0}
!30 = !{!31, !2, i64 16}
!31 = !{!"_ssn", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!32 = !{!8, !6, i64 464}
!33 = !{!9, !6, i64 68}
!34 = !{!8, !2, i64 368}
!35 = !{i64 0, i64 2, !36, i64 2, i64 2, !36, i64 4, i64 4, !5, i64 8, i64 8, !28, i64 8, i64 2, !36, i64 8, i64 4, !37, i64 8, i64 8, !28, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !28}
!36 = !{!13, !13, i64 0}
!37 = !{!38, !38, i64 0}
!38 = !{!"float", !3, i64 0}
!39 = !{!8, !2, i64 376}
!40 = !{!8, !6, i64 468}
!41 = !{!11, !13, i64 0}
!42 = !{!43, !2, i64 0}
!43 = !{!"", !2, i64 0, !6, i64 8, !6, i64 12}
!44 = !{!43, !6, i64 8}
!45 = !{!43, !6, i64 12}
!46 = !{!31, !2, i64 24}
!47 = !{!11, !6, i64 4}
!48 = !{!8, !6, i64 292}
!49 = !{!8, !6, i64 332}
!50 = !{!9, !6, i64 48}
!51 = !{!21, !2, i64 88}
!52 = !{!15, !2, i64 16}
!53 = !{!15, !6, i64 24}
!54 = !{!15, !6, i64 32}
