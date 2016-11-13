; ModuleID = './gsfunc4.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_function_head_s = type { i32, %struct.gs_function_procs_s }
%struct.gs_function_procs_s = type { i32 (%struct.gs_function_s*, float*, float*)*, i32 (%struct.gs_function_s*, float*, float*, i32*)*, void (%struct.gs_function_s*, %struct.gs_function_info_s*)*, i32 (%struct.gs_function_s*, %struct.gs_param_list_s*)*, i32 (%struct.gs_function_s*, %struct.gs_function_s**, %struct.gs_range_s*, %struct.gs_memory_s*)*, void (%struct.gs_function_params_s*, %struct.gs_memory_s*)*, void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_function_s*, %struct.stream_s*)* }
%struct.gs_function_s = type { %struct.gs_function_head_s, %struct.gs_function_params_s }
%struct.gs_function_params_s = type { i32, float*, i32, float* }
%struct.gs_function_info_s = type { %struct.gs_data_source_s*, i64, %struct.gs_function_s**, i32 }
%struct.gs_data_source_s = type { i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)*, i32, %union.d_ }
%union.d_ = type { %struct.gs_const_string_s }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_param_list_s = type opaque
%struct.gs_range_s = type { float, float }
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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
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
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.op_defn_s = type { [16 x i8] }
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gs_function_PtCr_params_s = type { i32, float*, i32, float*, %struct.gs_const_string_s }
%struct.gs_function_PtCr_s = type { %struct.gs_function_head_s, %struct.gs_function_PtCr_params_s, %struct.gs_data_source_s }
%struct.calc_value_s = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.stream_SFD_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i64, %struct.gs_const_string_s, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@gs_function_PtCr_init.function_PtCr_head = internal constant %struct.gs_function_head_s { i32 4, %struct.gs_function_procs_s { i32 (%struct.gs_function_s*, float*, float*)* @fn_PtCr_evaluate, i32 (%struct.gs_function_s*, float*, float*, i32*)* @fn_PtCr_is_monotonic, void (%struct.gs_function_s*, %struct.gs_function_info_s*)* @fn_PtCr_get_info, i32 (%struct.gs_function_s*, %struct.gs_param_list_s*)* @fn_common_get_params, i32 (%struct.gs_function_s*, %struct.gs_function_s**, %struct.gs_range_s*, %struct.gs_memory_s*)* bitcast (i32 (%struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s**, %struct.gs_range_s*, %struct.gs_memory_s*)* @fn_PtCr_make_scaled to i32 (%struct.gs_function_s*, %struct.gs_function_s**, %struct.gs_range_s*, %struct.gs_memory_s*)*), void (%struct.gs_function_params_s*, %struct.gs_memory_s*)* bitcast (void (%struct.gs_function_PtCr_params_s*, %struct.gs_memory_s*)* @gs_function_PtCr_free_params to void (%struct.gs_function_params_s*, %struct.gs_memory_s*)*), void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)* @fn_common_free, i32 (%struct.gs_function_s*, %struct.stream_s*)* @gs_function_PtCr_serialize } }, align 8
@st_function_PtCr = internal constant %struct.gs_memory_struct_type_s { i32 152, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @function_PtCr_reloc_ptrs to i8*) }, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"gs_function_PtCr_init\00", align 1
@fn_PtCr_evaluate.op_defn_table = internal constant [48 x %struct.op_defn_s] [%struct.op_defn_s { [16 x i8] c"AA1\00AA1\00AA1\00AA1\00" }, %struct.op_defn_s { [16 x i8] c"AAAAAAAAAA2>AA=\01" }, %struct.op_defn_s { [16 x i8] c"AAAAA\02\02AA\02\02AAAAA" }, %struct.op_defn_s { [16 x i8] c"AAAAAAAAAA?>AA=\03" }, %struct.op_defn_s { [16 x i8] c"AAAAAAAAAA\04AAAAA" }, %struct.op_defn_s { [16 x i8] c"AA@\05AA@\05AA@\05AA@\05" }, %struct.op_defn_s { [16 x i8] c"AA=\06AA=\06AA=\06AA=\06" }, %struct.op_defn_s { [16 x i8] c"AA@\07AA@\07AA@\07AA@\07" }, %struct.op_defn_s { [16 x i8] c"AA=@AA=@AA=@AA=@" }, %struct.op_defn_s { [16 x i8] c"AAAAAAAAAA?>AA=\09" }, %struct.op_defn_s { [16 x i8] c"AAAAAAAAAA?>AA=\0A" }, %struct.op_defn_s { [16 x i8] c"AA@\0BAA@\0BAA@\0BAA@\0B" }, %struct.op_defn_s { [16 x i8] c"AAAAAAAAAA\0CAAAAA" }, %struct.op_defn_s { [16 x i8] c"AA=\0DAA=\0DAA=\0DAA=\0D" }, %struct.op_defn_s { [16 x i8] c"AA=\0EAA=\0EAA=\0EAA=\0E" }, %struct.op_defn_s { [16 x i8] c"AAAAAAAAAA\0FAAAAA" }, %struct.op_defn_s { [16 x i8] c"AAAAAAAAAA3>AA=\10" }, %struct.op_defn_s { [16 x i8] c"AA4\11AA4\11AA4\11AA4\11" }, %struct.op_defn_s { [16 x i8] c"A\12\12AA\12\12AA\12\12AA\12\12A" }, %struct.op_defn_s { [16 x i8] c"AAAAA\13\13AA\13\13AAAAA" }, %struct.op_defn_s { [16 x i8] c"AA@\14AA@\14AA@\14AA@\14" }, %struct.op_defn_s { [16 x i8] c"AA=\15AA=\15AA=\15AA=\15" }, %struct.op_defn_s { [16 x i8] c"AA=\16AA=\16AA=\16AA=\16" }, %struct.op_defn_s { [16 x i8] c"AAAAAAAAAA6>AA=\17" }, %struct.op_defn_s { [16 x i8] c"AA@\18AA@\18AA@\18AA@\18" }, %struct.op_defn_s { [16 x i8] c"AAAAA\19\19AA\19\19AAAAA" }, %struct.op_defn_s { [16 x i8] c"AAAAA7AAAA7>AA=\1A" }, %struct.op_defn_s { [16 x i8] c"AAAAAAAAAA8>AA=\1B" }, %struct.op_defn_s { [16 x i8] c"AAAAAAAAAA9>AA=\1C" }, %struct.op_defn_s { [16 x i8] c"AAAAAAAAAA:>AA=\1D" }, %struct.op_defn_s { [16 x i8] c"AAAAAAAAAA;>AA=\1E" }, %struct.op_defn_s { [16 x i8] c"AAAAA<AAAA<>AA=\1F" }, %struct.op_defn_s { [16 x i8] c"AA AAA AAA AAA A" }, %struct.op_defn_s { [16 x i8] c"A!!!A!!!A!!!A!!!" }, %struct.op_defn_s { [16 x i8] c"AAAAA\22\22\22A\22\22\22A\22\22\22" }, %struct.op_defn_s { [16 x i8] c"AA#AAA#AAA#AAA#A" }, %struct.op_defn_s { [16 x i8] c"A$$$A$$$A$$$A$$$" }, %struct.op_defn_s { [16 x i8] c"AAAAAAAAAA%AAAAA" }, %struct.op_defn_s { [16 x i8] c"&&&&&&&&&&&&&&&&" }, %struct.op_defn_s { [16 x i8] c"''''''''''''''''" }, %struct.op_defn_s { [16 x i8] c"((((((((((((((((" }, %struct.op_defn_s { [16 x i8] c"))))))))))))))))" }, %struct.op_defn_s { [16 x i8] c"****************" }, %struct.op_defn_s { [16 x i8] c"A+AAA+AAA+AAA+AA" }, %struct.op_defn_s { [16 x i8] c",,,,,,,,,,,,,,,," }, %struct.op_defn_s { [16 x i8] c"----------------" }, %struct.op_defn_s { [16 x i8] c"AA.AAA.AAA.AAA.A" }, %struct.op_defn_s { [16 x i8] c"////////////////" }], align 16
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%g \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"true \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"false \00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c" ifelse \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c" if \00", align 1
@calc_put_ops.op_names = internal constant [38 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0)], align 16
@.str.8 = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"atan\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"bitshift\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"ceiling\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"cos\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"cvi\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"cvr\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"div\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"floor\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"idiv\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"ln\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"mul\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"neg\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"round\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"sin\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"truncate\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"ge\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"gt\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"le\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"lt\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"dup\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"exch\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"roll\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.47 = private unnamed_addr constant [20 x i8] c"fn_PtCr_make_scaled\00", align 1
@.str.48 = private unnamed_addr constant [25 x i8] c"fn_PtCr_make_scaled(ops)\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"gs_function_PtCr_t\00", align 1
@function_PtCr_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* @st_function, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @function_PtCr_enum_ptrs, i32 0, i32 0) }, align 8
@st_function = external constant %struct.gs_memory_struct_type_s, align 8
@function_PtCr_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 1, i16 104 }], align 2
@s_SFD_template = external constant %struct.stream_template_s, align 8

; Function Attrs: nounwind uwtable
define void @gs_function_PtCr_free_params(%struct.gs_function_PtCr_params_s* %params, %struct.gs_memory_s* %mem) #0 {
entry:
  %params.addr = alloca %struct.gs_function_PtCr_params_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_function_PtCr_params_s* %params, %struct.gs_function_PtCr_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %1 = load %struct.gs_function_PtCr_params_s*, %struct.gs_function_PtCr_params_s** %params.addr, align 8, !tbaa !1
  %ops = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %1, i32 0, i32 4
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %ops, i32 0, i32 0
  %2 = load i8*, i8** %data, align 8, !tbaa !5
  %3 = load %struct.gs_function_PtCr_params_s*, %struct.gs_function_PtCr_params_s** %params.addr, align 8, !tbaa !1
  %ops1 = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %3, i32 0, i32 4
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %ops1, i32 0, i32 1
  %4 = load i32, i32* %size, align 4, !tbaa !9
  call void @gs_free_const_string(%struct.gs_memory_s* %0, i8* %2, i32 %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)) #6
  %5 = load %struct.gs_function_PtCr_params_s*, %struct.gs_function_PtCr_params_s** %params.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gs_function_PtCr_params_s* %5 to %struct.gs_function_params_s*
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @fn_common_free_params(%struct.gs_function_params_s* %6, %struct.gs_memory_s* %7) #6
  ret void
}

declare void @gs_free_const_string(%struct.gs_memory_s*, i8*, i32, i8*) #1

declare void @fn_common_free_params(%struct.gs_function_params_s*, %struct.gs_memory_s*) #1

; Function Attrs: nounwind uwtable
define i32 @gs_function_PtCr_init(%struct.gs_function_s** %ppfn, %struct.gs_function_PtCr_params_s* %params, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %ppfn.addr = alloca %struct.gs_function_s**, align 8
  %params.addr = alloca %struct.gs_function_PtCr_params_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %p = alloca i8*, align 8
  %pfn = alloca %struct.gs_function_PtCr_s*, align 8
  store %struct.gs_function_s** %ppfn, %struct.gs_function_s*** %ppfn.addr, align 8, !tbaa !1
  store %struct.gs_function_PtCr_params_s* %params, %struct.gs_function_PtCr_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_function_s**, %struct.gs_function_s*** %ppfn.addr, align 8, !tbaa !1
  store %struct.gs_function_s* null, %struct.gs_function_s** %1, align 8, !tbaa !1
  %2 = load %struct.gs_function_PtCr_params_s*, %struct.gs_function_PtCr_params_s** %params.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_function_PtCr_params_s* %2 to %struct.gs_function_params_s*
  %4 = load %struct.gs_function_PtCr_params_s*, %struct.gs_function_PtCr_params_s** %params.addr, align 8, !tbaa !1
  %m = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %4, i32 0, i32 0
  %5 = load i32, i32* %m, align 4, !tbaa !10
  %6 = load %struct.gs_function_PtCr_params_s*, %struct.gs_function_PtCr_params_s** %params.addr, align 8, !tbaa !1
  %n = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %6, i32 0, i32 2
  %7 = load i32, i32* %n, align 4, !tbaa !11
  %call = call i32 @fn_check_mnDR(%struct.gs_function_params_s* %3, i32 %5, i32 %7) #6
  store i32 %call, i32* %code, align 4, !tbaa !12
  %8 = load i32, i32* %code, align 4, !tbaa !12
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !12
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.50

if.end:                                           ; preds = %entry
  %10 = load %struct.gs_function_PtCr_params_s*, %struct.gs_function_PtCr_params_s** %params.addr, align 8, !tbaa !1
  %m1 = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %10, i32 0, i32 0
  %11 = load i32, i32* %m1, align 4, !tbaa !10
  %cmp2 = icmp sgt i32 %11, 256
  br i1 %cmp2, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %12 = load %struct.gs_function_PtCr_params_s*, %struct.gs_function_PtCr_params_s** %params.addr, align 8, !tbaa !1
  %n3 = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %12, i32 0, i32 2
  %13 = load i32, i32* %n3, align 4, !tbaa !11
  %cmp4 = icmp sgt i32 %13, 256
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.50

if.end.6:                                         ; preds = %lor.lhs.false
  %14 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = load %struct.gs_function_PtCr_params_s*, %struct.gs_function_PtCr_params_s** %params.addr, align 8, !tbaa !1
  %ops = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %15, i32 0, i32 4
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %ops, i32 0, i32 0
  %16 = load i8*, i8** %data, align 8, !tbaa !5
  store i8* %16, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %17 = load i8*, i8** %p, align 8, !tbaa !1
  %18 = load i8, i8* %17, align 1, !tbaa !13
  %conv = zext i8 %18 to i32
  %cmp7 = icmp ne i32 %conv, 45
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i8*, i8** %p, align 8, !tbaa !1
  %20 = load i8, i8* %19, align 1, !tbaa !13
  %conv9 = zext i8 %20 to i32
  switch i32 %conv9, label %sw.default [
    i32 38, label %sw.bb
    i32 39, label %sw.bb.10
    i32 40, label %sw.bb.11
    i32 46, label %sw.bb.13
    i32 43, label %sw.bb.13
    i32 44, label %sw.bb.13
    i32 47, label %sw.bb.15
    i32 41, label %sw.bb.15
    i32 42, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %for.body
  %21 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.10:                                         ; preds = %for.body
  %22 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 4
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.11:                                         ; preds = %for.body
  %23 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr12 = getelementptr inbounds i8, i8* %23, i64 4
  store i8* %add.ptr12, i8** %p, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.13:                                         ; preds = %for.body, %for.body, %for.body
  %24 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr14 = getelementptr inbounds i8, i8* %24, i64 2
  store i8* %add.ptr14, i8** %p, align 8, !tbaa !1
  br label %sw.bb.15

sw.bb.15:                                         ; preds = %for.body, %for.body, %for.body, %sw.bb.13
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %25 = load i8*, i8** %p, align 8, !tbaa !1
  %26 = load i8, i8* %25, align 1, !tbaa !13
  %conv16 = zext i8 %26 to i32
  %cmp17 = icmp sge i32 %conv16, 38
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %sw.default
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.20, %sw.bb.15, %sw.bb.11, %sw.bb.10, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %27 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr21 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr21, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i8*, i8** %p, align 8, !tbaa !1
  %29 = load %struct.gs_function_PtCr_params_s*, %struct.gs_function_PtCr_params_s** %params.addr, align 8, !tbaa !1
  %ops22 = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %29, i32 0, i32 4
  %data23 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %ops22, i32 0, i32 0
  %30 = load i8*, i8** %data23, align 8, !tbaa !5
  %31 = load %struct.gs_function_PtCr_params_s*, %struct.gs_function_PtCr_params_s** %params.addr, align 8, !tbaa !1
  %ops24 = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %31, i32 0, i32 4
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %ops24, i32 0, i32 1
  %32 = load i32, i32* %size, align 4, !tbaa !9
  %idx.ext = zext i32 %32 to i64
  %add.ptr25 = getelementptr inbounds i8, i8* %30, i64 %idx.ext
  %add.ptr26 = getelementptr inbounds i8, i8* %add.ptr25, i64 -1
  %cmp27 = icmp ne i8* %28, %add.ptr26
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %for.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %for.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.30, %if.then.29, %if.then.19
  %33 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.50 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %34 = bitcast %struct.gs_function_PtCr_s** %pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #2
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %35, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %36 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !14
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call31 = call i8* %36(%struct.gs_memory_s* %37, %struct.gs_memory_struct_type_s* @st_function_PtCr, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0)) #6
  %38 = bitcast i8* %call31 to %struct.gs_function_PtCr_s*
  store %struct.gs_function_PtCr_s* %38, %struct.gs_function_PtCr_s** %pfn, align 8, !tbaa !1
  %39 = load %struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s** %pfn, align 8, !tbaa !1
  %cmp32 = icmp eq %struct.gs_function_PtCr_s* %39, null
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %cleanup.cont
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.47

if.end.35:                                        ; preds = %cleanup.cont
  %40 = load %struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s** %pfn, align 8, !tbaa !1
  %params36 = getelementptr inbounds %struct.gs_function_PtCr_s, %struct.gs_function_PtCr_s* %40, i32 0, i32 1
  %41 = load %struct.gs_function_PtCr_params_s*, %struct.gs_function_PtCr_params_s** %params.addr, align 8, !tbaa !1
  %42 = bitcast %struct.gs_function_PtCr_params_s* %params36 to i8*
  %43 = bitcast %struct.gs_function_PtCr_params_s* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 48, i32 8, i1 false), !tbaa.struct !17
  %44 = load %struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s** %pfn, align 8, !tbaa !1
  %data_source = getelementptr inbounds %struct.gs_function_PtCr_s, %struct.gs_function_PtCr_s* %44, i32 0, i32 2
  %type = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %data_source, i32 0, i32 1
  store i32 0, i32* %type, align 4, !tbaa !18
  %45 = load %struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s** %pfn, align 8, !tbaa !1
  %data_source37 = getelementptr inbounds %struct.gs_function_PtCr_s, %struct.gs_function_PtCr_s* %45, i32 0, i32 2
  %data38 = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %data_source37, i32 0, i32 2
  %str = bitcast %union.d_* %data38 to %struct.gs_const_string_s*
  %data39 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 0
  store i8* null, i8** %data39, align 8, !tbaa !20
  %46 = load %struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s** %pfn, align 8, !tbaa !1
  %data_source40 = getelementptr inbounds %struct.gs_function_PtCr_s, %struct.gs_function_PtCr_s* %46, i32 0, i32 2
  %data41 = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %data_source40, i32 0, i32 2
  %str42 = bitcast %union.d_* %data41 to %struct.gs_const_string_s*
  %size43 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str42, i32 0, i32 1
  store i32 0, i32* %size43, align 4, !tbaa !21
  %47 = load %struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s** %pfn, align 8, !tbaa !1
  %data_source44 = getelementptr inbounds %struct.gs_function_PtCr_s, %struct.gs_function_PtCr_s* %47, i32 0, i32 2
  %access = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %data_source44, i32 0, i32 0
  store i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)* @data_source_access_string, i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)** %access, align 8, !tbaa !22
  %48 = load %struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s** %pfn, align 8, !tbaa !1
  %data_source45 = getelementptr inbounds %struct.gs_function_PtCr_s, %struct.gs_function_PtCr_s* %48, i32 0, i32 2
  %access46 = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %data_source45, i32 0, i32 0
  store i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)* @calc_access, i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)** %access46, align 8, !tbaa !23
  %49 = load %struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s** %pfn, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_function_PtCr_s, %struct.gs_function_PtCr_s* %49, i32 0, i32 0
  %50 = bitcast %struct.gs_function_head_s* %head to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* bitcast (%struct.gs_function_head_s* @gs_function_PtCr_init.function_PtCr_head to i8*), i64 72, i32 8, i1 false), !tbaa.struct !27
  %51 = load %struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s** %pfn, align 8, !tbaa !1
  %52 = bitcast %struct.gs_function_PtCr_s* %51 to %struct.gs_function_s*
  %53 = load %struct.gs_function_s**, %struct.gs_function_s*** %ppfn.addr, align 8, !tbaa !1
  store %struct.gs_function_s* %52, %struct.gs_function_s** %53, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.47

cleanup.47:                                       ; preds = %if.end.35, %if.then.34
  %54 = bitcast %struct.gs_function_PtCr_s** %pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #2
  %cleanup.dest.48 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.48, label %cleanup.50 [
    i32 0, label %cleanup.cont.49
  ]

cleanup.cont.49:                                  ; preds = %cleanup.47
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.50

cleanup.50:                                       ; preds = %cleanup.cont.49, %cleanup.47, %cleanup, %if.then.5, %if.then
  %55 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #2
  %56 = load i32, i32* %retval
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define internal i32 @fn_PtCr_evaluate(%struct.gs_function_s* %pfn_common, float* %in, float* %out) #0 {
entry:
  %retval = alloca i32, align 4
  %pfn_common.addr = alloca %struct.gs_function_s*, align 8
  %in.addr = alloca float*, align 8
  %out.addr = alloca float*, align 8
  %pfn = alloca %struct.gs_function_PtCr_s*, align 8
  %vstack_buf = alloca [259 x %struct.calc_value_s], align 16
  %vstack = alloca %struct.calc_value_s*, align 8
  %vsp = alloca %struct.calc_value_s*, align 8
  %p = alloca i8*, align 8
  %repeat_count = alloca [10 x i32], align 16
  %repeat_proc_size = alloca [10 x i32], align 16
  %repeat_nesting_level = alloca i32, align 4
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %n = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %int1 = alloca i32, align 4
  %int2 = alloca i32, align 4
  %result = alloca double, align 8
  %prod = alloca double, align 8
  %int1343 = alloca i32, align 4
  %int2347 = alloca i32, align 4
  store %struct.gs_function_s* %pfn_common, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  store float* %in, float** %in.addr, align 8, !tbaa !1
  store float* %out, float** %out.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_function_PtCr_s** %pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_function_s* %1 to %struct.gs_function_PtCr_s*
  store %struct.gs_function_PtCr_s* %2, %struct.gs_function_PtCr_s** %pfn, align 8, !tbaa !1
  %3 = bitcast [259 x %struct.calc_value_s]* %vstack_buf to i8*
  call void @llvm.lifetime.start(i64 2072, i8* %3) #2
  %4 = bitcast %struct.calc_value_s** %vstack to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %arrayidx = getelementptr inbounds [259 x %struct.calc_value_s], [259 x %struct.calc_value_s]* %vstack_buf, i32 0, i64 1
  store %struct.calc_value_s* %arrayidx, %struct.calc_value_s** %vstack, align 8, !tbaa !1
  %5 = bitcast %struct.calc_value_s** %vsp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.calc_value_s*, %struct.calc_value_s** %vstack, align 8, !tbaa !1
  %7 = load %struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s** %pfn, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_PtCr_s, %struct.gs_function_PtCr_s* %7, i32 0, i32 1
  %m = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %params, i32 0, i32 0
  %8 = load i32, i32* %m, align 4, !tbaa !28
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %6, i64 %idx.ext
  store %struct.calc_value_s* %add.ptr, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %9 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s** %pfn, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_function_PtCr_s, %struct.gs_function_PtCr_s* %10, i32 0, i32 1
  %ops = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %params1, i32 0, i32 4
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %ops, i32 0, i32 0
  %11 = load i8*, i8** %data, align 8, !tbaa !29
  store i8* %11, i8** %p, align 8, !tbaa !1
  %12 = bitcast [10 x i32]* %repeat_count to i8*
  call void @llvm.lifetime.start(i64 40, i8* %12) #2
  %13 = bitcast [10 x i32]* %repeat_proc_size to i8*
  call void @llvm.lifetime.start(i64 40, i8* %13) #2
  %14 = bitcast i32* %repeat_nesting_level to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  store i32 -1, i32* %repeat_nesting_level, align 4, !tbaa !12
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = load %struct.calc_value_s*, %struct.calc_value_s** %vstack, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %16, i64 -1
  %type = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx2, i32 0, i32 0
  store i32 0, i32* %type, align 4, !tbaa !30
  %17 = load %struct.calc_value_s*, %struct.calc_value_s** %vstack, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %17, i64 0
  %type4 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx3, i32 0, i32 0
  store i32 0, i32* %type4, align 4, !tbaa !30
  store i32 0, i32* %i, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %18 = load i32, i32* %i, align 4, !tbaa !12
  %19 = load %struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s** %pfn, align 8, !tbaa !1
  %params5 = getelementptr inbounds %struct.gs_function_PtCr_s, %struct.gs_function_PtCr_s* %19, i32 0, i32 1
  %m6 = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %params5, i32 0, i32 0
  %20 = load i32, i32* %m6, align 4, !tbaa !28
  %cmp = icmp slt i32 %18, %20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4, !tbaa !12
  %add = add nsw i32 %21, 1
  %idxprom = sext i32 %add to i64
  %22 = load %struct.calc_value_s*, %struct.calc_value_s** %vstack, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %22, i64 %idxprom
  %23 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom8 = sext i32 %23 to i64
  %24 = load float*, float** %in.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds float, float* %24, i64 %idxprom8
  %25 = load float, float* %arrayidx9, align 4, !tbaa !32
  %conv = fpext float %25 to double
  call void @store_float(%struct.calc_value_s* %arrayidx7, double %conv) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4, !tbaa !12
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4, !tbaa !12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.10

for.cond.10:                                      ; preds = %cleanup.cont, %cleanup.757, %for.end
  %27 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #2
  %28 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #2
  br label %sw

sw:                                               ; preds = %sw.bb.29, %sw.bb.21, %for.cond.10
  %29 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %29, i64 -1
  %type12 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx11, i32 0, i32 0
  %30 = load i32, i32* %type12, align 4, !tbaa !30
  %shl = shl i32 %30, 2
  %31 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %type13 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %31, i32 0, i32 0
  %32 = load i32, i32* %type13, align 4, !tbaa !30
  %add14 = add i32 %shl, %32
  %idxprom15 = zext i32 %add14 to i64
  %33 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  %34 = load i8, i8* %33, align 1, !tbaa !13
  %idxprom16 = zext i8 %34 to i64
  %arrayidx17 = getelementptr inbounds [48 x %struct.op_defn_s], [48 x %struct.op_defn_s]* @fn_PtCr_evaluate.op_defn_table, i32 0, i64 %idxprom16
  %opcode = getelementptr inbounds %struct.op_defn_s, %struct.op_defn_s* %arrayidx17, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [16 x i8], [16 x i8]* %opcode, i32 0, i64 %idxprom15
  %35 = load i8, i8* %arrayidx18, align 1, !tbaa !13
  %conv19 = zext i8 %35 to i32
  switch i32 %conv19, label %sw.epilog [
    i32 64, label %sw.bb
    i32 65, label %sw.bb.20
    i32 61, label %sw.bb.21
    i32 63, label %sw.bb.25
    i32 62, label %sw.bb.29
    i32 49, label %sw.bb.36
    i32 0, label %sw.bb.41
    i32 50, label %sw.bb.47
    i32 1, label %sw.bb.70
    i32 2, label %sw.bb.78
    i32 3, label %sw.bb.85
    i32 4, label %sw.bb.103
    i32 5, label %sw.bb.136
    i32 6, label %sw.bb.144
    i32 7, label %sw.bb.152
    i32 8, label %sw.bb.159
    i32 9, label %sw.bb.160
    i32 10, label %sw.bb.173
    i32 11, label %sw.bb.187
    i32 12, label %sw.bb.195
    i32 13, label %sw.bb.218
    i32 14, label %sw.bb.226
    i32 15, label %sw.bb.234
    i32 51, label %sw.bb.247
    i32 16, label %sw.bb.270
    i32 52, label %sw.bb.278
    i32 17, label %sw.bb.294
    i32 53, label %sw.bb.300
    i32 18, label %sw.bb.305
    i32 19, label %sw.bb.310
    i32 20, label %sw.bb.317
    i32 21, label %sw.bb.326
    i32 22, label %sw.bb.334
    i32 54, label %sw.bb.342
    i32 23, label %sw.bb.372
    i32 24, label %sw.bb.380
    i32 25, label %sw.bb.396
    i32 55, label %sw.bb.404
    i32 26, label %sw.bb.415
    i32 56, label %sw.bb.429
    i32 27, label %sw.bb.440
    i32 57, label %sw.bb.451
    i32 28, label %sw.bb.462
    i32 58, label %sw.bb.473
    i32 29, label %sw.bb.484
    i32 59, label %sw.bb.495
    i32 30, label %sw.bb.506
    i32 60, label %sw.bb.517
    i32 31, label %sw.bb.528
    i32 32, label %sw.bb.539
    i32 33, label %sw.bb.564
    i32 34, label %sw.bb.566
    i32 35, label %sw.bb.571
    i32 36, label %sw.bb.591
    i32 37, label %sw.bb.593
    i32 38, label %sw.bb.656
    i32 39, label %sw.bb.664
    i32 40, label %sw.bb.672
    i32 41, label %sw.bb.680
    i32 42, label %sw.bb.686
    i32 43, label %sw.bb.698
    i32 44, label %sw.bb.706
    i32 45, label %sw.bb.716
    i32 46, label %sw.bb.717
    i32 47, label %sw.bb.742
  ]

sw.bb:                                            ; preds = %sw
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.757

sw.bb.20:                                         ; preds = %sw
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.757

sw.bb.21:                                         ; preds = %sw
  %36 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %37 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %37, i32 0, i32 1
  %i22 = bitcast %union.anon* %value to i32*
  %38 = load i32, i32* %i22, align 4, !tbaa !12
  %conv23 = sitofp i32 %38 to double
  call void @store_float(%struct.calc_value_s* %36, double %conv23) #6
  %39 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr24 = getelementptr inbounds i8, i8* %39, i32 -1
  store i8* %incdec.ptr24, i8** %p, align 8, !tbaa !1
  br label %sw

sw.bb.25:                                         ; preds = %sw
  %40 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %41 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value26 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %41, i32 0, i32 1
  %i27 = bitcast %union.anon* %value26 to i32*
  %42 = load i32, i32* %i27, align 4, !tbaa !12
  %conv28 = sitofp i32 %42 to double
  call void @store_float(%struct.calc_value_s* %40, double %conv28) #6
  br label %sw.bb.29

sw.bb.29:                                         ; preds = %sw, %sw.bb.25
  %43 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %add.ptr30 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %43, i64 -1
  %44 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %44, i64 -1
  %value32 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx31, i32 0, i32 1
  %i33 = bitcast %union.anon* %value32 to i32*
  %45 = load i32, i32* %i33, align 4, !tbaa !12
  %conv34 = sitofp i32 %45 to double
  call void @store_float(%struct.calc_value_s* %add.ptr30, double %conv34) #6
  %46 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr35 = getelementptr inbounds i8, i8* %46, i32 -1
  store i8* %incdec.ptr35, i8** %p, align 8, !tbaa !1
  br label %sw

sw.bb.36:                                         ; preds = %sw
  %47 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value37 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %47, i32 0, i32 1
  %i38 = bitcast %union.anon* %value37 to i32*
  %48 = load i32, i32* %i38, align 4, !tbaa !12
  %cmp39 = icmp slt i32 %48, 0
  br i1 %cmp39, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.36
  br label %neg_int

if.end:                                           ; preds = %sw.bb.36
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.757

sw.bb.41:                                         ; preds = %sw
  %49 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value42 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %49, i32 0, i32 1
  %f = bitcast %union.anon* %value42 to float*
  %50 = load float, float* %f, align 4, !tbaa !32
  %conv43 = fpext float %50 to double
  %call = call double @fabs(double %conv43) #7
  %conv44 = fptrunc double %call to float
  %51 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value45 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %51, i32 0, i32 1
  %f46 = bitcast %union.anon* %value45 to float*
  store float %conv44, float* %f46, align 4, !tbaa !32
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.757

sw.bb.47:                                         ; preds = %sw
  %52 = bitcast i32* %int1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #2
  %53 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %53, i64 -1
  %value49 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx48, i32 0, i32 1
  %i50 = bitcast %union.anon* %value49 to i32*
  %54 = load i32, i32* %i50, align 4, !tbaa !12
  store i32 %54, i32* %int1, align 4, !tbaa !12
  %55 = bitcast i32* %int2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #2
  %56 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value51 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %56, i32 0, i32 1
  %i52 = bitcast %union.anon* %value51 to i32*
  %57 = load i32, i32* %i52, align 4, !tbaa !12
  store i32 %57, i32* %int2, align 4, !tbaa !12
  %58 = load i32, i32* %int1, align 4, !tbaa !12
  %59 = load i32, i32* %int2, align 4, !tbaa !12
  %xor = xor i32 %58, %59
  %cmp53 = icmp sge i32 %xor, 0
  br i1 %cmp53, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.bb.47
  %60 = load i32, i32* %int1, align 4, !tbaa !12
  %61 = load i32, i32* %int2, align 4, !tbaa !12
  %add55 = add nsw i32 %60, %61
  %62 = load i32, i32* %int1, align 4, !tbaa !12
  %xor56 = xor i32 %add55, %62
  %cmp57 = icmp slt i32 %xor56, 0
  br i1 %cmp57, label %if.then.59, label %if.else

if.then.59:                                       ; preds = %land.lhs.true
  %63 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %add.ptr60 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %63, i64 -1
  %64 = load i32, i32* %int1, align 4, !tbaa !12
  %conv61 = sitofp i32 %64 to double
  %65 = load i32, i32* %int2, align 4, !tbaa !12
  %conv62 = sitofp i32 %65 to double
  %add63 = fadd double %conv61, %conv62
  call void @store_float(%struct.calc_value_s* %add.ptr60, double %add63) #6
  br label %if.end.68

if.else:                                          ; preds = %land.lhs.true, %sw.bb.47
  %66 = load i32, i32* %int1, align 4, !tbaa !12
  %67 = load i32, i32* %int2, align 4, !tbaa !12
  %add64 = add nsw i32 %66, %67
  %68 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx65 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %68, i64 -1
  %value66 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx65, i32 0, i32 1
  %i67 = bitcast %union.anon* %value66 to i32*
  store i32 %add64, i32* %i67, align 4, !tbaa !12
  br label %if.end.68

if.end.68:                                        ; preds = %if.else, %if.then.59
  %69 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %incdec.ptr69 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %69, i32 -1
  store %struct.calc_value_s* %incdec.ptr69, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  %70 = bitcast i32* %int2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #2
  %71 = bitcast i32* %int1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #2
  br label %cleanup.757

sw.bb.70:                                         ; preds = %sw
  %72 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value71 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %72, i32 0, i32 1
  %f72 = bitcast %union.anon* %value71 to float*
  %73 = load float, float* %f72, align 4, !tbaa !32
  %74 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %74, i64 -1
  %value74 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx73, i32 0, i32 1
  %f75 = bitcast %union.anon* %value74 to float*
  %75 = load float, float* %f75, align 4, !tbaa !32
  %add76 = fadd float %75, %73
  store float %add76, float* %f75, align 4, !tbaa !32
  %76 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %incdec.ptr77 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %76, i32 -1
  store %struct.calc_value_s* %incdec.ptr77, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.757

sw.bb.78:                                         ; preds = %sw
  %77 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value79 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %77, i32 0, i32 1
  %i80 = bitcast %union.anon* %value79 to i32*
  %78 = load i32, i32* %i80, align 4, !tbaa !12
  %79 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %79, i64 -1
  %value82 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx81, i32 0, i32 1
  %i83 = bitcast %union.anon* %value82 to i32*
  %80 = load i32, i32* %i83, align 4, !tbaa !12
  %and = and i32 %80, %78
  store i32 %and, i32* %i83, align 4, !tbaa !12
  %81 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %incdec.ptr84 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %81, i32 -1
  store %struct.calc_value_s* %incdec.ptr84, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.757

sw.bb.85:                                         ; preds = %sw
  %82 = bitcast double* %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %82) #2
  %83 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx86 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %83, i64 -1
  %value87 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx86, i32 0, i32 1
  %f88 = bitcast %union.anon* %value87 to float*
  %84 = load float, float* %f88, align 4, !tbaa !32
  %conv89 = fpext float %84 to double
  %85 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value90 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %85, i32 0, i32 1
  %f91 = bitcast %union.anon* %value90 to float*
  %86 = load float, float* %f91, align 4, !tbaa !32
  %conv92 = fpext float %86 to double
  %call93 = call i32 @gs_atan2_degrees(double %conv89, double %conv92, double* %result) #6
  store i32 %call93, i32* %code, align 4, !tbaa !12
  %87 = load i32, i32* %code, align 4, !tbaa !12
  %cmp94 = icmp slt i32 %87, 0
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %sw.bb.85
  %88 = load i32, i32* %code, align 4, !tbaa !12
  store i32 %88, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.97:                                        ; preds = %sw.bb.85
  %89 = load double, double* %result, align 8, !tbaa !34
  %conv98 = fptrunc double %89 to float
  %90 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx99 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %90, i64 -1
  %value100 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx99, i32 0, i32 1
  %f101 = bitcast %union.anon* %value100 to float*
  store float %conv98, float* %f101, align 4, !tbaa !32
  %91 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %incdec.ptr102 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %91, i32 -1
  store %struct.calc_value_s* %incdec.ptr102, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.97, %if.then.96
  %92 = bitcast double* %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #2
  br label %cleanup.757

sw.bb.103:                                        ; preds = %sw
  %93 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value104 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %93, i32 0, i32 1
  %i105 = bitcast %union.anon* %value104 to i32*
  %94 = load i32, i32* %i105, align 4, !tbaa !12
  %cmp106 = icmp slt i32 %94, -31
  br i1 %cmp106, label %if.then.112, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.103
  %95 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value108 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %95, i32 0, i32 1
  %i109 = bitcast %union.anon* %value108 to i32*
  %96 = load i32, i32* %i109, align 4, !tbaa !12
  %cmp110 = icmp sgt i32 %96, 31
  br i1 %cmp110, label %if.then.112, label %if.else.116

if.then.112:                                      ; preds = %lor.lhs.false, %sw.bb.103
  %97 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx113 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %97, i64 -1
  %value114 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx113, i32 0, i32 1
  %i115 = bitcast %union.anon* %value114 to i32*
  store i32 0, i32* %i115, align 4, !tbaa !12
  br label %if.end.134

if.else.116:                                      ; preds = %lor.lhs.false
  %98 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value117 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %98, i32 0, i32 1
  %i118 = bitcast %union.anon* %value117 to i32*
  %99 = load i32, i32* %i118, align 4, !tbaa !12
  store i32 %99, i32* %n, align 4, !tbaa !12
  %cmp119 = icmp slt i32 %99, 0
  br i1 %cmp119, label %if.then.121, label %if.else.128

if.then.121:                                      ; preds = %if.else.116
  %100 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx122 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %100, i64 -1
  %value123 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx122, i32 0, i32 1
  %i124 = bitcast %union.anon* %value123 to i32*
  %101 = load i32, i32* %i124, align 4, !tbaa !12
  %102 = load i32, i32* %n, align 4, !tbaa !12
  %sub = sub nsw i32 0, %102
  %shr = lshr i32 %101, %sub
  %103 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx125 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %103, i64 -1
  %value126 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx125, i32 0, i32 1
  %i127 = bitcast %union.anon* %value126 to i32*
  store i32 %shr, i32* %i127, align 4, !tbaa !12
  br label %if.end.133

if.else.128:                                      ; preds = %if.else.116
  %104 = load i32, i32* %n, align 4, !tbaa !12
  %105 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx129 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %105, i64 -1
  %value130 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx129, i32 0, i32 1
  %i131 = bitcast %union.anon* %value130 to i32*
  %106 = load i32, i32* %i131, align 4, !tbaa !12
  %shl132 = shl i32 %106, %104
  store i32 %shl132, i32* %i131, align 4, !tbaa !12
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.128, %if.then.121
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.then.112
  %107 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %incdec.ptr135 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %107, i32 -1
  store %struct.calc_value_s* %incdec.ptr135, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.757

sw.bb.136:                                        ; preds = %sw
  %108 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value137 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %108, i32 0, i32 1
  %f138 = bitcast %union.anon* %value137 to float*
  %109 = load float, float* %f138, align 4, !tbaa !32
  %conv139 = fpext float %109 to double
  %call140 = call double @ceil(double %conv139) #7
  %conv141 = fptrunc double %call140 to float
  %110 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value142 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %110, i32 0, i32 1
  %f143 = bitcast %union.anon* %value142 to float*
  store float %conv141, float* %f143, align 4, !tbaa !32
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.757

sw.bb.144:                                        ; preds = %sw
  %111 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value145 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %111, i32 0, i32 1
  %f146 = bitcast %union.anon* %value145 to float*
  %112 = load float, float* %f146, align 4, !tbaa !32
  %conv147 = fpext float %112 to double
  %call148 = call double @gs_cos_degrees(double %conv147) #6
  %conv149 = fptrunc double %call148 to float
  %113 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value150 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %113, i32 0, i32 1
  %f151 = bitcast %union.anon* %value150 to float*
  store float %conv149, float* %f151, align 4, !tbaa !32
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.757

sw.bb.152:                                        ; preds = %sw
  %114 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value153 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %114, i32 0, i32 1
  %f154 = bitcast %union.anon* %value153 to float*
  %115 = load float, float* %f154, align 4, !tbaa !32
  %conv155 = fptosi float %115 to i32
  %116 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value156 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %116, i32 0, i32 1
  %i157 = bitcast %union.anon* %value156 to i32*
  store i32 %conv155, i32* %i157, align 4, !tbaa !12
  %117 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %type158 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %117, i32 0, i32 0
  store i32 2, i32* %type158, align 4, !tbaa !30
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.757

sw.bb.159:                                        ; preds = %sw
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.757

sw.bb.160:                                        ; preds = %sw
  %118 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value161 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %118, i32 0, i32 1
  %f162 = bitcast %union.anon* %value161 to float*
  %119 = load float, float* %f162, align 4, !tbaa !32
  %cmp163 = fcmp oeq float %119, 0.000000e+00
  br i1 %cmp163, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %sw.bb.160
  store i32 -23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.757

if.end.166:                                       ; preds = %sw.bb.160
  %120 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value167 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %120, i32 0, i32 1
  %f168 = bitcast %union.anon* %value167 to float*
  %121 = load float, float* %f168, align 4, !tbaa !32
  %122 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx169 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %122, i64 -1
  %value170 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx169, i32 0, i32 1
  %f171 = bitcast %union.anon* %value170 to float*
  %123 = load float, float* %f171, align 4, !tbaa !32
  %div = fdiv float %123, %121
  store float %div, float* %f171, align 4, !tbaa !32
  %124 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %incdec.ptr172 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %124, i32 -1
  store %struct.calc_value_s* %incdec.ptr172, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.757

sw.bb.173:                                        ; preds = %sw
  %125 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx174 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %125, i64 -1
  %value175 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx174, i32 0, i32 1
  %f176 = bitcast %union.anon* %value175 to float*
  %126 = load float, float* %f176, align 4, !tbaa !32
  %conv177 = fpext float %126 to double
  %127 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value178 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %127, i32 0, i32 1
  %f179 = bitcast %union.anon* %value178 to float*
  %128 = load float, float* %f179, align 4, !tbaa !32
  %conv180 = fpext float %128 to double
  %call181 = call double @pow(double %conv177, double %conv180) #8
  %conv182 = fptrunc double %call181 to float
  %129 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx183 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %129, i64 -1
  %value184 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx183, i32 0, i32 1
  %f185 = bitcast %union.anon* %value184 to float*
  store float %conv182, float* %f185, align 4, !tbaa !32
  %130 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %incdec.ptr186 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %130, i32 -1
  store %struct.calc_value_s* %incdec.ptr186, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.757

sw.bb.187:                                        ; preds = %sw
  %131 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value188 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %131, i32 0, i32 1
  %f189 = bitcast %union.anon* %value188 to float*
  %132 = load float, float* %f189, align 4, !tbaa !32
  %conv190 = fpext float %132 to double
  %call191 = call double @floor(double %conv190) #7
  %conv192 = fptrunc double %call191 to float
  %133 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value193 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %133, i32 0, i32 1
  %f194 = bitcast %union.anon* %value193 to float*
  store float %conv192, float* %f194, align 4, !tbaa !32
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.757

sw.bb.195:                                        ; preds = %sw
  %134 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value196 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %134, i32 0, i32 1
  %i197 = bitcast %union.anon* %value196 to i32*
  %135 = load i32, i32* %i197, align 4, !tbaa !12
  %cmp198 = icmp eq i32 %135, 0
  br i1 %cmp198, label %if.then.200, label %if.end.201

if.then.200:                                      ; preds = %sw.bb.195
  store i32 -23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.757

if.end.201:                                       ; preds = %sw.bb.195
  %136 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value202 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %136, i32 0, i32 1
  %i203 = bitcast %union.anon* %value202 to i32*
  %137 = load i32, i32* %i203, align 4, !tbaa !12
  %138 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx204 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %138, i64 -1
  %value205 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx204, i32 0, i32 1
  %i206 = bitcast %union.anon* %value205 to i32*
  %139 = load i32, i32* %i206, align 4, !tbaa !12
  %div207 = sdiv i32 %139, %137
  store i32 %div207, i32* %i206, align 4, !tbaa !12
  %cmp208 = icmp eq i32 %div207, -2147483648
  br i1 %cmp208, label %land.lhs.true.210, label %if.end.216

land.lhs.true.210:                                ; preds = %if.end.201
  %140 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value211 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %140, i32 0, i32 1
  %i212 = bitcast %union.anon* %value211 to i32*
  %141 = load i32, i32* %i212, align 4, !tbaa !12
  %cmp213 = icmp eq i32 %141, -1
  br i1 %cmp213, label %if.then.215, label %if.end.216

if.then.215:                                      ; preds = %land.lhs.true.210
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.757

if.end.216:                                       ; preds = %land.lhs.true.210, %if.end.201
  %142 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %incdec.ptr217 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %142, i32 -1
  store %struct.calc_value_s* %incdec.ptr217, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.757

sw.bb.218:                                        ; preds = %sw
  %143 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value219 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %143, i32 0, i32 1
  %f220 = bitcast %union.anon* %value219 to float*
  %144 = load float, float* %f220, align 4, !tbaa !32
  %conv221 = fpext float %144 to double
  %call222 = call double @log(double %conv221) #8
  %conv223 = fptrunc double %call222 to float
  %145 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value224 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %145, i32 0, i32 1
  %f225 = bitcast %union.anon* %value224 to float*
  store float %conv223, float* %f225, align 4, !tbaa !32
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.757

sw.bb.226:                                        ; preds = %sw
  %146 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value227 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %146, i32 0, i32 1
  %f228 = bitcast %union.anon* %value227 to float*
  %147 = load float, float* %f228, align 4, !tbaa !32
  %conv229 = fpext float %147 to double
  %call230 = call double @log10(double %conv229) #8
  %conv231 = fptrunc double %call230 to float
  %148 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value232 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %148, i32 0, i32 1
  %f233 = bitcast %union.anon* %value232 to float*
  store float %conv231, float* %f233, align 4, !tbaa !32
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.757

sw.bb.234:                                        ; preds = %sw
  %149 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value235 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %149, i32 0, i32 1
  %i236 = bitcast %union.anon* %value235 to i32*
  %150 = load i32, i32* %i236, align 4, !tbaa !12
  %cmp237 = icmp eq i32 %150, 0
  br i1 %cmp237, label %if.then.239, label %if.end.240

if.then.239:                                      ; preds = %sw.bb.234
  store i32 -23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.757

if.end.240:                                       ; preds = %sw.bb.234
  %151 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value241 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %151, i32 0, i32 1
  %i242 = bitcast %union.anon* %value241 to i32*
  %152 = load i32, i32* %i242, align 4, !tbaa !12
  %153 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx243 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %153, i64 -1
  %value244 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx243, i32 0, i32 1
  %i245 = bitcast %union.anon* %value244 to i32*
  %154 = load i32, i32* %i245, align 4, !tbaa !12
  %rem = srem i32 %154, %152
  store i32 %rem, i32* %i245, align 4, !tbaa !12
  %155 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %incdec.ptr246 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %155, i32 -1
  store %struct.calc_value_s* %incdec.ptr246, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.757

sw.bb.247:                                        ; preds = %sw
  %156 = bitcast double* %prod to i8*
  call void @llvm.lifetime.start(i64 8, i8* %156) #2
  %157 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx248 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %157, i64 -1
  %value249 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx248, i32 0, i32 1
  %i250 = bitcast %union.anon* %value249 to i32*
  %158 = load i32, i32* %i250, align 4, !tbaa !12
  %conv251 = sitofp i32 %158 to double
  %159 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value252 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %159, i32 0, i32 1
  %i253 = bitcast %union.anon* %value252 to i32*
  %160 = load i32, i32* %i253, align 4, !tbaa !12
  %conv254 = sitofp i32 %160 to double
  %mul = fmul double %conv251, %conv254
  store double %mul, double* %prod, align 8, !tbaa !34
  %161 = load double, double* %prod, align 8, !tbaa !34
  %cmp255 = fcmp olt double %161, 0xC1E0000000000000
  br i1 %cmp255, label %if.then.260, label %lor.lhs.false.257

lor.lhs.false.257:                                ; preds = %sw.bb.247
  %162 = load double, double* %prod, align 8, !tbaa !34
  %cmp258 = fcmp ogt double %162, 0x41DFFFFFFFC00000
  br i1 %cmp258, label %if.then.260, label %if.else.262

if.then.260:                                      ; preds = %lor.lhs.false.257, %sw.bb.247
  %163 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %add.ptr261 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %163, i64 -1
  %164 = load double, double* %prod, align 8, !tbaa !34
  call void @store_float(%struct.calc_value_s* %add.ptr261, double %164) #6
  br label %if.end.267

if.else.262:                                      ; preds = %lor.lhs.false.257
  %165 = load double, double* %prod, align 8, !tbaa !34
  %conv263 = fptosi double %165 to i32
  %166 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx264 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %166, i64 -1
  %value265 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx264, i32 0, i32 1
  %i266 = bitcast %union.anon* %value265 to i32*
  store i32 %conv263, i32* %i266, align 4, !tbaa !12
  br label %if.end.267

if.end.267:                                       ; preds = %if.else.262, %if.then.260
  %167 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %incdec.ptr268 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %167, i32 -1
  store %struct.calc_value_s* %incdec.ptr268, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  %168 = bitcast double* %prod to i8*
  call void @llvm.lifetime.end(i64 8, i8* %168) #2
  br label %cleanup.757

sw.bb.270:                                        ; preds = %sw
  %169 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value271 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %169, i32 0, i32 1
  %f272 = bitcast %union.anon* %value271 to float*
  %170 = load float, float* %f272, align 4, !tbaa !32
  %171 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx273 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %171, i64 -1
  %value274 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx273, i32 0, i32 1
  %f275 = bitcast %union.anon* %value274 to float*
  %172 = load float, float* %f275, align 4, !tbaa !32
  %mul276 = fmul float %172, %170
  store float %mul276, float* %f275, align 4, !tbaa !32
  %173 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %incdec.ptr277 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %173, i32 -1
  store %struct.calc_value_s* %incdec.ptr277, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.757

sw.bb.278:                                        ; preds = %sw
  br label %neg_int

neg_int:                                          ; preds = %sw.bb.278, %if.then
  %174 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value279 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %174, i32 0, i32 1
  %i280 = bitcast %union.anon* %value279 to i32*
  %175 = load i32, i32* %i280, align 4, !tbaa !12
  %cmp281 = icmp eq i32 %175, -2147483648
  br i1 %cmp281, label %if.then.283, label %if.else.287

if.then.283:                                      ; preds = %neg_int
  %176 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %177 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value284 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %177, i32 0, i32 1
  %i285 = bitcast %union.anon* %value284 to i32*
  %178 = load i32, i32* %i285, align 4, !tbaa !12
  %conv286 = sitofp i32 %178 to double
  call void @store_float(%struct.calc_value_s* %176, double %conv286) #6
  br label %if.end.293

if.else.287:                                      ; preds = %neg_int
  %179 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value288 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %179, i32 0, i32 1
  %i289 = bitcast %union.anon* %value288 to i32*
  %180 = load i32, i32* %i289, align 4, !tbaa !12
  %sub290 = sub nsw i32 0, %180
  %181 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value291 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %181, i32 0, i32 1
  %i292 = bitcast %union.anon* %value291 to i32*
  store i32 %sub290, i32* %i292, align 4, !tbaa !12
  br label %if.end.293

if.end.293:                                       ; preds = %if.else.287, %if.then.283
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.757

sw.bb.294:                                        ; preds = %sw
  %182 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value295 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %182, i32 0, i32 1
  %f296 = bitcast %union.anon* %value295 to float*
  %183 = load float, float* %f296, align 4, !tbaa !32
  %sub297 = fsub float -0.000000e+00, %183
  %184 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value298 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %184, i32 0, i32 1
  %f299 = bitcast %union.anon* %value298 to float*
  store float %sub297, float* %f299, align 4, !tbaa !32
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.757

sw.bb.300:                                        ; preds = %sw
  %185 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value301 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %185, i32 0, i32 1
  %i302 = bitcast %union.anon* %value301 to i32*
  %186 = load i32, i32* %i302, align 4, !tbaa !12
  %tobool = icmp ne i32 %186, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %187 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value303 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %187, i32 0, i32 1
  %i304 = bitcast %union.anon* %value303 to i32*
  store i32 %lnot.ext, i32* %i304, align 4, !tbaa !12
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.757

sw.bb.305:                                        ; preds = %sw
  %188 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value306 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %188, i32 0, i32 1
  %i307 = bitcast %union.anon* %value306 to i32*
  %189 = load i32, i32* %i307, align 4, !tbaa !12
  %neg = xor i32 %189, -1
  %190 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value308 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %190, i32 0, i32 1
  %i309 = bitcast %union.anon* %value308 to i32*
  store i32 %neg, i32* %i309, align 4, !tbaa !12
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.757

sw.bb.310:                                        ; preds = %sw
  %191 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value311 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %191, i32 0, i32 1
  %i312 = bitcast %union.anon* %value311 to i32*
  %192 = load i32, i32* %i312, align 4, !tbaa !12
  %193 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx313 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %193, i64 -1
  %value314 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx313, i32 0, i32 1
  %i315 = bitcast %union.anon* %value314 to i32*
  %194 = load i32, i32* %i315, align 4, !tbaa !12
  %or = or i32 %194, %192
  store i32 %or, i32* %i315, align 4, !tbaa !12
  %195 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %incdec.ptr316 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %195, i32 -1
  store %struct.calc_value_s* %incdec.ptr316, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.757

sw.bb.317:                                        ; preds = %sw
  %196 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value318 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %196, i32 0, i32 1
  %f319 = bitcast %union.anon* %value318 to float*
  %197 = load float, float* %f319, align 4, !tbaa !32
  %conv320 = fpext float %197 to double
  %add321 = fadd double %conv320, 5.000000e-01
  %call322 = call double @floor(double %add321) #7
  %conv323 = fptrunc double %call322 to float
  %198 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value324 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %198, i32 0, i32 1
  %f325 = bitcast %union.anon* %value324 to float*
  store float %conv323, float* %f325, align 4, !tbaa !32
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.757

sw.bb.326:                                        ; preds = %sw
  %199 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value327 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %199, i32 0, i32 1
  %f328 = bitcast %union.anon* %value327 to float*
  %200 = load float, float* %f328, align 4, !tbaa !32
  %conv329 = fpext float %200 to double
  %call330 = call double @gs_sin_degrees(double %conv329) #6
  %conv331 = fptrunc double %call330 to float
  %201 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value332 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %201, i32 0, i32 1
  %f333 = bitcast %union.anon* %value332 to float*
  store float %conv331, float* %f333, align 4, !tbaa !32
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.757

sw.bb.334:                                        ; preds = %sw
  %202 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value335 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %202, i32 0, i32 1
  %f336 = bitcast %union.anon* %value335 to float*
  %203 = load float, float* %f336, align 4, !tbaa !32
  %conv337 = fpext float %203 to double
  %call338 = call double @sqrt(double %conv337) #8
  %conv339 = fptrunc double %call338 to float
  %204 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value340 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %204, i32 0, i32 1
  %f341 = bitcast %union.anon* %value340 to float*
  store float %conv339, float* %f341, align 4, !tbaa !32
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.757

sw.bb.342:                                        ; preds = %sw
  %205 = bitcast i32* %int1343 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %205) #2
  %206 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx344 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %206, i64 -1
  %value345 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx344, i32 0, i32 1
  %i346 = bitcast %union.anon* %value345 to i32*
  %207 = load i32, i32* %i346, align 4, !tbaa !12
  store i32 %207, i32* %int1343, align 4, !tbaa !12
  %208 = bitcast i32* %int2347 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %208) #2
  %209 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value348 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %209, i32 0, i32 1
  %i349 = bitcast %union.anon* %value348 to i32*
  %210 = load i32, i32* %i349, align 4, !tbaa !12
  store i32 %210, i32* %int2347, align 4, !tbaa !12
  %211 = load i32, i32* %int1343, align 4, !tbaa !12
  %212 = load i32, i32* %int2347, align 4, !tbaa !12
  %xor350 = xor i32 %211, %212
  %cmp351 = icmp slt i32 %xor350, 0
  br i1 %cmp351, label %land.lhs.true.353, label %if.else.363

land.lhs.true.353:                                ; preds = %sw.bb.342
  %213 = load i32, i32* %int1343, align 4, !tbaa !12
  %214 = load i32, i32* %int2347, align 4, !tbaa !12
  %sub354 = sub nsw i32 %213, %214
  %215 = load i32, i32* %int1343, align 4, !tbaa !12
  %xor355 = xor i32 %sub354, %215
  %cmp356 = icmp sge i32 %xor355, 0
  br i1 %cmp356, label %if.then.358, label %if.else.363

if.then.358:                                      ; preds = %land.lhs.true.353
  %216 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %add.ptr359 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %216, i64 -1
  %217 = load i32, i32* %int1343, align 4, !tbaa !12
  %conv360 = sitofp i32 %217 to double
  %218 = load i32, i32* %int2347, align 4, !tbaa !12
  %conv361 = sitofp i32 %218 to double
  %sub362 = fsub double %conv360, %conv361
  call void @store_float(%struct.calc_value_s* %add.ptr359, double %sub362) #6
  br label %if.end.368

if.else.363:                                      ; preds = %land.lhs.true.353, %sw.bb.342
  %219 = load i32, i32* %int1343, align 4, !tbaa !12
  %220 = load i32, i32* %int2347, align 4, !tbaa !12
  %sub364 = sub nsw i32 %219, %220
  %221 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx365 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %221, i64 -1
  %value366 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx365, i32 0, i32 1
  %i367 = bitcast %union.anon* %value366 to i32*
  store i32 %sub364, i32* %i367, align 4, !tbaa !12
  br label %if.end.368

if.end.368:                                       ; preds = %if.else.363, %if.then.358
  %222 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %incdec.ptr369 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %222, i32 -1
  store %struct.calc_value_s* %incdec.ptr369, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  %223 = bitcast i32* %int2347 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %223) #2
  %224 = bitcast i32* %int1343 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %224) #2
  br label %cleanup.757

sw.bb.372:                                        ; preds = %sw
  %225 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value373 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %225, i32 0, i32 1
  %f374 = bitcast %union.anon* %value373 to float*
  %226 = load float, float* %f374, align 4, !tbaa !32
  %227 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx375 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %227, i64 -1
  %value376 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx375, i32 0, i32 1
  %f377 = bitcast %union.anon* %value376 to float*
  %228 = load float, float* %f377, align 4, !tbaa !32
  %sub378 = fsub float %228, %226
  store float %sub378, float* %f377, align 4, !tbaa !32
  %229 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %incdec.ptr379 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %229, i32 -1
  store %struct.calc_value_s* %incdec.ptr379, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.757

sw.bb.380:                                        ; preds = %sw
  %230 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value381 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %230, i32 0, i32 1
  %f382 = bitcast %union.anon* %value381 to float*
  %231 = load float, float* %f382, align 4, !tbaa !32
  %cmp383 = fcmp olt float %231, 0.000000e+00
  br i1 %cmp383, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.380
  %232 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value385 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %232, i32 0, i32 1
  %f386 = bitcast %union.anon* %value385 to float*
  %233 = load float, float* %f386, align 4, !tbaa !32
  %conv387 = fpext float %233 to double
  %call388 = call double @ceil(double %conv387) #7
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.380
  %234 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value389 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %234, i32 0, i32 1
  %f390 = bitcast %union.anon* %value389 to float*
  %235 = load float, float* %f390, align 4, !tbaa !32
  %conv391 = fpext float %235 to double
  %call392 = call double @floor(double %conv391) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %call388, %cond.true ], [ %call392, %cond.false ]
  %conv393 = fptrunc double %cond to float
  %236 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value394 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %236, i32 0, i32 1
  %f395 = bitcast %union.anon* %value394 to float*
  store float %conv393, float* %f395, align 4, !tbaa !32
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.757

sw.bb.396:                                        ; preds = %sw
  %237 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value397 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %237, i32 0, i32 1
  %i398 = bitcast %union.anon* %value397 to i32*
  %238 = load i32, i32* %i398, align 4, !tbaa !12
  %239 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx399 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %239, i64 -1
  %value400 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx399, i32 0, i32 1
  %i401 = bitcast %union.anon* %value400 to i32*
  %240 = load i32, i32* %i401, align 4, !tbaa !12
  %xor402 = xor i32 %240, %238
  store i32 %xor402, i32* %i401, align 4, !tbaa !12
  %241 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %incdec.ptr403 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %241, i32 -1
  store %struct.calc_value_s* %incdec.ptr403, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.757

sw.bb.404:                                        ; preds = %sw
  %242 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx405 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %242, i64 -1
  %value406 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx405, i32 0, i32 1
  %i407 = bitcast %union.anon* %value406 to i32*
  %243 = load i32, i32* %i407, align 4, !tbaa !12
  %244 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value408 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %244, i32 0, i32 1
  %i409 = bitcast %union.anon* %value408 to i32*
  %245 = load i32, i32* %i409, align 4, !tbaa !12
  %cmp410 = icmp eq i32 %243, %245
  %conv411 = zext i1 %cmp410 to i32
  %246 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx412 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %246, i64 -1
  %value413 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx412, i32 0, i32 1
  %i414 = bitcast %union.anon* %value413 to i32*
  store i32 %conv411, i32* %i414, align 4, !tbaa !12
  br label %rel

sw.bb.415:                                        ; preds = %sw
  %247 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx416 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %247, i64 -1
  %value417 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx416, i32 0, i32 1
  %f418 = bitcast %union.anon* %value417 to float*
  %248 = load float, float* %f418, align 4, !tbaa !32
  %249 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value419 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %249, i32 0, i32 1
  %f420 = bitcast %union.anon* %value419 to float*
  %250 = load float, float* %f420, align 4, !tbaa !32
  %cmp421 = fcmp oeq float %248, %250
  %conv422 = zext i1 %cmp421 to i32
  %251 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx423 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %251, i64 -1
  %value424 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx423, i32 0, i32 1
  %i425 = bitcast %union.anon* %value424 to i32*
  store i32 %conv422, i32* %i425, align 4, !tbaa !12
  br label %rel

rel:                                              ; preds = %sw.bb.528, %sw.bb.517, %sw.bb.506, %sw.bb.495, %sw.bb.484, %sw.bb.473, %sw.bb.462, %sw.bb.451, %sw.bb.440, %sw.bb.429, %sw.bb.415, %sw.bb.404
  %252 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx426 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %252, i64 -1
  %type427 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx426, i32 0, i32 0
  store i32 1, i32* %type427, align 4, !tbaa !30
  %253 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %incdec.ptr428 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %253, i32 -1
  store %struct.calc_value_s* %incdec.ptr428, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.757

sw.bb.429:                                        ; preds = %sw
  %254 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx430 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %254, i64 -1
  %value431 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx430, i32 0, i32 1
  %i432 = bitcast %union.anon* %value431 to i32*
  %255 = load i32, i32* %i432, align 4, !tbaa !12
  %256 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value433 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %256, i32 0, i32 1
  %i434 = bitcast %union.anon* %value433 to i32*
  %257 = load i32, i32* %i434, align 4, !tbaa !12
  %cmp435 = icmp sge i32 %255, %257
  %conv436 = zext i1 %cmp435 to i32
  %258 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx437 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %258, i64 -1
  %value438 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx437, i32 0, i32 1
  %i439 = bitcast %union.anon* %value438 to i32*
  store i32 %conv436, i32* %i439, align 4, !tbaa !12
  br label %rel

sw.bb.440:                                        ; preds = %sw
  %259 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx441 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %259, i64 -1
  %value442 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx441, i32 0, i32 1
  %f443 = bitcast %union.anon* %value442 to float*
  %260 = load float, float* %f443, align 4, !tbaa !32
  %261 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value444 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %261, i32 0, i32 1
  %f445 = bitcast %union.anon* %value444 to float*
  %262 = load float, float* %f445, align 4, !tbaa !32
  %cmp446 = fcmp oge float %260, %262
  %conv447 = zext i1 %cmp446 to i32
  %263 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx448 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %263, i64 -1
  %value449 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx448, i32 0, i32 1
  %i450 = bitcast %union.anon* %value449 to i32*
  store i32 %conv447, i32* %i450, align 4, !tbaa !12
  br label %rel

sw.bb.451:                                        ; preds = %sw
  %264 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx452 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %264, i64 -1
  %value453 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx452, i32 0, i32 1
  %i454 = bitcast %union.anon* %value453 to i32*
  %265 = load i32, i32* %i454, align 4, !tbaa !12
  %266 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value455 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %266, i32 0, i32 1
  %i456 = bitcast %union.anon* %value455 to i32*
  %267 = load i32, i32* %i456, align 4, !tbaa !12
  %cmp457 = icmp sgt i32 %265, %267
  %conv458 = zext i1 %cmp457 to i32
  %268 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx459 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %268, i64 -1
  %value460 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx459, i32 0, i32 1
  %i461 = bitcast %union.anon* %value460 to i32*
  store i32 %conv458, i32* %i461, align 4, !tbaa !12
  br label %rel

sw.bb.462:                                        ; preds = %sw
  %269 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx463 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %269, i64 -1
  %value464 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx463, i32 0, i32 1
  %f465 = bitcast %union.anon* %value464 to float*
  %270 = load float, float* %f465, align 4, !tbaa !32
  %271 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value466 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %271, i32 0, i32 1
  %f467 = bitcast %union.anon* %value466 to float*
  %272 = load float, float* %f467, align 4, !tbaa !32
  %cmp468 = fcmp ogt float %270, %272
  %conv469 = zext i1 %cmp468 to i32
  %273 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx470 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %273, i64 -1
  %value471 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx470, i32 0, i32 1
  %i472 = bitcast %union.anon* %value471 to i32*
  store i32 %conv469, i32* %i472, align 4, !tbaa !12
  br label %rel

sw.bb.473:                                        ; preds = %sw
  %274 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx474 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %274, i64 -1
  %value475 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx474, i32 0, i32 1
  %i476 = bitcast %union.anon* %value475 to i32*
  %275 = load i32, i32* %i476, align 4, !tbaa !12
  %276 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value477 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %276, i32 0, i32 1
  %i478 = bitcast %union.anon* %value477 to i32*
  %277 = load i32, i32* %i478, align 4, !tbaa !12
  %cmp479 = icmp sle i32 %275, %277
  %conv480 = zext i1 %cmp479 to i32
  %278 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx481 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %278, i64 -1
  %value482 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx481, i32 0, i32 1
  %i483 = bitcast %union.anon* %value482 to i32*
  store i32 %conv480, i32* %i483, align 4, !tbaa !12
  br label %rel

sw.bb.484:                                        ; preds = %sw
  %279 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx485 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %279, i64 -1
  %value486 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx485, i32 0, i32 1
  %f487 = bitcast %union.anon* %value486 to float*
  %280 = load float, float* %f487, align 4, !tbaa !32
  %281 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value488 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %281, i32 0, i32 1
  %f489 = bitcast %union.anon* %value488 to float*
  %282 = load float, float* %f489, align 4, !tbaa !32
  %cmp490 = fcmp ole float %280, %282
  %conv491 = zext i1 %cmp490 to i32
  %283 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx492 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %283, i64 -1
  %value493 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx492, i32 0, i32 1
  %i494 = bitcast %union.anon* %value493 to i32*
  store i32 %conv491, i32* %i494, align 4, !tbaa !12
  br label %rel

sw.bb.495:                                        ; preds = %sw
  %284 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx496 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %284, i64 -1
  %value497 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx496, i32 0, i32 1
  %i498 = bitcast %union.anon* %value497 to i32*
  %285 = load i32, i32* %i498, align 4, !tbaa !12
  %286 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value499 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %286, i32 0, i32 1
  %i500 = bitcast %union.anon* %value499 to i32*
  %287 = load i32, i32* %i500, align 4, !tbaa !12
  %cmp501 = icmp slt i32 %285, %287
  %conv502 = zext i1 %cmp501 to i32
  %288 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx503 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %288, i64 -1
  %value504 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx503, i32 0, i32 1
  %i505 = bitcast %union.anon* %value504 to i32*
  store i32 %conv502, i32* %i505, align 4, !tbaa !12
  br label %rel

sw.bb.506:                                        ; preds = %sw
  %289 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx507 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %289, i64 -1
  %value508 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx507, i32 0, i32 1
  %f509 = bitcast %union.anon* %value508 to float*
  %290 = load float, float* %f509, align 4, !tbaa !32
  %291 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value510 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %291, i32 0, i32 1
  %f511 = bitcast %union.anon* %value510 to float*
  %292 = load float, float* %f511, align 4, !tbaa !32
  %cmp512 = fcmp olt float %290, %292
  %conv513 = zext i1 %cmp512 to i32
  %293 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx514 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %293, i64 -1
  %value515 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx514, i32 0, i32 1
  %i516 = bitcast %union.anon* %value515 to i32*
  store i32 %conv513, i32* %i516, align 4, !tbaa !12
  br label %rel

sw.bb.517:                                        ; preds = %sw
  %294 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx518 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %294, i64 -1
  %value519 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx518, i32 0, i32 1
  %i520 = bitcast %union.anon* %value519 to i32*
  %295 = load i32, i32* %i520, align 4, !tbaa !12
  %296 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value521 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %296, i32 0, i32 1
  %i522 = bitcast %union.anon* %value521 to i32*
  %297 = load i32, i32* %i522, align 4, !tbaa !12
  %cmp523 = icmp ne i32 %295, %297
  %conv524 = zext i1 %cmp523 to i32
  %298 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx525 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %298, i64 -1
  %value526 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx525, i32 0, i32 1
  %i527 = bitcast %union.anon* %value526 to i32*
  store i32 %conv524, i32* %i527, align 4, !tbaa !12
  br label %rel

sw.bb.528:                                        ; preds = %sw
  %299 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx529 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %299, i64 -1
  %value530 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx529, i32 0, i32 1
  %f531 = bitcast %union.anon* %value530 to float*
  %300 = load float, float* %f531, align 4, !tbaa !32
  %301 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value532 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %301, i32 0, i32 1
  %f533 = bitcast %union.anon* %value532 to float*
  %302 = load float, float* %f533, align 4, !tbaa !32
  %cmp534 = fcmp une float %300, %302
  %conv535 = zext i1 %cmp534 to i32
  %303 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx536 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %303, i64 -1
  %value537 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx536, i32 0, i32 1
  %i538 = bitcast %union.anon* %value537 to i32*
  store i32 %conv535, i32* %i538, align 4, !tbaa !12
  br label %rel

sw.bb.539:                                        ; preds = %sw
  %304 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value540 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %304, i32 0, i32 1
  %i541 = bitcast %union.anon* %value540 to i32*
  %305 = load i32, i32* %i541, align 4, !tbaa !12
  store i32 %305, i32* %i, align 4, !tbaa !12
  %306 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %307 = load %struct.calc_value_s*, %struct.calc_value_s** %vstack, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint %struct.calc_value_s* %306 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.calc_value_s* %307 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv542 = trunc i64 %sub.ptr.div to i32
  store i32 %conv542, i32* %n, align 4, !tbaa !12
  %308 = load i32, i32* %i, align 4, !tbaa !12
  %cmp543 = icmp slt i32 %308, 0
  br i1 %cmp543, label %if.then.548, label %lor.lhs.false.545

lor.lhs.false.545:                                ; preds = %sw.bb.539
  %309 = load i32, i32* %i, align 4, !tbaa !12
  %310 = load i32, i32* %n, align 4, !tbaa !12
  %cmp546 = icmp sge i32 %309, %310
  br i1 %cmp546, label %if.then.548, label %if.end.549

if.then.548:                                      ; preds = %lor.lhs.false.545, %sw.bb.539
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.757

if.end.549:                                       ; preds = %lor.lhs.false.545
  %311 = load i32, i32* %i, align 4, !tbaa !12
  %312 = load i32, i32* %n, align 4, !tbaa !12
  %sub550 = sub nsw i32 %312, 1
  %sub551 = sub nsw i32 256, %sub550
  %cmp552 = icmp sgt i32 %311, %sub551
  br i1 %cmp552, label %if.then.554, label %if.end.555

if.then.554:                                      ; preds = %if.end.549
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.757

if.end.555:                                       ; preds = %if.end.549
  %313 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %314 = bitcast %struct.calc_value_s* %313 to i8*
  %315 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %316 = load i32, i32* %i, align 4, !tbaa !12
  %idx.ext556 = sext i32 %316 to i64
  %idx.neg = sub i64 0, %idx.ext556
  %add.ptr557 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %315, i64 %idx.neg
  %317 = bitcast %struct.calc_value_s* %add.ptr557 to i8*
  %318 = load i32, i32* %i, align 4, !tbaa !12
  %conv558 = sext i32 %318 to i64
  %mul559 = mul i64 %conv558, 8
  %call560 = call i8* @memcpy(i8* %314, i8* %317, i64 %mul559) #8
  %319 = load i32, i32* %i, align 4, !tbaa !12
  %sub561 = sub nsw i32 %319, 1
  %320 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %idx.ext562 = sext i32 %sub561 to i64
  %add.ptr563 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %320, i64 %idx.ext562
  store %struct.calc_value_s* %add.ptr563, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.757

sw.bb.564:                                        ; preds = %sw
  %321 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx565 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %321, i64 1
  %322 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %323 = bitcast %struct.calc_value_s* %arrayidx565 to i8*
  %324 = bitcast %struct.calc_value_s* %322 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %323, i8* %324, i64 8, i32 4, i1 false), !tbaa.struct !36
  br label %push

sw.bb.566:                                        ; preds = %sw
  %325 = load %struct.calc_value_s*, %struct.calc_value_s** %vstack, align 8, !tbaa !1
  %arrayidx567 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %325, i64 256
  %326 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %327 = bitcast %struct.calc_value_s* %arrayidx567 to i8*
  %328 = bitcast %struct.calc_value_s* %326 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %327, i8* %328, i64 8, i32 4, i1 false), !tbaa.struct !36
  %329 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %330 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx568 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %330, i64 -1
  %331 = bitcast %struct.calc_value_s* %329 to i8*
  %332 = bitcast %struct.calc_value_s* %arrayidx568 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %331, i8* %332, i64 8, i32 4, i1 false), !tbaa.struct !36
  %333 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx569 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %333, i64 -1
  %334 = load %struct.calc_value_s*, %struct.calc_value_s** %vstack, align 8, !tbaa !1
  %arrayidx570 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %334, i64 256
  %335 = bitcast %struct.calc_value_s* %arrayidx569 to i8*
  %336 = bitcast %struct.calc_value_s* %arrayidx570 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %335, i8* %336, i64 8, i32 4, i1 false), !tbaa.struct !36
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.757

sw.bb.571:                                        ; preds = %sw
  %337 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value572 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %337, i32 0, i32 1
  %i573 = bitcast %union.anon* %value572 to i32*
  %338 = load i32, i32* %i573, align 4, !tbaa !12
  store i32 %338, i32* %i, align 4, !tbaa !12
  %339 = load i32, i32* %i, align 4, !tbaa !12
  %cmp574 = icmp slt i32 %339, 0
  br i1 %cmp574, label %if.then.585, label %lor.lhs.false.576

lor.lhs.false.576:                                ; preds = %sw.bb.571
  %340 = load i32, i32* %i, align 4, !tbaa !12
  %conv577 = sext i32 %340 to i64
  %341 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %342 = load %struct.calc_value_s*, %struct.calc_value_s** %vstack, align 8, !tbaa !1
  %sub.ptr.lhs.cast578 = ptrtoint %struct.calc_value_s* %341 to i64
  %sub.ptr.rhs.cast579 = ptrtoint %struct.calc_value_s* %342 to i64
  %sub.ptr.sub580 = sub i64 %sub.ptr.lhs.cast578, %sub.ptr.rhs.cast579
  %sub.ptr.div581 = sdiv exact i64 %sub.ptr.sub580, 8
  %sub582 = sub nsw i64 %sub.ptr.div581, 1
  %cmp583 = icmp sge i64 %conv577, %sub582
  br i1 %cmp583, label %if.then.585, label %if.end.586

if.then.585:                                      ; preds = %lor.lhs.false.576, %sw.bb.571
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.757

if.end.586:                                       ; preds = %lor.lhs.false.576
  %343 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %344 = load i32, i32* %i, align 4, !tbaa !12
  %sub587 = sub nsw i32 0, %344
  %sub588 = sub nsw i32 %sub587, 1
  %idxprom589 = sext i32 %sub588 to i64
  %345 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx590 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %345, i64 %idxprom589
  %346 = bitcast %struct.calc_value_s* %343 to i8*
  %347 = bitcast %struct.calc_value_s* %arrayidx590 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %346, i8* %347, i64 8, i32 4, i1 false), !tbaa.struct !36
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.757

sw.bb.591:                                        ; preds = %sw
  %348 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %incdec.ptr592 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %348, i32 -1
  store %struct.calc_value_s* %incdec.ptr592, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.757

sw.bb.593:                                        ; preds = %sw
  %349 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx594 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %349, i64 -1
  %value595 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx594, i32 0, i32 1
  %i596 = bitcast %union.anon* %value595 to i32*
  %350 = load i32, i32* %i596, align 4, !tbaa !12
  store i32 %350, i32* %n, align 4, !tbaa !12
  %351 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value597 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %351, i32 0, i32 1
  %i598 = bitcast %union.anon* %value597 to i32*
  %352 = load i32, i32* %i598, align 4, !tbaa !12
  store i32 %352, i32* %i, align 4, !tbaa !12
  %353 = load i32, i32* %n, align 4, !tbaa !12
  %cmp599 = icmp slt i32 %353, 0
  br i1 %cmp599, label %if.then.610, label %lor.lhs.false.601

lor.lhs.false.601:                                ; preds = %sw.bb.593
  %354 = load i32, i32* %n, align 4, !tbaa !12
  %conv602 = sext i32 %354 to i64
  %355 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %356 = load %struct.calc_value_s*, %struct.calc_value_s** %vstack, align 8, !tbaa !1
  %sub.ptr.lhs.cast603 = ptrtoint %struct.calc_value_s* %355 to i64
  %sub.ptr.rhs.cast604 = ptrtoint %struct.calc_value_s* %356 to i64
  %sub.ptr.sub605 = sub i64 %sub.ptr.lhs.cast603, %sub.ptr.rhs.cast604
  %sub.ptr.div606 = sdiv exact i64 %sub.ptr.sub605, 8
  %sub607 = sub nsw i64 %sub.ptr.div606, 2
  %cmp608 = icmp sgt i64 %conv602, %sub607
  br i1 %cmp608, label %if.then.610, label %if.end.611

if.then.610:                                      ; preds = %lor.lhs.false.601, %sw.bb.593
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.757

if.end.611:                                       ; preds = %lor.lhs.false.601
  br label %for.cond.612

for.cond.612:                                     ; preds = %for.inc.631, %if.end.611
  %357 = load i32, i32* %i, align 4, !tbaa !12
  %cmp613 = icmp sgt i32 %357, 0
  br i1 %cmp613, label %for.body.615, label %for.end.632

for.body.615:                                     ; preds = %for.cond.612
  %358 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %359 = load i32, i32* %n, align 4, !tbaa !12
  %idx.ext616 = sext i32 %359 to i64
  %idx.neg617 = sub i64 0, %idx.ext616
  %add.ptr618 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %358, i64 %idx.neg617
  %360 = bitcast %struct.calc_value_s* %add.ptr618 to i8*
  %361 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %362 = load i32, i32* %n, align 4, !tbaa !12
  %add619 = add nsw i32 %362, 1
  %idx.ext620 = sext i32 %add619 to i64
  %idx.neg621 = sub i64 0, %idx.ext620
  %add.ptr622 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %361, i64 %idx.neg621
  %363 = bitcast %struct.calc_value_s* %add.ptr622 to i8*
  %364 = load i32, i32* %n, align 4, !tbaa !12
  %conv623 = sext i32 %364 to i64
  %mul624 = mul i64 %conv623, 8
  %call625 = call i8* @memmove(i8* %360, i8* %363, i64 %mul624) #8
  %365 = load i32, i32* %n, align 4, !tbaa !12
  %add626 = add nsw i32 %365, 1
  %sub627 = sub nsw i32 0, %add626
  %idxprom628 = sext i32 %sub627 to i64
  %366 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx629 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %366, i64 %idxprom628
  %367 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx630 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %367, i64 -1
  %368 = bitcast %struct.calc_value_s* %arrayidx629 to i8*
  %369 = bitcast %struct.calc_value_s* %arrayidx630 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %368, i8* %369, i64 8, i32 4, i1 false), !tbaa.struct !36
  br label %for.inc.631

for.inc.631:                                      ; preds = %for.body.615
  %370 = load i32, i32* %i, align 4, !tbaa !12
  %dec = add nsw i32 %370, -1
  store i32 %dec, i32* %i, align 4, !tbaa !12
  br label %for.cond.612

for.end.632:                                      ; preds = %for.cond.612
  br label %for.cond.633

for.cond.633:                                     ; preds = %for.inc.652, %for.end.632
  %371 = load i32, i32* %i, align 4, !tbaa !12
  %cmp634 = icmp slt i32 %371, 0
  br i1 %cmp634, label %for.body.636, label %for.end.654

for.body.636:                                     ; preds = %for.cond.633
  %372 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx637 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %372, i64 -1
  %373 = load i32, i32* %n, align 4, !tbaa !12
  %add638 = add nsw i32 %373, 1
  %sub639 = sub nsw i32 0, %add638
  %idxprom640 = sext i32 %sub639 to i64
  %374 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx641 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %374, i64 %idxprom640
  %375 = bitcast %struct.calc_value_s* %arrayidx637 to i8*
  %376 = bitcast %struct.calc_value_s* %arrayidx641 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %375, i8* %376, i64 8, i32 4, i1 false), !tbaa.struct !36
  %377 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %378 = load i32, i32* %n, align 4, !tbaa !12
  %add642 = add nsw i32 %378, 1
  %idx.ext643 = sext i32 %add642 to i64
  %idx.neg644 = sub i64 0, %idx.ext643
  %add.ptr645 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %377, i64 %idx.neg644
  %379 = bitcast %struct.calc_value_s* %add.ptr645 to i8*
  %380 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %381 = load i32, i32* %n, align 4, !tbaa !12
  %idx.ext646 = sext i32 %381 to i64
  %idx.neg647 = sub i64 0, %idx.ext646
  %add.ptr648 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %380, i64 %idx.neg647
  %382 = bitcast %struct.calc_value_s* %add.ptr648 to i8*
  %383 = load i32, i32* %n, align 4, !tbaa !12
  %conv649 = sext i32 %383 to i64
  %mul650 = mul i64 %conv649, 8
  %call651 = call i8* @memmove(i8* %379, i8* %382, i64 %mul650) #8
  br label %for.inc.652

for.inc.652:                                      ; preds = %for.body.636
  %384 = load i32, i32* %i, align 4, !tbaa !12
  %inc653 = add nsw i32 %384, 1
  store i32 %inc653, i32* %i, align 4, !tbaa !12
  br label %for.cond.633

for.end.654:                                      ; preds = %for.cond.633
  %385 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %add.ptr655 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %385, i64 -2
  store %struct.calc_value_s* %add.ptr655, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.757

sw.bb.656:                                        ; preds = %sw
  %386 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr657 = getelementptr inbounds i8, i8* %386, i32 1
  store i8* %incdec.ptr657, i8** %p, align 8, !tbaa !1
  %387 = load i8, i8* %386, align 1, !tbaa !13
  %conv658 = zext i8 %387 to i32
  %388 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx659 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %388, i64 1
  %value660 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx659, i32 0, i32 1
  %i661 = bitcast %union.anon* %value660 to i32*
  store i32 %conv658, i32* %i661, align 4, !tbaa !12
  %389 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx662 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %389, i64 1
  %type663 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx662, i32 0, i32 0
  store i32 2, i32* %type663, align 4, !tbaa !30
  br label %push

sw.bb.664:                                        ; preds = %sw
  %390 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx665 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %390, i64 1
  %value666 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx665, i32 0, i32 1
  %i667 = bitcast %union.anon* %value666 to i32*
  %391 = bitcast i32* %i667 to i8*
  %392 = load i8*, i8** %p, align 8, !tbaa !1
  %call668 = call i8* @memcpy(i8* %391, i8* %392, i64 4) #8
  %393 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx669 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %393, i64 1
  %type670 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx669, i32 0, i32 0
  store i32 2, i32* %type670, align 4, !tbaa !30
  %394 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr671 = getelementptr inbounds i8, i8* %394, i64 4
  store i8* %add.ptr671, i8** %p, align 8, !tbaa !1
  br label %push

sw.bb.672:                                        ; preds = %sw
  %395 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx673 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %395, i64 1
  %value674 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx673, i32 0, i32 1
  %f675 = bitcast %union.anon* %value674 to float*
  %396 = bitcast float* %f675 to i8*
  %397 = load i8*, i8** %p, align 8, !tbaa !1
  %call676 = call i8* @memcpy(i8* %396, i8* %397, i64 4) #8
  %398 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx677 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %398, i64 1
  %type678 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx677, i32 0, i32 0
  store i32 3, i32* %type678, align 4, !tbaa !30
  %399 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr679 = getelementptr inbounds i8, i8* %399, i64 4
  store i8* %add.ptr679, i8** %p, align 8, !tbaa !1
  br label %push

sw.bb.680:                                        ; preds = %sw
  %400 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx681 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %400, i64 1
  %value682 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx681, i32 0, i32 1
  %i683 = bitcast %union.anon* %value682 to i32*
  store i32 1, i32* %i683, align 4, !tbaa !12
  %401 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx684 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %401, i64 1
  %type685 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx684, i32 0, i32 0
  store i32 1, i32* %type685, align 4, !tbaa !30
  br label %push

sw.bb.686:                                        ; preds = %sw
  %402 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx687 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %402, i64 1
  %value688 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx687, i32 0, i32 1
  %i689 = bitcast %union.anon* %value688 to i32*
  store i32 0, i32* %i689, align 4, !tbaa !12
  %403 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %arrayidx690 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %403, i64 1
  %type691 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx690, i32 0, i32 0
  store i32 1, i32* %type691, align 4, !tbaa !30
  br label %push

push:                                             ; preds = %sw.bb.686, %sw.bb.680, %sw.bb.672, %sw.bb.664, %sw.bb.656, %sw.bb.564
  %404 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %405 = load %struct.calc_value_s*, %struct.calc_value_s** %vstack, align 8, !tbaa !1
  %arrayidx692 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %405, i64 256
  %cmp693 = icmp eq %struct.calc_value_s* %404, %arrayidx692
  br i1 %cmp693, label %if.then.695, label %if.end.696

if.then.695:                                      ; preds = %push
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.757

if.end.696:                                       ; preds = %push
  %406 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %incdec.ptr697 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %406, i32 1
  store %struct.calc_value_s* %incdec.ptr697, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.757

sw.bb.698:                                        ; preds = %sw
  %407 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %incdec.ptr699 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %407, i32 -1
  store %struct.calc_value_s* %incdec.ptr699, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value700 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %407, i32 0, i32 1
  %i701 = bitcast %union.anon* %value700 to i32*
  %408 = load i32, i32* %i701, align 4, !tbaa !12
  %tobool702 = icmp ne i32 %408, 0
  br i1 %tobool702, label %if.then.703, label %if.end.705

if.then.703:                                      ; preds = %sw.bb.698
  %409 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr704 = getelementptr inbounds i8, i8* %409, i64 2
  store i8* %add.ptr704, i8** %p, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.757

if.end.705:                                       ; preds = %sw.bb.698
  br label %sw.bb.706

sw.bb.706:                                        ; preds = %sw, %if.end.705
  %410 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx707 = getelementptr inbounds i8, i8* %410, i64 0
  %411 = load i8, i8* %arrayidx707, align 1, !tbaa !13
  %conv708 = zext i8 %411 to i32
  %shl709 = shl i32 %conv708, 8
  %add710 = add nsw i32 2, %shl709
  %412 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx711 = getelementptr inbounds i8, i8* %412, i64 1
  %413 = load i8, i8* %arrayidx711, align 1, !tbaa !13
  %conv712 = zext i8 %413 to i32
  %add713 = add nsw i32 %add710, %conv712
  %414 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext714 = sext i32 %add713 to i64
  %add.ptr715 = getelementptr inbounds i8, i8* %414, i64 %idx.ext714
  store i8* %add.ptr715, i8** %p, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.757

sw.bb.716:                                        ; preds = %sw
  store i32 18, i32* %cleanup.dest.slot
  br label %cleanup.757

sw.bb.717:                                        ; preds = %sw
  %415 = load i32, i32* %repeat_nesting_level, align 4, !tbaa !12
  %inc718 = add nsw i32 %415, 1
  store i32 %inc718, i32* %repeat_nesting_level, align 4, !tbaa !12
  %416 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %value719 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %416, i32 0, i32 1
  %i720 = bitcast %union.anon* %value719 to i32*
  %417 = load i32, i32* %i720, align 4, !tbaa !12
  %418 = load i32, i32* %repeat_nesting_level, align 4, !tbaa !12
  %idxprom721 = sext i32 %418 to i64
  %arrayidx722 = getelementptr inbounds [10 x i32], [10 x i32]* %repeat_count, i32 0, i64 %idxprom721
  store i32 %417, i32* %arrayidx722, align 4, !tbaa !12
  %419 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx723 = getelementptr inbounds i8, i8* %419, i64 0
  %420 = load i8, i8* %arrayidx723, align 1, !tbaa !13
  %conv724 = zext i8 %420 to i32
  %shl725 = shl i32 %conv724, 8
  %add726 = add nsw i32 1, %shl725
  %421 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx727 = getelementptr inbounds i8, i8* %421, i64 1
  %422 = load i8, i8* %arrayidx727, align 1, !tbaa !13
  %conv728 = zext i8 %422 to i32
  %add729 = add nsw i32 %add726, %conv728
  %423 = load i32, i32* %repeat_nesting_level, align 4, !tbaa !12
  %idxprom730 = sext i32 %423 to i64
  %arrayidx731 = getelementptr inbounds [10 x i32], [10 x i32]* %repeat_proc_size, i32 0, i64 %idxprom730
  store i32 %add729, i32* %arrayidx731, align 4, !tbaa !12
  %424 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %incdec.ptr732 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %424, i32 -1
  store %struct.calc_value_s* %incdec.ptr732, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %425 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx733 = getelementptr inbounds i8, i8* %425, i64 0
  %426 = load i8, i8* %arrayidx733, align 1, !tbaa !13
  %conv734 = zext i8 %426 to i32
  %shl735 = shl i32 %conv734, 8
  %add736 = add nsw i32 3, %shl735
  %427 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx737 = getelementptr inbounds i8, i8* %427, i64 1
  %428 = load i8, i8* %arrayidx737, align 1, !tbaa !13
  %conv738 = zext i8 %428 to i32
  %add739 = add nsw i32 %add736, %conv738
  %429 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext740 = sext i32 %add739 to i64
  %add.ptr741 = getelementptr inbounds i8, i8* %429, i64 %idx.ext740
  store i8* %add.ptr741, i8** %p, align 8, !tbaa !1
  br label %sw.bb.742

sw.bb.742:                                        ; preds = %sw, %sw.bb.717
  %430 = load i32, i32* %repeat_nesting_level, align 4, !tbaa !12
  %idxprom743 = sext i32 %430 to i64
  %arrayidx744 = getelementptr inbounds [10 x i32], [10 x i32]* %repeat_count, i32 0, i64 %idxprom743
  %431 = load i32, i32* %arrayidx744, align 4, !tbaa !12
  %dec745 = add nsw i32 %431, -1
  store i32 %dec745, i32* %arrayidx744, align 4, !tbaa !12
  %cmp746 = icmp sle i32 %431, 0
  br i1 %cmp746, label %if.then.748, label %if.else.750

if.then.748:                                      ; preds = %sw.bb.742
  %432 = load i32, i32* %repeat_nesting_level, align 4, !tbaa !12
  %dec749 = add nsw i32 %432, -1
  store i32 %dec749, i32* %repeat_nesting_level, align 4, !tbaa !12
  br label %if.end.756

if.else.750:                                      ; preds = %sw.bb.742
  %433 = load i32, i32* %repeat_nesting_level, align 4, !tbaa !12
  %idxprom751 = sext i32 %433 to i64
  %arrayidx752 = getelementptr inbounds [10 x i32], [10 x i32]* %repeat_proc_size, i32 0, i64 %idxprom751
  %434 = load i32, i32* %arrayidx752, align 4, !tbaa !12
  %435 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext753 = sext i32 %434 to i64
  %idx.neg754 = sub i64 0, %idx.ext753
  %add.ptr755 = getelementptr inbounds i8, i8* %435, i64 %idx.neg754
  store i8* %add.ptr755, i8** %p, align 8, !tbaa !1
  br label %if.end.756

if.end.756:                                       ; preds = %if.else.750, %if.then.748
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.757

sw.epilog:                                        ; preds = %sw
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.757

cleanup.757:                                      ; preds = %sw.bb.716, %sw.epilog, %if.end.756, %sw.bb.706, %if.then.703, %if.end.696, %if.then.695, %for.end.654, %if.then.610, %sw.bb.591, %if.end.586, %if.then.585, %sw.bb.566, %if.end.555, %if.then.554, %if.then.548, %rel, %sw.bb.396, %cond.end, %sw.bb.372, %if.end.368, %sw.bb.334, %sw.bb.326, %sw.bb.317, %sw.bb.310, %sw.bb.305, %sw.bb.300, %sw.bb.294, %if.end.293, %sw.bb.270, %if.end.267, %if.end.240, %if.then.239, %sw.bb.226, %sw.bb.218, %if.end.216, %if.then.215, %if.then.200, %sw.bb.187, %sw.bb.173, %if.end.166, %if.then.165, %sw.bb.159, %sw.bb.152, %sw.bb.144, %sw.bb.136, %if.end.134, %cleanup, %sw.bb.78, %sw.bb.70, %if.end.68, %sw.bb.41, %if.end, %sw.bb.20, %sw.bb
  %436 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %436) #2
  %437 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %437) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.798 [
    i32 0, label %cleanup.cont
    i32 6, label %for.cond.10
    i32 18, label %fin
  ]

cleanup.cont:                                     ; preds = %cleanup.757
  br label %for.cond.10

fin:                                              ; preds = %cleanup.757
  %438 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp, align 8, !tbaa !1
  %439 = load %struct.calc_value_s*, %struct.calc_value_s** %vstack, align 8, !tbaa !1
  %440 = load %struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s** %pfn, align 8, !tbaa !1
  %params759 = getelementptr inbounds %struct.gs_function_PtCr_s, %struct.gs_function_PtCr_s* %440, i32 0, i32 1
  %n760 = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %params759, i32 0, i32 2
  %441 = load i32, i32* %n760, align 4, !tbaa !37
  %idx.ext761 = sext i32 %441 to i64
  %add.ptr762 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %439, i64 %idx.ext761
  %cmp763 = icmp ne %struct.calc_value_s* %438, %add.ptr762
  br i1 %cmp763, label %if.then.765, label %if.end.766

if.then.765:                                      ; preds = %fin
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.798

if.end.766:                                       ; preds = %fin
  store i32 0, i32* %i, align 4, !tbaa !12
  br label %for.cond.767

for.cond.767:                                     ; preds = %for.inc.795, %if.end.766
  %442 = load i32, i32* %i, align 4, !tbaa !12
  %443 = load %struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s** %pfn, align 8, !tbaa !1
  %params768 = getelementptr inbounds %struct.gs_function_PtCr_s, %struct.gs_function_PtCr_s* %443, i32 0, i32 1
  %n769 = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %params768, i32 0, i32 2
  %444 = load i32, i32* %n769, align 4, !tbaa !37
  %cmp770 = icmp slt i32 %442, %444
  br i1 %cmp770, label %for.body.772, label %for.end.797

for.body.772:                                     ; preds = %for.cond.767
  %445 = load i32, i32* %i, align 4, !tbaa !12
  %add773 = add nsw i32 %445, 1
  %idxprom774 = sext i32 %add773 to i64
  %446 = load %struct.calc_value_s*, %struct.calc_value_s** %vstack, align 8, !tbaa !1
  %arrayidx775 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %446, i64 %idxprom774
  %type776 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx775, i32 0, i32 0
  %447 = load i32, i32* %type776, align 4, !tbaa !30
  switch i32 %447, label %sw.default [
    i32 2, label %sw.bb.777
    i32 3, label %sw.bb.786
  ]

sw.bb.777:                                        ; preds = %for.body.772
  %448 = load i32, i32* %i, align 4, !tbaa !12
  %add778 = add nsw i32 %448, 1
  %idxprom779 = sext i32 %add778 to i64
  %449 = load %struct.calc_value_s*, %struct.calc_value_s** %vstack, align 8, !tbaa !1
  %arrayidx780 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %449, i64 %idxprom779
  %value781 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx780, i32 0, i32 1
  %i782 = bitcast %union.anon* %value781 to i32*
  %450 = load i32, i32* %i782, align 4, !tbaa !12
  %conv783 = sitofp i32 %450 to float
  %451 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom784 = sext i32 %451 to i64
  %452 = load float*, float** %out.addr, align 8, !tbaa !1
  %arrayidx785 = getelementptr inbounds float, float* %452, i64 %idxprom784
  store float %conv783, float* %arrayidx785, align 4, !tbaa !32
  br label %sw.epilog.794

sw.bb.786:                                        ; preds = %for.body.772
  %453 = load i32, i32* %i, align 4, !tbaa !12
  %add787 = add nsw i32 %453, 1
  %idxprom788 = sext i32 %add787 to i64
  %454 = load %struct.calc_value_s*, %struct.calc_value_s** %vstack, align 8, !tbaa !1
  %arrayidx789 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %454, i64 %idxprom788
  %value790 = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %arrayidx789, i32 0, i32 1
  %f791 = bitcast %union.anon* %value790 to float*
  %455 = load float, float* %f791, align 4, !tbaa !32
  %456 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom792 = sext i32 %456 to i64
  %457 = load float*, float** %out.addr, align 8, !tbaa !1
  %arrayidx793 = getelementptr inbounds float, float* %457, i64 %idxprom792
  store float %455, float* %arrayidx793, align 4, !tbaa !32
  br label %sw.epilog.794

sw.default:                                       ; preds = %for.body.772
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.798

sw.epilog.794:                                    ; preds = %sw.bb.786, %sw.bb.777
  br label %for.inc.795

for.inc.795:                                      ; preds = %sw.epilog.794
  %458 = load i32, i32* %i, align 4, !tbaa !12
  %inc796 = add nsw i32 %458, 1
  store i32 %inc796, i32* %i, align 4, !tbaa !12
  br label %for.cond.767

for.end.797:                                      ; preds = %for.cond.767
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.798

cleanup.798:                                      ; preds = %for.end.797, %sw.default, %if.then.765, %cleanup.757
  %459 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %459) #2
  %460 = bitcast i32* %repeat_nesting_level to i8*
  call void @llvm.lifetime.end(i64 4, i8* %460) #2
  %461 = bitcast [10 x i32]* %repeat_proc_size to i8*
  call void @llvm.lifetime.end(i64 40, i8* %461) #2
  %462 = bitcast [10 x i32]* %repeat_count to i8*
  call void @llvm.lifetime.end(i64 40, i8* %462) #2
  %463 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %463) #2
  %464 = bitcast %struct.calc_value_s** %vsp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %464) #2
  %465 = bitcast %struct.calc_value_s** %vstack to i8*
  call void @llvm.lifetime.end(i64 8, i8* %465) #2
  %466 = bitcast [259 x %struct.calc_value_s]* %vstack_buf to i8*
  call void @llvm.lifetime.end(i64 2072, i8* %466) #2
  %467 = bitcast %struct.gs_function_PtCr_s** %pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %467) #2
  %468 = load i32, i32* %retval
  ret i32 %468
}

; Function Attrs: nounwind uwtable
define internal i32 @fn_PtCr_is_monotonic(%struct.gs_function_s* %pfn_common, float* %lower, float* %upper, i32* %mask) #0 {
entry:
  %pfn_common.addr = alloca %struct.gs_function_s*, align 8
  %lower.addr = alloca float*, align 8
  %upper.addr = alloca float*, align 8
  %mask.addr = alloca i32*, align 8
  store %struct.gs_function_s* %pfn_common, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  store float* %lower, float** %lower.addr, align 8, !tbaa !1
  store float* %upper, float** %upper.addr, align 8, !tbaa !1
  store i32* %mask, i32** %mask.addr, align 8, !tbaa !1
  %0 = load i32*, i32** %mask.addr, align 8, !tbaa !1
  store i32 1227133513, i32* %0, align 4, !tbaa !12
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @fn_PtCr_get_info(%struct.gs_function_s* %pfn_common, %struct.gs_function_info_s* %pfi) #0 {
entry:
  %pfn_common.addr = alloca %struct.gs_function_s*, align 8
  %pfi.addr = alloca %struct.gs_function_info_s*, align 8
  %pfn = alloca %struct.gs_function_PtCr_s*, align 8
  %s = alloca %struct.stream_s, align 8
  store %struct.gs_function_s* %pfn_common, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  store %struct.gs_function_info_s* %pfi, %struct.gs_function_info_s** %pfi.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_function_PtCr_s** %pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_function_s* %1 to %struct.gs_function_PtCr_s*
  store %struct.gs_function_PtCr_s* %2, %struct.gs_function_PtCr_s** %pfn, align 8, !tbaa !1
  %3 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  %4 = load %struct.gs_function_info_s*, %struct.gs_function_info_s** %pfi.addr, align 8, !tbaa !1
  call void @gs_function_get_info_default(%struct.gs_function_s* %3, %struct.gs_function_info_s* %4) #6
  %5 = load %struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s** %pfn, align 8, !tbaa !1
  %data_source = getelementptr inbounds %struct.gs_function_PtCr_s, %struct.gs_function_PtCr_s* %5, i32 0, i32 2
  %6 = load %struct.gs_function_info_s*, %struct.gs_function_info_s** %pfi.addr, align 8, !tbaa !1
  %DataSource = getelementptr inbounds %struct.gs_function_info_s, %struct.gs_function_info_s* %6, i32 0, i32 0
  store %struct.gs_data_source_s* %data_source, %struct.gs_data_source_s** %DataSource, align 8, !tbaa !38
  %7 = bitcast %struct.stream_s* %s to i8*
  call void @llvm.lifetime.start(i64 352, i8* %7) #2
  call void @s_init(%struct.stream_s* %s, %struct.gs_memory_s* null) #6
  call void @swrite_position_only(%struct.stream_s* %s) #6
  %8 = load %struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s** %pfn, align 8, !tbaa !1
  %call = call i32 @calc_put(%struct.stream_s* %s, %struct.gs_function_PtCr_s* %8) #6
  %call1 = call i64 @stell(%struct.stream_s* %s) #6
  %9 = load %struct.gs_function_info_s*, %struct.gs_function_info_s** %pfi.addr, align 8, !tbaa !1
  %data_size = getelementptr inbounds %struct.gs_function_info_s, %struct.gs_function_info_s* %9, i32 0, i32 1
  store i64 %call1, i64* %data_size, align 8, !tbaa !41
  %10 = bitcast %struct.stream_s* %s to i8*
  call void @llvm.lifetime.end(i64 352, i8* %10) #2
  %11 = bitcast %struct.gs_function_PtCr_s** %pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  ret void
}

declare i32 @fn_common_get_params(%struct.gs_function_s*, %struct.gs_param_list_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @fn_PtCr_make_scaled(%struct.gs_function_PtCr_s* %pfn, %struct.gs_function_PtCr_s** %ppsfn, %struct.gs_range_s* %pranges, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca %struct.gs_function_PtCr_s*, align 8
  %ppsfn.addr = alloca %struct.gs_function_PtCr_s**, align 8
  %pranges.addr = alloca %struct.gs_range_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %psfn = alloca %struct.gs_function_PtCr_s*, align 8
  %n = alloca i32, align 4
  %opsize = alloca i32, align 4
  %ops5 = alloca i8*, align 8
  %p = alloca i8*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %base = alloca float, align 4
  %factor = alloca float, align 4
  store %struct.gs_function_PtCr_s* %pfn, %struct.gs_function_PtCr_s** %pfn.addr, align 8, !tbaa !1
  store %struct.gs_function_PtCr_s** %ppsfn, %struct.gs_function_PtCr_s*** %ppsfn.addr, align 8, !tbaa !1
  store %struct.gs_range_s* %pranges, %struct.gs_range_s** %pranges.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_function_PtCr_s** %psfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %2 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !14
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %2(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* @st_function_PtCr, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i32 0, i32 0)) #6
  %4 = bitcast i8* %call to %struct.gs_function_PtCr_s*
  store %struct.gs_function_PtCr_s* %4, %struct.gs_function_PtCr_s** %psfn, align 8, !tbaa !1
  %5 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s** %pfn.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_PtCr_s, %struct.gs_function_PtCr_s* %6, i32 0, i32 1
  %n1 = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %params, i32 0, i32 2
  %7 = load i32, i32* %n1, align 4, !tbaa !37
  store i32 %7, i32* %n, align 4, !tbaa !12
  %8 = bitcast i32* %opsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s** %pfn.addr, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_function_PtCr_s, %struct.gs_function_PtCr_s* %9, i32 0, i32 1
  %ops = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %params2, i32 0, i32 4
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %ops, i32 0, i32 1
  %10 = load i32, i32* %size, align 4, !tbaa !42
  %conv = zext i32 %10 to i64
  %11 = load i32, i32* %n, align 4, !tbaa !12
  %conv3 = sext i32 %11 to i64
  %mul = mul i64 17, %conv3
  %add = add i64 %conv, %mul
  %conv4 = trunc i64 %add to i32
  store i32 %conv4, i32* %opsize, align 4, !tbaa !12
  %12 = bitcast i8** %ops5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs6, i32 0, i32 16
  %14 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !43
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %16 = load i32, i32* %opsize, align 4, !tbaa !12
  %call7 = call i8* %14(%struct.gs_memory_s* %15, i32 %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.48, i32 0, i32 0)) #6
  store i8* %call7, i8** %ops5, align 8, !tbaa !1
  %17 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = load %struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s** %psfn, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_function_PtCr_s* %20, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %21 = load i8*, i8** %ops5, align 8, !tbaa !1
  %cmp9 = icmp eq i8* %21, null
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs11 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 1
  %free_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs11, i32 0, i32 19
  %23 = load void (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string, align 8, !tbaa !44
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %25 = load i8*, i8** %ops5, align 8, !tbaa !1
  %26 = load i32, i32* %opsize, align 4, !tbaa !12
  call void %23(%struct.gs_memory_s* %24, i8* %25, i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.48, i32 0, i32 0)) #6
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs12 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs12, i32 0, i32 2
  %28 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !45
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %30 = load %struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s** %psfn, align 8, !tbaa !1
  %31 = bitcast %struct.gs_function_PtCr_s* %30 to i8*
  call void %28(%struct.gs_memory_s* %29, i8* %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i32 0, i32 0)) #6
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %32 = load %struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s** %psfn, align 8, !tbaa !1
  %params13 = getelementptr inbounds %struct.gs_function_PtCr_s, %struct.gs_function_PtCr_s* %32, i32 0, i32 1
  %33 = load %struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s** %pfn.addr, align 8, !tbaa !1
  %params14 = getelementptr inbounds %struct.gs_function_PtCr_s, %struct.gs_function_PtCr_s* %33, i32 0, i32 1
  %34 = bitcast %struct.gs_function_PtCr_params_s* %params13 to i8*
  %35 = bitcast %struct.gs_function_PtCr_params_s* %params14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 48, i32 8, i1 false), !tbaa.struct !17
  %36 = load i8*, i8** %ops5, align 8, !tbaa !1
  %37 = load %struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s** %psfn, align 8, !tbaa !1
  %params15 = getelementptr inbounds %struct.gs_function_PtCr_s, %struct.gs_function_PtCr_s* %37, i32 0, i32 1
  %ops16 = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %params15, i32 0, i32 4
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %ops16, i32 0, i32 0
  store i8* %36, i8** %data, align 8, !tbaa !29
  %38 = load i32, i32* %opsize, align 4, !tbaa !12
  %39 = load %struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s** %psfn, align 8, !tbaa !1
  %params17 = getelementptr inbounds %struct.gs_function_PtCr_s, %struct.gs_function_PtCr_s* %39, i32 0, i32 1
  %ops18 = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %params17, i32 0, i32 4
  %size19 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %ops18, i32 0, i32 1
  store i32 %38, i32* %size19, align 4, !tbaa !42
  %40 = load %struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s** %psfn, align 8, !tbaa !1
  %data_source = getelementptr inbounds %struct.gs_function_PtCr_s, %struct.gs_function_PtCr_s* %40, i32 0, i32 2
  %41 = load %struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s** %pfn.addr, align 8, !tbaa !1
  %data_source20 = getelementptr inbounds %struct.gs_function_PtCr_s, %struct.gs_function_PtCr_s* %41, i32 0, i32 2
  %42 = bitcast %struct.gs_data_source_s* %data_source to i8*
  %43 = bitcast %struct.gs_data_source_s* %data_source20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 32, i32 8, i1 false), !tbaa.struct !46
  %44 = load %struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s** %psfn, align 8, !tbaa !1
  %45 = bitcast %struct.gs_function_PtCr_s* %44 to %struct.gs_function_s*
  %46 = load %struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s** %pfn.addr, align 8, !tbaa !1
  %47 = bitcast %struct.gs_function_PtCr_s* %46 to %struct.gs_function_s*
  %48 = load %struct.gs_range_s*, %struct.gs_range_s** %pranges.addr, align 8, !tbaa !1
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call21 = call i32 @fn_common_scale(%struct.gs_function_s* %45, %struct.gs_function_s* %47, %struct.gs_range_s* %48, %struct.gs_memory_s* %49) #6
  store i32 %call21, i32* %code, align 4, !tbaa !12
  %50 = load i32, i32* %code, align 4, !tbaa !12
  %cmp22 = icmp slt i32 %50, 0
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end
  %51 = load %struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s** %psfn, align 8, !tbaa !1
  %52 = bitcast %struct.gs_function_PtCr_s* %51 to %struct.gs_function_s*
  %head = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %52, i32 0, i32 0
  %procs25 = getelementptr inbounds %struct.gs_function_head_s, %struct.gs_function_head_s* %head, i32 0, i32 1
  %free = getelementptr inbounds %struct.gs_function_procs_s, %struct.gs_function_procs_s* %procs25, i32 0, i32 6
  %53 = load void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)*, void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)** %free, align 8, !tbaa !47
  %54 = load %struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s** %psfn, align 8, !tbaa !1
  %55 = bitcast %struct.gs_function_PtCr_s* %54 to %struct.gs_function_s*
  %56 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void %53(%struct.gs_function_s* %55, i32 1, %struct.gs_memory_s* %56) #6
  %57 = load i32, i32* %code, align 4, !tbaa !12
  store i32 %57, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.end
  %58 = load i8*, i8** %ops5, align 8, !tbaa !1
  %59 = load %struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s** %pfn.addr, align 8, !tbaa !1
  %params27 = getelementptr inbounds %struct.gs_function_PtCr_s, %struct.gs_function_PtCr_s* %59, i32 0, i32 1
  %ops28 = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %params27, i32 0, i32 4
  %data29 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %ops28, i32 0, i32 0
  %60 = load i8*, i8** %data29, align 8, !tbaa !29
  %61 = load %struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s** %pfn.addr, align 8, !tbaa !1
  %params30 = getelementptr inbounds %struct.gs_function_PtCr_s, %struct.gs_function_PtCr_s* %61, i32 0, i32 1
  %ops31 = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %params30, i32 0, i32 4
  %size32 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %ops31, i32 0, i32 1
  %62 = load i32, i32* %size32, align 4, !tbaa !42
  %sub = sub i32 %62, 1
  %conv33 = zext i32 %sub to i64
  %call34 = call i8* @memcpy(i8* %58, i8* %60, i64 %conv33) #8
  %63 = load i8*, i8** %ops5, align 8, !tbaa !1
  %64 = load %struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s** %pfn.addr, align 8, !tbaa !1
  %params35 = getelementptr inbounds %struct.gs_function_PtCr_s, %struct.gs_function_PtCr_s* %64, i32 0, i32 1
  %ops36 = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %params35, i32 0, i32 4
  %size37 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %ops36, i32 0, i32 1
  %65 = load i32, i32* %size37, align 4, !tbaa !42
  %idx.ext = zext i32 %65 to i64
  %add.ptr = getelementptr inbounds i8, i8* %63, i64 %idx.ext
  %add.ptr38 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr38, i8** %p, align 8, !tbaa !1
  %66 = load i32, i32* %n, align 4, !tbaa !12
  store i32 %66, i32* %i, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %if.end.71, %if.end.26
  %67 = load i32, i32* %i, align 4, !tbaa !12
  %dec = add nsw i32 %67, -1
  store i32 %dec, i32* %i, align 4, !tbaa !12
  %cmp39 = icmp sge i32 %dec, 0
  br i1 %cmp39, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %68 = bitcast float* %base to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #2
  %69 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom = sext i32 %69 to i64
  %70 = load %struct.gs_range_s*, %struct.gs_range_s** %pranges.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %70, i64 %idxprom
  %rmin = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx, i32 0, i32 0
  %71 = load float, float* %rmin, align 4, !tbaa !50
  store float %71, float* %base, align 4, !tbaa !32
  %72 = bitcast float* %factor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %72) #2
  %73 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom41 = sext i32 %73 to i64
  %74 = load %struct.gs_range_s*, %struct.gs_range_s** %pranges.addr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %74, i64 %idxprom41
  %rmax = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx42, i32 0, i32 1
  %75 = load float, float* %rmax, align 4, !tbaa !52
  %76 = load float, float* %base, align 4, !tbaa !32
  %sub43 = fsub float %75, %76
  store float %sub43, float* %factor, align 4, !tbaa !32
  %77 = load float, float* %factor, align 4, !tbaa !32
  %cmp44 = fcmp une float %77, 1.000000e+00
  br i1 %cmp44, label %if.then.46, label %if.end.51

if.then.46:                                       ; preds = %for.body
  %78 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds i8, i8* %78, i64 0
  store i8 40, i8* %arrayidx47, align 1, !tbaa !13
  %79 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr48 = getelementptr inbounds i8, i8* %79, i64 1
  %80 = bitcast float* %factor to i8*
  %call49 = call i8* @memcpy(i8* %add.ptr48, i8* %80, i64 4) #8
  %81 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr50 = getelementptr inbounds i8, i8* %81, i64 5
  store i8* %add.ptr50, i8** %p, align 8, !tbaa !1
  %82 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  store i8 16, i8* %82, align 1, !tbaa !13
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.46, %for.body
  %83 = load float, float* %base, align 4, !tbaa !32
  %cmp52 = fcmp une float %83, 0.000000e+00
  br i1 %cmp52, label %if.then.54, label %if.end.60

if.then.54:                                       ; preds = %if.end.51
  %84 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds i8, i8* %84, i64 0
  store i8 40, i8* %arrayidx55, align 1, !tbaa !13
  %85 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr56 = getelementptr inbounds i8, i8* %85, i64 1
  %86 = bitcast float* %base to i8*
  %call57 = call i8* @memcpy(i8* %add.ptr56, i8* %86, i64 4) #8
  %87 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr58 = getelementptr inbounds i8, i8* %87, i64 5
  store i8* %add.ptr58, i8** %p, align 8, !tbaa !1
  %88 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr59 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %incdec.ptr59, i8** %p, align 8, !tbaa !1
  store i8 1, i8* %88, align 1, !tbaa !13
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.54, %if.end.51
  %89 = load i32, i32* %n, align 4, !tbaa !12
  %cmp61 = icmp ne i32 %89, 1
  br i1 %cmp61, label %if.then.63, label %if.end.71

if.then.63:                                       ; preds = %if.end.60
  %90 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds i8, i8* %90, i64 0
  store i8 38, i8* %arrayidx64, align 1, !tbaa !13
  %91 = load i32, i32* %n, align 4, !tbaa !12
  %conv65 = trunc i32 %91 to i8
  %92 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx66 = getelementptr inbounds i8, i8* %92, i64 1
  store i8 %conv65, i8* %arrayidx66, align 1, !tbaa !13
  %93 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds i8, i8* %93, i64 2
  store i8 38, i8* %arrayidx67, align 1, !tbaa !13
  %94 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds i8, i8* %94, i64 3
  store i8 1, i8* %arrayidx68, align 1, !tbaa !13
  %95 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx69 = getelementptr inbounds i8, i8* %95, i64 4
  store i8 37, i8* %arrayidx69, align 1, !tbaa !13
  %96 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr70 = getelementptr inbounds i8, i8* %96, i64 5
  store i8* %add.ptr70, i8** %p, align 8, !tbaa !1
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.63, %if.end.60
  %97 = bitcast float* %factor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #2
  %98 = bitcast float* %base to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %99 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr72 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %incdec.ptr72, i8** %p, align 8, !tbaa !1
  store i8 45, i8* %99, align 1, !tbaa !13
  %100 = load i8*, i8** %p, align 8, !tbaa !1
  %101 = load i8*, i8** %ops5, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %100 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %101 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv73 = trunc i64 %sub.ptr.sub to i32
  %102 = load %struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s** %psfn, align 8, !tbaa !1
  %params74 = getelementptr inbounds %struct.gs_function_PtCr_s, %struct.gs_function_PtCr_s* %102, i32 0, i32 1
  %ops75 = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %params74, i32 0, i32 4
  %size76 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %ops75, i32 0, i32 1
  store i32 %conv73, i32* %size76, align 4, !tbaa !42
  %103 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs77 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %103, i32 0, i32 1
  %resize_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs77, i32 0, i32 18
  %104 = load i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)** %resize_string, align 8, !tbaa !53
  %105 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %106 = load i8*, i8** %ops5, align 8, !tbaa !1
  %107 = load i32, i32* %opsize, align 4, !tbaa !12
  %108 = load %struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s** %psfn, align 8, !tbaa !1
  %params78 = getelementptr inbounds %struct.gs_function_PtCr_s, %struct.gs_function_PtCr_s* %108, i32 0, i32 1
  %ops79 = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %params78, i32 0, i32 4
  %size80 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %ops79, i32 0, i32 1
  %109 = load i32, i32* %size80, align 4, !tbaa !42
  %call81 = call i8* %104(%struct.gs_memory_s* %105, i8* %106, i32 %107, i32 %109, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i32 0, i32 0)) #6
  %110 = load %struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s** %psfn, align 8, !tbaa !1
  %params82 = getelementptr inbounds %struct.gs_function_PtCr_s, %struct.gs_function_PtCr_s* %110, i32 0, i32 1
  %ops83 = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %params82, i32 0, i32 4
  %data84 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %ops83, i32 0, i32 0
  store i8* %call81, i8** %data84, align 8, !tbaa !29
  %111 = load %struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s** %psfn, align 8, !tbaa !1
  %112 = load %struct.gs_function_PtCr_s**, %struct.gs_function_PtCr_s*** %ppsfn.addr, align 8, !tbaa !1
  store %struct.gs_function_PtCr_s* %111, %struct.gs_function_PtCr_s** %112, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.24, %if.then
  %113 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #2
  %114 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #2
  %115 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #2
  %116 = bitcast i8** %ops5 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #2
  %117 = bitcast i32* %opsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #2
  %118 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #2
  %119 = bitcast %struct.gs_function_PtCr_s** %psfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #2
  %120 = load i32, i32* %retval
  ret i32 %120
}

declare void @fn_common_free(%struct.gs_function_s*, i32, %struct.gs_memory_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gs_function_PtCr_serialize(%struct.gs_function_s* %pfn, %struct.stream_s* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca %struct.gs_function_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %n = alloca i32, align 4
  %p = alloca %struct.gs_function_PtCr_params_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_function_s* %pfn, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.gs_function_PtCr_params_s** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %2, i32 0, i32 1
  %3 = bitcast %struct.gs_function_params_s* %params to %struct.gs_function_PtCr_params_s*
  store %struct.gs_function_PtCr_params_s* %3, %struct.gs_function_PtCr_params_s** %p, align 8, !tbaa !1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @fn_common_serialize(%struct.gs_function_s* %5, %struct.stream_s* %6) #6
  store i32 %call, i32* %code, align 4, !tbaa !12
  %7 = load i32, i32* %code, align 4, !tbaa !12
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !12
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %10 = load %struct.gs_function_PtCr_params_s*, %struct.gs_function_PtCr_params_s** %p, align 8, !tbaa !1
  %ops = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %10, i32 0, i32 4
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %ops, i32 0, i32 1
  %11 = bitcast i32* %size to i8*
  %call1 = call i32 @sputs(%struct.stream_s* %9, i8* %11, i32 4, i32* %n) #6
  store i32 %call1, i32* %code, align 4, !tbaa !12
  %12 = load i32, i32* %code, align 4, !tbaa !12
  %cmp2 = icmp slt i32 %12, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %13 = load i32, i32* %code, align 4, !tbaa !12
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %14 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %15 = load %struct.gs_function_PtCr_params_s*, %struct.gs_function_PtCr_params_s** %p, align 8, !tbaa !1
  %ops5 = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %15, i32 0, i32 4
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %ops5, i32 0, i32 0
  %16 = load i8*, i8** %data, align 8, !tbaa !5
  %17 = load %struct.gs_function_PtCr_params_s*, %struct.gs_function_PtCr_params_s** %p, align 8, !tbaa !1
  %ops6 = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %17, i32 0, i32 4
  %size7 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %ops6, i32 0, i32 1
  %18 = load i32, i32* %size7, align 4, !tbaa !9
  %call8 = call i32 @sputs(%struct.stream_s* %14, i8* %16, i32 %18, i32* %n) #6
  store i32 %call8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #2
  %20 = bitcast %struct.gs_function_PtCr_params_s** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  %21 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @fn_check_mnDR(%struct.gs_function_params_s*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @data_source_access_string(%struct.gs_data_source_s*, i64, i32, i8*, i8**) #1

; Function Attrs: nounwind uwtable
define internal i32 @calc_access(%struct.gs_data_source_s* %psrc, i64 %start, i32 %length, i8* %buf, i8** %ptr) #0 {
entry:
  %psrc.addr = alloca %struct.gs_data_source_s*, align 8
  %start.addr = alloca i64, align 8
  %length.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %ptr.addr = alloca i8**, align 8
  %pfn = alloca %struct.gs_function_PtCr_s*, align 8
  %st = alloca %struct.stream_SFD_state_s, align 8
  %ds = alloca %struct.stream_s, align 8
  %bs = alloca %struct.stream_s, align 8
  %dbuf = alloca [200 x i8], align 16
  %templat = alloca %struct.stream_template_s*, align 8
  store %struct.gs_data_source_s* %psrc, %struct.gs_data_source_s** %psrc.addr, align 8, !tbaa !1
  store i64 %start, i64* %start.addr, align 8, !tbaa !54
  store i32 %length, i32* %length.addr, align 4, !tbaa !12
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i8** %ptr, i8*** %ptr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_function_PtCr_s** %pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_data_source_s*, %struct.gs_data_source_s** %psrc.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_data_source_s* %1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 sub (i64 0, i64 sext (i32 ptrtoint (%struct.gs_data_source_s* getelementptr inbounds (%struct.gs_function_PtCr_s, %struct.gs_function_PtCr_s* null, i32 0, i32 2) to i32) to i64))
  %3 = bitcast i8* %add.ptr to %struct.gs_function_PtCr_s*
  store %struct.gs_function_PtCr_s* %3, %struct.gs_function_PtCr_s** %pfn, align 8, !tbaa !1
  %4 = bitcast %struct.stream_SFD_state_s* %st to i8*
  call void @llvm.lifetime.start(i64 160, i8* %4) #2
  %5 = bitcast %struct.stream_s* %ds to i8*
  call void @llvm.lifetime.start(i64 352, i8* %5) #2
  %6 = bitcast %struct.stream_s* %bs to i8*
  call void @llvm.lifetime.start(i64 352, i8* %6) #2
  %7 = bitcast [200 x i8]* %dbuf to i8*
  call void @llvm.lifetime.start(i64 200, i8* %7) #2
  %8 = bitcast %struct.stream_template_s** %templat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  store %struct.stream_template_s* @s_SFD_template, %struct.stream_template_s** %templat, align 8, !tbaa !1
  call void @s_init(%struct.stream_s* %bs, %struct.gs_memory_s* null) #6
  %9 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %10 = load i32, i32* %length.addr, align 4, !tbaa !12
  call void @swrite_string(%struct.stream_s* %bs, i8* %9, i32 %10) #6
  call void @s_init(%struct.stream_s* %ds, %struct.gs_memory_s* null) #6
  %11 = bitcast %struct.stream_SFD_state_s* %st to %struct.stream_state_s*
  %12 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  call void @s_init_state(%struct.stream_state_s* %11, %struct.stream_template_s* %12, %struct.gs_memory_s* null) #6
  %13 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %set_defaults = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %13, i32 0, i32 6
  %14 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** %set_defaults, align 8, !tbaa !55
  %15 = bitcast %struct.stream_SFD_state_s* %st to %struct.stream_state_s*
  call void %14(%struct.stream_state_s* %15) #6
  %16 = load i64, i64* %start.addr, align 8, !tbaa !54
  %skip_count = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %st, i32 0, i32 7
  store i64 %16, i64* %skip_count, align 8, !tbaa !57
  %17 = bitcast %struct.stream_SFD_state_s* %st to %struct.stream_state_s*
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %dbuf, i32 0, i32 0
  %call = call i32 @s_init_filter(%struct.stream_s* %ds, %struct.stream_state_s* %17, i8* %arraydecay, i32 200, %struct.stream_s* %bs) #6
  %18 = load %struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s** %pfn, align 8, !tbaa !1
  %call1 = call i32 @calc_put(%struct.stream_s* %ds, %struct.gs_function_PtCr_s* %18) #6
  %call2 = call i32 @sclose(%struct.stream_s* %ds) #6
  %19 = load i8**, i8*** %ptr.addr, align 8, !tbaa !1
  %tobool = icmp ne i8** %19, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %20 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %21 = load i8**, i8*** %ptr.addr, align 8, !tbaa !1
  store i8* %20, i8** %21, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %22 = bitcast %struct.stream_template_s** %templat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  %23 = bitcast [200 x i8]* %dbuf to i8*
  call void @llvm.lifetime.end(i64 200, i8* %23) #2
  %24 = bitcast %struct.stream_s* %bs to i8*
  call void @llvm.lifetime.end(i64 352, i8* %24) #2
  %25 = bitcast %struct.stream_s* %ds to i8*
  call void @llvm.lifetime.end(i64 352, i8* %25) #2
  %26 = bitcast %struct.stream_SFD_state_s* %st to i8*
  call void @llvm.lifetime.end(i64 160, i8* %26) #2
  %27 = bitcast %struct.gs_function_PtCr_s** %pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  ret i32 0
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @store_float(%struct.calc_value_s* %vsp, double %f) #3 {
entry:
  %vsp.addr = alloca %struct.calc_value_s*, align 8
  %f.addr = alloca double, align 8
  store %struct.calc_value_s* %vsp, %struct.calc_value_s** %vsp.addr, align 8, !tbaa !1
  store double %f, double* %f.addr, align 8, !tbaa !34
  %0 = load double, double* %f.addr, align 8, !tbaa !34
  %conv = fptrunc double %0 to float
  %1 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %1, i32 0, i32 1
  %f1 = bitcast %union.anon* %value to float*
  store float %conv, float* %f1, align 4, !tbaa !32
  %2 = load %struct.calc_value_s*, %struct.calc_value_s** %vsp.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.calc_value_s, %struct.calc_value_s* %2, i32 0, i32 0
  store i32 3, i32* %type, align 4, !tbaa !30
  ret void
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

declare i32 @gs_atan2_degrees(double, double, double*) #1

; Function Attrs: nounwind readnone
declare double @ceil(double) #4

declare double @gs_cos_degrees(double) #1

; Function Attrs: nounwind
declare double @pow(double, double) #5

; Function Attrs: nounwind readnone
declare double @floor(double) #4

; Function Attrs: nounwind
declare double @log(double) #5

; Function Attrs: nounwind
declare double @log10(double) #5

declare double @gs_sin_degrees(double) #1

; Function Attrs: nounwind
declare double @sqrt(double) #5

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #5

; Function Attrs: nounwind
declare i8* @memmove(i8*, i8*, i64) #5

declare void @gs_function_get_info_default(%struct.gs_function_s*, %struct.gs_function_info_s*) #1

declare void @s_init(%struct.stream_s*, %struct.gs_memory_s*) #1

declare void @swrite_position_only(%struct.stream_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @calc_put(%struct.stream_s* %s, %struct.gs_function_PtCr_s* %pfn) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %pfn.addr = alloca %struct.gs_function_PtCr_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_function_PtCr_s* %pfn, %struct.gs_function_PtCr_s** %pfn.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %1 = load %struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s** %pfn.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_PtCr_s, %struct.gs_function_PtCr_s* %1, i32 0, i32 1
  %ops = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %params, i32 0, i32 4
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %ops, i32 0, i32 0
  %2 = load i8*, i8** %data, align 8, !tbaa !29
  %3 = load %struct.gs_function_PtCr_s*, %struct.gs_function_PtCr_s** %pfn.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_function_PtCr_s, %struct.gs_function_PtCr_s* %3, i32 0, i32 1
  %ops2 = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %params1, i32 0, i32 4
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %ops2, i32 0, i32 1
  %4 = load i32, i32* %size, align 4, !tbaa !42
  %sub = sub i32 %4, 1
  %call = call i32 @calc_put_ops(%struct.stream_s* %0, i8* %2, i32 %sub) #6
  ret i32 0
}

declare i64 @stell(%struct.stream_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @calc_put_ops(%struct.stream_s* %s, i8* %ops, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %ops.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  %i = alloca i32, align 4
  %f = alloca float, align 4
  %skip = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %ops, i8** %ops.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !12
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @spputc(%struct.stream_s* %1, i8 zeroext 123) #6
  %2 = load i8*, i8** %ops.addr, align 8, !tbaa !1
  store i8* %2, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %entry
  %3 = load i8*, i8** %p, align 8, !tbaa !1
  %4 = load i8*, i8** %ops.addr, align 8, !tbaa !1
  %5 = load i32, i32* %size.addr, align 4, !tbaa !12
  %idx.ext = zext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %cmp = icmp ult i8* %3, %add.ptr
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !13
  %conv = zext i8 %7 to i32
  switch i32 %conv, label %sw.default [
    i32 38, label %sw.bb
    i32 39, label %sw.bb.4
    i32 40, label %sw.bb.8
    i32 41, label %sw.bb.13
    i32 42, label %sw.bb.15
    i32 43, label %sw.bb.17
    i32 44, label %sw.bb.47
    i32 46, label %sw.bb.56
    i32 47, label %sw.bb.56
  ]

sw.bb:                                            ; preds = %for.body
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %9 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr1 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr1, i8** %p, align 8, !tbaa !1
  %10 = load i8, i8* %9, align 1, !tbaa !13
  %conv2 = zext i8 %10 to i32
  %call3 = call i8* @pprintd1(%struct.stream_s* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %conv2) #6
  br label %sw.epilog

sw.bb.4:                                          ; preds = %for.body
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast i32* %i to i8*
  %13 = load i8*, i8** %p, align 8, !tbaa !1
  %call5 = call i8* @memcpy(i8* %12, i8* %13, i64 4) #8
  %14 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %15 = load i32, i32* %i, align 4, !tbaa !12
  %call6 = call i8* @pprintd1(%struct.stream_s* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %15) #6
  %16 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr7 = getelementptr inbounds i8, i8* %16, i64 4
  store i8* %add.ptr7, i8** %p, align 8, !tbaa !1
  %17 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #2
  br label %sw.epilog

sw.bb.8:                                          ; preds = %for.body
  %18 = bitcast float* %f to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = bitcast float* %f to i8*
  %20 = load i8*, i8** %p, align 8, !tbaa !1
  %call9 = call i8* @memcpy(i8* %19, i8* %20, i64 4) #8
  %21 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %22 = load float, float* %f, align 4, !tbaa !32
  %conv10 = fpext float %22 to double
  %call11 = call i8* @pprintg1(%struct.stream_s* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), double %conv10) #6
  %23 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr12 = getelementptr inbounds i8, i8* %23, i64 4
  store i8* %add.ptr12, i8** %p, align 8, !tbaa !1
  %24 = bitcast float* %f to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  br label %sw.epilog

sw.bb.13:                                         ; preds = %for.body
  %25 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call14 = call i32 @stream_puts(%struct.stream_s* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)) #6
  br label %sw.epilog

sw.bb.15:                                         ; preds = %for.body
  %26 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call16 = call i32 @stream_puts(%struct.stream_s* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)) #6
  br label %sw.epilog

sw.bb.17:                                         ; preds = %for.body
  %27 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #2
  %28 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %28, i64 0
  %29 = load i8, i8* %arrayidx, align 1, !tbaa !13
  %conv18 = zext i8 %29 to i32
  %shl = shl i32 %conv18, 8
  %30 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %30, i64 1
  %31 = load i8, i8* %arrayidx19, align 1, !tbaa !13
  %conv20 = zext i8 %31 to i32
  %add = add nsw i32 %shl, %conv20
  store i32 %add, i32* %skip, align 4, !tbaa !12
  %32 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #2
  %33 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %34 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr21 = getelementptr inbounds i8, i8* %34, i64 2
  store i8* %add.ptr21, i8** %p, align 8, !tbaa !1
  %35 = load i32, i32* %skip, align 4, !tbaa !12
  %call22 = call i32 @calc_put_ops(%struct.stream_s* %33, i8* %add.ptr21, i32 %35) #6
  store i32 %call22, i32* %code, align 4, !tbaa !12
  %36 = load i32, i32* %skip, align 4, !tbaa !12
  %37 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext23 = sext i32 %36 to i64
  %add.ptr24 = getelementptr inbounds i8, i8* %37, i64 %idx.ext23
  store i8* %add.ptr24, i8** %p, align 8, !tbaa !1
  %38 = load i32, i32* %code, align 4, !tbaa !12
  %cmp25 = icmp slt i32 %38, 0
  br i1 %cmp25, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.17
  %39 = load i32, i32* %code, align 4, !tbaa !12
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.bb.17
  %40 = load i32, i32* %code, align 4, !tbaa !12
  %cmp27 = icmp sgt i32 %40, 0
  br i1 %cmp27, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %if.end
  %41 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i8, i8* %41, i64 -2
  %42 = load i8, i8* %arrayidx30, align 1, !tbaa !13
  %conv31 = zext i8 %42 to i32
  %shl32 = shl i32 %conv31, 8
  %43 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i8, i8* %43, i64 -1
  %44 = load i8, i8* %arrayidx33, align 1, !tbaa !13
  %conv34 = zext i8 %44 to i32
  %add35 = add nsw i32 %shl32, %conv34
  store i32 %add35, i32* %skip, align 4, !tbaa !12
  %45 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %46 = load i8*, i8** %p, align 8, !tbaa !1
  %47 = load i32, i32* %skip, align 4, !tbaa !12
  %call36 = call i32 @calc_put_ops(%struct.stream_s* %45, i8* %46, i32 %47) #6
  store i32 %call36, i32* %code, align 4, !tbaa !12
  %48 = load i32, i32* %skip, align 4, !tbaa !12
  %49 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext37 = sext i32 %48 to i64
  %add.ptr38 = getelementptr inbounds i8, i8* %49, i64 %idx.ext37
  store i8* %add.ptr38, i8** %p, align 8, !tbaa !1
  %50 = load i32, i32* %code, align 4, !tbaa !12
  %cmp39 = icmp slt i32 %50, 0
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.then.29
  %51 = load i32, i32* %code, align 4, !tbaa !12
  store i32 %51, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.42:                                        ; preds = %if.then.29
  %52 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call43 = call i32 @stream_puts(%struct.stream_s* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0)) #6
  br label %if.end.45

if.else:                                          ; preds = %if.end
  %53 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call44 = call i32 @stream_puts(%struct.stream_s* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0)) #6
  br label %if.end.45

if.end.45:                                        ; preds = %if.else, %if.end.42
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.45, %if.then.41, %if.then
  %54 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #2
  %55 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.61 [
    i32 4, label %sw.epilog
  ]

sw.bb.47:                                         ; preds = %for.body
  %56 = load i8*, i8** %p, align 8, !tbaa !1
  %57 = load i8*, i8** %ops.addr, align 8, !tbaa !1
  %58 = load i32, i32* %size.addr, align 4, !tbaa !12
  %idx.ext48 = zext i32 %58 to i64
  %add.ptr49 = getelementptr inbounds i8, i8* %57, i64 %idx.ext48
  %add.ptr50 = getelementptr inbounds i8, i8* %add.ptr49, i64 -2
  %cmp51 = icmp ne i8* %56, %add.ptr50
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %sw.bb.47
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.61

if.end.54:                                        ; preds = %sw.bb.47
  %59 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call55 = call i32 @spputc(%struct.stream_s* %59, i8 zeroext 125) #6
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.61

sw.bb.56:                                         ; preds = %for.body, %for.body
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.61

sw.default:                                       ; preds = %for.body
  %60 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %61 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds i8, i8* %61, i64 -1
  %62 = load i8, i8* %arrayidx57, align 1, !tbaa !13
  %idxprom = zext i8 %62 to i64
  %arrayidx58 = getelementptr inbounds [38 x i8*], [38 x i8*]* @calc_put_ops.op_names, i32 0, i64 %idxprom
  %63 = load i8*, i8** %arrayidx58, align 8, !tbaa !1
  %call59 = call i8* @pprints1(%struct.stream_s* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0), i8* %63) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %cleanup, %sw.bb.15, %sw.bb.13, %sw.bb.8, %sw.bb.4, %sw.bb
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %64 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call60 = call i32 @spputc(%struct.stream_s* %64, i8 zeroext 125) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.61

cleanup.61:                                       ; preds = %for.end, %sw.bb.56, %if.end.54, %if.then.53, %cleanup
  %65 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #2
  %66 = load i32, i32* %retval
  ret i32 %66
}

declare i32 @spputc(%struct.stream_s*, i8 zeroext) #1

declare i8* @pprintd1(%struct.stream_s*, i8*, i32) #1

declare i8* @pprintg1(%struct.stream_s*, i8*, double) #1

declare i32 @stream_puts(%struct.stream_s*, i8*) #1

declare i8* @pprints1(%struct.stream_s*, i8*, i8*) #1

declare i32 @fn_common_scale(%struct.gs_function_s*, %struct.gs_function_s*, %struct.gs_range_s*, %struct.gs_memory_s*) #1

declare i32 @fn_common_serialize(%struct.gs_function_s*, %struct.stream_s*) #1

declare i32 @sputs(%struct.stream_s*, i8*, i32, i32*) #1

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @swrite_string(%struct.stream_s*, i8*, i32) #1

declare void @s_init_state(%struct.stream_state_s*, %struct.stream_template_s*, %struct.gs_memory_s*) #1

declare i32 @s_init_filter(%struct.stream_s*, %struct.stream_state_s*, i8*, i32, %struct.stream_s*) #1

declare i32 @sclose(%struct.stream_s*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind readnone }
attributes #8 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 32}
!6 = !{!"gs_function_PtCr_params_s", !7, i64 0, !2, i64 8, !7, i64 16, !2, i64 24, !8, i64 32}
!7 = !{!"int", !3, i64 0}
!8 = !{!"gs_const_string_s", !2, i64 0, !7, i64 8}
!9 = !{!6, !7, i64 40}
!10 = !{!6, !7, i64 0}
!11 = !{!6, !7, i64 16}
!12 = !{!7, !7, i64 0}
!13 = !{!3, !3, i64 0}
!14 = !{!15, !2, i64 72}
!15 = !{!"gs_memory_s", !2, i64 0, !16, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!16 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!17 = !{i64 0, i64 4, !12, i64 8, i64 8, !1, i64 16, i64 4, !12, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 4, !12}
!18 = !{!19, !3, i64 8}
!19 = !{!"gs_data_source_s", !2, i64 0, !3, i64 8, !3, i64 16}
!20 = !{!8, !2, i64 0}
!21 = !{!8, !7, i64 8}
!22 = !{!19, !2, i64 0}
!23 = !{!24, !2, i64 120}
!24 = !{!"gs_function_PtCr_s", !25, i64 0, !6, i64 72, !19, i64 120}
!25 = !{!"gs_function_head_s", !7, i64 0, !26, i64 8}
!26 = !{!"gs_function_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!27 = !{i64 0, i64 4, !12, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 8, !1, i64 56, i64 8, !1, i64 64, i64 8, !1}
!28 = !{!24, !7, i64 72}
!29 = !{!24, !2, i64 104}
!30 = !{!31, !3, i64 0}
!31 = !{!"calc_value_s", !3, i64 0, !3, i64 4}
!32 = !{!33, !33, i64 0}
!33 = !{!"float", !3, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"double", !3, i64 0}
!36 = !{i64 0, i64 4, !13, i64 4, i64 4, !12, i64 4, i64 4, !32}
!37 = !{!24, !7, i64 88}
!38 = !{!39, !2, i64 0}
!39 = !{!"gs_function_info_s", !2, i64 0, !40, i64 8, !2, i64 16, !7, i64 24}
!40 = !{!"long", !3, i64 0}
!41 = !{!39, !40, i64 8}
!42 = !{!24, !7, i64 112}
!43 = !{!15, !2, i64 136}
!44 = !{!15, !2, i64 160}
!45 = !{!15, !2, i64 24}
!46 = !{i64 0, i64 8, !1, i64 8, i64 4, !13, i64 16, i64 8, !1, i64 24, i64 4, !12, i64 16, i64 8, !1}
!47 = !{!48, !2, i64 56}
!48 = !{!"gs_function_s", !25, i64 0, !49, i64 72}
!49 = !{!"gs_function_params_s", !7, i64 0, !2, i64 8, !7, i64 16, !2, i64 24}
!50 = !{!51, !33, i64 0}
!51 = !{!"gs_range_s", !33, i64 0, !33, i64 4}
!52 = !{!51, !33, i64 4}
!53 = !{!15, !2, i64 152}
!54 = !{!40, !40, i64 0}
!55 = !{!56, !2, i64 40}
!56 = !{!"stream_template_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !7, i64 28, !2, i64 32, !2, i64 40, !2, i64 48}
!57 = !{!58, !40, i64 136}
!58 = !{!"stream_SFD_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !3, i64 28, !40, i64 112, !8, i64 120, !40, i64 136, !7, i64 144, !7, i64 148, !7, i64 152}
