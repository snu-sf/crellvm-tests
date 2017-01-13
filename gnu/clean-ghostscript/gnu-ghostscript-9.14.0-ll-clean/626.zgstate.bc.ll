; ModuleID = './zgstate.bc'
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
%struct.gs_state_client_procs_s = type { i8* (%struct.gs_memory_s*)*, i32 (i8*, i8*)*, void (i8*, %struct.gs_memory_s*)*, i32 (i8*, i8*, i32)* }
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
%struct.int_remap_color_info_s = type { i32 (%struct.gs_context_state_s*)*, [64 x float] }
%struct._ssn = type { %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s* }
%struct.obj_header_s = type opaque
%struct.gs_point_s = type { double, double }

@st_int_gstate = internal constant %struct.gs_memory_struct_type_s { i32 576, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* @ref_struct_clear_marks, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @ref_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @ref_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str = private unnamed_addr constant [29 x i8] c"int_gstate_alloc(int_gstate)\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"int_gstate_alloc(proc0)\00", align 1
@st_int_remap_color_info = internal constant %struct.gs_memory_struct_type_s { i32 264, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"int_gstate_alloc(remap color info)\00", align 1
@istate_procs = internal constant %struct.gs_state_client_procs_s { i8* (%struct.gs_memory_s*)* @gs_istate_alloc, i32 (i8*, i8*)* @gs_istate_copy, void (i8*, %struct.gs_memory_s*)* @gs_istate_free, i32 (i8*, i8*, i32)* null }, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"0.currentaccuratecurves\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"0.currentcurvejoin\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"0currentdash\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"0.currentdashadapt\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"0.currentdotlength\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"0.currentfilladjust2\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"0currentflat\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"0.currentlimitclamp\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"0currentlinecap\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"0currentlinejoin\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"0currentlinewidth\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"0currentmiterlimit\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"0.dotorientation\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"0grestore\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"0grestoreall\00", align 1
@zgstate1_op_defs = constant [16 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrentaccuratecurves }, %struct.op_def { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrentcurvejoin }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrentdash }, %struct.op_def { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrentdashadapt }, %struct.op_def { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrentdotlength }, %struct.op_def { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrentfilladjust2 }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrentflat }, %struct.op_def { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrentlimitclamp }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrentlinecap }, %struct.op_def { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrentlinejoin }, %struct.op_def { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrentlinewidth }, %struct.op_def { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrentmiterlimit }, %struct.op_def { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zdotorientation }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zgrestore }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zgrestoreall }, %struct.op_def zeroinitializer], align 16
@.str.18 = private unnamed_addr constant [7 x i8] c"0gsave\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"0initgraphics\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"1.setaccuratecurves\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"1.setcurvejoin\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"2setdash\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"1.setdashadapt\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"2.setdotlength\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"0.setdotorientation\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"2.setfilladjust2\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"1.setlimitclamp\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"1setflat\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"1.setlinecap\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"1.setlinejoin\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"1setlinewidth\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"1setmiterlimit\00", align 1
@zgstate2_op_defs = constant [16 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zgsave }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zinitgraphics }, %struct.op_def { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetaccuratecurves }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetcurvejoin }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetdash }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetdashadapt }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetdotlength }, %struct.op_def { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetdotorientation }, %struct.op_def { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetfilladjust2 }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetlimitclamp }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetflat }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetlinecap }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetlinejoin }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetlinewidth }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetmiterlimit }, %struct.op_def zeroinitializer], align 16
@.str.33 = private unnamed_addr constant [23 x i8] c"0.settextrenderingmode\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"0.currenttextrenderingmode\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"0.sethpglpathmode\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"0.currenthpglpathmode\00", align 1
@zgstate3_op_defs = constant [5 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsettextrenderingmode }, %struct.op_def { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrenttextrenderingmode }, %struct.op_def { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsethpglpathmode }, %struct.op_def { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrenthpglpathmode }, %struct.op_def zeroinitializer], align 16
@.str.37 = private unnamed_addr constant [11 x i8] c"int_gstate\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"int_remap_color_info_t\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"int_gsave\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"int_grestore\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"setdash\00", align 1

; Function Attrs: nounwind uwtable
define %struct.gs_state_s* @int_gstate_alloc(%struct.gs_dual_memory_s* %dmem) #0 {
entry:
  %retval = alloca %struct.gs_state_s*, align 8
  %dmem.addr = alloca %struct.gs_dual_memory_s*, align 8
  %iigs = alloca %struct.int_gstate_s*, align 8
  %proc0 = alloca %struct.ref_s, align 8
  %prci = alloca %struct.int_remap_color_info_s*, align 8
  %lmem = alloca %struct.gs_ref_memory_s*, align 8
  %gmem = alloca %struct.gs_ref_memory_s*, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  %rp_ = alloca %struct.ref_s*, align 8
  %i = alloca i32, align 4
  store %struct.gs_dual_memory_s* %dmem, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.int_gstate_s** %iigs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.ref_s* %proc0 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast %struct.int_remap_color_info_s** %prci to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.gs_ref_memory_s** %lmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %4, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 3
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !5
  store %struct.gs_ref_memory_s* %5, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %6 = bitcast %struct.gs_ref_memory_s** %gmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces1 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %7, i32 0, i32 1
  %memories2 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces1, i32 0, i32 1
  %named3 = bitcast %union.anon* %memories2 to %struct._ssn*
  %global = getelementptr inbounds %struct._ssn, %struct._ssn* %named3, i32 0, i32 2
  %8 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global, align 8, !tbaa !7
  store %struct.gs_ref_memory_s* %8, %struct.gs_ref_memory_s** %gmem, align 8, !tbaa !1
  %9 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %11 = bitcast %struct.gs_ref_memory_s* %10 to %struct.gs_memory_s*
  %call = call %struct.gs_state_s* @gs_state_alloc(%struct.gs_memory_s* %11) #4
  store %struct.gs_state_s* %call, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %12 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %13 = bitcast %struct.gs_ref_memory_s* %12 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %14 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !8
  %15 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %16 = bitcast %struct.gs_ref_memory_s* %15 to %struct.gs_memory_s*
  %call4 = call i8* %14(%struct.gs_memory_s* %16, %struct.gs_memory_struct_type_s* @st_int_gstate, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0)) #4
  %17 = bitcast i8* %call4 to %struct.int_gstate_s*
  store %struct.int_gstate_s* %17, %struct.int_gstate_s** %iigs, align 8, !tbaa !1
  %18 = load %struct.int_gstate_s*, %struct.int_gstate_s** %iigs, align 8, !tbaa !1
  %cmp = icmp eq %struct.int_gstate_s* %18, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gs_state_s* null, %struct.gs_state_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %19 = bitcast %struct.ref_s** %rp_ to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load %struct.int_gstate_s*, %struct.int_gstate_s** %iigs, align 8, !tbaa !1
  %21 = bitcast %struct.int_gstate_s* %20 to %struct.ref_s*
  store %struct.ref_s* %21, %struct.ref_s** %rp_, align 8, !tbaa !1
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  store i32 36, i32* %i, align 4, !tbaa !11
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %23 = load %struct.ref_s*, %struct.ref_s** %rp_, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3584, i16* %type_attrs, align 2, !tbaa !13
  %24 = load %struct.ref_s*, %struct.ref_s** %rp_, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %rp_, align 8, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %25 = load i32, i32* %i, align 4, !tbaa !11
  %dec = add nsw i32 %25, -1
  store i32 %dec, i32* %i, align 4, !tbaa !11
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %26 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast %struct.ref_s** %rp_ to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = load %struct.int_gstate_s*, %struct.int_gstate_s** %iigs, align 8, !tbaa !1
  %dash_pattern_array = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %28, i32 0, i32 0
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %dash_pattern_array, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  store %struct.ref_s* null, %struct.ref_s** %refs, align 8, !tbaa !1
  %29 = load %struct.int_gstate_s*, %struct.int_gstate_s** %iigs, align 8, !tbaa !1
  %dash_pattern_array5 = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %29, i32 0, i32 0
  %tas6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %dash_pattern_array5, i32 0, i32 0
  %type_attrs7 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas6, i32 0, i32 0
  store i16 1136, i16* %type_attrs7, align 2, !tbaa !13
  %30 = load %struct.int_gstate_s*, %struct.int_gstate_s** %iigs, align 8, !tbaa !1
  %dash_pattern_array8 = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %30, i32 0, i32 0
  %tas9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %dash_pattern_array8, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas9, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !17
  %31 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %call10 = call i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s* %31, %struct.ref_s* %proc0, i32 224, i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0)) #4
  %value11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %proc0, i32 0, i32 1
  %refs12 = bitcast %union.v* %value11 to %struct.ref_s**
  %32 = load %struct.ref_s*, %struct.ref_s** %refs12, align 8, !tbaa !1
  %value13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 1
  %opproc = bitcast %union.v* %value13 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @zpop, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %value14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %proc0, i32 0, i32 1
  %refs15 = bitcast %union.v* %value14 to %struct.ref_s**
  %33 = load %struct.ref_s*, %struct.ref_s** %refs15, align 8, !tbaa !1
  %tas16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 0
  %type_attrs17 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas16, i32 0, i32 0
  store i16 3968, i16* %type_attrs17, align 2, !tbaa !13
  %value18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %proc0, i32 0, i32 1
  %refs19 = bitcast %union.v* %value18 to %struct.ref_s**
  %34 = load %struct.ref_s*, %struct.ref_s** %refs19, align 8, !tbaa !1
  %tas20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 0
  %rsize21 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas20, i32 0, i32 2
  store i32 0, i32* %rsize21, align 4, !tbaa !17
  %value22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %proc0, i32 0, i32 1
  %refs23 = bitcast %union.v* %value22 to %struct.ref_s**
  %35 = load %struct.ref_s*, %struct.ref_s** %refs23, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 1
  %value24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %realval = bitcast %union.v* %value24 to float*
  store float 0.000000e+00, float* %realval, align 4, !tbaa !18
  %value25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %proc0, i32 0, i32 1
  %refs26 = bitcast %union.v* %value25 to %struct.ref_s**
  %36 = load %struct.ref_s*, %struct.ref_s** %refs26, align 8, !tbaa !1
  %add.ptr27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 1
  %tas28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr27, i32 0, i32 0
  %type_attrs29 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas28, i32 0, i32 0
  store i16 4096, i16* %type_attrs29, align 2, !tbaa !13
  %37 = load %struct.int_gstate_s*, %struct.int_gstate_s** %iigs, align 8, !tbaa !1
  %black_generation = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %37, i32 0, i32 3
  %38 = bitcast %struct.ref_s* %black_generation to i8*
  %39 = bitcast %struct.ref_s* %proc0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 16, i32 8, i1 false), !tbaa.struct !20
  %40 = load %struct.int_gstate_s*, %struct.int_gstate_s** %iigs, align 8, !tbaa !1
  %undercolor_removal = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %40, i32 0, i32 4
  %41 = bitcast %struct.ref_s* %undercolor_removal to i8*
  %42 = bitcast %struct.ref_s* %proc0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 16, i32 8, i1 false), !tbaa.struct !20
  %43 = load %struct.int_gstate_s*, %struct.int_gstate_s** %iigs, align 8, !tbaa !1
  %use_cie_color = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %43, i32 0, i32 8
  %value30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %use_cie_color, i32 0, i32 1
  %boolval = bitcast %union.v* %value30 to i16*
  store i16 0, i16* %boolval, align 2, !tbaa !21
  %44 = load %struct.int_gstate_s*, %struct.int_gstate_s** %iigs, align 8, !tbaa !1
  %use_cie_color31 = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %44, i32 0, i32 8
  %tas32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %use_cie_color31, i32 0, i32 0
  %type_attrs33 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas32, i32 0, i32 0
  store i16 256, i16* %type_attrs33, align 2, !tbaa !13
  %45 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %gmem, align 8, !tbaa !1
  %46 = bitcast %struct.gs_ref_memory_s* %45 to %struct.gs_memory_s*
  %procs34 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %46, i32 0, i32 1
  %alloc_struct35 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs34, i32 0, i32 8
  %47 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct35, align 8, !tbaa !8
  %48 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %gmem, align 8, !tbaa !1
  %49 = bitcast %struct.gs_ref_memory_s* %48 to %struct.gs_memory_s*
  %call36 = call i8* %47(%struct.gs_memory_s* %49, %struct.gs_memory_struct_type_s* @st_int_remap_color_info, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0)) #4
  %50 = bitcast i8* %call36 to %struct.int_remap_color_info_s*
  store %struct.int_remap_color_info_s* %50, %struct.int_remap_color_info_s** %prci, align 8, !tbaa !1
  %51 = load %struct.int_remap_color_info_s*, %struct.int_remap_color_info_s** %prci, align 8, !tbaa !1
  %cmp37 = icmp eq %struct.int_remap_color_info_s* %51, null
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %do.end
  store %struct.gs_state_s* null, %struct.gs_state_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %do.end
  %52 = load %struct.int_remap_color_info_s*, %struct.int_remap_color_info_s** %prci, align 8, !tbaa !1
  %53 = bitcast %struct.int_remap_color_info_s* %52 to %struct.obj_header_s*
  %54 = load %struct.int_gstate_s*, %struct.int_gstate_s** %iigs, align 8, !tbaa !1
  %remap_color_info = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %54, i32 0, i32 11
  %value40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %remap_color_info, i32 0, i32 1
  %pstruct = bitcast %union.v* %value40 to %struct.obj_header_s**
  store %struct.obj_header_s* %53, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %55 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %gmem, align 8, !tbaa !1
  %call41 = call i32 @imemory_space(%struct.gs_ref_memory_s* %55) #4
  %add = add i32 2048, %call41
  %conv = trunc i32 %add to i16
  %56 = load %struct.int_gstate_s*, %struct.int_gstate_s** %iigs, align 8, !tbaa !1
  %remap_color_info42 = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %56, i32 0, i32 11
  %tas43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %remap_color_info42, i32 0, i32 0
  %type_attrs44 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas43, i32 0, i32 0
  store i16 %conv, i16* %type_attrs44, align 2, !tbaa !13
  %57 = load %struct.int_gstate_s*, %struct.int_gstate_s** %iigs, align 8, !tbaa !1
  %pagedevice = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %57, i32 0, i32 10
  %tas45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %pagedevice, i32 0, i32 0
  %type_attrs46 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas45, i32 0, i32 0
  store i16 3584, i16* %type_attrs46, align 2, !tbaa !13
  %58 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %59 = load %struct.int_gstate_s*, %struct.int_gstate_s** %iigs, align 8, !tbaa !1
  %60 = bitcast %struct.int_gstate_s* %59 to i8*
  call void @gs_state_set_client(%struct.gs_state_s* %58, i8* %60, %struct.gs_state_client_procs_s* @istate_procs, i32 1) #4
  %61 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  call void @gs_setlimitclamp(%struct.gs_state_s* %61, i32 1) #4
  %62 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  store %struct.gs_state_s* %62, %struct.gs_state_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.39, %if.then.38, %if.then
  %63 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast %struct.gs_ref_memory_s** %gmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast %struct.gs_ref_memory_s** %lmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast %struct.int_remap_color_info_s** %prci to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast %struct.ref_s* %proc0 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %67) #1
  %68 = bitcast %struct.int_gstate_s** %iigs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = load %struct.gs_state_s*, %struct.gs_state_s** %retval
  ret %struct.gs_state_s* %69
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare %struct.gs_state_s* @gs_state_alloc(%struct.gs_memory_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s*, %struct.ref_s*, i32, i32, i8*) #2

declare i32 @zpop(%struct.gs_context_state_s*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @imemory_space(%struct.gs_ref_memory_s*) #2

declare void @gs_state_set_client(%struct.gs_state_s*, i8*, %struct.gs_state_client_procs_s*, i32) #2

declare void @gs_setlimitclamp(%struct.gs_state_s*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @zgsave(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !24
  %call = call i32 @gs_gsave(%struct.gs_state_s* %1) #4
  ret i32 %call
}

declare i32 @gs_gsave(%struct.gs_state_s*) #2

; Function Attrs: nounwind uwtable
define i32 @zgrestore(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !24
  %call = call i32 @gs_grestore(%struct.gs_state_s* %1) #4
  ret i32 %call
}

declare i32 @gs_grestore(%struct.gs_state_s*) #2

; Function Attrs: nounwind uwtable
define i32 @zgrestoreall(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !24
  %call = call i32 @gs_grestoreall(%struct.gs_state_s* %1) #4
  ret i32 %call
}

declare i32 @gs_grestoreall(%struct.gs_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @zcurrentaccuratecurves(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @zcurrent_bool(%struct.gs_context_state_s* %0, i32 (%struct.gs_state_s*)* @gs_currentaccuratecurves) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zcurrentcurvejoin(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !33
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
  %5 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !34
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !35
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  store %struct.ref_s* %7, %struct.ref_s** %p7, align 8, !tbaa !33
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 0
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !24
  %call = call i32 @gs_currentcurvejoin(%struct.gs_state_s* %10) #4
  %conv = sext i32 %call to i64
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  store i64 %conv, i64* %intval, align 8, !tbaa !22
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !13
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
define internal i32 @zcurrentdash(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !33
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 2
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %5 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !34
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 2, i32* %requested, align 4, !tbaa !35
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  store %struct.ref_s* %7, %struct.ref_s** %p7, align 8, !tbaa !33
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 0
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !24
  %call = call i8* @gs_state_client_data(%struct.gs_state_s* %11) #4
  %12 = bitcast i8* %call to %struct.int_gstate_s*
  %dash_pattern_array = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %12, i32 0, i32 0
  %13 = bitcast %struct.ref_s* %add.ptr8 to i8*
  %14 = bitcast %struct.ref_s* %dash_pattern_array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 16, i32 8, i1 false), !tbaa.struct !20
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs9 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 0
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs9, align 8, !tbaa !24
  %call10 = call float @gs_currentdash_offset(%struct.gs_state_s* %16) #4
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  %realval = bitcast %union.v* %value to float*
  store float %call10, float* %realval, align 4, !tbaa !18
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 4096, i16* %type_attrs, align 2, !tbaa !13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %19 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @zcurrentdashadapt(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @zcurrent_bool(%struct.gs_context_state_s* %0, i32 (%struct.gs_state_s*)* @gs_currentdashadapt) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zcurrentdotlength(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !33
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 2
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %5 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !34
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 2, i32* %requested, align 4, !tbaa !35
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  store %struct.ref_s* %7, %struct.ref_s** %p7, align 8, !tbaa !33
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 0
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !24
  %call = call float @gs_currentdotlength(%struct.gs_state_s* %10) #4
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr8, i32 0, i32 1
  %realval = bitcast %union.v* %value to float*
  store float %call, float* %realval, align 4, !tbaa !18
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr9, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 4096, i16* %type_attrs, align 2, !tbaa !13
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 0
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs10, align 8, !tbaa !24
  %call11 = call i32 @gs_currentdotlength_absolute(%struct.gs_state_s* %14) #4
  %conv = trunc i32 %call11 to i16
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 1
  %boolval = bitcast %union.v* %value12 to i16*
  store i16 %conv, i16* %boolval, align 2, !tbaa !21
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %type_attrs14 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas13, i32 0, i32 0
  store i16 256, i16* %type_attrs14, align 2, !tbaa !13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %17 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @zcurrentfilladjust2(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %adjust = alloca %struct.gs_point_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !33
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_point_s* %adjust to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 2
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %6 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !34
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 2, i32* %requested, align 4, !tbaa !35
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  store %struct.ref_s* %8, %struct.ref_s** %p7, align 8, !tbaa !33
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 0
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !24
  %call = call i32 @gs_currentfilladjust(%struct.gs_state_s* %11, %struct.gs_point_s* %adjust) #4
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %adjust, i32 0, i32 0
  %12 = load double, double* %x, align 8, !tbaa !36
  %conv = fptrunc double %12 to float
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr8, i32 0, i32 1
  %realval = bitcast %union.v* %value to float*
  store float %conv, float* %realval, align 4, !tbaa !18
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr9, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 4096, i16* %type_attrs, align 2, !tbaa !13
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %adjust, i32 0, i32 1
  %15 = load double, double* %y, align 8, !tbaa !39
  %conv10 = fptrunc double %15 to float
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 1
  %realval12 = bitcast %union.v* %value11 to float*
  store float %conv10, float* %realval12, align 4, !tbaa !18
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %type_attrs14 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas13, i32 0, i32 0
  store i16 4096, i16* %type_attrs14, align 2, !tbaa !13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %18 = bitcast %struct.gs_point_s* %adjust to i8*
  call void @llvm.lifetime.end(i64 16, i8* %18) #1
  %19 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @zcurrentflat(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !33
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
  %5 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !34
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !35
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  store %struct.ref_s* %7, %struct.ref_s** %p7, align 8, !tbaa !33
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 0
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !24
  %call = call float @gs_currentflat(%struct.gs_state_s* %10) #4
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %realval = bitcast %union.v* %value to float*
  store float %call, float* %realval, align 4, !tbaa !18
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 4096, i16* %type_attrs, align 2, !tbaa !13
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
define internal i32 @zcurrentlimitclamp(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @zcurrent_bool(%struct.gs_context_state_s* %0, i32 (%struct.gs_state_s*)* @gs_currentlimitclamp) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zcurrentlinecap(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !33
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
  %5 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !34
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !35
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  store %struct.ref_s* %7, %struct.ref_s** %p7, align 8, !tbaa !33
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 0
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !24
  %call = call i32 @gs_currentlinecap(%struct.gs_state_s* %10) #4
  %conv = sext i32 %call to i64
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  store i64 %conv, i64* %intval, align 8, !tbaa !22
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !13
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
define internal i32 @zcurrentlinejoin(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !33
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
  %5 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !34
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !35
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  store %struct.ref_s* %7, %struct.ref_s** %p7, align 8, !tbaa !33
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 0
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !24
  %call = call i32 @gs_currentlinejoin(%struct.gs_state_s* %10) #4
  %conv = sext i32 %call to i64
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  store i64 %conv, i64* %intval, align 8, !tbaa !22
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !13
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
define internal i32 @zcurrentlinewidth(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !33
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
  %5 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !34
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !35
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  store %struct.ref_s* %7, %struct.ref_s** %p7, align 8, !tbaa !33
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 0
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !24
  %call = call float @gs_currentlinewidth(%struct.gs_state_s* %10) #4
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %realval = bitcast %union.v* %value to float*
  store float %call, float* %realval, align 4, !tbaa !18
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 4096, i16* %type_attrs, align 2, !tbaa !13
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
define internal i32 @zcurrentmiterlimit(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !33
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
  %5 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !34
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !35
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  store %struct.ref_s* %7, %struct.ref_s** %p7, align 8, !tbaa !33
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 0
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !24
  %call = call float @gs_currentmiterlimit(%struct.gs_state_s* %10) #4
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %realval = bitcast %union.v* %value to float*
  store float %call, float* %realval, align 4, !tbaa !18
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 4096, i16* %type_attrs, align 2, !tbaa !13
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
define internal i32 @zdotorientation(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !24
  %call = call i32 @gs_dotorientation(%struct.gs_state_s* %1) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zinitgraphics(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !24
  %call = call i8* @gs_state_client_data(%struct.gs_state_s* %1) #4
  %2 = bitcast i8* %call to %struct.int_gstate_s*
  %dash_pattern_array = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %2, i32 0, i32 0
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %dash_pattern_array, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  store %struct.ref_s* null, %struct.ref_s** %refs, align 8, !tbaa !1
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %3, i32 0, i32 0
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8, !tbaa !24
  %call2 = call i8* @gs_state_client_data(%struct.gs_state_s* %4) #4
  %5 = bitcast i8* %call2 to %struct.int_gstate_s*
  %dash_pattern_array3 = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %5, i32 0, i32 0
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %dash_pattern_array3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 1136, i16* %type_attrs, align 2, !tbaa !13
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 0
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs4, align 8, !tbaa !24
  %call5 = call i8* @gs_state_client_data(%struct.gs_state_s* %7) #4
  %8 = bitcast i8* %call5 to %struct.int_gstate_s*
  %dash_pattern_array6 = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %8, i32 0, i32 0
  %tas7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %dash_pattern_array6, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas7, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !17
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs8 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 0
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs8, align 8, !tbaa !24
  %call9 = call i32 @gs_initgraphics(%struct.gs_state_s* %10) #4
  ret i32 %call9
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetaccuratecurves(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @zset_bool(%struct.gs_context_state_s* %0, void (%struct.gs_state_s*, i32)* @gs_setaccuratecurves) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetcurvejoin(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !33
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !40
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %7) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %9 = load i64, i64* %intval, align 8, !tbaa !22
  %cmp2 = icmp slt i64 %9, -1
  br i1 %cmp2, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %intval5 = bitcast %union.v* %value4 to i64*
  %11 = load i64, i64* %intval5, align 8, !tbaa !22
  %cmp6 = icmp sgt i64 %11, 2147483647
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %lor.lhs.false
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 0
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !24
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  %intval11 = bitcast %union.v* %value10 to i64*
  %15 = load i64, i64* %intval11, align 8, !tbaa !22
  %conv12 = trunc i64 %15 to i32
  %call13 = call i32 @gs_setcurvejoin(%struct.gs_state_s* %13, i32 %conv12) #4
  store i32 %call13, i32* %code, align 4, !tbaa !11
  %16 = load i32, i32* %code, align 4, !tbaa !11
  %cmp14 = icmp slt i32 %16, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.9
  %17 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end.9
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack18 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 26
  %stack19 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack18, i32 0, i32 0
  %p20 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack19, i32 0, i32 0
  %19 = load %struct.ref_s*, %struct.ref_s** %p20, align 8, !tbaa !33
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p20, align 8, !tbaa !33
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then.16, %if.then.8, %if.then
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetdash(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %op1 = alloca %struct.ref_s*, align 8
  %offset = alloca double, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %pattern = alloca float*, align 8
  %cleanup.dest.slot = alloca i32
  %element = alloca %struct.ref_s, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !33
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %op1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op1, align 8, !tbaa !1
  %5 = bitcast double* %offset to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @real_param(%struct.ref_s* %7, double* %offset) #4
  store i32 %call, i32* %code, align 4, !tbaa !11
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %12 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !41
  %13 = bitcast %struct.gs_ref_memory_s* %12 to %struct.gs_memory_s*
  store %struct.gs_memory_s* %13, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %14 = bitcast float** %pattern to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load i32, i32* %code, align 4, !tbaa !11
  %cmp = icmp slt i32 %15, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call1 = call i32 @check_type_failed(%struct.ref_s* %16) #4
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %18 = load i16, i16* %type_attrs, align 2, !tbaa !13
  %conv = zext i16 %18 to i32
  %and = and i32 %conv, 15360
  %cmp2 = icmp eq i32 %and, 1024
  br i1 %cmp2, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %19 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %call5 = call i32 @check_type_failed(%struct.ref_s* %19) #4
  store i32 %call5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %20 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %tas7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas7, i32 0, i32 2
  %21 = load i32, i32* %rsize, align 4, !tbaa !17
  store i32 %21, i32* %n, align 4, !tbaa !11
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %23 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !42
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %25 = load i32, i32* %n, align 4, !tbaa !11
  %call8 = call i8* %23(%struct.gs_memory_s* %24, i32 %25, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0)) #4
  %26 = bitcast i8* %call8 to float*
  store float* %26, float** %pattern, align 8, !tbaa !1
  %27 = load float*, float** %pattern, align 8, !tbaa !1
  %cmp9 = icmp eq float* %27, null
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.6
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.6
  store i32 0, i32* %i, align 4, !tbaa !11
  store i32 0, i32* %code, align 4, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.12
  %28 = load i32, i32* %i, align 4, !tbaa !11
  %29 = load i32, i32* %n, align 4, !tbaa !11
  %cmp13 = icmp ult i32 %28, %29
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %30 = load i32, i32* %code, align 4, !tbaa !11
  %cmp15 = icmp sge i32 %30, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %31 = phi i1 [ false, %for.cond ], [ %cmp15, %land.rhs ]
  br i1 %31, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %32 = bitcast %struct.ref_s* %element to i8*
  call void @llvm.lifetime.start(i64 16, i8* %32) #1
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %34 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %35 = load i32, i32* %i, align 4, !tbaa !11
  %conv17 = zext i32 %35 to i64
  %call18 = call i32 @array_get(%struct.gs_memory_s* %33, %struct.ref_s* %34, i64 %conv17, %struct.ref_s* %element) #4
  %36 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom = zext i32 %36 to i64
  %37 = load float*, float** %pattern, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %37, i64 %idxprom
  %call19 = call i32 @float_param(%struct.ref_s* %element, float* %arrayidx) #4
  store i32 %call19, i32* %code, align 4, !tbaa !11
  %38 = bitcast %struct.ref_s* %element to i8*
  call void @llvm.lifetime.end(i64 16, i8* %38) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, i32* %i, align 4, !tbaa !11
  %inc = add i32 %39, 1
  store i32 %inc, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.end:                                          ; preds = %land.end
  %40 = load i32, i32* %code, align 4, !tbaa !11
  %cmp20 = icmp sge i32 %40, 0
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %for.end
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 0
  %42 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !24
  %43 = load float*, float** %pattern, align 8, !tbaa !1
  %44 = load i32, i32* %n, align 4, !tbaa !11
  %45 = load double, double* %offset, align 8, !tbaa !43
  %call23 = call i32 @gs_setdash(%struct.gs_state_s* %42, float* %43, i32 %44, double %45) #4
  store i32 %call23, i32* %code, align 4, !tbaa !11
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %for.end
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs25 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %46, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs25, i32 0, i32 2
  %47 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !44
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %49 = load float*, float** %pattern, align 8, !tbaa !1
  %50 = bitcast float* %49 to i8*
  call void %47(%struct.gs_memory_s* %48, i8* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0)) #4
  %51 = load i32, i32* %code, align 4, !tbaa !11
  %cmp26 = icmp slt i32 %51, 0
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.24
  %52 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %52, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.end.24
  %53 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs30 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %53, i32 0, i32 0
  %54 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs30, align 8, !tbaa !24
  %call31 = call i8* @gs_state_client_data(%struct.gs_state_s* %54) #4
  %55 = bitcast i8* %call31 to %struct.int_gstate_s*
  %dash_pattern_array = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %55, i32 0, i32 0
  %56 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %57 = bitcast %struct.ref_s* %dash_pattern_array to i8*
  %58 = bitcast %struct.ref_s* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %58, i64 16, i32 8, i1 false), !tbaa.struct !20
  %59 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack32 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %59, i32 0, i32 26
  %stack33 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack32, i32 0, i32 0
  %p34 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack33, i32 0, i32 0
  %60 = load %struct.ref_s*, %struct.ref_s** %p34, align 8, !tbaa !33
  %add.ptr35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %60, i64 -2
  store %struct.ref_s* %add.ptr35, %struct.ref_s** %p34, align 8, !tbaa !33
  %61 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %61, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.29, %if.then.28, %if.then.11, %if.then.4, %if.then
  %62 = bitcast float** %pattern to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast double* %offset to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast %struct.ref_s** %op1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = load i32, i32* %retval
  ret i32 %70
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetdashadapt(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @zset_bool(%struct.gs_context_state_s* %0, void (%struct.gs_state_s*, i32)* @gs_setdashadapt) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetdotlength(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %length = alloca double, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !33
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast double* %length to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -1
  %call = call i32 @real_param(%struct.ref_s* %add.ptr, double* %length) #4
  store i32 %call, i32* %code, align 4, !tbaa !11
  %6 = load i32, i32* %code, align 4, !tbaa !11
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %9 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx, align 1, !tbaa !40
  %conv = zext i8 %10 to i32
  %cmp1 = icmp eq i32 %conv, 1
  br i1 %cmp1, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call4 = call i32 @check_type_failed(%struct.ref_s* %11) #4
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 0
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !24
  %14 = load double, double* %length, align 8, !tbaa !43
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  %16 = load i16, i16* %boolval, align 2, !tbaa !21
  %conv6 = zext i16 %16 to i32
  %call7 = call i32 @gs_setdotlength(%struct.gs_state_s* %13, double %14, i32 %conv6) #4
  store i32 %call7, i32* %code, align 4, !tbaa !11
  %17 = load i32, i32* %code, align 4, !tbaa !11
  %cmp8 = icmp slt i32 %17, 0
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.5
  %18 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.5
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack12 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 26
  %stack13 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack12, i32 0, i32 0
  %p14 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack13, i32 0, i32 0
  %20 = load %struct.ref_s*, %struct.ref_s** %p14, align 8, !tbaa !33
  %add.ptr15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -2
  store %struct.ref_s* %add.ptr15, %struct.ref_s** %p14, align 8, !tbaa !33
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.10, %if.then.3, %if.then
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast double* %length to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetdotorientation(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !24
  %call = call i32 @gs_setdotorientation(%struct.gs_state_s* %1) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetfilladjust2(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %adjust = alloca [2 x double], align 16
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !33
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast [2 x double]* %adjust to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [2 x double], [2 x double]* %adjust, i32 0, i32 0
  %call = call i32 @num_params(%struct.ref_s* %5, i32 2, double* %arraydecay) #4
  store i32 %call, i32* %code, align 4, !tbaa !11
  %6 = load i32, i32* %code, align 4, !tbaa !11
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 0
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !24
  %arrayidx = getelementptr inbounds [2 x double], [2 x double]* %adjust, i32 0, i64 0
  %10 = load double, double* %arrayidx, align 8, !tbaa !43
  %arrayidx1 = getelementptr inbounds [2 x double], [2 x double]* %adjust, i32 0, i64 1
  %11 = load double, double* %arrayidx1, align 8, !tbaa !43
  %call2 = call i32 @gs_setfilladjust(%struct.gs_state_s* %9, double %10, double %11) #4
  store i32 %call2, i32* %code, align 4, !tbaa !11
  %12 = load i32, i32* %code, align 4, !tbaa !11
  %cmp3 = icmp slt i32 %12, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %13 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 26
  %stack7 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack6, i32 0, i32 0
  %p8 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack7, i32 0, i32 0
  %15 = load %struct.ref_s*, %struct.ref_s** %p8, align 8, !tbaa !33
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -2
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p8, align 8, !tbaa !33
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast [2 x double]* %adjust to i8*
  call void @llvm.lifetime.end(i64 16, i8* %17) #1
  %18 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetlimitclamp(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @zset_bool(%struct.gs_context_state_s* %0, void (%struct.gs_state_s*, i32)* @gs_setlimitclamp) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetflat(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @zset_real(%struct.gs_context_state_s* %0, i32 (%struct.gs_state_s*, double)* @gs_setflat) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetlinecap(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %param = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !33
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %param to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @int_param(%struct.ref_s* %5, i32 2147483647, i32* %param) #4
  store i32 %call, i32* %code, align 4, !tbaa !11
  %6 = load i32, i32* %code, align 4, !tbaa !11
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 0
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !24
  %9 = load i32, i32* %param, align 4, !tbaa !11
  %call1 = call i32 @gs_setlinecap(%struct.gs_state_s* %8, i32 %9) #4
  store i32 %call1, i32* %code, align 4, !tbaa !11
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %10 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %p5 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 0
  %12 = load %struct.ref_s*, %struct.ref_s** %p5, align 8, !tbaa !33
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p5, align 8, !tbaa !33
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast i32* %param to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetlinejoin(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %param = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !33
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %param to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @int_param(%struct.ref_s* %5, i32 2147483647, i32* %param) #4
  store i32 %call, i32* %code, align 4, !tbaa !11
  %6 = load i32, i32* %code, align 4, !tbaa !11
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 0
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !24
  %9 = load i32, i32* %param, align 4, !tbaa !11
  %call1 = call i32 @gs_setlinejoin(%struct.gs_state_s* %8, i32 %9) #4
  store i32 %call1, i32* %code, align 4, !tbaa !11
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %10 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %p5 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 0
  %12 = load %struct.ref_s*, %struct.ref_s** %p5, align 8, !tbaa !33
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p5, align 8, !tbaa !33
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast i32* %param to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetlinewidth(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %width = alloca double, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !33
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast double* %width to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @real_param(%struct.ref_s* %5, double* %width) #4
  store i32 %call, i32* %code, align 4, !tbaa !11
  %6 = load i32, i32* %code, align 4, !tbaa !11
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call1 = call i32 @check_type_failed(%struct.ref_s* %7) #4
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 0
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !24
  %10 = load double, double* %width, align 8, !tbaa !43
  %call2 = call double @fabs(double %10) #5
  %call3 = call i32 @gs_setlinewidth(%struct.gs_state_s* %9, double %call2) #4
  store i32 %call3, i32* %code, align 4, !tbaa !11
  %11 = load i32, i32* %code, align 4, !tbaa !11
  %cmp4 = icmp sge i32 %11, 0
  br i1 %cmp4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.end
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 26
  %stack7 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack6, i32 0, i32 0
  %p8 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack7, i32 0, i32 0
  %13 = load %struct.ref_s*, %struct.ref_s** %p8, align 8, !tbaa !33
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p8, align 8, !tbaa !33
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.5, %if.end
  %14 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast double* %width to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetmiterlimit(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @zset_real(%struct.gs_context_state_s* %0, i32 (%struct.gs_state_s*, double)* @gs_setmiterlimit) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zsettextrenderingmode(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @zset_uint(%struct.gs_context_state_s* %0, void (%struct.gs_state_s*, i32)* @gs_settextrenderingmode) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zcurrenttextrenderingmode(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @zcurrent_uint(%struct.gs_context_state_s* %0, i32 (%struct.gs_state_s*)* @gs_currenttextrenderingmode) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zsethpglpathmode(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @zset_bool(%struct.gs_context_state_s* %0, void (%struct.gs_state_s*, i32)* @gs_sethpglpathmode) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zcurrenthpglpathmode(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @zcurrent_bool(%struct.gs_context_state_s* %0, i32 (%struct.gs_state_s*)* @gs_currenthpglpathmode) #4
  ret i32 %call
}

declare void @ref_struct_clear_marks(%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*) #2

declare %struct.gs_ptr_procs_s* @ref_struct_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @ref_struct_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare %struct.gs_ptr_procs_s* @gs_no_struct_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @gs_no_struct_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i8* @gs_istate_alloc(%struct.gs_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %1 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !8
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %1(%struct.gs_memory_s* %2, %struct.gs_memory_struct_type_s* @st_int_gstate, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0)) #4
  %3 = bitcast i8* %call to %struct.int_gstate_s*
  %4 = bitcast %struct.int_gstate_s* %3 to i8*
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_istate_copy(i8* %to, i8* %from) #0 {
entry:
  %to.addr = alloca i8*, align 8
  %from.addr = alloca i8*, align 8
  store i8* %to, i8** %to.addr, align 8, !tbaa !1
  store i8* %from, i8** %from.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %to.addr, align 8, !tbaa !1
  %1 = bitcast i8* %0 to %struct.int_gstate_s*
  %2 = load i8*, i8** %from.addr, align 8, !tbaa !1
  %3 = bitcast i8* %2 to %struct.int_gstate_s*
  %4 = bitcast %struct.int_gstate_s* %1 to i8*
  %5 = bitcast %struct.int_gstate_s* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 576, i32 8, i1 false), !tbaa.struct !45
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @gs_istate_free(i8* %old, %struct.gs_memory_s* %mem) #0 {
entry:
  %old.addr = alloca i8*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store i8* %old, i8** %old.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %1 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !44
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %old.addr, align 8, !tbaa !1
  call void %1(%struct.gs_memory_s* %2, i8* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i32 0, i32 0)) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @zcurrent_bool(%struct.gs_context_state_s* %i_ctx_p, i32 (%struct.gs_state_s*)* %current_proc) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %current_proc.addr = alloca i32 (%struct.gs_state_s*)*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 (%struct.gs_state_s*)* %current_proc, i32 (%struct.gs_state_s*)** %current_proc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !33
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
  %5 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !34
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !35
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  store %struct.ref_s* %7, %struct.ref_s** %p7, align 8, !tbaa !33
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load i32 (%struct.gs_state_s*)*, i32 (%struct.gs_state_s*)** %current_proc.addr, align 8, !tbaa !1
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 0
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !24
  %call = call i32 %9(%struct.gs_state_s* %11) #4
  %conv = trunc i32 %call to i16
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  store i16 %conv, i16* %boolval, align 2, !tbaa !21
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 256, i16* %type_attrs, align 2, !tbaa !13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %14 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i32 @gs_currentaccuratecurves(%struct.gs_state_s*) #2

declare i32 @gs_currentcurvejoin(%struct.gs_state_s*) #2

declare i8* @gs_state_client_data(%struct.gs_state_s*) #2

declare float @gs_currentdash_offset(%struct.gs_state_s*) #2

declare i32 @gs_currentdashadapt(%struct.gs_state_s*) #2

declare float @gs_currentdotlength(%struct.gs_state_s*) #2

declare i32 @gs_currentdotlength_absolute(%struct.gs_state_s*) #2

declare i32 @gs_currentfilladjust(%struct.gs_state_s*, %struct.gs_point_s*) #2

declare float @gs_currentflat(%struct.gs_state_s*) #2

declare i32 @gs_currentlimitclamp(%struct.gs_state_s*) #2

declare i32 @gs_currentlinecap(%struct.gs_state_s*) #2

declare i32 @gs_currentlinejoin(%struct.gs_state_s*) #2

declare float @gs_currentlinewidth(%struct.gs_state_s*) #2

declare float @gs_currentmiterlimit(%struct.gs_state_s*) #2

declare i32 @gs_dotorientation(%struct.gs_state_s*) #2

declare i32 @gs_initgraphics(%struct.gs_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @zset_bool(%struct.gs_context_state_s* %i_ctx_p, void (%struct.gs_state_s*, i32)* %set_proc) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %set_proc.addr = alloca void (%struct.gs_state_s*, i32)*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store void (%struct.gs_state_s*, i32)* %set_proc, void (%struct.gs_state_s*, i32)** %set_proc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !33
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
  %call = call i32 @check_type_failed(%struct.ref_s* %6) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load void (%struct.gs_state_s*, i32)*, void (%struct.gs_state_s*, i32)** %set_proc.addr, align 8, !tbaa !1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 0
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !24
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  %11 = load i16, i16* %boolval, align 2, !tbaa !21
  %conv2 = zext i16 %11 to i32
  call void %7(%struct.gs_state_s* %9, i32 %conv2) #4
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %p5 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 0
  %13 = load %struct.ref_s*, %struct.ref_s** %p5, align 8, !tbaa !33
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p5, align 8, !tbaa !33
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %14 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare void @gs_setaccuratecurves(%struct.gs_state_s*, i32) #2

declare i32 @check_type_failed(%struct.ref_s*) #2

declare i32 @gs_setcurvejoin(%struct.gs_state_s*, i32) #2

declare i32 @real_param(%struct.ref_s*, double*) #2

declare i32 @array_get(%struct.gs_memory_s*, %struct.ref_s*, i64, %struct.ref_s*) #2

declare i32 @float_param(%struct.ref_s*, float*) #2

declare i32 @gs_setdash(%struct.gs_state_s*, float*, i32, double) #2

declare void @gs_setdashadapt(%struct.gs_state_s*, i32) #2

declare i32 @gs_setdotlength(%struct.gs_state_s*, double, i32) #2

declare i32 @gs_setdotorientation(%struct.gs_state_s*) #2

declare i32 @num_params(%struct.ref_s*, i32, double*) #2

declare i32 @gs_setfilladjust(%struct.gs_state_s*, double, double) #2

; Function Attrs: nounwind uwtable
define internal i32 @zset_real(%struct.gs_context_state_s* %i_ctx_p, i32 (%struct.gs_state_s*, double)* %set_proc) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %set_proc.addr = alloca i32 (%struct.gs_state_s*, double)*, align 8
  %op = alloca %struct.ref_s*, align 8
  %param = alloca double, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 (%struct.gs_state_s*, double)* %set_proc, i32 (%struct.gs_state_s*, double)** %set_proc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !33
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast double* %param to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @real_param(%struct.ref_s* %5, double* %param) #4
  store i32 %call, i32* %code, align 4, !tbaa !11
  %6 = load i32, i32* %code, align 4, !tbaa !11
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call1 = call i32 @check_type_failed(%struct.ref_s* %7) #4
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i32 (%struct.gs_state_s*, double)*, i32 (%struct.gs_state_s*, double)** %set_proc.addr, align 8, !tbaa !1
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 0
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !24
  %11 = load double, double* %param, align 8, !tbaa !43
  %call2 = call i32 %8(%struct.gs_state_s* %10, double %11) #4
  store i32 %call2, i32* %code, align 4, !tbaa !11
  %12 = load i32, i32* %code, align 4, !tbaa !11
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.end.7, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 26
  %stack5 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack4, i32 0, i32 0
  %p6 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack5, i32 0, i32 0
  %14 = load %struct.ref_s*, %struct.ref_s** %p6, align 8, !tbaa !33
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p6, align 8, !tbaa !33
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.3, %if.end
  %15 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast double* %param to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = load i32, i32* %retval
  ret i32 %19
}

declare i32 @gs_setflat(%struct.gs_state_s*, double) #2

declare i32 @int_param(%struct.ref_s*, i32, i32*) #2

declare i32 @gs_setlinecap(%struct.gs_state_s*, i32) #2

declare i32 @gs_setlinejoin(%struct.gs_state_s*, i32) #2

declare i32 @gs_setlinewidth(%struct.gs_state_s*, double) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

declare i32 @gs_setmiterlimit(%struct.gs_state_s*, double) #2

; Function Attrs: nounwind uwtable
define internal i32 @zset_uint(%struct.gs_context_state_s* %i_ctx_p, void (%struct.gs_state_s*, i32)* %set_proc) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %set_proc.addr = alloca void (%struct.gs_state_s*, i32)*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store void (%struct.gs_state_s*, i32)* %set_proc, void (%struct.gs_state_s*, i32)** %set_proc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !33
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !40
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %6) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load void (%struct.gs_state_s*, i32)*, void (%struct.gs_state_s*, i32)** %set_proc.addr, align 8, !tbaa !1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 0
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !24
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %11 = load i64, i64* %intval, align 8, !tbaa !22
  %conv2 = trunc i64 %11 to i32
  call void %7(%struct.gs_state_s* %9, i32 %conv2) #4
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %p5 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 0
  %13 = load %struct.ref_s*, %struct.ref_s** %p5, align 8, !tbaa !33
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p5, align 8, !tbaa !33
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %14 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare void @gs_settextrenderingmode(%struct.gs_state_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @zcurrent_uint(%struct.gs_context_state_s* %i_ctx_p, i32 (%struct.gs_state_s*)* %current_proc) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %current_proc.addr = alloca i32 (%struct.gs_state_s*)*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 (%struct.gs_state_s*)* %current_proc, i32 (%struct.gs_state_s*)** %current_proc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !33
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
  %5 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !34
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !35
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  store %struct.ref_s* %7, %struct.ref_s** %p7, align 8, !tbaa !33
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load i32 (%struct.gs_state_s*)*, i32 (%struct.gs_state_s*)** %current_proc.addr, align 8, !tbaa !1
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 0
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !24
  %call = call i32 %9(%struct.gs_state_s* %11) #4
  %conv = zext i32 %call to i64
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  store i64 %conv, i64* %intval, align 8, !tbaa !22
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %14 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i32 @gs_currenttextrenderingmode(%struct.gs_state_s*) #2

declare void @gs_sethpglpathmode(%struct.gs_state_s*, i32) #2

declare i32 @gs_currenthpglpathmode(%struct.gs_state_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 24}
!6 = !{!"_ssn", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!7 = !{!6, !2, i64 16}
!8 = !{!9, !2, i64 72}
!9 = !{!"gs_memory_s", !2, i64 0, !10, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!10 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !3, i64 0}
!13 = !{!14, !16, i64 0}
!14 = !{!"ref_s", !15, i64 0, !3, i64 8}
!15 = !{!"tas_s", !16, i64 0, !16, i64 2, !12, i64 4}
!16 = !{!"short", !3, i64 0}
!17 = !{!14, !12, i64 4}
!18 = !{!19, !19, i64 0}
!19 = !{!"float", !3, i64 0}
!20 = !{i64 0, i64 2, !21, i64 2, i64 2, !21, i64 4, i64 4, !11, i64 8, i64 8, !22, i64 8, i64 2, !21, i64 8, i64 4, !18, i64 8, i64 8, !22, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !22}
!21 = !{!16, !16, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"long", !3, i64 0}
!24 = !{!25, !2, i64 0}
!25 = !{!"gs_context_state_s", !2, i64 0, !26, i64 8, !12, i64 80, !14, i64 88, !14, i64 104, !23, i64 120, !23, i64 128, !23, i64 136, !12, i64 144, !12, i64 148, !14, i64 152, !14, i64 168, !12, i64 184, !12, i64 188, !12, i64 192, !12, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !28, i64 264, !28, i64 304, !2, i64 344, !12, i64 352, !2, i64 360, !29, i64 368, !31, i64 520, !32, i64 624, !2, i64 720}
!26 = !{!"gs_dual_memory_s", !2, i64 0, !27, i64 8, !12, i64 48, !2, i64 56, !12, i64 64, !12, i64 68}
!27 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!28 = !{!"op_array_table_s", !14, i64 0, !2, i64 16, !12, i64 24, !12, i64 28, !12, i64 32}
!29 = !{!"dict_stack_s", !30, i64 0, !12, i64 96, !12, i64 100, !12, i64 104, !2, i64 112, !12, i64 120, !2, i64 128, !14, i64 136}
!30 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !14, i64 24, !12, i64 40, !12, i64 44, !14, i64 48, !12, i64 64, !12, i64 68, !12, i64 72, !2, i64 80, !2, i64 88}
!31 = !{!"exec_stack_s", !30, i64 0, !2, i64 96}
!32 = !{!"op_stack_s", !30, i64 0}
!33 = !{!25, !2, i64 624}
!34 = !{!25, !2, i64 640}
!35 = !{!25, !12, i64 688}
!36 = !{!37, !38, i64 0}
!37 = !{!"gs_point_s", !38, i64 0, !38, i64 8}
!38 = !{!"double", !3, i64 0}
!39 = !{!37, !38, i64 8}
!40 = !{!3, !3, i64 0}
!41 = !{!25, !2, i64 8}
!42 = !{!9, !2, i64 88}
!43 = !{!38, !38, i64 0}
!44 = !{!9, !2, i64 24}
!45 = !{i64 0, i64 2, !21, i64 2, i64 2, !21, i64 4, i64 4, !11, i64 8, i64 8, !22, i64 8, i64 2, !21, i64 8, i64 4, !18, i64 8, i64 8, !22, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !22, i64 16, i64 2, !21, i64 18, i64 2, !21, i64 20, i64 4, !11, i64 24, i64 8, !22, i64 24, i64 2, !21, i64 24, i64 4, !18, i64 24, i64 8, !22, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !22, i64 32, i64 2, !21, i64 34, i64 2, !21, i64 36, i64 4, !11, i64 40, i64 8, !22, i64 40, i64 2, !21, i64 40, i64 4, !18, i64 40, i64 8, !22, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !22, i64 48, i64 2, !21, i64 50, i64 2, !21, i64 52, i64 4, !11, i64 56, i64 8, !22, i64 56, i64 2, !21, i64 56, i64 4, !18, i64 56, i64 8, !22, i64 56, i64 8, !1, i64 56, i64 8, !1, i64 56, i64 8, !1, i64 56, i64 8, !1, i64 56, i64 8, !1, i64 56, i64 8, !1, i64 56, i64 8, !1, i64 56, i64 8, !1, i64 56, i64 8, !1, i64 56, i64 8, !1, i64 56, i64 8, !1, i64 56, i64 8, !1, i64 56, i64 8, !1, i64 56, i64 8, !1, i64 56, i64 8, !22, i64 64, i64 2, !21, i64 66, i64 2, !21, i64 68, i64 4, !11, i64 72, i64 8, !22, i64 72, i64 2, !21, i64 72, i64 4, !18, i64 72, i64 8, !22, i64 72, i64 8, !1, i64 72, i64 8, !1, i64 72, i64 8, !1, i64 72, i64 8, !1, i64 72, i64 8, !1, i64 72, i64 8, !1, i64 72, i64 8, !1, i64 72, i64 8, !1, i64 72, i64 8, !1, i64 72, i64 8, !1, i64 72, i64 8, !1, i64 72, i64 8, !1, i64 72, i64 8, !1, i64 72, i64 8, !1, i64 72, i64 8, !22, i64 80, i64 2, !21, i64 82, i64 2, !21, i64 84, i64 4, !11, i64 88, i64 8, !22, i64 88, i64 2, !21, i64 88, i64 4, !18, i64 88, i64 8, !22, i64 88, i64 8, !1, i64 88, i64 8, !1, i64 88, i64 8, !1, i64 88, i64 8, !1, i64 88, i64 8, !1, i64 88, i64 8, !1, i64 88, i64 8, !1, i64 88, i64 8, !1, i64 88, i64 8, !1, i64 88, i64 8, !1, i64 88, i64 8, !1, i64 88, i64 8, !1, i64 88, i64 8, !1, i64 88, i64 8, !1, i64 88, i64 8, !22, i64 96, i64 2, !21, i64 98, i64 2, !21, i64 100, i64 4, !11, i64 104, i64 8, !22, i64 104, i64 2, !21, i64 104, i64 4, !18, i64 104, i64 8, !22, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !22, i64 112, i64 2, !21, i64 114, i64 2, !21, i64 116, i64 4, !11, i64 120, i64 8, !22, i64 120, i64 2, !21, i64 120, i64 4, !18, i64 120, i64 8, !22, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !22, i64 128, i64 2, !21, i64 130, i64 2, !21, i64 132, i64 4, !11, i64 136, i64 8, !22, i64 136, i64 2, !21, i64 136, i64 4, !18, i64 136, i64 8, !22, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !22, i64 144, i64 2, !21, i64 146, i64 2, !21, i64 148, i64 4, !11, i64 152, i64 8, !22, i64 152, i64 2, !21, i64 152, i64 4, !18, i64 152, i64 8, !22, i64 152, i64 8, !1, i64 152, i64 8, !1, i64 152, i64 8, !1, i64 152, i64 8, !1, i64 152, i64 8, !1, i64 152, i64 8, !1, i64 152, i64 8, !1, i64 152, i64 8, !1, i64 152, i64 8, !1, i64 152, i64 8, !1, i64 152, i64 8, !1, i64 152, i64 8, !1, i64 152, i64 8, !1, i64 152, i64 8, !1, i64 152, i64 8, !22, i64 160, i64 2, !21, i64 162, i64 2, !21, i64 164, i64 4, !11, i64 168, i64 8, !22, i64 168, i64 2, !21, i64 168, i64 4, !18, i64 168, i64 8, !22, i64 168, i64 8, !1, i64 168, i64 8, !1, i64 168, i64 8, !1, i64 168, i64 8, !1, i64 168, i64 8, !1, i64 168, i64 8, !1, i64 168, i64 8, !1, i64 168, i64 8, !1, i64 168, i64 8, !1, i64 168, i64 8, !1, i64 168, i64 8, !1, i64 168, i64 8, !1, i64 168, i64 8, !1, i64 168, i64 8, !1, i64 168, i64 8, !22, i64 176, i64 192, !40, i64 368, i64 32, !40, i64 400, i64 2, !21, i64 402, i64 2, !21, i64 404, i64 4, !11, i64 408, i64 8, !22, i64 408, i64 2, !21, i64 408, i64 4, !18, i64 408, i64 8, !22, i64 408, i64 8, !1, i64 408, i64 8, !1, i64 408, i64 8, !1, i64 408, i64 8, !1, i64 408, i64 8, !1, i64 408, i64 8, !1, i64 408, i64 8, !1, i64 408, i64 8, !1, i64 408, i64 8, !1, i64 408, i64 8, !1, i64 408, i64 8, !1, i64 408, i64 8, !1, i64 408, i64 8, !1, i64 408, i64 8, !1, i64 408, i64 8, !22, i64 416, i64 2, !21, i64 418, i64 2, !21, i64 420, i64 4, !11, i64 424, i64 8, !22, i64 424, i64 2, !21, i64 424, i64 4, !18, i64 424, i64 8, !22, i64 424, i64 8, !1, i64 424, i64 8, !1, i64 424, i64 8, !1, i64 424, i64 8, !1, i64 424, i64 8, !1, i64 424, i64 8, !1, i64 424, i64 8, !1, i64 424, i64 8, !1, i64 424, i64 8, !1, i64 424, i64 8, !1, i64 424, i64 8, !1, i64 424, i64 8, !1, i64 424, i64 8, !1, i64 424, i64 8, !1, i64 424, i64 8, !22, i64 432, i64 2, !21, i64 434, i64 2, !21, i64 436, i64 4, !11, i64 440, i64 8, !22, i64 440, i64 2, !21, i64 440, i64 4, !18, i64 440, i64 8, !22, i64 440, i64 8, !1, i64 440, i64 8, !1, i64 440, i64 8, !1, i64 440, i64 8, !1, i64 440, i64 8, !1, i64 440, i64 8, !1, i64 440, i64 8, !1, i64 440, i64 8, !1, i64 440, i64 8, !1, i64 440, i64 8, !1, i64 440, i64 8, !1, i64 440, i64 8, !1, i64 440, i64 8, !1, i64 440, i64 8, !1, i64 440, i64 8, !22, i64 448, i64 2, !21, i64 450, i64 2, !21, i64 452, i64 4, !11, i64 456, i64 8, !22, i64 456, i64 2, !21, i64 456, i64 4, !18, i64 456, i64 8, !22, i64 456, i64 8, !1, i64 456, i64 8, !1, i64 456, i64 8, !1, i64 456, i64 8, !1, i64 456, i64 8, !1, i64 456, i64 8, !1, i64 456, i64 8, !1, i64 456, i64 8, !1, i64 456, i64 8, !1, i64 456, i64 8, !1, i64 456, i64 8, !1, i64 456, i64 8, !1, i64 456, i64 8, !1, i64 456, i64 8, !1, i64 456, i64 8, !22, i64 464, i64 2, !21, i64 466, i64 2, !21, i64 468, i64 4, !11, i64 472, i64 8, !22, i64 472, i64 2, !21, i64 472, i64 4, !18, i64 472, i64 8, !22, i64 472, i64 8, !1, i64 472, i64 8, !1, i64 472, i64 8, !1, i64 472, i64 8, !1, i64 472, i64 8, !1, i64 472, i64 8, !1, i64 472, i64 8, !1, i64 472, i64 8, !1, i64 472, i64 8, !1, i64 472, i64 8, !1, i64 472, i64 8, !1, i64 472, i64 8, !1, i64 472, i64 8, !1, i64 472, i64 8, !1, i64 472, i64 8, !22, i64 480, i64 2, !21, i64 482, i64 2, !21, i64 484, i64 4, !11, i64 488, i64 8, !22, i64 488, i64 2, !21, i64 488, i64 4, !18, i64 488, i64 8, !22, i64 488, i64 8, !1, i64 488, i64 8, !1, i64 488, i64 8, !1, i64 488, i64 8, !1, i64 488, i64 8, !1, i64 488, i64 8, !1, i64 488, i64 8, !1, i64 488, i64 8, !1, i64 488, i64 8, !1, i64 488, i64 8, !1, i64 488, i64 8, !1, i64 488, i64 8, !1, i64 488, i64 8, !1, i64 488, i64 8, !1, i64 488, i64 8, !22, i64 496, i64 2, !21, i64 498, i64 2, !21, i64 500, i64 4, !11, i64 504, i64 8, !22, i64 504, i64 2, !21, i64 504, i64 4, !18, i64 504, i64 8, !22, i64 504, i64 8, !1, i64 504, i64 8, !1, i64 504, i64 8, !1, i64 504, i64 8, !1, i64 504, i64 8, !1, i64 504, i64 8, !1, i64 504, i64 8, !1, i64 504, i64 8, !1, i64 504, i64 8, !1, i64 504, i64 8, !1, i64 504, i64 8, !1, i64 504, i64 8, !1, i64 504, i64 8, !1, i64 504, i64 8, !1, i64 504, i64 8, !22, i64 512, i64 2, !21, i64 514, i64 2, !21, i64 516, i64 4, !11, i64 520, i64 8, !22, i64 520, i64 2, !21, i64 520, i64 4, !18, i64 520, i64 8, !22, i64 520, i64 8, !1, i64 520, i64 8, !1, i64 520, i64 8, !1, i64 520, i64 8, !1, i64 520, i64 8, !1, i64 520, i64 8, !1, i64 520, i64 8, !1, i64 520, i64 8, !1, i64 520, i64 8, !1, i64 520, i64 8, !1, i64 520, i64 8, !1, i64 520, i64 8, !1, i64 520, i64 8, !1, i64 520, i64 8, !1, i64 520, i64 8, !22, i64 528, i64 2, !21, i64 530, i64 2, !21, i64 532, i64 4, !11, i64 536, i64 8, !22, i64 536, i64 2, !21, i64 536, i64 4, !18, i64 536, i64 8, !22, i64 536, i64 8, !1, i64 536, i64 8, !1, i64 536, i64 8, !1, i64 536, i64 8, !1, i64 536, i64 8, !1, i64 536, i64 8, !1, i64 536, i64 8, !1, i64 536, i64 8, !1, i64 536, i64 8, !1, i64 536, i64 8, !1, i64 536, i64 8, !1, i64 536, i64 8, !1, i64 536, i64 8, !1, i64 536, i64 8, !1, i64 536, i64 8, !22, i64 544, i64 2, !21, i64 546, i64 2, !21, i64 548, i64 4, !11, i64 552, i64 8, !22, i64 552, i64 2, !21, i64 552, i64 4, !18, i64 552, i64 8, !22, i64 552, i64 8, !1, i64 552, i64 8, !1, i64 552, i64 8, !1, i64 552, i64 8, !1, i64 552, i64 8, !1, i64 552, i64 8, !1, i64 552, i64 8, !1, i64 552, i64 8, !1, i64 552, i64 8, !1, i64 552, i64 8, !1, i64 552, i64 8, !1, i64 552, i64 8, !1, i64 552, i64 8, !1, i64 552, i64 8, !1, i64 552, i64 8, !22, i64 560, i64 2, !21, i64 562, i64 2, !21, i64 564, i64 4, !11, i64 568, i64 8, !22, i64 568, i64 2, !21, i64 568, i64 4, !18, i64 568, i64 8, !22, i64 568, i64 8, !1, i64 568, i64 8, !1, i64 568, i64 8, !1, i64 568, i64 8, !1, i64 568, i64 8, !1, i64 568, i64 8, !1, i64 568, i64 8, !1, i64 568, i64 8, !1, i64 568, i64 8, !1, i64 568, i64 8, !1, i64 568, i64 8, !1, i64 568, i64 8, !1, i64 568, i64 8, !1, i64 568, i64 8, !1, i64 568, i64 8, !22}
