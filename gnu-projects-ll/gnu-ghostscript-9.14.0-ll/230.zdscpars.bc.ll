; ModuleID = './zdscpars.bc'
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
%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_param_collection_s = type { %struct.gs_param_list_s*, i32 }
%union.gs_param_enumerator_s = type { i64 }
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
%struct.cmdlist_s = type { i32, i8*, i32 (%struct.gs_param_list_s*, %struct.CDSC_s*)* }
%struct.CDSC_s = type { [1024 x i8], i32, i32, i32, i32, i32, i32, i8*, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.CDSCPAGE_S*, i32, i32, i32, i32, %struct.CDSCCTM_S*, i32, %struct.CDSCMEDIA_S**, %struct.CDSCMEDIA_S*, %struct.CDSCBBOX_S*, %struct.CDSCBBOX_S*, %struct.CDSCDOSEPS_S*, i8*, i8*, i8*, i8*, i32, i32*, i8*, i32, i32, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, [8192 x i8], i32, i32, i64, i32, i8*, i32, i32, i32, i32, i32, [256 x i8], %struct.CDSCSTRING_S*, %struct.CDSCSTRING_S*, i8* (i64, i8*)*, void (i8*, i8*)*, i8*, void (i8*, i8*)*, i32 (i8*, %struct.CDSC_s*, i32, i8*, i32)*, %struct.CDSCFBBOX_S*, %struct.CDSCFBBOX_S*, %struct.CDCS2_S*, %struct.CDSCCOLOUR_S*, i32, %struct.CDSCMACBIN_S* }
%struct.CDSCPAGE_S = type { i32, i8*, i64, i64, i32, %struct.CDSCMEDIA_S*, %struct.CDSCBBOX_S*, %struct.CDSCCTM_S*, %struct.CDSCFBBOX_S* }
%struct.CDSCCTM_S = type { float, float, float, float }
%struct.CDSCMEDIA_S = type { i8*, float, float, float, i8*, i8*, %struct.CDSCBBOX_S* }
%struct.CDSCBBOX_S = type { i32, i32, i32, i32 }
%struct.CDSCDOSEPS_S = type { i64, i64, i64, i64, i64, i64, i32 }
%struct.CDSCSTRING_S = type { i32, i32, i8*, %struct.CDSCSTRING_S* }
%struct.CDSCFBBOX_S = type { float, float, float, float }
%struct.CDCS2_S = type { i8*, i8*, i8*, i8*, i64, i64, %struct.CDCS2_S* }
%struct.CDSCCOLOUR_S = type { i8*, i32, i32, float, float, float, float, float, float, float, %struct.CDSCCOLOUR_S* }
%struct.CDSCMACBIN_S = type { i64, i64, i64, i64 }
%struct.dict_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.dsc_data_s = type { %struct.CDSC_s*, i32 }
%struct.obj_header_s = type opaque
%struct.dict_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.gs_ref_memory_s*, %union.anon.0, i32 (%struct.iparam_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*, i32*)*, i32*, i32, i32, %struct.ref_s }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { i32 (%struct.iparam_list_s*, %struct.ref_s*, %struct.iparam_loc_s*)*, %struct.ref_s, i32 }
%struct.iparam_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.gs_ref_memory_s*, %union.anon.1, i32 (%struct.iparam_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*, i32*)*, i32*, i32, i32 }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { {}*, %struct.ref_s, i32 }
%struct.iparam_loc_s = type { %struct.ref_s*, i32* }
%struct.gs_param_float_array_s = type { float*, i32, i32 }
%struct.gs_param_int_array_s = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"1.initialize_dsc_parser\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"2.parse_dsc_comments\00", align 1
@zdscpars_op_defs = constant [3 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zinitialize_dsc_parser }, %struct.op_def { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zparse_dsc_comments }, %struct.op_def zeroinitializer], align 16
@st_dsc_data_t = internal constant %struct.gs_memory_struct_type_s { i32 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @dsc_finalize, i8* null }, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"DSC parser init\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Ghostscript DSC parsing\00", align 1
@dsc_dict_name = internal constant i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"dsc_data_struct\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"zDSC_memalloc: DSC parsing memory alloc\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"zDSC_memfree: DSC parsing memory free\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"DSC_struct\00", align 1
@DSCcmdlist = internal constant [16 x %struct.cmdlist_s] [%struct.cmdlist_s { i32 200, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.gs_param_list_s*, %struct.CDSC_s*)* @dsc_adobe_header }, %struct.cmdlist_s { i32 204, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.gs_param_list_s*, %struct.CDSC_s*)* @dsc_creator }, %struct.cmdlist_s { i32 205, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.gs_param_list_s*, %struct.CDSC_s*)* @dsc_creation_date }, %struct.cmdlist_s { i32 206, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.gs_param_list_s*, %struct.CDSC_s*)* @dsc_title }, %struct.cmdlist_s { i32 207, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.gs_param_list_s*, %struct.CDSC_s*)* @dsc_for }, %struct.cmdlist_s { i32 209, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.gs_param_list_s*, %struct.CDSC_s*)* @dsc_bounding_box }, %struct.cmdlist_s { i32 210, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.gs_param_list_s*, %struct.CDSC_s*)* @dsc_orientation }, %struct.cmdlist_s { i32 401, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i32 (%struct.gs_param_list_s*, %struct.CDSC_s*)* null }, %struct.cmdlist_s { i32 402, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i32 (%struct.gs_param_list_s*, %struct.CDSC_s*)* null }, %struct.cmdlist_s { i32 700, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 (%struct.gs_param_list_s*, %struct.CDSC_s*)* @dsc_page }, %struct.cmdlist_s { i32 203, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 (%struct.gs_param_list_s*, %struct.CDSC_s*)* @dsc_pages }, %struct.cmdlist_s { i32 705, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0), i32 (%struct.gs_param_list_s*, %struct.CDSC_s*)* @dsc_page_orientation }, %struct.cmdlist_s { i32 706, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i32 (%struct.gs_param_list_s*, %struct.CDSC_s*)* @dsc_page_bounding_box }, %struct.cmdlist_s { i32 708, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0), i32 (%struct.gs_param_list_s*, %struct.CDSC_s*)* @dsc_viewing_orientation }, %struct.cmdlist_s { i32 900, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i32 (%struct.gs_param_list_s*, %struct.CDSC_s*)* null }, %struct.cmdlist_s { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i32 (%struct.gs_param_list_s*, %struct.CDSC_s*)* null }], align 16
@BadCmdlist = internal constant [5 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i8* null], align 16
@.str.8 = private unnamed_addr constant [20 x i8] c"iparam_list_release\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Header\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Creator\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"CreationDate\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"Title\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"For\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"BoundingBox\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"Orientation\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"BeginDefaults\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"EndDefaults\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"Page\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"Pages\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"PageOrientation\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"PageBoundingBox\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"ViewingOrientation\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"EOF\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"NOP\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"EPSF\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"PageNum\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"NumPages\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"PageViewingOrientation\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"%%BeginData:\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"%%EndData\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"%%BeginBinary:\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"%%EndBinary\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @zinitialize_dsc_parser(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %local_ref = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %op = alloca %struct.ref_s*, align 8
  %pdict = alloca %struct.dict_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %data = alloca %struct.dsc_data_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s* %local_ref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %3, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %4 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %4, %struct.ref_s** %op, align 8, !tbaa !1
  %5 = bitcast %struct.dict_s** %pdict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %pdict1 = bitcast %union.v* %value to %struct.dict_s**
  %7 = load %struct.dict_s*, %struct.dict_s** %pdict1, align 8, !tbaa !1
  store %struct.dict_s* %7, %struct.dict_s** %pdict, align 8, !tbaa !1
  %8 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.dict_s, %struct.dict_s* %9, i32 0, i32 4
  %value2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %memory, i32 0, i32 1
  %pstruct = bitcast %union.v* %value2 to %struct.obj_header_s**
  %10 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %11 = bitcast %struct.obj_header_s* %10 to %struct.gs_ref_memory_s*
  %12 = bitcast %struct.gs_ref_memory_s* %11 to %struct.gs_memory_s*
  store %struct.gs_memory_s* %12, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %13 = bitcast %struct.dsc_data_s** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %15 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !19
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call = call i8* %15(%struct.gs_memory_s* %16, %struct.gs_memory_struct_type_s* @st_dsc_data_t, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0)) #5
  %17 = bitcast i8* %call to %struct.dsc_data_s*
  store %struct.dsc_data_s* %17, %struct.dsc_data_s** %data, align 8, !tbaa !1
  %18 = load %struct.dsc_data_s*, %struct.dsc_data_s** %data, align 8, !tbaa !1
  %tobool = icmp ne %struct.dsc_data_s* %18, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %19 = load %struct.dsc_data_s*, %struct.dsc_data_s** %data, align 8, !tbaa !1
  %document_level = getelementptr inbounds %struct.dsc_data_s, %struct.dsc_data_s* %19, i32 0, i32 1
  store i32 0, i32* %document_level, align 4, !tbaa !22
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 3
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !24
  %22 = bitcast %struct.gs_memory_s* %21 to i8*
  %call3 = call %struct.CDSC_s* @dsc_init_with_alloc(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i8* (i64, i8*)* @zDSC_memalloc, void (i8*, i8*)* @zDSC_memfree, i8* %22) #5
  %23 = load %struct.dsc_data_s*, %struct.dsc_data_s** %data, align 8, !tbaa !1
  %dsc_data_ptr = getelementptr inbounds %struct.dsc_data_s, %struct.dsc_data_s* %23, i32 0, i32 0
  store %struct.CDSC_s* %call3, %struct.CDSC_s** %dsc_data_ptr, align 8, !tbaa !25
  %24 = load %struct.dsc_data_s*, %struct.dsc_data_s** %data, align 8, !tbaa !1
  %dsc_data_ptr4 = getelementptr inbounds %struct.dsc_data_s, %struct.dsc_data_s* %24, i32 0, i32 0
  %25 = load %struct.CDSC_s*, %struct.CDSC_s** %dsc_data_ptr4, align 8, !tbaa !25
  %tobool5 = icmp ne %struct.CDSC_s* %25, null
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %26 = load %struct.dsc_data_s*, %struct.dsc_data_s** %data, align 8, !tbaa !1
  %dsc_data_ptr8 = getelementptr inbounds %struct.dsc_data_s, %struct.dsc_data_s* %26, i32 0, i32 0
  %27 = load %struct.CDSC_s*, %struct.CDSC_s** %dsc_data_ptr8, align 8, !tbaa !25
  call void @dsc_set_error_function(%struct.CDSC_s* %27, i32 (i8*, %struct.CDSC_s*, i32, i8*, i32)* @dsc_error_handler) #5
  %28 = load %struct.dsc_data_s*, %struct.dsc_data_s** %data, align 8, !tbaa !1
  %29 = bitcast %struct.dsc_data_s* %28 to i8*
  %30 = bitcast i8* %29 to %struct.obj_header_s*
  %value9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %local_ref, i32 0, i32 1
  %pstruct10 = bitcast %union.v* %value9 to %struct.obj_header_s**
  store %struct.obj_header_s* %30, %struct.obj_header_s** %pstruct10, align 8, !tbaa !1
  %31 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %32 = load i16, i16* %type_attrs, align 2, !tbaa !26
  %conv = zext i16 %32 to i32
  %and = and i32 %conv, 12
  %or = or i32 96, %and
  %add = add i32 2304, %or
  %conv11 = trunc i32 %add to i16
  %tas12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %local_ref, i32 0, i32 0
  %type_attrs13 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas12, i32 0, i32 0
  store i16 %conv11, i16* %type_attrs13, align 2, !tbaa !26
  %33 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %34 = load i8*, i8** @dsc_dict_name, align 8, !tbaa !1
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %35, i32 0, i32 24
  %call14 = call i32 @dict_put_string(%struct.ref_s* %33, i8* %34, %struct.ref_s* %local_ref, %struct.dict_stack_s* %dict_stack) #5
  store i32 %call14, i32* %code, align 4, !tbaa !27
  %36 = load i32, i32* %code, align 4, !tbaa !27
  %cmp = icmp sge i32 %36, 0
  br i1 %cmp, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %if.end.7
  %37 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack17 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %37, i32 0, i32 26
  %stack18 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack17, i32 0, i32 0
  %p19 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack18, i32 0, i32 0
  %38 = load %struct.ref_s*, %struct.ref_s** %p19, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p19, align 8, !tbaa !5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %if.end.7
  %39 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then.6, %if.then
  %40 = bitcast %struct.dsc_data_s** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast %struct.dict_s** %pdict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast %struct.ref_s* %local_ref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %45) #1
  %46 = load i32, i32* %retval
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define internal i32 @zparse_dsc_comments(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %opString = alloca %struct.ref_s*, align 8
  %opDict = alloca %struct.ref_s*, align 8
  %ssize = alloca i32, align 4
  %comment_code = alloca i32, align 4
  %code = alloca i32, align 4
  %dsc_buffer = alloca [261 x i8], align 16
  %pCmdList = alloca %struct.cmdlist_s*, align 8
  %pBadList = alloca i8**, align 8
  %pvalue = alloca %struct.ref_s*, align 8
  %dsc_state = alloca %struct.dsc_data_s*, align 8
  %list = alloca %struct.dict_param_list_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %opString to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %opString, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %opDict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %opString, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %opDict, align 8, !tbaa !1
  %5 = bitcast i32* %ssize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %comment_code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast [261 x i8]* %dsc_buffer to i8*
  call void @llvm.lifetime.start(i64 261, i8* %8) #1
  %9 = bitcast %struct.cmdlist_s** %pCmdList to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store %struct.cmdlist_s* getelementptr inbounds ([16 x %struct.cmdlist_s], [16 x %struct.cmdlist_s]* @DSCcmdlist, i32 0, i32 0), %struct.cmdlist_s** %pCmdList, align 8, !tbaa !1
  %10 = bitcast i8*** %pBadList to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @BadCmdlist, i32 0, i32 0), i8*** %pBadList, align 8, !tbaa !1
  %11 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast %struct.dsc_data_s** %dsc_state to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store %struct.dsc_data_s* null, %struct.dsc_data_s** %dsc_state, align 8, !tbaa !1
  %13 = bitcast %struct.dict_param_list_s* %list to i8*
  call void @llvm.lifetime.start(i64 104, i8* %13) #1
  %14 = load %struct.ref_s*, %struct.ref_s** %opString, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %15 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx, align 1, !tbaa !28
  %conv = zext i8 %16 to i32
  %cmp = icmp eq i32 %conv, 18
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %17 = load %struct.ref_s*, %struct.ref_s** %opString, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %17) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %18 = load %struct.ref_s*, %struct.ref_s** %opDict, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %19 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %19, i32 0, i32 0
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %20 = load i16, i16* %type_attrs3, align 2, !tbaa !26
  %conv4 = zext i16 %20 to i32
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
  %21 = load %struct.ref_s*, %struct.ref_s** %opString, align 8, !tbaa !1
  %tas7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas7, i32 0, i32 2
  %22 = load i32, i32* %rsize, align 4, !tbaa !29
  store i32 %22, i32* %ssize, align 4, !tbaa !27
  %23 = load i32, i32* %ssize, align 4, !tbaa !27
  %cmp8 = icmp ugt i32 %23, 259
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %do.end
  store i32 259, i32* %ssize, align 4, !tbaa !27
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %do.end
  %24 = load %struct.ref_s*, %struct.ref_s** %opDict, align 8, !tbaa !1
  %25 = load i8*, i8** @dsc_dict_name, align 8, !tbaa !1
  %call12 = call i32 @dict_find_string(%struct.ref_s* %24, i8* %25, %struct.ref_s** %pvalue) #5
  store i32 %call12, i32* %code, align 4, !tbaa !27
  %26 = load i32, i32* %code, align 4, !tbaa !27
  %cmp13 = icmp slt i32 %26, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.11
  %27 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end.11
  %28 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %value17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 1
  %pstruct = bitcast %union.v* %value17 to %struct.obj_header_s**
  %29 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %30 = bitcast %struct.obj_header_s* %29 to %struct.dsc_data_s*
  store %struct.dsc_data_s* %30, %struct.dsc_data_s** %dsc_state, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [261 x i8], [261 x i8]* %dsc_buffer, i32 0, i32 0
  %31 = load %struct.ref_s*, %struct.ref_s** %opString, align 8, !tbaa !1
  %value18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 1
  %bytes = bitcast %union.v* %value18 to i8**
  %32 = load i8*, i8** %bytes, align 8, !tbaa !1
  %33 = load i32, i32* %ssize, align 4, !tbaa !27
  %conv19 = zext i32 %33 to i64
  %call20 = call i8* @memcpy(i8* %arraydecay, i8* %32, i64 %conv19) #6
  %34 = load i32, i32* %ssize, align 4, !tbaa !27
  %idxprom = zext i32 %34 to i64
  %arrayidx21 = getelementptr inbounds [261 x i8], [261 x i8]* %dsc_buffer, i32 0, i64 %idxprom
  store i8 13, i8* %arrayidx21, align 1, !tbaa !28
  %35 = load i32, i32* %ssize, align 4, !tbaa !27
  %add = add i32 %35, 1
  %idxprom22 = zext i32 %add to i64
  %arrayidx23 = getelementptr inbounds [261 x i8], [261 x i8]* %dsc_buffer, i32 0, i64 %idxprom22
  store i8 0, i8* %arrayidx23, align 1, !tbaa !28
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.16
  %36 = load i8**, i8*** %pBadList, align 8, !tbaa !1
  %37 = load i8*, i8** %36, align 8, !tbaa !1
  %tobool24 = icmp ne i8* %37, null
  br i1 %tobool24, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %38 = load i8**, i8*** %pBadList, align 8, !tbaa !1
  %39 = load i8*, i8** %38, align 8, !tbaa !1
  %arraydecay25 = getelementptr inbounds [261 x i8], [261 x i8]* %dsc_buffer, i32 0, i32 0
  %40 = load i8**, i8*** %pBadList, align 8, !tbaa !1
  %41 = load i8*, i8** %40, align 8, !tbaa !1
  %call26 = call i64 @strlen(i8* %41) #7
  %call27 = call i32 @strncmp(i8* %39, i8* %arraydecay25, i64 %call26) #7
  %tobool28 = icmp ne i32 %call27, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %42 = phi i1 [ false, %while.cond ], [ %tobool28, %land.rhs ]
  br i1 %42, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %43 = load i8**, i8*** %pBadList, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8*, i8** %43, i32 1
  store i8** %incdec.ptr, i8*** %pBadList, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %44 = load i8**, i8*** %pBadList, align 8, !tbaa !1
  %45 = load i8*, i8** %44, align 8, !tbaa !1
  %tobool29 = icmp ne i8* %45, null
  br i1 %tobool29, label %if.then.30, label %if.else.43

if.then.30:                                       ; preds = %while.end
  store i32 0, i32* %comment_code, align 4, !tbaa !27
  %arrayidx31 = getelementptr inbounds [261 x i8], [261 x i8]* %dsc_buffer, i32 0, i64 2
  %46 = load i8, i8* %arrayidx31, align 1, !tbaa !28
  %conv32 = sext i8 %46 to i32
  %cmp33 = icmp eq i32 %conv32, 66
  br i1 %cmp33, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %if.then.30
  %47 = load %struct.dsc_data_s*, %struct.dsc_data_s** %dsc_state, align 8, !tbaa !1
  %document_level = getelementptr inbounds %struct.dsc_data_s, %struct.dsc_data_s* %47, i32 0, i32 1
  %48 = load i32, i32* %document_level, align 4, !tbaa !22
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %document_level, align 4, !tbaa !22
  br label %if.end.42

if.else:                                          ; preds = %if.then.30
  %49 = load %struct.dsc_data_s*, %struct.dsc_data_s** %dsc_state, align 8, !tbaa !1
  %document_level36 = getelementptr inbounds %struct.dsc_data_s, %struct.dsc_data_s* %49, i32 0, i32 1
  %50 = load i32, i32* %document_level36, align 4, !tbaa !22
  %cmp37 = icmp sgt i32 %50, 0
  br i1 %cmp37, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.else
  %51 = load %struct.dsc_data_s*, %struct.dsc_data_s** %dsc_state, align 8, !tbaa !1
  %document_level40 = getelementptr inbounds %struct.dsc_data_s, %struct.dsc_data_s* %51, i32 0, i32 1
  %52 = load i32, i32* %document_level40, align 4, !tbaa !22
  %dec = add nsw i32 %52, -1
  store i32 %dec, i32* %document_level40, align 4, !tbaa !22
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.else
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.35
  br label %if.end.60

if.else.43:                                       ; preds = %while.end
  %53 = load %struct.dsc_data_s*, %struct.dsc_data_s** %dsc_state, align 8, !tbaa !1
  %document_level44 = getelementptr inbounds %struct.dsc_data_s, %struct.dsc_data_s* %53, i32 0, i32 1
  %54 = load i32, i32* %document_level44, align 4, !tbaa !22
  %cmp45 = icmp sgt i32 %54, 0
  br i1 %cmp45, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %if.else.43
  store i32 0, i32* %comment_code, align 4, !tbaa !27
  br label %if.end.59

if.else.48:                                       ; preds = %if.else.43
  %55 = load %struct.dsc_data_s*, %struct.dsc_data_s** %dsc_state, align 8, !tbaa !1
  %dsc_data_ptr = getelementptr inbounds %struct.dsc_data_s, %struct.dsc_data_s* %55, i32 0, i32 0
  %56 = load %struct.CDSC_s*, %struct.CDSC_s** %dsc_data_ptr, align 8, !tbaa !25
  %arraydecay49 = getelementptr inbounds [261 x i8], [261 x i8]* %dsc_buffer, i32 0, i32 0
  %57 = load i32, i32* %ssize, align 4, !tbaa !27
  %add50 = add i32 %57, 1
  %call51 = call i32 @dsc_scan_data(%struct.CDSC_s* %56, i8* %arraydecay49, i32 %add50) #5
  store i32 %call51, i32* %comment_code, align 4, !tbaa !27
  br label %do.body.52

do.body.52:                                       ; preds = %if.else.48
  br label %do.cond.53

do.cond.53:                                       ; preds = %do.body.52
  br label %do.end.54

do.end.54:                                        ; preds = %do.cond.53
  %58 = load i32, i32* %comment_code, align 4, !tbaa !27
  %cmp55 = icmp slt i32 %58, 0
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %do.end.54
  store i32 0, i32* %comment_code, align 4, !tbaa !27
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %do.end.54
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.47
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.end.42
  br label %while.cond.61

while.cond.61:                                    ; preds = %while.body.69, %if.end.60
  %59 = load %struct.cmdlist_s*, %struct.cmdlist_s** %pCmdList, align 8, !tbaa !1
  %code62 = getelementptr inbounds %struct.cmdlist_s, %struct.cmdlist_s* %59, i32 0, i32 0
  %60 = load i32, i32* %code62, align 4, !tbaa !30
  %tobool63 = icmp ne i32 %60, 0
  br i1 %tobool63, label %land.rhs.64, label %land.end.68

land.rhs.64:                                      ; preds = %while.cond.61
  %61 = load %struct.cmdlist_s*, %struct.cmdlist_s** %pCmdList, align 8, !tbaa !1
  %code65 = getelementptr inbounds %struct.cmdlist_s, %struct.cmdlist_s* %61, i32 0, i32 0
  %62 = load i32, i32* %code65, align 4, !tbaa !30
  %63 = load i32, i32* %comment_code, align 4, !tbaa !27
  %cmp66 = icmp ne i32 %62, %63
  br label %land.end.68

land.end.68:                                      ; preds = %land.rhs.64, %while.cond.61
  %64 = phi i1 [ false, %while.cond.61 ], [ %cmp66, %land.rhs.64 ]
  br i1 %64, label %while.body.69, label %while.end.71

while.body.69:                                    ; preds = %land.end.68
  %65 = load %struct.cmdlist_s*, %struct.cmdlist_s** %pCmdList, align 8, !tbaa !1
  %incdec.ptr70 = getelementptr inbounds %struct.cmdlist_s, %struct.cmdlist_s* %65, i32 1
  store %struct.cmdlist_s* %incdec.ptr70, %struct.cmdlist_s** %pCmdList, align 8, !tbaa !1
  br label %while.cond.61

while.end.71:                                     ; preds = %land.end.68
  %66 = load %struct.cmdlist_s*, %struct.cmdlist_s** %pCmdList, align 8, !tbaa !1
  %dsc_proc = getelementptr inbounds %struct.cmdlist_s, %struct.cmdlist_s* %66, i32 0, i32 2
  %67 = load i32 (%struct.gs_param_list_s*, %struct.CDSC_s*)*, i32 (%struct.gs_param_list_s*, %struct.CDSC_s*)** %dsc_proc, align 8, !tbaa !32
  %tobool72 = icmp ne i32 (%struct.gs_param_list_s*, %struct.CDSC_s*)* %67, null
  br i1 %tobool72, label %if.then.73, label %if.end.88

if.then.73:                                       ; preds = %while.end.71
  %68 = load %struct.ref_s*, %struct.ref_s** %opDict, align 8, !tbaa !1
  %69 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %69, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %70 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !33
  %call74 = call i32 @dict_param_list_write(%struct.dict_param_list_s* %list, %struct.ref_s* %68, %struct.ref_s* null, %struct.gs_ref_memory_s* %70) #5
  store i32 %call74, i32* %code, align 4, !tbaa !27
  %71 = load i32, i32* %code, align 4, !tbaa !27
  %cmp75 = icmp slt i32 %71, 0
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.then.73
  %72 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %72, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.78:                                        ; preds = %if.then.73
  %73 = load %struct.cmdlist_s*, %struct.cmdlist_s** %pCmdList, align 8, !tbaa !1
  %dsc_proc79 = getelementptr inbounds %struct.cmdlist_s, %struct.cmdlist_s* %73, i32 0, i32 2
  %74 = load i32 (%struct.gs_param_list_s*, %struct.CDSC_s*)*, i32 (%struct.gs_param_list_s*, %struct.CDSC_s*)** %dsc_proc79, align 8, !tbaa !32
  %75 = bitcast %struct.dict_param_list_s* %list to %struct.gs_param_list_s*
  %76 = load %struct.dsc_data_s*, %struct.dsc_data_s** %dsc_state, align 8, !tbaa !1
  %dsc_data_ptr80 = getelementptr inbounds %struct.dsc_data_s, %struct.dsc_data_s* %76, i32 0, i32 0
  %77 = load %struct.CDSC_s*, %struct.CDSC_s** %dsc_data_ptr80, align 8, !tbaa !25
  %call81 = call i32 %74(%struct.gs_param_list_s* %75, %struct.CDSC_s* %77) #5
  store i32 %call81, i32* %code, align 4, !tbaa !27
  %memory82 = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %list, i32 0, i32 1
  %78 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory82, align 8, !tbaa !34
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %78, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %79 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !36
  %memory83 = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %list, i32 0, i32 1
  %80 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory83, align 8, !tbaa !34
  %results = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %list, i32 0, i32 6
  %81 = load i32*, i32** %results, align 8, !tbaa !37
  %82 = bitcast i32* %81 to i8*
  call void %79(%struct.gs_memory_s* %80, i8* %82, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0)) #5
  %83 = load i32, i32* %code, align 4, !tbaa !27
  %cmp84 = icmp slt i32 %83, 0
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.end.78
  %84 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %84, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.87:                                        ; preds = %if.end.78
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %while.end.71
  %85 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory89 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %85, i32 0, i32 1
  %current90 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory89, i32 0, i32 0
  %86 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current90, align 8, !tbaa !33
  %87 = bitcast %struct.gs_ref_memory_s* %86 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %87, i32 0, i32 2
  %88 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !38
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %88, i32 0, i32 16
  %89 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !39
  %90 = load %struct.cmdlist_s*, %struct.cmdlist_s** %pCmdList, align 8, !tbaa !1
  %comment_name = getelementptr inbounds %struct.cmdlist_s, %struct.cmdlist_s* %90, i32 0, i32 1
  %91 = load i8*, i8** %comment_name, align 8, !tbaa !41
  %92 = load %struct.ref_s*, %struct.ref_s** %opString, align 8, !tbaa !1
  %call91 = call i32 @names_enter_string(%struct.name_table_s* %89, i8* %91, %struct.ref_s* %92) #5
  store i32 %call91, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.88, %if.then.86, %if.then.77, %if.then.15, %if.then.5, %if.then
  %93 = bitcast %struct.dict_param_list_s* %list to i8*
  call void @llvm.lifetime.end(i64 104, i8* %93) #1
  %94 = bitcast %struct.dsc_data_s** %dsc_state to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = bitcast i8*** %pBadList to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast %struct.cmdlist_s** %pCmdList to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast [261 x i8]* %dsc_buffer to i8*
  call void @llvm.lifetime.end(i64 261, i8* %98) #1
  %99 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast i32* %comment_code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast i32* %ssize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast %struct.ref_s** %opDict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %103 = bitcast %struct.ref_s** %opString to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  %104 = load i32, i32* %retval
  ret i32 %104
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare %struct.CDSC_s* @dsc_init_with_alloc(i8*, i8* (i64, i8*)*, void (i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i8* @zDSC_memalloc(i64 %size, i8* %closure_data) #0 {
entry:
  %size.addr = alloca i64, align 8
  %closure_data.addr = alloca i8*, align 8
  %cmem = alloca %struct.gs_memory_s*, align 8
  store i64 %size, i64* %size.addr, align 8, !tbaa !42
  store i8* %closure_data, i8** %closure_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %cmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %closure_data.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_memory_s*
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %cmem, align 8, !tbaa !1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cmem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %4 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !43
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cmem, align 8, !tbaa !1
  %6 = load i64, i64* %size.addr, align 8, !tbaa !42
  %conv = trunc i64 %6 to i32
  %call = call i8* %4(%struct.gs_memory_s* %5, i32 %conv, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i32 0, i32 0)) #5
  %7 = bitcast %struct.gs_memory_s** %cmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal void @zDSC_memfree(i8* %ptr, i8* %closure_data) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %closure_data.addr = alloca i8*, align 8
  %cmem = alloca %struct.gs_memory_s*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  store i8* %closure_data, i8** %closure_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %cmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %closure_data.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_memory_s*
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %cmem, align 8, !tbaa !1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cmem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %4 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !36
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cmem, align 8, !tbaa !1
  %6 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  call void %4(%struct.gs_memory_s* %5, i8* %6, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0)) #5
  %7 = bitcast %struct.gs_memory_s** %cmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  ret void
}

declare void @dsc_set_error_function(%struct.CDSC_s*, i32 (i8*, %struct.CDSC_s*, i32, i8*, i32)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @dsc_error_handler(i8* %caller_data, %struct.CDSC_s* %dsc, i32 %explanation, i8* %line, i32 %line_len) #0 {
entry:
  %caller_data.addr = alloca i8*, align 8
  %dsc.addr = alloca %struct.CDSC_s*, align 8
  %explanation.addr = alloca i32, align 4
  %line.addr = alloca i8*, align 8
  %line_len.addr = alloca i32, align 4
  store i8* %caller_data, i8** %caller_data.addr, align 8, !tbaa !1
  store %struct.CDSC_s* %dsc, %struct.CDSC_s** %dsc.addr, align 8, !tbaa !1
  store i32 %explanation, i32* %explanation.addr, align 4, !tbaa !27
  store i8* %line, i8** %line.addr, align 8, !tbaa !1
  store i32 %line_len, i32* %line_len.addr, align 4, !tbaa !27
  ret i32 0
}

declare i32 @dict_put_string(%struct.ref_s*, i8*, %struct.ref_s*, %struct.dict_stack_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare %struct.gs_ptr_procs_s* @gs_no_struct_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @gs_no_struct_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

; Function Attrs: nounwind uwtable
define internal void @dsc_finalize(%struct.gs_memory_s* %cmem, i8* %vptr) #0 {
entry:
  %cmem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %st = alloca %struct.dsc_data_s*, align 8
  store %struct.gs_memory_s* %cmem, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.dsc_data_s** %st to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.dsc_data_s*
  store %struct.dsc_data_s* %2, %struct.dsc_data_s** %st, align 8, !tbaa !1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  %4 = load %struct.dsc_data_s*, %struct.dsc_data_s** %st, align 8, !tbaa !1
  %dsc_data_ptr = getelementptr inbounds %struct.dsc_data_s, %struct.dsc_data_s* %4, i32 0, i32 0
  %5 = load %struct.CDSC_s*, %struct.CDSC_s** %dsc_data_ptr, align 8, !tbaa !25
  %tobool = icmp ne %struct.CDSC_s* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.dsc_data_s*, %struct.dsc_data_s** %st, align 8, !tbaa !1
  %dsc_data_ptr1 = getelementptr inbounds %struct.dsc_data_s, %struct.dsc_data_s* %6, i32 0, i32 0
  %7 = load %struct.CDSC_s*, %struct.CDSC_s** %dsc_data_ptr1, align 8, !tbaa !25
  call void @dsc_free(%struct.CDSC_s* %7) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.dsc_data_s*, %struct.dsc_data_s** %st, align 8, !tbaa !1
  %dsc_data_ptr2 = getelementptr inbounds %struct.dsc_data_s, %struct.dsc_data_s* %8, i32 0, i32 0
  store %struct.CDSC_s* null, %struct.CDSC_s** %dsc_data_ptr2, align 8, !tbaa !25
  %9 = bitcast %struct.dsc_data_s** %st to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret void
}

declare void @dsc_free(%struct.CDSC_s*) #2

declare i32 @check_type_failed(%struct.ref_s*) #2

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @dsc_scan_data(%struct.CDSC_s*, i8*, i32) #2

declare i32 @dict_param_list_write(%struct.dict_param_list_s*, %struct.ref_s*, %struct.ref_s*, %struct.gs_ref_memory_s*) #2

declare i32 @names_enter_string(%struct.name_table_s*, i8*, %struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @dsc_adobe_header(%struct.gs_param_list_s* %plist, %struct.CDSC_s* %pData) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pData.addr = alloca %struct.CDSC_s*, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.CDSC_s* %pData, %struct.CDSC_s** %pData.addr, align 8, !tbaa !1
  %0 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %1 = load %struct.CDSC_s*, %struct.CDSC_s** %pData.addr, align 8, !tbaa !1
  %epsf = getelementptr inbounds %struct.CDSC_s, %struct.CDSC_s* %1, i32 0, i32 4
  %2 = load i32, i32* %epsf, align 4, !tbaa !44
  %tobool = icmp ne i32 %2, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %call = call i32 @dsc_put_int(%struct.gs_param_list_s* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i32 %cond) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @dsc_creator(%struct.gs_param_list_s* %plist, %struct.CDSC_s* %pData) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pData.addr = alloca %struct.CDSC_s*, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.CDSC_s* %pData, %struct.CDSC_s** %pData.addr, align 8, !tbaa !1
  %0 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %1 = load %struct.CDSC_s*, %struct.CDSC_s** %pData.addr, align 8, !tbaa !1
  %dsc_creator = getelementptr inbounds %struct.CDSC_s, %struct.CDSC_s* %1, i32 0, i32 35
  %2 = load i8*, i8** %dsc_creator, align 8, !tbaa !46
  %call = call i32 @dsc_put_string(%struct.gs_param_list_s* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* %2) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @dsc_creation_date(%struct.gs_param_list_s* %plist, %struct.CDSC_s* %pData) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pData.addr = alloca %struct.CDSC_s*, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.CDSC_s* %pData, %struct.CDSC_s** %pData.addr, align 8, !tbaa !1
  %0 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %1 = load %struct.CDSC_s*, %struct.CDSC_s** %pData.addr, align 8, !tbaa !1
  %dsc_date = getelementptr inbounds %struct.CDSC_s, %struct.CDSC_s* %1, i32 0, i32 36
  %2 = load i8*, i8** %dsc_date, align 8, !tbaa !47
  %call = call i32 @dsc_put_string(%struct.gs_param_list_s* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* %2) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @dsc_title(%struct.gs_param_list_s* %plist, %struct.CDSC_s* %pData) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pData.addr = alloca %struct.CDSC_s*, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.CDSC_s* %pData, %struct.CDSC_s** %pData.addr, align 8, !tbaa !1
  %0 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %1 = load %struct.CDSC_s*, %struct.CDSC_s** %pData.addr, align 8, !tbaa !1
  %dsc_title = getelementptr inbounds %struct.CDSC_s, %struct.CDSC_s* %1, i32 0, i32 34
  %2 = load i8*, i8** %dsc_title, align 8, !tbaa !48
  %call = call i32 @dsc_put_string(%struct.gs_param_list_s* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* %2) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @dsc_for(%struct.gs_param_list_s* %plist, %struct.CDSC_s* %pData) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pData.addr = alloca %struct.CDSC_s*, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.CDSC_s* %pData, %struct.CDSC_s** %pData.addr, align 8, !tbaa !1
  %0 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %1 = load %struct.CDSC_s*, %struct.CDSC_s** %pData.addr, align 8, !tbaa !1
  %dsc_for = getelementptr inbounds %struct.CDSC_s, %struct.CDSC_s* %1, i32 0, i32 37
  %2 = load i8*, i8** %dsc_for, align 8, !tbaa !49
  %call = call i32 @dsc_put_string(%struct.gs_param_list_s* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* %2) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @dsc_bounding_box(%struct.gs_param_list_s* %plist, %struct.CDSC_s* %pData) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pData.addr = alloca %struct.CDSC_s*, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.CDSC_s* %pData, %struct.CDSC_s** %pData.addr, align 8, !tbaa !1
  %0 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %1 = load %struct.CDSC_s*, %struct.CDSC_s** %pData.addr, align 8, !tbaa !1
  %bbox = getelementptr inbounds %struct.CDSC_s, %struct.CDSC_s* %1, i32 0, i32 31
  %2 = load %struct.CDSCBBOX_S*, %struct.CDSCBBOX_S** %bbox, align 8, !tbaa !50
  %call = call i32 @dsc_put_bounding_box(%struct.gs_param_list_s* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), %struct.CDSCBBOX_S* %2) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @dsc_orientation(%struct.gs_param_list_s* %plist, %struct.CDSC_s* %pData) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pData.addr = alloca %struct.CDSC_s*, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.CDSC_s* %pData, %struct.CDSC_s** %pData.addr, align 8, !tbaa !1
  %0 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %1 = load %struct.CDSC_s*, %struct.CDSC_s** %pData.addr, align 8, !tbaa !1
  %page_orientation = getelementptr inbounds %struct.CDSC_s, %struct.CDSC_s* %1, i32 0, i32 26
  %2 = load i32, i32* %page_orientation, align 4, !tbaa !51
  %call = call i32 @convert_orient(i32 %2) #5
  %call1 = call i32 @dsc_put_int(%struct.gs_param_list_s* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i32 %call) #5
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define internal i32 @dsc_page(%struct.gs_param_list_s* %plist, %struct.CDSC_s* %pData) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pData.addr = alloca %struct.CDSC_s*, align 8
  %page_num = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.CDSC_s* %pData, %struct.CDSC_s** %pData.addr, align 8, !tbaa !1
  %0 = bitcast i32* %page_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.CDSC_s*, %struct.CDSC_s** %pData.addr, align 8, !tbaa !1
  %page_count = getelementptr inbounds %struct.CDSC_s, %struct.CDSC_s* %1, i32 0, i32 23
  %2 = load i32, i32* %page_count, align 4, !tbaa !52
  store i32 %2, i32* %page_num, align 4, !tbaa !27
  %3 = load i32, i32* %page_num, align 4, !tbaa !27
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %5 = load i32, i32* %page_num, align 4, !tbaa !27
  %sub = sub nsw i32 %5, 1
  %idxprom = sext i32 %sub to i64
  %6 = load %struct.CDSC_s*, %struct.CDSC_s** %pData.addr, align 8, !tbaa !1
  %page = getelementptr inbounds %struct.CDSC_s, %struct.CDSC_s* %6, i32 0, i32 22
  %7 = load %struct.CDSCPAGE_S*, %struct.CDSCPAGE_S** %page, align 8, !tbaa !53
  %arrayidx = getelementptr inbounds %struct.CDSCPAGE_S, %struct.CDSCPAGE_S* %7, i64 %idxprom
  %ordinal = getelementptr inbounds %struct.CDSCPAGE_S, %struct.CDSCPAGE_S* %arrayidx, i32 0, i32 0
  %8 = load i32, i32* %ordinal, align 4, !tbaa !54
  %call = call i32 @dsc_put_int(%struct.gs_param_list_s* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i32 %8) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %9 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call1 = call i32 @dsc_put_int(%struct.gs_param_list_s* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i32 0) #5
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %10 = bitcast i32* %page_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @dsc_pages(%struct.gs_param_list_s* %plist, %struct.CDSC_s* %pData) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pData.addr = alloca %struct.CDSC_s*, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.CDSC_s* %pData, %struct.CDSC_s** %pData.addr, align 8, !tbaa !1
  %0 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %1 = load %struct.CDSC_s*, %struct.CDSC_s** %pData.addr, align 8, !tbaa !1
  %page_pages = getelementptr inbounds %struct.CDSC_s, %struct.CDSC_s* %1, i32 0, i32 24
  %2 = load i32, i32* %page_pages, align 4, !tbaa !56
  %call = call i32 @dsc_put_int(%struct.gs_param_list_s* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 %2) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @dsc_page_orientation(%struct.gs_param_list_s* %plist, %struct.CDSC_s* %pData) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pData.addr = alloca %struct.CDSC_s*, align 8
  %page_num = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.CDSC_s* %pData, %struct.CDSC_s** %pData.addr, align 8, !tbaa !1
  %0 = bitcast i32* %page_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.CDSC_s*, %struct.CDSC_s** %pData.addr, align 8, !tbaa !1
  %page_count = getelementptr inbounds %struct.CDSC_s, %struct.CDSC_s* %1, i32 0, i32 23
  %2 = load i32, i32* %page_count, align 4, !tbaa !52
  store i32 %2, i32* %page_num, align 4, !tbaa !27
  %3 = load i32, i32* %page_num, align 4, !tbaa !27
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %page_num, align 4, !tbaa !27
  %sub = sub nsw i32 %4, 1
  %idxprom = sext i32 %sub to i64
  %5 = load %struct.CDSC_s*, %struct.CDSC_s** %pData.addr, align 8, !tbaa !1
  %page = getelementptr inbounds %struct.CDSC_s, %struct.CDSC_s* %5, i32 0, i32 22
  %6 = load %struct.CDSCPAGE_S*, %struct.CDSCPAGE_S** %page, align 8, !tbaa !53
  %arrayidx = getelementptr inbounds %struct.CDSCPAGE_S, %struct.CDSCPAGE_S* %6, i64 %idxprom
  %orientation = getelementptr inbounds %struct.CDSCPAGE_S, %struct.CDSCPAGE_S* %arrayidx, i32 0, i32 4
  %7 = load i32, i32* %orientation, align 4, !tbaa !57
  %cmp = icmp ne i32 %7, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %9 = load i32, i32* %page_num, align 4, !tbaa !27
  %sub1 = sub nsw i32 %9, 1
  %idxprom2 = sext i32 %sub1 to i64
  %10 = load %struct.CDSC_s*, %struct.CDSC_s** %pData.addr, align 8, !tbaa !1
  %page3 = getelementptr inbounds %struct.CDSC_s, %struct.CDSC_s* %10, i32 0, i32 22
  %11 = load %struct.CDSCPAGE_S*, %struct.CDSCPAGE_S** %page3, align 8, !tbaa !53
  %arrayidx4 = getelementptr inbounds %struct.CDSCPAGE_S, %struct.CDSCPAGE_S* %11, i64 %idxprom2
  %orientation5 = getelementptr inbounds %struct.CDSCPAGE_S, %struct.CDSCPAGE_S* %arrayidx4, i32 0, i32 4
  %12 = load i32, i32* %orientation5, align 4, !tbaa !57
  %call = call i32 @convert_orient(i32 %12) #5
  %call6 = call i32 @dsc_put_int(%struct.gs_param_list_s* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0), i32 %call) #5
  store i32 %call6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true, %entry
  %13 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %14 = load %struct.CDSC_s*, %struct.CDSC_s** %pData.addr, align 8, !tbaa !1
  %page_orientation = getelementptr inbounds %struct.CDSC_s, %struct.CDSC_s* %14, i32 0, i32 26
  %15 = load i32, i32* %page_orientation, align 4, !tbaa !51
  %call7 = call i32 @convert_orient(i32 %15) #5
  %call8 = call i32 @dsc_put_int(%struct.gs_param_list_s* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i32 %call7) #5
  store i32 %call8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %16 = bitcast i32* %page_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @dsc_page_bounding_box(%struct.gs_param_list_s* %plist, %struct.CDSC_s* %pData) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pData.addr = alloca %struct.CDSC_s*, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.CDSC_s* %pData, %struct.CDSC_s** %pData.addr, align 8, !tbaa !1
  %0 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %1 = load %struct.CDSC_s*, %struct.CDSC_s** %pData.addr, align 8, !tbaa !1
  %page_bbox = getelementptr inbounds %struct.CDSC_s, %struct.CDSC_s* %1, i32 0, i32 32
  %2 = load %struct.CDSCBBOX_S*, %struct.CDSCBBOX_S** %page_bbox, align 8, !tbaa !58
  %call = call i32 @dsc_put_bounding_box(%struct.gs_param_list_s* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), %struct.CDSCBBOX_S* %2) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @dsc_viewing_orientation(%struct.gs_param_list_s* %plist, %struct.CDSC_s* %pData) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pData.addr = alloca %struct.CDSC_s*, align 8
  %page_num = alloca i32, align 4
  %key = alloca i8*, align 8
  %pctm = alloca %struct.CDSCCTM_S*, align 8
  %values = alloca [4 x float], align 16
  %va = alloca %struct.gs_param_float_array_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.CDSC_s* %pData, %struct.CDSC_s** %pData.addr, align 8, !tbaa !1
  %0 = bitcast i32* %page_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.CDSC_s*, %struct.CDSC_s** %pData.addr, align 8, !tbaa !1
  %page_count = getelementptr inbounds %struct.CDSC_s, %struct.CDSC_s* %1, i32 0, i32 23
  %2 = load i32, i32* %page_count, align 4, !tbaa !52
  store i32 %2, i32* %page_num, align 4, !tbaa !27
  %3 = bitcast i8** %key to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.CDSCCTM_S** %pctm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast [4 x float]* %values to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #1
  %6 = bitcast %struct.gs_param_float_array_s* %va to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #1
  %7 = load i32, i32* %page_num, align 4, !tbaa !27
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %8 = load i32, i32* %page_num, align 4, !tbaa !27
  %sub = sub nsw i32 %8, 1
  %idxprom = sext i32 %sub to i64
  %9 = load %struct.CDSC_s*, %struct.CDSC_s** %pData.addr, align 8, !tbaa !1
  %page = getelementptr inbounds %struct.CDSC_s, %struct.CDSC_s* %9, i32 0, i32 22
  %10 = load %struct.CDSCPAGE_S*, %struct.CDSCPAGE_S** %page, align 8, !tbaa !53
  %arrayidx = getelementptr inbounds %struct.CDSCPAGE_S, %struct.CDSCPAGE_S* %10, i64 %idxprom
  %viewing_orientation = getelementptr inbounds %struct.CDSCPAGE_S, %struct.CDSCPAGE_S* %arrayidx, i32 0, i32 7
  %11 = load %struct.CDSCCTM_S*, %struct.CDSCCTM_S** %viewing_orientation, align 8, !tbaa !59
  %cmp = icmp ne %struct.CDSCCTM_S* %11, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i32 0, i32 0), i8** %key, align 8, !tbaa !1
  %12 = load i32, i32* %page_num, align 4, !tbaa !27
  %sub1 = sub nsw i32 %12, 1
  %idxprom2 = sext i32 %sub1 to i64
  %13 = load %struct.CDSC_s*, %struct.CDSC_s** %pData.addr, align 8, !tbaa !1
  %page3 = getelementptr inbounds %struct.CDSC_s, %struct.CDSC_s* %13, i32 0, i32 22
  %14 = load %struct.CDSCPAGE_S*, %struct.CDSCPAGE_S** %page3, align 8, !tbaa !53
  %arrayidx4 = getelementptr inbounds %struct.CDSCPAGE_S, %struct.CDSCPAGE_S* %14, i64 %idxprom2
  %viewing_orientation5 = getelementptr inbounds %struct.CDSCPAGE_S, %struct.CDSCPAGE_S* %arrayidx4, i32 0, i32 7
  %15 = load %struct.CDSCCTM_S*, %struct.CDSCCTM_S** %viewing_orientation5, align 8, !tbaa !59
  store %struct.CDSCCTM_S* %15, %struct.CDSCCTM_S** %pctm, align 8, !tbaa !1
  br label %if.end.11

if.else:                                          ; preds = %land.lhs.true, %entry
  %16 = load %struct.CDSC_s*, %struct.CDSC_s** %pData.addr, align 8, !tbaa !1
  %viewing_orientation6 = getelementptr inbounds %struct.CDSC_s, %struct.CDSC_s* %16, i32 0, i32 27
  %17 = load %struct.CDSCCTM_S*, %struct.CDSCCTM_S** %viewing_orientation6, align 8, !tbaa !60
  %tobool7 = icmp ne %struct.CDSCCTM_S* %17, null
  br i1 %tobool7, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0), i8** %key, align 8, !tbaa !1
  %18 = load %struct.CDSC_s*, %struct.CDSC_s** %pData.addr, align 8, !tbaa !1
  %viewing_orientation9 = getelementptr inbounds %struct.CDSC_s, %struct.CDSC_s* %18, i32 0, i32 27
  %19 = load %struct.CDSCCTM_S*, %struct.CDSCCTM_S** %viewing_orientation9, align 8, !tbaa !60
  store %struct.CDSCCTM_S* %19, %struct.CDSCCTM_S** %pctm, align 8, !tbaa !1
  br label %if.end

if.else.10:                                       ; preds = %if.else
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then
  %20 = load %struct.CDSCCTM_S*, %struct.CDSCCTM_S** %pctm, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.CDSCCTM_S, %struct.CDSCCTM_S* %20, i32 0, i32 0
  %21 = load float, float* %xx, align 4, !tbaa !61
  %arrayidx12 = getelementptr inbounds [4 x float], [4 x float]* %values, i32 0, i64 0
  store float %21, float* %arrayidx12, align 4, !tbaa !64
  %22 = load %struct.CDSCCTM_S*, %struct.CDSCCTM_S** %pctm, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.CDSCCTM_S, %struct.CDSCCTM_S* %22, i32 0, i32 1
  %23 = load float, float* %xy, align 4, !tbaa !65
  %arrayidx13 = getelementptr inbounds [4 x float], [4 x float]* %values, i32 0, i64 1
  store float %23, float* %arrayidx13, align 4, !tbaa !64
  %24 = load %struct.CDSCCTM_S*, %struct.CDSCCTM_S** %pctm, align 8, !tbaa !1
  %yx = getelementptr inbounds %struct.CDSCCTM_S, %struct.CDSCCTM_S* %24, i32 0, i32 2
  %25 = load float, float* %yx, align 4, !tbaa !66
  %arrayidx14 = getelementptr inbounds [4 x float], [4 x float]* %values, i32 0, i64 2
  store float %25, float* %arrayidx14, align 4, !tbaa !64
  %26 = load %struct.CDSCCTM_S*, %struct.CDSCCTM_S** %pctm, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.CDSCCTM_S, %struct.CDSCCTM_S* %26, i32 0, i32 3
  %27 = load float, float* %yy, align 4, !tbaa !67
  %arrayidx15 = getelementptr inbounds [4 x float], [4 x float]* %values, i32 0, i64 3
  store float %27, float* %arrayidx15, align 4, !tbaa !64
  %arraydecay = getelementptr inbounds [4 x float], [4 x float]* %values, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %va, i32 0, i32 0
  store float* %arraydecay, float** %data, align 8, !tbaa !68
  %size = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %va, i32 0, i32 1
  store i32 4, i32* %size, align 4, !tbaa !70
  %persistent = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %va, i32 0, i32 2
  store i32 0, i32* %persistent, align 4, !tbaa !71
  %28 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %29 = load i8*, i8** %key, align 8, !tbaa !1
  %call = call i32 @param_write_float_array(%struct.gs_param_list_s* %28, i8* %29, %struct.gs_param_float_array_s* %va) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.else.10
  %30 = bitcast %struct.gs_param_float_array_s* %va to i8*
  call void @llvm.lifetime.end(i64 16, i8* %30) #1
  %31 = bitcast [4 x float]* %values to i8*
  call void @llvm.lifetime.end(i64 16, i8* %31) #1
  %32 = bitcast %struct.CDSCCTM_S** %pctm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast i8** %key to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast i32* %page_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal i32 @dsc_put_int(%struct.gs_param_list_s* %plist, i8* %keyname, i32 %value) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %keyname.addr = alloca i8*, align 8
  %value.addr = alloca i32, align 4
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %keyname, i8** %keyname.addr, align 8, !tbaa !1
  store i32 %value, i32* %value.addr, align 4, !tbaa !27
  %0 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %keyname.addr, align 8, !tbaa !1
  %call = call i32 @param_write_int(%struct.gs_param_list_s* %0, i8* %1, i32* %value.addr) #5
  ret i32 %call
}

declare i32 @param_write_int(%struct.gs_param_list_s*, i8*, i32*) #2

; Function Attrs: nounwind uwtable
define internal i32 @dsc_put_string(%struct.gs_param_list_s* %plist, i8* %keyname, i8* %string) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %keyname.addr = alloca i8*, align 8
  %string.addr = alloca i8*, align 8
  %str = alloca %struct.gs_param_string_s, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %keyname, i8** %keyname.addr, align 8, !tbaa !1
  store i8* %string, i8** %string.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_string_s* %str to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = load i8*, i8** %string.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %str, i32 0, i32 0
  store i8* %1, i8** %data, align 8, !tbaa !72
  %data1 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %str, i32 0, i32 0
  %2 = load i8*, i8** %data1, align 8, !tbaa !72
  %call = call i64 @strlen(i8* %2) #7
  %conv = trunc i64 %call to i32
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %str, i32 0, i32 1
  store i32 %conv, i32* %size, align 4, !tbaa !74
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %str, i32 0, i32 2
  store i32 0, i32* %persistent, align 4, !tbaa !75
  %3 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %keyname.addr, align 8, !tbaa !1
  %call2 = call i32 @param_write_string(%struct.gs_param_list_s* %3, i8* %4, %struct.gs_param_string_s* %str) #5
  %5 = bitcast %struct.gs_param_string_s* %str to i8*
  call void @llvm.lifetime.end(i64 16, i8* %5) #1
  ret i32 %call2
}

declare i32 @param_write_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @dsc_put_bounding_box(%struct.gs_param_list_s* %plist, i8* %keyname, %struct.CDSCBBOX_S* %pbbox) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %keyname.addr = alloca i8*, align 8
  %pbbox.addr = alloca %struct.CDSCBBOX_S*, align 8
  %values = alloca [4 x i32], align 16
  %va = alloca %struct.gs_param_int_array_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %keyname, i8** %keyname.addr, align 8, !tbaa !1
  store %struct.CDSCBBOX_S* %pbbox, %struct.CDSCBBOX_S** %pbbox.addr, align 8, !tbaa !1
  %0 = bitcast [4 x i32]* %values to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast %struct.gs_param_int_array_s* %va to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = load %struct.CDSCBBOX_S*, %struct.CDSCBBOX_S** %pbbox.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.CDSCBBOX_S* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.CDSCBBOX_S*, %struct.CDSCBBOX_S** %pbbox.addr, align 8, !tbaa !1
  %llx = getelementptr inbounds %struct.CDSCBBOX_S, %struct.CDSCBBOX_S* %3, i32 0, i32 0
  %4 = load i32, i32* %llx, align 4, !tbaa !76
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %values, i32 0, i64 0
  store i32 %4, i32* %arrayidx, align 4, !tbaa !27
  %5 = load %struct.CDSCBBOX_S*, %struct.CDSCBBOX_S** %pbbox.addr, align 8, !tbaa !1
  %lly = getelementptr inbounds %struct.CDSCBBOX_S, %struct.CDSCBBOX_S* %5, i32 0, i32 1
  %6 = load i32, i32* %lly, align 4, !tbaa !78
  %arrayidx1 = getelementptr inbounds [4 x i32], [4 x i32]* %values, i32 0, i64 1
  store i32 %6, i32* %arrayidx1, align 4, !tbaa !27
  %7 = load %struct.CDSCBBOX_S*, %struct.CDSCBBOX_S** %pbbox.addr, align 8, !tbaa !1
  %urx = getelementptr inbounds %struct.CDSCBBOX_S, %struct.CDSCBBOX_S* %7, i32 0, i32 2
  %8 = load i32, i32* %urx, align 4, !tbaa !79
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %values, i32 0, i64 2
  store i32 %8, i32* %arrayidx2, align 4, !tbaa !27
  %9 = load %struct.CDSCBBOX_S*, %struct.CDSCBBOX_S** %pbbox.addr, align 8, !tbaa !1
  %ury = getelementptr inbounds %struct.CDSCBBOX_S, %struct.CDSCBBOX_S* %9, i32 0, i32 3
  %10 = load i32, i32* %ury, align 4, !tbaa !80
  %arrayidx3 = getelementptr inbounds [4 x i32], [4 x i32]* %values, i32 0, i64 3
  store i32 %10, i32* %arrayidx3, align 4, !tbaa !27
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %values, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %va, i32 0, i32 0
  store i32* %arraydecay, i32** %data, align 8, !tbaa !81
  %size = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %va, i32 0, i32 1
  store i32 4, i32* %size, align 4, !tbaa !83
  %persistent = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %va, i32 0, i32 2
  store i32 0, i32* %persistent, align 4, !tbaa !84
  %11 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %keyname.addr, align 8, !tbaa !1
  %call = call i32 @param_write_int_array(%struct.gs_param_list_s* %11, i8* %12, %struct.gs_param_int_array_s* %va) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast %struct.gs_param_int_array_s* %va to i8*
  call void @llvm.lifetime.end(i64 16, i8* %13) #1
  %14 = bitcast [4 x i32]* %values to i8*
  call void @llvm.lifetime.end(i64 16, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i32 @param_write_int_array(%struct.gs_param_list_s*, i8*, %struct.gs_param_int_array_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @convert_orient(i32 %orient) #0 {
entry:
  %retval = alloca i32, align 4
  %orient.addr = alloca i32, align 4
  store i32 %orient, i32* %orient.addr, align 4, !tbaa !28
  %0 = load i32, i32* %orient.addr, align 4, !tbaa !28
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i32 2, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i32 3, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i32, i32* %retval
  ret i32 %1
}

declare i32 @param_write_float_array(%struct.gs_param_list_s*, i8*, %struct.gs_param_float_array_s*) #2

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
!19 = !{!20, !2, i64 72}
!20 = !{!"gs_memory_s", !2, i64 0, !21, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!21 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!22 = !{!23, !9, i64 8}
!23 = !{!"dsc_data_s", !2, i64 0, !9, i64 8}
!24 = !{!20, !2, i64 200}
!25 = !{!23, !2, i64 0}
!26 = !{!10, !12, i64 0}
!27 = !{!9, !9, i64 0}
!28 = !{!3, !3, i64 0}
!29 = !{!10, !9, i64 4}
!30 = !{!31, !9, i64 0}
!31 = !{!"cmdlist_s", !9, i64 0, !2, i64 8, !2, i64 16}
!32 = !{!31, !2, i64 16}
!33 = !{!6, !2, i64 8}
!34 = !{!35, !2, i64 8}
!35 = !{!"dict_param_list_s", !2, i64 0, !2, i64 8, !9, i64 16, !2, i64 24, !3, i64 32, !2, i64 64, !2, i64 72, !9, i64 80, !9, i64 84, !10, i64 88}
!36 = !{!20, !2, i64 24}
!37 = !{!35, !2, i64 72}
!38 = !{!20, !2, i64 192}
!39 = !{!40, !2, i64 120}
!40 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !13, i64 104, !2, i64 112, !2, i64 120, !9, i64 128, !2, i64 136, !9, i64 144, !9, i64 148, !3, i64 152, !2, i64 168, !9, i64 176, !2, i64 184, !9, i64 192, !2, i64 200, !2, i64 208}
!41 = !{!31, !2, i64 8}
!42 = !{!13, !13, i64 0}
!43 = !{!20, !2, i64 64}
!44 = !{!45, !9, i64 1036}
!45 = !{!"CDSC_s", !3, i64 0, !9, i64 1024, !9, i64 1028, !9, i64 1032, !9, i64 1036, !9, i64 1040, !9, i64 1044, !2, i64 1048, !9, i64 1056, !9, i64 1060, !13, i64 1064, !13, i64 1072, !13, i64 1080, !13, i64 1088, !13, i64 1096, !13, i64 1104, !13, i64 1112, !13, i64 1120, !13, i64 1128, !13, i64 1136, !13, i64 1144, !13, i64 1152, !2, i64 1160, !9, i64 1168, !9, i64 1172, !9, i64 1176, !9, i64 1180, !2, i64 1184, !9, i64 1192, !2, i64 1200, !2, i64 1208, !2, i64 1216, !2, i64 1224, !2, i64 1232, !2, i64 1240, !2, i64 1248, !2, i64 1256, !2, i64 1264, !9, i64 1272, !2, i64 1280, !2, i64 1288, !9, i64 1296, !9, i64 1300, !13, i64 1304, !9, i64 1312, !13, i64 1320, !9, i64 1328, !9, i64 1332, !9, i64 1336, !9, i64 1340, !9, i64 1344, !9, i64 1348, !9, i64 1352, !9, i64 1356, !3, i64 1360, !9, i64 9552, !9, i64 9556, !13, i64 9560, !9, i64 9568, !2, i64 9576, !9, i64 9584, !9, i64 9588, !9, i64 9592, !9, i64 9596, !9, i64 9600, !3, i64 9604, !2, i64 9864, !2, i64 9872, !2, i64 9880, !2, i64 9888, !2, i64 9896, !2, i64 9904, !2, i64 9912, !2, i64 9920, !2, i64 9928, !2, i64 9936, !2, i64 9944, !9, i64 9952, !2, i64 9960}
!46 = !{!45, !2, i64 1248}
!47 = !{!45, !2, i64 1256}
!48 = !{!45, !2, i64 1240}
!49 = !{!45, !2, i64 1264}
!50 = !{!45, !2, i64 1216}
!51 = !{!45, !9, i64 1180}
!52 = !{!45, !9, i64 1168}
!53 = !{!45, !2, i64 1160}
!54 = !{!55, !9, i64 0}
!55 = !{!"CDSCPAGE_S", !9, i64 0, !2, i64 8, !13, i64 16, !13, i64 24, !9, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!56 = !{!45, !9, i64 1172}
!57 = !{!55, !9, i64 32}
!58 = !{!45, !2, i64 1224}
!59 = !{!55, !2, i64 56}
!60 = !{!45, !2, i64 1184}
!61 = !{!62, !63, i64 0}
!62 = !{!"CDSCCTM_S", !63, i64 0, !63, i64 4, !63, i64 8, !63, i64 12}
!63 = !{!"float", !3, i64 0}
!64 = !{!63, !63, i64 0}
!65 = !{!62, !63, i64 4}
!66 = !{!62, !63, i64 8}
!67 = !{!62, !63, i64 12}
!68 = !{!69, !2, i64 0}
!69 = !{!"gs_param_float_array_s", !2, i64 0, !9, i64 8, !9, i64 12}
!70 = !{!69, !9, i64 8}
!71 = !{!69, !9, i64 12}
!72 = !{!73, !2, i64 0}
!73 = !{!"gs_param_string_s", !2, i64 0, !9, i64 8, !9, i64 12}
!74 = !{!73, !9, i64 8}
!75 = !{!73, !9, i64 12}
!76 = !{!77, !9, i64 0}
!77 = !{!"CDSCBBOX_S", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12}
!78 = !{!77, !9, i64 4}
!79 = !{!77, !9, i64 8}
!80 = !{!77, !9, i64 12}
!81 = !{!82, !2, i64 0}
!82 = !{!"gs_param_int_array_s", !2, i64 0, !9, i64 8, !9, i64 12}
!83 = !{!82, !9, i64 8}
!84 = !{!82, !9, i64 12}
