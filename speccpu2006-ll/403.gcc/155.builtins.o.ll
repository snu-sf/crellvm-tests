; ModuleID = 'builtins.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.function = type { %struct.eh_status*, %struct.stmt_status*, %struct.expr_status*, %struct.emit_status*, %struct.varasm_status*, i8*, %union.tree_node*, %struct.function*, i32, i32, i32, i32, %struct.rtx_def*, %struct.ix86_args, %struct.rtx_def*, %struct.rtx_def*, i8*, %struct.initial_value_struct*, i32, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i64, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, %struct.rtx_def**, %struct.temp_slot*, i32, i32, i32, %struct.var_refs_queue*, i32, i32, i8*, %union.tree_node*, %struct.rtx_def*, i32, i32, %struct.machine_function*, i32, i32, %struct.language_function*, %struct.rtx_def*, i24 }
%struct.eh_status = type opaque
%struct.stmt_status = type opaque
%struct.expr_status = type { i32, i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def* }
%struct.emit_status = type { i32, i32, %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %struct.sequence_stack*, i32, i32, i8*, i32, i8*, %union.tree_node**, %struct.rtx_def** }
%struct.sequence_stack = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %struct.sequence_stack* }
%struct.varasm_status = type opaque
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.initial_value_struct = type opaque
%struct.temp_slot = type opaque
%struct.var_refs_queue = type { %struct.rtx_def*, i32, i32, %struct.var_refs_queue* }
%union.tree_node = type { %struct.tree_decl }
%struct.tree_decl = type { %struct.tree_common, i8*, i32, i32, %union.tree_node*, i48, %union.anon, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %union.anon.1, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_decl* }
%struct.tree_common = type { %union.tree_node*, %union.tree_node*, i32 }
%union.anon = type { i64 }
%union.anon.1 = type { %struct.function* }
%struct.lang_decl = type opaque
%struct.machine_function = type opaque
%struct.language_function = type opaque
%struct.elims = type { i32, i32 }
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %struct.attribute_spec*, i32 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*, %union.tree_node**)*, i1 (%union.tree_node*)*, i1 (%union.tree_node*)*, void ()*, %struct.rtx_def* (%union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32)*, i32 (%union.tree_node*, i8*, i32)*, i8, i8, i1 ()* }
%struct.asm_out = type { i8*, i8*, i8*, %struct.asm_int_op, %struct.asm_int_op, i1 (%struct.rtx_def*, i32, i32)*, void (%struct._IO_FILE*, i64)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, i64)*, void (i8*, i32)*, void ()*, void ()*, void (%struct.rtx_def*, i32)*, void (%struct.rtx_def*, i32)* }
%struct.asm_int_op = type { i8*, i8*, i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.sched = type { i32 (%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)*, i32 ()*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def*, i32)*, void (%struct._IO_FILE*, i32, i32)*, void (%struct._IO_FILE*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, %struct.rtx_def* (i32, %struct.rtx_def*)* }
%struct.attribute_spec = type { i8*, i32, i32, i8, i8, i8, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* }
%struct.optab = type { i32, [59 x %struct.anon.3] }
%struct.anon.3 = type { i32, %struct.rtx_def* }
%struct.insn_data = type { i8*, i8*, %struct.rtx_def* (%struct.rtx_def*, ...)*, %struct.insn_operand_data*, i8, i8, i8, i8 }
%struct.insn_operand_data = type { i32 (%struct.rtx_def*, i32)*, i8*, i16, i8, i8 }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.anon.2, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_type* }
%union.anon.2 = type { i8* }
%struct.lang_type = type opaque
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { i32, i8* }
%struct.tree_exp = type { %struct.tree_common, i32, [1 x %union.tree_node*] }
%struct.tree_list = type { %struct.tree_common, %union.tree_node*, %union.tree_node* }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.tree_string = type { %struct.tree_common, %struct.rtx_def*, i32, i8* }
%struct.anon.0 = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"NOT_BUILT_IN\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"BUILT_IN_FRONTEND\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"BUILT_IN_MD\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"BUILT_IN_NORMAL\00", align 1
@built_in_class_names = constant [4 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str.4 = private unnamed_addr constant [16 x i8] c"BUILT_IN_ALLOCA\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"BUILT_IN_ABS\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"BUILT_IN_LABS\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"BUILT_IN_FABS\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"BUILT_IN_FABSF\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"BUILT_IN_FABSL\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"BUILT_IN_LLABS\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"BUILT_IN_IMAXABS\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"BUILT_IN_CONJ\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"BUILT_IN_CONJF\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"BUILT_IN_CONJL\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"BUILT_IN_CREAL\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"BUILT_IN_CREALF\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"BUILT_IN_CREALL\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"BUILT_IN_CIMAG\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"BUILT_IN_CIMAGF\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"BUILT_IN_CIMAGL\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"BUILT_IN_BZERO\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"BUILT_IN_BCMP\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"BUILT_IN_FFS\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"BUILT_IN_INDEX\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"BUILT_IN_RINDEX\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"BUILT_IN_MEMCPY\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"BUILT_IN_MEMCMP\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"BUILT_IN_MEMSET\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"BUILT_IN_STRCAT\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"BUILT_IN_STRNCAT\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"BUILT_IN_STRCPY\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"BUILT_IN_STRNCPY\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"BUILT_IN_STRCMP\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"BUILT_IN_STRNCMP\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"BUILT_IN_STRLEN\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"BUILT_IN_STRSTR\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"BUILT_IN_STRPBRK\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"BUILT_IN_STRSPN\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"BUILT_IN_STRCSPN\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"BUILT_IN_STRCHR\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"BUILT_IN_STRRCHR\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"BUILT_IN_SQRT\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"BUILT_IN_SIN\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"BUILT_IN_COS\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"BUILT_IN_SQRTF\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"BUILT_IN_SINF\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"BUILT_IN_COSF\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"BUILT_IN_SQRTL\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"BUILT_IN_SINL\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"BUILT_IN_COSL\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"BUILT_IN_SAVEREGS\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"BUILT_IN_CLASSIFY_TYPE\00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c"BUILT_IN_NEXT_ARG\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c"BUILT_IN_ARGS_INFO\00", align 1
@.str.55 = private unnamed_addr constant [20 x i8] c"BUILT_IN_CONSTANT_P\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"BUILT_IN_FRAME_ADDRESS\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"BUILT_IN_RETURN_ADDRESS\00", align 1
@.str.58 = private unnamed_addr constant [36 x i8] c"BUILT_IN_AGGREGATE_INCOMING_ADDRESS\00", align 1
@.str.59 = private unnamed_addr constant [20 x i8] c"BUILT_IN_APPLY_ARGS\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"BUILT_IN_APPLY\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"BUILT_IN_RETURN\00", align 1
@.str.62 = private unnamed_addr constant [16 x i8] c"BUILT_IN_SETJMP\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"BUILT_IN_LONGJMP\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"BUILT_IN_TRAP\00", align 1
@.str.65 = private unnamed_addr constant [18 x i8] c"BUILT_IN_PREFETCH\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"BUILT_IN_PUTCHAR\00", align 1
@.str.67 = private unnamed_addr constant [14 x i8] c"BUILT_IN_PUTS\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"BUILT_IN_PRINTF\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"BUILT_IN_FPUTC\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"BUILT_IN_FPUTS\00", align 1
@.str.71 = private unnamed_addr constant [16 x i8] c"BUILT_IN_FWRITE\00", align 1
@.str.72 = private unnamed_addr constant [17 x i8] c"BUILT_IN_FPRINTF\00", align 1
@.str.73 = private unnamed_addr constant [26 x i8] c"BUILT_IN_PUTCHAR_UNLOCKED\00", align 1
@.str.74 = private unnamed_addr constant [23 x i8] c"BUILT_IN_PUTS_UNLOCKED\00", align 1
@.str.75 = private unnamed_addr constant [25 x i8] c"BUILT_IN_PRINTF_UNLOCKED\00", align 1
@.str.76 = private unnamed_addr constant [24 x i8] c"BUILT_IN_FPUTC_UNLOCKED\00", align 1
@.str.77 = private unnamed_addr constant [24 x i8] c"BUILT_IN_FPUTS_UNLOCKED\00", align 1
@.str.78 = private unnamed_addr constant [25 x i8] c"BUILT_IN_FWRITE_UNLOCKED\00", align 1
@.str.79 = private unnamed_addr constant [26 x i8] c"BUILT_IN_FPRINTF_UNLOCKED\00", align 1
@.str.80 = private unnamed_addr constant [19 x i8] c"BUILT_IN_ISGREATER\00", align 1
@.str.81 = private unnamed_addr constant [24 x i8] c"BUILT_IN_ISGREATEREQUAL\00", align 1
@.str.82 = private unnamed_addr constant [16 x i8] c"BUILT_IN_ISLESS\00", align 1
@.str.83 = private unnamed_addr constant [21 x i8] c"BUILT_IN_ISLESSEQUAL\00", align 1
@.str.84 = private unnamed_addr constant [23 x i8] c"BUILT_IN_ISLESSGREATER\00", align 1
@.str.85 = private unnamed_addr constant [21 x i8] c"BUILT_IN_ISUNORDERED\00", align 1
@.str.86 = private unnamed_addr constant [21 x i8] c"BUILT_IN_UNWIND_INIT\00", align 1
@.str.87 = private unnamed_addr constant [19 x i8] c"BUILT_IN_DWARF_CFA\00", align 1
@.str.88 = private unnamed_addr constant [25 x i8] c"BUILT_IN_DWARF_FP_REGNUM\00", align 1
@.str.89 = private unnamed_addr constant [30 x i8] c"BUILT_IN_INIT_DWARF_REG_SIZES\00", align 1
@.str.90 = private unnamed_addr constant [26 x i8] c"BUILT_IN_FROB_RETURN_ADDR\00", align 1
@.str.91 = private unnamed_addr constant [29 x i8] c"BUILT_IN_EXTRACT_RETURN_ADDR\00", align 1
@.str.92 = private unnamed_addr constant [19 x i8] c"BUILT_IN_EH_RETURN\00", align 1
@.str.93 = private unnamed_addr constant [30 x i8] c"BUILT_IN_EH_RETURN_DATA_REGNO\00", align 1
@.str.94 = private unnamed_addr constant [23 x i8] c"BUILT_IN_VARARGS_START\00", align 1
@.str.95 = private unnamed_addr constant [22 x i8] c"BUILT_IN_STDARG_START\00", align 1
@.str.96 = private unnamed_addr constant [16 x i8] c"BUILT_IN_VA_END\00", align 1
@.str.97 = private unnamed_addr constant [17 x i8] c"BUILT_IN_VA_COPY\00", align 1
@.str.98 = private unnamed_addr constant [16 x i8] c"BUILT_IN_EXPECT\00", align 1
@built_in_names = constant [95 x i8*] [i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.98, i32 0, i32 0)], align 16
@target_flags = external global i32, align 4
@global_rtl = external global [11 x %struct.rtx_def*], align 16
@setjmp_alias_set = internal global i64 -1, align 8
@mode_size = external constant [59 x i8], align 16
@cfun = external global %struct.function*, align 8
@static_chain_rtx = external global %struct.rtx_def*, align 8
@fixed_regs = external global [53 x i8], align 16
@expand_builtin_setjmp_receiver.elim_regs = internal constant [4 x %struct.elims] [%struct.elims { i32 16, i32 7 }, %struct.elims { i32 16, i32 6 }, %struct.elims { i32 20, i32 7 }, %struct.elims { i32 20, i32 6 }], align 16
@flag_pic = external global i32, align 4
@.str.99 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@const_int_rtx = external global [129 x %struct.rtx_def*], align 16
@.str.100 = private unnamed_addr constant [11 x i8] c"builtins.c\00", align 1
@__FUNCTION__.expand_builtin_longjmp = private unnamed_addr constant [23 x i8] c"expand_builtin_longjmp\00", align 1
@apply_args_reg_offset = internal global [53 x i32] zeroinitializer, align 16
@.str.101 = private unnamed_addr constant [48 x i8] c"__builtin_saveregs not supported by this target\00", align 1
@integer_types = external global [11 x %union.tree_node*], align 16
@global_trees = external global [51 x %union.tree_node*], align 16
@sizetype_tab = external global [6 x %union.tree_node*], align 16
@.str.102 = private unnamed_addr constant [49 x i8] c"first argument to `va_arg' not of type `va_list'\00", align 1
@lang_type_promotes_to = common global %union.tree_node* (%union.tree_node*)* null, align 8
@.str.103 = private unnamed_addr constant [17 x i8] c"<anonymous type>\00", align 1
@expand_builtin_va_arg.gave_help = internal global i8 0, align 1
@.str.104 = private unnamed_addr constant [51 x i8] c"`%s' is promoted to `%s' when passed through `...'\00", align 1
@.str.105 = private unnamed_addr constant [47 x i8] c"(so you should pass `%s' not `%s' to `va_arg')\00", align 1
@targetm = external global %struct.gcc_target, align 8
@optimize = external global i32, align 4
@.str.106 = private unnamed_addr constant [11 x i8] c"__builtin_\00", align 1
@__FUNCTION__.expand_builtin = private unnamed_addr constant [15 x i8] c"expand_builtin\00", align 1
@flag_unsafe_math_optimizations = external global i32, align 4
@current_function_decl = external global %union.tree_node*, align 8
@.str.107 = private unnamed_addr constant [44 x i8] c"__builtin_longjmp second argument must be 1\00", align 1
@.str.108 = private unnamed_addr constant [47 x i8] c"built-in function `%s' not currently supported\00", align 1
@built_in_decls = common global [95 x %union.tree_node*] zeroinitializer, align 16
@apply_args_size.size = internal global i32 -1, align 4
@struct_value_rtx = external global %struct.rtx_def*, align 8
@class_narrowest_mode = external constant [9 x i32], align 16
@mode_class = external constant [59 x i32], align 16
@mode_wider_mode = external constant [59 x i8], align 16
@__FUNCTION__.apply_args_size = private unnamed_addr constant [16 x i8] c"apply_args_size\00", align 1
@apply_args_mode = internal global [53 x i32] zeroinitializer, align 16
@optab_table = external global [49 x %struct.optab*], align 16
@__FUNCTION__.expand_builtin_mathfn = private unnamed_addr constant [22 x i8] c"expand_builtin_mathfn\00", align 1
@flag_errno_math = external global i32, align 4
@struct_value_incoming_rtx = external global %struct.rtx_def*, align 8
@__FUNCTION__.expand_builtin_apply = private unnamed_addr constant [21 x i8] c"expand_builtin_apply\00", align 1
@apply_result_size.size = internal global i32 -1, align 4
@__FUNCTION__.apply_result_size = private unnamed_addr constant [18 x i8] c"apply_result_size\00", align 1
@apply_result_mode = internal global [53 x i32] zeroinitializer, align 16
@.str.109 = private unnamed_addr constant [51 x i8] c"argument of `__builtin_args_info' must be constant\00", align 1
@.str.110 = private unnamed_addr constant [47 x i8] c"argument of `__builtin_args_info' out of range\00", align 1
@.str.111 = private unnamed_addr constant [42 x i8] c"missing argument in `__builtin_args_info'\00", align 1
@.str.112 = private unnamed_addr constant [44 x i8] c"`va_start' used in function with fixed args\00", align 1
@.str.113 = private unnamed_addr constant [55 x i8] c"second parameter of `va_start' not last named argument\00", align 1
@.str.114 = private unnamed_addr constant [48 x i8] c"`__builtin_next_arg' called without an argument\00", align 1
@.str.115 = private unnamed_addr constant [41 x i8] c"invalid arg to `__builtin_frame_address'\00", align 1
@.str.116 = private unnamed_addr constant [42 x i8] c"invalid arg to `__builtin_return_address'\00", align 1
@.str.117 = private unnamed_addr constant [45 x i8] c"unsupported arg to `__builtin_frame_address'\00", align 1
@.str.118 = private unnamed_addr constant [46 x i8] c"unsupported arg to `__builtin_return_address'\00", align 1
@__FUNCTION__.expand_builtin_ffs = private unnamed_addr constant [19 x i8] c"expand_builtin_ffs\00", align 1
@insn_data = external constant [0 x %struct.insn_data], align 8
@ptr_mode = external global i32, align 4
@tree_code_type = external global [256 x i8], align 16
@__FUNCTION__.c_readstr = private unnamed_addr constant [10 x i8] c"c_readstr\00", align 1
@__FUNCTION__.builtin_memcpy_read_str = private unnamed_addr constant [24 x i8] c"builtin_memcpy_read_str\00", align 1
@libfunc_table = external global [97 x %struct.rtx_def*], align 16
@__FUNCTION__.expand_builtin_fputs = private unnamed_addr constant [21 x i8] c"expand_builtin_fputs\00", align 1
@.str.119 = private unnamed_addr constant [42 x i8] c"too many arguments to function `va_start'\00", align 1
@.str.120 = private unnamed_addr constant [52 x i8] c"second arg to `__builtin_expect' must be a constant\00", align 1
@.str.121 = private unnamed_addr constant [54 x i8] c"second arg to `__builtin_prefetch' must be a constant\00", align 1
@.str.122 = private unnamed_addr constant [53 x i8] c"invalid second arg to __builtin_prefetch; using zero\00", align 1
@.str.123 = private unnamed_addr constant [53 x i8] c"third arg to `__builtin_prefetch' must be a constant\00", align 1
@.str.124 = private unnamed_addr constant [52 x i8] c"invalid third arg to __builtin_prefetch; using zero\00", align 1
@x86_prefetch_sse = external global i32, align 4
@cse_not_expected = external global i32, align 4
@.str.125 = private unnamed_addr constant [41 x i8] c"offset outside bounds of constant string\00", align 1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @expand_builtin_return_addr(i32 %fndecl_code, i32 %count, %struct.rtx_def* %tem) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %fndecl_code.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %tem.addr = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  store i32 %fndecl_code, i32* %fndecl_code.addr, align 4
  store i32 %count, i32* %count.addr, align 4
  store %struct.rtx_def* %tem, %struct.rtx_def** %tem.addr, align 8
  %0 = load i32, i32* %count.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ix86_setup_frame_addresses()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %count.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* @target_flags, align 4
  %and = and i32 %3, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 5, i32 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %tem.addr, align 8
  %call = call %struct.rtx_def* @memory_address(i32 %cond, %struct.rtx_def* %4)
  store %struct.rtx_def* %call, %struct.rtx_def** %tem.addr, align 8
  %5 = load i32, i32* @target_flags, align 4
  %and2 = and i32 %5, 33554432
  %tobool3 = icmp ne i32 %and2, 0
  %cond4 = select i1 %tobool3, i32 5, i32 4
  %6 = load %struct.rtx_def*, %struct.rtx_def** %tem.addr, align 8
  %call5 = call %struct.rtx_def* @gen_rtx_MEM(i32 %cond4, %struct.rtx_def* %6)
  store %struct.rtx_def* %call5, %struct.rtx_def** %tem.addr, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %tem.addr, align 8
  %call6 = call i64 @get_frame_alias_set()
  call void @set_mem_alias_set(%struct.rtx_def* %7, i64 %call6)
  %8 = load %struct.rtx_def*, %struct.rtx_def** %tem.addr, align 8
  %call7 = call %struct.rtx_def* @copy_to_reg(%struct.rtx_def* %8)
  store %struct.rtx_def* %call7, %struct.rtx_def** %tem.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %fndecl_code.addr, align 4
  %cmp8 = icmp eq i32 %10, 52
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.end
  %11 = load %struct.rtx_def*, %struct.rtx_def** %tem.addr, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %retval
  br label %return

if.end.10:                                        ; preds = %for.end
  %12 = load i32, i32* %count.addr, align 4
  %cmp11 = icmp eq i32 %12, 0
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  %13 = load i32, i32* @target_flags, align 4
  %and12 = and i32 %13, 33554432
  %tobool13 = icmp ne i32 %and12, 0
  %cond14 = select i1 %tobool13, i32 5, i32 4
  %14 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 5), align 8
  %15 = load i32, i32* @target_flags, align 4
  %and15 = and i32 %15, 33554432
  %tobool16 = icmp ne i32 %and15, 0
  %cond17 = select i1 %tobool16, i32 8, i32 4
  %sub = sub nsw i32 0, %cond17
  %conv = sext i32 %sub to i64
  %call18 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %14, i64 %conv)
  %call19 = call %struct.rtx_def* @gen_rtx_MEM(i32 %cond14, %struct.rtx_def* %call18)
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  %16 = load i32, i32* @target_flags, align 4
  %and20 = and i32 %16, 33554432
  %tobool21 = icmp ne i32 %and20, 0
  %cond22 = select i1 %tobool21, i32 5, i32 4
  %17 = load %struct.rtx_def*, %struct.rtx_def** %tem.addr, align 8
  %18 = load i32, i32* @target_flags, align 4
  %and23 = and i32 %18, 33554432
  %tobool24 = icmp ne i32 %and23, 0
  %cond25 = select i1 %tobool24, i32 8, i32 4
  %conv26 = sext i32 %cond25 to i64
  %call27 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %17, i64 %conv26)
  %call28 = call %struct.rtx_def* @gen_rtx_MEM(i32 %cond22, %struct.rtx_def* %call27)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond29 = phi %struct.rtx_def* [ %call19, %cond.true ], [ %call28, %cond.false ]
  store %struct.rtx_def* %cond29, %struct.rtx_def** %tem.addr, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %tem.addr, align 8
  store %struct.rtx_def* %19, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.9
  %20 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %20
}

declare void @ix86_setup_frame_addresses() #1

declare %struct.rtx_def* @memory_address(i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_MEM(i32, %struct.rtx_def*) #1

declare void @set_mem_alias_set(%struct.rtx_def*, i64) #1

declare i64 @get_frame_alias_set() #1

declare %struct.rtx_def* @copy_to_reg(%struct.rtx_def*) #1

declare %struct.rtx_def* @plus_constant_wide(%struct.rtx_def*, i64) #1

; Function Attrs: nounwind uwtable
define void @expand_builtin_setjmp_setup(%struct.rtx_def* %buf_addr, %struct.rtx_def* %receiver_label) #0 {
entry:
  %buf_addr.addr = alloca %struct.rtx_def*, align 8
  %receiver_label.addr = alloca %struct.rtx_def*, align 8
  %sa_mode = alloca i32, align 4
  %stack_save = alloca %struct.rtx_def*, align 8
  %mem = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %buf_addr, %struct.rtx_def** %buf_addr.addr, align 8
  store %struct.rtx_def* %receiver_label, %struct.rtx_def** %receiver_label.addr, align 8
  %0 = load i32, i32* @target_flags, align 4
  %and = and i32 %0, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 5, i32 4
  store i32 %cond, i32* %sa_mode, align 4
  %1 = load i64, i64* @setjmp_alias_set, align 8
  %cmp = icmp eq i64 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i64 @new_alias_set()
  store i64 %call, i64* @setjmp_alias_set, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* @target_flags, align 4
  %and1 = and i32 %2, 33554432
  %tobool2 = icmp ne i32 %and1, 0
  %cond3 = select i1 %tobool2, i32 5, i32 4
  %3 = load %struct.rtx_def*, %struct.rtx_def** %buf_addr.addr, align 8
  %call4 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %3, %struct.rtx_def* null)
  %call5 = call %struct.rtx_def* @force_reg(i32 %cond3, %struct.rtx_def* %call4)
  store %struct.rtx_def* %call5, %struct.rtx_def** %buf_addr.addr, align 8
  call void @emit_queue()
  %4 = load i32, i32* @target_flags, align 4
  %and6 = and i32 %4, 33554432
  %tobool7 = icmp ne i32 %and6, 0
  %cond8 = select i1 %tobool7, i32 5, i32 4
  %5 = load %struct.rtx_def*, %struct.rtx_def** %buf_addr.addr, align 8
  %call9 = call %struct.rtx_def* @gen_rtx_MEM(i32 %cond8, %struct.rtx_def* %5)
  store %struct.rtx_def* %call9, %struct.rtx_def** %mem, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %mem, align 8
  %7 = load i64, i64* @setjmp_alias_set, align 8
  call void @set_mem_alias_set(%struct.rtx_def* %6, i64 %7)
  %8 = load %struct.rtx_def*, %struct.rtx_def** %mem, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 7), align 8
  %call10 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %8, %struct.rtx_def* %9)
  %10 = load i32, i32* @target_flags, align 4
  %and11 = and i32 %10, 33554432
  %tobool12 = icmp ne i32 %and11, 0
  %cond13 = select i1 %tobool12, i32 5, i32 4
  %11 = load %struct.rtx_def*, %struct.rtx_def** %buf_addr.addr, align 8
  %12 = load i32, i32* @target_flags, align 4
  %and14 = and i32 %12, 33554432
  %tobool15 = icmp ne i32 %and14, 0
  %cond16 = select i1 %tobool15, i32 5, i32 4
  %idxprom = sext i32 %cond16 to i64
  %arrayidx = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %13 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %13 to i64
  %call17 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %11, i64 %conv)
  %call18 = call %struct.rtx_def* @gen_rtx_MEM(i32 %cond13, %struct.rtx_def* %call17)
  store %struct.rtx_def* %call18, %struct.rtx_def** %mem, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %mem, align 8
  %15 = load i64, i64* @setjmp_alias_set, align 8
  call void @set_mem_alias_set(%struct.rtx_def* %14, i64 %15)
  %16 = load %struct.rtx_def*, %struct.rtx_def** %mem, align 8
  %call19 = call %struct.rtx_def* @validize_mem(%struct.rtx_def* %16)
  %17 = load i32, i32* @target_flags, align 4
  %and20 = and i32 %17, 33554432
  %tobool21 = icmp ne i32 %and20, 0
  %cond22 = select i1 %tobool21, i32 5, i32 4
  %18 = load i32, i32* @target_flags, align 4
  %and23 = and i32 %18, 33554432
  %tobool24 = icmp ne i32 %and23, 0
  %cond25 = select i1 %tobool24, i32 5, i32 4
  %19 = load %struct.rtx_def*, %struct.rtx_def** %receiver_label.addr, align 8
  %call26 = call %struct.rtx_def* @gen_rtx_fmt_u00(i32 67, i32 %cond25, %struct.rtx_def* %19)
  %call27 = call %struct.rtx_def* @force_reg(i32 %cond22, %struct.rtx_def* %call26)
  %call28 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %call19, %struct.rtx_def* %call27)
  %20 = load i32, i32* %sa_mode, align 4
  %21 = load %struct.rtx_def*, %struct.rtx_def** %buf_addr.addr, align 8
  %22 = load i32, i32* @target_flags, align 4
  %and29 = and i32 %22, 33554432
  %tobool30 = icmp ne i32 %and29, 0
  %cond31 = select i1 %tobool30, i32 5, i32 4
  %idxprom32 = sext i32 %cond31 to i64
  %arrayidx33 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom32
  %23 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %23 to i32
  %mul = mul nsw i32 2, %conv34
  %conv35 = sext i32 %mul to i64
  %call36 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %21, i64 %conv35)
  %call37 = call %struct.rtx_def* @gen_rtx_MEM(i32 %20, %struct.rtx_def* %call36)
  store %struct.rtx_def* %call37, %struct.rtx_def** %stack_save, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %stack_save, align 8
  %25 = load i64, i64* @setjmp_alias_set, align 8
  call void @set_mem_alias_set(%struct.rtx_def* %24, i64 %25)
  call void @emit_stack_save(i32 2, %struct.rtx_def** %stack_save, %struct.rtx_def* null)
  %26 = load %struct.function*, %struct.function** @cfun, align 8
  %calls_setjmp = getelementptr inbounds %struct.function, %struct.function* %26, i32 0, i32 56
  %27 = bitcast i24* %calls_setjmp to i32*
  %bf.load = load i32, i32* %27, align 8
  %bf.clear = and i32 %bf.load, -17
  %bf.set = or i32 %bf.clear, 16
  store i32 %bf.set, i32* %27, align 8
  %28 = load %struct.function*, %struct.function** @cfun, align 8
  %has_nonlocal_label = getelementptr inbounds %struct.function, %struct.function* %28, i32 0, i32 56
  %29 = bitcast i24* %has_nonlocal_label to i32*
  %bf.load38 = load i32, i32* %29, align 8
  %bf.clear39 = and i32 %bf.load38, -257
  %bf.set40 = or i32 %bf.clear39, 256
  store i32 %bf.set40, i32* %29, align 8
  ret void
}

declare i64 @new_alias_set() #1

declare %struct.rtx_def* @force_reg(i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @force_operand(%struct.rtx_def*, %struct.rtx_def*) #1

declare void @emit_queue() #1

declare %struct.rtx_def* @emit_move_insn(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @validize_mem(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_fmt_u00(i32, i32, %struct.rtx_def*) #1

declare void @emit_stack_save(i32, %struct.rtx_def**, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define void @expand_builtin_setjmp_receiver(%struct.rtx_def* %receiver_label) #0 {
entry:
  %receiver_label.addr = alloca %struct.rtx_def*, align 8
  %i = alloca i64, align 8
  store %struct.rtx_def* %receiver_label, %struct.rtx_def** %receiver_label.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 4), align 8
  %call = call %struct.rtx_def* @gen_rtx_fmt_e(i32 48, i32 0, %struct.rtx_def* %0)
  %call1 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call)
  %1 = load %struct.rtx_def*, %struct.rtx_def** @static_chain_rtx, align 8
  %call2 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 49, i32 0, %struct.rtx_def* %1)
  %call3 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call2)
  %2 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 7), align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 4), align 8
  %call4 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %2, %struct.rtx_def* %3)
  %4 = load i8, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 16), align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %5, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [4 x %struct.elims], [4 x %struct.elims]* @expand_builtin_setjmp_receiver.elim_regs, i32 0, i64 %6
  %from = getelementptr inbounds %struct.elims, %struct.elims* %arrayidx, i32 0, i32 0
  %7 = load i32, i32* %from, align 4
  %cmp5 = icmp eq i32 %7, 16
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %8 = load i64, i64* %i, align 8
  %arrayidx6 = getelementptr inbounds [4 x %struct.elims], [4 x %struct.elims]* @expand_builtin_setjmp_receiver.elim_regs, i32 0, i64 %8
  %to = getelementptr inbounds %struct.elims, %struct.elims* %arrayidx6, i32 0, i32 1
  %9 = load i32, i32* %to, align 4
  %cmp7 = icmp eq i32 %9, 6
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %land.lhs.true
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i64, i64* %i, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.8, %for.cond
  %11 = load i64, i64* %i, align 8
  %cmp9 = icmp eq i64 %11, 4
  br i1 %cmp9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %for.end
  %12 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 6), align 8
  %13 = load %struct.function*, %struct.function** @cfun, align 8
  %call11 = call %struct.rtx_def* @get_arg_pointer_save_area(%struct.function* %13)
  %call12 = call %struct.rtx_def* @copy_to_reg(%struct.rtx_def* %call11)
  %call13 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %12, %struct.rtx_def* %call12)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.10, %for.end
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %entry
  %14 = load i32, i32* @target_flags, align 4
  %and = and i32 %14, 33554432
  %tobool16 = icmp ne i32 %and, 0
  br i1 %tobool16, label %if.else, label %land.lhs.true.17

land.lhs.true.17:                                 ; preds = %if.end.15
  %15 = load i32, i32* @flag_pic, align 4
  %tobool18 = icmp ne i32 %15, 0
  br i1 %tobool18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %land.lhs.true.17
  %16 = load %struct.rtx_def*, %struct.rtx_def** %receiver_label.addr, align 8
  %call20 = call %struct.rtx_def* @gen_builtin_setjmp_receiver(%struct.rtx_def* %16)
  %call21 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call20)
  br label %if.end.22

if.else:                                          ; preds = %land.lhs.true.17, %if.end.15
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.19
  %call23 = call %struct.rtx_def* @gen_rtx_fmt_s(i32 40, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.99, i32 0, i32 0))
  %call24 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call23)
  ret void
}

declare %struct.rtx_def* @emit_insn(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_fmt_e(i32, i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @get_arg_pointer_save_area(%struct.function*) #1

declare %struct.rtx_def* @gen_builtin_setjmp_receiver(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_fmt_s(i32, i32, i8*) #1

; Function Attrs: nounwind uwtable
define void @expand_builtin_longjmp(%struct.rtx_def* %buf_addr, %struct.rtx_def* %value) #0 {
entry:
  %buf_addr.addr = alloca %struct.rtx_def*, align 8
  %value.addr = alloca %struct.rtx_def*, align 8
  %fp = alloca %struct.rtx_def*, align 8
  %lab = alloca %struct.rtx_def*, align 8
  %stack = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %sa_mode = alloca i32, align 4
  store %struct.rtx_def* %buf_addr, %struct.rtx_def** %buf_addr.addr, align 8
  store %struct.rtx_def* %value, %struct.rtx_def** %value.addr, align 8
  %0 = load i32, i32* @target_flags, align 4
  %and = and i32 %0, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 5, i32 4
  store i32 %cond, i32* %sa_mode, align 4
  %1 = load i64, i64* @setjmp_alias_set, align 8
  %cmp = icmp eq i64 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i64 @new_alias_set()
  store i64 %call, i64* @setjmp_alias_set, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* @target_flags, align 4
  %and1 = and i32 %2, 33554432
  %tobool2 = icmp ne i32 %and1, 0
  %cond3 = select i1 %tobool2, i32 5, i32 4
  %3 = load %struct.rtx_def*, %struct.rtx_def** %buf_addr.addr, align 8
  %call4 = call %struct.rtx_def* @force_reg(i32 %cond3, %struct.rtx_def* %3)
  store %struct.rtx_def* %call4, %struct.rtx_def** %buf_addr.addr, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  %cmp5 = icmp ne %struct.rtx_def* %4, %5
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.100, i32 0, i32 0), i32 661, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.expand_builtin_longjmp, i32 0, i32 0)) #5
  unreachable

if.end.7:                                         ; preds = %if.end
  %6 = load %struct.function*, %struct.function** @cfun, align 8
  %calls_longjmp = getelementptr inbounds %struct.function, %struct.function* %6, i32 0, i32 56
  %7 = bitcast i24* %calls_longjmp to i32*
  %bf.load = load i32, i32* %7, align 8
  %bf.clear = and i32 %bf.load, -33
  %bf.set = or i32 %bf.clear, 32
  store i32 %bf.set, i32* %7, align 8
  %8 = load i32, i32* @target_flags, align 4
  %and8 = and i32 %8, 33554432
  %tobool9 = icmp ne i32 %and8, 0
  %cond10 = select i1 %tobool9, i32 5, i32 4
  %9 = load %struct.rtx_def*, %struct.rtx_def** %buf_addr.addr, align 8
  %call11 = call %struct.rtx_def* @gen_rtx_MEM(i32 %cond10, %struct.rtx_def* %9)
  store %struct.rtx_def* %call11, %struct.rtx_def** %fp, align 8
  %10 = load i32, i32* @target_flags, align 4
  %and12 = and i32 %10, 33554432
  %tobool13 = icmp ne i32 %and12, 0
  %cond14 = select i1 %tobool13, i32 5, i32 4
  %11 = load %struct.rtx_def*, %struct.rtx_def** %buf_addr.addr, align 8
  %12 = load i32, i32* @target_flags, align 4
  %and15 = and i32 %12, 33554432
  %tobool16 = icmp ne i32 %and15, 0
  %cond17 = select i1 %tobool16, i32 5, i32 4
  %idxprom = sext i32 %cond17 to i64
  %arrayidx = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %13 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %13 to i64
  %call18 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %11, i64 %conv)
  %call19 = call %struct.rtx_def* @gen_rtx_MEM(i32 %cond14, %struct.rtx_def* %call18)
  store %struct.rtx_def* %call19, %struct.rtx_def** %lab, align 8
  %14 = load i32, i32* %sa_mode, align 4
  %15 = load %struct.rtx_def*, %struct.rtx_def** %buf_addr.addr, align 8
  %16 = load i32, i32* @target_flags, align 4
  %and20 = and i32 %16, 33554432
  %tobool21 = icmp ne i32 %and20, 0
  %cond22 = select i1 %tobool21, i32 5, i32 4
  %idxprom23 = sext i32 %cond22 to i64
  %arrayidx24 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom23
  %17 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %17 to i32
  %mul = mul nsw i32 2, %conv25
  %conv26 = sext i32 %mul to i64
  %call27 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %15, i64 %conv26)
  %call28 = call %struct.rtx_def* @gen_rtx_MEM(i32 %14, %struct.rtx_def* %call27)
  store %struct.rtx_def* %call28, %struct.rtx_def** %stack, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %fp, align 8
  %19 = load i64, i64* @setjmp_alias_set, align 8
  call void @set_mem_alias_set(%struct.rtx_def* %18, i64 %19)
  %20 = load %struct.rtx_def*, %struct.rtx_def** %lab, align 8
  %21 = load i64, i64* @setjmp_alias_set, align 8
  call void @set_mem_alias_set(%struct.rtx_def* %20, i64 %21)
  %22 = load %struct.rtx_def*, %struct.rtx_def** %stack, align 8
  %23 = load i64, i64* @setjmp_alias_set, align 8
  call void @set_mem_alias_set(%struct.rtx_def* %22, i64 %23)
  %24 = load %struct.rtx_def*, %struct.rtx_def** %lab, align 8
  %call29 = call %struct.rtx_def* @copy_to_reg(%struct.rtx_def* %24)
  store %struct.rtx_def* %call29, %struct.rtx_def** %lab, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 4), align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %fp, align 8
  %call30 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %25, %struct.rtx_def* %26)
  %27 = load %struct.rtx_def*, %struct.rtx_def** %stack, align 8
  call void @emit_stack_restore(i32 2, %struct.rtx_def* %27, %struct.rtx_def* null)
  %28 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 4), align 8
  %call31 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 48, i32 0, %struct.rtx_def* %28)
  %call32 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call31)
  %29 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %call33 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 48, i32 0, %struct.rtx_def* %29)
  %call34 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call33)
  %30 = load %struct.rtx_def*, %struct.rtx_def** %lab, align 8
  call void @emit_indirect_jump(%struct.rtx_def* %30)
  %call35 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call35, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool36 = icmp ne %struct.rtx_def* %31, null
  br i1 %tobool36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load37 = load i32, i32* %33, align 8
  %bf.clear38 = and i32 %bf.load37, 65535
  %cmp39 = icmp eq i32 %bf.clear38, 33
  br i1 %cmp39, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %for.body
  %34 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 6
  %rtx = bitcast %union.rtunion_def* %arrayidx42 to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call43 = call %struct.rtx_def* @alloc_EXPR_LIST(i32 27, %struct.rtx_def* %34, %struct.rtx_def* %36)
  %37 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 6
  %rtx46 = bitcast %union.rtunion_def* %arrayidx45 to %struct.rtx_def**
  store %struct.rtx_def* %call43, %struct.rtx_def** %rtx46, align 8
  br label %for.end

if.else:                                          ; preds = %for.body
  %38 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %39 = bitcast %struct.rtx_def* %38 to i32*
  %bf.load47 = load i32, i32* %39, align 8
  %bf.clear48 = and i32 %bf.load47, 65535
  %cmp49 = icmp eq i32 %bf.clear48, 34
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.else
  br label %for.end

if.end.52:                                        ; preds = %if.else
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52
  br label %for.inc

for.inc:                                          ; preds = %if.end.53
  %40 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld54, i32 0, i64 1
  %rtx56 = bitcast %union.rtunion_def* %arrayidx55 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx56, align 8
  store %struct.rtx_def* %41, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.51, %if.then.41, %for.cond
  ret void
}

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

declare void @emit_stack_restore(i32, %struct.rtx_def*, %struct.rtx_def*) #1

declare void @emit_indirect_jump(%struct.rtx_def*) #1

declare %struct.rtx_def* @get_last_insn() #1

declare %struct.rtx_def* @alloc_EXPR_LIST(i32, %struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define i32 @apply_args_register_offset(i32 %regno) #0 {
entry:
  %regno.addr = alloca i32, align 4
  store i32 %regno, i32* %regno.addr, align 4
  %call = call i32 @apply_args_size()
  %0 = load i32, i32* %regno.addr, align 4
  store i32 %0, i32* %regno.addr, align 4
  %1 = load i32, i32* %regno.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [53 x i32], [53 x i32]* @apply_args_reg_offset, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @apply_args_size() #0 {
entry:
  %align = alloca i32, align 4
  %regno = alloca i32, align 4
  %mode = alloca i32, align 4
  %best_mode = alloca i32, align 4
  %0 = load i32, i32* @apply_args_size.size, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end.173

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @target_flags, align 4
  %and = and i32 %1, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 5, i32 4
  %idxprom = sext i32 %cond to i64
  %arrayidx = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  store i32 %conv, i32* @apply_args_size.size, align 4
  %3 = load %struct.rtx_def*, %struct.rtx_def** @struct_value_rtx, align 8
  %tobool1 = icmp ne %struct.rtx_def* %3, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %4 = load i32, i32* @target_flags, align 4
  %and3 = and i32 %4, 33554432
  %tobool4 = icmp ne i32 %and3, 0
  %cond5 = select i1 %tobool4, i32 5, i32 4
  %idxprom6 = sext i32 %cond5 to i64
  %arrayidx7 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom6
  %5 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %5 to i32
  %6 = load i32, i32* @apply_args_size.size, align 4
  %add = add nsw i32 %6, %conv8
  store i32 %add, i32* @apply_args_size.size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  store i32 0, i32* %regno, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.171, %if.end
  %7 = load i32, i32* %regno, align 4
  %cmp9 = icmp ult i32 %7, 53
  br i1 %cmp9, label %for.body, label %for.end.172

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %regno, align 4
  %call = call zeroext i1 @ix86_function_arg_regno_p(i32 %8)
  br i1 %call, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %for.body
  store i32 0, i32* %best_mode, align 4
  %9 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @class_narrowest_mode, i32 0, i64 1), align 4
  store i32 %9, i32* %mode, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %if.then.11
  %10 = load i32, i32* %mode, align 4
  %cmp13 = icmp ne i32 %10, 0
  br i1 %cmp13, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.12
  %11 = load i32, i32* %regno, align 4
  %12 = load i32, i32* %mode, align 4
  %call16 = call i32 @ix86_hard_regno_mode_ok(i32 %11, i32 %12)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %land.lhs.true, label %if.end.81

land.lhs.true:                                    ; preds = %for.body.15
  %13 = load i32, i32* %regno, align 4
  %cmp18 = icmp uge i32 %13, 8
  br i1 %cmp18, label %land.lhs.true.20, label %lor.lhs.false

land.lhs.true.20:                                 ; preds = %land.lhs.true
  %14 = load i32, i32* %regno, align 4
  %cmp21 = icmp ule i32 %14, 15
  br i1 %cmp21, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.20, %land.lhs.true
  %15 = load i32, i32* %regno, align 4
  %cmp23 = icmp uge i32 %15, 21
  br i1 %cmp23, label %land.lhs.true.25, label %lor.lhs.false.28

land.lhs.true.25:                                 ; preds = %lor.lhs.false
  %16 = load i32, i32* %regno, align 4
  %cmp26 = icmp ule i32 %16, 28
  br i1 %cmp26, label %cond.true, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %land.lhs.true.25, %lor.lhs.false
  %17 = load i32, i32* %regno, align 4
  %cmp29 = icmp uge i32 %17, 45
  br i1 %cmp29, label %land.lhs.true.31, label %lor.lhs.false.34

land.lhs.true.31:                                 ; preds = %lor.lhs.false.28
  %18 = load i32, i32* %regno, align 4
  %cmp32 = icmp ule i32 %18, 52
  br i1 %cmp32, label %cond.true, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %land.lhs.true.31, %lor.lhs.false.28
  %19 = load i32, i32* %regno, align 4
  %cmp35 = icmp uge i32 %19, 29
  br i1 %cmp35, label %land.lhs.true.37, label %cond.false

land.lhs.true.37:                                 ; preds = %lor.lhs.false.34
  %20 = load i32, i32* %regno, align 4
  %cmp38 = icmp ule i32 %20, 36
  br i1 %cmp38, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.37, %land.lhs.true.31, %land.lhs.true.25, %land.lhs.true.20
  %21 = load i32, i32* %mode, align 4
  %idxprom40 = sext i32 %21 to i64
  %arrayidx41 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom40
  %22 = load i32, i32* %arrayidx41, align 4
  %cmp42 = icmp eq i32 %22, 5
  br i1 %cmp42, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %23 = load i32, i32* %mode, align 4
  %idxprom44 = sext i32 %23 to i64
  %arrayidx45 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom44
  %24 = load i32, i32* %arrayidx45, align 4
  %cmp46 = icmp eq i32 %24, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %25 = phi i1 [ true, %cond.true ], [ %cmp46, %lor.rhs ]
  %cond48 = select i1 %25, i32 2, i32 1
  br label %cond.end.76

cond.false:                                       ; preds = %land.lhs.true.37, %lor.lhs.false.34
  %26 = load i32, i32* %mode, align 4
  %cmp49 = icmp eq i32 %26, 18
  br i1 %cmp49, label %cond.true.51, label %cond.false.55

cond.true.51:                                     ; preds = %cond.false
  %27 = load i32, i32* @target_flags, align 4
  %and52 = and i32 %27, 33554432
  %tobool53 = icmp ne i32 %and52, 0
  %cond54 = select i1 %tobool53, i32 2, i32 3
  br label %cond.end.74

cond.false.55:                                    ; preds = %cond.false
  %28 = load i32, i32* %mode, align 4
  %cmp56 = icmp eq i32 %28, 24
  br i1 %cmp56, label %cond.true.58, label %cond.false.62

cond.true.58:                                     ; preds = %cond.false.55
  %29 = load i32, i32* @target_flags, align 4
  %and59 = and i32 %29, 33554432
  %tobool60 = icmp ne i32 %and59, 0
  %cond61 = select i1 %tobool60, i32 4, i32 6
  br label %cond.end

cond.false.62:                                    ; preds = %cond.false.55
  %30 = load i32, i32* %mode, align 4
  %idxprom63 = sext i32 %30 to i64
  %arrayidx64 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom63
  %31 = load i8, i8* %arrayidx64, align 1
  %conv65 = zext i8 %31 to i32
  %32 = load i32, i32* @target_flags, align 4
  %and66 = and i32 %32, 33554432
  %tobool67 = icmp ne i32 %and66, 0
  %cond68 = select i1 %tobool67, i32 8, i32 4
  %add69 = add nsw i32 %conv65, %cond68
  %sub = sub nsw i32 %add69, 1
  %33 = load i32, i32* @target_flags, align 4
  %and70 = and i32 %33, 33554432
  %tobool71 = icmp ne i32 %and70, 0
  %cond72 = select i1 %tobool71, i32 8, i32 4
  %div = sdiv i32 %sub, %cond72
  br label %cond.end

cond.end:                                         ; preds = %cond.false.62, %cond.true.58
  %cond73 = phi i32 [ %cond61, %cond.true.58 ], [ %div, %cond.false.62 ]
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.end, %cond.true.51
  %cond75 = phi i32 [ %cond54, %cond.true.51 ], [ %cond73, %cond.end ]
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.end.74, %lor.end
  %cond77 = phi i32 [ %cond48, %lor.end ], [ %cond75, %cond.end.74 ]
  %cmp78 = icmp eq i32 %cond77, 1
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %cond.end.76
  %34 = load i32, i32* %mode, align 4
  store i32 %34, i32* %best_mode, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %cond.end.76, %for.body.15
  br label %for.inc

for.inc:                                          ; preds = %if.end.81
  %35 = load i32, i32* %mode, align 4
  %idxprom82 = sext i32 %35 to i64
  %arrayidx83 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom82
  %36 = load i8, i8* %arrayidx83, align 1
  %conv84 = zext i8 %36 to i32
  store i32 %conv84, i32* %mode, align 4
  br label %for.cond.12

for.end:                                          ; preds = %for.cond.12
  %37 = load i32, i32* %best_mode, align 4
  %cmp85 = icmp eq i32 %37, 0
  br i1 %cmp85, label %if.then.87, label %if.end.104

if.then.87:                                       ; preds = %for.end
  %38 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @class_narrowest_mode, i32 0, i64 2), align 4
  store i32 %38, i32* %mode, align 4
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.99, %if.then.87
  %39 = load i32, i32* %mode, align 4
  %cmp89 = icmp ne i32 %39, 0
  br i1 %cmp89, label %for.body.91, label %for.end.103

for.body.91:                                      ; preds = %for.cond.88
  %40 = load i32, i32* %regno, align 4
  %41 = load i32, i32* %mode, align 4
  %call92 = call i32 @ix86_hard_regno_mode_ok(i32 %40, i32 %41)
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %land.lhs.true.94, label %if.end.98

land.lhs.true.94:                                 ; preds = %for.body.91
  %42 = load i32, i32* %mode, align 4
  %call95 = call i32 @have_insn_for(i32 47, i32 %42)
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %land.lhs.true.94
  %43 = load i32, i32* %mode, align 4
  store i32 %43, i32* %best_mode, align 4
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.97, %land.lhs.true.94, %for.body.91
  br label %for.inc.99

for.inc.99:                                       ; preds = %if.end.98
  %44 = load i32, i32* %mode, align 4
  %idxprom100 = sext i32 %44 to i64
  %arrayidx101 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom100
  %45 = load i8, i8* %arrayidx101, align 1
  %conv102 = zext i8 %45 to i32
  store i32 %conv102, i32* %mode, align 4
  br label %for.cond.88

for.end.103:                                      ; preds = %for.cond.88
  br label %if.end.104

if.end.104:                                       ; preds = %for.end.103, %for.end
  %46 = load i32, i32* %best_mode, align 4
  %cmp105 = icmp eq i32 %46, 0
  br i1 %cmp105, label %if.then.107, label %if.end.124

if.then.107:                                      ; preds = %if.end.104
  %47 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @class_narrowest_mode, i32 0, i64 8), align 4
  store i32 %47, i32* %mode, align 4
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.119, %if.then.107
  %48 = load i32, i32* %mode, align 4
  %cmp109 = icmp ne i32 %48, 0
  br i1 %cmp109, label %for.body.111, label %for.end.123

for.body.111:                                     ; preds = %for.cond.108
  %49 = load i32, i32* %regno, align 4
  %50 = load i32, i32* %mode, align 4
  %call112 = call i32 @ix86_hard_regno_mode_ok(i32 %49, i32 %50)
  %tobool113 = icmp ne i32 %call112, 0
  br i1 %tobool113, label %land.lhs.true.114, label %if.end.118

land.lhs.true.114:                                ; preds = %for.body.111
  %51 = load i32, i32* %mode, align 4
  %call115 = call i32 @have_insn_for(i32 47, i32 %51)
  %tobool116 = icmp ne i32 %call115, 0
  br i1 %tobool116, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %land.lhs.true.114
  %52 = load i32, i32* %mode, align 4
  store i32 %52, i32* %best_mode, align 4
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.117, %land.lhs.true.114, %for.body.111
  br label %for.inc.119

for.inc.119:                                      ; preds = %if.end.118
  %53 = load i32, i32* %mode, align 4
  %idxprom120 = sext i32 %53 to i64
  %arrayidx121 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom120
  %54 = load i8, i8* %arrayidx121, align 1
  %conv122 = zext i8 %54 to i32
  store i32 %conv122, i32* %mode, align 4
  br label %for.cond.108

for.end.123:                                      ; preds = %for.cond.108
  br label %if.end.124

if.end.124:                                       ; preds = %for.end.123, %if.end.104
  %55 = load i32, i32* %best_mode, align 4
  %cmp125 = icmp eq i32 %55, 0
  br i1 %cmp125, label %if.then.127, label %if.end.144

if.then.127:                                      ; preds = %if.end.124
  %56 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @class_narrowest_mode, i32 0, i64 7), align 4
  store i32 %56, i32* %mode, align 4
  br label %for.cond.128

for.cond.128:                                     ; preds = %for.inc.139, %if.then.127
  %57 = load i32, i32* %mode, align 4
  %cmp129 = icmp ne i32 %57, 0
  br i1 %cmp129, label %for.body.131, label %for.end.143

for.body.131:                                     ; preds = %for.cond.128
  %58 = load i32, i32* %regno, align 4
  %59 = load i32, i32* %mode, align 4
  %call132 = call i32 @ix86_hard_regno_mode_ok(i32 %58, i32 %59)
  %tobool133 = icmp ne i32 %call132, 0
  br i1 %tobool133, label %land.lhs.true.134, label %if.end.138

land.lhs.true.134:                                ; preds = %for.body.131
  %60 = load i32, i32* %mode, align 4
  %call135 = call i32 @have_insn_for(i32 47, i32 %60)
  %tobool136 = icmp ne i32 %call135, 0
  br i1 %tobool136, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %land.lhs.true.134
  %61 = load i32, i32* %mode, align 4
  store i32 %61, i32* %best_mode, align 4
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.137, %land.lhs.true.134, %for.body.131
  br label %for.inc.139

for.inc.139:                                      ; preds = %if.end.138
  %62 = load i32, i32* %mode, align 4
  %idxprom140 = sext i32 %62 to i64
  %arrayidx141 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom140
  %63 = load i8, i8* %arrayidx141, align 1
  %conv142 = zext i8 %63 to i32
  store i32 %conv142, i32* %mode, align 4
  br label %for.cond.128

for.end.143:                                      ; preds = %for.cond.128
  br label %if.end.144

if.end.144:                                       ; preds = %for.end.143, %if.end.124
  %64 = load i32, i32* %best_mode, align 4
  store i32 %64, i32* %mode, align 4
  %65 = load i32, i32* %mode, align 4
  %cmp145 = icmp eq i32 %65, 0
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %if.end.144
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.100, i32 0, i32 0), i32 944, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.apply_args_size, i32 0, i32 0)) #5
  unreachable

if.end.148:                                       ; preds = %if.end.144
  %66 = load i32, i32* %mode, align 4
  %call149 = call i32 @get_mode_alignment(i32 %66)
  %div150 = udiv i32 %call149, 8
  store i32 %div150, i32* %align, align 4
  %67 = load i32, i32* @apply_args_size.size, align 4
  %68 = load i32, i32* %align, align 4
  %rem = srem i32 %67, %68
  %cmp151 = icmp ne i32 %rem, 0
  br i1 %cmp151, label %if.then.153, label %if.end.157

if.then.153:                                      ; preds = %if.end.148
  %69 = load i32, i32* @apply_args_size.size, align 4
  %70 = load i32, i32* %align, align 4
  %add154 = add nsw i32 %69, %70
  %sub155 = sub nsw i32 %add154, 1
  %71 = load i32, i32* %align, align 4
  %div156 = sdiv i32 %sub155, %71
  %72 = load i32, i32* %align, align 4
  %mul = mul nsw i32 %div156, %72
  store i32 %mul, i32* @apply_args_size.size, align 4
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.153, %if.end.148
  %73 = load i32, i32* @apply_args_size.size, align 4
  %74 = load i32, i32* %regno, align 4
  %idxprom158 = zext i32 %74 to i64
  %arrayidx159 = getelementptr inbounds [53 x i32], [53 x i32]* @apply_args_reg_offset, i32 0, i64 %idxprom158
  store i32 %73, i32* %arrayidx159, align 4
  %75 = load i32, i32* %mode, align 4
  %idxprom160 = sext i32 %75 to i64
  %arrayidx161 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom160
  %76 = load i8, i8* %arrayidx161, align 1
  %conv162 = zext i8 %76 to i32
  %77 = load i32, i32* @apply_args_size.size, align 4
  %add163 = add nsw i32 %77, %conv162
  store i32 %add163, i32* @apply_args_size.size, align 4
  %78 = load i32, i32* %mode, align 4
  %79 = load i32, i32* %regno, align 4
  %idxprom164 = zext i32 %79 to i64
  %arrayidx165 = getelementptr inbounds [53 x i32], [53 x i32]* @apply_args_mode, i32 0, i64 %idxprom164
  store i32 %78, i32* %arrayidx165, align 4
  br label %if.end.170

if.else:                                          ; preds = %for.body
  %80 = load i32, i32* %regno, align 4
  %idxprom166 = zext i32 %80 to i64
  %arrayidx167 = getelementptr inbounds [53 x i32], [53 x i32]* @apply_args_mode, i32 0, i64 %idxprom166
  store i32 0, i32* %arrayidx167, align 4
  %81 = load i32, i32* %regno, align 4
  %idxprom168 = zext i32 %81 to i64
  %arrayidx169 = getelementptr inbounds [53 x i32], [53 x i32]* @apply_args_reg_offset, i32 0, i64 %idxprom168
  store i32 0, i32* %arrayidx169, align 4
  br label %if.end.170

if.end.170:                                       ; preds = %if.else, %if.end.157
  br label %for.inc.171

for.inc.171:                                      ; preds = %if.end.170
  %82 = load i32, i32* %regno, align 4
  %inc = add i32 %82, 1
  store i32 %inc, i32* %regno, align 4
  br label %for.cond

for.end.172:                                      ; preds = %for.cond
  br label %if.end.173

if.end.173:                                       ; preds = %for.end.172, %entry
  %83 = load i32, i32* @apply_args_size.size, align 4
  ret i32 %83
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @expand_builtin_saveregs() #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %val = alloca %struct.rtx_def*, align 8
  %seq = alloca %struct.rtx_def*, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %expr = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 2
  %1 = load %struct.expr_status*, %struct.expr_status** %expr, align 8
  %x_saveregs_value = getelementptr inbounds %struct.expr_status, %struct.expr_status* %1, i32 0, i32 3
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x_saveregs_value, align 8
  %cmp = icmp ne %struct.rtx_def* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.function*, %struct.function** @cfun, align 8
  %expr1 = getelementptr inbounds %struct.function, %struct.function* %3, i32 0, i32 2
  %4 = load %struct.expr_status*, %struct.expr_status** %expr1, align 8
  %x_saveregs_value2 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %4, i32 0, i32 3
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x_saveregs_value2, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  call void @start_sequence()
  call void (i8*, ...) @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.101, i32 0, i32 0))
  %6 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %val, align 8
  %call = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call, %struct.rtx_def** %seq, align 8
  call void @end_sequence()
  %7 = load %struct.rtx_def*, %struct.rtx_def** %val, align 8
  %8 = load %struct.function*, %struct.function** @cfun, align 8
  %expr3 = getelementptr inbounds %struct.function, %struct.function* %8, i32 0, i32 2
  %9 = load %struct.expr_status*, %struct.expr_status** %expr3, align 8
  %x_saveregs_value4 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %9, i32 0, i32 3
  store %struct.rtx_def* %7, %struct.rtx_def** %x_saveregs_value4, align 8
  call void @push_topmost_sequence()
  %10 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %call5 = call %struct.rtx_def* @get_insns()
  %call6 = call %struct.rtx_def* @emit_insns_after(%struct.rtx_def* %10, %struct.rtx_def* %call5)
  call void @pop_topmost_sequence()
  %11 = load %struct.rtx_def*, %struct.rtx_def** %val, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %12
}

declare void @start_sequence() #1

declare void @error(i8*, ...) #1

declare %struct.rtx_def* @get_insns() #1

declare void @end_sequence() #1

declare void @push_topmost_sequence() #1

declare %struct.rtx_def* @emit_insns_after(%struct.rtx_def*, %struct.rtx_def*) #1

declare void @pop_topmost_sequence() #1

; Function Attrs: nounwind uwtable
define void @std_expand_builtin_va_start(i32 %stdarg_p, %union.tree_node* %valist, %struct.rtx_def* %nextarg) #0 {
entry:
  %stdarg_p.addr = alloca i32, align 4
  %valist.addr = alloca %union.tree_node*, align 8
  %nextarg.addr = alloca %struct.rtx_def*, align 8
  %t = alloca %union.tree_node*, align 8
  %align = alloca i32, align 4
  %size = alloca i32, align 4
  %offset = alloca i32, align 4
  store i32 %stdarg_p, i32* %stdarg_p.addr, align 4
  store %union.tree_node* %valist, %union.tree_node** %valist.addr, align 8
  store %struct.rtx_def* %nextarg, %struct.rtx_def** %nextarg.addr, align 8
  %0 = load i32, i32* %stdarg_p.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @target_flags, align 4
  %and = and i32 %1, 33554432
  %tobool1 = icmp ne i32 %and, 0
  %cond = select i1 %tobool1, i32 64, i32 32
  %div = sdiv i32 %cond, 8
  store i32 %div, i32* %align, align 4
  %2 = load i32, i32* @target_flags, align 4
  %and2 = and i32 %2, 33554432
  %tobool3 = icmp ne i32 %and2, 0
  %cond4 = select i1 %tobool3, i32 8, i32 4
  %3 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  %type = bitcast %union.tree_node* %3 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type, i32 0, i32 6
  %bf.load = load i32, i32* %mode, align 4
  %bf.lshr = lshr i32 %bf.load, 9
  %bf.clear = and i32 %bf.lshr, 127
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %cmp = icmp sgt i32 %cond4, %conv
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %5 = load i32, i32* @target_flags, align 4
  %and6 = and i32 %5, 33554432
  %tobool7 = icmp ne i32 %and6, 0
  %cond8 = select i1 %tobool7, i32 8, i32 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %6 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  %type9 = bitcast %union.tree_node* %6 to %struct.tree_type*
  %mode10 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type9, i32 0, i32 6
  %bf.load11 = load i32, i32* %mode10, align 4
  %bf.lshr12 = lshr i32 %bf.load11, 9
  %bf.clear13 = and i32 %bf.lshr12, 127
  %idxprom14 = sext i32 %bf.clear13 to i64
  %arrayidx15 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom14
  %7 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %7 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond17 = phi i32 [ %cond8, %cond.true ], [ %conv16, %cond.false ]
  store i32 %cond17, i32* %size, align 4
  %8 = load i32, i32* %size, align 4
  %9 = load i32, i32* %align, align 4
  %add = add nsw i32 %8, %9
  %sub = sub nsw i32 %add, 1
  %10 = load i32, i32* %align, align 4
  %div18 = sdiv i32 %sub, %10
  %11 = load i32, i32* %align, align 4
  %mul = mul nsw i32 %div18, %11
  store i32 %mul, i32* %offset, align 4
  %12 = load %struct.rtx_def*, %struct.rtx_def** %nextarg.addr, align 8
  %13 = load i32, i32* %offset, align 4
  %sub19 = sub nsw i32 0, %13
  %conv20 = sext i32 %sub19 to i64
  %call = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %12, i64 %conv20)
  store %struct.rtx_def* %call, %struct.rtx_def** %nextarg.addr, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %14 = load %union.tree_node*, %union.tree_node** %valist.addr, align 8
  %common = bitcast %union.tree_node* %14 to %struct.tree_common*
  %type21 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %15 = load %union.tree_node*, %union.tree_node** %type21, align 8
  %16 = load %union.tree_node*, %union.tree_node** %valist.addr, align 8
  %17 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 28), align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %nextarg.addr, align 8
  %call22 = call %union.tree_node* @make_tree(%union.tree_node* %17, %struct.rtx_def* %18)
  %call23 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 48, %union.tree_node* %15, %union.tree_node* %16, %union.tree_node* %call22)
  store %union.tree_node* %call23, %union.tree_node** %t, align 8
  %19 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common24 = bitcast %union.tree_node* %19 to %struct.tree_common*
  %side_effects_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common24, i32 0, i32 2
  %bf.load25 = load i32, i32* %side_effects_flag, align 8
  %bf.clear26 = and i32 %bf.load25, -257
  %bf.set = or i32 %bf.clear26, 256
  store i32 %bf.set, i32* %side_effects_flag, align 8
  %20 = load %union.tree_node*, %union.tree_node** %t, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call27 = call %struct.rtx_def* @expand_expr(%union.tree_node* %20, %struct.rtx_def* %21, i32 0, i32 0)
  ret void
}

declare %union.tree_node* @build(i32, %union.tree_node*, ...) #1

declare %union.tree_node* @make_tree(%union.tree_node*, %struct.rtx_def*) #1

declare %struct.rtx_def* @expand_expr(%union.tree_node*, %struct.rtx_def*, i32, i32) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @std_expand_builtin_va_arg(%union.tree_node* %valist, %union.tree_node* %type) #0 {
entry:
  %valist.addr = alloca %union.tree_node*, align 8
  %type.addr = alloca %union.tree_node*, align 8
  %addr_tree = alloca %union.tree_node*, align 8
  %t = alloca %union.tree_node*, align 8
  %type_size = alloca %union.tree_node*, align 8
  %align = alloca %union.tree_node*, align 8
  %alignm1 = alloca %union.tree_node*, align 8
  %rounded_size = alloca %union.tree_node*, align 8
  %addr = alloca %struct.rtx_def*, align 8
  store %union.tree_node* %valist, %union.tree_node** %valist.addr, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  store %union.tree_node* null, %union.tree_node** %type_size, align 8
  %0 = load i32, i32* @target_flags, align 4
  %and = and i32 %0, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 64, i32 32
  %div = sdiv i32 %cond, 8
  %conv = sext i32 %div to i64
  %call = call %union.tree_node* @size_int_wide(i64 %conv, i32 0)
  store %union.tree_node* %call, %union.tree_node** %align, align 8
  %1 = load i32, i32* @target_flags, align 4
  %and1 = and i32 %1, 33554432
  %tobool2 = icmp ne i32 %and1, 0
  %cond3 = select i1 %tobool2, i32 64, i32 32
  %div4 = sdiv i32 %cond3, 8
  %sub = sub nsw i32 %div4, 1
  %conv5 = sext i32 %sub to i64
  %call6 = call %union.tree_node* @size_int_wide(i64 %conv5, i32 0)
  store %union.tree_node* %call6, %union.tree_node** %alignm1, align 8
  %2 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %3 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp = icmp eq %union.tree_node* %2, %3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type8 = bitcast %union.tree_node* %4 to %struct.tree_type*
  %main_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type8, i32 0, i32 15
  %5 = load %union.tree_node*, %union.tree_node** %main_variant, align 8
  %type9 = bitcast %union.tree_node* %5 to %struct.tree_type*
  %size_unit = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type9, i32 0, i32 3
  %6 = load %union.tree_node*, %union.tree_node** %size_unit, align 8
  store %union.tree_node* %6, %union.tree_node** %type_size, align 8
  %cmp10 = icmp eq %union.tree_node* %6, null
  br i1 %cmp10, label %if.then, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false
  %7 = load %union.tree_node*, %union.tree_node** %type_size, align 8
  %common = bitcast %union.tree_node* %7 to %struct.tree_common*
  %public_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %public_flag, align 8
  %bf.lshr = lshr i32 %bf.load, 19
  %bf.clear = and i32 %bf.lshr, 1
  %tobool13 = icmp ne i32 %bf.clear, 0
  br i1 %tobool13, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.12, %lor.lhs.false, %entry
  %8 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 15), align 8
  store %union.tree_node* %8, %union.tree_node** %rounded_size, align 8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.12
  %9 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  %10 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  %11 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  %12 = load %union.tree_node*, %union.tree_node** %type_size, align 8
  %13 = load %union.tree_node*, %union.tree_node** %alignm1, align 8
  %call14 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 59, %union.tree_node* %11, %union.tree_node* %12, %union.tree_node* %13)
  %call15 = call %union.tree_node* @fold(%union.tree_node* %call14)
  %14 = load %union.tree_node*, %union.tree_node** %align, align 8
  %call16 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 62, %union.tree_node* %10, %union.tree_node* %call15, %union.tree_node* %14)
  %call17 = call %union.tree_node* @fold(%union.tree_node* %call16)
  %15 = load %union.tree_node*, %union.tree_node** %align, align 8
  %call18 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 61, %union.tree_node* %9, %union.tree_node* %call17, %union.tree_node* %15)
  %call19 = call %union.tree_node* @fold(%union.tree_node* %call18)
  store %union.tree_node* %call19, %union.tree_node** %rounded_size, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load %union.tree_node*, %union.tree_node** %valist.addr, align 8
  store %union.tree_node* %16, %union.tree_node** %addr_tree, align 8
  %17 = load %union.tree_node*, %union.tree_node** %addr_tree, align 8
  %18 = load i32, i32* @target_flags, align 4
  %and20 = and i32 %18, 33554432
  %tobool21 = icmp ne i32 %and20, 0
  %cond22 = select i1 %tobool21, i32 5, i32 4
  %call23 = call %struct.rtx_def* @expand_expr(%union.tree_node* %17, %struct.rtx_def* null, i32 %cond22, i32 0)
  store %struct.rtx_def* %call23, %struct.rtx_def** %addr, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %call24 = call %struct.rtx_def* @copy_to_reg(%struct.rtx_def* %19)
  store %struct.rtx_def* %call24, %struct.rtx_def** %addr, align 8
  %20 = load %union.tree_node*, %union.tree_node** %rounded_size, align 8
  %call25 = call i32 @integer_zerop(%union.tree_node* %20)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end.38, label %if.then.27

if.then.27:                                       ; preds = %if.end
  %21 = load %union.tree_node*, %union.tree_node** %valist.addr, align 8
  %common28 = bitcast %union.tree_node* %21 to %struct.tree_common*
  %type29 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common28, i32 0, i32 1
  %22 = load %union.tree_node*, %union.tree_node** %type29, align 8
  %23 = load %union.tree_node*, %union.tree_node** %valist.addr, align 8
  %24 = load %union.tree_node*, %union.tree_node** %valist.addr, align 8
  %common30 = bitcast %union.tree_node* %24 to %struct.tree_common*
  %type31 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common30, i32 0, i32 1
  %25 = load %union.tree_node*, %union.tree_node** %type31, align 8
  %26 = load %union.tree_node*, %union.tree_node** %valist.addr, align 8
  %27 = load %union.tree_node*, %union.tree_node** %rounded_size, align 8
  %call32 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 59, %union.tree_node* %25, %union.tree_node* %26, %union.tree_node* %27)
  %call33 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 48, %union.tree_node* %22, %union.tree_node* %23, %union.tree_node* %call32)
  store %union.tree_node* %call33, %union.tree_node** %t, align 8
  %28 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common34 = bitcast %union.tree_node* %28 to %struct.tree_common*
  %side_effects_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common34, i32 0, i32 2
  %bf.load35 = load i32, i32* %side_effects_flag, align 8
  %bf.clear36 = and i32 %bf.load35, -257
  %bf.set = or i32 %bf.clear36, 256
  store i32 %bf.set, i32* %side_effects_flag, align 8
  %29 = load %union.tree_node*, %union.tree_node** %t, align 8
  %30 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call37 = call %struct.rtx_def* @expand_expr(%union.tree_node* %29, %struct.rtx_def* %30, i32 0, i32 0)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.27, %if.end
  %31 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  ret %struct.rtx_def* %31
}

declare %union.tree_node* @size_int_wide(i64, i32) #1

declare %union.tree_node* @fold(%union.tree_node*) #1

declare i32 @integer_zerop(%union.tree_node*) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @expand_builtin_va_arg(%union.tree_node* %valist, %union.tree_node* %type) #0 {
entry:
  %valist.addr = alloca %union.tree_node*, align 8
  %type.addr = alloca %union.tree_node*, align 8
  %addr = alloca %struct.rtx_def*, align 8
  %result = alloca %struct.rtx_def*, align 8
  %promoted_type = alloca %union.tree_node*, align 8
  %want_va_type = alloca %union.tree_node*, align 8
  %have_va_type = alloca %union.tree_node*, align 8
  %name = alloca i8*, align 8
  %pname = alloca i8*, align 8
  store %union.tree_node* %valist, %union.tree_node** %valist.addr, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 31), align 8
  store %union.tree_node* %0, %union.tree_node** %want_va_type, align 8
  %1 = load %union.tree_node*, %union.tree_node** %valist.addr, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %type1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %2 = load %union.tree_node*, %union.tree_node** %type1, align 8
  store %union.tree_node* %2, %union.tree_node** %have_va_type, align 8
  %3 = load %union.tree_node*, %union.tree_node** %want_va_type, align 8
  %common2 = bitcast %union.tree_node* %3 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 18
  br i1 %cmp, label %if.then, label %if.end.18

if.then:                                          ; preds = %entry
  %4 = load %union.tree_node*, %union.tree_node** %have_va_type, align 8
  %common3 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %code4 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3, i32 0, i32 2
  %bf.load5 = load i32, i32* %code4, align 8
  %bf.clear6 = and i32 %bf.load5, 255
  %cmp7 = icmp eq i32 %bf.clear6, 18
  br i1 %cmp7, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %5 = load %union.tree_node*, %union.tree_node** %have_va_type, align 8
  %common8 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %code9 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common8, i32 0, i32 2
  %bf.load10 = load i32, i32* %code9, align 8
  %bf.clear11 = and i32 %bf.load10, 255
  %cmp12 = icmp eq i32 %bf.clear11, 13
  br i1 %cmp12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %lor.lhs.false, %if.then
  %6 = load %union.tree_node*, %union.tree_node** %want_va_type, align 8
  %common14 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %type15 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common14, i32 0, i32 1
  %7 = load %union.tree_node*, %union.tree_node** %type15, align 8
  store %union.tree_node* %7, %union.tree_node** %want_va_type, align 8
  %8 = load %union.tree_node*, %union.tree_node** %have_va_type, align 8
  %common16 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %type17 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common16, i32 0, i32 1
  %9 = load %union.tree_node*, %union.tree_node** %type17, align 8
  store %union.tree_node* %9, %union.tree_node** %have_va_type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.13, %lor.lhs.false
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %entry
  %10 = load %union.tree_node*, %union.tree_node** %want_va_type, align 8
  %type19 = bitcast %union.tree_node* %10 to %struct.tree_type*
  %main_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type19, i32 0, i32 15
  %11 = load %union.tree_node*, %union.tree_node** %main_variant, align 8
  %12 = load %union.tree_node*, %union.tree_node** %have_va_type, align 8
  %type20 = bitcast %union.tree_node* %12 to %struct.tree_type*
  %main_variant21 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type20, i32 0, i32 15
  %13 = load %union.tree_node*, %union.tree_node** %main_variant21, align 8
  %cmp22 = icmp ne %union.tree_node* %11, %13
  br i1 %cmp22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end.18
  call void (i8*, ...) @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.102, i32 0, i32 0))
  %14 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %14, %struct.rtx_def** %addr, align 8
  br label %if.end.111

if.else:                                          ; preds = %if.end.18
  %15 = load %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)** @lang_type_promotes_to, align 8
  %16 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %call = call %union.tree_node* %15(%union.tree_node* %16)
  store %union.tree_node* %call, %union.tree_node** %promoted_type, align 8
  %cmp24 = icmp ne %union.tree_node* %call, null
  br i1 %cmp24, label %if.then.25, label %if.else.107

if.then.25:                                       ; preds = %if.else
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.103, i32 0, i32 0), i8** %name, align 8
  store i8* null, i8** %pname, align 8
  %17 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type26 = bitcast %union.tree_node* %17 to %struct.tree_type*
  %name27 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type26, i32 0, i32 11
  %18 = load %union.tree_node*, %union.tree_node** %name27, align 8
  %tobool = icmp ne %union.tree_node* %18, null
  br i1 %tobool, label %if.then.28, label %if.end.61

if.then.28:                                       ; preds = %if.then.25
  %19 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type29 = bitcast %union.tree_node* %19 to %struct.tree_type*
  %name30 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type29, i32 0, i32 11
  %20 = load %union.tree_node*, %union.tree_node** %name30, align 8
  %common31 = bitcast %union.tree_node* %20 to %struct.tree_common*
  %code32 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common31, i32 0, i32 2
  %bf.load33 = load i32, i32* %code32, align 8
  %bf.clear34 = and i32 %bf.load33, 255
  %cmp35 = icmp eq i32 %bf.clear34, 1
  br i1 %cmp35, label %if.then.36, label %if.else.39

if.then.36:                                       ; preds = %if.then.28
  %21 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type37 = bitcast %union.tree_node* %21 to %struct.tree_type*
  %name38 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type37, i32 0, i32 11
  %22 = load %union.tree_node*, %union.tree_node** %name38, align 8
  %identifier = bitcast %union.tree_node* %22 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %23 = load i8*, i8** %str, align 8
  store i8* %23, i8** %name, align 8
  br label %if.end.60

if.else.39:                                       ; preds = %if.then.28
  %24 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type40 = bitcast %union.tree_node* %24 to %struct.tree_type*
  %name41 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type40, i32 0, i32 11
  %25 = load %union.tree_node*, %union.tree_node** %name41, align 8
  %common42 = bitcast %union.tree_node* %25 to %struct.tree_common*
  %code43 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common42, i32 0, i32 2
  %bf.load44 = load i32, i32* %code43, align 8
  %bf.clear45 = and i32 %bf.load44, 255
  %cmp46 = icmp eq i32 %bf.clear45, 33
  br i1 %cmp46, label %land.lhs.true, label %if.end.59

land.lhs.true:                                    ; preds = %if.else.39
  %26 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type47 = bitcast %union.tree_node* %26 to %struct.tree_type*
  %name48 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type47, i32 0, i32 11
  %27 = load %union.tree_node*, %union.tree_node** %name48, align 8
  %decl = bitcast %union.tree_node* %27 to %struct.tree_decl*
  %name49 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 8
  %28 = load %union.tree_node*, %union.tree_node** %name49, align 8
  %tobool50 = icmp ne %union.tree_node* %28, null
  br i1 %tobool50, label %if.then.51, label %if.end.59

if.then.51:                                       ; preds = %land.lhs.true
  %29 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type52 = bitcast %union.tree_node* %29 to %struct.tree_type*
  %name53 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type52, i32 0, i32 11
  %30 = load %union.tree_node*, %union.tree_node** %name53, align 8
  %decl54 = bitcast %union.tree_node* %30 to %struct.tree_decl*
  %name55 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl54, i32 0, i32 8
  %31 = load %union.tree_node*, %union.tree_node** %name55, align 8
  %identifier56 = bitcast %union.tree_node* %31 to %struct.tree_identifier*
  %id57 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier56, i32 0, i32 1
  %str58 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id57, i32 0, i32 1
  %32 = load i8*, i8** %str58, align 8
  store i8* %32, i8** %name, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.51, %land.lhs.true, %if.else.39
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.36
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.25
  %33 = load %union.tree_node*, %union.tree_node** %promoted_type, align 8
  %type62 = bitcast %union.tree_node* %33 to %struct.tree_type*
  %name63 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type62, i32 0, i32 11
  %34 = load %union.tree_node*, %union.tree_node** %name63, align 8
  %tobool64 = icmp ne %union.tree_node* %34, null
  br i1 %tobool64, label %if.then.65, label %if.end.103

if.then.65:                                       ; preds = %if.end.61
  %35 = load %union.tree_node*, %union.tree_node** %promoted_type, align 8
  %type66 = bitcast %union.tree_node* %35 to %struct.tree_type*
  %name67 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type66, i32 0, i32 11
  %36 = load %union.tree_node*, %union.tree_node** %name67, align 8
  %common68 = bitcast %union.tree_node* %36 to %struct.tree_common*
  %code69 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common68, i32 0, i32 2
  %bf.load70 = load i32, i32* %code69, align 8
  %bf.clear71 = and i32 %bf.load70, 255
  %cmp72 = icmp eq i32 %bf.clear71, 1
  br i1 %cmp72, label %if.then.73, label %if.else.79

if.then.73:                                       ; preds = %if.then.65
  %37 = load %union.tree_node*, %union.tree_node** %promoted_type, align 8
  %type74 = bitcast %union.tree_node* %37 to %struct.tree_type*
  %name75 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type74, i32 0, i32 11
  %38 = load %union.tree_node*, %union.tree_node** %name75, align 8
  %identifier76 = bitcast %union.tree_node* %38 to %struct.tree_identifier*
  %id77 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier76, i32 0, i32 1
  %str78 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id77, i32 0, i32 1
  %39 = load i8*, i8** %str78, align 8
  store i8* %39, i8** %pname, align 8
  br label %if.end.102

if.else.79:                                       ; preds = %if.then.65
  %40 = load %union.tree_node*, %union.tree_node** %promoted_type, align 8
  %type80 = bitcast %union.tree_node* %40 to %struct.tree_type*
  %name81 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type80, i32 0, i32 11
  %41 = load %union.tree_node*, %union.tree_node** %name81, align 8
  %common82 = bitcast %union.tree_node* %41 to %struct.tree_common*
  %code83 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common82, i32 0, i32 2
  %bf.load84 = load i32, i32* %code83, align 8
  %bf.clear85 = and i32 %bf.load84, 255
  %cmp86 = icmp eq i32 %bf.clear85, 33
  br i1 %cmp86, label %land.lhs.true.87, label %if.end.101

land.lhs.true.87:                                 ; preds = %if.else.79
  %42 = load %union.tree_node*, %union.tree_node** %promoted_type, align 8
  %type88 = bitcast %union.tree_node* %42 to %struct.tree_type*
  %name89 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type88, i32 0, i32 11
  %43 = load %union.tree_node*, %union.tree_node** %name89, align 8
  %decl90 = bitcast %union.tree_node* %43 to %struct.tree_decl*
  %name91 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl90, i32 0, i32 8
  %44 = load %union.tree_node*, %union.tree_node** %name91, align 8
  %tobool92 = icmp ne %union.tree_node* %44, null
  br i1 %tobool92, label %if.then.93, label %if.end.101

if.then.93:                                       ; preds = %land.lhs.true.87
  %45 = load %union.tree_node*, %union.tree_node** %promoted_type, align 8
  %type94 = bitcast %union.tree_node* %45 to %struct.tree_type*
  %name95 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type94, i32 0, i32 11
  %46 = load %union.tree_node*, %union.tree_node** %name95, align 8
  %decl96 = bitcast %union.tree_node* %46 to %struct.tree_decl*
  %name97 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl96, i32 0, i32 8
  %47 = load %union.tree_node*, %union.tree_node** %name97, align 8
  %identifier98 = bitcast %union.tree_node* %47 to %struct.tree_identifier*
  %id99 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier98, i32 0, i32 1
  %str100 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id99, i32 0, i32 1
  %48 = load i8*, i8** %str100, align 8
  store i8* %48, i8** %pname, align 8
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.93, %land.lhs.true.87, %if.else.79
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.then.73
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.end.61
  %49 = load i8*, i8** %name, align 8
  %50 = load i8*, i8** %pname, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.104, i32 0, i32 0), i8* %49, i8* %50)
  %51 = load i8, i8* @expand_builtin_va_arg.gave_help, align 1
  %tobool104 = trunc i8 %51 to i1
  br i1 %tobool104, label %if.end.106, label %if.then.105

if.then.105:                                      ; preds = %if.end.103
  store i8 1, i8* @expand_builtin_va_arg.gave_help, align 1
  %52 = load i8*, i8** %pname, align 8
  %53 = load i8*, i8** %name, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.105, i32 0, i32 0), i8* %52, i8* %53)
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.105, %if.end.103
  call void @expand_builtin_trap()
  %54 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %54, %struct.rtx_def** %addr, align 8
  br label %if.end.110

if.else.107:                                      ; preds = %if.else
  %55 = load %union.tree_node*, %union.tree_node** %valist.addr, align 8
  %call108 = call %union.tree_node* @stabilize_va_list(%union.tree_node* %55, i32 0)
  store %union.tree_node* %call108, %union.tree_node** %valist.addr, align 8
  %56 = load %union.tree_node*, %union.tree_node** %valist.addr, align 8
  %57 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %call109 = call %struct.rtx_def* @ix86_va_arg(%union.tree_node* %56, %union.tree_node* %57)
  store %struct.rtx_def* %call109, %struct.rtx_def** %addr, align 8
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.107, %if.end.106
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %if.then.23
  %58 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type112 = bitcast %union.tree_node* %58 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type112, i32 0, i32 6
  %bf.load113 = load i32, i32* %mode, align 4
  %bf.lshr = lshr i32 %bf.load113, 9
  %bf.clear114 = and i32 %bf.lshr, 127
  %59 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %call115 = call %struct.rtx_def* @gen_rtx_MEM(i32 %bf.clear114, %struct.rtx_def* %59)
  store %struct.rtx_def* %call115, %struct.rtx_def** %result, align 8
  %60 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %call116 = call i64 @get_varargs_alias_set()
  call void @set_mem_alias_set(%struct.rtx_def* %60, i64 %call116)
  %61 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  ret %struct.rtx_def* %61
}

declare void @warning(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @expand_builtin_trap() #0 {
entry:
  %call = call %struct.rtx_def* @gen_trap()
  %call1 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call)
  %call2 = call %struct.rtx_def* @emit_barrier()
  ret void
}

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @stabilize_va_list(%union.tree_node* %valist, i32 %needs_lvalue) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %valist.addr = alloca %union.tree_node*, align 8
  %needs_lvalue.addr = alloca i32, align 4
  %p1 = alloca %union.tree_node*, align 8
  %p2 = alloca %union.tree_node*, align 8
  %pt = alloca %union.tree_node*, align 8
  store %union.tree_node* %valist, %union.tree_node** %valist.addr, align 8
  store i32 %needs_lvalue, i32* %needs_lvalue.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 31), align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 18
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %valist.addr, align 8
  %common1 = bitcast %union.tree_node* %1 to %struct.tree_common*
  %side_effects_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load2 = load i32, i32* %side_effects_flag, align 8
  %bf.lshr = lshr i32 %bf.load2, 8
  %bf.clear3 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear3, 0
  br i1 %tobool, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %2 = load %union.tree_node*, %union.tree_node** %valist.addr, align 8
  %call = call %union.tree_node* @save_expr(%union.tree_node* %2)
  store %union.tree_node* %call, %union.tree_node** %valist.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %3 = load %union.tree_node*, %union.tree_node** %valist.addr, align 8
  %common5 = bitcast %union.tree_node* %3 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common5, i32 0, i32 1
  %4 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common6 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %code7 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common6, i32 0, i32 2
  %bf.load8 = load i32, i32* %code7, align 8
  %bf.clear9 = and i32 %bf.load8, 255
  %cmp10 = icmp eq i32 %bf.clear9, 18
  br i1 %cmp10, label %if.then.11, label %if.end.19

if.then.11:                                       ; preds = %if.end
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 31), align 8
  %common12 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %type13 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common12, i32 0, i32 1
  %6 = load %union.tree_node*, %union.tree_node** %type13, align 8
  %call14 = call %union.tree_node* @build_pointer_type(%union.tree_node* %6)
  store %union.tree_node* %call14, %union.tree_node** %p1, align 8
  %7 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 31), align 8
  %call15 = call %union.tree_node* @build_pointer_type(%union.tree_node* %7)
  store %union.tree_node* %call15, %union.tree_node** %p2, align 8
  %8 = load %union.tree_node*, %union.tree_node** %p2, align 8
  %9 = load %union.tree_node*, %union.tree_node** %valist.addr, align 8
  %call16 = call %union.tree_node* @build1(i32 121, %union.tree_node* %8, %union.tree_node* %9)
  store %union.tree_node* %call16, %union.tree_node** %valist.addr, align 8
  %10 = load %union.tree_node*, %union.tree_node** %p1, align 8
  %11 = load %union.tree_node*, %union.tree_node** %valist.addr, align 8
  %call17 = call %union.tree_node* @build1(i32 115, %union.tree_node* %10, %union.tree_node* %11)
  %call18 = call %union.tree_node* @fold(%union.tree_node* %call17)
  store %union.tree_node* %call18, %union.tree_node** %valist.addr, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.11, %if.end
  br label %if.end.53

if.else:                                          ; preds = %entry
  %12 = load i32, i32* %needs_lvalue.addr, align 4
  %tobool20 = icmp ne i32 %12, 0
  br i1 %tobool20, label %if.end.37, label %if.then.21

if.then.21:                                       ; preds = %if.else
  %13 = load %union.tree_node*, %union.tree_node** %valist.addr, align 8
  %common22 = bitcast %union.tree_node* %13 to %struct.tree_common*
  %side_effects_flag23 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common22, i32 0, i32 2
  %bf.load24 = load i32, i32* %side_effects_flag23, align 8
  %bf.lshr25 = lshr i32 %bf.load24, 8
  %bf.clear26 = and i32 %bf.lshr25, 1
  %tobool27 = icmp ne i32 %bf.clear26, 0
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %if.then.21
  %14 = load %union.tree_node*, %union.tree_node** %valist.addr, align 8
  store %union.tree_node* %14, %union.tree_node** %retval
  br label %return

if.end.29:                                        ; preds = %if.then.21
  %15 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 31), align 8
  %call30 = call %union.tree_node* @build_pointer_type(%union.tree_node* %15)
  store %union.tree_node* %call30, %union.tree_node** %pt, align 8
  %16 = load %union.tree_node*, %union.tree_node** %pt, align 8
  %17 = load %union.tree_node*, %union.tree_node** %valist.addr, align 8
  %call31 = call %union.tree_node* @build1(i32 121, %union.tree_node* %16, %union.tree_node* %17)
  %call32 = call %union.tree_node* @fold(%union.tree_node* %call31)
  store %union.tree_node* %call32, %union.tree_node** %valist.addr, align 8
  %18 = load %union.tree_node*, %union.tree_node** %valist.addr, align 8
  %common33 = bitcast %union.tree_node* %18 to %struct.tree_common*
  %side_effects_flag34 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common33, i32 0, i32 2
  %bf.load35 = load i32, i32* %side_effects_flag34, align 8
  %bf.clear36 = and i32 %bf.load35, -257
  %bf.set = or i32 %bf.clear36, 256
  store i32 %bf.set, i32* %side_effects_flag34, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.29, %if.else
  %19 = load %union.tree_node*, %union.tree_node** %valist.addr, align 8
  %common38 = bitcast %union.tree_node* %19 to %struct.tree_common*
  %side_effects_flag39 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common38, i32 0, i32 2
  %bf.load40 = load i32, i32* %side_effects_flag39, align 8
  %bf.lshr41 = lshr i32 %bf.load40, 8
  %bf.clear42 = and i32 %bf.lshr41, 1
  %tobool43 = icmp ne i32 %bf.clear42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.end.37
  %20 = load %union.tree_node*, %union.tree_node** %valist.addr, align 8
  %call45 = call %union.tree_node* @save_expr(%union.tree_node* %20)
  store %union.tree_node* %call45, %union.tree_node** %valist.addr, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.end.37
  %21 = load %union.tree_node*, %union.tree_node** %valist.addr, align 8
  %common47 = bitcast %union.tree_node* %21 to %struct.tree_common*
  %type48 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common47, i32 0, i32 1
  %22 = load %union.tree_node*, %union.tree_node** %type48, align 8
  %common49 = bitcast %union.tree_node* %22 to %struct.tree_common*
  %type50 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common49, i32 0, i32 1
  %23 = load %union.tree_node*, %union.tree_node** %type50, align 8
  %24 = load %union.tree_node*, %union.tree_node** %valist.addr, align 8
  %call51 = call %union.tree_node* @build1(i32 41, %union.tree_node* %23, %union.tree_node* %24)
  %call52 = call %union.tree_node* @fold(%union.tree_node* %call51)
  store %union.tree_node* %call52, %union.tree_node** %valist.addr, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.46, %if.end.19
  %25 = load %union.tree_node*, %union.tree_node** %valist.addr, align 8
  store %union.tree_node* %25, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %if.end.53, %if.then.28
  %26 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %26
}

declare %struct.rtx_def* @ix86_va_arg(%union.tree_node*, %union.tree_node*) #1

declare i64 @get_varargs_alias_set() #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @expand_builtin_expect_jump(%union.tree_node* %exp, %struct.rtx_def* %if_false_label, %struct.rtx_def* %if_true_label) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %exp.addr = alloca %union.tree_node*, align 8
  %if_false_label.addr = alloca %struct.rtx_def*, align 8
  %if_true_label.addr = alloca %struct.rtx_def*, align 8
  %arglist = alloca %union.tree_node*, align 8
  %arg0 = alloca %union.tree_node*, align 8
  %arg1 = alloca %union.tree_node*, align 8
  %ret = alloca %struct.rtx_def*, align 8
  %j = alloca i32, align 4
  %num_jumps = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  %pattern = alloca %struct.rtx_def*, align 8
  %ifelse = alloca %struct.rtx_def*, align 8
  %label = alloca %struct.rtx_def*, align 8
  %taken = alloca i32, align 4
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  store %struct.rtx_def* %if_false_label, %struct.rtx_def** %if_false_label.addr, align 8
  store %struct.rtx_def* %if_true_label, %struct.rtx_def** %if_true_label.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp1 = bitcast %union.tree_node* %0 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp1, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 1
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %1, %union.tree_node** %arglist, align 8
  %2 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %list = bitcast %union.tree_node* %2 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %3 = load %union.tree_node*, %union.tree_node** %value, align 8
  store %union.tree_node* %3, %union.tree_node** %arg0, align 8
  %4 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %common = bitcast %union.tree_node* %4 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %5 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %list2 = bitcast %union.tree_node* %5 to %struct.tree_list*
  %value3 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list2, i32 0, i32 2
  %6 = load %union.tree_node*, %union.tree_node** %value3, align 8
  store %union.tree_node* %6, %union.tree_node** %arg1, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %ret, align 8
  %7 = load %union.tree_node*, %union.tree_node** %arg1, align 8
  %common4 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4, i32 0, i32 1
  %8 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common5 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common5, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 6
  br i1 %cmp, label %land.lhs.true, label %if.end.103

land.lhs.true:                                    ; preds = %entry
  %9 = load %union.tree_node*, %union.tree_node** %arg1, align 8
  %call = call i32 @integer_zerop(%union.tree_node* %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %10 = load %union.tree_node*, %union.tree_node** %arg1, align 8
  %call6 = call i32 @integer_onep(%union.tree_node* %10)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %if.end.103

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  store i32 0, i32* %num_jumps, align 4
  %11 = load %union.tree_node*, %union.tree_node** %arg0, align 8
  %call8 = call i32 @unsafe_for_reeval(%union.tree_node* %11)
  switch i32 %call8, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.9
    i32 2, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %if.then
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.then
  %12 = load %union.tree_node*, %union.tree_node** %arg0, align 8
  %call10 = call %union.tree_node* @unsave_expr(%union.tree_node* %12)
  store %union.tree_node* %call10, %union.tree_node** %arg0, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.then
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

sw.epilog:                                        ; preds = %if.then, %sw.bb.9, %sw.bb
  call void @start_sequence()
  %13 = load %union.tree_node*, %union.tree_node** %arg0, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %if_false_label.addr, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %if_true_label.addr, align 8
  call void @do_jump(%union.tree_node* %13, %struct.rtx_def* %14, %struct.rtx_def* %15)
  %call12 = call %struct.rtx_def* @gen_sequence()
  store %struct.rtx_def* %call12, %struct.rtx_def** %ret, align 8
  call void @end_sequence()
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %16 = load i32, i32* %j, align 4
  %17 = load %struct.rtx_def*, %struct.rtx_def** %ret, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtvec_def**
  %18 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %18, i32 0, i32 0
  %19 = load i32, i32* %num_elem, align 4
  %cmp14 = icmp slt i32 %16, %19
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %j, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load %struct.rtx_def*, %struct.rtx_def** %ret, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 0
  %rtvec17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtvec_def**
  %22 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec17, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %22, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %23 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx18, align 8
  store %struct.rtx_def* %23, %struct.rtx_def** %insn, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load19 = load i32, i32* %25, align 8
  %bf.clear20 = and i32 %bf.load19, 65535
  %cmp21 = icmp eq i32 %bf.clear20, 33
  br i1 %cmp21, label %land.lhs.true.22, label %if.end.98

land.lhs.true.22:                                 ; preds = %for.body
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call23 = call i32 @any_condjump_p(%struct.rtx_def* %26)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %land.lhs.true.25, label %if.end.98

land.lhs.true.25:                                 ; preds = %land.lhs.true.22
  %27 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call26 = call %struct.rtx_def* @pc_set(%struct.rtx_def* %27)
  store %struct.rtx_def* %call26, %struct.rtx_def** %pattern, align 8
  %cmp27 = icmp ne %struct.rtx_def* %call26, null
  br i1 %cmp27, label %if.then.28, label %if.end.98

if.then.28:                                       ; preds = %land.lhs.true.25
  %28 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %29, %struct.rtx_def** %ifelse, align 8
  %30 = load %struct.rtx_def*, %struct.rtx_def** %ifelse, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load31 = load i32, i32* %31, align 8
  %bf.clear32 = and i32 %bf.load31, 65535
  %cmp33 = icmp ne i32 %bf.clear32, 72
  br i1 %cmp33, label %if.then.34, label %if.end

if.then.34:                                       ; preds = %if.then.28
  br label %for.inc

if.end:                                           ; preds = %if.then.28
  %32 = load %struct.rtx_def*, %struct.rtx_def** %ifelse, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 1
  %rtx37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx37, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load38 = load i32, i32* %34, align 8
  %bf.clear39 = and i32 %bf.load38, 65535
  %cmp40 = icmp eq i32 %bf.clear39, 67
  br i1 %cmp40, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %if.end
  store i32 1, i32* %taken, align 4
  %35 = load %struct.rtx_def*, %struct.rtx_def** %ifelse, align 8
  %fld42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld42, i32 0, i64 1
  %rtx44 = bitcast %union.rtunion_def* %arrayidx43 to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtx44, align 8
  %fld45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld45, i32 0, i64 0
  %rtx47 = bitcast %union.rtunion_def* %arrayidx46 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx47, align 8
  store %struct.rtx_def* %37, %struct.rtx_def** %label, align 8
  br label %if.end.81

if.else:                                          ; preds = %if.end
  %38 = load %struct.rtx_def*, %struct.rtx_def** %ifelse, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 2
  %rtx50 = bitcast %union.rtunion_def* %arrayidx49 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx50, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load51 = load i32, i32* %40, align 8
  %bf.clear52 = and i32 %bf.load51, 65535
  %cmp53 = icmp eq i32 %bf.clear52, 67
  br i1 %cmp53, label %if.then.54, label %if.else.61

if.then.54:                                       ; preds = %if.else
  store i32 0, i32* %taken, align 4
  %41 = load %struct.rtx_def*, %struct.rtx_def** %ifelse, align 8
  %fld55 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld55, i32 0, i64 2
  %rtx57 = bitcast %union.rtunion_def* %arrayidx56 to %struct.rtx_def**
  %42 = load %struct.rtx_def*, %struct.rtx_def** %rtx57, align 8
  %fld58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld58, i32 0, i64 0
  %rtx60 = bitcast %union.rtunion_def* %arrayidx59 to %struct.rtx_def**
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rtx60, align 8
  store %struct.rtx_def* %43, %struct.rtx_def** %label, align 8
  br label %if.end.80

if.else.61:                                       ; preds = %if.else
  %44 = load %struct.rtx_def*, %struct.rtx_def** %ifelse, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 1
  %rtx64 = bitcast %union.rtunion_def* %arrayidx63 to %struct.rtx_def**
  %45 = load %struct.rtx_def*, %struct.rtx_def** %rtx64, align 8
  %46 = bitcast %struct.rtx_def* %45 to i32*
  %bf.load65 = load i32, i32* %46, align 8
  %bf.clear66 = and i32 %bf.load65, 65535
  %cmp67 = icmp eq i32 %bf.clear66, 51
  br i1 %cmp67, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %if.else.61
  store i32 1, i32* %taken, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %label, align 8
  br label %if.end.79

if.else.69:                                       ; preds = %if.else.61
  %47 = load %struct.rtx_def*, %struct.rtx_def** %ifelse, align 8
  %fld70 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx71 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld70, i32 0, i64 2
  %rtx72 = bitcast %union.rtunion_def* %arrayidx71 to %struct.rtx_def**
  %48 = load %struct.rtx_def*, %struct.rtx_def** %rtx72, align 8
  %49 = bitcast %struct.rtx_def* %48 to i32*
  %bf.load73 = load i32, i32* %49, align 8
  %bf.clear74 = and i32 %bf.load73, 65535
  %cmp75 = icmp eq i32 %bf.clear74, 51
  br i1 %cmp75, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %if.else.69
  store i32 0, i32* %taken, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %label, align 8
  br label %if.end.78

if.else.77:                                       ; preds = %if.else.69
  br label %for.inc

if.end.78:                                        ; preds = %if.then.76
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.68
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.54
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then.41
  %50 = load %union.tree_node*, %union.tree_node** %arg1, align 8
  %call82 = call i32 @integer_zerop(%union.tree_node* %50)
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.end.81
  %51 = load i32, i32* %taken, align 4
  %sub = sub nsw i32 1, %51
  store i32 %sub, i32* %taken, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %if.end.81
  %52 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %cmp86 = icmp eq %struct.rtx_def* %52, null
  br i1 %cmp86, label %if.then.87, label %if.else.88

if.then.87:                                       ; preds = %if.end.85
  br label %if.end.97

if.else.88:                                       ; preds = %if.end.85
  %53 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %54 = load %struct.rtx_def*, %struct.rtx_def** %if_false_label.addr, align 8
  %cmp89 = icmp eq %struct.rtx_def* %53, %54
  br i1 %cmp89, label %if.then.90, label %if.else.92

if.then.90:                                       ; preds = %if.else.88
  %55 = load i32, i32* %taken, align 4
  %sub91 = sub nsw i32 1, %55
  store i32 %sub91, i32* %taken, align 4
  br label %if.end.96

if.else.92:                                       ; preds = %if.else.88
  %56 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %57 = load %struct.rtx_def*, %struct.rtx_def** %if_true_label.addr, align 8
  %cmp93 = icmp ne %struct.rtx_def* %56, %57
  br i1 %cmp93, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.else.92
  br label %for.inc

if.end.95:                                        ; preds = %if.else.92
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.then.90
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.then.87
  %58 = load i32, i32* %num_jumps, align 4
  %inc = add nsw i32 %58, 1
  store i32 %inc, i32* %num_jumps, align 4
  %59 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %60 = load i32, i32* %taken, align 4
  call void @predict_insn_def(%struct.rtx_def* %59, i32 6, i32 %60)
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %land.lhs.true.25, %land.lhs.true.22, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.98, %if.then.94, %if.else.77, %if.then.34
  %61 = load i32, i32* %j, align 4
  %inc99 = add nsw i32 %61, 1
  store i32 %inc99, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %62 = load i32, i32* %num_jumps, align 4
  %cmp100 = icmp eq i32 %62, 0
  br i1 %cmp100, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %for.end
  store %struct.rtx_def* null, %struct.rtx_def** %ret, align 8
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.101, %for.end
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %lor.lhs.false, %entry
  %63 = load %struct.rtx_def*, %struct.rtx_def** %ret, align 8
  store %struct.rtx_def* %63, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.103, %sw.bb.11
  %64 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %64
}

declare i32 @integer_onep(%union.tree_node*) #1

declare i32 @unsafe_for_reeval(%union.tree_node*) #1

declare %union.tree_node* @unsave_expr(%union.tree_node*) #1

declare void @do_jump(%union.tree_node*, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_sequence() #1

declare i32 @any_condjump_p(%struct.rtx_def*) #1

declare %struct.rtx_def* @pc_set(%struct.rtx_def*) #1

declare void @predict_insn_def(%struct.rtx_def*, i32, i32) #1

declare %struct.rtx_def* @gen_trap() #1

declare %struct.rtx_def* @emit_barrier() #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @expand_builtin(%union.tree_node* %exp, %struct.rtx_def* %target, %struct.rtx_def* %subtarget, i32 %mode, i32 %ignore) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %exp.addr = alloca %union.tree_node*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %subtarget.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %ignore.addr = alloca i32, align 4
  %fndecl = alloca %union.tree_node*, align 8
  %arglist = alloca %union.tree_node*, align 8
  %fcode = alloca i32, align 4
  %i = alloca i32, align 4
  %t = alloca %union.tree_node*, align 8
  %ops = alloca [3 x %struct.rtx_def*], align 16
  %buf_addr = alloca %struct.rtx_def*, align 8
  %value258 = alloca %struct.rtx_def*, align 8
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %subtarget, %struct.rtx_def** %subtarget.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %ignore, i32* %ignore.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp1 = bitcast %union.tree_node* %0 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp1, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %exp2 = bitcast %union.tree_node* %1 to %struct.tree_exp*
  %operands3 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp2, i32 0, i32 2
  %arrayidx4 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands3, i32 0, i64 0
  %2 = load %union.tree_node*, %union.tree_node** %arrayidx4, align 8
  store %union.tree_node* %2, %union.tree_node** %fndecl, align 8
  %3 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp5 = bitcast %union.tree_node* %3 to %struct.tree_exp*
  %operands6 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp5, i32 0, i32 2
  %arrayidx7 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands6, i32 0, i64 1
  %4 = load %union.tree_node*, %union.tree_node** %arrayidx7, align 8
  store %union.tree_node* %4, %union.tree_node** %arglist, align 8
  %5 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %decl = bitcast %union.tree_node* %5 to %struct.tree_decl*
  %u1 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 6
  %f = bitcast %union.anon* %u1 to i32*
  %6 = load i32, i32* %f, align 4
  store i32 %6, i32* %fcode, align 4
  %7 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %decl8 = bitcast %union.tree_node* %7 to %struct.tree_decl*
  %built_in_class = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl8, i32 0, i32 5
  %8 = bitcast i48* %built_in_class to i64*
  %bf.load = load i64, i64* %8, align 8
  %bf.lshr = lshr i64 %bf.load, 29
  %bf.clear = and i64 %bf.lshr, 3
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp = icmp eq i32 %bf.cast, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.rtx_def* (%union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32)*, %struct.rtx_def* (%union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 11), align 8
  %10 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %subtarget.addr, align 8
  %13 = load i32, i32* %mode.addr, align 4
  %14 = load i32, i32* %ignore.addr, align 4
  %call = call %struct.rtx_def* %9(%union.tree_node* %10, %struct.rtx_def* %11, %struct.rtx_def* %12, i32 %13, i32 %14)
  store %struct.rtx_def* %call, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %15 = load i32, i32* @optimize, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.end.14, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %16 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %decl9 = bitcast %union.tree_node* %16 to %struct.tree_decl*
  %name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl9, i32 0, i32 8
  %17 = load %union.tree_node*, %union.tree_node** %name, align 8
  %identifier = bitcast %union.tree_node* %17 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %18 = load i8*, i8** %str, align 8
  %call10 = call i32 @strncmp(i8* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.106, i32 0, i32 0), i64 10) #6
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %land.lhs.true
  %19 = load i32, i32* %fcode, align 4
  switch i32 %19, label %sw.default [
    i32 39, label %sw.bb
    i32 40, label %sw.bb
    i32 38, label %sw.bb
    i32 41, label %sw.bb
    i32 44, label %sw.bb
    i32 24, label %sw.bb
    i32 22, label %sw.bb
    i32 23, label %sw.bb
    i32 18, label %sw.bb
    i32 17, label %sw.bb
    i32 20, label %sw.bb
    i32 21, label %sw.bb
    i32 36, label %sw.bb
    i32 37, label %sw.bb
    i32 31, label %sw.bb
    i32 27, label %sw.bb
    i32 28, label %sw.bb
    i32 30, label %sw.bb
    i32 32, label %sw.bb
    i32 33, label %sw.bb
    i32 25, label %sw.bb
    i32 26, label %sw.bb
    i32 34, label %sw.bb
    i32 35, label %sw.bb
    i32 29, label %sw.bb
    i32 19, label %sw.bb
    i32 62, label %sw.bb
    i32 63, label %sw.bb
    i32 64, label %sw.bb
    i32 65, label %sw.bb
    i32 66, label %sw.bb
    i32 67, label %sw.bb
    i32 69, label %sw.bb
    i32 70, label %sw.bb
    i32 71, label %sw.bb
    i32 72, label %sw.bb
    i32 73, label %sw.bb
    i32 74, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then.12, %if.then.12, %if.then.12, %if.then.12, %if.then.12, %if.then.12, %if.then.12, %if.then.12, %if.then.12, %if.then.12, %if.then.12, %if.then.12, %if.then.12, %if.then.12, %if.then.12, %if.then.12, %if.then.12, %if.then.12, %if.then.12, %if.then.12, %if.then.12, %if.then.12, %if.then.12, %if.then.12, %if.then.12, %if.then.12, %if.then.12, %if.then.12, %if.then.12, %if.then.12, %if.then.12, %if.then.12, %if.then.12, %if.then.12, %if.then.12, %if.then.12, %if.then.12, %if.then.12
  %20 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %22 = load i32, i32* %ignore.addr, align 4
  %call13 = call %struct.rtx_def* @expand_call(%union.tree_node* %20, %struct.rtx_def* %21, i32 %22)
  store %struct.rtx_def* %call13, %struct.rtx_def** %retval
  br label %return

sw.default:                                       ; preds = %if.then.12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  br label %if.end.14

if.end.14:                                        ; preds = %sw.epilog, %land.lhs.true, %if.end
  %23 = load i32, i32* %fcode, align 4
  switch i32 %23, label %sw.default.314 [
    i32 1, label %sw.bb.15
    i32 2, label %sw.bb.15
    i32 6, label %sw.bb.15
    i32 7, label %sw.bb.15
    i32 3, label %sw.bb.15
    i32 4, label %sw.bb.15
    i32 5, label %sw.bb.15
    i32 8, label %sw.bb.16
    i32 9, label %sw.bb.16
    i32 10, label %sw.bb.16
    i32 11, label %sw.bb.16
    i32 12, label %sw.bb.16
    i32 13, label %sw.bb.16
    i32 14, label %sw.bb.16
    i32 15, label %sw.bb.16
    i32 16, label %sw.bb.16
    i32 39, label %sw.bb.17
    i32 42, label %sw.bb.17
    i32 45, label %sw.bb.17
    i32 40, label %sw.bb.17
    i32 43, label %sw.bb.17
    i32 46, label %sw.bb.17
    i32 38, label %sw.bb.21
    i32 41, label %sw.bb.21
    i32 44, label %sw.bb.21
    i32 55, label %sw.bb.26
    i32 56, label %sw.bb.28
    i32 57, label %sw.bb.42
    i32 47, label %sw.bb.50
    i32 50, label %sw.bb.52
    i32 49, label %sw.bb.54
    i32 48, label %sw.bb.56
    i32 51, label %sw.bb.58
    i32 52, label %sw.bb.60
    i32 53, label %sw.bb.60
    i32 54, label %sw.bb.62
    i32 0, label %sw.bb.150
    i32 19, label %sw.bb.155
    i32 31, label %sw.bb.160
    i32 27, label %sw.bb.165
    i32 28, label %sw.bb.170
    i32 25, label %sw.bb.175
    i32 26, label %sw.bb.180
    i32 34, label %sw.bb.185
    i32 35, label %sw.bb.190
    i32 32, label %sw.bb.195
    i32 33, label %sw.bb.200
    i32 20, label %sw.bb.205
    i32 36, label %sw.bb.205
    i32 21, label %sw.bb.210
    i32 37, label %sw.bb.210
    i32 22, label %sw.bb.215
    i32 24, label %sw.bb.220
    i32 17, label %sw.bb.225
    i32 29, label %sw.bb.230
    i32 30, label %sw.bb.235
    i32 18, label %sw.bb.240
    i32 23, label %sw.bb.240
    i32 58, label %sw.bb.245
    i32 59, label %sw.bb.250
    i32 60, label %sw.bb.267
    i32 62, label %sw.bb.268
    i32 63, label %sw.bb.268
    i32 65, label %sw.bb.268
    i32 67, label %sw.bb.268
    i32 69, label %sw.bb.268
    i32 70, label %sw.bb.268
    i32 72, label %sw.bb.268
    i32 74, label %sw.bb.268
    i32 66, label %sw.bb.269
    i32 73, label %sw.bb.274
    i32 82, label %sw.bb.279
    i32 83, label %sw.bb.280
    i32 84, label %sw.bb.281
    i32 85, label %sw.bb.283
    i32 86, label %sw.bb.286
    i32 87, label %sw.bb.290
    i32 88, label %sw.bb.294
    i32 89, label %sw.bb.301
    i32 90, label %sw.bb.303
    i32 91, label %sw.bb.305
    i32 92, label %sw.bb.307
    i32 93, label %sw.bb.309
    i32 94, label %sw.bb.311
    i32 61, label %sw.bb.313
  ]

sw.bb.15:                                         ; preds = %if.end.14, %if.end.14, %if.end.14, %if.end.14, %if.end.14, %if.end.14, %if.end.14
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.100, i32 0, i32 0), i32 3665, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.expand_builtin, i32 0, i32 0)) #5
  unreachable

sw.bb.16:                                         ; preds = %if.end.14, %if.end.14, %if.end.14, %if.end.14, %if.end.14, %if.end.14, %if.end.14, %if.end.14, %if.end.14
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.100, i32 0, i32 0), i32 3678, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.expand_builtin, i32 0, i32 0)) #5
  unreachable

sw.bb.17:                                         ; preds = %if.end.14, %if.end.14, %if.end.14, %if.end.14, %if.end.14, %if.end.14
  %24 = load i32, i32* @flag_unsafe_math_optimizations, align 4
  %tobool18 = icmp ne i32 %24, 0
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %sw.bb.17
  br label %sw.epilog.320

if.end.20:                                        ; preds = %sw.bb.17
  br label %sw.bb.21

sw.bb.21:                                         ; preds = %if.end.14, %if.end.14, %if.end.14, %if.end.20
  %25 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %subtarget.addr, align 8
  %call22 = call %struct.rtx_def* @expand_builtin_mathfn(%union.tree_node* %25, %struct.rtx_def* %26, %struct.rtx_def* %27)
  store %struct.rtx_def* %call22, %struct.rtx_def** %target.addr, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool23 = icmp ne %struct.rtx_def* %28, null
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %sw.bb.21
  %29 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %29, %struct.rtx_def** %retval
  br label %return

if.end.25:                                        ; preds = %sw.bb.21
  br label %sw.epilog.320

sw.bb.26:                                         ; preds = %if.end.14
  %call27 = call %struct.rtx_def* @expand_builtin_apply_args()
  store %struct.rtx_def* %call27, %struct.rtx_def** %retval
  br label %return

sw.bb.28:                                         ; preds = %if.end.14
  %30 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %call29 = call i32 (%union.tree_node*, ...) @validate_arglist(%union.tree_node* %30, i32 13, i32 13, i32 6, i32 5)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.else, label %land.lhs.true.31

land.lhs.true.31:                                 ; preds = %sw.bb.28
  %31 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %call32 = call i32 (%union.tree_node*, ...) @validate_arglist(%union.tree_node* %31, i32 15, i32 13, i32 6, i32 5)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.else, label %if.then.34

if.then.34:                                       ; preds = %land.lhs.true.31
  %32 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %32, %struct.rtx_def** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.31, %sw.bb.28
  %33 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  store %union.tree_node* %33, %union.tree_node** %t, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %34 = load %union.tree_node*, %union.tree_node** %t, align 8
  %tobool35 = icmp ne %union.tree_node* %34, null
  br i1 %tobool35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load %union.tree_node*, %union.tree_node** %t, align 8
  %list = bitcast %union.tree_node* %35 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %36 = load %union.tree_node*, %union.tree_node** %value, align 8
  %call36 = call %struct.rtx_def* @expand_expr(%union.tree_node* %36, %struct.rtx_def* null, i32 0, i32 0)
  %37 = load i32, i32* %i, align 4
  %idxprom = sext i32 %37 to i64
  %arrayidx37 = getelementptr inbounds [3 x %struct.rtx_def*], [3 x %struct.rtx_def*]* %ops, i32 0, i64 %idxprom
  store %struct.rtx_def* %call36, %struct.rtx_def** %arrayidx37, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common = bitcast %union.tree_node* %38 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %39 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %39, %union.tree_node** %t, align 8
  %40 = load i32, i32* %i, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arrayidx38 = getelementptr inbounds [3 x %struct.rtx_def*], [3 x %struct.rtx_def*]* %ops, i32 0, i64 0
  %41 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx38, align 8
  %arrayidx39 = getelementptr inbounds [3 x %struct.rtx_def*], [3 x %struct.rtx_def*]* %ops, i32 0, i64 1
  %42 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx39, align 8
  %arrayidx40 = getelementptr inbounds [3 x %struct.rtx_def*], [3 x %struct.rtx_def*]* %ops, i32 0, i64 2
  %43 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx40, align 8
  %call41 = call %struct.rtx_def* @expand_builtin_apply(%struct.rtx_def* %41, %struct.rtx_def* %42, %struct.rtx_def* %43)
  store %struct.rtx_def* %call41, %struct.rtx_def** %retval
  br label %return

sw.bb.42:                                         ; preds = %if.end.14
  %44 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %call43 = call i32 (%union.tree_node*, ...) @validate_arglist(%union.tree_node* %44, i32 13, i32 5)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.45, label %if.end.49

if.then.45:                                       ; preds = %sw.bb.42
  %45 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %list46 = bitcast %union.tree_node* %45 to %struct.tree_list*
  %value47 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list46, i32 0, i32 2
  %46 = load %union.tree_node*, %union.tree_node** %value47, align 8
  %call48 = call %struct.rtx_def* @expand_expr(%union.tree_node* %46, %struct.rtx_def* null, i32 0, i32 0)
  call void @expand_builtin_return(%struct.rtx_def* %call48)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.45, %sw.bb.42
  %47 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %47, %struct.rtx_def** %retval
  br label %return

sw.bb.50:                                         ; preds = %if.end.14
  %call51 = call %struct.rtx_def* @expand_builtin_saveregs()
  store %struct.rtx_def* %call51, %struct.rtx_def** %retval
  br label %return

sw.bb.52:                                         ; preds = %if.end.14
  %48 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %call53 = call %struct.rtx_def* @expand_builtin_args_info(%union.tree_node* %48)
  store %struct.rtx_def* %call53, %struct.rtx_def** %retval
  br label %return

sw.bb.54:                                         ; preds = %if.end.14
  %49 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %call55 = call %struct.rtx_def* @expand_builtin_next_arg(%union.tree_node* %49)
  store %struct.rtx_def* %call55, %struct.rtx_def** %retval
  br label %return

sw.bb.56:                                         ; preds = %if.end.14
  %50 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %call57 = call %struct.rtx_def* @expand_builtin_classify_type(%union.tree_node* %50)
  store %struct.rtx_def* %call57, %struct.rtx_def** %retval
  br label %return

sw.bb.58:                                         ; preds = %if.end.14
  %51 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %call59 = call %struct.rtx_def* @expand_builtin_constant_p(%union.tree_node* %51)
  store %struct.rtx_def* %call59, %struct.rtx_def** %retval
  br label %return

sw.bb.60:                                         ; preds = %if.end.14, %if.end.14
  %52 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %call61 = call %struct.rtx_def* @expand_builtin_frame_address(%union.tree_node* %52)
  store %struct.rtx_def* %call61, %struct.rtx_def** %retval
  br label %return

sw.bb.62:                                         ; preds = %if.end.14
  %53 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %cmp63 = icmp ne %union.tree_node* %53, null
  br i1 %cmp63, label %if.then.128, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.62
  %54 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %common64 = bitcast %union.tree_node* %54 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common64, i32 0, i32 1
  %55 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common65 = bitcast %union.tree_node* %55 to %struct.tree_common*
  %type66 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common65, i32 0, i32 1
  %56 = load %union.tree_node*, %union.tree_node** %type66, align 8
  %common67 = bitcast %union.tree_node* %56 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common67, i32 0, i32 2
  %bf.load68 = load i32, i32* %code, align 8
  %bf.clear69 = and i32 %bf.load68, 255
  %cmp70 = icmp eq i32 %bf.clear69, 18
  br i1 %cmp70, label %lor.lhs.false.111, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %lor.lhs.false
  %57 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %common72 = bitcast %union.tree_node* %57 to %struct.tree_common*
  %type73 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common72, i32 0, i32 1
  %58 = load %union.tree_node*, %union.tree_node** %type73, align 8
  %common74 = bitcast %union.tree_node* %58 to %struct.tree_common*
  %type75 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common74, i32 0, i32 1
  %59 = load %union.tree_node*, %union.tree_node** %type75, align 8
  %common76 = bitcast %union.tree_node* %59 to %struct.tree_common*
  %code77 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common76, i32 0, i32 2
  %bf.load78 = load i32, i32* %code77, align 8
  %bf.clear79 = and i32 %bf.load78, 255
  %cmp80 = icmp eq i32 %bf.clear79, 20
  br i1 %cmp80, label %lor.lhs.false.111, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %lor.lhs.false.71
  %60 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %common82 = bitcast %union.tree_node* %60 to %struct.tree_common*
  %type83 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common82, i32 0, i32 1
  %61 = load %union.tree_node*, %union.tree_node** %type83, align 8
  %common84 = bitcast %union.tree_node* %61 to %struct.tree_common*
  %type85 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common84, i32 0, i32 1
  %62 = load %union.tree_node*, %union.tree_node** %type85, align 8
  %common86 = bitcast %union.tree_node* %62 to %struct.tree_common*
  %code87 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common86, i32 0, i32 2
  %bf.load88 = load i32, i32* %code87, align 8
  %bf.clear89 = and i32 %bf.load88, 255
  %cmp90 = icmp eq i32 %bf.clear89, 21
  br i1 %cmp90, label %lor.lhs.false.111, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %lor.lhs.false.81
  %63 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %common92 = bitcast %union.tree_node* %63 to %struct.tree_common*
  %type93 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common92, i32 0, i32 1
  %64 = load %union.tree_node*, %union.tree_node** %type93, align 8
  %common94 = bitcast %union.tree_node* %64 to %struct.tree_common*
  %type95 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common94, i32 0, i32 1
  %65 = load %union.tree_node*, %union.tree_node** %type95, align 8
  %common96 = bitcast %union.tree_node* %65 to %struct.tree_common*
  %code97 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common96, i32 0, i32 2
  %bf.load98 = load i32, i32* %code97, align 8
  %bf.clear99 = and i32 %bf.load98, 255
  %cmp100 = icmp eq i32 %bf.clear99, 22
  br i1 %cmp100, label %lor.lhs.false.111, label %lor.lhs.false.101

lor.lhs.false.101:                                ; preds = %lor.lhs.false.91
  %66 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %common102 = bitcast %union.tree_node* %66 to %struct.tree_common*
  %type103 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common102, i32 0, i32 1
  %67 = load %union.tree_node*, %union.tree_node** %type103, align 8
  %common104 = bitcast %union.tree_node* %67 to %struct.tree_common*
  %type105 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common104, i32 0, i32 1
  %68 = load %union.tree_node*, %union.tree_node** %type105, align 8
  %common106 = bitcast %union.tree_node* %68 to %struct.tree_common*
  %code107 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common106, i32 0, i32 2
  %bf.load108 = load i32, i32* %code107, align 8
  %bf.clear109 = and i32 %bf.load108, 255
  %cmp110 = icmp eq i32 %bf.clear109, 19
  br i1 %cmp110, label %lor.lhs.false.111, label %if.then.128

lor.lhs.false.111:                                ; preds = %lor.lhs.false.101, %lor.lhs.false.91, %lor.lhs.false.81, %lor.lhs.false.71, %lor.lhs.false
  %69 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %decl112 = bitcast %union.tree_node* %69 to %struct.tree_decl*
  %result = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl112, i32 0, i32 11
  %70 = load %union.tree_node*, %union.tree_node** %result, align 8
  %decl113 = bitcast %union.tree_node* %70 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl113, i32 0, i32 17
  %71 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %tobool114 = icmp ne %struct.rtx_def* %71, null
  br i1 %tobool114, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.111
  %72 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %decl115 = bitcast %union.tree_node* %72 to %struct.tree_decl*
  %result116 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl115, i32 0, i32 11
  %73 = load %union.tree_node*, %union.tree_node** %result116, align 8
  %decl117 = bitcast %union.tree_node* %73 to %struct.tree_decl*
  %rtl118 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl117, i32 0, i32 17
  %74 = load %struct.rtx_def*, %struct.rtx_def** %rtl118, align 8
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.111
  %75 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %decl119 = bitcast %union.tree_node* %75 to %struct.tree_decl*
  %result120 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl119, i32 0, i32 11
  %76 = load %union.tree_node*, %union.tree_node** %result120, align 8
  call void @make_decl_rtl(%union.tree_node* %76, i8* null)
  %77 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %decl121 = bitcast %union.tree_node* %77 to %struct.tree_decl*
  %result122 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl121, i32 0, i32 11
  %78 = load %union.tree_node*, %union.tree_node** %result122, align 8
  %decl123 = bitcast %union.tree_node* %78 to %struct.tree_decl*
  %rtl124 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl123, i32 0, i32 17
  %79 = load %struct.rtx_def*, %struct.rtx_def** %rtl124, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %74, %cond.true ], [ %79, %cond.false ]
  %80 = bitcast %struct.rtx_def* %cond to i32*
  %bf.load125 = load i32, i32* %80, align 8
  %bf.clear126 = and i32 %bf.load125, 65535
  %cmp127 = icmp ne i32 %bf.clear126, 66
  br i1 %cmp127, label %if.then.128, label %if.else.129

if.then.128:                                      ; preds = %cond.end, %lor.lhs.false.101, %sw.bb.62
  %81 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %81, %struct.rtx_def** %retval
  br label %return

if.else.129:                                      ; preds = %cond.end
  %82 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %decl130 = bitcast %union.tree_node* %82 to %struct.tree_decl*
  %result131 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl130, i32 0, i32 11
  %83 = load %union.tree_node*, %union.tree_node** %result131, align 8
  %decl132 = bitcast %union.tree_node* %83 to %struct.tree_decl*
  %rtl133 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl132, i32 0, i32 17
  %84 = load %struct.rtx_def*, %struct.rtx_def** %rtl133, align 8
  %tobool134 = icmp ne %struct.rtx_def* %84, null
  br i1 %tobool134, label %cond.true.135, label %cond.false.140

cond.true.135:                                    ; preds = %if.else.129
  %85 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %decl136 = bitcast %union.tree_node* %85 to %struct.tree_decl*
  %result137 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl136, i32 0, i32 11
  %86 = load %union.tree_node*, %union.tree_node** %result137, align 8
  %decl138 = bitcast %union.tree_node* %86 to %struct.tree_decl*
  %rtl139 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl138, i32 0, i32 17
  %87 = load %struct.rtx_def*, %struct.rtx_def** %rtl139, align 8
  br label %cond.end.147

cond.false.140:                                   ; preds = %if.else.129
  %88 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %decl141 = bitcast %union.tree_node* %88 to %struct.tree_decl*
  %result142 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl141, i32 0, i32 11
  %89 = load %union.tree_node*, %union.tree_node** %result142, align 8
  call void @make_decl_rtl(%union.tree_node* %89, i8* null)
  %90 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %decl143 = bitcast %union.tree_node* %90 to %struct.tree_decl*
  %result144 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl143, i32 0, i32 11
  %91 = load %union.tree_node*, %union.tree_node** %result144, align 8
  %decl145 = bitcast %union.tree_node* %91 to %struct.tree_decl*
  %rtl146 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl145, i32 0, i32 17
  %92 = load %struct.rtx_def*, %struct.rtx_def** %rtl146, align 8
  br label %cond.end.147

cond.end.147:                                     ; preds = %cond.false.140, %cond.true.135
  %cond148 = phi %struct.rtx_def* [ %87, %cond.true.135 ], [ %92, %cond.false.140 ]
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond148, i32 0, i32 1
  %arrayidx149 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx149 to %struct.rtx_def**
  %93 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %93, %struct.rtx_def** %retval
  br label %return

sw.bb.150:                                        ; preds = %if.end.14
  %94 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %95 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call151 = call %struct.rtx_def* @expand_builtin_alloca(%union.tree_node* %94, %struct.rtx_def* %95)
  store %struct.rtx_def* %call151, %struct.rtx_def** %target.addr, align 8
  %96 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool152 = icmp ne %struct.rtx_def* %96, null
  br i1 %tobool152, label %if.then.153, label %if.end.154

if.then.153:                                      ; preds = %sw.bb.150
  %97 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %97, %struct.rtx_def** %retval
  br label %return

if.end.154:                                       ; preds = %sw.bb.150
  br label %sw.epilog.320

sw.bb.155:                                        ; preds = %if.end.14
  %98 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %99 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %100 = load %struct.rtx_def*, %struct.rtx_def** %subtarget.addr, align 8
  %call156 = call %struct.rtx_def* @expand_builtin_ffs(%union.tree_node* %98, %struct.rtx_def* %99, %struct.rtx_def* %100)
  store %struct.rtx_def* %call156, %struct.rtx_def** %target.addr, align 8
  %101 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool157 = icmp ne %struct.rtx_def* %101, null
  br i1 %tobool157, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %sw.bb.155
  %102 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %102, %struct.rtx_def** %retval
  br label %return

if.end.159:                                       ; preds = %sw.bb.155
  br label %sw.epilog.320

sw.bb.160:                                        ; preds = %if.end.14
  %103 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %104 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call161 = call %struct.rtx_def* @expand_builtin_strlen(%union.tree_node* %103, %struct.rtx_def* %104)
  store %struct.rtx_def* %call161, %struct.rtx_def** %target.addr, align 8
  %105 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool162 = icmp ne %struct.rtx_def* %105, null
  br i1 %tobool162, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %sw.bb.160
  %106 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %106, %struct.rtx_def** %retval
  br label %return

if.end.164:                                       ; preds = %sw.bb.160
  br label %sw.epilog.320

sw.bb.165:                                        ; preds = %if.end.14
  %107 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %108 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %109 = load i32, i32* %mode.addr, align 4
  %call166 = call %struct.rtx_def* @expand_builtin_strcpy(%union.tree_node* %107, %struct.rtx_def* %108, i32 %109)
  store %struct.rtx_def* %call166, %struct.rtx_def** %target.addr, align 8
  %110 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool167 = icmp ne %struct.rtx_def* %110, null
  br i1 %tobool167, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %sw.bb.165
  %111 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %111, %struct.rtx_def** %retval
  br label %return

if.end.169:                                       ; preds = %sw.bb.165
  br label %sw.epilog.320

sw.bb.170:                                        ; preds = %if.end.14
  %112 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %113 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %114 = load i32, i32* %mode.addr, align 4
  %call171 = call %struct.rtx_def* @expand_builtin_strncpy(%union.tree_node* %112, %struct.rtx_def* %113, i32 %114)
  store %struct.rtx_def* %call171, %struct.rtx_def** %target.addr, align 8
  %115 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool172 = icmp ne %struct.rtx_def* %115, null
  br i1 %tobool172, label %if.then.173, label %if.end.174

if.then.173:                                      ; preds = %sw.bb.170
  %116 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %116, %struct.rtx_def** %retval
  br label %return

if.end.174:                                       ; preds = %sw.bb.170
  br label %sw.epilog.320

sw.bb.175:                                        ; preds = %if.end.14
  %117 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %118 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %119 = load i32, i32* %mode.addr, align 4
  %call176 = call %struct.rtx_def* @expand_builtin_strcat(%union.tree_node* %117, %struct.rtx_def* %118, i32 %119)
  store %struct.rtx_def* %call176, %struct.rtx_def** %target.addr, align 8
  %120 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool177 = icmp ne %struct.rtx_def* %120, null
  br i1 %tobool177, label %if.then.178, label %if.end.179

if.then.178:                                      ; preds = %sw.bb.175
  %121 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %121, %struct.rtx_def** %retval
  br label %return

if.end.179:                                       ; preds = %sw.bb.175
  br label %sw.epilog.320

sw.bb.180:                                        ; preds = %if.end.14
  %122 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %123 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %124 = load i32, i32* %mode.addr, align 4
  %call181 = call %struct.rtx_def* @expand_builtin_strncat(%union.tree_node* %122, %struct.rtx_def* %123, i32 %124)
  store %struct.rtx_def* %call181, %struct.rtx_def** %target.addr, align 8
  %125 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool182 = icmp ne %struct.rtx_def* %125, null
  br i1 %tobool182, label %if.then.183, label %if.end.184

if.then.183:                                      ; preds = %sw.bb.180
  %126 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %126, %struct.rtx_def** %retval
  br label %return

if.end.184:                                       ; preds = %sw.bb.180
  br label %sw.epilog.320

sw.bb.185:                                        ; preds = %if.end.14
  %127 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %128 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %129 = load i32, i32* %mode.addr, align 4
  %call186 = call %struct.rtx_def* @expand_builtin_strspn(%union.tree_node* %127, %struct.rtx_def* %128, i32 %129)
  store %struct.rtx_def* %call186, %struct.rtx_def** %target.addr, align 8
  %130 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool187 = icmp ne %struct.rtx_def* %130, null
  br i1 %tobool187, label %if.then.188, label %if.end.189

if.then.188:                                      ; preds = %sw.bb.185
  %131 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %131, %struct.rtx_def** %retval
  br label %return

if.end.189:                                       ; preds = %sw.bb.185
  br label %sw.epilog.320

sw.bb.190:                                        ; preds = %if.end.14
  %132 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %133 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %134 = load i32, i32* %mode.addr, align 4
  %call191 = call %struct.rtx_def* @expand_builtin_strcspn(%union.tree_node* %132, %struct.rtx_def* %133, i32 %134)
  store %struct.rtx_def* %call191, %struct.rtx_def** %target.addr, align 8
  %135 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool192 = icmp ne %struct.rtx_def* %135, null
  br i1 %tobool192, label %if.then.193, label %if.end.194

if.then.193:                                      ; preds = %sw.bb.190
  %136 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %136, %struct.rtx_def** %retval
  br label %return

if.end.194:                                       ; preds = %sw.bb.190
  br label %sw.epilog.320

sw.bb.195:                                        ; preds = %if.end.14
  %137 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %138 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %139 = load i32, i32* %mode.addr, align 4
  %call196 = call %struct.rtx_def* @expand_builtin_strstr(%union.tree_node* %137, %struct.rtx_def* %138, i32 %139)
  store %struct.rtx_def* %call196, %struct.rtx_def** %target.addr, align 8
  %140 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool197 = icmp ne %struct.rtx_def* %140, null
  br i1 %tobool197, label %if.then.198, label %if.end.199

if.then.198:                                      ; preds = %sw.bb.195
  %141 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %141, %struct.rtx_def** %retval
  br label %return

if.end.199:                                       ; preds = %sw.bb.195
  br label %sw.epilog.320

sw.bb.200:                                        ; preds = %if.end.14
  %142 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %143 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %144 = load i32, i32* %mode.addr, align 4
  %call201 = call %struct.rtx_def* @expand_builtin_strpbrk(%union.tree_node* %142, %struct.rtx_def* %143, i32 %144)
  store %struct.rtx_def* %call201, %struct.rtx_def** %target.addr, align 8
  %145 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool202 = icmp ne %struct.rtx_def* %145, null
  br i1 %tobool202, label %if.then.203, label %if.end.204

if.then.203:                                      ; preds = %sw.bb.200
  %146 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %146, %struct.rtx_def** %retval
  br label %return

if.end.204:                                       ; preds = %sw.bb.200
  br label %sw.epilog.320

sw.bb.205:                                        ; preds = %if.end.14, %if.end.14
  %147 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %148 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %149 = load i32, i32* %mode.addr, align 4
  %call206 = call %struct.rtx_def* @expand_builtin_strchr(%union.tree_node* %147, %struct.rtx_def* %148, i32 %149)
  store %struct.rtx_def* %call206, %struct.rtx_def** %target.addr, align 8
  %150 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool207 = icmp ne %struct.rtx_def* %150, null
  br i1 %tobool207, label %if.then.208, label %if.end.209

if.then.208:                                      ; preds = %sw.bb.205
  %151 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %151, %struct.rtx_def** %retval
  br label %return

if.end.209:                                       ; preds = %sw.bb.205
  br label %sw.epilog.320

sw.bb.210:                                        ; preds = %if.end.14, %if.end.14
  %152 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %153 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %154 = load i32, i32* %mode.addr, align 4
  %call211 = call %struct.rtx_def* @expand_builtin_strrchr(%union.tree_node* %152, %struct.rtx_def* %153, i32 %154)
  store %struct.rtx_def* %call211, %struct.rtx_def** %target.addr, align 8
  %155 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool212 = icmp ne %struct.rtx_def* %155, null
  br i1 %tobool212, label %if.then.213, label %if.end.214

if.then.213:                                      ; preds = %sw.bb.210
  %156 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %156, %struct.rtx_def** %retval
  br label %return

if.end.214:                                       ; preds = %sw.bb.210
  br label %sw.epilog.320

sw.bb.215:                                        ; preds = %if.end.14
  %157 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %158 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %159 = load i32, i32* %mode.addr, align 4
  %call216 = call %struct.rtx_def* @expand_builtin_memcpy(%union.tree_node* %157, %struct.rtx_def* %158, i32 %159)
  store %struct.rtx_def* %call216, %struct.rtx_def** %target.addr, align 8
  %160 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool217 = icmp ne %struct.rtx_def* %160, null
  br i1 %tobool217, label %if.then.218, label %if.end.219

if.then.218:                                      ; preds = %sw.bb.215
  %161 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %161, %struct.rtx_def** %retval
  br label %return

if.end.219:                                       ; preds = %sw.bb.215
  br label %sw.epilog.320

sw.bb.220:                                        ; preds = %if.end.14
  %162 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %163 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %164 = load i32, i32* %mode.addr, align 4
  %call221 = call %struct.rtx_def* @expand_builtin_memset(%union.tree_node* %162, %struct.rtx_def* %163, i32 %164)
  store %struct.rtx_def* %call221, %struct.rtx_def** %target.addr, align 8
  %165 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool222 = icmp ne %struct.rtx_def* %165, null
  br i1 %tobool222, label %if.then.223, label %if.end.224

if.then.223:                                      ; preds = %sw.bb.220
  %166 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %166, %struct.rtx_def** %retval
  br label %return

if.end.224:                                       ; preds = %sw.bb.220
  br label %sw.epilog.320

sw.bb.225:                                        ; preds = %if.end.14
  %167 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %call226 = call %struct.rtx_def* @expand_builtin_bzero(%union.tree_node* %167)
  store %struct.rtx_def* %call226, %struct.rtx_def** %target.addr, align 8
  %168 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool227 = icmp ne %struct.rtx_def* %168, null
  br i1 %tobool227, label %if.then.228, label %if.end.229

if.then.228:                                      ; preds = %sw.bb.225
  %169 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %169, %struct.rtx_def** %retval
  br label %return

if.end.229:                                       ; preds = %sw.bb.225
  br label %sw.epilog.320

sw.bb.230:                                        ; preds = %if.end.14
  %170 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %171 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %172 = load i32, i32* %mode.addr, align 4
  %call231 = call %struct.rtx_def* @expand_builtin_strcmp(%union.tree_node* %170, %struct.rtx_def* %171, i32 %172)
  store %struct.rtx_def* %call231, %struct.rtx_def** %target.addr, align 8
  %173 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool232 = icmp ne %struct.rtx_def* %173, null
  br i1 %tobool232, label %if.then.233, label %if.end.234

if.then.233:                                      ; preds = %sw.bb.230
  %174 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %174, %struct.rtx_def** %retval
  br label %return

if.end.234:                                       ; preds = %sw.bb.230
  br label %sw.epilog.320

sw.bb.235:                                        ; preds = %if.end.14
  %175 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %176 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %177 = load i32, i32* %mode.addr, align 4
  %call236 = call %struct.rtx_def* @expand_builtin_strncmp(%union.tree_node* %175, %struct.rtx_def* %176, i32 %177)
  store %struct.rtx_def* %call236, %struct.rtx_def** %target.addr, align 8
  %178 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool237 = icmp ne %struct.rtx_def* %178, null
  br i1 %tobool237, label %if.then.238, label %if.end.239

if.then.238:                                      ; preds = %sw.bb.235
  %179 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %179, %struct.rtx_def** %retval
  br label %return

if.end.239:                                       ; preds = %sw.bb.235
  br label %sw.epilog.320

sw.bb.240:                                        ; preds = %if.end.14, %if.end.14
  %180 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %181 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %182 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %183 = load i32, i32* %mode.addr, align 4
  %call241 = call %struct.rtx_def* @expand_builtin_memcmp(%union.tree_node* %180, %union.tree_node* %181, %struct.rtx_def* %182, i32 %183)
  store %struct.rtx_def* %call241, %struct.rtx_def** %target.addr, align 8
  %184 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool242 = icmp ne %struct.rtx_def* %184, null
  br i1 %tobool242, label %if.then.243, label %if.end.244

if.then.243:                                      ; preds = %sw.bb.240
  %185 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %185, %struct.rtx_def** %retval
  br label %return

if.end.244:                                       ; preds = %sw.bb.240
  br label %sw.epilog.320

sw.bb.245:                                        ; preds = %if.end.14
  %186 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %187 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call246 = call %struct.rtx_def* @expand_builtin_setjmp(%union.tree_node* %186, %struct.rtx_def* %187)
  store %struct.rtx_def* %call246, %struct.rtx_def** %target.addr, align 8
  %188 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool247 = icmp ne %struct.rtx_def* %188, null
  br i1 %tobool247, label %if.then.248, label %if.end.249

if.then.248:                                      ; preds = %sw.bb.245
  %189 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %189, %struct.rtx_def** %retval
  br label %return

if.end.249:                                       ; preds = %sw.bb.245
  br label %sw.epilog.320

sw.bb.250:                                        ; preds = %if.end.14
  %190 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %call251 = call i32 (%union.tree_node*, ...) @validate_arglist(%union.tree_node* %190, i32 13, i32 6, i32 5)
  %tobool252 = icmp ne i32 %call251, 0
  br i1 %tobool252, label %if.else.254, label %if.then.253

if.then.253:                                      ; preds = %sw.bb.250
  br label %sw.epilog.320

if.else.254:                                      ; preds = %sw.bb.250
  %191 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %list255 = bitcast %union.tree_node* %191 to %struct.tree_list*
  %value256 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list255, i32 0, i32 2
  %192 = load %union.tree_node*, %union.tree_node** %value256, align 8
  %193 = load %struct.rtx_def*, %struct.rtx_def** %subtarget.addr, align 8
  %call257 = call %struct.rtx_def* @expand_expr(%union.tree_node* %192, %struct.rtx_def* %193, i32 0, i32 0)
  store %struct.rtx_def* %call257, %struct.rtx_def** %buf_addr, align 8
  %194 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %common259 = bitcast %union.tree_node* %194 to %struct.tree_common*
  %chain260 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common259, i32 0, i32 0
  %195 = load %union.tree_node*, %union.tree_node** %chain260, align 8
  %list261 = bitcast %union.tree_node* %195 to %struct.tree_list*
  %value262 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list261, i32 0, i32 2
  %196 = load %union.tree_node*, %union.tree_node** %value262, align 8
  %call263 = call %struct.rtx_def* @expand_expr(%union.tree_node* %196, %struct.rtx_def* null, i32 0, i32 0)
  store %struct.rtx_def* %call263, %struct.rtx_def** %value258, align 8
  %197 = load %struct.rtx_def*, %struct.rtx_def** %value258, align 8
  %198 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  %cmp264 = icmp ne %struct.rtx_def* %197, %198
  br i1 %cmp264, label %if.then.265, label %if.end.266

if.then.265:                                      ; preds = %if.else.254
  call void (i8*, ...) @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.107, i32 0, i32 0))
  %199 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %199, %struct.rtx_def** %retval
  br label %return

if.end.266:                                       ; preds = %if.else.254
  %200 = load %struct.rtx_def*, %struct.rtx_def** %buf_addr, align 8
  %201 = load %struct.rtx_def*, %struct.rtx_def** %value258, align 8
  call void @expand_builtin_longjmp(%struct.rtx_def* %200, %struct.rtx_def* %201)
  %202 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %202, %struct.rtx_def** %retval
  br label %return

sw.bb.267:                                        ; preds = %if.end.14
  call void @expand_builtin_trap()
  %203 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %203, %struct.rtx_def** %retval
  br label %return

sw.bb.268:                                        ; preds = %if.end.14, %if.end.14, %if.end.14, %if.end.14, %if.end.14, %if.end.14, %if.end.14, %if.end.14
  br label %sw.epilog.320

sw.bb.269:                                        ; preds = %if.end.14
  %204 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %205 = load i32, i32* %ignore.addr, align 4
  %call270 = call %struct.rtx_def* @expand_builtin_fputs(%union.tree_node* %204, i32 %205, i32 0)
  store %struct.rtx_def* %call270, %struct.rtx_def** %target.addr, align 8
  %206 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool271 = icmp ne %struct.rtx_def* %206, null
  br i1 %tobool271, label %if.then.272, label %if.end.273

if.then.272:                                      ; preds = %sw.bb.269
  %207 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %207, %struct.rtx_def** %retval
  br label %return

if.end.273:                                       ; preds = %sw.bb.269
  br label %sw.epilog.320

sw.bb.274:                                        ; preds = %if.end.14
  %208 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %209 = load i32, i32* %ignore.addr, align 4
  %call275 = call %struct.rtx_def* @expand_builtin_fputs(%union.tree_node* %208, i32 %209, i32 1)
  store %struct.rtx_def* %call275, %struct.rtx_def** %target.addr, align 8
  %210 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool276 = icmp ne %struct.rtx_def* %210, null
  br i1 %tobool276, label %if.then.277, label %if.end.278

if.then.277:                                      ; preds = %sw.bb.274
  %211 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %211, %struct.rtx_def** %retval
  br label %return

if.end.278:                                       ; preds = %sw.bb.274
  br label %sw.epilog.320

sw.bb.279:                                        ; preds = %if.end.14
  call void @expand_builtin_unwind_init()
  %212 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %212, %struct.rtx_def** %retval
  br label %return

sw.bb.280:                                        ; preds = %if.end.14
  %213 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 10), align 8
  store %struct.rtx_def* %213, %struct.rtx_def** %retval
  br label %return

sw.bb.281:                                        ; preds = %if.end.14
  %call282 = call %struct.rtx_def* @expand_builtin_dwarf_fp_regnum()
  store %struct.rtx_def* %call282, %struct.rtx_def** %retval
  br label %return

sw.bb.283:                                        ; preds = %if.end.14
  %214 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %list284 = bitcast %union.tree_node* %214 to %struct.tree_list*
  %value285 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list284, i32 0, i32 2
  %215 = load %union.tree_node*, %union.tree_node** %value285, align 8
  call void @expand_builtin_init_dwarf_reg_sizes(%union.tree_node* %215)
  %216 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %216, %struct.rtx_def** %retval
  br label %return

sw.bb.286:                                        ; preds = %if.end.14
  %217 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %list287 = bitcast %union.tree_node* %217 to %struct.tree_list*
  %value288 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list287, i32 0, i32 2
  %218 = load %union.tree_node*, %union.tree_node** %value288, align 8
  %call289 = call %struct.rtx_def* @expand_builtin_frob_return_addr(%union.tree_node* %218)
  store %struct.rtx_def* %call289, %struct.rtx_def** %retval
  br label %return

sw.bb.290:                                        ; preds = %if.end.14
  %219 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %list291 = bitcast %union.tree_node* %219 to %struct.tree_list*
  %value292 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list291, i32 0, i32 2
  %220 = load %union.tree_node*, %union.tree_node** %value292, align 8
  %call293 = call %struct.rtx_def* @expand_builtin_extract_return_addr(%union.tree_node* %220)
  store %struct.rtx_def* %call293, %struct.rtx_def** %retval
  br label %return

sw.bb.294:                                        ; preds = %if.end.14
  %221 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %list295 = bitcast %union.tree_node* %221 to %struct.tree_list*
  %value296 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list295, i32 0, i32 2
  %222 = load %union.tree_node*, %union.tree_node** %value296, align 8
  %223 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %common297 = bitcast %union.tree_node* %223 to %struct.tree_common*
  %chain298 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common297, i32 0, i32 0
  %224 = load %union.tree_node*, %union.tree_node** %chain298, align 8
  %list299 = bitcast %union.tree_node* %224 to %struct.tree_list*
  %value300 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list299, i32 0, i32 2
  %225 = load %union.tree_node*, %union.tree_node** %value300, align 8
  call void @expand_builtin_eh_return(%union.tree_node* %222, %union.tree_node* %225)
  %226 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %226, %struct.rtx_def** %retval
  br label %return

sw.bb.301:                                        ; preds = %if.end.14
  %227 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %call302 = call %struct.rtx_def* @expand_builtin_eh_return_data_regno(%union.tree_node* %227)
  store %struct.rtx_def* %call302, %struct.rtx_def** %retval
  br label %return

sw.bb.303:                                        ; preds = %if.end.14
  %228 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %call304 = call %struct.rtx_def* @expand_builtin_va_start(i32 0, %union.tree_node* %228)
  store %struct.rtx_def* %call304, %struct.rtx_def** %retval
  br label %return

sw.bb.305:                                        ; preds = %if.end.14
  %229 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %call306 = call %struct.rtx_def* @expand_builtin_va_start(i32 1, %union.tree_node* %229)
  store %struct.rtx_def* %call306, %struct.rtx_def** %retval
  br label %return

sw.bb.307:                                        ; preds = %if.end.14
  %230 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %call308 = call %struct.rtx_def* @expand_builtin_va_end(%union.tree_node* %230)
  store %struct.rtx_def* %call308, %struct.rtx_def** %retval
  br label %return

sw.bb.309:                                        ; preds = %if.end.14
  %231 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %call310 = call %struct.rtx_def* @expand_builtin_va_copy(%union.tree_node* %231)
  store %struct.rtx_def* %call310, %struct.rtx_def** %retval
  br label %return

sw.bb.311:                                        ; preds = %if.end.14
  %232 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %233 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call312 = call %struct.rtx_def* @expand_builtin_expect(%union.tree_node* %232, %struct.rtx_def* %233)
  store %struct.rtx_def* %call312, %struct.rtx_def** %retval
  br label %return

sw.bb.313:                                        ; preds = %if.end.14
  %234 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  call void @expand_builtin_prefetch(%union.tree_node* %234)
  %235 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %235, %struct.rtx_def** %retval
  br label %return

sw.default.314:                                   ; preds = %if.end.14
  %236 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %decl315 = bitcast %union.tree_node* %236 to %struct.tree_decl*
  %name316 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl315, i32 0, i32 8
  %237 = load %union.tree_node*, %union.tree_node** %name316, align 8
  %identifier317 = bitcast %union.tree_node* %237 to %struct.tree_identifier*
  %id318 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier317, i32 0, i32 1
  %str319 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id318, i32 0, i32 1
  %238 = load i8*, i8** %str319, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.108, i32 0, i32 0), i8* %238)
  br label %sw.epilog.320

sw.epilog.320:                                    ; preds = %sw.default.314, %if.end.278, %if.end.273, %sw.bb.268, %if.then.253, %if.end.249, %if.end.244, %if.end.239, %if.end.234, %if.end.229, %if.end.224, %if.end.219, %if.end.214, %if.end.209, %if.end.204, %if.end.199, %if.end.194, %if.end.189, %if.end.184, %if.end.179, %if.end.174, %if.end.169, %if.end.164, %if.end.159, %if.end.154, %if.end.25, %if.then.19
  %239 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %240 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %241 = load i32, i32* %ignore.addr, align 4
  %call321 = call %struct.rtx_def* @expand_call(%union.tree_node* %239, %struct.rtx_def* %240, i32 %241)
  store %struct.rtx_def* %call321, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %sw.epilog.320, %sw.bb.313, %sw.bb.311, %sw.bb.309, %sw.bb.307, %sw.bb.305, %sw.bb.303, %sw.bb.301, %sw.bb.294, %sw.bb.290, %sw.bb.286, %sw.bb.283, %sw.bb.281, %sw.bb.280, %sw.bb.279, %if.then.277, %if.then.272, %sw.bb.267, %if.end.266, %if.then.265, %if.then.248, %if.then.243, %if.then.238, %if.then.233, %if.then.228, %if.then.223, %if.then.218, %if.then.213, %if.then.208, %if.then.203, %if.then.198, %if.then.193, %if.then.188, %if.then.183, %if.then.178, %if.then.173, %if.then.168, %if.then.163, %if.then.158, %if.then.153, %cond.end.147, %if.then.128, %sw.bb.60, %sw.bb.58, %sw.bb.56, %sw.bb.54, %sw.bb.52, %sw.bb.50, %if.end.49, %for.end, %if.then.34, %sw.bb.26, %if.then.24, %sw.bb, %if.then
  %242 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %242
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

declare %struct.rtx_def* @expand_call(%union.tree_node*, %struct.rtx_def*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @expand_builtin_mathfn(%union.tree_node* %exp, %struct.rtx_def* %target, %struct.rtx_def* %subtarget) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %exp.addr = alloca %union.tree_node*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %subtarget.addr = alloca %struct.rtx_def*, align 8
  %builtin_optab = alloca %struct.optab*, align 8
  %op0 = alloca %struct.rtx_def*, align 8
  %insns = alloca %struct.rtx_def*, align 8
  %fndecl = alloca %union.tree_node*, align 8
  %arglist = alloca %union.tree_node*, align 8
  %lab1 = alloca %struct.rtx_def*, align 8
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %subtarget, %struct.rtx_def** %subtarget.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp1 = bitcast %union.tree_node* %0 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp1, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %exp2 = bitcast %union.tree_node* %1 to %struct.tree_exp*
  %operands3 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp2, i32 0, i32 2
  %arrayidx4 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands3, i32 0, i64 0
  %2 = load %union.tree_node*, %union.tree_node** %arrayidx4, align 8
  store %union.tree_node* %2, %union.tree_node** %fndecl, align 8
  %3 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp5 = bitcast %union.tree_node* %3 to %struct.tree_exp*
  %operands6 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp5, i32 0, i32 2
  %arrayidx7 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands6, i32 0, i64 1
  %4 = load %union.tree_node*, %union.tree_node** %arrayidx7, align 8
  store %union.tree_node* %4, %union.tree_node** %arglist, align 8
  %5 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %call = call i32 (%union.tree_node*, ...) @validate_arglist(%union.tree_node* %5, i32 7, i32 5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %list = bitcast %union.tree_node* %6 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %7 = load %union.tree_node*, %union.tree_node** %value, align 8
  %common = bitcast %union.tree_node* %7 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp ne i32 %bf.clear, 34
  br i1 %cmp, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %if.end
  %8 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %list8 = bitcast %union.tree_node* %8 to %struct.tree_list*
  %value9 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list8, i32 0, i32 2
  %9 = load %union.tree_node*, %union.tree_node** %value9, align 8
  %common10 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %code11 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common10, i32 0, i32 2
  %bf.load12 = load i32, i32* %code11, align 8
  %bf.clear13 = and i32 %bf.load12, 255
  %cmp14 = icmp ne i32 %bf.clear13, 35
  br i1 %cmp14, label %if.then.15, label %if.end.26

if.then.15:                                       ; preds = %land.lhs.true
  %10 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %call16 = call %union.tree_node* @copy_node(%union.tree_node* %10)
  store %union.tree_node* %call16, %union.tree_node** %exp.addr, align 8
  %11 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %12 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp17 = bitcast %union.tree_node* %12 to %struct.tree_exp*
  %operands18 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp17, i32 0, i32 2
  %arrayidx19 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands18, i32 0, i64 1
  store %union.tree_node* %11, %union.tree_node** %arrayidx19, align 8
  %13 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %list20 = bitcast %union.tree_node* %13 to %struct.tree_list*
  %value21 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list20, i32 0, i32 2
  %14 = load %union.tree_node*, %union.tree_node** %value21, align 8
  %call22 = call %union.tree_node* @save_expr(%union.tree_node* %14)
  %15 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %list23 = bitcast %union.tree_node* %15 to %struct.tree_list*
  %value24 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list23, i32 0, i32 2
  store %union.tree_node* %call22, %union.tree_node** %value24, align 8
  %16 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %call25 = call %union.tree_node* @copy_node(%union.tree_node* %16)
  store %union.tree_node* %call25, %union.tree_node** %arglist, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.15, %land.lhs.true, %if.end
  %17 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %list27 = bitcast %union.tree_node* %17 to %struct.tree_list*
  %value28 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list27, i32 0, i32 2
  %18 = load %union.tree_node*, %union.tree_node** %value28, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %subtarget.addr, align 8
  %call29 = call %struct.rtx_def* @expand_expr(%union.tree_node* %18, %struct.rtx_def* %19, i32 0, i32 0)
  store %struct.rtx_def* %call29, %struct.rtx_def** %op0, align 8
  %20 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common30 = bitcast %union.tree_node* %20 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common30, i32 0, i32 1
  %21 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type31 = bitcast %union.tree_node* %21 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type31, i32 0, i32 6
  %bf.load32 = load i32, i32* %mode, align 4
  %bf.lshr = lshr i32 %bf.load32, 9
  %bf.clear33 = and i32 %bf.lshr, 127
  %call34 = call %struct.rtx_def* @gen_reg_rtx(i32 %bf.clear33)
  store %struct.rtx_def* %call34, %struct.rtx_def** %target.addr, align 8
  call void @emit_queue()
  call void @start_sequence()
  %22 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %decl = bitcast %union.tree_node* %22 to %struct.tree_decl*
  %u1 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 6
  %f = bitcast %union.anon* %u1 to i32*
  %23 = load i32, i32* %f, align 4
  switch i32 %23, label %sw.default [
    i32 39, label %sw.bb
    i32 42, label %sw.bb
    i32 45, label %sw.bb
    i32 40, label %sw.bb.35
    i32 43, label %sw.bb.35
    i32 46, label %sw.bb.35
    i32 38, label %sw.bb.36
    i32 41, label %sw.bb.36
    i32 44, label %sw.bb.36
  ]

sw.bb:                                            ; preds = %if.end.26, %if.end.26, %if.end.26
  %24 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 39), align 8
  store %struct.optab* %24, %struct.optab** %builtin_optab, align 8
  br label %sw.epilog

sw.bb.35:                                         ; preds = %if.end.26, %if.end.26, %if.end.26
  %25 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 40), align 8
  store %struct.optab* %25, %struct.optab** %builtin_optab, align 8
  br label %sw.epilog

sw.bb.36:                                         ; preds = %if.end.26, %if.end.26, %if.end.26
  %26 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 38), align 8
  store %struct.optab* %26, %struct.optab** %builtin_optab, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.26
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.100, i32 0, i32 0), i32 1516, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.expand_builtin_mathfn, i32 0, i32 0)) #5
  unreachable

sw.epilog:                                        ; preds = %sw.bb.36, %sw.bb.35, %sw.bb
  %27 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %list37 = bitcast %union.tree_node* %27 to %struct.tree_list*
  %value38 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list37, i32 0, i32 2
  %28 = load %union.tree_node*, %union.tree_node** %value38, align 8
  %common39 = bitcast %union.tree_node* %28 to %struct.tree_common*
  %type40 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common39, i32 0, i32 1
  %29 = load %union.tree_node*, %union.tree_node** %type40, align 8
  %type41 = bitcast %union.tree_node* %29 to %struct.tree_type*
  %mode42 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type41, i32 0, i32 6
  %bf.load43 = load i32, i32* %mode42, align 4
  %bf.lshr44 = lshr i32 %bf.load43, 9
  %bf.clear45 = and i32 %bf.lshr44, 127
  %30 = load %struct.optab*, %struct.optab** %builtin_optab, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call46 = call %struct.rtx_def* @expand_unop(i32 %bf.clear45, %struct.optab* %30, %struct.rtx_def* %31, %struct.rtx_def* %32, i32 0)
  store %struct.rtx_def* %call46, %struct.rtx_def** %target.addr, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp47 = icmp eq %struct.rtx_def* %33, null
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %sw.epilog
  call void @end_sequence()
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.49:                                        ; preds = %sw.epilog
  %34 = load i32, i32* @flag_errno_math, align 4
  %tobool50 = icmp ne i32 %34, 0
  br i1 %tobool50, label %land.lhs.true.51, label %if.end.62

land.lhs.true.51:                                 ; preds = %if.end.49
  %35 = load i32, i32* @flag_unsafe_math_optimizations, align 4
  %tobool52 = icmp ne i32 %35, 0
  br i1 %tobool52, label %if.end.62, label %if.then.53

if.then.53:                                       ; preds = %land.lhs.true.51
  %call54 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call54, %struct.rtx_def** %lab1, align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %39 = bitcast %struct.rtx_def* %38 to i32*
  %bf.load55 = load i32, i32* %39, align 8
  %bf.lshr56 = lshr i32 %bf.load55, 16
  %bf.clear57 = and i32 %bf.lshr56, 255
  %40 = load %struct.rtx_def*, %struct.rtx_def** %lab1, align 8
  call void @emit_cmp_and_jump_insns(%struct.rtx_def* %36, %struct.rtx_def* %37, i32 103, %struct.rtx_def* null, i32 %bf.clear57, i32 0, %struct.rtx_def* %40)
  %41 = load %struct.function*, %struct.function** @cfun, align 8
  %expr = getelementptr inbounds %struct.function, %struct.function* %41, i32 0, i32 2
  %42 = load %struct.expr_status*, %struct.expr_status** %expr, align 8
  %x_inhibit_defer_pop = getelementptr inbounds %struct.expr_status, %struct.expr_status* %42, i32 0, i32 1
  %43 = load i32, i32* %x_inhibit_defer_pop, align 4
  %add = add nsw i32 %43, 1
  store i32 %add, i32* %x_inhibit_defer_pop, align 4
  %44 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %45 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call58 = call %struct.rtx_def* @expand_call(%union.tree_node* %44, %struct.rtx_def* %45, i32 0)
  %46 = load %struct.function*, %struct.function** @cfun, align 8
  %expr59 = getelementptr inbounds %struct.function, %struct.function* %46, i32 0, i32 2
  %47 = load %struct.expr_status*, %struct.expr_status** %expr59, align 8
  %x_inhibit_defer_pop60 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %47, i32 0, i32 1
  %48 = load i32, i32* %x_inhibit_defer_pop60, align 4
  %sub = sub nsw i32 %48, 1
  store i32 %sub, i32* %x_inhibit_defer_pop60, align 4
  %49 = load %struct.rtx_def*, %struct.rtx_def** %lab1, align 8
  %call61 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %49)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.53, %land.lhs.true.51, %if.end.49
  %call63 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call63, %struct.rtx_def** %insns, align 8
  call void @end_sequence()
  %50 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %call64 = call %struct.rtx_def* @emit_insns(%struct.rtx_def* %50)
  %51 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %51, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.62, %if.then.48, %if.then
  %52 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %52
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @expand_builtin_apply_args() #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %temp = alloca %struct.rtx_def*, align 8
  %seq = alloca %struct.rtx_def*, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %expr = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 2
  %1 = load %struct.expr_status*, %struct.expr_status** %expr, align 8
  %x_apply_args_value = getelementptr inbounds %struct.expr_status, %struct.expr_status* %1, i32 0, i32 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x_apply_args_value, align 8
  %cmp = icmp ne %struct.rtx_def* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.function*, %struct.function** @cfun, align 8
  %expr1 = getelementptr inbounds %struct.function, %struct.function* %3, i32 0, i32 2
  %4 = load %struct.expr_status*, %struct.expr_status** %expr1, align 8
  %x_apply_args_value2 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %4, i32 0, i32 4
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x_apply_args_value2, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  call void @start_sequence()
  %call = call %struct.rtx_def* @expand_builtin_apply_args_1()
  store %struct.rtx_def* %call, %struct.rtx_def** %temp, align 8
  %call3 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call3, %struct.rtx_def** %seq, align 8
  call void @end_sequence()
  %6 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %7 = load %struct.function*, %struct.function** @cfun, align 8
  %expr4 = getelementptr inbounds %struct.function, %struct.function* %7, i32 0, i32 2
  %8 = load %struct.expr_status*, %struct.expr_status** %expr4, align 8
  %x_apply_args_value5 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %8, i32 0, i32 4
  store %struct.rtx_def* %6, %struct.rtx_def** %x_apply_args_value5, align 8
  call void @push_topmost_sequence()
  %9 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %call6 = call %struct.rtx_def* @get_insns()
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call7 = call %struct.rtx_def* @emit_insns_before(%struct.rtx_def* %9, %struct.rtx_def* %10)
  call void @pop_topmost_sequence()
  %11 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %12
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_arglist(%union.tree_node* %arglist, ...) #0 {
entry:
  %arglist.addr = alloca %union.tree_node*, align 8
  %code = alloca i32, align 4
  %res = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store %union.tree_node* %arglist, %union.tree_node** %arglist.addr, align 8
  store i32 0, i32* %res, align 4
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %do.body
  %0 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 3
  %reg_save_area = load i8*, i8** %0
  %1 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %2 = bitcast i8* %1 to i32*
  %3 = add i32 %gp_offset, 8
  store i32 %3, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %do.body
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %4 = bitcast i8* %overflow_arg_area to i32*
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i32* [ %2, %vaarg.in_reg ], [ %4, %vaarg.in_mem ]
  %5 = load i32, i32* %vaarg.addr
  store i32 %5, i32* %code, align 4
  %6 = load i32, i32* %code, align 4
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
    i32 5, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %vaarg.end
  store i32 1, i32* %res, align 4
  br label %end

sw.bb.3:                                          ; preds = %vaarg.end
  %7 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %cmp = icmp eq %union.tree_node* %7, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %res, align 4
  br label %end

sw.default:                                       ; preds = %vaarg.end
  %8 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %cmp4 = icmp eq %union.tree_node* %8, null
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.default
  %9 = load i32, i32* %code, align 4
  %10 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %list = bitcast %union.tree_node* %10 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %11 = load %union.tree_node*, %union.tree_node** %value, align 8
  %common = bitcast %union.tree_node* %11 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %12 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common6 = bitcast %union.tree_node* %12 to %struct.tree_common*
  %code7 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common6, i32 0, i32 2
  %bf.load = load i32, i32* %code7, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp8 = icmp ne i32 %9, %bf.clear
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %sw.default
  br label %end

if.end:                                           ; preds = %lor.lhs.false
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end
  %13 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common10 = bitcast %union.tree_node* %13 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common10, i32 0, i32 0
  %14 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %14, %union.tree_node** %arglist.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br i1 true, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %end

end:                                              ; preds = %do.end, %if.then, %sw.bb.3, %sw.bb
  %arraydecay11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1112 = bitcast %struct.__va_list_tag* %arraydecay11 to i8*
  call void @llvm.va_end(i8* %arraydecay1112)
  %15 = load i32, i32* %res, align 4
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @expand_builtin_apply(%struct.rtx_def* %function, %struct.rtx_def* %arguments, %struct.rtx_def* %argsize) #0 {
entry:
  %function.addr = alloca %struct.rtx_def*, align 8
  %arguments.addr = alloca %struct.rtx_def*, align 8
  %argsize.addr = alloca %struct.rtx_def*, align 8
  %size = alloca i32, align 4
  %align = alloca i32, align 4
  %regno = alloca i32, align 4
  %mode = alloca i32, align 4
  %incoming_args = alloca %struct.rtx_def*, align 8
  %result = alloca %struct.rtx_def*, align 8
  %reg = alloca %struct.rtx_def*, align 8
  %dest = alloca %struct.rtx_def*, align 8
  %src = alloca %struct.rtx_def*, align 8
  %call_insn = alloca %struct.rtx_def*, align 8
  %old_stack_level = alloca %struct.rtx_def*, align 8
  %call_fusage = alloca %struct.rtx_def*, align 8
  %value = alloca %struct.rtx_def*, align 8
  %link = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %function, %struct.rtx_def** %function.addr, align 8
  store %struct.rtx_def* %arguments, %struct.rtx_def** %arguments.addr, align 8
  store %struct.rtx_def* %argsize, %struct.rtx_def** %argsize.addr, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %old_stack_level, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %call_fusage, align 8
  %call = call i32 @apply_result_size()
  %conv = sext i32 %call to i64
  %call1 = call %struct.rtx_def* @assign_stack_local(i32 51, i64 %conv, i32 -1)
  store %struct.rtx_def* %call1, %struct.rtx_def** %result, align 8
  %0 = load i32, i32* @target_flags, align 4
  %and = and i32 %0, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 5, i32 4
  %call2 = call %struct.rtx_def* @gen_reg_rtx(i32 %cond)
  store %struct.rtx_def* %call2, %struct.rtx_def** %incoming_args, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %incoming_args, align 8
  %2 = load i32, i32* @target_flags, align 4
  %and3 = and i32 %2, 33554432
  %tobool4 = icmp ne i32 %and3, 0
  %cond5 = select i1 %tobool4, i32 5, i32 4
  %3 = load %struct.rtx_def*, %struct.rtx_def** %arguments.addr, align 8
  %call6 = call %struct.rtx_def* @gen_rtx_MEM(i32 %cond5, %struct.rtx_def* %3)
  %call7 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %1, %struct.rtx_def* %call6)
  call void @emit_queue()
  call void @do_pending_stack_adjust()
  %4 = load %struct.function*, %struct.function** @cfun, align 8
  %expr = getelementptr inbounds %struct.function, %struct.function* %4, i32 0, i32 2
  %5 = load %struct.expr_status*, %struct.expr_status** %expr, align 8
  %x_inhibit_defer_pop = getelementptr inbounds %struct.expr_status, %struct.expr_status* %5, i32 0, i32 1
  %6 = load i32, i32* %x_inhibit_defer_pop, align 4
  %add = add nsw i32 %6, 1
  store i32 %add, i32* %x_inhibit_defer_pop, align 4
  call void @emit_stack_save(i32 0, %struct.rtx_def** %old_stack_level, %struct.rtx_def* null)
  %7 = load %struct.rtx_def*, %struct.rtx_def** %argsize.addr, align 8
  %call8 = call %struct.rtx_def* @allocate_dynamic_stack_space(%struct.rtx_def* %7, %struct.rtx_def* null, i32 8)
  store %struct.rtx_def* %call8, %struct.rtx_def** %dest, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %call9 = call %struct.rtx_def* @gen_rtx_MEM(i32 51, %struct.rtx_def* %8)
  store %struct.rtx_def* %call9, %struct.rtx_def** %dest, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %10 = load i32, i32* @target_flags, align 4
  %and10 = and i32 %10, 33554432
  %tobool11 = icmp ne i32 %and10, 0
  %cond12 = select i1 %tobool11, i32 64, i32 32
  call void @set_mem_align(%struct.rtx_def* %9, i32 %cond12)
  %11 = load %struct.rtx_def*, %struct.rtx_def** %incoming_args, align 8
  %call13 = call %struct.rtx_def* @gen_rtx_MEM(i32 51, %struct.rtx_def* %11)
  store %struct.rtx_def* %call13, %struct.rtx_def** %src, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %13 = load i32, i32* @target_flags, align 4
  %and14 = and i32 %13, 33554432
  %tobool15 = icmp ne i32 %and14, 0
  %cond16 = select i1 %tobool15, i32 64, i32 32
  call void @set_mem_align(%struct.rtx_def* %12, i32 %cond16)
  %14 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %argsize.addr, align 8
  %call17 = call %struct.rtx_def* @emit_block_move(%struct.rtx_def* %14, %struct.rtx_def* %15, %struct.rtx_def* %16)
  %call18 = call i32 @apply_args_size()
  %17 = load %struct.rtx_def*, %struct.rtx_def** %arguments.addr, align 8
  %call19 = call %struct.rtx_def* @gen_rtx_MEM(i32 51, %struct.rtx_def* %17)
  store %struct.rtx_def* %call19, %struct.rtx_def** %arguments.addr, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %arguments.addr, align 8
  %19 = load i32, i32* @target_flags, align 4
  %and20 = and i32 %19, 33554432
  %tobool21 = icmp ne i32 %and20, 0
  %cond22 = select i1 %tobool21, i32 64, i32 32
  call void @set_mem_align(%struct.rtx_def* %18, i32 %cond22)
  %20 = load i32, i32* @target_flags, align 4
  %and23 = and i32 %20, 33554432
  %tobool24 = icmp ne i32 %and23, 0
  %cond25 = select i1 %tobool24, i32 5, i32 4
  %idxprom = sext i32 %cond25 to i64
  %arrayidx = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %21 = load i8, i8* %arrayidx, align 1
  %conv26 = zext i8 %21 to i32
  store i32 %conv26, i32* %size, align 4
  %22 = load %struct.rtx_def*, %struct.rtx_def** @struct_value_rtx, align 8
  %tobool27 = icmp ne %struct.rtx_def* %22, null
  br i1 %tobool27, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %23 = load i32, i32* @target_flags, align 4
  %and28 = and i32 %23, 33554432
  %tobool29 = icmp ne i32 %and28, 0
  %cond30 = select i1 %tobool29, i32 5, i32 4
  %idxprom31 = sext i32 %cond30 to i64
  %arrayidx32 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom31
  %24 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %24 to i32
  %25 = load i32, i32* %size, align 4
  %add34 = add nsw i32 %25, %conv33
  store i32 %add34, i32* %size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %regno, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %26 = load i32, i32* %regno, align 4
  %cmp = icmp slt i32 %26, 53
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %regno, align 4
  %idxprom36 = sext i32 %27 to i64
  %arrayidx37 = getelementptr inbounds [53 x i32], [53 x i32]* @apply_args_mode, i32 0, i64 %idxprom36
  %28 = load i32, i32* %arrayidx37, align 4
  store i32 %28, i32* %mode, align 4
  %cmp38 = icmp ne i32 %28, 0
  br i1 %cmp38, label %if.then.40, label %if.end.56

if.then.40:                                       ; preds = %for.body
  %29 = load i32, i32* %mode, align 4
  %call41 = call i32 @get_mode_alignment(i32 %29)
  %div = udiv i32 %call41, 8
  store i32 %div, i32* %align, align 4
  %30 = load i32, i32* %size, align 4
  %31 = load i32, i32* %align, align 4
  %rem = srem i32 %30, %31
  %cmp42 = icmp ne i32 %rem, 0
  br i1 %cmp42, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %if.then.40
  %32 = load i32, i32* %size, align 4
  %33 = load i32, i32* %align, align 4
  %add45 = add nsw i32 %32, %33
  %sub = sub nsw i32 %add45, 1
  %34 = load i32, i32* %align, align 4
  %div46 = sdiv i32 %sub, %34
  %35 = load i32, i32* %align, align 4
  %mul = mul nsw i32 %div46, %35
  store i32 %mul, i32* %size, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.44, %if.then.40
  %36 = load i32, i32* %mode, align 4
  %37 = load i32, i32* %regno, align 4
  %call48 = call %struct.rtx_def* @gen_rtx_REG(i32 %36, i32 %37)
  store %struct.rtx_def* %call48, %struct.rtx_def** %reg, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %arguments.addr, align 8
  %40 = load i32, i32* %mode, align 4
  %41 = load i32, i32* %size, align 4
  %conv49 = sext i32 %41 to i64
  %call50 = call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %39, i32 %40, i64 %conv49, i32 1, i32 1)
  %call51 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %38, %struct.rtx_def* %call50)
  %42 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  call void @use_reg(%struct.rtx_def** %call_fusage, %struct.rtx_def* %42)
  %43 = load i32, i32* %mode, align 4
  %idxprom52 = sext i32 %43 to i64
  %arrayidx53 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom52
  %44 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %44 to i32
  %45 = load i32, i32* %size, align 4
  %add55 = add nsw i32 %45, %conv54
  store i32 %add55, i32* %size, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.47, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.56
  %46 = load i32, i32* %regno, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %regno, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %47 = load i32, i32* @target_flags, align 4
  %and57 = and i32 %47, 33554432
  %tobool58 = icmp ne i32 %and57, 0
  %cond59 = select i1 %tobool58, i32 5, i32 4
  %idxprom60 = sext i32 %cond59 to i64
  %arrayidx61 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom60
  %48 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %48 to i32
  store i32 %conv62, i32* %size, align 4
  %49 = load %struct.rtx_def*, %struct.rtx_def** @struct_value_rtx, align 8
  %tobool63 = icmp ne %struct.rtx_def* %49, null
  br i1 %tobool63, label %if.then.64, label %if.end.87

if.then.64:                                       ; preds = %for.end
  %50 = load i32, i32* @target_flags, align 4
  %and65 = and i32 %50, 33554432
  %tobool66 = icmp ne i32 %and65, 0
  %cond67 = select i1 %tobool66, i32 5, i32 4
  %call68 = call %struct.rtx_def* @gen_reg_rtx(i32 %cond67)
  store %struct.rtx_def* %call68, %struct.rtx_def** %value, align 8
  %51 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  %52 = load %struct.rtx_def*, %struct.rtx_def** %arguments.addr, align 8
  %53 = load i32, i32* @target_flags, align 4
  %and69 = and i32 %53, 33554432
  %tobool70 = icmp ne i32 %and69, 0
  %cond71 = select i1 %tobool70, i32 5, i32 4
  %54 = load i32, i32* %size, align 4
  %conv72 = sext i32 %54 to i64
  %call73 = call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %52, i32 %cond71, i64 %conv72, i32 1, i32 1)
  %call74 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %51, %struct.rtx_def* %call73)
  %55 = load %struct.rtx_def*, %struct.rtx_def** @struct_value_rtx, align 8
  %56 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  %call75 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %55, %struct.rtx_def* %56)
  %57 = load %struct.rtx_def*, %struct.rtx_def** @struct_value_rtx, align 8
  %58 = bitcast %struct.rtx_def* %57 to i32*
  %bf.load = load i32, i32* %58, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp76 = icmp eq i32 %bf.clear, 61
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.then.64
  %59 = load %struct.rtx_def*, %struct.rtx_def** @struct_value_rtx, align 8
  call void @use_reg(%struct.rtx_def** %call_fusage, %struct.rtx_def* %59)
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.78, %if.then.64
  %60 = load i32, i32* @target_flags, align 4
  %and80 = and i32 %60, 33554432
  %tobool81 = icmp ne i32 %and80, 0
  %cond82 = select i1 %tobool81, i32 5, i32 4
  %idxprom83 = sext i32 %cond82 to i64
  %arrayidx84 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom83
  %61 = load i8, i8* %arrayidx84, align 1
  %conv85 = zext i8 %61 to i32
  %62 = load i32, i32* %size, align 4
  %add86 = add nsw i32 %62, %conv85
  store i32 %add86, i32* %size, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.79, %for.end
  %63 = load %struct.rtx_def*, %struct.rtx_def** %function.addr, align 8
  %call88 = call %struct.rtx_def* @prepare_call_address(%struct.rtx_def* %63, %union.tree_node* null, %struct.rtx_def** %call_fusage, i32 0, i32 0)
  store %struct.rtx_def* %call88, %struct.rtx_def** %function.addr, align 8
  %64 = load %struct.rtx_def*, %struct.rtx_def** %function.addr, align 8
  %65 = bitcast %struct.rtx_def* %64 to i32*
  %bf.load89 = load i32, i32* %65, align 8
  %bf.clear90 = and i32 %bf.load89, 65535
  %cmp91 = icmp ne i32 %bf.clear90, 68
  br i1 %cmp91, label %if.then.93, label %if.end.95

if.then.93:                                       ; preds = %if.end.87
  %66 = load %struct.rtx_def*, %struct.rtx_def** %function.addr, align 8
  %call94 = call %struct.rtx_def* @memory_address(i32 2, %struct.rtx_def* %66)
  store %struct.rtx_def* %call94, %struct.rtx_def** %function.addr, align 8
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.93, %if.end.87
  %67 = load %struct.rtx_def*, %struct.rtx_def** %function.addr, align 8
  %call96 = call %struct.rtx_def* @gen_rtx_MEM(i32 2, %struct.rtx_def* %67)
  %68 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %69 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %call97 = call %struct.rtx_def* @result_vector(i32 1, %struct.rtx_def* %69)
  %call98 = call %struct.rtx_def* @gen_untyped_call(%struct.rtx_def* %call96, %struct.rtx_def* %68, %struct.rtx_def* %call97)
  %call99 = call %struct.rtx_def* @emit_call_insn(%struct.rtx_def* %call98)
  %call100 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call100, %struct.rtx_def** %call_insn, align 8
  br label %for.cond.101

for.cond.101:                                     ; preds = %for.inc.108, %if.end.95
  %70 = load %struct.rtx_def*, %struct.rtx_def** %call_insn, align 8
  %tobool102 = icmp ne %struct.rtx_def* %70, null
  br i1 %tobool102, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.101
  %71 = load %struct.rtx_def*, %struct.rtx_def** %call_insn, align 8
  %72 = bitcast %struct.rtx_def* %71 to i32*
  %bf.load103 = load i32, i32* %72, align 8
  %bf.clear104 = and i32 %bf.load103, 65535
  %cmp105 = icmp ne i32 %bf.clear104, 34
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.101
  %73 = phi i1 [ false, %for.cond.101 ], [ %cmp105, %land.rhs ]
  br i1 %73, label %for.body.107, label %for.end.110

for.body.107:                                     ; preds = %land.end
  br label %for.inc.108

for.inc.108:                                      ; preds = %for.body.107
  %74 = load %struct.rtx_def*, %struct.rtx_def** %call_insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %74, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx109 to %struct.rtx_def**
  %75 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %75, %struct.rtx_def** %call_insn, align 8
  br label %for.cond.101

for.end.110:                                      ; preds = %land.end
  %76 = load %struct.rtx_def*, %struct.rtx_def** %call_insn, align 8
  %tobool111 = icmp ne %struct.rtx_def* %76, null
  br i1 %tobool111, label %if.end.113, label %if.then.112

if.then.112:                                      ; preds = %for.end.110
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.100, i32 0, i32 0), i32 1306, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.expand_builtin_apply, i32 0, i32 0)) #5
  unreachable

if.end.113:                                       ; preds = %for.end.110
  %77 = load %struct.rtx_def*, %struct.rtx_def** %call_insn, align 8
  %fld114 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %77, i32 0, i32 1
  %arrayidx115 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld114, i32 0, i64 7
  %rtx116 = bitcast %union.rtunion_def* %arrayidx115 to %struct.rtx_def**
  %78 = load %struct.rtx_def*, %struct.rtx_def** %rtx116, align 8
  %tobool117 = icmp ne %struct.rtx_def* %78, null
  br i1 %tobool117, label %if.then.118, label %if.else

if.then.118:                                      ; preds = %if.end.113
  %79 = load %struct.rtx_def*, %struct.rtx_def** %call_insn, align 8
  %fld119 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %79, i32 0, i32 1
  %arrayidx120 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld119, i32 0, i64 7
  %rtx121 = bitcast %union.rtunion_def* %arrayidx120 to %struct.rtx_def**
  %80 = load %struct.rtx_def*, %struct.rtx_def** %rtx121, align 8
  store %struct.rtx_def* %80, %struct.rtx_def** %link, align 8
  br label %for.cond.122

for.cond.122:                                     ; preds = %for.inc.129, %if.then.118
  %81 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld123 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %81, i32 0, i32 1
  %arrayidx124 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld123, i32 0, i64 1
  %rtx125 = bitcast %union.rtunion_def* %arrayidx124 to %struct.rtx_def**
  %82 = load %struct.rtx_def*, %struct.rtx_def** %rtx125, align 8
  %cmp126 = icmp ne %struct.rtx_def* %82, null
  br i1 %cmp126, label %for.body.128, label %for.end.133

for.body.128:                                     ; preds = %for.cond.122
  br label %for.inc.129

for.inc.129:                                      ; preds = %for.body.128
  %83 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld130 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %83, i32 0, i32 1
  %arrayidx131 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld130, i32 0, i64 1
  %rtx132 = bitcast %union.rtunion_def* %arrayidx131 to %struct.rtx_def**
  %84 = load %struct.rtx_def*, %struct.rtx_def** %rtx132, align 8
  store %struct.rtx_def* %84, %struct.rtx_def** %link, align 8
  br label %for.cond.122

for.end.133:                                      ; preds = %for.cond.122
  %85 = load %struct.rtx_def*, %struct.rtx_def** %call_fusage, align 8
  %86 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld134 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %86, i32 0, i32 1
  %arrayidx135 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld134, i32 0, i64 1
  %rtx136 = bitcast %union.rtunion_def* %arrayidx135 to %struct.rtx_def**
  store %struct.rtx_def* %85, %struct.rtx_def** %rtx136, align 8
  br label %if.end.140

if.else:                                          ; preds = %if.end.113
  %87 = load %struct.rtx_def*, %struct.rtx_def** %call_fusage, align 8
  %88 = load %struct.rtx_def*, %struct.rtx_def** %call_insn, align 8
  %fld137 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %88, i32 0, i32 1
  %arrayidx138 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld137, i32 0, i64 7
  %rtx139 = bitcast %union.rtunion_def* %arrayidx138 to %struct.rtx_def**
  store %struct.rtx_def* %87, %struct.rtx_def** %rtx139, align 8
  br label %if.end.140

if.end.140:                                       ; preds = %if.else, %for.end.133
  %89 = load %struct.rtx_def*, %struct.rtx_def** %old_stack_level, align 8
  call void @emit_stack_restore(i32 0, %struct.rtx_def* %89, %struct.rtx_def* null)
  %90 = load %struct.function*, %struct.function** @cfun, align 8
  %expr141 = getelementptr inbounds %struct.function, %struct.function* %90, i32 0, i32 2
  %91 = load %struct.expr_status*, %struct.expr_status** %expr141, align 8
  %x_inhibit_defer_pop142 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %91, i32 0, i32 1
  %92 = load i32, i32* %x_inhibit_defer_pop142, align 4
  %sub143 = sub nsw i32 %92, 1
  store i32 %sub143, i32* %x_inhibit_defer_pop142, align 4
  %93 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %fld144 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %93, i32 0, i32 1
  %arrayidx145 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld144, i32 0, i64 0
  %rtx146 = bitcast %union.rtunion_def* %arrayidx145 to %struct.rtx_def**
  %94 = load %struct.rtx_def*, %struct.rtx_def** %rtx146, align 8
  %call147 = call %struct.rtx_def* @copy_addr_to_reg(%struct.rtx_def* %94)
  ret %struct.rtx_def* %call147
}

; Function Attrs: nounwind uwtable
define internal void @expand_builtin_return(%struct.rtx_def* %result) #0 {
entry:
  %result.addr = alloca %struct.rtx_def*, align 8
  %size = alloca i32, align 4
  %align = alloca i32, align 4
  %regno = alloca i32, align 4
  %mode = alloca i32, align 4
  %reg = alloca %struct.rtx_def*, align 8
  %call_fusage = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %result, %struct.rtx_def** %result.addr, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %call_fusage, align 8
  %call = call i32 @apply_result_size()
  %0 = load %struct.rtx_def*, %struct.rtx_def** %result.addr, align 8
  %call1 = call %struct.rtx_def* @gen_rtx_MEM(i32 51, %struct.rtx_def* %0)
  store %struct.rtx_def* %call1, %struct.rtx_def** %result.addr, align 8
  store i32 0, i32* %size, align 4
  store i32 0, i32* %regno, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %regno, align 4
  %cmp = icmp slt i32 %1, 53
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %regno, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [53 x i32], [53 x i32]* @apply_result_mode, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  store i32 %3, i32* %mode, align 4
  %cmp2 = icmp ne i32 %3, 0
  br i1 %cmp2, label %if.then, label %if.end.17

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %mode, align 4
  %call3 = call i32 @get_mode_alignment(i32 %4)
  %div = udiv i32 %call3, 8
  store i32 %div, i32* %align, align 4
  %5 = load i32, i32* %size, align 4
  %6 = load i32, i32* %align, align 4
  %rem = srem i32 %5, %6
  %cmp4 = icmp ne i32 %rem, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %7 = load i32, i32* %size, align 4
  %8 = load i32, i32* %align, align 4
  %add = add nsw i32 %7, %8
  %sub = sub nsw i32 %add, 1
  %9 = load i32, i32* %align, align 4
  %div6 = sdiv i32 %sub, %9
  %10 = load i32, i32* %align, align 4
  %mul = mul nsw i32 %div6, %10
  store i32 %mul, i32* %size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %11 = load i32, i32* %mode, align 4
  %12 = load i32, i32* %regno, align 4
  %call7 = call %struct.rtx_def* @gen_rtx_REG(i32 %11, i32 %12)
  store %struct.rtx_def* %call7, %struct.rtx_def** %reg, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %result.addr, align 8
  %15 = load i32, i32* %mode, align 4
  %16 = load i32, i32* %size, align 4
  %conv = sext i32 %16 to i64
  %call8 = call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %14, i32 %15, i64 %conv, i32 1, i32 1)
  %call9 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %13, %struct.rtx_def* %call8)
  %17 = load %struct.rtx_def*, %struct.rtx_def** %call_fusage, align 8
  call void @push_to_sequence(%struct.rtx_def* %17)
  %18 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %call10 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 48, i32 0, %struct.rtx_def* %18)
  %call11 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call10)
  %call12 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call12, %struct.rtx_def** %call_fusage, align 8
  call void @end_sequence()
  %19 = load i32, i32* %mode, align 4
  %idxprom13 = sext i32 %19 to i64
  %arrayidx14 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom13
  %20 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %20 to i32
  %21 = load i32, i32* %size, align 4
  %add16 = add nsw i32 %21, %conv15
  store i32 %add16, i32* %size, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %22 = load i32, i32* %regno, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %regno, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct.rtx_def*, %struct.rtx_def** %call_fusage, align 8
  %call18 = call %struct.rtx_def* @emit_insns(%struct.rtx_def* %23)
  call void @expand_null_return()
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @expand_builtin_args_info(%union.tree_node* %exp) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %exp.addr = alloca %union.tree_node*, align 8
  %arglist = alloca %union.tree_node*, align 8
  %nwords = alloca i32, align 4
  %word_ptr = alloca i32*, align 8
  %wordnum = alloca i64, align 8
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp1 = bitcast %union.tree_node* %0 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp1, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 1
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %1, %union.tree_node** %arglist, align 8
  store i32 7, i32* %nwords, align 4
  %2 = load %struct.function*, %struct.function** @cfun, align 8
  %args_info = getelementptr inbounds %struct.function, %struct.function* %2, i32 0, i32 13
  %3 = bitcast %struct.ix86_args* %args_info to i32*
  store i32* %3, i32** %word_ptr, align 8
  %4 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %cmp = icmp ne %union.tree_node* %4, null
  br i1 %cmp, label %if.then, label %if.else.15

if.then:                                          ; preds = %entry
  %5 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %list = bitcast %union.tree_node* %5 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %6 = load %union.tree_node*, %union.tree_node** %value, align 8
  %call = call i32 @host_integerp(%union.tree_node* %6, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then.2

if.then.2:                                        ; preds = %if.then
  call void (i8*, ...) @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.109, i32 0, i32 0))
  br label %if.end.14

if.else:                                          ; preds = %if.then
  %7 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %list3 = bitcast %union.tree_node* %7 to %struct.tree_list*
  %value4 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list3, i32 0, i32 2
  %8 = load %union.tree_node*, %union.tree_node** %value4, align 8
  %call5 = call i64 @tree_low_cst(%union.tree_node* %8, i32 0)
  store i64 %call5, i64* %wordnum, align 8
  %9 = load i64, i64* %wordnum, align 8
  %cmp6 = icmp slt i64 %9, 0
  br i1 %cmp6, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %10 = load i64, i64* %wordnum, align 8
  %11 = load i32, i32* %nwords, align 4
  %conv = sext i32 %11 to i64
  %cmp7 = icmp sge i64 %10, %conv
  br i1 %cmp7, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %lor.lhs.false, %if.else
  call void (i8*, ...) @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.110, i32 0, i32 0))
  br label %if.end

if.else.10:                                       ; preds = %lor.lhs.false
  %12 = load i64, i64* %wordnum, align 8
  %13 = load i32*, i32** %word_ptr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %13, i64 %12
  %14 = load i32, i32* %arrayidx11, align 4
  %conv12 = sext i32 %14 to i64
  %call13 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv12)
  store %struct.rtx_def* %call13, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %if.then.9
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then.2
  br label %if.end.16

if.else.15:                                       ; preds = %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.111, i32 0, i32 0))
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.15, %if.end.14
  %15 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.else.10
  %16 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %16
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @expand_builtin_next_arg(%union.tree_node* %arglist) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %arglist.addr = alloca %union.tree_node*, align 8
  %fntype = alloca %union.tree_node*, align 8
  %last_parm = alloca %union.tree_node*, align 8
  %arg = alloca %union.tree_node*, align 8
  store %union.tree_node* %arglist, %union.tree_node** %arglist.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %1 = load %union.tree_node*, %union.tree_node** %type, align 8
  store %union.tree_node* %1, %union.tree_node** %fntype, align 8
  %2 = load %union.tree_node*, %union.tree_node** %fntype, align 8
  %type1 = bitcast %union.tree_node* %2 to %struct.tree_type*
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i32 0, i32 1
  %3 = load %union.tree_node*, %union.tree_node** %values, align 8
  %cmp = icmp eq %union.tree_node* %3, null
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %union.tree_node*, %union.tree_node** %fntype, align 8
  %type2 = bitcast %union.tree_node* %4 to %struct.tree_type*
  %values3 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type2, i32 0, i32 1
  %5 = load %union.tree_node*, %union.tree_node** %values3, align 8
  %call = call %union.tree_node* @tree_last(%union.tree_node* %5)
  %list = bitcast %union.tree_node* %call to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %6 = load %union.tree_node*, %union.tree_node** %value, align 8
  %7 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 27), align 8
  %cmp4 = icmp eq %union.tree_node* %6, %7
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %8 = load %struct.function*, %struct.function** @cfun, align 8
  %varargs = getelementptr inbounds %struct.function, %struct.function* %8, i32 0, i32 56
  %9 = bitcast i24* %varargs to i32*
  %bf.load = load i32, i32* %9, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void (i8*, ...) @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.112, i32 0, i32 0))
  %10 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %11 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %tobool5 = icmp ne %union.tree_node* %11, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %12 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %decl = bitcast %union.tree_node* %12 to %struct.tree_decl*
  %arguments = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 10
  %13 = load %union.tree_node*, %union.tree_node** %arguments, align 8
  %call7 = call %union.tree_node* @tree_last(%union.tree_node* %13)
  store %union.tree_node* %call7, %union.tree_node** %last_parm, align 8
  %14 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %list8 = bitcast %union.tree_node* %14 to %struct.tree_list*
  %value9 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list8, i32 0, i32 2
  %15 = load %union.tree_node*, %union.tree_node** %value9, align 8
  store %union.tree_node* %15, %union.tree_node** %arg, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.6
  %16 = load %union.tree_node*, %union.tree_node** %arg, align 8
  %common10 = bitcast %union.tree_node* %16 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common10, i32 0, i32 2
  %bf.load11 = load i32, i32* %code, align 8
  %bf.clear12 = and i32 %bf.load11, 255
  %cmp13 = icmp eq i32 %bf.clear12, 115
  br i1 %cmp13, label %lor.end, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %while.cond
  %17 = load %union.tree_node*, %union.tree_node** %arg, align 8
  %common15 = bitcast %union.tree_node* %17 to %struct.tree_common*
  %code16 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common15, i32 0, i32 2
  %bf.load17 = load i32, i32* %code16, align 8
  %bf.clear18 = and i32 %bf.load17, 255
  %cmp19 = icmp eq i32 %bf.clear18, 114
  br i1 %cmp19, label %lor.end, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.14
  %18 = load %union.tree_node*, %union.tree_node** %arg, align 8
  %common21 = bitcast %union.tree_node* %18 to %struct.tree_common*
  %code22 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common21, i32 0, i32 2
  %bf.load23 = load i32, i32* %code22, align 8
  %bf.clear24 = and i32 %bf.load23, 255
  %cmp25 = icmp eq i32 %bf.clear24, 116
  br i1 %cmp25, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.20
  %19 = load %union.tree_node*, %union.tree_node** %arg, align 8
  %common26 = bitcast %union.tree_node* %19 to %struct.tree_common*
  %code27 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common26, i32 0, i32 2
  %bf.load28 = load i32, i32* %code27, align 8
  %bf.clear29 = and i32 %bf.load28, 255
  %cmp30 = icmp eq i32 %bf.clear29, 41
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.20, %lor.lhs.false.14, %while.cond
  %20 = phi i1 [ true, %lor.lhs.false.20 ], [ true, %lor.lhs.false.14 ], [ true, %while.cond ], [ %cmp30, %lor.rhs ]
  br i1 %20, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %21 = load %union.tree_node*, %union.tree_node** %arg, align 8
  %exp = bitcast %union.tree_node* %21 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %22 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %22, %union.tree_node** %arg, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %23 = load %union.tree_node*, %union.tree_node** %arg, align 8
  %24 = load %union.tree_node*, %union.tree_node** %last_parm, align 8
  %cmp31 = icmp ne %union.tree_node* %23, %24
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %while.end
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.113, i32 0, i32 0))
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %while.end
  br label %if.end.41

if.else:                                          ; preds = %if.end
  %25 = load %struct.function*, %struct.function** @cfun, align 8
  %varargs34 = getelementptr inbounds %struct.function, %struct.function* %25, i32 0, i32 56
  %26 = bitcast i24* %varargs34 to i32*
  %bf.load35 = load i32, i32* %26, align 8
  %bf.lshr36 = lshr i32 %bf.load35, 16
  %bf.clear37 = and i32 %bf.lshr36, 1
  %tobool38 = icmp ne i32 %bf.clear37, 0
  br i1 %tobool38, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %if.else
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.114, i32 0, i32 0))
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.else
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end.33
  %27 = load i32, i32* @target_flags, align 4
  %and = and i32 %27, 33554432
  %tobool42 = icmp ne i32 %and, 0
  %cond = select i1 %tobool42, i32 5, i32 4
  %28 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  %29 = load %struct.function*, %struct.function** @cfun, align 8
  %internal_arg_pointer = getelementptr inbounds %struct.function, %struct.function* %29, i32 0, i32 15
  %30 = load %struct.rtx_def*, %struct.rtx_def** %internal_arg_pointer, align 8
  %31 = load %struct.function*, %struct.function** @cfun, align 8
  %arg_offset_rtx = getelementptr inbounds %struct.function, %struct.function* %31, i32 0, i32 12
  %32 = load %struct.rtx_def*, %struct.rtx_def** %arg_offset_rtx, align 8
  %call43 = call %struct.rtx_def* @expand_binop(i32 %cond, %struct.optab* %28, %struct.rtx_def* %30, %struct.rtx_def* %32, %struct.rtx_def* null, i32 0, i32 3)
  store %struct.rtx_def* %call43, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.41, %if.then
  %33 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %33
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @expand_builtin_classify_type(%union.tree_node* %arglist) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %arglist.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %arglist, %union.tree_node** %arglist.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %cmp = icmp ne %union.tree_node* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %list = bitcast %union.tree_node* %1 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %2 = load %union.tree_node*, %union.tree_node** %value, align 8
  %common = bitcast %union.tree_node* %2 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %3 = load %union.tree_node*, %union.tree_node** %type, align 8
  %call = call i32 @type_to_class(%union.tree_node* %3)
  %conv = sext i32 %call to i64
  %call1 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv)
  store %struct.rtx_def* %call1, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 -1)
  store %struct.rtx_def* %call2, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %4
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @expand_builtin_constant_p(%union.tree_node* %exp) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %exp.addr = alloca %union.tree_node*, align 8
  %arglist = alloca %union.tree_node*, align 8
  %value_mode = alloca i32, align 4
  %tmp = alloca %struct.rtx_def*, align 8
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp1 = bitcast %union.tree_node* %0 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp1, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 1
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %1, %union.tree_node** %arglist, align 8
  %2 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common = bitcast %union.tree_node* %2 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %3 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type2 = bitcast %union.tree_node* %3 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type2, i32 0, i32 6
  %bf.load = load i32, i32* %mode, align 4
  %bf.lshr = lshr i32 %bf.load, 9
  %bf.clear = and i32 %bf.lshr, 127
  store i32 %bf.clear, i32* %value_mode, align 4
  %4 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %cmp = icmp eq %union.tree_node* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %list = bitcast %union.tree_node* %6 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %7 = load %union.tree_node*, %union.tree_node** %value, align 8
  store %union.tree_node* %7, %union.tree_node** %arglist, align 8
  %8 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %call = call %struct.rtx_def* @expand_expr(%union.tree_node* %8, %struct.rtx_def* null, i32 0, i32 0)
  store %struct.rtx_def* %call, %struct.rtx_def** %tmp, align 8
  %9 = load i32, i32* %value_mode, align 4
  %10 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %call3 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 140, i32 %9, %struct.rtx_def* %10)
  store %struct.rtx_def* %call3, %struct.rtx_def** %tmp, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %12
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @expand_builtin_frame_address(%union.tree_node* %exp) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %exp.addr = alloca %union.tree_node*, align 8
  %fndecl = alloca %union.tree_node*, align 8
  %arglist = alloca %union.tree_node*, align 8
  %tem = alloca %struct.rtx_def*, align 8
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp1 = bitcast %union.tree_node* %0 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp1, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %exp2 = bitcast %union.tree_node* %1 to %struct.tree_exp*
  %operands3 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp2, i32 0, i32 2
  %arrayidx4 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands3, i32 0, i64 0
  %2 = load %union.tree_node*, %union.tree_node** %arrayidx4, align 8
  store %union.tree_node* %2, %union.tree_node** %fndecl, align 8
  %3 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp5 = bitcast %union.tree_node* %3 to %struct.tree_exp*
  %operands6 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp5, i32 0, i32 2
  %arrayidx7 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands6, i32 0, i64 1
  %4 = load %union.tree_node*, %union.tree_node** %arrayidx7, align 8
  store %union.tree_node* %4, %union.tree_node** %arglist, align 8
  %5 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %cmp = icmp eq %union.tree_node* %5, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %retval
  br label %return

if.else:                                          ; preds = %entry
  %7 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %list = bitcast %union.tree_node* %7 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %8 = load %union.tree_node*, %union.tree_node** %value, align 8
  %call = call i32 @host_integerp(%union.tree_node* %8, i32 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else.12, label %if.then.8

if.then.8:                                        ; preds = %if.else
  %9 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %decl = bitcast %union.tree_node* %9 to %struct.tree_decl*
  %u1 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 6
  %f = bitcast %union.anon* %u1 to i32*
  %10 = load i32, i32* %f, align 4
  %cmp9 = icmp eq i32 %10, 52
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.then.8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.115, i32 0, i32 0))
  br label %if.end

if.else.11:                                       ; preds = %if.then.8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.116, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else.11, %if.then.10
  %11 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %retval
  br label %return

if.else.12:                                       ; preds = %if.else
  %12 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %decl13 = bitcast %union.tree_node* %12 to %struct.tree_decl*
  %u114 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl13, i32 0, i32 6
  %f15 = bitcast %union.anon* %u114 to i32*
  %13 = load i32, i32* %f15, align 4
  %14 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %list16 = bitcast %union.tree_node* %14 to %struct.tree_list*
  %value17 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list16, i32 0, i32 2
  %15 = load %union.tree_node*, %union.tree_node** %value17, align 8
  %call18 = call i64 @tree_low_cst(%union.tree_node* %15, i32 1)
  %conv = trunc i64 %call18 to i32
  %16 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 4), align 8
  %call19 = call %struct.rtx_def* @expand_builtin_return_addr(i32 %13, i32 %conv, %struct.rtx_def* %16)
  store %struct.rtx_def* %call19, %struct.rtx_def** %tem, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %cmp20 = icmp eq %struct.rtx_def* %17, null
  br i1 %cmp20, label %if.then.22, label %if.end.31

if.then.22:                                       ; preds = %if.else.12
  %18 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %decl23 = bitcast %union.tree_node* %18 to %struct.tree_decl*
  %u124 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl23, i32 0, i32 6
  %f25 = bitcast %union.anon* %u124 to i32*
  %19 = load i32, i32* %f25, align 4
  %cmp26 = icmp eq i32 %19, 52
  br i1 %cmp26, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %if.then.22
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.117, i32 0, i32 0))
  br label %if.end.30

if.else.29:                                       ; preds = %if.then.22
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.118, i32 0, i32 0))
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.29, %if.then.28
  %20 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %20, %struct.rtx_def** %retval
  br label %return

if.end.31:                                        ; preds = %if.else.12
  %21 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %decl32 = bitcast %union.tree_node* %21 to %struct.tree_decl*
  %u133 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl32, i32 0, i32 6
  %f34 = bitcast %union.anon* %u133 to i32*
  %22 = load i32, i32* %f34, align 4
  %cmp35 = icmp eq i32 %22, 52
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.31
  %23 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  store %struct.rtx_def* %23, %struct.rtx_def** %retval
  br label %return

if.end.38:                                        ; preds = %if.end.31
  %24 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load = load i32, i32* %25, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp39 = icmp ne i32 %bf.clear, 61
  br i1 %cmp39, label %land.lhs.true, label %if.end.82

land.lhs.true:                                    ; preds = %if.end.38
  %26 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load41 = load i32, i32* %27, align 8
  %bf.clear42 = and i32 %bf.load41, 65535
  %cmp43 = icmp eq i32 %bf.clear42, 67
  br i1 %cmp43, label %if.end.82, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %28 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load45 = load i32, i32* %29, align 8
  %bf.clear46 = and i32 %bf.load45, 65535
  %cmp47 = icmp eq i32 %bf.clear46, 68
  br i1 %cmp47, label %if.end.82, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %lor.lhs.false
  %30 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load50 = load i32, i32* %31, align 8
  %bf.clear51 = and i32 %bf.load50, 65535
  %cmp52 = icmp eq i32 %bf.clear51, 54
  br i1 %cmp52, label %if.end.82, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %lor.lhs.false.49
  %32 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load55 = load i32, i32* %33, align 8
  %bf.clear56 = and i32 %bf.load55, 65535
  %cmp57 = icmp eq i32 %bf.clear56, 55
  br i1 %cmp57, label %if.end.82, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %lor.lhs.false.54
  %34 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load60 = load i32, i32* %35, align 8
  %bf.clear61 = and i32 %bf.load60, 65535
  %cmp62 = icmp eq i32 %bf.clear61, 58
  br i1 %cmp62, label %if.end.82, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %lor.lhs.false.59
  %36 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load65 = load i32, i32* %37, align 8
  %bf.clear66 = and i32 %bf.load65, 65535
  %cmp67 = icmp eq i32 %bf.clear66, 134
  br i1 %cmp67, label %if.end.82, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %lor.lhs.false.64
  %38 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %39 = bitcast %struct.rtx_def* %38 to i32*
  %bf.load70 = load i32, i32* %39, align 8
  %bf.clear71 = and i32 %bf.load70, 65535
  %cmp72 = icmp eq i32 %bf.clear71, 56
  br i1 %cmp72, label %if.end.82, label %lor.lhs.false.74

lor.lhs.false.74:                                 ; preds = %lor.lhs.false.69
  %40 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %41 = bitcast %struct.rtx_def* %40 to i32*
  %bf.load75 = load i32, i32* %41, align 8
  %bf.clear76 = and i32 %bf.load75, 65535
  %cmp77 = icmp eq i32 %bf.clear76, 140
  br i1 %cmp77, label %if.end.82, label %if.then.79

if.then.79:                                       ; preds = %lor.lhs.false.74
  %42 = load i32, i32* @target_flags, align 4
  %and = and i32 %42, 33554432
  %tobool80 = icmp ne i32 %and, 0
  %cond = select i1 %tobool80, i32 5, i32 4
  %43 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %call81 = call %struct.rtx_def* @copy_to_mode_reg(i32 %cond, %struct.rtx_def* %43)
  store %struct.rtx_def* %call81, %struct.rtx_def** %tem, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.79, %lor.lhs.false.74, %lor.lhs.false.69, %lor.lhs.false.64, %lor.lhs.false.59, %lor.lhs.false.54, %lor.lhs.false.49, %lor.lhs.false, %land.lhs.true, %if.end.38
  %44 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  store %struct.rtx_def* %44, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.82, %if.then.37, %if.end.30, %if.end, %if.then
  %45 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %45
}

declare void @make_decl_rtl(%union.tree_node*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @expand_builtin_alloca(%union.tree_node* %arglist, %struct.rtx_def* %target) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %arglist.addr = alloca %union.tree_node*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %op0 = alloca %struct.rtx_def*, align 8
  %result = alloca %struct.rtx_def*, align 8
  store %union.tree_node* %arglist, %union.tree_node** %arglist.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %call = call i32 (%union.tree_node*, ...) @validate_arglist(%union.tree_node* %0, i32 6, i32 5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %list = bitcast %union.tree_node* %1 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %2 = load %union.tree_node*, %union.tree_node** %value, align 8
  %call1 = call %struct.rtx_def* @expand_expr(%union.tree_node* %2, %struct.rtx_def* null, i32 0, i32 0)
  store %struct.rtx_def* %call1, %struct.rtx_def** %op0, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call2 = call %struct.rtx_def* @allocate_dynamic_stack_space(%struct.rtx_def* %3, %struct.rtx_def* %4, i32 8)
  store %struct.rtx_def* %call2, %struct.rtx_def** %result, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %6
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @expand_builtin_ffs(%union.tree_node* %arglist, %struct.rtx_def* %target, %struct.rtx_def* %subtarget) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %arglist.addr = alloca %union.tree_node*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %subtarget.addr = alloca %struct.rtx_def*, align 8
  %op0 = alloca %struct.rtx_def*, align 8
  store %union.tree_node* %arglist, %union.tree_node** %arglist.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %subtarget, %struct.rtx_def** %subtarget.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %call = call i32 (%union.tree_node*, ...) @validate_arglist(%union.tree_node* %0, i32 6, i32 5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %list = bitcast %union.tree_node* %1 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %2 = load %union.tree_node*, %union.tree_node** %value, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %subtarget.addr, align 8
  %call1 = call %struct.rtx_def* @expand_expr(%union.tree_node* %2, %struct.rtx_def* %3, i32 0, i32 0)
  store %struct.rtx_def* %call1, %struct.rtx_def** %op0, align 8
  %4 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %list2 = bitcast %union.tree_node* %4 to %struct.tree_list*
  %value3 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list2, i32 0, i32 2
  %5 = load %union.tree_node*, %union.tree_node** %value3, align 8
  %common = bitcast %union.tree_node* %5 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %6 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type4 = bitcast %union.tree_node* %6 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type4, i32 0, i32 6
  %bf.load = load i32, i32* %mode, align 4
  %bf.lshr = lshr i32 %bf.load, 9
  %bf.clear = and i32 %bf.lshr, 127
  %7 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 37), align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call5 = call %struct.rtx_def* @expand_unop(i32 %bf.clear, %struct.optab* %7, %struct.rtx_def* %8, %struct.rtx_def* %9, i32 1)
  store %struct.rtx_def* %call5, %struct.rtx_def** %target.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %10, null
  br i1 %cmp, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.100, i32 0, i32 0), i32 3325, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.expand_builtin_ffs, i32 0, i32 0)) #5
  unreachable

if.end.7:                                         ; preds = %if.end
  %11 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then
  %12 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %12
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @expand_builtin_strlen(%union.tree_node* %exp, %struct.rtx_def* %target) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %exp.addr = alloca %union.tree_node*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %arglist = alloca %union.tree_node*, align 8
  %value_mode = alloca i32, align 4
  %pat = alloca %struct.rtx_def*, align 8
  %src = alloca %union.tree_node*, align 8
  %align = alloca i32, align 4
  %result = alloca %struct.rtx_def*, align 8
  %src_reg = alloca %struct.rtx_def*, align 8
  %char_rtx = alloca %struct.rtx_def*, align 8
  %before_strlen = alloca %struct.rtx_def*, align 8
  %insn_mode = alloca i32, align 4
  %char_mode = alloca i32, align 4
  %icode = alloca i32, align 4
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp1 = bitcast %union.tree_node* %0 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp1, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 1
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %1, %union.tree_node** %arglist, align 8
  %2 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common = bitcast %union.tree_node* %2 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %3 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type2 = bitcast %union.tree_node* %3 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type2, i32 0, i32 6
  %bf.load = load i32, i32* %mode, align 4
  %bf.lshr = lshr i32 %bf.load, 9
  %bf.clear = and i32 %bf.lshr, 127
  store i32 %bf.clear, i32* %value_mode, align 4
  %4 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %call = call i32 (%union.tree_node*, ...) @validate_arglist(%union.tree_node* %4, i32 13, i32 5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.else:                                          ; preds = %entry
  %5 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %list = bitcast %union.tree_node* %5 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %6 = load %union.tree_node*, %union.tree_node** %value, align 8
  store %union.tree_node* %6, %union.tree_node** %src, align 8
  %7 = load %union.tree_node*, %union.tree_node** %src, align 8
  %call3 = call i32 @get_pointer_alignment(%union.tree_node* %7, i32 128)
  %div = sdiv i32 %call3, 8
  store i32 %div, i32* %align, align 4
  %8 = load i32, i32* %value_mode, align 4
  store i32 %8, i32* %insn_mode, align 4
  store i32 1317, i32* %icode, align 4
  %9 = load i32, i32* %align, align 4
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %while.cond

while.cond:                                       ; preds = %if.end.9, %if.end
  %10 = load i32, i32* %insn_mode, align 4
  %cmp5 = icmp ne i32 %10, 0
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i32, i32* %insn_mode, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 44), align 8
  %handlers = getelementptr inbounds %struct.optab, %struct.optab* %12, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers, i32 0, i64 %idxprom
  %insn_code = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx6, i32 0, i32 0
  %13 = load i32, i32* %insn_code, align 4
  store i32 %13, i32* %icode, align 4
  %14 = load i32, i32* %icode, align 4
  %cmp7 = icmp ne i32 %14, 1317
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %while.body
  br label %while.end

if.end.9:                                         ; preds = %while.body
  %15 = load i32, i32* %insn_mode, align 4
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom10
  %16 = load i8, i8* %arrayidx11, align 1
  %conv = zext i8 %16 to i32
  store i32 %conv, i32* %insn_mode, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then.8, %while.cond
  %17 = load i32, i32* %insn_mode, align 4
  %cmp12 = icmp eq i32 %17, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %while.end
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.15:                                        ; preds = %while.end
  %18 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %result, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %cmp16 = icmp ne %struct.rtx_def* %19, null
  br i1 %cmp16, label %land.lhs.true, label %if.then.32

land.lhs.true:                                    ; preds = %if.end.15
  %20 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load18 = load i32, i32* %21, align 8
  %bf.clear19 = and i32 %bf.load18, 65535
  %cmp20 = icmp eq i32 %bf.clear19, 61
  br i1 %cmp20, label %land.lhs.true.22, label %if.then.32

land.lhs.true.22:                                 ; preds = %land.lhs.true
  %22 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load23 = load i32, i32* %23, align 8
  %bf.lshr24 = lshr i32 %bf.load23, 16
  %bf.clear25 = and i32 %bf.lshr24, 255
  %24 = load i32, i32* %insn_mode, align 4
  %cmp26 = icmp eq i32 %bf.clear25, %24
  br i1 %cmp26, label %land.lhs.true.28, label %if.then.32

land.lhs.true.28:                                 ; preds = %land.lhs.true.22
  %25 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx29 to i32*
  %26 = load i32, i32* %rtuint, align 4
  %cmp30 = icmp uge i32 %26, 53
  br i1 %cmp30, label %if.end.34, label %if.then.32

if.then.32:                                       ; preds = %land.lhs.true.28, %land.lhs.true.22, %land.lhs.true, %if.end.15
  %27 = load i32, i32* %insn_mode, align 4
  %call33 = call %struct.rtx_def* @gen_reg_rtx(i32 %27)
  store %struct.rtx_def* %call33, %struct.rtx_def** %result, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %land.lhs.true.28
  %28 = load i32, i32* @target_flags, align 4
  %and = and i32 %28, 33554432
  %tobool35 = icmp ne i32 %and, 0
  %cond = select i1 %tobool35, i32 5, i32 4
  %call36 = call %struct.rtx_def* @gen_reg_rtx(i32 %cond)
  store %struct.rtx_def* %call36, %struct.rtx_def** %src_reg, align 8
  %call37 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call37, %struct.rtx_def** %before_strlen, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %29, %struct.rtx_def** %char_rtx, align 8
  %30 = load i32, i32* %icode, align 4
  %idxprom38 = sext i32 %30 to i64
  %arrayidx39 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom38
  %operand = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx39, i32 0, i32 3
  %31 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand, align 8
  %arrayidx40 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %31, i64 2
  %mode41 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx40, i32 0, i32 2
  %bf.load42 = load i16, i16* %mode41, align 8
  %bf.cast = zext i16 %bf.load42 to i32
  store i32 %bf.cast, i32* %char_mode, align 4
  %32 = load i32, i32* %icode, align 4
  %idxprom43 = sext i32 %32 to i64
  %arrayidx44 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom43
  %operand45 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx44, i32 0, i32 3
  %33 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand45, align 8
  %arrayidx46 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %33, i64 2
  %predicate = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx46, i32 0, i32 0
  %34 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %char_rtx, align 8
  %36 = load i32, i32* %char_mode, align 4
  %call47 = call i32 %34(%struct.rtx_def* %35, i32 %36)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.end.51, label %if.then.49

if.then.49:                                       ; preds = %if.end.34
  %37 = load i32, i32* %char_mode, align 4
  %38 = load %struct.rtx_def*, %struct.rtx_def** %char_rtx, align 8
  %call50 = call %struct.rtx_def* @copy_to_mode_reg(i32 %37, %struct.rtx_def* %38)
  store %struct.rtx_def* %call50, %struct.rtx_def** %char_rtx, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.end.34
  %39 = load i32, i32* %icode, align 4
  %idxprom52 = sext i32 %39 to i64
  %arrayidx53 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom52
  %genfun = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx53, i32 0, i32 2
  %40 = load %struct.rtx_def* (%struct.rtx_def*, ...)*, %struct.rtx_def* (%struct.rtx_def*, ...)** %genfun, align 8
  %41 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** %src_reg, align 8
  %call54 = call %struct.rtx_def* @gen_rtx_MEM(i32 51, %struct.rtx_def* %42)
  %43 = load %struct.rtx_def*, %struct.rtx_def** %char_rtx, align 8
  %44 = load i32, i32* %align, align 4
  %conv55 = sext i32 %44 to i64
  %call56 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv55)
  %call57 = call %struct.rtx_def* (%struct.rtx_def*, ...) %40(%struct.rtx_def* %41, %struct.rtx_def* %call54, %struct.rtx_def* %43, %struct.rtx_def* %call56)
  store %struct.rtx_def* %call57, %struct.rtx_def** %pat, align 8
  %45 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %tobool58 = icmp ne %struct.rtx_def* %45, null
  br i1 %tobool58, label %if.end.60, label %if.then.59

if.then.59:                                       ; preds = %if.end.51
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.60:                                        ; preds = %if.end.51
  %46 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %call61 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %46)
  call void @start_sequence()
  %47 = load %union.tree_node*, %union.tree_node** %src, align 8
  %48 = load %struct.rtx_def*, %struct.rtx_def** %src_reg, align 8
  %49 = load i32, i32* @ptr_mode, align 4
  %call62 = call %struct.rtx_def* @expand_expr(%union.tree_node* %47, %struct.rtx_def* %48, i32 %49, i32 1)
  %call63 = call %struct.rtx_def* @memory_address(i32 51, %struct.rtx_def* %call62)
  store %struct.rtx_def* %call63, %struct.rtx_def** %pat, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %51 = load %struct.rtx_def*, %struct.rtx_def** %src_reg, align 8
  %cmp64 = icmp ne %struct.rtx_def* %50, %51
  br i1 %cmp64, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %if.end.60
  %52 = load %struct.rtx_def*, %struct.rtx_def** %src_reg, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %call67 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %52, %struct.rtx_def* %53)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.66, %if.end.60
  %call69 = call %struct.rtx_def* @gen_sequence()
  store %struct.rtx_def* %call69, %struct.rtx_def** %pat, align 8
  call void @end_sequence()
  %54 = load %struct.rtx_def*, %struct.rtx_def** %before_strlen, align 8
  %tobool70 = icmp ne %struct.rtx_def* %54, null
  br i1 %tobool70, label %if.then.71, label %if.else.73

if.then.71:                                       ; preds = %if.end.68
  %55 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %56 = load %struct.rtx_def*, %struct.rtx_def** %before_strlen, align 8
  %call72 = call %struct.rtx_def* @emit_insn_after(%struct.rtx_def* %55, %struct.rtx_def* %56)
  br label %if.end.76

if.else.73:                                       ; preds = %if.end.68
  %57 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %call74 = call %struct.rtx_def* @get_insns()
  %call75 = call %struct.rtx_def* @emit_insn_before(%struct.rtx_def* %57, %struct.rtx_def* %call74)
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.73, %if.then.71
  %58 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %59 = bitcast %struct.rtx_def* %58 to i32*
  %bf.load77 = load i32, i32* %59, align 8
  %bf.lshr78 = lshr i32 %bf.load77, 16
  %bf.clear79 = and i32 %bf.lshr78, 255
  %60 = load i32, i32* %value_mode, align 4
  %cmp80 = icmp eq i32 %bf.clear79, %60
  br i1 %cmp80, label %if.then.82, label %if.else.83

if.then.82:                                       ; preds = %if.end.76
  %61 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  store %struct.rtx_def* %61, %struct.rtx_def** %target.addr, align 8
  br label %if.end.90

if.else.83:                                       ; preds = %if.end.76
  %62 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp84 = icmp ne %struct.rtx_def* %62, null
  br i1 %cmp84, label %if.then.86, label %if.else.87

if.then.86:                                       ; preds = %if.else.83
  %63 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %64 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  call void @convert_move(%struct.rtx_def* %63, %struct.rtx_def* %64, i32 0)
  br label %if.end.89

if.else.87:                                       ; preds = %if.else.83
  %65 = load i32, i32* %value_mode, align 4
  %66 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %call88 = call %struct.rtx_def* @convert_to_mode(i32 %65, %struct.rtx_def* %66, i32 0)
  store %struct.rtx_def* %call88, %struct.rtx_def** %target.addr, align 8
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.87, %if.then.86
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then.82
  %67 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %67, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.90, %if.then.59, %if.then.14, %if.then.4, %if.then
  %68 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %68
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @expand_builtin_strcpy(%union.tree_node* %exp, %struct.rtx_def* %target, i32 %mode) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %exp.addr = alloca %union.tree_node*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %arglist = alloca %union.tree_node*, align 8
  %fn = alloca %union.tree_node*, align 8
  %len = alloca %union.tree_node*, align 8
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp1 = bitcast %union.tree_node* %0 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp1, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 1
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %1, %union.tree_node** %arglist, align 8
  %2 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %call = call i32 (%union.tree_node*, ...) @validate_arglist(%union.tree_node* %2, i32 13, i32 13, i32 5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([95 x %union.tree_node*], [95 x %union.tree_node*]* @built_in_decls, i32 0, i64 22), align 8
  store %union.tree_node* %3, %union.tree_node** %fn, align 8
  %4 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %tobool2 = icmp ne %union.tree_node* %4, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %common = bitcast %union.tree_node* %5 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %6 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %list = bitcast %union.tree_node* %6 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %7 = load %union.tree_node*, %union.tree_node** %value, align 8
  %call5 = call %union.tree_node* @c_strlen(%union.tree_node* %7)
  store %union.tree_node* %call5, %union.tree_node** %len, align 8
  %8 = load %union.tree_node*, %union.tree_node** %len, align 8
  %cmp = icmp eq %union.tree_node* %8, null
  br i1 %cmp, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.4
  %9 = load %union.tree_node*, %union.tree_node** %len, align 8
  %call8 = call %union.tree_node* @size_int_wide(i64 1, i32 1)
  %call9 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %9, %union.tree_node* %call8)
  store %union.tree_node* %call9, %union.tree_node** %len, align 8
  %10 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %11 = load %union.tree_node*, %union.tree_node** %len, align 8
  %call10 = call %union.tree_node* @build_tree_list(%union.tree_node* null, %union.tree_node* %11)
  %call11 = call %union.tree_node* @chainon(%union.tree_node* %10, %union.tree_node* %call10)
  %12 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %13 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %call12 = call %union.tree_node* @build_function_call_expr(%union.tree_node* %12, %union.tree_node* %13)
  %14 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %15 = load i32, i32* %mode.addr, align 4
  %call13 = call %struct.rtx_def* @expand_expr(%union.tree_node* %call12, %struct.rtx_def* %14, i32 %15, i32 0)
  store %struct.rtx_def* %call13, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then.3, %if.then
  %16 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %16
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @expand_builtin_strncpy(%union.tree_node* %arglist, %struct.rtx_def* %target, i32 %mode) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %arglist.addr = alloca %union.tree_node*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %slen = alloca %union.tree_node*, align 8
  %len = alloca %union.tree_node*, align 8
  %fn = alloca %union.tree_node*, align 8
  %dest = alloca %union.tree_node*, align 8
  %dest_align = alloca i32, align 4
  %p = alloca i8*, align 8
  %dest_mem = alloca %struct.rtx_def*, align 8
  store %union.tree_node* %arglist, %union.tree_node** %arglist.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %call = call i32 (%union.tree_node*, ...) @validate_arglist(%union.tree_node* %0, i32 13, i32 13, i32 6, i32 5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %2 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %list = bitcast %union.tree_node* %2 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %3 = load %union.tree_node*, %union.tree_node** %value, align 8
  %call1 = call %union.tree_node* @c_strlen(%union.tree_node* %3)
  store %union.tree_node* %call1, %union.tree_node** %slen, align 8
  %4 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common2 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %chain3 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 0
  %5 = load %union.tree_node*, %union.tree_node** %chain3, align 8
  %common4 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %chain5 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4, i32 0, i32 0
  %6 = load %union.tree_node*, %union.tree_node** %chain5, align 8
  %list6 = bitcast %union.tree_node* %6 to %struct.tree_list*
  %value7 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list6, i32 0, i32 2
  %7 = load %union.tree_node*, %union.tree_node** %value7, align 8
  store %union.tree_node* %7, %union.tree_node** %len, align 8
  %8 = load %union.tree_node*, %union.tree_node** %len, align 8
  %common8 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common8, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp ne i32 %bf.clear, 25
  br i1 %cmp, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.else
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %if.else
  %9 = load %union.tree_node*, %union.tree_node** %len, align 8
  %call10 = call i32 @integer_zerop(%union.tree_node* %9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.21

if.then.12:                                       ; preds = %if.end
  %10 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common13 = bitcast %union.tree_node* %10 to %struct.tree_common*
  %chain14 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common13, i32 0, i32 0
  %11 = load %union.tree_node*, %union.tree_node** %chain14, align 8
  %list15 = bitcast %union.tree_node* %11 to %struct.tree_list*
  %value16 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list15, i32 0, i32 2
  %12 = load %union.tree_node*, %union.tree_node** %value16, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call17 = call %struct.rtx_def* @expand_expr(%union.tree_node* %12, %struct.rtx_def* %13, i32 0, i32 0)
  %14 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %list18 = bitcast %union.tree_node* %14 to %struct.tree_list*
  %value19 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list18, i32 0, i32 2
  %15 = load %union.tree_node*, %union.tree_node** %value19, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %17 = load i32, i32* %mode.addr, align 4
  %call20 = call %struct.rtx_def* @expand_expr(%union.tree_node* %15, %struct.rtx_def* %16, i32 %17, i32 0)
  store %struct.rtx_def* %call20, %struct.rtx_def** %retval
  br label %return

if.end.21:                                        ; preds = %if.end
  %18 = load %union.tree_node*, %union.tree_node** %slen, align 8
  %cmp22 = icmp eq %union.tree_node* %18, null
  br i1 %cmp22, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.21
  %19 = load %union.tree_node*, %union.tree_node** %slen, align 8
  %common23 = bitcast %union.tree_node* %19 to %struct.tree_common*
  %code24 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common23, i32 0, i32 2
  %bf.load25 = load i32, i32* %code24, align 8
  %bf.clear26 = and i32 %bf.load25, 255
  %cmp27 = icmp ne i32 %bf.clear26, 25
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %lor.lhs.false, %if.end.21
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.29:                                        ; preds = %lor.lhs.false
  %20 = load %union.tree_node*, %union.tree_node** %slen, align 8
  %call30 = call %union.tree_node* @size_int_wide(i64 1, i32 1)
  %call31 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %20, %union.tree_node* %call30)
  store %union.tree_node* %call31, %union.tree_node** %slen, align 8
  %21 = load %union.tree_node*, %union.tree_node** %slen, align 8
  %22 = load %union.tree_node*, %union.tree_node** %len, align 8
  %call32 = call i32 @tree_int_cst_lt(%union.tree_node* %21, %union.tree_node* %22)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.58

if.then.34:                                       ; preds = %if.end.29
  %23 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %list35 = bitcast %union.tree_node* %23 to %struct.tree_list*
  %value36 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list35, i32 0, i32 2
  %24 = load %union.tree_node*, %union.tree_node** %value36, align 8
  store %union.tree_node* %24, %union.tree_node** %dest, align 8
  %25 = load %union.tree_node*, %union.tree_node** %dest, align 8
  %call37 = call i32 @get_pointer_alignment(%union.tree_node* %25, i32 128)
  store i32 %call37, i32* %dest_align, align 4
  %26 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common38 = bitcast %union.tree_node* %26 to %struct.tree_common*
  %chain39 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common38, i32 0, i32 0
  %27 = load %union.tree_node*, %union.tree_node** %chain39, align 8
  %list40 = bitcast %union.tree_node* %27 to %struct.tree_list*
  %value41 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list40, i32 0, i32 2
  %28 = load %union.tree_node*, %union.tree_node** %value41, align 8
  %call42 = call i8* @c_getstr(%union.tree_node* %28)
  store i8* %call42, i8** %p, align 8
  %29 = load i8*, i8** %p, align 8
  %tobool43 = icmp ne i8* %29, null
  br i1 %tobool43, label %lor.lhs.false.44, label %if.then.53

lor.lhs.false.44:                                 ; preds = %if.then.34
  %30 = load i32, i32* %dest_align, align 4
  %cmp45 = icmp eq i32 %30, 0
  br i1 %cmp45, label %if.then.53, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %lor.lhs.false.44
  %31 = load %union.tree_node*, %union.tree_node** %len, align 8
  %call47 = call i32 @host_integerp(%union.tree_node* %31, i32 1)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %lor.lhs.false.49, label %if.then.53

lor.lhs.false.49:                                 ; preds = %lor.lhs.false.46
  %32 = load %union.tree_node*, %union.tree_node** %len, align 8
  %call50 = call i64 @tree_low_cst(%union.tree_node* %32, i32 1)
  %33 = load i8*, i8** %p, align 8
  %34 = load i32, i32* %dest_align, align 4
  %call51 = call i32 @can_store_by_pieces(i64 %call50, %struct.rtx_def* (i8*, i64, i32)* @builtin_strncpy_read_str, i8* %33, i32 %34)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.end.54, label %if.then.53

if.then.53:                                       ; preds = %lor.lhs.false.49, %lor.lhs.false.46, %lor.lhs.false.44, %if.then.34
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.54:                                        ; preds = %lor.lhs.false.49
  %35 = load %union.tree_node*, %union.tree_node** %dest, align 8
  %call55 = call %struct.rtx_def* @get_memory_rtx(%union.tree_node* %35)
  store %struct.rtx_def* %call55, %struct.rtx_def** %dest_mem, align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** %dest_mem, align 8
  %37 = load %union.tree_node*, %union.tree_node** %len, align 8
  %call56 = call i64 @tree_low_cst(%union.tree_node* %37, i32 1)
  %38 = load i8*, i8** %p, align 8
  %39 = load i32, i32* %dest_align, align 4
  call void @store_by_pieces(%struct.rtx_def* %36, i64 %call56, %struct.rtx_def* (i8*, i64, i32)* @builtin_strncpy_read_str, i8* %38, i32 %39)
  %40 = load %struct.rtx_def*, %struct.rtx_def** %dest_mem, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call57 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %41, %struct.rtx_def* null)
  store %struct.rtx_def* %call57, %struct.rtx_def** %retval
  br label %return

if.end.58:                                        ; preds = %if.end.29
  %42 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([95 x %union.tree_node*], [95 x %union.tree_node*]* @built_in_decls, i32 0, i64 22), align 8
  store %union.tree_node* %42, %union.tree_node** %fn, align 8
  %43 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %tobool59 = icmp ne %union.tree_node* %43, null
  br i1 %tobool59, label %if.end.61, label %if.then.60

if.then.60:                                       ; preds = %if.end.58
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.61:                                        ; preds = %if.end.58
  %44 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %45 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %call62 = call %union.tree_node* @build_function_call_expr(%union.tree_node* %44, %union.tree_node* %45)
  %46 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %47 = load i32, i32* %mode.addr, align 4
  %call63 = call %struct.rtx_def* @expand_expr(%union.tree_node* %call62, %struct.rtx_def* %46, i32 %47, i32 0)
  store %struct.rtx_def* %call63, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.61, %if.then.60, %if.end.54, %if.then.53, %if.then.28, %if.then.12, %if.then.9, %if.then
  %48 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %48
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @expand_builtin_strcat(%union.tree_node* %arglist, %struct.rtx_def* %target, i32 %mode) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %arglist.addr = alloca %union.tree_node*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %dst = alloca %union.tree_node*, align 8
  %src = alloca %union.tree_node*, align 8
  %p = alloca i8*, align 8
  store %union.tree_node* %arglist, %union.tree_node** %arglist.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %call = call i32 (%union.tree_node*, ...) @validate_arglist(%union.tree_node* %0, i32 13, i32 13, i32 5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %list = bitcast %union.tree_node* %1 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %2 = load %union.tree_node*, %union.tree_node** %value, align 8
  store %union.tree_node* %2, %union.tree_node** %dst, align 8
  %3 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common = bitcast %union.tree_node* %3 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %4 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %list1 = bitcast %union.tree_node* %4 to %struct.tree_list*
  %value2 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1, i32 0, i32 2
  %5 = load %union.tree_node*, %union.tree_node** %value2, align 8
  store %union.tree_node* %5, %union.tree_node** %src, align 8
  %6 = load %union.tree_node*, %union.tree_node** %src, align 8
  %call3 = call i8* @c_getstr(%union.tree_node* %6)
  store i8* %call3, i8** %p, align 8
  %7 = load i8*, i8** %p, align 8
  %tobool4 = icmp ne i8* %7, null
  br i1 %tobool4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %8 = load i8*, i8** %p, align 8
  %9 = load i8, i8* %8, align 1
  %conv = sext i8 %9 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %land.lhs.true
  %10 = load %union.tree_node*, %union.tree_node** %dst, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %12 = load i32, i32* %mode.addr, align 4
  %call7 = call %struct.rtx_def* @expand_expr(%union.tree_node* %10, %struct.rtx_def* %11, i32 %12, i32 0)
  store %struct.rtx_def* %call7, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.else
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then.6, %if.then
  %13 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %13
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @expand_builtin_strncat(%union.tree_node* %arglist, %struct.rtx_def* %target, i32 %mode) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %arglist.addr = alloca %union.tree_node*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %dst = alloca %union.tree_node*, align 8
  %src = alloca %union.tree_node*, align 8
  %len = alloca %union.tree_node*, align 8
  %p = alloca i8*, align 8
  %newarglist = alloca %union.tree_node*, align 8
  %fn = alloca %union.tree_node*, align 8
  store %union.tree_node* %arglist, %union.tree_node** %arglist.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %call = call i32 (%union.tree_node*, ...) @validate_arglist(%union.tree_node* %0, i32 13, i32 13, i32 6, i32 5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %list = bitcast %union.tree_node* %1 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %2 = load %union.tree_node*, %union.tree_node** %value, align 8
  store %union.tree_node* %2, %union.tree_node** %dst, align 8
  %3 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common = bitcast %union.tree_node* %3 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %4 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %list1 = bitcast %union.tree_node* %4 to %struct.tree_list*
  %value2 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1, i32 0, i32 2
  %5 = load %union.tree_node*, %union.tree_node** %value2, align 8
  store %union.tree_node* %5, %union.tree_node** %src, align 8
  %6 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common3 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %chain4 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3, i32 0, i32 0
  %7 = load %union.tree_node*, %union.tree_node** %chain4, align 8
  %common5 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %chain6 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common5, i32 0, i32 0
  %8 = load %union.tree_node*, %union.tree_node** %chain6, align 8
  %list7 = bitcast %union.tree_node* %8 to %struct.tree_list*
  %value8 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list7, i32 0, i32 2
  %9 = load %union.tree_node*, %union.tree_node** %value8, align 8
  store %union.tree_node* %9, %union.tree_node** %len, align 8
  %10 = load %union.tree_node*, %union.tree_node** %src, align 8
  %call9 = call i8* @c_getstr(%union.tree_node* %10)
  store i8* %call9, i8** %p, align 8
  %11 = load %union.tree_node*, %union.tree_node** %len, align 8
  %call10 = call i32 @integer_zerop(%union.tree_node* %11)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %12 = load i8*, i8** %p, align 8
  %tobool12 = icmp ne i8* %12, null
  br i1 %tobool12, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %13 = load i8*, i8** %p, align 8
  %14 = load i8, i8* %13, align 1
  %conv = sext i8 %14 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %land.lhs.true, %if.else
  %15 = load %union.tree_node*, %union.tree_node** %src, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call15 = call %struct.rtx_def* @expand_expr(%union.tree_node* %15, %struct.rtx_def* %16, i32 0, i32 0)
  %17 = load %union.tree_node*, %union.tree_node** %len, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call16 = call %struct.rtx_def* @expand_expr(%union.tree_node* %17, %struct.rtx_def* %18, i32 0, i32 0)
  %19 = load %union.tree_node*, %union.tree_node** %dst, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %21 = load i32, i32* %mode.addr, align 4
  %call17 = call %struct.rtx_def* @expand_expr(%union.tree_node* %19, %struct.rtx_def* %20, i32 %21, i32 0)
  store %struct.rtx_def* %call17, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %22 = load %union.tree_node*, %union.tree_node** %len, align 8
  %common18 = bitcast %union.tree_node* %22 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common18, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp19 = icmp eq i32 %bf.clear, 25
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.36

land.lhs.true.21:                                 ; preds = %if.end
  %23 = load i8*, i8** %p, align 8
  %tobool22 = icmp ne i8* %23, null
  br i1 %tobool22, label %land.lhs.true.23, label %if.end.36

land.lhs.true.23:                                 ; preds = %land.lhs.true.21
  %24 = load %union.tree_node*, %union.tree_node** %len, align 8
  %25 = load i8*, i8** %p, align 8
  %call24 = call i64 @strlen(i8* %25) #6
  %call25 = call i32 @compare_tree_int(%union.tree_node* %24, i64 %call24)
  %cmp26 = icmp sge i32 %call25, 0
  br i1 %cmp26, label %if.then.28, label %if.end.36

if.then.28:                                       ; preds = %land.lhs.true.23
  %26 = load %union.tree_node*, %union.tree_node** %dst, align 8
  %27 = load %union.tree_node*, %union.tree_node** %src, align 8
  %call29 = call %union.tree_node* @build_tree_list(%union.tree_node* null, %union.tree_node* %27)
  %call30 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %26, %union.tree_node* %call29)
  store %union.tree_node* %call30, %union.tree_node** %newarglist, align 8
  %28 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([95 x %union.tree_node*], [95 x %union.tree_node*]* @built_in_decls, i32 0, i64 25), align 8
  store %union.tree_node* %28, %union.tree_node** %fn, align 8
  %29 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %tobool31 = icmp ne %union.tree_node* %29, null
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %if.then.28
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.33:                                        ; preds = %if.then.28
  %30 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %31 = load %union.tree_node*, %union.tree_node** %newarglist, align 8
  %call34 = call %union.tree_node* @build_function_call_expr(%union.tree_node* %30, %union.tree_node* %31)
  %32 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %33 = load i32, i32* %mode.addr, align 4
  %call35 = call %struct.rtx_def* @expand_expr(%union.tree_node* %call34, %struct.rtx_def* %32, i32 %33, i32 0)
  store %struct.rtx_def* %call35, %struct.rtx_def** %retval
  br label %return

if.end.36:                                        ; preds = %land.lhs.true.23, %land.lhs.true.21, %if.end
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.36, %if.end.33, %if.then.32, %if.then.14, %if.then
  %34 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %34
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @expand_builtin_strspn(%union.tree_node* %arglist, %struct.rtx_def* %target, i32 %mode) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %arglist.addr = alloca %union.tree_node*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %s1 = alloca %union.tree_node*, align 8
  %s2 = alloca %union.tree_node*, align 8
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  %r = alloca i64, align 8
  store %union.tree_node* %arglist, %union.tree_node** %arglist.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %call = call i32 (%union.tree_node*, ...) @validate_arglist(%union.tree_node* %0, i32 13, i32 13, i32 5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %list = bitcast %union.tree_node* %1 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %2 = load %union.tree_node*, %union.tree_node** %value, align 8
  store %union.tree_node* %2, %union.tree_node** %s1, align 8
  %3 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common = bitcast %union.tree_node* %3 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %4 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %list1 = bitcast %union.tree_node* %4 to %struct.tree_list*
  %value2 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1, i32 0, i32 2
  %5 = load %union.tree_node*, %union.tree_node** %value2, align 8
  store %union.tree_node* %5, %union.tree_node** %s2, align 8
  %6 = load %union.tree_node*, %union.tree_node** %s1, align 8
  %call3 = call i8* @c_getstr(%union.tree_node* %6)
  store i8* %call3, i8** %p1, align 8
  %7 = load %union.tree_node*, %union.tree_node** %s2, align 8
  %call4 = call i8* @c_getstr(%union.tree_node* %7)
  store i8* %call4, i8** %p2, align 8
  %8 = load i8*, i8** %p1, align 8
  %tobool5 = icmp ne i8* %8, null
  br i1 %tobool5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %9 = load i8*, i8** %p2, align 8
  %tobool6 = icmp ne i8* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %land.lhs.true
  %10 = load i8*, i8** %p1, align 8
  %11 = load i8*, i8** %p2, align 8
  %call8 = call i64 @strspn(i8* %10, i8* %11) #6
  store i64 %call8, i64* %r, align 8
  %12 = load i64, i64* %r, align 8
  %call9 = call %union.tree_node* @size_int_wide(i64 %12, i32 0)
  %13 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %14 = load i32, i32* %mode.addr, align 4
  %call10 = call %struct.rtx_def* @expand_expr(%union.tree_node* %call9, %struct.rtx_def* %13, i32 %14, i32 0)
  store %struct.rtx_def* %call10, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.else
  %15 = load i8*, i8** %p1, align 8
  %tobool11 = icmp ne i8* %15, null
  br i1 %tobool11, label %land.lhs.true.12, label %lor.lhs.false

land.lhs.true.12:                                 ; preds = %if.end
  %16 = load i8*, i8** %p1, align 8
  %17 = load i8, i8* %16, align 1
  %conv = sext i8 %17 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.12, %if.end
  %18 = load i8*, i8** %p2, align 8
  %tobool14 = icmp ne i8* %18, null
  br i1 %tobool14, label %land.lhs.true.15, label %if.end.22

land.lhs.true.15:                                 ; preds = %lor.lhs.false
  %19 = load i8*, i8** %p2, align 8
  %20 = load i8, i8* %19, align 1
  %conv16 = sext i8 %20 to i32
  %cmp17 = icmp eq i32 %conv16, 0
  br i1 %cmp17, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %land.lhs.true.15, %land.lhs.true.12
  %21 = load %union.tree_node*, %union.tree_node** %s1, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call20 = call %struct.rtx_def* @expand_expr(%union.tree_node* %21, %struct.rtx_def* %22, i32 0, i32 0)
  %23 = load %union.tree_node*, %union.tree_node** %s2, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call21 = call %struct.rtx_def* @expand_expr(%union.tree_node* %23, %struct.rtx_def* %24, i32 0, i32 0)
  %25 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %25, %struct.rtx_def** %retval
  br label %return

if.end.22:                                        ; preds = %land.lhs.true.15, %lor.lhs.false
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.19, %if.then.7, %if.then
  %26 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %26
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @expand_builtin_strcspn(%union.tree_node* %arglist, %struct.rtx_def* %target, i32 %mode) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %arglist.addr = alloca %union.tree_node*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %s1 = alloca %union.tree_node*, align 8
  %s2 = alloca %union.tree_node*, align 8
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  %r = alloca i64, align 8
  %newarglist = alloca %union.tree_node*, align 8
  %fn = alloca %union.tree_node*, align 8
  store %union.tree_node* %arglist, %union.tree_node** %arglist.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %call = call i32 (%union.tree_node*, ...) @validate_arglist(%union.tree_node* %0, i32 13, i32 13, i32 5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %list = bitcast %union.tree_node* %1 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %2 = load %union.tree_node*, %union.tree_node** %value, align 8
  store %union.tree_node* %2, %union.tree_node** %s1, align 8
  %3 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common = bitcast %union.tree_node* %3 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %4 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %list1 = bitcast %union.tree_node* %4 to %struct.tree_list*
  %value2 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1, i32 0, i32 2
  %5 = load %union.tree_node*, %union.tree_node** %value2, align 8
  store %union.tree_node* %5, %union.tree_node** %s2, align 8
  %6 = load %union.tree_node*, %union.tree_node** %s1, align 8
  %call3 = call i8* @c_getstr(%union.tree_node* %6)
  store i8* %call3, i8** %p1, align 8
  %7 = load %union.tree_node*, %union.tree_node** %s2, align 8
  %call4 = call i8* @c_getstr(%union.tree_node* %7)
  store i8* %call4, i8** %p2, align 8
  %8 = load i8*, i8** %p1, align 8
  %tobool5 = icmp ne i8* %8, null
  br i1 %tobool5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %9 = load i8*, i8** %p2, align 8
  %tobool6 = icmp ne i8* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %land.lhs.true
  %10 = load i8*, i8** %p1, align 8
  %11 = load i8*, i8** %p2, align 8
  %call8 = call i64 @strcspn(i8* %10, i8* %11) #6
  store i64 %call8, i64* %r, align 8
  %12 = load i64, i64* %r, align 8
  %call9 = call %union.tree_node* @size_int_wide(i64 %12, i32 0)
  %13 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %14 = load i32, i32* %mode.addr, align 4
  %call10 = call %struct.rtx_def* @expand_expr(%union.tree_node* %call9, %struct.rtx_def* %13, i32 %14, i32 0)
  store %struct.rtx_def* %call10, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.else
  %15 = load i8*, i8** %p1, align 8
  %tobool11 = icmp ne i8* %15, null
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.16

land.lhs.true.12:                                 ; preds = %if.end
  %16 = load i8*, i8** %p1, align 8
  %17 = load i8, i8* %16, align 1
  %conv = sext i8 %17 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %land.lhs.true.12
  %18 = load %union.tree_node*, %union.tree_node** %s2, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call15 = call %struct.rtx_def* @expand_expr(%union.tree_node* %18, %struct.rtx_def* %19, i32 0, i32 0)
  %20 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %20, %struct.rtx_def** %retval
  br label %return

if.end.16:                                        ; preds = %land.lhs.true.12, %if.end
  %21 = load i8*, i8** %p2, align 8
  %tobool17 = icmp ne i8* %21, null
  br i1 %tobool17, label %land.lhs.true.18, label %if.end.29

land.lhs.true.18:                                 ; preds = %if.end.16
  %22 = load i8*, i8** %p2, align 8
  %23 = load i8, i8* %22, align 1
  %conv19 = sext i8 %23 to i32
  %cmp20 = icmp eq i32 %conv19, 0
  br i1 %cmp20, label %if.then.22, label %if.end.29

if.then.22:                                       ; preds = %land.lhs.true.18
  %24 = load %union.tree_node*, %union.tree_node** %s1, align 8
  %call23 = call %union.tree_node* @build_tree_list(%union.tree_node* null, %union.tree_node* %24)
  store %union.tree_node* %call23, %union.tree_node** %newarglist, align 8
  %25 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([95 x %union.tree_node*], [95 x %union.tree_node*]* @built_in_decls, i32 0, i64 31), align 8
  store %union.tree_node* %25, %union.tree_node** %fn, align 8
  %26 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %tobool24 = icmp ne %union.tree_node* %26, null
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.then.22
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.26:                                        ; preds = %if.then.22
  %27 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %28 = load %union.tree_node*, %union.tree_node** %newarglist, align 8
  %call27 = call %union.tree_node* @build_function_call_expr(%union.tree_node* %27, %union.tree_node* %28)
  %29 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %30 = load i32, i32* %mode.addr, align 4
  %call28 = call %struct.rtx_def* @expand_expr(%union.tree_node* %call27, %struct.rtx_def* %29, i32 %30, i32 0)
  store %struct.rtx_def* %call28, %struct.rtx_def** %retval
  br label %return

if.end.29:                                        ; preds = %land.lhs.true.18, %if.end.16
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.end.26, %if.then.25, %if.then.14, %if.then.7, %if.then
  %31 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %31
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @expand_builtin_strstr(%union.tree_node* %arglist, %struct.rtx_def* %target, i32 %mode) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %arglist.addr = alloca %union.tree_node*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %s1 = alloca %union.tree_node*, align 8
  %s2 = alloca %union.tree_node*, align 8
  %fn = alloca %union.tree_node*, align 8
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  %r = alloca i8*, align 8
  store %union.tree_node* %arglist, %union.tree_node** %arglist.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %call = call i32 (%union.tree_node*, ...) @validate_arglist(%union.tree_node* %0, i32 13, i32 13, i32 5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %list = bitcast %union.tree_node* %1 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %2 = load %union.tree_node*, %union.tree_node** %value, align 8
  store %union.tree_node* %2, %union.tree_node** %s1, align 8
  %3 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common = bitcast %union.tree_node* %3 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %4 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %list1 = bitcast %union.tree_node* %4 to %struct.tree_list*
  %value2 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1, i32 0, i32 2
  %5 = load %union.tree_node*, %union.tree_node** %value2, align 8
  store %union.tree_node* %5, %union.tree_node** %s2, align 8
  %6 = load %union.tree_node*, %union.tree_node** %s2, align 8
  %call3 = call i8* @c_getstr(%union.tree_node* %6)
  store i8* %call3, i8** %p2, align 8
  %7 = load i8*, i8** %p2, align 8
  %cmp = icmp eq i8* %7, null
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %if.else
  %8 = load %union.tree_node*, %union.tree_node** %s1, align 8
  %call5 = call i8* @c_getstr(%union.tree_node* %8)
  store i8* %call5, i8** %p1, align 8
  %9 = load i8*, i8** %p1, align 8
  %cmp6 = icmp ne i8* %9, null
  br i1 %cmp6, label %if.then.7, label %if.end.17

if.then.7:                                        ; preds = %if.end
  %10 = load i8*, i8** %p1, align 8
  %11 = load i8*, i8** %p2, align 8
  %call8 = call i8* @strstr(i8* %10, i8* %11) #6
  store i8* %call8, i8** %r, align 8
  %12 = load i8*, i8** %r, align 8
  %cmp9 = icmp eq i8* %12, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.7
  %13 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.7
  %14 = load %union.tree_node*, %union.tree_node** %s1, align 8
  %common12 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common12, i32 0, i32 1
  %15 = load %union.tree_node*, %union.tree_node** %type, align 8
  %16 = load %union.tree_node*, %union.tree_node** %s1, align 8
  %17 = load i8*, i8** %r, align 8
  %18 = load i8*, i8** %p1, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call13 = call %union.tree_node* @size_int_wide(i64 %sub.ptr.sub, i32 1)
  %call14 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 59, %union.tree_node* %15, %union.tree_node* %16, %union.tree_node* %call13)
  %call15 = call %union.tree_node* @fold(%union.tree_node* %call14)
  %19 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %20 = load i32, i32* %mode.addr, align 4
  %call16 = call %struct.rtx_def* @expand_expr(%union.tree_node* %call15, %struct.rtx_def* %19, i32 %20, i32 0)
  store %struct.rtx_def* %call16, %struct.rtx_def** %retval
  br label %return

if.end.17:                                        ; preds = %if.end
  %21 = load i8*, i8** %p2, align 8
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 0
  %22 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %22 to i32
  %cmp18 = icmp eq i32 %conv, 0
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.17
  %23 = load %union.tree_node*, %union.tree_node** %s1, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %25 = load i32, i32* %mode.addr, align 4
  %call21 = call %struct.rtx_def* @expand_expr(%union.tree_node* %23, %struct.rtx_def* %24, i32 %25, i32 0)
  store %struct.rtx_def* %call21, %struct.rtx_def** %retval
  br label %return

if.end.22:                                        ; preds = %if.end.17
  %26 = load i8*, i8** %p2, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i8, i8* %arrayidx23, align 1
  %conv24 = sext i8 %27 to i32
  %cmp25 = icmp ne i32 %conv24, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.22
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.28:                                        ; preds = %if.end.22
  %28 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([95 x %union.tree_node*], [95 x %union.tree_node*]* @built_in_decls, i32 0, i64 36), align 8
  store %union.tree_node* %28, %union.tree_node** %fn, align 8
  %29 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %tobool29 = icmp ne %union.tree_node* %29, null
  br i1 %tobool29, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %if.end.28
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.31:                                        ; preds = %if.end.28
  %30 = load i8*, i8** %p2, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %30, i64 0
  %31 = load i8, i8* %arrayidx32, align 1
  %conv33 = sext i8 %31 to i64
  %call34 = call %union.tree_node* @build_int_2_wide(i64 %conv33, i64 0)
  %call35 = call %union.tree_node* @build_tree_list(%union.tree_node* null, %union.tree_node* %call34)
  store %union.tree_node* %call35, %union.tree_node** %arglist.addr, align 8
  %32 = load %union.tree_node*, %union.tree_node** %s1, align 8
  %33 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %call36 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %32, %union.tree_node* %33)
  store %union.tree_node* %call36, %union.tree_node** %arglist.addr, align 8
  %34 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %35 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %call37 = call %union.tree_node* @build_function_call_expr(%union.tree_node* %34, %union.tree_node* %35)
  %36 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %37 = load i32, i32* %mode.addr, align 4
  %call38 = call %struct.rtx_def* @expand_expr(%union.tree_node* %call37, %struct.rtx_def* %36, i32 %37, i32 0)
  store %struct.rtx_def* %call38, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.then.30, %if.then.27, %if.then.20, %if.end.11, %if.then.10, %if.then.4, %if.then
  %38 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %38
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @expand_builtin_strpbrk(%union.tree_node* %arglist, %struct.rtx_def* %target, i32 %mode) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %arglist.addr = alloca %union.tree_node*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %s1 = alloca %union.tree_node*, align 8
  %s2 = alloca %union.tree_node*, align 8
  %fn = alloca %union.tree_node*, align 8
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  %r = alloca i8*, align 8
  store %union.tree_node* %arglist, %union.tree_node** %arglist.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %call = call i32 (%union.tree_node*, ...) @validate_arglist(%union.tree_node* %0, i32 13, i32 13, i32 5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %list = bitcast %union.tree_node* %1 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %2 = load %union.tree_node*, %union.tree_node** %value, align 8
  store %union.tree_node* %2, %union.tree_node** %s1, align 8
  %3 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common = bitcast %union.tree_node* %3 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %4 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %list1 = bitcast %union.tree_node* %4 to %struct.tree_list*
  %value2 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1, i32 0, i32 2
  %5 = load %union.tree_node*, %union.tree_node** %value2, align 8
  store %union.tree_node* %5, %union.tree_node** %s2, align 8
  %6 = load %union.tree_node*, %union.tree_node** %s2, align 8
  %call3 = call i8* @c_getstr(%union.tree_node* %6)
  store i8* %call3, i8** %p2, align 8
  %7 = load i8*, i8** %p2, align 8
  %cmp = icmp eq i8* %7, null
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %if.else
  %8 = load %union.tree_node*, %union.tree_node** %s1, align 8
  %call5 = call i8* @c_getstr(%union.tree_node* %8)
  store i8* %call5, i8** %p1, align 8
  %9 = load i8*, i8** %p1, align 8
  %cmp6 = icmp ne i8* %9, null
  br i1 %cmp6, label %if.then.7, label %if.end.17

if.then.7:                                        ; preds = %if.end
  %10 = load i8*, i8** %p1, align 8
  %11 = load i8*, i8** %p2, align 8
  %call8 = call i8* @strpbrk(i8* %10, i8* %11) #6
  store i8* %call8, i8** %r, align 8
  %12 = load i8*, i8** %r, align 8
  %cmp9 = icmp eq i8* %12, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.7
  %13 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.7
  %14 = load %union.tree_node*, %union.tree_node** %s1, align 8
  %common12 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common12, i32 0, i32 1
  %15 = load %union.tree_node*, %union.tree_node** %type, align 8
  %16 = load %union.tree_node*, %union.tree_node** %s1, align 8
  %17 = load i8*, i8** %r, align 8
  %18 = load i8*, i8** %p1, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call13 = call %union.tree_node* @size_int_wide(i64 %sub.ptr.sub, i32 1)
  %call14 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 59, %union.tree_node* %15, %union.tree_node* %16, %union.tree_node* %call13)
  %call15 = call %union.tree_node* @fold(%union.tree_node* %call14)
  %19 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %20 = load i32, i32* %mode.addr, align 4
  %call16 = call %struct.rtx_def* @expand_expr(%union.tree_node* %call15, %struct.rtx_def* %19, i32 %20, i32 0)
  store %struct.rtx_def* %call16, %struct.rtx_def** %retval
  br label %return

if.end.17:                                        ; preds = %if.end
  %21 = load i8*, i8** %p2, align 8
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 0
  %22 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %22 to i32
  %cmp18 = icmp eq i32 %conv, 0
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.17
  %23 = load %union.tree_node*, %union.tree_node** %s1, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call21 = call %struct.rtx_def* @expand_expr(%union.tree_node* %23, %struct.rtx_def* %24, i32 0, i32 0)
  %25 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %25, %struct.rtx_def** %retval
  br label %return

if.end.22:                                        ; preds = %if.end.17
  %26 = load i8*, i8** %p2, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i8, i8* %arrayidx23, align 1
  %conv24 = sext i8 %27 to i32
  %cmp25 = icmp ne i32 %conv24, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.22
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.28:                                        ; preds = %if.end.22
  %28 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([95 x %union.tree_node*], [95 x %union.tree_node*]* @built_in_decls, i32 0, i64 36), align 8
  store %union.tree_node* %28, %union.tree_node** %fn, align 8
  %29 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %tobool29 = icmp ne %union.tree_node* %29, null
  br i1 %tobool29, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %if.end.28
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.31:                                        ; preds = %if.end.28
  %30 = load i8*, i8** %p2, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %30, i64 0
  %31 = load i8, i8* %arrayidx32, align 1
  %conv33 = sext i8 %31 to i64
  %call34 = call %union.tree_node* @build_int_2_wide(i64 %conv33, i64 0)
  %call35 = call %union.tree_node* @build_tree_list(%union.tree_node* null, %union.tree_node* %call34)
  store %union.tree_node* %call35, %union.tree_node** %arglist.addr, align 8
  %32 = load %union.tree_node*, %union.tree_node** %s1, align 8
  %33 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %call36 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %32, %union.tree_node* %33)
  store %union.tree_node* %call36, %union.tree_node** %arglist.addr, align 8
  %34 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %35 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %call37 = call %union.tree_node* @build_function_call_expr(%union.tree_node* %34, %union.tree_node* %35)
  %36 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %37 = load i32, i32* %mode.addr, align 4
  %call38 = call %struct.rtx_def* @expand_expr(%union.tree_node* %call37, %struct.rtx_def* %36, i32 %37, i32 0)
  store %struct.rtx_def* %call38, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.then.30, %if.then.27, %if.then.20, %if.end.11, %if.then.10, %if.then.4, %if.then
  %38 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %38
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @expand_builtin_strchr(%union.tree_node* %arglist, %struct.rtx_def* %target, i32 %mode) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %arglist.addr = alloca %union.tree_node*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %s1 = alloca %union.tree_node*, align 8
  %s2 = alloca %union.tree_node*, align 8
  %p1 = alloca i8*, align 8
  %c = alloca i8, align 1
  %r = alloca i8*, align 8
  store %union.tree_node* %arglist, %union.tree_node** %arglist.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %call = call i32 (%union.tree_node*, ...) @validate_arglist(%union.tree_node* %0, i32 13, i32 6, i32 5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %list = bitcast %union.tree_node* %1 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %2 = load %union.tree_node*, %union.tree_node** %value, align 8
  store %union.tree_node* %2, %union.tree_node** %s1, align 8
  %3 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common = bitcast %union.tree_node* %3 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %4 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %list1 = bitcast %union.tree_node* %4 to %struct.tree_list*
  %value2 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1, i32 0, i32 2
  %5 = load %union.tree_node*, %union.tree_node** %value2, align 8
  store %union.tree_node* %5, %union.tree_node** %s2, align 8
  %6 = load %union.tree_node*, %union.tree_node** %s2, align 8
  %common3 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp ne i32 %bf.clear, 25
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %if.else
  %7 = load %union.tree_node*, %union.tree_node** %s1, align 8
  %call5 = call i8* @c_getstr(%union.tree_node* %7)
  store i8* %call5, i8** %p1, align 8
  %8 = load i8*, i8** %p1, align 8
  %cmp6 = icmp ne i8* %8, null
  br i1 %cmp6, label %if.then.7, label %if.end.22

if.then.7:                                        ; preds = %if.end
  %9 = load %union.tree_node*, %union.tree_node** %s2, align 8
  %call8 = call i32 @target_char_cast(%union.tree_node* %9, i8* %c)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.7
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.7
  %10 = load i8*, i8** %p1, align 8
  %11 = load i8, i8* %c, align 1
  %conv = sext i8 %11 to i32
  %call12 = call i8* @strchr(i8* %10, i32 %conv) #6
  store i8* %call12, i8** %r, align 8
  %12 = load i8*, i8** %r, align 8
  %cmp13 = icmp eq i8* %12, null
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.11
  %13 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %retval
  br label %return

if.end.16:                                        ; preds = %if.end.11
  %14 = load %union.tree_node*, %union.tree_node** %s1, align 8
  %common17 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common17, i32 0, i32 1
  %15 = load %union.tree_node*, %union.tree_node** %type, align 8
  %16 = load %union.tree_node*, %union.tree_node** %s1, align 8
  %17 = load i8*, i8** %r, align 8
  %18 = load i8*, i8** %p1, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call18 = call %union.tree_node* @size_int_wide(i64 %sub.ptr.sub, i32 1)
  %call19 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 59, %union.tree_node* %15, %union.tree_node* %16, %union.tree_node* %call18)
  %call20 = call %union.tree_node* @fold(%union.tree_node* %call19)
  %19 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %20 = load i32, i32* %mode.addr, align 4
  %call21 = call %struct.rtx_def* @expand_expr(%union.tree_node* %call20, %struct.rtx_def* %19, i32 %20, i32 0)
  store %struct.rtx_def* %call21, %struct.rtx_def** %retval
  br label %return

if.end.22:                                        ; preds = %if.end
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.end.16, %if.then.15, %if.then.10, %if.then.4, %if.then
  %21 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %21
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @expand_builtin_strrchr(%union.tree_node* %arglist, %struct.rtx_def* %target, i32 %mode) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %arglist.addr = alloca %union.tree_node*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %s1 = alloca %union.tree_node*, align 8
  %s2 = alloca %union.tree_node*, align 8
  %fn = alloca %union.tree_node*, align 8
  %p1 = alloca i8*, align 8
  %c = alloca i8, align 1
  %r = alloca i8*, align 8
  store %union.tree_node* %arglist, %union.tree_node** %arglist.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %call = call i32 (%union.tree_node*, ...) @validate_arglist(%union.tree_node* %0, i32 13, i32 6, i32 5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %list = bitcast %union.tree_node* %1 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %2 = load %union.tree_node*, %union.tree_node** %value, align 8
  store %union.tree_node* %2, %union.tree_node** %s1, align 8
  %3 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common = bitcast %union.tree_node* %3 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %4 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %list1 = bitcast %union.tree_node* %4 to %struct.tree_list*
  %value2 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1, i32 0, i32 2
  %5 = load %union.tree_node*, %union.tree_node** %value2, align 8
  store %union.tree_node* %5, %union.tree_node** %s2, align 8
  %6 = load %union.tree_node*, %union.tree_node** %s2, align 8
  %common3 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp ne i32 %bf.clear, 25
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %if.else
  %7 = load %union.tree_node*, %union.tree_node** %s1, align 8
  %call5 = call i8* @c_getstr(%union.tree_node* %7)
  store i8* %call5, i8** %p1, align 8
  %8 = load i8*, i8** %p1, align 8
  %cmp6 = icmp ne i8* %8, null
  br i1 %cmp6, label %if.then.7, label %if.end.22

if.then.7:                                        ; preds = %if.end
  %9 = load %union.tree_node*, %union.tree_node** %s2, align 8
  %call8 = call i32 @target_char_cast(%union.tree_node* %9, i8* %c)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.7
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.7
  %10 = load i8*, i8** %p1, align 8
  %11 = load i8, i8* %c, align 1
  %conv = sext i8 %11 to i32
  %call12 = call i8* @strrchr(i8* %10, i32 %conv) #6
  store i8* %call12, i8** %r, align 8
  %12 = load i8*, i8** %r, align 8
  %cmp13 = icmp eq i8* %12, null
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.11
  %13 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %retval
  br label %return

if.end.16:                                        ; preds = %if.end.11
  %14 = load %union.tree_node*, %union.tree_node** %s1, align 8
  %common17 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common17, i32 0, i32 1
  %15 = load %union.tree_node*, %union.tree_node** %type, align 8
  %16 = load %union.tree_node*, %union.tree_node** %s1, align 8
  %17 = load i8*, i8** %r, align 8
  %18 = load i8*, i8** %p1, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call18 = call %union.tree_node* @size_int_wide(i64 %sub.ptr.sub, i32 1)
  %call19 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 59, %union.tree_node* %15, %union.tree_node* %16, %union.tree_node* %call18)
  %call20 = call %union.tree_node* @fold(%union.tree_node* %call19)
  %19 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %20 = load i32, i32* %mode.addr, align 4
  %call21 = call %struct.rtx_def* @expand_expr(%union.tree_node* %call20, %struct.rtx_def* %19, i32 %20, i32 0)
  store %struct.rtx_def* %call21, %struct.rtx_def** %retval
  br label %return

if.end.22:                                        ; preds = %if.end
  %21 = load %union.tree_node*, %union.tree_node** %s2, align 8
  %call23 = call i32 @integer_zerop(%union.tree_node* %21)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.end.22
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.26:                                        ; preds = %if.end.22
  %22 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([95 x %union.tree_node*], [95 x %union.tree_node*]* @built_in_decls, i32 0, i64 36), align 8
  store %union.tree_node* %22, %union.tree_node** %fn, align 8
  %23 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %tobool27 = icmp ne %union.tree_node* %23, null
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %if.end.26
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.29:                                        ; preds = %if.end.26
  %24 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %25 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %call30 = call %union.tree_node* @build_function_call_expr(%union.tree_node* %24, %union.tree_node* %25)
  %26 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %27 = load i32, i32* %mode.addr, align 4
  %call31 = call %struct.rtx_def* @expand_expr(%union.tree_node* %call30, %struct.rtx_def* %26, i32 %27, i32 0)
  store %struct.rtx_def* %call31, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.then.28, %if.then.25, %if.end.16, %if.then.15, %if.then.10, %if.then.4, %if.then
  %28 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %28
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @expand_builtin_memcpy(%union.tree_node* %arglist, %struct.rtx_def* %target, i32 %mode) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %arglist.addr = alloca %union.tree_node*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %dest = alloca %union.tree_node*, align 8
  %src = alloca %union.tree_node*, align 8
  %len = alloca %union.tree_node*, align 8
  %src_str = alloca i8*, align 8
  %src_align = alloca i32, align 4
  %dest_align = alloca i32, align 4
  %dest_mem = alloca %struct.rtx_def*, align 8
  %src_mem = alloca %struct.rtx_def*, align 8
  %dest_addr = alloca %struct.rtx_def*, align 8
  %len_rtx = alloca %struct.rtx_def*, align 8
  store %union.tree_node* %arglist, %union.tree_node** %arglist.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %call = call i32 (%union.tree_node*, ...) @validate_arglist(%union.tree_node* %0, i32 13, i32 13, i32 6, i32 5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %list = bitcast %union.tree_node* %1 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %2 = load %union.tree_node*, %union.tree_node** %value, align 8
  store %union.tree_node* %2, %union.tree_node** %dest, align 8
  %3 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common = bitcast %union.tree_node* %3 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %4 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %list1 = bitcast %union.tree_node* %4 to %struct.tree_list*
  %value2 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1, i32 0, i32 2
  %5 = load %union.tree_node*, %union.tree_node** %value2, align 8
  store %union.tree_node* %5, %union.tree_node** %src, align 8
  %6 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common3 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %chain4 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3, i32 0, i32 0
  %7 = load %union.tree_node*, %union.tree_node** %chain4, align 8
  %common5 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %chain6 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common5, i32 0, i32 0
  %8 = load %union.tree_node*, %union.tree_node** %chain6, align 8
  %list7 = bitcast %union.tree_node* %8 to %struct.tree_list*
  %value8 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list7, i32 0, i32 2
  %9 = load %union.tree_node*, %union.tree_node** %value8, align 8
  store %union.tree_node* %9, %union.tree_node** %len, align 8
  %10 = load %union.tree_node*, %union.tree_node** %src, align 8
  %call9 = call i32 @get_pointer_alignment(%union.tree_node* %10, i32 128)
  store i32 %call9, i32* %src_align, align 4
  %11 = load %union.tree_node*, %union.tree_node** %dest, align 8
  %call10 = call i32 @get_pointer_alignment(%union.tree_node* %11, i32 128)
  store i32 %call10, i32* %dest_align, align 4
  %12 = load i32, i32* %dest_align, align 4
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.else
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %if.else
  %13 = load %union.tree_node*, %union.tree_node** %len, align 8
  %call12 = call i32 @host_integerp(%union.tree_node* %13, i32 1)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end
  %14 = load %union.tree_node*, %union.tree_node** %len, align 8
  %call14 = call i64 @tree_low_cst(%union.tree_node* %14, i32 1)
  %cmp15 = icmp eq i64 %call14, 0
  br i1 %cmp15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %land.lhs.true
  %15 = load %union.tree_node*, %union.tree_node** %src, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call17 = call %struct.rtx_def* @expand_expr(%union.tree_node* %15, %struct.rtx_def* %16, i32 0, i32 0)
  %17 = load %union.tree_node*, %union.tree_node** %dest, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %19 = load i32, i32* %mode.addr, align 4
  %call18 = call %struct.rtx_def* @expand_expr(%union.tree_node* %17, %struct.rtx_def* %18, i32 %19, i32 0)
  store %struct.rtx_def* %call18, %struct.rtx_def** %retval
  br label %return

if.end.19:                                        ; preds = %land.lhs.true, %if.end
  %20 = load i32, i32* %src_align, align 4
  %cmp20 = icmp eq i32 %20, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.19
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.22:                                        ; preds = %if.end.19
  %21 = load %union.tree_node*, %union.tree_node** %dest, align 8
  %call23 = call %struct.rtx_def* @get_memory_rtx(%union.tree_node* %21)
  store %struct.rtx_def* %call23, %struct.rtx_def** %dest_mem, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %dest_mem, align 8
  %23 = load i32, i32* %dest_align, align 4
  call void @set_mem_align(%struct.rtx_def* %22, i32 %23)
  %24 = load %union.tree_node*, %union.tree_node** %len, align 8
  %call24 = call %struct.rtx_def* @expand_expr(%union.tree_node* %24, %struct.rtx_def* null, i32 0, i32 0)
  store %struct.rtx_def* %call24, %struct.rtx_def** %len_rtx, align 8
  %25 = load %union.tree_node*, %union.tree_node** %src, align 8
  %call25 = call i8* @c_getstr(%union.tree_node* %25)
  store i8* %call25, i8** %src_str, align 8
  %26 = load i8*, i8** %src_str, align 8
  %tobool26 = icmp ne i8* %26, null
  br i1 %tobool26, label %land.lhs.true.27, label %if.end.45

land.lhs.true.27:                                 ; preds = %if.end.22
  %27 = load %struct.rtx_def*, %struct.rtx_def** %len_rtx, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load = load i32, i32* %28, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp28 = icmp eq i32 %bf.clear, 54
  br i1 %cmp28, label %land.lhs.true.29, label %if.end.45

land.lhs.true.29:                                 ; preds = %land.lhs.true.27
  %29 = load %struct.rtx_def*, %struct.rtx_def** %len_rtx, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx to i64*
  %30 = load i64, i64* %rtwint, align 8
  %31 = load i8*, i8** %src_str, align 8
  %call30 = call i64 @strlen(i8* %31) #6
  %add = add i64 %call30, 1
  %cmp31 = icmp ule i64 %30, %add
  br i1 %cmp31, label %land.lhs.true.32, label %if.end.45

land.lhs.true.32:                                 ; preds = %land.lhs.true.29
  %32 = load %struct.rtx_def*, %struct.rtx_def** %len_rtx, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 0
  %rtwint35 = bitcast %union.rtunion_def* %arrayidx34 to i64*
  %33 = load i64, i64* %rtwint35, align 8
  %34 = load i8*, i8** %src_str, align 8
  %35 = load i32, i32* %dest_align, align 4
  %call36 = call i32 @can_store_by_pieces(i64 %33, %struct.rtx_def* (i8*, i64, i32)* @builtin_memcpy_read_str, i8* %34, i32 %35)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.45

if.then.38:                                       ; preds = %land.lhs.true.32
  %36 = load %struct.rtx_def*, %struct.rtx_def** %dest_mem, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %len_rtx, align 8
  %fld39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld39, i32 0, i64 0
  %rtwint41 = bitcast %union.rtunion_def* %arrayidx40 to i64*
  %38 = load i64, i64* %rtwint41, align 8
  %39 = load i8*, i8** %src_str, align 8
  %40 = load i32, i32* %dest_align, align 4
  call void @store_by_pieces(%struct.rtx_def* %36, i64 %38, %struct.rtx_def* (i8*, i64, i32)* @builtin_memcpy_read_str, i8* %39, i32 %40)
  %41 = load %struct.rtx_def*, %struct.rtx_def** %dest_mem, align 8
  %fld42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld42, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx43 to %struct.rtx_def**
  %42 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call44 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %42, %struct.rtx_def* null)
  store %struct.rtx_def* %call44, %struct.rtx_def** %retval
  br label %return

if.end.45:                                        ; preds = %land.lhs.true.32, %land.lhs.true.29, %land.lhs.true.27, %if.end.22
  %43 = load %union.tree_node*, %union.tree_node** %src, align 8
  %call46 = call %struct.rtx_def* @get_memory_rtx(%union.tree_node* %43)
  store %struct.rtx_def* %call46, %struct.rtx_def** %src_mem, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %src_mem, align 8
  %45 = load i32, i32* %src_align, align 4
  call void @set_mem_align(%struct.rtx_def* %44, i32 %45)
  %46 = load %struct.rtx_def*, %struct.rtx_def** %dest_mem, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %src_mem, align 8
  %48 = load %struct.rtx_def*, %struct.rtx_def** %len_rtx, align 8
  %call47 = call %struct.rtx_def* @emit_block_move(%struct.rtx_def* %46, %struct.rtx_def* %47, %struct.rtx_def* %48)
  store %struct.rtx_def* %call47, %struct.rtx_def** %dest_addr, align 8
  %49 = load %struct.rtx_def*, %struct.rtx_def** %dest_addr, align 8
  %cmp48 = icmp eq %struct.rtx_def* %49, null
  br i1 %cmp48, label %if.then.49, label %if.end.54

if.then.49:                                       ; preds = %if.end.45
  %50 = load %struct.rtx_def*, %struct.rtx_def** %dest_mem, align 8
  %fld50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld50, i32 0, i64 0
  %rtx52 = bitcast %union.rtunion_def* %arrayidx51 to %struct.rtx_def**
  %51 = load %struct.rtx_def*, %struct.rtx_def** %rtx52, align 8
  %call53 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %51, %struct.rtx_def* null)
  store %struct.rtx_def* %call53, %struct.rtx_def** %dest_addr, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.49, %if.end.45
  %52 = load %struct.rtx_def*, %struct.rtx_def** %dest_addr, align 8
  store %struct.rtx_def* %52, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.54, %if.then.38, %if.then.21, %if.then.16, %if.then.11, %if.then
  %53 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %53
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @expand_builtin_memset(%union.tree_node* %exp, %struct.rtx_def* %target, i32 %mode) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %exp.addr = alloca %union.tree_node*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %arglist = alloca %union.tree_node*, align 8
  %dest = alloca %union.tree_node*, align 8
  %val = alloca %union.tree_node*, align 8
  %len = alloca %union.tree_node*, align 8
  %c = alloca i8, align 1
  %dest_align = alloca i32, align 4
  %dest_mem = alloca %struct.rtx_def*, align 8
  %dest_addr = alloca %struct.rtx_def*, align 8
  %len_rtx = alloca %struct.rtx_def*, align 8
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp1 = bitcast %union.tree_node* %0 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp1, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 1
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %1, %union.tree_node** %arglist, align 8
  %2 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %call = call i32 (%union.tree_node*, ...) @validate_arglist(%union.tree_node* %2, i32 13, i32 6, i32 6, i32 5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %list = bitcast %union.tree_node* %3 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %4 = load %union.tree_node*, %union.tree_node** %value, align 8
  store %union.tree_node* %4, %union.tree_node** %dest, align 8
  %5 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %common = bitcast %union.tree_node* %5 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %6 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %list2 = bitcast %union.tree_node* %6 to %struct.tree_list*
  %value3 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list2, i32 0, i32 2
  %7 = load %union.tree_node*, %union.tree_node** %value3, align 8
  store %union.tree_node* %7, %union.tree_node** %val, align 8
  %8 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %common4 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %chain5 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4, i32 0, i32 0
  %9 = load %union.tree_node*, %union.tree_node** %chain5, align 8
  %common6 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %chain7 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common6, i32 0, i32 0
  %10 = load %union.tree_node*, %union.tree_node** %chain7, align 8
  %list8 = bitcast %union.tree_node* %10 to %struct.tree_list*
  %value9 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list8, i32 0, i32 2
  %11 = load %union.tree_node*, %union.tree_node** %value9, align 8
  store %union.tree_node* %11, %union.tree_node** %len, align 8
  %12 = load %union.tree_node*, %union.tree_node** %dest, align 8
  %call10 = call i32 @get_pointer_alignment(%union.tree_node* %12, i32 128)
  store i32 %call10, i32* %dest_align, align 4
  %13 = load i32, i32* %dest_align, align 4
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.else
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %if.else
  %14 = load %union.tree_node*, %union.tree_node** %len, align 8
  %call12 = call i32 @host_integerp(%union.tree_node* %14, i32 1)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end
  %15 = load %union.tree_node*, %union.tree_node** %len, align 8
  %call14 = call i64 @tree_low_cst(%union.tree_node* %15, i32 1)
  %cmp15 = icmp eq i64 %call14, 0
  br i1 %cmp15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %land.lhs.true
  %16 = load %union.tree_node*, %union.tree_node** %val, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call17 = call %struct.rtx_def* @expand_expr(%union.tree_node* %16, %struct.rtx_def* %17, i32 0, i32 0)
  %18 = load %union.tree_node*, %union.tree_node** %dest, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %20 = load i32, i32* %mode.addr, align 4
  %call18 = call %struct.rtx_def* @expand_expr(%union.tree_node* %18, %struct.rtx_def* %19, i32 %20, i32 0)
  store %struct.rtx_def* %call18, %struct.rtx_def** %retval
  br label %return

if.end.19:                                        ; preds = %land.lhs.true, %if.end
  %21 = load %union.tree_node*, %union.tree_node** %val, align 8
  %common20 = bitcast %union.tree_node* %21 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common20, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp21 = icmp ne i32 %bf.clear, 25
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.19
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.23:                                        ; preds = %if.end.19
  %22 = load %union.tree_node*, %union.tree_node** %val, align 8
  %call24 = call i32 @target_char_cast(%union.tree_node* %22, i8* %c)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.23
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.27:                                        ; preds = %if.end.23
  %23 = load i8, i8* %c, align 1
  %tobool28 = icmp ne i8 %23, 0
  br i1 %tobool28, label %if.then.29, label %if.end.43

if.then.29:                                       ; preds = %if.end.27
  %24 = load %union.tree_node*, %union.tree_node** %len, align 8
  %call30 = call i32 @host_integerp(%union.tree_node* %24, i32 1)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %if.then.29
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.33:                                        ; preds = %if.then.29
  %25 = load %union.tree_node*, %union.tree_node** %len, align 8
  %call34 = call i64 @tree_low_cst(%union.tree_node* %25, i32 1)
  %26 = load i32, i32* %dest_align, align 4
  %call35 = call i32 @can_store_by_pieces(i64 %call34, %struct.rtx_def* (i8*, i64, i32)* @builtin_memset_read_str, i8* %c, i32 %26)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %if.end.33
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.38:                                        ; preds = %if.end.33
  %27 = load %union.tree_node*, %union.tree_node** %dest, align 8
  %call39 = call %struct.rtx_def* @get_memory_rtx(%union.tree_node* %27)
  store %struct.rtx_def* %call39, %struct.rtx_def** %dest_mem, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %dest_mem, align 8
  %29 = load %union.tree_node*, %union.tree_node** %len, align 8
  %call40 = call i64 @tree_low_cst(%union.tree_node* %29, i32 1)
  %30 = load i32, i32* %dest_align, align 4
  call void @store_by_pieces(%struct.rtx_def* %28, i64 %call40, %struct.rtx_def* (i8*, i64, i32)* @builtin_memset_read_str, i8* %c, i32 %30)
  %31 = load %struct.rtx_def*, %struct.rtx_def** %dest_mem, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call42 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %32, %struct.rtx_def* null)
  store %struct.rtx_def* %call42, %struct.rtx_def** %retval
  br label %return

if.end.43:                                        ; preds = %if.end.27
  %33 = load %union.tree_node*, %union.tree_node** %len, align 8
  %call44 = call %struct.rtx_def* @expand_expr(%union.tree_node* %33, %struct.rtx_def* null, i32 0, i32 0)
  store %struct.rtx_def* %call44, %struct.rtx_def** %len_rtx, align 8
  %34 = load %union.tree_node*, %union.tree_node** %dest, align 8
  %call45 = call %struct.rtx_def* @get_memory_rtx(%union.tree_node* %34)
  store %struct.rtx_def* %call45, %struct.rtx_def** %dest_mem, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %dest_mem, align 8
  %36 = load i32, i32* %dest_align, align 4
  call void @set_mem_align(%struct.rtx_def* %35, i32 %36)
  %37 = load %struct.rtx_def*, %struct.rtx_def** %dest_mem, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %len_rtx, align 8
  %call46 = call %struct.rtx_def* @clear_storage(%struct.rtx_def* %37, %struct.rtx_def* %38)
  store %struct.rtx_def* %call46, %struct.rtx_def** %dest_addr, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %dest_addr, align 8
  %cmp47 = icmp eq %struct.rtx_def* %39, null
  br i1 %cmp47, label %if.then.48, label %if.end.53

if.then.48:                                       ; preds = %if.end.43
  %40 = load %struct.rtx_def*, %struct.rtx_def** %dest_mem, align 8
  %fld49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld49, i32 0, i64 0
  %rtx51 = bitcast %union.rtunion_def* %arrayidx50 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx51, align 8
  %call52 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %41, %struct.rtx_def* null)
  store %struct.rtx_def* %call52, %struct.rtx_def** %dest_addr, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.48, %if.end.43
  %42 = load %struct.rtx_def*, %struct.rtx_def** %dest_addr, align 8
  store %struct.rtx_def* %42, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.53, %if.end.38, %if.then.37, %if.then.32, %if.then.26, %if.then.22, %if.then.16, %if.then.11, %if.then
  %43 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %43
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @expand_builtin_bzero(%union.tree_node* %exp) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %exp.addr = alloca %union.tree_node*, align 8
  %arglist = alloca %union.tree_node*, align 8
  %dest = alloca %union.tree_node*, align 8
  %size = alloca %union.tree_node*, align 8
  %newarglist = alloca %union.tree_node*, align 8
  %result = alloca %struct.rtx_def*, align 8
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp1 = bitcast %union.tree_node* %0 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp1, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 1
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %1, %union.tree_node** %arglist, align 8
  %2 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %call = call i32 (%union.tree_node*, ...) @validate_arglist(%union.tree_node* %2, i32 13, i32 6, i32 5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %list = bitcast %union.tree_node* %3 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %4 = load %union.tree_node*, %union.tree_node** %value, align 8
  store %union.tree_node* %4, %union.tree_node** %dest, align 8
  %5 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %common = bitcast %union.tree_node* %5 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %6 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %list2 = bitcast %union.tree_node* %6 to %struct.tree_list*
  %value3 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list2, i32 0, i32 2
  %7 = load %union.tree_node*, %union.tree_node** %value3, align 8
  store %union.tree_node* %7, %union.tree_node** %size, align 8
  %8 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  %9 = load %union.tree_node*, %union.tree_node** %size, align 8
  %call4 = call %union.tree_node* @convert(%union.tree_node* %8, %union.tree_node* %9)
  %call5 = call %union.tree_node* @build_tree_list(%union.tree_node* null, %union.tree_node* %call4)
  store %union.tree_node* %call5, %union.tree_node** %newarglist, align 8
  %10 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 11), align 8
  %11 = load %union.tree_node*, %union.tree_node** %newarglist, align 8
  %call6 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %10, %union.tree_node* %11)
  store %union.tree_node* %call6, %union.tree_node** %newarglist, align 8
  %12 = load %union.tree_node*, %union.tree_node** %dest, align 8
  %13 = load %union.tree_node*, %union.tree_node** %newarglist, align 8
  %call7 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %12, %union.tree_node* %13)
  store %union.tree_node* %call7, %union.tree_node** %newarglist, align 8
  %14 = load %union.tree_node*, %union.tree_node** %newarglist, align 8
  %15 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp8 = bitcast %union.tree_node* %15 to %struct.tree_exp*
  %operands9 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp8, i32 0, i32 2
  %arrayidx10 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands9, i32 0, i64 1
  store %union.tree_node* %14, %union.tree_node** %arrayidx10, align 8
  %16 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call11 = call %struct.rtx_def* @expand_builtin_memset(%union.tree_node* %16, %struct.rtx_def* %17, i32 0)
  store %struct.rtx_def* %call11, %struct.rtx_def** %result, align 8
  %18 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %19 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp12 = bitcast %union.tree_node* %19 to %struct.tree_exp*
  %operands13 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp12, i32 0, i32 2
  %arrayidx14 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands13, i32 0, i64 1
  store %union.tree_node* %18, %union.tree_node** %arrayidx14, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  store %struct.rtx_def* %20, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %21 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %21
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @expand_builtin_strcmp(%union.tree_node* %exp, %struct.rtx_def* %target, i32 %mode) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %exp.addr = alloca %union.tree_node*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %arglist = alloca %union.tree_node*, align 8
  %arg1 = alloca %union.tree_node*, align 8
  %arg2 = alloca %union.tree_node*, align 8
  %len = alloca %union.tree_node*, align 8
  %len2 = alloca %union.tree_node*, align 8
  %fn = alloca %union.tree_node*, align 8
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  %i = alloca i32, align 4
  %cst_uchar_node = alloca %union.tree_node*, align 8
  %cst_uchar_ptr_node = alloca %union.tree_node*, align 8
  %ind1 = alloca %union.tree_node*, align 8
  %ind2 = alloca %union.tree_node*, align 8
  %result = alloca %union.tree_node*, align 8
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp1 = bitcast %union.tree_node* %0 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp1, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 1
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %1, %union.tree_node** %arglist, align 8
  %2 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %call = call i32 (%union.tree_node*, ...) @validate_arglist(%union.tree_node* %2, i32 13, i32 13, i32 5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %list = bitcast %union.tree_node* %3 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %4 = load %union.tree_node*, %union.tree_node** %value, align 8
  store %union.tree_node* %4, %union.tree_node** %arg1, align 8
  %5 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %common = bitcast %union.tree_node* %5 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %6 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %list2 = bitcast %union.tree_node* %6 to %struct.tree_list*
  %value3 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list2, i32 0, i32 2
  %7 = load %union.tree_node*, %union.tree_node** %value3, align 8
  store %union.tree_node* %7, %union.tree_node** %arg2, align 8
  %8 = load %union.tree_node*, %union.tree_node** %arg1, align 8
  %call4 = call i8* @c_getstr(%union.tree_node* %8)
  store i8* %call4, i8** %p1, align 8
  %9 = load %union.tree_node*, %union.tree_node** %arg2, align 8
  %call5 = call i8* @c_getstr(%union.tree_node* %9)
  store i8* %call5, i8** %p2, align 8
  %10 = load i8*, i8** %p1, align 8
  %tobool6 = icmp ne i8* %10, null
  br i1 %tobool6, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.end
  %11 = load i8*, i8** %p2, align 8
  %tobool7 = icmp ne i8* %11, null
  br i1 %tobool7, label %if.then.8, label %if.end.15

if.then.8:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %p1, align 8
  %13 = load i8*, i8** %p2, align 8
  %call9 = call i32 @strcmp(i8* %12, i8* %13) #6
  store i32 %call9, i32* %i, align 4
  %14 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %14, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.8
  %15 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 63), align 8
  br label %cond.end.13

cond.false:                                       ; preds = %if.then.8
  %16 = load i32, i32* %i, align 4
  %cmp10 = icmp sgt i32 %16, 0
  br i1 %cmp10, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %cond.false
  %17 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  br label %cond.end

cond.false.12:                                    ; preds = %cond.false
  %18 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.12, %cond.true.11
  %cond = phi %struct.rtx_def* [ %17, %cond.true.11 ], [ %18, %cond.false.12 ]
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.end, %cond.true
  %cond14 = phi %struct.rtx_def* [ %15, %cond.true ], [ %cond, %cond.end ]
  store %struct.rtx_def* %cond14, %struct.rtx_def** %retval
  br label %return

if.end.15:                                        ; preds = %land.lhs.true, %if.end
  %19 = load i8*, i8** %p1, align 8
  %tobool16 = icmp ne i8* %19, null
  br i1 %tobool16, label %land.lhs.true.17, label %lor.lhs.false

land.lhs.true.17:                                 ; preds = %if.end.15
  %20 = load i8*, i8** %p1, align 8
  %21 = load i8, i8* %20, align 1
  %conv = sext i8 %21 to i32
  %cmp18 = icmp eq i32 %conv, 0
  br i1 %cmp18, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.17, %if.end.15
  %22 = load i8*, i8** %p2, align 8
  %tobool20 = icmp ne i8* %22, null
  br i1 %tobool20, label %land.lhs.true.21, label %if.end.39

land.lhs.true.21:                                 ; preds = %lor.lhs.false
  %23 = load i8*, i8** %p2, align 8
  %24 = load i8, i8* %23, align 1
  %conv22 = sext i8 %24 to i32
  %cmp23 = icmp eq i32 %conv22, 0
  br i1 %cmp23, label %if.then.25, label %if.end.39

if.then.25:                                       ; preds = %land.lhs.true.21, %land.lhs.true.17
  %25 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 2), align 8
  %call26 = call %union.tree_node* @build_qualified_type(%union.tree_node* %25, i32 1)
  store %union.tree_node* %call26, %union.tree_node** %cst_uchar_node, align 8
  %26 = load %union.tree_node*, %union.tree_node** %cst_uchar_node, align 8
  %call27 = call %union.tree_node* @build_pointer_type(%union.tree_node* %26)
  store %union.tree_node* %call27, %union.tree_node** %cst_uchar_ptr_node, align 8
  %27 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  %28 = load %union.tree_node*, %union.tree_node** %cst_uchar_node, align 8
  %29 = load %union.tree_node*, %union.tree_node** %cst_uchar_ptr_node, align 8
  %30 = load %union.tree_node*, %union.tree_node** %arg1, align 8
  %call28 = call %union.tree_node* @build1(i32 115, %union.tree_node* %29, %union.tree_node* %30)
  %call29 = call %union.tree_node* @build1(i32 41, %union.tree_node* %28, %union.tree_node* %call28)
  %call30 = call %union.tree_node* @build1(i32 114, %union.tree_node* %27, %union.tree_node* %call29)
  %call31 = call %union.tree_node* @fold(%union.tree_node* %call30)
  store %union.tree_node* %call31, %union.tree_node** %ind1, align 8
  %31 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  %32 = load %union.tree_node*, %union.tree_node** %cst_uchar_node, align 8
  %33 = load %union.tree_node*, %union.tree_node** %cst_uchar_ptr_node, align 8
  %34 = load %union.tree_node*, %union.tree_node** %arg2, align 8
  %call32 = call %union.tree_node* @build1(i32 115, %union.tree_node* %33, %union.tree_node* %34)
  %call33 = call %union.tree_node* @build1(i32 41, %union.tree_node* %32, %union.tree_node* %call32)
  %call34 = call %union.tree_node* @build1(i32 114, %union.tree_node* %31, %union.tree_node* %call33)
  %call35 = call %union.tree_node* @fold(%union.tree_node* %call34)
  store %union.tree_node* %call35, %union.tree_node** %ind2, align 8
  %35 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  %36 = load %union.tree_node*, %union.tree_node** %ind1, align 8
  %37 = load %union.tree_node*, %union.tree_node** %ind2, align 8
  %call36 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 60, %union.tree_node* %35, %union.tree_node* %36, %union.tree_node* %37)
  %call37 = call %union.tree_node* @fold(%union.tree_node* %call36)
  store %union.tree_node* %call37, %union.tree_node** %result, align 8
  %38 = load %union.tree_node*, %union.tree_node** %result, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %40 = load i32, i32* %mode.addr, align 4
  %call38 = call %struct.rtx_def* @expand_expr(%union.tree_node* %38, %struct.rtx_def* %39, i32 %40, i32 0)
  store %struct.rtx_def* %call38, %struct.rtx_def** %retval
  br label %return

if.end.39:                                        ; preds = %land.lhs.true.21, %lor.lhs.false
  %41 = load %union.tree_node*, %union.tree_node** %arg1, align 8
  %call40 = call %union.tree_node* @c_strlen(%union.tree_node* %41)
  store %union.tree_node* %call40, %union.tree_node** %len, align 8
  %42 = load %union.tree_node*, %union.tree_node** %arg2, align 8
  %call41 = call %union.tree_node* @c_strlen(%union.tree_node* %42)
  store %union.tree_node* %call41, %union.tree_node** %len2, align 8
  %43 = load %union.tree_node*, %union.tree_node** %len, align 8
  %tobool42 = icmp ne %union.tree_node* %43, null
  br i1 %tobool42, label %if.then.43, label %if.end.46

if.then.43:                                       ; preds = %if.end.39
  %call44 = call %union.tree_node* @size_int_wide(i64 1, i32 1)
  %44 = load %union.tree_node*, %union.tree_node** %len, align 8
  %call45 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %call44, %union.tree_node* %44)
  store %union.tree_node* %call45, %union.tree_node** %len, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.43, %if.end.39
  %45 = load %union.tree_node*, %union.tree_node** %len2, align 8
  %tobool47 = icmp ne %union.tree_node* %45, null
  br i1 %tobool47, label %if.then.48, label %if.end.51

if.then.48:                                       ; preds = %if.end.46
  %call49 = call %union.tree_node* @size_int_wide(i64 1, i32 1)
  %46 = load %union.tree_node*, %union.tree_node** %len2, align 8
  %call50 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %call49, %union.tree_node* %46)
  store %union.tree_node* %call50, %union.tree_node** %len2, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.48, %if.end.46
  %47 = load %union.tree_node*, %union.tree_node** %len, align 8
  %tobool52 = icmp ne %union.tree_node* %47, null
  br i1 %tobool52, label %lor.lhs.false.53, label %if.then.57

lor.lhs.false.53:                                 ; preds = %if.end.51
  %48 = load %union.tree_node*, %union.tree_node** %len, align 8
  %common54 = bitcast %union.tree_node* %48 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common54, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp55 = icmp ne i32 %bf.clear, 25
  br i1 %cmp55, label %if.then.57, label %if.else.70

if.then.57:                                       ; preds = %lor.lhs.false.53, %if.end.51
  %49 = load %union.tree_node*, %union.tree_node** %len2, align 8
  %tobool58 = icmp ne %union.tree_node* %49, null
  br i1 %tobool58, label %land.lhs.true.59, label %if.else

land.lhs.true.59:                                 ; preds = %if.then.57
  %50 = load %union.tree_node*, %union.tree_node** %len2, align 8
  %common60 = bitcast %union.tree_node* %50 to %struct.tree_common*
  %side_effects_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common60, i32 0, i32 2
  %bf.load61 = load i32, i32* %side_effects_flag, align 8
  %bf.lshr = lshr i32 %bf.load61, 8
  %bf.clear62 = and i32 %bf.lshr, 1
  %tobool63 = icmp ne i32 %bf.clear62, 0
  br i1 %tobool63, label %if.else, label %if.then.64

if.then.64:                                       ; preds = %land.lhs.true.59
  %51 = load %union.tree_node*, %union.tree_node** %len2, align 8
  store %union.tree_node* %51, %union.tree_node** %len, align 8
  br label %if.end.69

if.else:                                          ; preds = %land.lhs.true.59, %if.then.57
  %52 = load %union.tree_node*, %union.tree_node** %len, align 8
  %cmp65 = icmp eq %union.tree_node* %52, null
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.else
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.68:                                        ; preds = %if.else
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.64
  br label %if.end.84

if.else.70:                                       ; preds = %lor.lhs.false.53
  %53 = load %union.tree_node*, %union.tree_node** %len2, align 8
  %tobool71 = icmp ne %union.tree_node* %53, null
  br i1 %tobool71, label %land.lhs.true.72, label %if.end.83

land.lhs.true.72:                                 ; preds = %if.else.70
  %54 = load %union.tree_node*, %union.tree_node** %len2, align 8
  %common73 = bitcast %union.tree_node* %54 to %struct.tree_common*
  %code74 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common73, i32 0, i32 2
  %bf.load75 = load i32, i32* %code74, align 8
  %bf.clear76 = and i32 %bf.load75, 255
  %cmp77 = icmp eq i32 %bf.clear76, 25
  br i1 %cmp77, label %land.lhs.true.79, label %if.end.83

land.lhs.true.79:                                 ; preds = %land.lhs.true.72
  %55 = load %union.tree_node*, %union.tree_node** %len2, align 8
  %56 = load %union.tree_node*, %union.tree_node** %len, align 8
  %call80 = call i32 @tree_int_cst_lt(%union.tree_node* %55, %union.tree_node* %56)
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %land.lhs.true.79
  %57 = load %union.tree_node*, %union.tree_node** %len2, align 8
  store %union.tree_node* %57, %union.tree_node** %len, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %land.lhs.true.79, %land.lhs.true.72, %if.else.70
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.end.69
  %58 = load %union.tree_node*, %union.tree_node** %len, align 8
  %common85 = bitcast %union.tree_node* %58 to %struct.tree_common*
  %side_effects_flag86 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common85, i32 0, i32 2
  %bf.load87 = load i32, i32* %side_effects_flag86, align 8
  %bf.lshr88 = lshr i32 %bf.load87, 8
  %bf.clear89 = and i32 %bf.lshr88, 1
  %tobool90 = icmp ne i32 %bf.clear89, 0
  br i1 %tobool90, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.end.84
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.92:                                        ; preds = %if.end.84
  %59 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([95 x %union.tree_node*], [95 x %union.tree_node*]* @built_in_decls, i32 0, i64 23), align 8
  store %union.tree_node* %59, %union.tree_node** %fn, align 8
  %60 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %tobool93 = icmp ne %union.tree_node* %60, null
  br i1 %tobool93, label %if.end.95, label %if.then.94

if.then.94:                                       ; preds = %if.end.92
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.95:                                        ; preds = %if.end.92
  %61 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %62 = load %union.tree_node*, %union.tree_node** %len, align 8
  %call96 = call %union.tree_node* @build_tree_list(%union.tree_node* null, %union.tree_node* %62)
  %call97 = call %union.tree_node* @chainon(%union.tree_node* %61, %union.tree_node* %call96)
  %63 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %64 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %call98 = call %union.tree_node* @build_function_call_expr(%union.tree_node* %63, %union.tree_node* %64)
  %65 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %66 = load i32, i32* %mode.addr, align 4
  %call99 = call %struct.rtx_def* @expand_expr(%union.tree_node* %call98, %struct.rtx_def* %65, i32 %66, i32 0)
  store %struct.rtx_def* %call99, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.95, %if.then.94, %if.then.91, %if.then.67, %if.then.25, %cond.end.13, %if.then
  %67 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %67
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @expand_builtin_strncmp(%union.tree_node* %exp, %struct.rtx_def* %target, i32 %mode) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %exp.addr = alloca %union.tree_node*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %arglist = alloca %union.tree_node*, align 8
  %fn = alloca %union.tree_node*, align 8
  %newarglist = alloca %union.tree_node*, align 8
  %len = alloca %union.tree_node*, align 8
  %arg1 = alloca %union.tree_node*, align 8
  %arg2 = alloca %union.tree_node*, align 8
  %arg3 = alloca %union.tree_node*, align 8
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  %r = alloca i32, align 4
  %cst_uchar_node = alloca %union.tree_node*, align 8
  %cst_uchar_ptr_node = alloca %union.tree_node*, align 8
  %ind1 = alloca %union.tree_node*, align 8
  %ind2 = alloca %union.tree_node*, align 8
  %result = alloca %union.tree_node*, align 8
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp1 = bitcast %union.tree_node* %0 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp1, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 1
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %1, %union.tree_node** %arglist, align 8
  store %union.tree_node* null, %union.tree_node** %len, align 8
  %2 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %call = call i32 (%union.tree_node*, ...) @validate_arglist(%union.tree_node* %2, i32 13, i32 13, i32 6, i32 5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %list = bitcast %union.tree_node* %3 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %4 = load %union.tree_node*, %union.tree_node** %value, align 8
  store %union.tree_node* %4, %union.tree_node** %arg1, align 8
  %5 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %common = bitcast %union.tree_node* %5 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %6 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %list2 = bitcast %union.tree_node* %6 to %struct.tree_list*
  %value3 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list2, i32 0, i32 2
  %7 = load %union.tree_node*, %union.tree_node** %value3, align 8
  store %union.tree_node* %7, %union.tree_node** %arg2, align 8
  %8 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %common4 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %chain5 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4, i32 0, i32 0
  %9 = load %union.tree_node*, %union.tree_node** %chain5, align 8
  %common6 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %chain7 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common6, i32 0, i32 0
  %10 = load %union.tree_node*, %union.tree_node** %chain7, align 8
  %list8 = bitcast %union.tree_node* %10 to %struct.tree_list*
  %value9 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list8, i32 0, i32 2
  %11 = load %union.tree_node*, %union.tree_node** %value9, align 8
  store %union.tree_node* %11, %union.tree_node** %arg3, align 8
  %12 = load %union.tree_node*, %union.tree_node** %arg3, align 8
  %call10 = call i32 @host_integerp(%union.tree_node* %12, i32 1)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.end
  %13 = load %union.tree_node*, %union.tree_node** %arg3, align 8
  %call12 = call i64 @tree_low_cst(%union.tree_node* %13, i32 1)
  %cmp = icmp eq i64 %call12, 0
  br i1 %cmp, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %land.lhs.true
  %14 = load %union.tree_node*, %union.tree_node** %arg1, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call14 = call %struct.rtx_def* @expand_expr(%union.tree_node* %14, %struct.rtx_def* %15, i32 0, i32 0)
  %16 = load %union.tree_node*, %union.tree_node** %arg2, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call15 = call %struct.rtx_def* @expand_expr(%union.tree_node* %16, %struct.rtx_def* %17, i32 0, i32 0)
  %18 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %retval
  br label %return

if.end.16:                                        ; preds = %land.lhs.true, %if.end
  %19 = load %union.tree_node*, %union.tree_node** %arg1, align 8
  %call17 = call i8* @c_getstr(%union.tree_node* %19)
  store i8* %call17, i8** %p1, align 8
  %20 = load %union.tree_node*, %union.tree_node** %arg2, align 8
  %call18 = call i8* @c_getstr(%union.tree_node* %20)
  store i8* %call18, i8** %p2, align 8
  %21 = load %union.tree_node*, %union.tree_node** %arg3, align 8
  %call19 = call i32 @host_integerp(%union.tree_node* %21, i32 1)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %land.lhs.true.21, label %if.end.34

land.lhs.true.21:                                 ; preds = %if.end.16
  %22 = load i8*, i8** %p1, align 8
  %tobool22 = icmp ne i8* %22, null
  br i1 %tobool22, label %land.lhs.true.23, label %if.end.34

land.lhs.true.23:                                 ; preds = %land.lhs.true.21
  %23 = load i8*, i8** %p2, align 8
  %tobool24 = icmp ne i8* %23, null
  br i1 %tobool24, label %if.then.25, label %if.end.34

if.then.25:                                       ; preds = %land.lhs.true.23
  %24 = load i8*, i8** %p1, align 8
  %25 = load i8*, i8** %p2, align 8
  %26 = load %union.tree_node*, %union.tree_node** %arg3, align 8
  %call26 = call i64 @tree_low_cst(%union.tree_node* %26, i32 1)
  %call27 = call i32 @strncmp(i8* %24, i8* %25, i64 %call26) #6
  store i32 %call27, i32* %r, align 4
  %27 = load i32, i32* %r, align 4
  %cmp28 = icmp slt i32 %27, 0
  br i1 %cmp28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.25
  %28 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 63), align 8
  br label %cond.end.32

cond.false:                                       ; preds = %if.then.25
  %29 = load i32, i32* %r, align 4
  %cmp29 = icmp sgt i32 %29, 0
  br i1 %cmp29, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %cond.false
  %30 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  br label %cond.end

cond.false.31:                                    ; preds = %cond.false
  %31 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.31, %cond.true.30
  %cond = phi %struct.rtx_def* [ %30, %cond.true.30 ], [ %31, %cond.false.31 ]
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.end, %cond.true
  %cond33 = phi %struct.rtx_def* [ %28, %cond.true ], [ %cond, %cond.end ]
  store %struct.rtx_def* %cond33, %struct.rtx_def** %retval
  br label %return

if.end.34:                                        ; preds = %land.lhs.true.23, %land.lhs.true.21, %if.end.16
  %32 = load %union.tree_node*, %union.tree_node** %arg3, align 8
  %call35 = call i32 @host_integerp(%union.tree_node* %32, i32 1)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %land.lhs.true.37, label %if.end.67

land.lhs.true.37:                                 ; preds = %if.end.34
  %33 = load %union.tree_node*, %union.tree_node** %arg3, align 8
  %call38 = call i64 @tree_low_cst(%union.tree_node* %33, i32 1)
  %cmp39 = icmp eq i64 %call38, 1
  br i1 %cmp39, label %if.then.53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.37
  %34 = load %union.tree_node*, %union.tree_node** %arg3, align 8
  %call40 = call i64 @tree_low_cst(%union.tree_node* %34, i32 1)
  %cmp41 = icmp sgt i64 %call40, 1
  br i1 %cmp41, label %land.lhs.true.42, label %if.end.67

land.lhs.true.42:                                 ; preds = %lor.lhs.false
  %35 = load i8*, i8** %p1, align 8
  %tobool43 = icmp ne i8* %35, null
  br i1 %tobool43, label %land.lhs.true.44, label %lor.lhs.false.47

land.lhs.true.44:                                 ; preds = %land.lhs.true.42
  %36 = load i8*, i8** %p1, align 8
  %37 = load i8, i8* %36, align 1
  %conv = sext i8 %37 to i32
  %cmp45 = icmp eq i32 %conv, 0
  br i1 %cmp45, label %if.then.53, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %land.lhs.true.44, %land.lhs.true.42
  %38 = load i8*, i8** %p2, align 8
  %tobool48 = icmp ne i8* %38, null
  br i1 %tobool48, label %land.lhs.true.49, label %if.end.67

land.lhs.true.49:                                 ; preds = %lor.lhs.false.47
  %39 = load i8*, i8** %p2, align 8
  %40 = load i8, i8* %39, align 1
  %conv50 = sext i8 %40 to i32
  %cmp51 = icmp eq i32 %conv50, 0
  br i1 %cmp51, label %if.then.53, label %if.end.67

if.then.53:                                       ; preds = %land.lhs.true.49, %land.lhs.true.44, %land.lhs.true.37
  %41 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 2), align 8
  %call54 = call %union.tree_node* @build_qualified_type(%union.tree_node* %41, i32 1)
  store %union.tree_node* %call54, %union.tree_node** %cst_uchar_node, align 8
  %42 = load %union.tree_node*, %union.tree_node** %cst_uchar_node, align 8
  %call55 = call %union.tree_node* @build_pointer_type(%union.tree_node* %42)
  store %union.tree_node* %call55, %union.tree_node** %cst_uchar_ptr_node, align 8
  %43 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  %44 = load %union.tree_node*, %union.tree_node** %cst_uchar_node, align 8
  %45 = load %union.tree_node*, %union.tree_node** %cst_uchar_ptr_node, align 8
  %46 = load %union.tree_node*, %union.tree_node** %arg1, align 8
  %call56 = call %union.tree_node* @build1(i32 115, %union.tree_node* %45, %union.tree_node* %46)
  %call57 = call %union.tree_node* @build1(i32 41, %union.tree_node* %44, %union.tree_node* %call56)
  %call58 = call %union.tree_node* @build1(i32 114, %union.tree_node* %43, %union.tree_node* %call57)
  %call59 = call %union.tree_node* @fold(%union.tree_node* %call58)
  store %union.tree_node* %call59, %union.tree_node** %ind1, align 8
  %47 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  %48 = load %union.tree_node*, %union.tree_node** %cst_uchar_node, align 8
  %49 = load %union.tree_node*, %union.tree_node** %cst_uchar_ptr_node, align 8
  %50 = load %union.tree_node*, %union.tree_node** %arg2, align 8
  %call60 = call %union.tree_node* @build1(i32 115, %union.tree_node* %49, %union.tree_node* %50)
  %call61 = call %union.tree_node* @build1(i32 41, %union.tree_node* %48, %union.tree_node* %call60)
  %call62 = call %union.tree_node* @build1(i32 114, %union.tree_node* %47, %union.tree_node* %call61)
  %call63 = call %union.tree_node* @fold(%union.tree_node* %call62)
  store %union.tree_node* %call63, %union.tree_node** %ind2, align 8
  %51 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  %52 = load %union.tree_node*, %union.tree_node** %ind1, align 8
  %53 = load %union.tree_node*, %union.tree_node** %ind2, align 8
  %call64 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 60, %union.tree_node* %51, %union.tree_node* %52, %union.tree_node* %53)
  %call65 = call %union.tree_node* @fold(%union.tree_node* %call64)
  store %union.tree_node* %call65, %union.tree_node** %result, align 8
  %54 = load %union.tree_node*, %union.tree_node** %result, align 8
  %55 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %56 = load i32, i32* %mode.addr, align 4
  %call66 = call %struct.rtx_def* @expand_expr(%union.tree_node* %54, %struct.rtx_def* %55, i32 %56, i32 0)
  store %struct.rtx_def* %call66, %struct.rtx_def** %retval
  br label %return

if.end.67:                                        ; preds = %land.lhs.true.49, %lor.lhs.false.47, %lor.lhs.false, %if.end.34
  %57 = load i8*, i8** %p1, align 8
  %tobool68 = icmp ne i8* %57, null
  br i1 %tobool68, label %if.then.69, label %if.else

if.then.69:                                       ; preds = %if.end.67
  %58 = load %union.tree_node*, %union.tree_node** %arg1, align 8
  %call70 = call %union.tree_node* @c_strlen(%union.tree_node* %58)
  store %union.tree_node* %call70, %union.tree_node** %len, align 8
  br label %if.end.75

if.else:                                          ; preds = %if.end.67
  %59 = load i8*, i8** %p2, align 8
  %tobool71 = icmp ne i8* %59, null
  br i1 %tobool71, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %if.else
  %60 = load %union.tree_node*, %union.tree_node** %arg2, align 8
  %call73 = call %union.tree_node* @c_strlen(%union.tree_node* %60)
  store %union.tree_node* %call73, %union.tree_node** %len, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %if.else
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.69
  %61 = load %union.tree_node*, %union.tree_node** %len, align 8
  %tobool76 = icmp ne %union.tree_node* %61, null
  br i1 %tobool76, label %if.end.82, label %land.lhs.true.77

land.lhs.true.77:                                 ; preds = %if.end.75
  %62 = load %union.tree_node*, %union.tree_node** %arg1, align 8
  %common78 = bitcast %union.tree_node* %62 to %struct.tree_common*
  %side_effects_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common78, i32 0, i32 2
  %bf.load = load i32, i32* %side_effects_flag, align 8
  %bf.lshr = lshr i32 %bf.load, 8
  %bf.clear = and i32 %bf.lshr, 1
  %tobool79 = icmp ne i32 %bf.clear, 0
  br i1 %tobool79, label %if.end.82, label %if.then.80

if.then.80:                                       ; preds = %land.lhs.true.77
  %63 = load %union.tree_node*, %union.tree_node** %arg1, align 8
  %call81 = call %union.tree_node* @c_strlen(%union.tree_node* %63)
  store %union.tree_node* %call81, %union.tree_node** %len, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.80, %land.lhs.true.77, %if.end.75
  %64 = load %union.tree_node*, %union.tree_node** %len, align 8
  %tobool83 = icmp ne %union.tree_node* %64, null
  br i1 %tobool83, label %if.end.93, label %land.lhs.true.84

land.lhs.true.84:                                 ; preds = %if.end.82
  %65 = load %union.tree_node*, %union.tree_node** %arg2, align 8
  %common85 = bitcast %union.tree_node* %65 to %struct.tree_common*
  %side_effects_flag86 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common85, i32 0, i32 2
  %bf.load87 = load i32, i32* %side_effects_flag86, align 8
  %bf.lshr88 = lshr i32 %bf.load87, 8
  %bf.clear89 = and i32 %bf.lshr88, 1
  %tobool90 = icmp ne i32 %bf.clear89, 0
  br i1 %tobool90, label %if.end.93, label %if.then.91

if.then.91:                                       ; preds = %land.lhs.true.84
  %66 = load %union.tree_node*, %union.tree_node** %arg2, align 8
  %call92 = call %union.tree_node* @c_strlen(%union.tree_node* %66)
  store %union.tree_node* %call92, %union.tree_node** %len, align 8
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.91, %land.lhs.true.84, %if.end.82
  %67 = load %union.tree_node*, %union.tree_node** %len, align 8
  %tobool94 = icmp ne %union.tree_node* %67, null
  br i1 %tobool94, label %if.end.96, label %if.then.95

if.then.95:                                       ; preds = %if.end.93
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.96:                                        ; preds = %if.end.93
  %68 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([95 x %union.tree_node*], [95 x %union.tree_node*]* @built_in_decls, i32 0, i64 23), align 8
  store %union.tree_node* %68, %union.tree_node** %fn, align 8
  %69 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %tobool97 = icmp ne %union.tree_node* %69, null
  br i1 %tobool97, label %if.end.99, label %if.then.98

if.then.98:                                       ; preds = %if.end.96
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.99:                                        ; preds = %if.end.96
  %70 = load %union.tree_node*, %union.tree_node** %len, align 8
  %call100 = call %union.tree_node* @size_int_wide(i64 1, i32 1)
  %call101 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %70, %union.tree_node* %call100)
  %call102 = call %union.tree_node* @fold(%union.tree_node* %call101)
  store %union.tree_node* %call102, %union.tree_node** %len, align 8
  %71 = load %union.tree_node*, %union.tree_node** %len, align 8
  %common103 = bitcast %union.tree_node* %71 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common103, i32 0, i32 1
  %72 = load %union.tree_node*, %union.tree_node** %type, align 8
  %73 = load %union.tree_node*, %union.tree_node** %len, align 8
  %74 = load %union.tree_node*, %union.tree_node** %arg3, align 8
  %call104 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 78, %union.tree_node* %72, %union.tree_node* %73, %union.tree_node* %74)
  %call105 = call %union.tree_node* @fold(%union.tree_node* %call104)
  store %union.tree_node* %call105, %union.tree_node** %len, align 8
  %75 = load %union.tree_node*, %union.tree_node** %len, align 8
  %call106 = call %union.tree_node* @build_tree_list(%union.tree_node* null, %union.tree_node* %75)
  store %union.tree_node* %call106, %union.tree_node** %newarglist, align 8
  %76 = load %union.tree_node*, %union.tree_node** %arg2, align 8
  %77 = load %union.tree_node*, %union.tree_node** %newarglist, align 8
  %call107 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %76, %union.tree_node* %77)
  store %union.tree_node* %call107, %union.tree_node** %newarglist, align 8
  %78 = load %union.tree_node*, %union.tree_node** %arg1, align 8
  %79 = load %union.tree_node*, %union.tree_node** %newarglist, align 8
  %call108 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %78, %union.tree_node* %79)
  store %union.tree_node* %call108, %union.tree_node** %newarglist, align 8
  %80 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %81 = load %union.tree_node*, %union.tree_node** %newarglist, align 8
  %call109 = call %union.tree_node* @build_function_call_expr(%union.tree_node* %80, %union.tree_node* %81)
  %82 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %83 = load i32, i32* %mode.addr, align 4
  %call110 = call %struct.rtx_def* @expand_expr(%union.tree_node* %call109, %struct.rtx_def* %82, i32 %83, i32 0)
  store %struct.rtx_def* %call110, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.99, %if.then.98, %if.then.95, %if.then.53, %cond.end.32, %if.then.13, %if.then
  %84 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %84
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @expand_builtin_memcmp(%union.tree_node* %exp, %union.tree_node* %arglist, %struct.rtx_def* %target, i32 %mode) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %exp.addr = alloca %union.tree_node*, align 8
  %arglist.addr = alloca %union.tree_node*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %arg1 = alloca %union.tree_node*, align 8
  %arg2 = alloca %union.tree_node*, align 8
  %len = alloca %union.tree_node*, align 8
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  %r = alloca i32, align 4
  %cst_uchar_node = alloca %union.tree_node*, align 8
  %cst_uchar_ptr_node = alloca %union.tree_node*, align 8
  %ind1 = alloca %union.tree_node*, align 8
  %ind2 = alloca %union.tree_node*, align 8
  %result = alloca %union.tree_node*, align 8
  %arg1_rtx = alloca %struct.rtx_def*, align 8
  %arg2_rtx = alloca %struct.rtx_def*, align 8
  %arg3_rtx = alloca %struct.rtx_def*, align 8
  %result63 = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %arg1_align = alloca i32, align 4
  %arg2_align = alloca i32, align 4
  %insn_mode = alloca i32, align 4
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  store %union.tree_node* %arglist, %union.tree_node** %arglist.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %call = call i32 (%union.tree_node*, ...) @validate_arglist(%union.tree_node* %0, i32 13, i32 13, i32 6, i32 5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %list = bitcast %union.tree_node* %1 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %2 = load %union.tree_node*, %union.tree_node** %value, align 8
  store %union.tree_node* %2, %union.tree_node** %arg1, align 8
  %3 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common = bitcast %union.tree_node* %3 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %4 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %list1 = bitcast %union.tree_node* %4 to %struct.tree_list*
  %value2 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1, i32 0, i32 2
  %5 = load %union.tree_node*, %union.tree_node** %value2, align 8
  store %union.tree_node* %5, %union.tree_node** %arg2, align 8
  %6 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common3 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %chain4 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3, i32 0, i32 0
  %7 = load %union.tree_node*, %union.tree_node** %chain4, align 8
  %common5 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %chain6 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common5, i32 0, i32 0
  %8 = load %union.tree_node*, %union.tree_node** %chain6, align 8
  %list7 = bitcast %union.tree_node* %8 to %struct.tree_list*
  %value8 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list7, i32 0, i32 2
  %9 = load %union.tree_node*, %union.tree_node** %value8, align 8
  store %union.tree_node* %9, %union.tree_node** %len, align 8
  %10 = load %union.tree_node*, %union.tree_node** %len, align 8
  %call9 = call i32 @host_integerp(%union.tree_node* %10, i32 1)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.end
  %11 = load %union.tree_node*, %union.tree_node** %len, align 8
  %call11 = call i64 @tree_low_cst(%union.tree_node* %11, i32 1)
  %cmp = icmp eq i64 %call11, 0
  br i1 %cmp, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %land.lhs.true
  %12 = load %union.tree_node*, %union.tree_node** %arg1, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call13 = call %struct.rtx_def* @expand_expr(%union.tree_node* %12, %struct.rtx_def* %13, i32 0, i32 0)
  %14 = load %union.tree_node*, %union.tree_node** %arg2, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call14 = call %struct.rtx_def* @expand_expr(%union.tree_node* %14, %struct.rtx_def* %15, i32 0, i32 0)
  %16 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %16, %struct.rtx_def** %retval
  br label %return

if.end.15:                                        ; preds = %land.lhs.true, %if.end
  %17 = load %union.tree_node*, %union.tree_node** %arg1, align 8
  %call16 = call i8* @c_getstr(%union.tree_node* %17)
  store i8* %call16, i8** %p1, align 8
  %18 = load %union.tree_node*, %union.tree_node** %arg2, align 8
  %call17 = call i8* @c_getstr(%union.tree_node* %18)
  store i8* %call17, i8** %p2, align 8
  %19 = load %union.tree_node*, %union.tree_node** %len, align 8
  %call18 = call i32 @host_integerp(%union.tree_node* %19, i32 1)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %land.lhs.true.20, label %if.end.42

land.lhs.true.20:                                 ; preds = %if.end.15
  %20 = load i8*, i8** %p1, align 8
  %tobool21 = icmp ne i8* %20, null
  br i1 %tobool21, label %land.lhs.true.22, label %if.end.42

land.lhs.true.22:                                 ; preds = %land.lhs.true.20
  %21 = load i8*, i8** %p2, align 8
  %tobool23 = icmp ne i8* %21, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.end.42

land.lhs.true.24:                                 ; preds = %land.lhs.true.22
  %22 = load %union.tree_node*, %union.tree_node** %len, align 8
  %23 = load i8*, i8** %p1, align 8
  %call25 = call i64 @strlen(i8* %23) #6
  %add = add i64 %call25, 1
  %call26 = call i32 @compare_tree_int(%union.tree_node* %22, i64 %add)
  %cmp27 = icmp sle i32 %call26, 0
  br i1 %cmp27, label %land.lhs.true.28, label %if.end.42

land.lhs.true.28:                                 ; preds = %land.lhs.true.24
  %24 = load %union.tree_node*, %union.tree_node** %len, align 8
  %25 = load i8*, i8** %p2, align 8
  %call29 = call i64 @strlen(i8* %25) #6
  %add30 = add i64 %call29, 1
  %call31 = call i32 @compare_tree_int(%union.tree_node* %24, i64 %add30)
  %cmp32 = icmp sle i32 %call31, 0
  br i1 %cmp32, label %if.then.33, label %if.end.42

if.then.33:                                       ; preds = %land.lhs.true.28
  %26 = load i8*, i8** %p1, align 8
  %27 = load i8*, i8** %p2, align 8
  %28 = load %union.tree_node*, %union.tree_node** %len, align 8
  %call34 = call i64 @tree_low_cst(%union.tree_node* %28, i32 1)
  %call35 = call i32 @memcmp(i8* %26, i8* %27, i64 %call34) #6
  store i32 %call35, i32* %r, align 4
  %29 = load i32, i32* %r, align 4
  %cmp36 = icmp slt i32 %29, 0
  br i1 %cmp36, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.33
  %30 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 63), align 8
  br label %cond.end.40

cond.false:                                       ; preds = %if.then.33
  %31 = load i32, i32* %r, align 4
  %cmp37 = icmp sgt i32 %31, 0
  br i1 %cmp37, label %cond.true.38, label %cond.false.39

cond.true.38:                                     ; preds = %cond.false
  %32 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  br label %cond.end

cond.false.39:                                    ; preds = %cond.false
  %33 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.39, %cond.true.38
  %cond = phi %struct.rtx_def* [ %32, %cond.true.38 ], [ %33, %cond.false.39 ]
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.end, %cond.true
  %cond41 = phi %struct.rtx_def* [ %30, %cond.true ], [ %cond, %cond.end ]
  store %struct.rtx_def* %cond41, %struct.rtx_def** %retval
  br label %return

if.end.42:                                        ; preds = %land.lhs.true.28, %land.lhs.true.24, %land.lhs.true.22, %land.lhs.true.20, %if.end.15
  %34 = load %union.tree_node*, %union.tree_node** %len, align 8
  %call43 = call i32 @host_integerp(%union.tree_node* %34, i32 1)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %land.lhs.true.45, label %if.end.62

land.lhs.true.45:                                 ; preds = %if.end.42
  %35 = load %union.tree_node*, %union.tree_node** %len, align 8
  %call46 = call i64 @tree_low_cst(%union.tree_node* %35, i32 1)
  %cmp47 = icmp eq i64 %call46, 1
  br i1 %cmp47, label %if.then.48, label %if.end.62

if.then.48:                                       ; preds = %land.lhs.true.45
  %36 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 2), align 8
  %call49 = call %union.tree_node* @build_qualified_type(%union.tree_node* %36, i32 1)
  store %union.tree_node* %call49, %union.tree_node** %cst_uchar_node, align 8
  %37 = load %union.tree_node*, %union.tree_node** %cst_uchar_node, align 8
  %call50 = call %union.tree_node* @build_pointer_type(%union.tree_node* %37)
  store %union.tree_node* %call50, %union.tree_node** %cst_uchar_ptr_node, align 8
  %38 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  %39 = load %union.tree_node*, %union.tree_node** %cst_uchar_node, align 8
  %40 = load %union.tree_node*, %union.tree_node** %cst_uchar_ptr_node, align 8
  %41 = load %union.tree_node*, %union.tree_node** %arg1, align 8
  %call51 = call %union.tree_node* @build1(i32 115, %union.tree_node* %40, %union.tree_node* %41)
  %call52 = call %union.tree_node* @build1(i32 41, %union.tree_node* %39, %union.tree_node* %call51)
  %call53 = call %union.tree_node* @build1(i32 114, %union.tree_node* %38, %union.tree_node* %call52)
  %call54 = call %union.tree_node* @fold(%union.tree_node* %call53)
  store %union.tree_node* %call54, %union.tree_node** %ind1, align 8
  %42 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  %43 = load %union.tree_node*, %union.tree_node** %cst_uchar_node, align 8
  %44 = load %union.tree_node*, %union.tree_node** %cst_uchar_ptr_node, align 8
  %45 = load %union.tree_node*, %union.tree_node** %arg2, align 8
  %call55 = call %union.tree_node* @build1(i32 115, %union.tree_node* %44, %union.tree_node* %45)
  %call56 = call %union.tree_node* @build1(i32 41, %union.tree_node* %43, %union.tree_node* %call55)
  %call57 = call %union.tree_node* @build1(i32 114, %union.tree_node* %42, %union.tree_node* %call56)
  %call58 = call %union.tree_node* @fold(%union.tree_node* %call57)
  store %union.tree_node* %call58, %union.tree_node** %ind2, align 8
  %46 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  %47 = load %union.tree_node*, %union.tree_node** %ind1, align 8
  %48 = load %union.tree_node*, %union.tree_node** %ind2, align 8
  %call59 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 60, %union.tree_node* %46, %union.tree_node* %47, %union.tree_node* %48)
  %call60 = call %union.tree_node* @fold(%union.tree_node* %call59)
  store %union.tree_node* %call60, %union.tree_node** %result, align 8
  %49 = load %union.tree_node*, %union.tree_node** %result, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %51 = load i32, i32* %mode.addr, align 4
  %call61 = call %struct.rtx_def* @expand_expr(%union.tree_node* %49, %struct.rtx_def* %50, i32 %51, i32 0)
  store %struct.rtx_def* %call61, %struct.rtx_def** %retval
  br label %return

if.end.62:                                        ; preds = %land.lhs.true.45, %if.end.42
  %52 = load %union.tree_node*, %union.tree_node** %arg1, align 8
  %call64 = call i32 @get_pointer_alignment(%union.tree_node* %52, i32 128)
  %div = sdiv i32 %call64, 8
  store i32 %div, i32* %arg1_align, align 4
  %53 = load %union.tree_node*, %union.tree_node** %arg2, align 8
  %call65 = call i32 @get_pointer_alignment(%union.tree_node* %53, i32 128)
  %div66 = sdiv i32 %call65, 8
  store i32 %div66, i32* %arg2_align, align 4
  %54 = load %struct.insn_operand_data*, %struct.insn_operand_data** getelementptr inbounds ([0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 1203, i32 3), align 8
  %arrayidx = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %54, i64 0
  %mode67 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx, i32 0, i32 2
  %bf.load = load i16, i16* %mode67, align 8
  %bf.cast = zext i16 %bf.load to i32
  store i32 %bf.cast, i32* %insn_mode, align 4
  %55 = load i32, i32* %arg1_align, align 4
  %cmp68 = icmp eq i32 %55, 0
  br i1 %cmp68, label %if.then.70, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.62
  %56 = load i32, i32* %arg2_align, align 4
  %cmp69 = icmp eq i32 %56, 0
  br i1 %cmp69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %lor.lhs.false, %if.end.62
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.71:                                        ; preds = %lor.lhs.false
  %57 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %57, %struct.rtx_def** %result63, align 8
  %58 = load %struct.rtx_def*, %struct.rtx_def** %result63, align 8
  %cmp72 = icmp ne %struct.rtx_def* %58, null
  br i1 %cmp72, label %land.lhs.true.73, label %if.then.83

land.lhs.true.73:                                 ; preds = %if.end.71
  %59 = load %struct.rtx_def*, %struct.rtx_def** %result63, align 8
  %60 = bitcast %struct.rtx_def* %59 to i32*
  %bf.load74 = load i32, i32* %60, align 8
  %bf.clear = and i32 %bf.load74, 65535
  %cmp75 = icmp eq i32 %bf.clear, 61
  br i1 %cmp75, label %land.lhs.true.76, label %if.then.83

land.lhs.true.76:                                 ; preds = %land.lhs.true.73
  %61 = load %struct.rtx_def*, %struct.rtx_def** %result63, align 8
  %62 = bitcast %struct.rtx_def* %61 to i32*
  %bf.load77 = load i32, i32* %62, align 8
  %bf.lshr = lshr i32 %bf.load77, 16
  %bf.clear78 = and i32 %bf.lshr, 255
  %63 = load i32, i32* %insn_mode, align 4
  %cmp79 = icmp eq i32 %bf.clear78, %63
  br i1 %cmp79, label %land.lhs.true.80, label %if.then.83

land.lhs.true.80:                                 ; preds = %land.lhs.true.76
  %64 = load %struct.rtx_def*, %struct.rtx_def** %result63, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx81 to i32*
  %65 = load i32, i32* %rtuint, align 4
  %cmp82 = icmp uge i32 %65, 53
  br i1 %cmp82, label %if.end.85, label %if.then.83

if.then.83:                                       ; preds = %land.lhs.true.80, %land.lhs.true.76, %land.lhs.true.73, %if.end.71
  %66 = load i32, i32* %insn_mode, align 4
  %call84 = call %struct.rtx_def* @gen_reg_rtx(i32 %66)
  store %struct.rtx_def* %call84, %struct.rtx_def** %result63, align 8
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.83, %land.lhs.true.80
  %67 = load %union.tree_node*, %union.tree_node** %arg1, align 8
  %call86 = call %struct.rtx_def* @get_memory_rtx(%union.tree_node* %67)
  store %struct.rtx_def* %call86, %struct.rtx_def** %arg1_rtx, align 8
  %68 = load %union.tree_node*, %union.tree_node** %arg2, align 8
  %call87 = call %struct.rtx_def* @get_memory_rtx(%union.tree_node* %68)
  store %struct.rtx_def* %call87, %struct.rtx_def** %arg2_rtx, align 8
  %69 = load %union.tree_node*, %union.tree_node** %len, align 8
  %call88 = call %struct.rtx_def* @expand_expr(%union.tree_node* %69, %struct.rtx_def* null, i32 0, i32 0)
  store %struct.rtx_def* %call88, %struct.rtx_def** %arg3_rtx, align 8
  %70 = load %struct.rtx_def*, %struct.rtx_def** %result63, align 8
  %71 = load %struct.rtx_def*, %struct.rtx_def** %arg1_rtx, align 8
  %72 = load %struct.rtx_def*, %struct.rtx_def** %arg2_rtx, align 8
  %73 = load %struct.rtx_def*, %struct.rtx_def** %arg3_rtx, align 8
  %74 = load i32, i32* %arg1_align, align 4
  %75 = load i32, i32* %arg2_align, align 4
  %cmp89 = icmp slt i32 %74, %75
  br i1 %cmp89, label %cond.true.90, label %cond.false.91

cond.true.90:                                     ; preds = %if.end.85
  %76 = load i32, i32* %arg1_align, align 4
  br label %cond.end.92

cond.false.91:                                    ; preds = %if.end.85
  %77 = load i32, i32* %arg2_align, align 4
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.false.91, %cond.true.90
  %cond93 = phi i32 [ %76, %cond.true.90 ], [ %77, %cond.false.91 ]
  %conv = sext i32 %cond93 to i64
  %call94 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv)
  %call95 = call %struct.rtx_def* @gen_cmpstrsi(%struct.rtx_def* %70, %struct.rtx_def* %71, %struct.rtx_def* %72, %struct.rtx_def* %73, %struct.rtx_def* %call94)
  store %struct.rtx_def* %call95, %struct.rtx_def** %insn, align 8
  %78 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool96 = icmp ne %struct.rtx_def* %78, null
  br i1 %tobool96, label %if.then.97, label %if.else

if.then.97:                                       ; preds = %cond.end.92
  %79 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call98 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %79)
  br label %if.end.129

if.else:                                          ; preds = %cond.end.92
  %80 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 14), align 8
  %81 = load %struct.rtx_def*, %struct.rtx_def** %result63, align 8
  %82 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  %type = bitcast %union.tree_node* %82 to %struct.tree_type*
  %mode99 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type, i32 0, i32 6
  %bf.load100 = load i32, i32* %mode99, align 4
  %bf.lshr101 = lshr i32 %bf.load100, 9
  %bf.clear102 = and i32 %bf.lshr101, 127
  %83 = load %struct.rtx_def*, %struct.rtx_def** %arg1_rtx, align 8
  %fld103 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %83, i32 0, i32 1
  %arrayidx104 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld103, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx104 to %struct.rtx_def**
  %84 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %85 = load i32, i32* @target_flags, align 4
  %and = and i32 %85, 33554432
  %tobool105 = icmp ne i32 %and, 0
  %cond106 = select i1 %tobool105, i32 5, i32 4
  %86 = load %struct.rtx_def*, %struct.rtx_def** %arg2_rtx, align 8
  %fld107 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %86, i32 0, i32 1
  %arrayidx108 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld107, i32 0, i64 0
  %rtx109 = bitcast %union.rtunion_def* %arrayidx108 to %struct.rtx_def**
  %87 = load %struct.rtx_def*, %struct.rtx_def** %rtx109, align 8
  %88 = load i32, i32* @target_flags, align 4
  %and110 = and i32 %88, 33554432
  %tobool111 = icmp ne i32 %and110, 0
  %cond112 = select i1 %tobool111, i32 5, i32 4
  %89 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  %type113 = bitcast %union.tree_node* %89 to %struct.tree_type*
  %mode114 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type113, i32 0, i32 6
  %bf.load115 = load i32, i32* %mode114, align 4
  %bf.lshr116 = lshr i32 %bf.load115, 9
  %bf.clear117 = and i32 %bf.lshr116, 127
  %90 = load %struct.rtx_def*, %struct.rtx_def** %arg3_rtx, align 8
  %91 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  %common118 = bitcast %union.tree_node* %91 to %struct.tree_common*
  %unsigned_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common118, i32 0, i32 2
  %bf.load119 = load i32, i32* %unsigned_flag, align 8
  %bf.lshr120 = lshr i32 %bf.load119, 13
  %bf.clear121 = and i32 %bf.lshr120, 1
  %call122 = call %struct.rtx_def* @convert_to_mode(i32 %bf.clear117, %struct.rtx_def* %90, i32 %bf.clear121)
  %92 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  %type123 = bitcast %union.tree_node* %92 to %struct.tree_type*
  %mode124 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type123, i32 0, i32 6
  %bf.load125 = load i32, i32* %mode124, align 4
  %bf.lshr126 = lshr i32 %bf.load125, 9
  %bf.clear127 = and i32 %bf.lshr126, 127
  %call128 = call %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*, i32, i32, i32, ...) @emit_library_call_value(%struct.rtx_def* %80, %struct.rtx_def* %81, i32 4, i32 %bf.clear102, i32 3, %struct.rtx_def* %84, i32 %cond106, %struct.rtx_def* %87, i32 %cond112, %struct.rtx_def* %call122, i32 %bf.clear127)
  br label %if.end.129

if.end.129:                                       ; preds = %if.else, %if.then.97
  %93 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common130 = bitcast %union.tree_node* %93 to %struct.tree_common*
  %type131 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common130, i32 0, i32 1
  %94 = load %union.tree_node*, %union.tree_node** %type131, align 8
  %type132 = bitcast %union.tree_node* %94 to %struct.tree_type*
  %mode133 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type132, i32 0, i32 6
  %bf.load134 = load i32, i32* %mode133, align 4
  %bf.lshr135 = lshr i32 %bf.load134, 9
  %bf.clear136 = and i32 %bf.lshr135, 127
  store i32 %bf.clear136, i32* %mode.addr, align 4
  %95 = load %struct.rtx_def*, %struct.rtx_def** %result63, align 8
  %96 = bitcast %struct.rtx_def* %95 to i32*
  %bf.load137 = load i32, i32* %96, align 8
  %bf.lshr138 = lshr i32 %bf.load137, 16
  %bf.clear139 = and i32 %bf.lshr138, 255
  %97 = load i32, i32* %mode.addr, align 4
  %cmp140 = icmp eq i32 %bf.clear139, %97
  br i1 %cmp140, label %if.then.142, label %if.else.143

if.then.142:                                      ; preds = %if.end.129
  %98 = load %struct.rtx_def*, %struct.rtx_def** %result63, align 8
  store %struct.rtx_def* %98, %struct.rtx_def** %retval
  br label %return

if.else.143:                                      ; preds = %if.end.129
  %99 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp144 = icmp ne %struct.rtx_def* %99, null
  br i1 %cmp144, label %if.then.146, label %if.else.147

if.then.146:                                      ; preds = %if.else.143
  %100 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %101 = load %struct.rtx_def*, %struct.rtx_def** %result63, align 8
  call void @convert_move(%struct.rtx_def* %100, %struct.rtx_def* %101, i32 0)
  %102 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %102, %struct.rtx_def** %retval
  br label %return

if.else.147:                                      ; preds = %if.else.143
  %103 = load i32, i32* %mode.addr, align 4
  %104 = load %struct.rtx_def*, %struct.rtx_def** %result63, align 8
  %call148 = call %struct.rtx_def* @convert_to_mode(i32 %103, %struct.rtx_def* %104, i32 0)
  store %struct.rtx_def* %call148, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.else.147, %if.then.146, %if.then.142, %if.then.70, %if.then.48, %cond.end.40, %if.then.12, %if.then
  %105 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %105
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @expand_builtin_setjmp(%union.tree_node* %arglist, %struct.rtx_def* %target) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %arglist.addr = alloca %union.tree_node*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %buf_addr = alloca %struct.rtx_def*, align 8
  %next_lab = alloca %struct.rtx_def*, align 8
  %cont_lab = alloca %struct.rtx_def*, align 8
  store %union.tree_node* %arglist, %union.tree_node** %arglist.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %call = call i32 (%union.tree_node*, ...) @validate_arglist(%union.tree_node* %0, i32 13, i32 5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %1, null
  br i1 %cmp, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp1 = icmp ne i32 %bf.clear, 61
  br i1 %cmp1, label %if.then.4, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %4 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %5 = load i32, i32* %rtuint, align 4
  %cmp3 = icmp ult i32 %5, 53
  br i1 %cmp3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %lor.lhs.false.2, %lor.lhs.false, %if.end
  %6 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  %type = bitcast %union.tree_node* %6 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type, i32 0, i32 6
  %bf.load5 = load i32, i32* %mode, align 4
  %bf.lshr = lshr i32 %bf.load5, 9
  %bf.clear6 = and i32 %bf.lshr, 127
  %call7 = call %struct.rtx_def* @gen_reg_rtx(i32 %bf.clear6)
  store %struct.rtx_def* %call7, %struct.rtx_def** %target.addr, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.4, %lor.lhs.false.2
  %7 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %list = bitcast %union.tree_node* %7 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %8 = load %union.tree_node*, %union.tree_node** %value, align 8
  %call9 = call %struct.rtx_def* @expand_expr(%union.tree_node* %8, %struct.rtx_def* null, i32 0, i32 0)
  store %struct.rtx_def* %call9, %struct.rtx_def** %buf_addr, align 8
  %call10 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call10, %struct.rtx_def** %next_lab, align 8
  %call11 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call11, %struct.rtx_def** %cont_lab, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %buf_addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %next_lab, align 8
  call void @expand_builtin_setjmp_setup(%struct.rtx_def* %9, %struct.rtx_def* %10)
  %11 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call12 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %11, %struct.rtx_def* %12)
  %13 = load %struct.rtx_def*, %struct.rtx_def** %cont_lab, align 8
  %call13 = call %struct.rtx_def* @gen_jump(%struct.rtx_def* %13)
  %call14 = call %struct.rtx_def* @emit_jump_insn(%struct.rtx_def* %call13)
  %call15 = call %struct.rtx_def* @emit_barrier()
  %14 = load %struct.rtx_def*, %struct.rtx_def** %next_lab, align 8
  %call16 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %14)
  %15 = load %struct.rtx_def*, %struct.rtx_def** %next_lab, align 8
  call void @expand_builtin_setjmp_receiver(%struct.rtx_def* %15)
  %16 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  %call17 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %16, %struct.rtx_def* %17)
  %18 = load %struct.rtx_def*, %struct.rtx_def** %cont_lab, align 8
  %call18 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %18)
  %19 = load %struct.function*, %struct.function** @cfun, align 8
  %has_nonlocal_label = getelementptr inbounds %struct.function, %struct.function* %19, i32 0, i32 56
  %20 = bitcast i24* %has_nonlocal_label to i32*
  %bf.load19 = load i32, i32* %20, align 8
  %bf.clear20 = and i32 %bf.load19, -257
  %bf.set = or i32 %bf.clear20, 256
  store i32 %bf.set, i32* %20, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %next_lab, align 8
  %22 = load %struct.function*, %struct.function** @cfun, align 8
  %x_nonlocal_goto_handler_labels = getelementptr inbounds %struct.function, %struct.function* %22, i32 0, i32 21
  %23 = load %struct.rtx_def*, %struct.rtx_def** %x_nonlocal_goto_handler_labels, align 8
  %call21 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 0, %struct.rtx_def* %21, %struct.rtx_def* %23)
  %24 = load %struct.function*, %struct.function** @cfun, align 8
  %x_nonlocal_goto_handler_labels22 = getelementptr inbounds %struct.function, %struct.function* %24, i32 0, i32 21
  store %struct.rtx_def* %call21, %struct.rtx_def** %x_nonlocal_goto_handler_labels22, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %25, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then
  %26 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %26
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @expand_builtin_fputs(%union.tree_node* %arglist, i32 %ignore, i32 %unlocked) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %arglist.addr = alloca %union.tree_node*, align 8
  %ignore.addr = alloca i32, align 4
  %unlocked.addr = alloca i32, align 4
  %len = alloca %union.tree_node*, align 8
  %fn = alloca %union.tree_node*, align 8
  %fn_fputc = alloca %union.tree_node*, align 8
  %fn_fwrite = alloca %union.tree_node*, align 8
  %p = alloca i8*, align 8
  %string_arg = alloca %union.tree_node*, align 8
  store %union.tree_node* %arglist, %union.tree_node** %arglist.addr, align 8
  store i32 %ignore, i32* %ignore.addr, align 4
  store i32 %unlocked, i32* %unlocked.addr, align 4
  %0 = load i32, i32* %unlocked.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([95 x %union.tree_node*], [95 x %union.tree_node*]* @built_in_decls, i32 0, i64 72), align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([95 x %union.tree_node*], [95 x %union.tree_node*]* @built_in_decls, i32 0, i64 65), align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.tree_node* [ %1, %cond.true ], [ %2, %cond.false ]
  store %union.tree_node* %cond, %union.tree_node** %fn_fputc, align 8
  %3 = load i32, i32* %unlocked.addr, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  %4 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([95 x %union.tree_node*], [95 x %union.tree_node*]* @built_in_decls, i32 0, i64 74), align 8
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([95 x %union.tree_node*], [95 x %union.tree_node*]* @built_in_decls, i32 0, i64 67), align 8
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.false.3, %cond.true.2
  %cond5 = phi %union.tree_node* [ %4, %cond.true.2 ], [ %5, %cond.false.3 ]
  store %union.tree_node* %cond5, %union.tree_node** %fn_fwrite, align 8
  %6 = load i32, i32* %ignore.addr, align 4
  %tobool6 = icmp ne i32 %6, 0
  br i1 %tobool6, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %cond.end.4
  %7 = load %union.tree_node*, %union.tree_node** %fn_fputc, align 8
  %tobool7 = icmp ne %union.tree_node* %7, null
  br i1 %tobool7, label %lor.lhs.false.8, label %if.then

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %8 = load %union.tree_node*, %union.tree_node** %fn_fwrite, align 8
  %tobool9 = icmp ne %union.tree_node* %8, null
  br i1 %tobool9, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.8, %lor.lhs.false, %cond.end.4
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.8
  %9 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %call = call i32 (%union.tree_node*, ...) @validate_arglist(%union.tree_node* %9, i32 13, i32 13, i32 5)
  %tobool10 = icmp ne i32 %call, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  %10 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %list = bitcast %union.tree_node* %10 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %11 = load %union.tree_node*, %union.tree_node** %value, align 8
  %call13 = call %union.tree_node* @c_strlen(%union.tree_node* %11)
  store %union.tree_node* %call13, %union.tree_node** %len, align 8
  %tobool14 = icmp ne %union.tree_node* %call13, null
  br i1 %tobool14, label %lor.lhs.false.15, label %if.then.16

lor.lhs.false.15:                                 ; preds = %if.end.12
  %12 = load %union.tree_node*, %union.tree_node** %len, align 8
  %common = bitcast %union.tree_node* %12 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp ne i32 %bf.clear, 25
  br i1 %cmp, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %lor.lhs.false.15, %if.end.12
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.17:                                        ; preds = %lor.lhs.false.15
  %13 = load %union.tree_node*, %union.tree_node** %len, align 8
  %call18 = call i32 @compare_tree_int(%union.tree_node* %13, i64 1)
  switch i32 %call18, label %sw.default [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb.23
    i32 1, label %sw.bb.37
  ]

sw.bb:                                            ; preds = %if.end.17
  %14 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common19 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common19, i32 0, i32 0
  %15 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %list20 = bitcast %union.tree_node* %15 to %struct.tree_list*
  %value21 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list20, i32 0, i32 2
  %16 = load %union.tree_node*, %union.tree_node** %value21, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call22 = call %struct.rtx_def* @expand_expr(%union.tree_node* %16, %struct.rtx_def* %17, i32 0, i32 0)
  %18 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %retval
  br label %return

sw.bb.23:                                         ; preds = %if.end.17
  %19 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %list24 = bitcast %union.tree_node* %19 to %struct.tree_list*
  %value25 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list24, i32 0, i32 2
  %20 = load %union.tree_node*, %union.tree_node** %value25, align 8
  %call26 = call i8* @c_getstr(%union.tree_node* %20)
  store i8* %call26, i8** %p, align 8
  %21 = load i8*, i8** %p, align 8
  %cmp27 = icmp ne i8* %21, null
  br i1 %cmp27, label %if.then.28, label %if.end.36

if.then.28:                                       ; preds = %sw.bb.23
  %22 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common29 = bitcast %union.tree_node* %22 to %struct.tree_common*
  %chain30 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common29, i32 0, i32 0
  %23 = load %union.tree_node*, %union.tree_node** %chain30, align 8
  %list31 = bitcast %union.tree_node* %23 to %struct.tree_list*
  %value32 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list31, i32 0, i32 2
  %24 = load %union.tree_node*, %union.tree_node** %value32, align 8
  %call33 = call %union.tree_node* @build_tree_list(%union.tree_node* null, %union.tree_node* %24)
  store %union.tree_node* %call33, %union.tree_node** %arglist.addr, align 8
  %25 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %25, i64 0
  %26 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %26 to i64
  %call34 = call %union.tree_node* @build_int_2_wide(i64 %conv, i64 0)
  %27 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %call35 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %call34, %union.tree_node* %27)
  store %union.tree_node* %call35, %union.tree_node** %arglist.addr, align 8
  %28 = load %union.tree_node*, %union.tree_node** %fn_fputc, align 8
  store %union.tree_node* %28, %union.tree_node** %fn, align 8
  br label %sw.epilog

if.end.36:                                        ; preds = %sw.bb.23
  br label %sw.bb.37

sw.bb.37:                                         ; preds = %if.end.17, %if.end.36
  %29 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %list38 = bitcast %union.tree_node* %29 to %struct.tree_list*
  %value39 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list38, i32 0, i32 2
  %30 = load %union.tree_node*, %union.tree_node** %value39, align 8
  store %union.tree_node* %30, %union.tree_node** %string_arg, align 8
  %31 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common40 = bitcast %union.tree_node* %31 to %struct.tree_common*
  %chain41 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common40, i32 0, i32 0
  %32 = load %union.tree_node*, %union.tree_node** %chain41, align 8
  %list42 = bitcast %union.tree_node* %32 to %struct.tree_list*
  %value43 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list42, i32 0, i32 2
  %33 = load %union.tree_node*, %union.tree_node** %value43, align 8
  %call44 = call %union.tree_node* @build_tree_list(%union.tree_node* null, %union.tree_node* %33)
  store %union.tree_node* %call44, %union.tree_node** %arglist.addr, align 8
  %34 = load %union.tree_node*, %union.tree_node** %len, align 8
  %35 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %call45 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %34, %union.tree_node* %35)
  store %union.tree_node* %call45, %union.tree_node** %arglist.addr, align 8
  %36 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 16), align 8
  %37 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %call46 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %36, %union.tree_node* %37)
  store %union.tree_node* %call46, %union.tree_node** %arglist.addr, align 8
  %38 = load %union.tree_node*, %union.tree_node** %string_arg, align 8
  %39 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %call47 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %38, %union.tree_node* %39)
  store %union.tree_node* %call47, %union.tree_node** %arglist.addr, align 8
  %40 = load %union.tree_node*, %union.tree_node** %fn_fwrite, align 8
  store %union.tree_node* %40, %union.tree_node** %fn, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.17
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.100, i32 0, i32 0), i32 3400, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.expand_builtin_fputs, i32 0, i32 0)) #5
  unreachable

sw.epilog:                                        ; preds = %sw.bb.37, %if.then.28
  %41 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %42 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %call48 = call %union.tree_node* @build_function_call_expr(%union.tree_node* %41, %union.tree_node* %42)
  %43 = load i32, i32* %ignore.addr, align 4
  %tobool49 = icmp ne i32 %43, 0
  br i1 %tobool49, label %cond.true.50, label %cond.false.51

cond.true.50:                                     ; preds = %sw.epilog
  %44 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  br label %cond.end.52

cond.false.51:                                    ; preds = %sw.epilog
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.51, %cond.true.50
  %cond53 = phi %struct.rtx_def* [ %44, %cond.true.50 ], [ null, %cond.false.51 ]
  %call54 = call %struct.rtx_def* @expand_expr(%union.tree_node* %call48, %struct.rtx_def* %cond53, i32 0, i32 0)
  store %struct.rtx_def* %call54, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %cond.end.52, %sw.bb, %if.then.16, %if.then.11, %if.then
  %45 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %45
}

declare void @expand_builtin_unwind_init() #1

declare %struct.rtx_def* @expand_builtin_dwarf_fp_regnum() #1

declare void @expand_builtin_init_dwarf_reg_sizes(%union.tree_node*) #1

declare %struct.rtx_def* @expand_builtin_frob_return_addr(%union.tree_node*) #1

declare %struct.rtx_def* @expand_builtin_extract_return_addr(%union.tree_node*) #1

declare void @expand_builtin_eh_return(%union.tree_node*, %union.tree_node*) #1

declare %struct.rtx_def* @expand_builtin_eh_return_data_regno(%union.tree_node*) #1

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @expand_builtin_va_start(i32 %stdarg_p, %union.tree_node* %arglist) #0 {
entry:
  %stdarg_p.addr = alloca i32, align 4
  %arglist.addr = alloca %union.tree_node*, align 8
  %nextarg = alloca %struct.rtx_def*, align 8
  %chain = alloca %union.tree_node*, align 8
  %valist = alloca %union.tree_node*, align 8
  store i32 %stdarg_p, i32* %stdarg_p.addr, align 4
  store %union.tree_node* %arglist, %union.tree_node** %arglist.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  store %union.tree_node* %0, %union.tree_node** %chain, align 8
  %1 = load i32, i32* %stdarg_p.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common = bitcast %union.tree_node* %2 to %struct.tree_common*
  %chain1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %3 = load %union.tree_node*, %union.tree_node** %chain1, align 8
  store %union.tree_node* %3, %union.tree_node** %chain, align 8
  %call = call %struct.rtx_def* @expand_builtin_next_arg(%union.tree_node* %3)
  store %struct.rtx_def* %call, %struct.rtx_def** %nextarg, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call %struct.rtx_def* @expand_builtin_next_arg(%union.tree_node* null)
  store %struct.rtx_def* %call2, %struct.rtx_def** %nextarg, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %common3 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %chain4 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3, i32 0, i32 0
  %5 = load %union.tree_node*, %union.tree_node** %chain4, align 8
  %tobool5 = icmp ne %union.tree_node* %5, null
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  call void (i8*, ...) @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.119, i32 0, i32 0))
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %6 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %list = bitcast %union.tree_node* %6 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %7 = load %union.tree_node*, %union.tree_node** %value, align 8
  %call8 = call %union.tree_node* @stabilize_va_list(%union.tree_node* %7, i32 1)
  store %union.tree_node* %call8, %union.tree_node** %valist, align 8
  %8 = load i32, i32* %stdarg_p.addr, align 4
  %9 = load %union.tree_node*, %union.tree_node** %valist, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %nextarg, align 8
  call void @ix86_va_start(i32 %8, %union.tree_node* %9, %struct.rtx_def* %10)
  %11 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  ret %struct.rtx_def* %11
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @expand_builtin_va_end(%union.tree_node* %arglist) #0 {
entry:
  %arglist.addr = alloca %union.tree_node*, align 8
  %valist = alloca %union.tree_node*, align 8
  store %union.tree_node* %arglist, %union.tree_node** %arglist.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %list = bitcast %union.tree_node* %0 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %1 = load %union.tree_node*, %union.tree_node** %value, align 8
  store %union.tree_node* %1, %union.tree_node** %valist, align 8
  %2 = load %union.tree_node*, %union.tree_node** %valist, align 8
  %common = bitcast %union.tree_node* %2 to %struct.tree_common*
  %side_effects_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %side_effects_flag, align 8
  %bf.lshr = lshr i32 %bf.load, 8
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** %valist, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call = call %struct.rtx_def* @expand_expr(%union.tree_node* %3, %struct.rtx_def* %4, i32 0, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  ret %struct.rtx_def* %5
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @expand_builtin_va_copy(%union.tree_node* %arglist) #0 {
entry:
  %arglist.addr = alloca %union.tree_node*, align 8
  %dst = alloca %union.tree_node*, align 8
  %src = alloca %union.tree_node*, align 8
  %t = alloca %union.tree_node*, align 8
  %dstb = alloca %struct.rtx_def*, align 8
  %srcb = alloca %struct.rtx_def*, align 8
  %size = alloca %struct.rtx_def*, align 8
  store %union.tree_node* %arglist, %union.tree_node** %arglist.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %list = bitcast %union.tree_node* %0 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %1 = load %union.tree_node*, %union.tree_node** %value, align 8
  store %union.tree_node* %1, %union.tree_node** %dst, align 8
  %2 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common = bitcast %union.tree_node* %2 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %3 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %list1 = bitcast %union.tree_node* %3 to %struct.tree_list*
  %value2 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1, i32 0, i32 2
  %4 = load %union.tree_node*, %union.tree_node** %value2, align 8
  store %union.tree_node* %4, %union.tree_node** %src, align 8
  %5 = load %union.tree_node*, %union.tree_node** %dst, align 8
  %call = call %union.tree_node* @stabilize_va_list(%union.tree_node* %5, i32 1)
  store %union.tree_node* %call, %union.tree_node** %dst, align 8
  %6 = load %union.tree_node*, %union.tree_node** %src, align 8
  %call3 = call %union.tree_node* @stabilize_va_list(%union.tree_node* %6, i32 0)
  store %union.tree_node* %call3, %union.tree_node** %src, align 8
  %7 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 31), align 8
  %common4 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp ne i32 %bf.clear, 18
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 31), align 8
  %9 = load %union.tree_node*, %union.tree_node** %dst, align 8
  %10 = load %union.tree_node*, %union.tree_node** %src, align 8
  %call5 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 48, %union.tree_node* %8, %union.tree_node* %9, %union.tree_node* %10)
  store %union.tree_node* %call5, %union.tree_node** %t, align 8
  %11 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common6 = bitcast %union.tree_node* %11 to %struct.tree_common*
  %side_effects_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common6, i32 0, i32 2
  %bf.load7 = load i32, i32* %side_effects_flag, align 8
  %bf.clear8 = and i32 %bf.load7, -257
  %bf.set = or i32 %bf.clear8, 256
  store i32 %bf.set, i32* %side_effects_flag, align 8
  %12 = load %union.tree_node*, %union.tree_node** %t, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call9 = call %struct.rtx_def* @expand_expr(%union.tree_node* %12, %struct.rtx_def* %13, i32 0, i32 0)
  br label %if.end

if.else:                                          ; preds = %entry
  %14 = load %union.tree_node*, %union.tree_node** %dst, align 8
  %15 = load i32, i32* @target_flags, align 4
  %and = and i32 %15, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 5, i32 4
  %call10 = call %struct.rtx_def* @expand_expr(%union.tree_node* %14, %struct.rtx_def* null, i32 %cond, i32 0)
  store %struct.rtx_def* %call10, %struct.rtx_def** %dstb, align 8
  %16 = load %union.tree_node*, %union.tree_node** %src, align 8
  %17 = load i32, i32* @target_flags, align 4
  %and11 = and i32 %17, 33554432
  %tobool12 = icmp ne i32 %and11, 0
  %cond13 = select i1 %tobool12, i32 5, i32 4
  %call14 = call %struct.rtx_def* @expand_expr(%union.tree_node* %16, %struct.rtx_def* null, i32 %cond13, i32 0)
  store %struct.rtx_def* %call14, %struct.rtx_def** %srcb, align 8
  %18 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 31), align 8
  %type = bitcast %union.tree_node* %18 to %struct.tree_type*
  %size_unit = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type, i32 0, i32 3
  %19 = load %union.tree_node*, %union.tree_node** %size_unit, align 8
  %call15 = call %struct.rtx_def* @expand_expr(%union.tree_node* %19, %struct.rtx_def* null, i32 0, i32 0)
  store %struct.rtx_def* %call15, %struct.rtx_def** %size, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %dstb, align 8
  %call16 = call %struct.rtx_def* @gen_rtx_MEM(i32 51, %struct.rtx_def* %20)
  store %struct.rtx_def* %call16, %struct.rtx_def** %dstb, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %dstb, align 8
  %22 = load %union.tree_node*, %union.tree_node** %dst, align 8
  %common17 = bitcast %union.tree_node* %22 to %struct.tree_common*
  %type18 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common17, i32 0, i32 1
  %23 = load %union.tree_node*, %union.tree_node** %type18, align 8
  %common19 = bitcast %union.tree_node* %23 to %struct.tree_common*
  %type20 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common19, i32 0, i32 1
  %24 = load %union.tree_node*, %union.tree_node** %type20, align 8
  %call21 = call i64 @get_alias_set(%union.tree_node* %24)
  call void @set_mem_alias_set(%struct.rtx_def* %21, i64 %call21)
  %25 = load %struct.rtx_def*, %struct.rtx_def** %dstb, align 8
  %26 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 31), align 8
  %type22 = bitcast %union.tree_node* %26 to %struct.tree_type*
  %align = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type22, i32 0, i32 7
  %27 = load i32, i32* %align, align 4
  call void @set_mem_align(%struct.rtx_def* %25, i32 %27)
  %28 = load %struct.rtx_def*, %struct.rtx_def** %srcb, align 8
  %call23 = call %struct.rtx_def* @gen_rtx_MEM(i32 51, %struct.rtx_def* %28)
  store %struct.rtx_def* %call23, %struct.rtx_def** %srcb, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %srcb, align 8
  %30 = load %union.tree_node*, %union.tree_node** %src, align 8
  %common24 = bitcast %union.tree_node* %30 to %struct.tree_common*
  %type25 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common24, i32 0, i32 1
  %31 = load %union.tree_node*, %union.tree_node** %type25, align 8
  %common26 = bitcast %union.tree_node* %31 to %struct.tree_common*
  %type27 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common26, i32 0, i32 1
  %32 = load %union.tree_node*, %union.tree_node** %type27, align 8
  %call28 = call i64 @get_alias_set(%union.tree_node* %32)
  call void @set_mem_alias_set(%struct.rtx_def* %29, i64 %call28)
  %33 = load %struct.rtx_def*, %struct.rtx_def** %srcb, align 8
  %34 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 31), align 8
  %type29 = bitcast %union.tree_node* %34 to %struct.tree_type*
  %align30 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type29, i32 0, i32 7
  %35 = load i32, i32* %align30, align 4
  call void @set_mem_align(%struct.rtx_def* %33, i32 %35)
  %36 = load %struct.rtx_def*, %struct.rtx_def** %dstb, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %srcb, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %size, align 8
  %call31 = call %struct.rtx_def* @emit_block_move(%struct.rtx_def* %36, %struct.rtx_def* %37, %struct.rtx_def* %38)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %39 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  ret %struct.rtx_def* %39
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @expand_builtin_expect(%union.tree_node* %arglist, %struct.rtx_def* %target) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %arglist.addr = alloca %union.tree_node*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %exp = alloca %union.tree_node*, align 8
  %c = alloca %union.tree_node*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %rtx_c = alloca %struct.rtx_def*, align 8
  store %union.tree_node* %arglist, %union.tree_node** %arglist.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %cmp = icmp eq %union.tree_node* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %2 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %cmp1 = icmp eq %union.tree_node* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %list = bitcast %union.tree_node* %4 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %5 = load %union.tree_node*, %union.tree_node** %value, align 8
  store %union.tree_node* %5, %union.tree_node** %exp, align 8
  %6 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common2 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %chain3 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 0
  %7 = load %union.tree_node*, %union.tree_node** %chain3, align 8
  %list4 = bitcast %union.tree_node* %7 to %struct.tree_list*
  %value5 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4, i32 0, i32 2
  %8 = load %union.tree_node*, %union.tree_node** %value5, align 8
  store %union.tree_node* %8, %union.tree_node** %c, align 8
  %9 = load %union.tree_node*, %union.tree_node** %c, align 8
  %common6 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common6, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp7 = icmp ne i32 %bf.clear, 25
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  call void (i8*, ...) @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.120, i32 0, i32 0))
  %10 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 11), align 8
  store %union.tree_node* %10, %union.tree_node** %c, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %11 = load %union.tree_node*, %union.tree_node** %exp, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call = call %struct.rtx_def* @expand_expr(%union.tree_node* %11, %struct.rtx_def* %12, i32 0, i32 0)
  store %struct.rtx_def* %call, %struct.rtx_def** %target.addr, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load10 = load i32, i32* %14, align 8
  %bf.clear11 = and i32 %bf.load10, 65535
  %cmp12 = icmp ne i32 %bf.clear11, 54
  br i1 %cmp12, label %if.then.13, label %if.end.23

if.then.13:                                       ; preds = %if.end.9
  %15 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load14 = load i32, i32* %16, align 8
  %bf.lshr = lshr i32 %bf.load14, 16
  %bf.clear15 = and i32 %bf.lshr, 255
  %17 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call16 = call %struct.rtx_def* @force_reg(i32 %bf.clear15, %struct.rtx_def* %17)
  store %struct.rtx_def* %call16, %struct.rtx_def** %target.addr, align 8
  %18 = load %union.tree_node*, %union.tree_node** %c, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load17 = load i32, i32* %20, align 8
  %bf.lshr18 = lshr i32 %bf.load17, 16
  %bf.clear19 = and i32 %bf.lshr18, 255
  %call20 = call %struct.rtx_def* @expand_expr(%union.tree_node* %18, %struct.rtx_def* null, i32 %bf.clear19, i32 0)
  store %struct.rtx_def* %call20, %struct.rtx_def** %rtx_c, align 8
  %call21 = call %struct.rtx_def* @emit_note(i8* null, i32 -79)
  store %struct.rtx_def* %call21, %struct.rtx_def** %note, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx_c, align 8
  %call22 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 103, i32 0, %struct.rtx_def* %21, %struct.rtx_def* %22)
  %23 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  store %struct.rtx_def* %call22, %struct.rtx_def** %rtx, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.13, %if.end.9
  %24 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %24, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then
  %25 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %25
}

; Function Attrs: nounwind uwtable
define internal void @expand_builtin_prefetch(%union.tree_node* %arglist) #0 {
entry:
  %arglist.addr = alloca %union.tree_node*, align 8
  %arg0 = alloca %union.tree_node*, align 8
  %arg1 = alloca %union.tree_node*, align 8
  %arg2 = alloca %union.tree_node*, align 8
  %op0 = alloca %struct.rtx_def*, align 8
  %op1 = alloca %struct.rtx_def*, align 8
  %op2 = alloca %struct.rtx_def*, align 8
  store %union.tree_node* %arglist, %union.tree_node** %arglist.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %call = call i32 (%union.tree_node*, ...) @validate_arglist(%union.tree_node* %0, i32 13, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.84

if.end:                                           ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %list = bitcast %union.tree_node* %1 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %2 = load %union.tree_node*, %union.tree_node** %value, align 8
  store %union.tree_node* %2, %union.tree_node** %arg0, align 8
  %3 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common = bitcast %union.tree_node* %3 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %4 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %tobool1 = icmp ne %union.tree_node* %4, null
  br i1 %tobool1, label %if.then.2, label %if.else.21

if.then.2:                                        ; preds = %if.end
  %5 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common3 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %chain4 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3, i32 0, i32 0
  %6 = load %union.tree_node*, %union.tree_node** %chain4, align 8
  %list5 = bitcast %union.tree_node* %6 to %struct.tree_list*
  %value6 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list5, i32 0, i32 2
  %7 = load %union.tree_node*, %union.tree_node** %value6, align 8
  store %union.tree_node* %7, %union.tree_node** %arg1, align 8
  %8 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common7 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %chain8 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common7, i32 0, i32 0
  %9 = load %union.tree_node*, %union.tree_node** %chain8, align 8
  %common9 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %chain10 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common9, i32 0, i32 0
  %10 = load %union.tree_node*, %union.tree_node** %chain10, align 8
  %tobool11 = icmp ne %union.tree_node* %10, null
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.2
  %11 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common13 = bitcast %union.tree_node* %11 to %struct.tree_common*
  %chain14 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common13, i32 0, i32 0
  %12 = load %union.tree_node*, %union.tree_node** %chain14, align 8
  %common15 = bitcast %union.tree_node* %12 to %struct.tree_common*
  %chain16 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common15, i32 0, i32 0
  %13 = load %union.tree_node*, %union.tree_node** %chain16, align 8
  %list17 = bitcast %union.tree_node* %13 to %struct.tree_list*
  %value18 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list17, i32 0, i32 2
  %14 = load %union.tree_node*, %union.tree_node** %value18, align 8
  store %union.tree_node* %14, %union.tree_node** %arg2, align 8
  br label %if.end.20

if.else:                                          ; preds = %if.then.2
  %call19 = call %union.tree_node* @build_int_2_wide(i64 3, i64 0)
  store %union.tree_node* %call19, %union.tree_node** %arg2, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.12
  br label %if.end.23

if.else.21:                                       ; preds = %if.end
  %15 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 11), align 8
  store %union.tree_node* %15, %union.tree_node** %arg1, align 8
  %call22 = call %union.tree_node* @build_int_2_wide(i64 3, i64 0)
  store %union.tree_node* %call22, %union.tree_node** %arg2, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.21, %if.end.20
  %16 = load %union.tree_node*, %union.tree_node** %arg0, align 8
  %17 = load i32, i32* @target_flags, align 4
  %and = and i32 %17, 33554432
  %tobool24 = icmp ne i32 %and, 0
  %cond = select i1 %tobool24, i32 5, i32 4
  %call25 = call %struct.rtx_def* @expand_expr(%union.tree_node* %16, %struct.rtx_def* null, i32 %cond, i32 0)
  store %struct.rtx_def* %call25, %struct.rtx_def** %op0, align 8
  %18 = load %union.tree_node*, %union.tree_node** %arg1, align 8
  %common26 = bitcast %union.tree_node* %18 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common26, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp ne i32 %bf.clear, 25
  br i1 %cmp, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.23
  call void (i8*, ...) @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.121, i32 0, i32 0))
  %19 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 11), align 8
  store %union.tree_node* %19, %union.tree_node** %arg1, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end.23
  %20 = load %union.tree_node*, %union.tree_node** %arg1, align 8
  %call29 = call %struct.rtx_def* @expand_expr(%union.tree_node* %20, %struct.rtx_def* null, i32 0, i32 0)
  store %struct.rtx_def* %call29, %struct.rtx_def** %op1, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx to i64*
  %22 = load i64, i64* %rtwint, align 8
  %cmp30 = icmp ne i64 %22, 0
  br i1 %cmp30, label %land.lhs.true, label %if.end.36

land.lhs.true:                                    ; preds = %if.end.28
  %23 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 0
  %rtwint33 = bitcast %union.rtunion_def* %arrayidx32 to i64*
  %24 = load i64, i64* %rtwint33, align 8
  %cmp34 = icmp ne i64 %24, 1
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %land.lhs.true
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.122, i32 0, i32 0))
  %25 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %25, %struct.rtx_def** %op1, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %land.lhs.true, %if.end.28
  %26 = load %union.tree_node*, %union.tree_node** %arg2, align 8
  %common37 = bitcast %union.tree_node* %26 to %struct.tree_common*
  %code38 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common37, i32 0, i32 2
  %bf.load39 = load i32, i32* %code38, align 8
  %bf.clear40 = and i32 %bf.load39, 255
  %cmp41 = icmp ne i32 %bf.clear40, 25
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.36
  call void (i8*, ...) @error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.123, i32 0, i32 0))
  %27 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 11), align 8
  store %union.tree_node* %27, %union.tree_node** %arg2, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.end.36
  %28 = load %union.tree_node*, %union.tree_node** %arg2, align 8
  %call44 = call %struct.rtx_def* @expand_expr(%union.tree_node* %28, %struct.rtx_def* null, i32 0, i32 0)
  store %struct.rtx_def* %call44, %struct.rtx_def** %op2, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %op2, align 8
  %fld45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld45, i32 0, i64 0
  %rtwint47 = bitcast %union.rtunion_def* %arrayidx46 to i64*
  %30 = load i64, i64* %rtwint47, align 8
  %cmp48 = icmp slt i64 %30, 0
  br i1 %cmp48, label %if.then.53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.43
  %31 = load %struct.rtx_def*, %struct.rtx_def** %op2, align 8
  %fld49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld49, i32 0, i64 0
  %rtwint51 = bitcast %union.rtunion_def* %arrayidx50 to i64*
  %32 = load i64, i64* %rtwint51, align 8
  %cmp52 = icmp sgt i64 %32, 3
  br i1 %cmp52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %lor.lhs.false, %if.end.43
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.124, i32 0, i32 0))
  %33 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %33, %struct.rtx_def** %op2, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %lor.lhs.false
  %34 = load i32, i32* @x86_prefetch_sse, align 4
  %tobool55 = icmp ne i32 %34, 0
  br i1 %tobool55, label %if.then.59, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %if.end.54
  %35 = load i32, i32* @target_flags, align 4
  %and57 = and i32 %35, 1048576
  %cmp58 = icmp ne i32 %and57, 0
  br i1 %cmp58, label %if.then.59, label %if.else.73

if.then.59:                                       ; preds = %lor.lhs.false.56, %if.end.54
  %36 = load %struct.insn_operand_data*, %struct.insn_operand_data** getelementptr inbounds ([0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 1316, i32 3), align 8
  %arrayidx60 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %36, i64 0
  %predicate = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx60, i32 0, i32 0
  %37 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %39 = load %struct.insn_operand_data*, %struct.insn_operand_data** getelementptr inbounds ([0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 1316, i32 3), align 8
  %arrayidx61 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %39, i64 0
  %mode = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx61, i32 0, i32 2
  %bf.load62 = load i16, i16* %mode, align 8
  %bf.cast = zext i16 %bf.load62 to i32
  %call63 = call i32 %37(%struct.rtx_def* %38, i32 %bf.cast)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.end.70, label %if.then.65

if.then.65:                                       ; preds = %if.then.59
  %40 = load i32, i32* @target_flags, align 4
  %and66 = and i32 %40, 33554432
  %tobool67 = icmp ne i32 %and66, 0
  %cond68 = select i1 %tobool67, i32 5, i32 4
  %41 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %call69 = call %struct.rtx_def* @force_reg(i32 %cond68, %struct.rtx_def* %41)
  store %struct.rtx_def* %call69, %struct.rtx_def** %op0, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.65, %if.then.59
  %42 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %op2, align 8
  %call71 = call %struct.rtx_def* @gen_prefetch(%struct.rtx_def* %42, %struct.rtx_def* %43, %struct.rtx_def* %44)
  %call72 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call71)
  br label %if.end.75

if.else.73:                                       ; preds = %lor.lhs.false.56
  %45 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %call74 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %45, i32 0)
  store %struct.rtx_def* %call74, %struct.rtx_def** %op0, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.73, %if.end.70
  %46 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %47 = bitcast %struct.rtx_def* %46 to i32*
  %bf.load76 = load i32, i32* %47, align 8
  %bf.clear77 = and i32 %bf.load76, 65535
  %cmp78 = icmp ne i32 %bf.clear77, 66
  br i1 %cmp78, label %land.lhs.true.79, label %if.end.84

land.lhs.true.79:                                 ; preds = %if.end.75
  %48 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %call80 = call i32 @side_effects_p(%struct.rtx_def* %48)
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %if.then.82, label %if.end.84

if.then.82:                                       ; preds = %land.lhs.true.79
  %49 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %call83 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %49)
  br label %if.end.84

if.end.84:                                        ; preds = %if.then, %if.then.82, %land.lhs.true.79, %if.end.75
  ret void
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @fold_builtin(%union.tree_node* %exp) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %exp.addr = alloca %union.tree_node*, align 8
  %fndecl = alloca %union.tree_node*, align 8
  %arglist = alloca %union.tree_node*, align 8
  %fcode = alloca i32, align 4
  %len = alloca %union.tree_node*, align 8
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp1 = bitcast %union.tree_node* %0 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp1, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %exp2 = bitcast %union.tree_node* %1 to %struct.tree_exp*
  %operands3 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp2, i32 0, i32 2
  %arrayidx4 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands3, i32 0, i64 0
  %2 = load %union.tree_node*, %union.tree_node** %arrayidx4, align 8
  store %union.tree_node* %2, %union.tree_node** %fndecl, align 8
  %3 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp5 = bitcast %union.tree_node* %3 to %struct.tree_exp*
  %operands6 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp5, i32 0, i32 2
  %arrayidx7 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands6, i32 0, i64 1
  %4 = load %union.tree_node*, %union.tree_node** %arrayidx7, align 8
  store %union.tree_node* %4, %union.tree_node** %arglist, align 8
  %5 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %decl = bitcast %union.tree_node* %5 to %struct.tree_decl*
  %u1 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 6
  %f = bitcast %union.anon* %u1 to i32*
  %6 = load i32, i32* %f, align 4
  store i32 %6, i32* %fcode, align 4
  %7 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %decl8 = bitcast %union.tree_node* %7 to %struct.tree_decl*
  %built_in_class = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl8, i32 0, i32 5
  %8 = bitcast i48* %built_in_class to i64*
  %bf.load = load i64, i64* %8, align 8
  %bf.lshr = lshr i64 %bf.load, 29
  %bf.clear = and i64 %bf.lshr, 3
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp = icmp eq i32 %bf.cast, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %fcode, align 4
  switch i32 %9, label %sw.default [
    i32 51, label %sw.bb
    i32 48, label %sw.bb.9
    i32 31, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %if.end
  %10 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %call = call %union.tree_node* @fold_builtin_constant_p(%union.tree_node* %10)
  store %union.tree_node* %call, %union.tree_node** %retval
  br label %return

sw.bb.9:                                          ; preds = %if.end
  %11 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %call10 = call %union.tree_node* @fold_builtin_classify_type(%union.tree_node* %11)
  store %union.tree_node* %call10, %union.tree_node** %retval
  br label %return

sw.bb.11:                                         ; preds = %if.end
  %12 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %call12 = call i32 (%union.tree_node*, ...) @validate_arglist(%union.tree_node* %12, i32 13, i32 5)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %sw.bb.11
  %13 = load %union.tree_node*, %union.tree_node** %arglist, align 8
  %list = bitcast %union.tree_node* %13 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %14 = load %union.tree_node*, %union.tree_node** %value, align 8
  %call14 = call %union.tree_node* @c_strlen(%union.tree_node* %14)
  store %union.tree_node* %call14, %union.tree_node** %len, align 8
  %15 = load %union.tree_node*, %union.tree_node** %len, align 8
  %cmp15 = icmp ne %union.tree_node* %15, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.13
  %16 = load %union.tree_node*, %union.tree_node** %len, align 8
  store %union.tree_node* %16, %union.tree_node** %retval
  br label %return

if.end.17:                                        ; preds = %if.then.13
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %sw.bb.11
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.18
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.16, %sw.bb.9, %sw.bb, %if.then
  %17 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %17
}

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @fold_builtin_constant_p(%union.tree_node* %arglist) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %arglist.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %arglist, %union.tree_node** %arglist.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %cmp = icmp eq %union.tree_node* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %list = bitcast %union.tree_node* %1 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %2 = load %union.tree_node*, %union.tree_node** %value, align 8
  store %union.tree_node* %2, %union.tree_node** %arglist.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common = bitcast %union.tree_node* %3 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp1 = icmp eq i32 %bf.clear, 115
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %4 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common2 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %code3 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 2
  %bf.load4 = load i32, i32* %code3, align 8
  %bf.clear5 = and i32 %bf.load4, 255
  %cmp6 = icmp eq i32 %bf.clear5, 114
  br i1 %cmp6, label %land.lhs.true, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false
  %5 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common8 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %code9 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common8, i32 0, i32 2
  %bf.load10 = load i32, i32* %code9, align 8
  %bf.clear11 = and i32 %bf.load10, 255
  %cmp12 = icmp eq i32 %bf.clear11, 116
  br i1 %cmp12, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %lor.lhs.false.7, %lor.lhs.false, %while.cond
  %6 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %exp = bitcast %union.tree_node* %6 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %7 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %8 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp13 = icmp ne %union.tree_node* %7, %8
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %9 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common14 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common14, i32 0, i32 1
  %10 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type15 = bitcast %union.tree_node* %10 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type15, i32 0, i32 6
  %bf.load16 = load i32, i32* %mode, align 4
  %bf.lshr = lshr i32 %bf.load16, 9
  %bf.clear17 = and i32 %bf.lshr, 127
  %11 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %exp18 = bitcast %union.tree_node* %11 to %struct.tree_exp*
  %operands19 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp18, i32 0, i32 2
  %arrayidx20 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands19, i32 0, i64 0
  %12 = load %union.tree_node*, %union.tree_node** %arrayidx20, align 8
  %common21 = bitcast %union.tree_node* %12 to %struct.tree_common*
  %type22 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common21, i32 0, i32 1
  %13 = load %union.tree_node*, %union.tree_node** %type22, align 8
  %type23 = bitcast %union.tree_node* %13 to %struct.tree_type*
  %mode24 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type23, i32 0, i32 6
  %bf.load25 = load i32, i32* %mode24, align 4
  %bf.lshr26 = lshr i32 %bf.load25, 9
  %bf.clear27 = and i32 %bf.lshr26, 127
  %cmp28 = icmp eq i32 %bf.clear17, %bf.clear27
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %lor.lhs.false.7
  %14 = phi i1 [ false, %land.lhs.true ], [ false, %lor.lhs.false.7 ], [ %cmp28, %land.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %exp29 = bitcast %union.tree_node* %15 to %struct.tree_exp*
  %operands30 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp29, i32 0, i32 2
  %arrayidx31 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands30, i32 0, i64 0
  %16 = load %union.tree_node*, %union.tree_node** %arrayidx31, align 8
  store %union.tree_node* %16, %union.tree_node** %arglist.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %17 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common32 = bitcast %union.tree_node* %17 to %struct.tree_common*
  %code33 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common32, i32 0, i32 2
  %bf.load34 = load i32, i32* %code33, align 8
  %bf.clear35 = and i32 %bf.load34, 255
  %idxprom = sext i32 %bf.clear35 to i64
  %arrayidx36 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %18 = load i8, i8* %arrayidx36, align 1
  %conv = sext i8 %18 to i32
  %cmp37 = icmp eq i32 %conv, 99
  br i1 %cmp37, label %if.then.68, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %while.end
  %19 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common40 = bitcast %union.tree_node* %19 to %struct.tree_common*
  %code41 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common40, i32 0, i32 2
  %bf.load42 = load i32, i32* %code41, align 8
  %bf.clear43 = and i32 %bf.load42, 255
  %cmp44 = icmp eq i32 %bf.clear43, 46
  br i1 %cmp44, label %land.lhs.true.46, label %lor.lhs.false.51

land.lhs.true.46:                                 ; preds = %lor.lhs.false.39
  %20 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common47 = bitcast %union.tree_node* %20 to %struct.tree_common*
  %constant_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common47, i32 0, i32 2
  %bf.load48 = load i32, i32* %constant_flag, align 8
  %bf.lshr49 = lshr i32 %bf.load48, 9
  %bf.clear50 = and i32 %bf.lshr49, 1
  %tobool = icmp ne i32 %bf.clear50, 0
  br i1 %tobool, label %if.then.68, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %land.lhs.true.46, %lor.lhs.false.39
  %21 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common52 = bitcast %union.tree_node* %21 to %struct.tree_common*
  %code53 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common52, i32 0, i32 2
  %bf.load54 = load i32, i32* %code53, align 8
  %bf.clear55 = and i32 %bf.load54, 255
  %cmp56 = icmp eq i32 %bf.clear55, 121
  br i1 %cmp56, label %land.lhs.true.58, label %if.end.69

land.lhs.true.58:                                 ; preds = %lor.lhs.false.51
  %22 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %exp59 = bitcast %union.tree_node* %22 to %struct.tree_exp*
  %operands60 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp59, i32 0, i32 2
  %arrayidx61 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands60, i32 0, i64 0
  %23 = load %union.tree_node*, %union.tree_node** %arrayidx61, align 8
  %common62 = bitcast %union.tree_node* %23 to %struct.tree_common*
  %code63 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common62, i32 0, i32 2
  %bf.load64 = load i32, i32* %code63, align 8
  %bf.clear65 = and i32 %bf.load64, 255
  %cmp66 = icmp eq i32 %bf.clear65, 29
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %land.lhs.true.58, %land.lhs.true.46, %while.end
  %24 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 12), align 8
  store %union.tree_node* %24, %union.tree_node** %retval
  br label %return

if.end.69:                                        ; preds = %land.lhs.true.58, %lor.lhs.false.51
  %25 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common70 = bitcast %union.tree_node* %25 to %struct.tree_common*
  %side_effects_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common70, i32 0, i32 2
  %bf.load71 = load i32, i32* %side_effects_flag, align 8
  %bf.lshr72 = lshr i32 %bf.load71, 8
  %bf.clear73 = and i32 %bf.lshr72, 1
  %tobool74 = icmp ne i32 %bf.clear73, 0
  br i1 %tobool74, label %if.then.143, label %lor.lhs.false.75

lor.lhs.false.75:                                 ; preds = %if.end.69
  %26 = load i32, i32* @cse_not_expected, align 4
  %tobool76 = icmp ne i32 %26, 0
  br i1 %tobool76, label %if.then.143, label %lor.lhs.false.77

lor.lhs.false.77:                                 ; preds = %lor.lhs.false.75
  %27 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common78 = bitcast %union.tree_node* %27 to %struct.tree_common*
  %type79 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common78, i32 0, i32 1
  %28 = load %union.tree_node*, %union.tree_node** %type79, align 8
  %common80 = bitcast %union.tree_node* %28 to %struct.tree_common*
  %code81 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common80, i32 0, i32 2
  %bf.load82 = load i32, i32* %code81, align 8
  %bf.clear83 = and i32 %bf.load82, 255
  %cmp84 = icmp eq i32 %bf.clear83, 18
  br i1 %cmp84, label %if.then.143, label %lor.lhs.false.86

lor.lhs.false.86:                                 ; preds = %lor.lhs.false.77
  %29 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common87 = bitcast %union.tree_node* %29 to %struct.tree_common*
  %type88 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common87, i32 0, i32 1
  %30 = load %union.tree_node*, %union.tree_node** %type88, align 8
  %common89 = bitcast %union.tree_node* %30 to %struct.tree_common*
  %code90 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common89, i32 0, i32 2
  %bf.load91 = load i32, i32* %code90, align 8
  %bf.clear92 = and i32 %bf.load91, 255
  %cmp93 = icmp eq i32 %bf.clear92, 20
  br i1 %cmp93, label %if.then.143, label %lor.lhs.false.95

lor.lhs.false.95:                                 ; preds = %lor.lhs.false.86
  %31 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common96 = bitcast %union.tree_node* %31 to %struct.tree_common*
  %type97 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common96, i32 0, i32 1
  %32 = load %union.tree_node*, %union.tree_node** %type97, align 8
  %common98 = bitcast %union.tree_node* %32 to %struct.tree_common*
  %code99 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common98, i32 0, i32 2
  %bf.load100 = load i32, i32* %code99, align 8
  %bf.clear101 = and i32 %bf.load100, 255
  %cmp102 = icmp eq i32 %bf.clear101, 21
  br i1 %cmp102, label %if.then.143, label %lor.lhs.false.104

lor.lhs.false.104:                                ; preds = %lor.lhs.false.95
  %33 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common105 = bitcast %union.tree_node* %33 to %struct.tree_common*
  %type106 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common105, i32 0, i32 1
  %34 = load %union.tree_node*, %union.tree_node** %type106, align 8
  %common107 = bitcast %union.tree_node* %34 to %struct.tree_common*
  %code108 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common107, i32 0, i32 2
  %bf.load109 = load i32, i32* %code108, align 8
  %bf.clear110 = and i32 %bf.load109, 255
  %cmp111 = icmp eq i32 %bf.clear110, 22
  br i1 %cmp111, label %if.then.143, label %lor.lhs.false.113

lor.lhs.false.113:                                ; preds = %lor.lhs.false.104
  %35 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common114 = bitcast %union.tree_node* %35 to %struct.tree_common*
  %type115 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common114, i32 0, i32 1
  %36 = load %union.tree_node*, %union.tree_node** %type115, align 8
  %common116 = bitcast %union.tree_node* %36 to %struct.tree_common*
  %code117 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common116, i32 0, i32 2
  %bf.load118 = load i32, i32* %code117, align 8
  %bf.clear119 = and i32 %bf.load118, 255
  %cmp120 = icmp eq i32 %bf.clear119, 19
  br i1 %cmp120, label %if.then.143, label %lor.lhs.false.122

lor.lhs.false.122:                                ; preds = %lor.lhs.false.113
  %37 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common123 = bitcast %union.tree_node* %37 to %struct.tree_common*
  %type124 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common123, i32 0, i32 1
  %38 = load %union.tree_node*, %union.tree_node** %type124, align 8
  %common125 = bitcast %union.tree_node* %38 to %struct.tree_common*
  %code126 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common125, i32 0, i32 2
  %bf.load127 = load i32, i32* %code126, align 8
  %bf.clear128 = and i32 %bf.load127, 255
  %cmp129 = icmp eq i32 %bf.clear128, 13
  br i1 %cmp129, label %if.then.143, label %lor.lhs.false.131

lor.lhs.false.131:                                ; preds = %lor.lhs.false.122
  %39 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %common132 = bitcast %union.tree_node* %39 to %struct.tree_common*
  %type133 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common132, i32 0, i32 1
  %40 = load %union.tree_node*, %union.tree_node** %type133, align 8
  %common134 = bitcast %union.tree_node* %40 to %struct.tree_common*
  %code135 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common134, i32 0, i32 2
  %bf.load136 = load i32, i32* %code135, align 8
  %bf.clear137 = and i32 %bf.load136, 255
  %cmp138 = icmp eq i32 %bf.clear137, 15
  br i1 %cmp138, label %if.then.143, label %lor.lhs.false.140

lor.lhs.false.140:                                ; preds = %lor.lhs.false.131
  %41 = load %struct.function*, %struct.function** @cfun, align 8
  %cmp141 = icmp eq %struct.function* %41, null
  br i1 %cmp141, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %lor.lhs.false.140, %lor.lhs.false.131, %lor.lhs.false.122, %lor.lhs.false.113, %lor.lhs.false.104, %lor.lhs.false.95, %lor.lhs.false.86, %lor.lhs.false.77, %lor.lhs.false.75, %if.end.69
  %42 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 11), align 8
  store %union.tree_node* %42, %union.tree_node** %retval
  br label %return

if.end.144:                                       ; preds = %lor.lhs.false.140
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %if.end.144, %if.then.143, %if.then.68, %if.then
  %43 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %43
}

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @fold_builtin_classify_type(%union.tree_node* %arglist) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %arglist.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %arglist, %union.tree_node** %arglist.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %cmp = icmp eq %union.tree_node* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %union.tree_node* @build_int_2_wide(i64 -1, i64 0)
  store %union.tree_node* %call, %union.tree_node** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %list = bitcast %union.tree_node* %1 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %2 = load %union.tree_node*, %union.tree_node** %value, align 8
  %common = bitcast %union.tree_node* %2 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %3 = load %union.tree_node*, %union.tree_node** %type, align 8
  %call1 = call i32 @type_to_class(%union.tree_node* %3)
  %conv = sext i32 %call1 to i64
  %call2 = call %union.tree_node* @build_int_2_wide(i64 %conv, i64 0)
  store %union.tree_node* %call2, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %4
}

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @c_strlen(%union.tree_node* %src) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %src.addr = alloca %union.tree_node*, align 8
  %offset_node = alloca %union.tree_node*, align 8
  %offset = alloca i64, align 8
  %max = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %i = alloca i32, align 4
  store %union.tree_node* %src, %union.tree_node** %src.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %src.addr, align 8
  %call = call %union.tree_node* @string_constant(%union.tree_node* %0, %union.tree_node** %offset_node)
  store %union.tree_node* %call, %union.tree_node** %src.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %src.addr, align 8
  %cmp = icmp eq %union.tree_node* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %src.addr, align 8
  %string = bitcast %union.tree_node* %2 to %struct.tree_string*
  %length = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string, i32 0, i32 2
  %3 = load i32, i32* %length, align 4
  %sub = sub nsw i32 %3, 1
  store i32 %sub, i32* %max, align 4
  %4 = load %union.tree_node*, %union.tree_node** %src.addr, align 8
  %string1 = bitcast %union.tree_node* %4 to %struct.tree_string*
  %pointer = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string1, i32 0, i32 3
  %5 = load i8*, i8** %pointer, align 8
  store i8* %5, i8** %ptr, align 8
  %6 = load %union.tree_node*, %union.tree_node** %offset_node, align 8
  %tobool = icmp ne %union.tree_node* %6, null
  br i1 %tobool, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %if.end
  %7 = load %union.tree_node*, %union.tree_node** %offset_node, align 8
  %common = bitcast %union.tree_node* %7 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp2 = icmp ne i32 %bf.clear, 25
  br i1 %cmp2, label %if.then.3, label %if.end.12

if.then.3:                                        ; preds = %land.lhs.true
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %max, align 4
  %cmp4 = icmp slt i32 %8, %9
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i8*, i8** %ptr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom
  %12 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %12 to i32
  %cmp5 = icmp eq i32 %conv, 0
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.body
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

if.end.8:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %max, align 4
  %conv9 = sext i32 %14 to i64
  %call10 = call %union.tree_node* @size_int_wide(i64 %conv9, i32 0)
  %15 = load %union.tree_node*, %union.tree_node** %offset_node, align 8
  %call11 = call %union.tree_node* @size_diffop(%union.tree_node* %call10, %union.tree_node* %15)
  store %union.tree_node* %call11, %union.tree_node** %retval
  br label %return

if.end.12:                                        ; preds = %land.lhs.true, %if.end
  %16 = load %union.tree_node*, %union.tree_node** %offset_node, align 8
  %cmp13 = icmp eq %union.tree_node* %16, null
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end.12
  store i64 0, i64* %offset, align 8
  br label %if.end.22

if.else:                                          ; preds = %if.end.12
  %17 = load %union.tree_node*, %union.tree_node** %offset_node, align 8
  %call16 = call i32 @host_integerp(%union.tree_node* %17, i32 0)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.else.19, label %if.then.18

if.then.18:                                       ; preds = %if.else
  store i64 -1, i64* %offset, align 8
  br label %if.end.21

if.else.19:                                       ; preds = %if.else
  %18 = load %union.tree_node*, %union.tree_node** %offset_node, align 8
  %call20 = call i64 @tree_low_cst(%union.tree_node* %18, i32 0)
  store i64 %call20, i64* %offset, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.19, %if.then.18
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.15
  %19 = load i64, i64* %offset, align 8
  %cmp23 = icmp slt i64 %19, 0
  br i1 %cmp23, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.22
  %20 = load i64, i64* %offset, align 8
  %21 = load i32, i32* %max, align 4
  %conv25 = sext i32 %21 to i64
  %cmp26 = icmp sgt i64 %20, %conv25
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %lor.lhs.false, %if.end.22
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.125, i32 0, i32 0))
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

if.end.29:                                        ; preds = %lor.lhs.false
  %22 = load i8*, i8** %ptr, align 8
  %23 = load i64, i64* %offset, align 8
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %23
  %call30 = call i64 @strlen(i8* %add.ptr) #6
  %call31 = call %union.tree_node* @size_int_wide(i64 %call30, i32 1)
  store %union.tree_node* %call31, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.then.28, %for.end, %if.then.7, %if.then
  %24 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %24
}

; Function Attrs: nounwind uwtable
define void @default_init_builtins() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @default_expand_builtin(%union.tree_node* %exp, %struct.rtx_def* %target, %struct.rtx_def* %subtarget, i32 %mode, i32 %ignore) #0 {
entry:
  %exp.addr = alloca %union.tree_node*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %subtarget.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %ignore.addr = alloca i32, align 4
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %subtarget, %struct.rtx_def** %subtarget.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %ignore, i32* %ignore.addr, align 4
  ret %struct.rtx_def* null
}

declare zeroext i1 @ix86_function_arg_regno_p(i32) #1

declare i32 @ix86_hard_regno_mode_ok(i32, i32) #1

declare i32 @have_insn_for(i32, i32) #1

declare i32 @get_mode_alignment(i32) #1

declare %union.tree_node* @save_expr(%union.tree_node*) #1

declare %union.tree_node* @build_pointer_type(%union.tree_node*) #1

declare %union.tree_node* @build1(i32, %union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @copy_node(%union.tree_node*) #1

declare %struct.rtx_def* @gen_reg_rtx(i32) #1

declare %struct.rtx_def* @expand_unop(i32, %struct.optab*, %struct.rtx_def*, %struct.rtx_def*, i32) #1

declare %struct.rtx_def* @gen_label_rtx() #1

declare void @emit_cmp_and_jump_insns(%struct.rtx_def*, %struct.rtx_def*, i32, %struct.rtx_def*, i32, i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @emit_label(%struct.rtx_def*) #1

declare %struct.rtx_def* @emit_insns(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @expand_builtin_apply_args_1() #0 {
entry:
  %registers = alloca %struct.rtx_def*, align 8
  %size = alloca i32, align 4
  %align = alloca i32, align 4
  %regno = alloca i32, align 4
  %mode = alloca i32, align 4
  %tem = alloca %struct.rtx_def*, align 8
  %call = call i32 @apply_args_size()
  %conv = sext i32 %call to i64
  %call1 = call %struct.rtx_def* @assign_stack_local(i32 51, i64 %conv, i32 -1)
  store %struct.rtx_def* %call1, %struct.rtx_def** %registers, align 8
  %0 = load i32, i32* @target_flags, align 4
  %and = and i32 %0, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 5, i32 4
  %idxprom = sext i32 %cond to i64
  %arrayidx = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv2 = zext i8 %1 to i32
  store i32 %conv2, i32* %size, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** @struct_value_rtx, align 8
  %tobool3 = icmp ne %struct.rtx_def* %2, null
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* @target_flags, align 4
  %and4 = and i32 %3, 33554432
  %tobool5 = icmp ne i32 %and4, 0
  %cond6 = select i1 %tobool5, i32 5, i32 4
  %idxprom7 = sext i32 %cond6 to i64
  %arrayidx8 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom7
  %4 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %4 to i32
  %5 = load i32, i32* %size, align 4
  %add = add nsw i32 %5, %conv9
  store i32 %add, i32* %size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %regno, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %regno, align 4
  %cmp = icmp slt i32 %6, 53
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %regno, align 4
  %idxprom11 = sext i32 %7 to i64
  %arrayidx12 = getelementptr inbounds [53 x i32], [53 x i32]* @apply_args_mode, i32 0, i64 %idxprom11
  %8 = load i32, i32* %arrayidx12, align 4
  store i32 %8, i32* %mode, align 4
  %cmp13 = icmp ne i32 %8, 0
  br i1 %cmp13, label %if.then.15, label %if.end.31

if.then.15:                                       ; preds = %for.body
  %9 = load i32, i32* %mode, align 4
  %call16 = call i32 @get_mode_alignment(i32 %9)
  %div = udiv i32 %call16, 8
  store i32 %div, i32* %align, align 4
  %10 = load i32, i32* %size, align 4
  %11 = load i32, i32* %align, align 4
  %rem = srem i32 %10, %11
  %cmp17 = icmp ne i32 %rem, 0
  br i1 %cmp17, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %if.then.15
  %12 = load i32, i32* %size, align 4
  %13 = load i32, i32* %align, align 4
  %add20 = add nsw i32 %12, %13
  %sub = sub nsw i32 %add20, 1
  %14 = load i32, i32* %align, align 4
  %div21 = sdiv i32 %sub, %14
  %15 = load i32, i32* %align, align 4
  %mul = mul nsw i32 %div21, %15
  store i32 %mul, i32* %size, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %if.then.15
  %16 = load i32, i32* %mode, align 4
  %17 = load i32, i32* %regno, align 4
  %call23 = call %struct.rtx_def* @gen_rtx_REG(i32 %16, i32 %17)
  store %struct.rtx_def* %call23, %struct.rtx_def** %tem, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %registers, align 8
  %19 = load i32, i32* %mode, align 4
  %20 = load i32, i32* %size, align 4
  %conv24 = sext i32 %20 to i64
  %call25 = call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %18, i32 %19, i64 %conv24, i32 1, i32 1)
  %21 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %call26 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %call25, %struct.rtx_def* %21)
  %22 = load i32, i32* %mode, align 4
  %idxprom27 = sext i32 %22 to i64
  %arrayidx28 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom27
  %23 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %23 to i32
  %24 = load i32, i32* %size, align 4
  %add30 = add nsw i32 %24, %conv29
  store i32 %add30, i32* %size, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.22, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %25 = load i32, i32* %regno, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %regno, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load %struct.rtx_def*, %struct.rtx_def** %registers, align 8
  %27 = load i32, i32* @target_flags, align 4
  %and32 = and i32 %27, 33554432
  %tobool33 = icmp ne i32 %and32, 0
  %cond34 = select i1 %tobool33, i32 5, i32 4
  %call35 = call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %26, i32 %cond34, i64 0, i32 1, i32 1)
  %28 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 6), align 8
  %call36 = call %struct.rtx_def* @copy_to_reg(%struct.rtx_def* %28)
  %call37 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %call35, %struct.rtx_def* %call36)
  %29 = load i32, i32* @target_flags, align 4
  %and38 = and i32 %29, 33554432
  %tobool39 = icmp ne i32 %and38, 0
  %cond40 = select i1 %tobool39, i32 5, i32 4
  %idxprom41 = sext i32 %cond40 to i64
  %arrayidx42 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom41
  %30 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %30 to i32
  store i32 %conv43, i32* %size, align 4
  %31 = load %struct.rtx_def*, %struct.rtx_def** @struct_value_incoming_rtx, align 8
  %tobool44 = icmp ne %struct.rtx_def* %31, null
  br i1 %tobool44, label %if.then.45, label %if.end.60

if.then.45:                                       ; preds = %for.end
  %32 = load %struct.rtx_def*, %struct.rtx_def** %registers, align 8
  %33 = load i32, i32* @target_flags, align 4
  %and46 = and i32 %33, 33554432
  %tobool47 = icmp ne i32 %and46, 0
  %cond48 = select i1 %tobool47, i32 5, i32 4
  %34 = load i32, i32* %size, align 4
  %conv49 = sext i32 %34 to i64
  %call50 = call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %32, i32 %cond48, i64 %conv49, i32 1, i32 1)
  %35 = load %struct.rtx_def*, %struct.rtx_def** @struct_value_incoming_rtx, align 8
  %call51 = call %struct.rtx_def* @copy_to_reg(%struct.rtx_def* %35)
  %call52 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %call50, %struct.rtx_def* %call51)
  %36 = load i32, i32* @target_flags, align 4
  %and53 = and i32 %36, 33554432
  %tobool54 = icmp ne i32 %and53, 0
  %cond55 = select i1 %tobool54, i32 5, i32 4
  %idxprom56 = sext i32 %cond55 to i64
  %arrayidx57 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom56
  %37 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %37 to i32
  %38 = load i32, i32* %size, align 4
  %add59 = add nsw i32 %38, %conv58
  store i32 %add59, i32* %size, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.45, %for.end
  %39 = load %struct.rtx_def*, %struct.rtx_def** %registers, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx61 to %struct.rtx_def**
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call62 = call %struct.rtx_def* @copy_addr_to_reg(%struct.rtx_def* %40)
  ret %struct.rtx_def* %call62
}

declare %struct.rtx_def* @emit_insns_before(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @assign_stack_local(i32, i64, i32) #1

declare %struct.rtx_def* @gen_rtx_REG(i32, i32) #1

declare %struct.rtx_def* @adjust_address_1(%struct.rtx_def*, i32, i64, i32, i32) #1

declare %struct.rtx_def* @copy_addr_to_reg(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal i32 @apply_result_size() #0 {
entry:
  %align = alloca i32, align 4
  %regno = alloca i32, align 4
  %mode = alloca i32, align 4
  %best_mode = alloca i32, align 4
  %0 = load i32, i32* @apply_result_size.size, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end.88

if.then:                                          ; preds = %entry
  store i32 0, i32* @apply_result_size.size, align 4
  store i32 0, i32* %regno, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.86, %if.then
  %1 = load i32, i32* %regno, align 4
  %cmp1 = icmp slt i32 %1, 53
  br i1 %cmp1, label %for.body, label %for.end.87

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %regno, align 4
  %call = call zeroext i1 @ix86_function_value_regno_p(i32 %2)
  br i1 %call, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %for.body
  store i32 0, i32* %best_mode, align 4
  %3 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @class_narrowest_mode, i32 0, i64 1), align 4
  store i32 %3, i32* %mode, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %if.then.2
  %4 = load i32, i32* %mode, align 4
  %cmp4 = icmp ne i32 %4, 6
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %5 = load i32, i32* %regno, align 4
  %6 = load i32, i32* %mode, align 4
  %call6 = call i32 @ix86_hard_regno_mode_ok(i32 %5, i32 %6)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %for.body.5
  %7 = load i32, i32* %mode, align 4
  store i32 %7, i32* %best_mode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.7, %for.body.5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %mode, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %9 to i32
  store i32 %conv, i32* %mode, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  %10 = load i32, i32* %best_mode, align 4
  %cmp8 = icmp eq i32 %10, 0
  br i1 %cmp8, label %if.then.10, label %if.end.26

if.then.10:                                       ; preds = %for.end
  %11 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @class_narrowest_mode, i32 0, i64 2), align 4
  store i32 %11, i32* %mode, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.21, %if.then.10
  %12 = load i32, i32* %mode, align 4
  %cmp12 = icmp ne i32 %12, 0
  br i1 %cmp12, label %for.body.14, label %for.end.25

for.body.14:                                      ; preds = %for.cond.11
  %13 = load i32, i32* %regno, align 4
  %14 = load i32, i32* %mode, align 4
  %call15 = call i32 @ix86_hard_regno_mode_ok(i32 %13, i32 %14)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %for.body.14
  %15 = load i32, i32* %mode, align 4
  %call17 = call i32 @have_insn_for(i32 47, i32 %15)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %land.lhs.true
  %16 = load i32, i32* %mode, align 4
  store i32 %16, i32* %best_mode, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %land.lhs.true, %for.body.14
  br label %for.inc.21

for.inc.21:                                       ; preds = %if.end.20
  %17 = load i32, i32* %mode, align 4
  %idxprom22 = sext i32 %17 to i64
  %arrayidx23 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom22
  %18 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %18 to i32
  store i32 %conv24, i32* %mode, align 4
  br label %for.cond.11

for.end.25:                                       ; preds = %for.cond.11
  br label %if.end.26

if.end.26:                                        ; preds = %for.end.25, %for.end
  %19 = load i32, i32* %best_mode, align 4
  %cmp27 = icmp eq i32 %19, 0
  br i1 %cmp27, label %if.then.29, label %if.end.46

if.then.29:                                       ; preds = %if.end.26
  %20 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @class_narrowest_mode, i32 0, i64 8), align 4
  store i32 %20, i32* %mode, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.41, %if.then.29
  %21 = load i32, i32* %mode, align 4
  %cmp31 = icmp ne i32 %21, 0
  br i1 %cmp31, label %for.body.33, label %for.end.45

for.body.33:                                      ; preds = %for.cond.30
  %22 = load i32, i32* %regno, align 4
  %23 = load i32, i32* %mode, align 4
  %call34 = call i32 @ix86_hard_regno_mode_ok(i32 %22, i32 %23)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %land.lhs.true.36, label %if.end.40

land.lhs.true.36:                                 ; preds = %for.body.33
  %24 = load i32, i32* %mode, align 4
  %call37 = call i32 @have_insn_for(i32 47, i32 %24)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %land.lhs.true.36
  %25 = load i32, i32* %mode, align 4
  store i32 %25, i32* %best_mode, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %land.lhs.true.36, %for.body.33
  br label %for.inc.41

for.inc.41:                                       ; preds = %if.end.40
  %26 = load i32, i32* %mode, align 4
  %idxprom42 = sext i32 %26 to i64
  %arrayidx43 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom42
  %27 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %27 to i32
  store i32 %conv44, i32* %mode, align 4
  br label %for.cond.30

for.end.45:                                       ; preds = %for.cond.30
  br label %if.end.46

if.end.46:                                        ; preds = %for.end.45, %if.end.26
  %28 = load i32, i32* %best_mode, align 4
  %cmp47 = icmp eq i32 %28, 0
  br i1 %cmp47, label %if.then.49, label %if.end.66

if.then.49:                                       ; preds = %if.end.46
  %29 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @class_narrowest_mode, i32 0, i64 7), align 4
  store i32 %29, i32* %mode, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.61, %if.then.49
  %30 = load i32, i32* %mode, align 4
  %cmp51 = icmp ne i32 %30, 0
  br i1 %cmp51, label %for.body.53, label %for.end.65

for.body.53:                                      ; preds = %for.cond.50
  %31 = load i32, i32* %regno, align 4
  %32 = load i32, i32* %mode, align 4
  %call54 = call i32 @ix86_hard_regno_mode_ok(i32 %31, i32 %32)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %land.lhs.true.56, label %if.end.60

land.lhs.true.56:                                 ; preds = %for.body.53
  %33 = load i32, i32* %mode, align 4
  %call57 = call i32 @have_insn_for(i32 47, i32 %33)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %land.lhs.true.56
  %34 = load i32, i32* %mode, align 4
  store i32 %34, i32* %best_mode, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %land.lhs.true.56, %for.body.53
  br label %for.inc.61

for.inc.61:                                       ; preds = %if.end.60
  %35 = load i32, i32* %mode, align 4
  %idxprom62 = sext i32 %35 to i64
  %arrayidx63 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom62
  %36 = load i8, i8* %arrayidx63, align 1
  %conv64 = zext i8 %36 to i32
  store i32 %conv64, i32* %mode, align 4
  br label %for.cond.50

for.end.65:                                       ; preds = %for.cond.50
  br label %if.end.66

if.end.66:                                        ; preds = %for.end.65, %if.end.46
  %37 = load i32, i32* %best_mode, align 4
  store i32 %37, i32* %mode, align 4
  %38 = load i32, i32* %mode, align 4
  %cmp67 = icmp eq i32 %38, 0
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.end.66
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.100, i32 0, i32 0), i32 1016, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.apply_result_size, i32 0, i32 0)) #5
  unreachable

if.end.70:                                        ; preds = %if.end.66
  %39 = load i32, i32* %mode, align 4
  %call71 = call i32 @get_mode_alignment(i32 %39)
  %div = udiv i32 %call71, 8
  store i32 %div, i32* %align, align 4
  %40 = load i32, i32* @apply_result_size.size, align 4
  %41 = load i32, i32* %align, align 4
  %rem = srem i32 %40, %41
  %cmp72 = icmp ne i32 %rem, 0
  br i1 %cmp72, label %if.then.74, label %if.end.76

if.then.74:                                       ; preds = %if.end.70
  %42 = load i32, i32* @apply_result_size.size, align 4
  %43 = load i32, i32* %align, align 4
  %add = add nsw i32 %42, %43
  %sub = sub nsw i32 %add, 1
  %44 = load i32, i32* %align, align 4
  %div75 = sdiv i32 %sub, %44
  %45 = load i32, i32* %align, align 4
  %mul = mul nsw i32 %div75, %45
  store i32 %mul, i32* @apply_result_size.size, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.74, %if.end.70
  %46 = load i32, i32* %mode, align 4
  %idxprom77 = sext i32 %46 to i64
  %arrayidx78 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom77
  %47 = load i8, i8* %arrayidx78, align 1
  %conv79 = zext i8 %47 to i32
  %48 = load i32, i32* @apply_result_size.size, align 4
  %add80 = add nsw i32 %48, %conv79
  store i32 %add80, i32* @apply_result_size.size, align 4
  %49 = load i32, i32* %mode, align 4
  %50 = load i32, i32* %regno, align 4
  %idxprom81 = sext i32 %50 to i64
  %arrayidx82 = getelementptr inbounds [53 x i32], [53 x i32]* @apply_result_mode, i32 0, i64 %idxprom81
  store i32 %49, i32* %arrayidx82, align 4
  br label %if.end.85

if.else:                                          ; preds = %for.body
  %51 = load i32, i32* %regno, align 4
  %idxprom83 = sext i32 %51 to i64
  %arrayidx84 = getelementptr inbounds [53 x i32], [53 x i32]* @apply_result_mode, i32 0, i64 %idxprom83
  store i32 0, i32* %arrayidx84, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.else, %if.end.76
  br label %for.inc.86

for.inc.86:                                       ; preds = %if.end.85
  %52 = load i32, i32* %regno, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %regno, align 4
  br label %for.cond

for.end.87:                                       ; preds = %for.cond
  store i32 116, i32* @apply_result_size.size, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %for.end.87, %entry
  %53 = load i32, i32* @apply_result_size.size, align 4
  ret i32 %53
}

declare void @do_pending_stack_adjust() #1

declare %struct.rtx_def* @allocate_dynamic_stack_space(%struct.rtx_def*, %struct.rtx_def*, i32) #1

declare void @set_mem_align(%struct.rtx_def*, i32) #1

declare %struct.rtx_def* @emit_block_move(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare void @use_reg(%struct.rtx_def**, %struct.rtx_def*) #1

declare %struct.rtx_def* @prepare_call_address(%struct.rtx_def*, %union.tree_node*, %struct.rtx_def**, i32, i32) #1

declare %struct.rtx_def* @emit_call_insn(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_untyped_call(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @result_vector(i32 %savep, %struct.rtx_def* %result) #0 {
entry:
  %savep.addr = alloca i32, align 4
  %result.addr = alloca %struct.rtx_def*, align 8
  %regno = alloca i32, align 4
  %size = alloca i32, align 4
  %align = alloca i32, align 4
  %nelts = alloca i32, align 4
  %mode = alloca i32, align 4
  %reg = alloca %struct.rtx_def*, align 8
  %mem = alloca %struct.rtx_def*, align 8
  %savevec = alloca %struct.rtx_def**, align 8
  store i32 %savep, i32* %savep.addr, align 4
  store %struct.rtx_def* %result, %struct.rtx_def** %result.addr, align 8
  %0 = alloca i8, i64 424
  %1 = bitcast i8* %0 to %struct.rtx_def**
  store %struct.rtx_def** %1, %struct.rtx_def*** %savevec, align 8
  store i32 0, i32* %nelts, align 4
  store i32 0, i32* %size, align 4
  store i32 0, i32* %regno, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %regno, align 4
  %cmp = icmp slt i32 %2, 53
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %regno, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [53 x i32], [53 x i32]* @apply_result_mode, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  store i32 %4, i32* %mode, align 4
  %cmp1 = icmp ne i32 %4, 0
  br i1 %cmp1, label %if.then, label %if.end.20

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %mode, align 4
  %call = call i32 @get_mode_alignment(i32 %5)
  %div = udiv i32 %call, 8
  store i32 %div, i32* %align, align 4
  %6 = load i32, i32* %size, align 4
  %7 = load i32, i32* %align, align 4
  %rem = srem i32 %6, %7
  %cmp2 = icmp ne i32 %rem, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %8 = load i32, i32* %size, align 4
  %9 = load i32, i32* %align, align 4
  %add = add nsw i32 %8, %9
  %sub = sub nsw i32 %add, 1
  %10 = load i32, i32* %align, align 4
  %div4 = sdiv i32 %sub, %10
  %11 = load i32, i32* %align, align 4
  %mul = mul nsw i32 %div4, %11
  store i32 %mul, i32* %size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %12 = load i32, i32* %mode, align 4
  %13 = load i32, i32* %savep.addr, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %14 = load i32, i32* %regno, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %15 = load i32, i32* %regno, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %15, %cond.false ]
  %call5 = call %struct.rtx_def* @gen_rtx_REG(i32 %12, i32 %cond)
  store %struct.rtx_def* %call5, %struct.rtx_def** %reg, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %result.addr, align 8
  %17 = load i32, i32* %mode, align 4
  %18 = load i32, i32* %size, align 4
  %conv = sext i32 %18 to i64
  %call6 = call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %16, i32 %17, i64 %conv, i32 1, i32 1)
  store %struct.rtx_def* %call6, %struct.rtx_def** %mem, align 8
  %19 = load i32, i32* %savep.addr, align 4
  %tobool7 = icmp ne i32 %19, 0
  br i1 %tobool7, label %cond.true.8, label %cond.false.10

cond.true.8:                                      ; preds = %cond.end
  %20 = load %struct.rtx_def*, %struct.rtx_def** %mem, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %call9 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 47, i32 0, %struct.rtx_def* %20, %struct.rtx_def* %21)
  br label %cond.end.12

cond.false.10:                                    ; preds = %cond.end
  %22 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %mem, align 8
  %call11 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 47, i32 0, %struct.rtx_def* %22, %struct.rtx_def* %23)
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.10, %cond.true.8
  %cond13 = phi %struct.rtx_def* [ %call9, %cond.true.8 ], [ %call11, %cond.false.10 ]
  %24 = load i32, i32* %nelts, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %nelts, align 4
  %idxprom14 = sext i32 %24 to i64
  %25 = load %struct.rtx_def**, %struct.rtx_def*** %savevec, align 8
  %arrayidx15 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %25, i64 %idxprom14
  store %struct.rtx_def* %cond13, %struct.rtx_def** %arrayidx15, align 8
  %26 = load i32, i32* %mode, align 4
  %idxprom16 = sext i32 %26 to i64
  %arrayidx17 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom16
  %27 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %27 to i32
  %28 = load i32, i32* %size, align 4
  %add19 = add nsw i32 %28, %conv18
  store i32 %add19, i32* %size, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %cond.end.12, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %29 = load i32, i32* %regno, align 4
  %inc21 = add nsw i32 %29, 1
  store i32 %inc21, i32* %regno, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load i32, i32* %nelts, align 4
  %31 = load %struct.rtx_def**, %struct.rtx_def*** %savevec, align 8
  %call22 = call %struct.rtvec_def* @gen_rtvec_v(i32 %30, %struct.rtx_def** %31)
  %call23 = call %struct.rtx_def* @gen_rtx_fmt_E(i32 39, i32 0, %struct.rtvec_def* %call22)
  ret %struct.rtx_def* %call23
}

declare zeroext i1 @ix86_function_value_regno_p(i32) #1

declare %struct.rtx_def* @gen_rtx_fmt_ee(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_fmt_E(i32, i32, %struct.rtvec_def*) #1

declare %struct.rtvec_def* @gen_rtvec_v(i32, %struct.rtx_def**) #1

declare void @push_to_sequence(%struct.rtx_def*) #1

declare void @expand_null_return() #1

declare i32 @host_integerp(%union.tree_node*, i32) #1

declare i64 @tree_low_cst(%union.tree_node*, i32) #1

declare %struct.rtx_def* @gen_rtx_CONST_INT(i32, i64) #1

declare %union.tree_node* @tree_last(%union.tree_node*) #1

declare %struct.rtx_def* @expand_binop(i32, %struct.optab*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @type_to_class(%union.tree_node* %type) #0 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  switch i32 %bf.clear, label %sw.default [
    i32 5, label %sw.bb
    i32 6, label %sw.bb.1
    i32 12, label %sw.bb.2
    i32 10, label %sw.bb.3
    i32 11, label %sw.bb.4
    i32 13, label %sw.bb.5
    i32 15, label %sw.bb.6
    i32 14, label %sw.bb.7
    i32 7, label %sw.bb.8
    i32 8, label %sw.bb.9
    i32 23, label %sw.bb.10
    i32 16, label %sw.bb.11
    i32 20, label %sw.bb.12
    i32 21, label %sw.bb.13
    i32 22, label %sw.bb.13
    i32 18, label %sw.bb.14
    i32 19, label %sw.bb.18
    i32 17, label %sw.bb.19
    i32 24, label %sw.bb.20
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

sw.bb.4:                                          ; preds = %entry
  store i32 4, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  store i32 5, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  store i32 6, i32* %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  store i32 7, i32* %retval
  br label %return

sw.bb.8:                                          ; preds = %entry
  store i32 8, i32* %retval
  br label %return

sw.bb.9:                                          ; preds = %entry
  store i32 9, i32* %retval
  br label %return

sw.bb.10:                                         ; preds = %entry
  store i32 10, i32* %retval
  br label %return

sw.bb.11:                                         ; preds = %entry
  store i32 11, i32* %retval
  br label %return

sw.bb.12:                                         ; preds = %entry
  store i32 12, i32* %retval
  br label %return

sw.bb.13:                                         ; preds = %entry, %entry
  store i32 13, i32* %retval
  br label %return

sw.bb.14:                                         ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type15 = bitcast %union.tree_node* %1 to %struct.tree_type*
  %string_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type15, i32 0, i32 6
  %bf.load16 = load i32, i32* %string_flag, align 4
  %bf.lshr = lshr i32 %bf.load16, 16
  %bf.clear17 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear17, 0
  %cond = select i1 %tobool, i32 15, i32 14
  store i32 %cond, i32* %retval
  br label %return

sw.bb.18:                                         ; preds = %entry
  store i32 16, i32* %retval
  br label %return

sw.bb.19:                                         ; preds = %entry
  store i32 17, i32* %retval
  br label %return

sw.bb.20:                                         ; preds = %entry
  store i32 18, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.20, %sw.bb.19, %sw.bb.18, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %2 = load i32, i32* %retval
  ret i32 %2
}

declare %struct.rtx_def* @copy_to_mode_reg(i32, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal i32 @get_pointer_alignment(%union.tree_node* %exp, i32 %max_align) #0 {
entry:
  %retval = alloca i32, align 4
  %exp.addr = alloca %union.tree_node*, align 8
  %max_align.addr = alloca i32, align 4
  %align = alloca i32, align 4
  %inner = alloca i32, align 4
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  store i32 %max_align, i32* %max_align.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %1 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common1 = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp ne i32 %bf.clear, 13
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common2 = bitcast %union.tree_node* %2 to %struct.tree_common*
  %type3 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 1
  %3 = load %union.tree_node*, %union.tree_node** %type3, align 8
  %common4 = bitcast %union.tree_node* %3 to %struct.tree_common*
  %type5 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4, i32 0, i32 1
  %4 = load %union.tree_node*, %union.tree_node** %type5, align 8
  %type6 = bitcast %union.tree_node* %4 to %struct.tree_type*
  %align7 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type6, i32 0, i32 7
  %5 = load i32, i32* %align7, align 4
  store i32 %5, i32* %align, align 4
  %6 = load i32, i32* %align, align 4
  %7 = load i32, i32* %max_align.addr, align 4
  %cmp8 = icmp ult i32 %6, %7
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %8 = load i32, i32* %align, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %9 = load i32, i32* %max_align.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %9, %cond.false ]
  store i32 %cond, i32* %align, align 4
  br label %while.body

while.body:                                       ; preds = %cond.end, %sw.epilog
  %10 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common9 = bitcast %union.tree_node* %10 to %struct.tree_common*
  %code10 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common9, i32 0, i32 2
  %bf.load11 = load i32, i32* %code10, align 8
  %bf.clear12 = and i32 %bf.load11, 255
  switch i32 %bf.clear12, label %sw.default [
    i32 115, label %sw.bb
    i32 114, label %sw.bb
    i32 116, label %sw.bb
    i32 59, label %sw.bb.34
    i32 121, label %sw.bb.51
  ]

sw.bb:                                            ; preds = %while.body, %while.body, %while.body
  %11 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp13 = bitcast %union.tree_node* %11 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp13, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %12 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %12, %union.tree_node** %exp.addr, align 8
  %13 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common14 = bitcast %union.tree_node* %13 to %struct.tree_common*
  %type15 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common14, i32 0, i32 1
  %14 = load %union.tree_node*, %union.tree_node** %type15, align 8
  %common16 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %code17 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common16, i32 0, i32 2
  %bf.load18 = load i32, i32* %code17, align 8
  %bf.clear19 = and i32 %bf.load18, 255
  %cmp20 = icmp ne i32 %bf.clear19, 13
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %sw.bb
  %15 = load i32, i32* %align, align 4
  store i32 %15, i32* %retval
  br label %return

if.end.22:                                        ; preds = %sw.bb
  %16 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common23 = bitcast %union.tree_node* %16 to %struct.tree_common*
  %type24 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common23, i32 0, i32 1
  %17 = load %union.tree_node*, %union.tree_node** %type24, align 8
  %common25 = bitcast %union.tree_node* %17 to %struct.tree_common*
  %type26 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common25, i32 0, i32 1
  %18 = load %union.tree_node*, %union.tree_node** %type26, align 8
  %type27 = bitcast %union.tree_node* %18 to %struct.tree_type*
  %align28 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type27, i32 0, i32 7
  %19 = load i32, i32* %align28, align 4
  store i32 %19, i32* %inner, align 4
  %20 = load i32, i32* %inner, align 4
  %21 = load i32, i32* %max_align.addr, align 4
  %cmp29 = icmp ult i32 %20, %21
  br i1 %cmp29, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %if.end.22
  %22 = load i32, i32* %inner, align 4
  br label %cond.end.32

cond.false.31:                                    ; preds = %if.end.22
  %23 = load i32, i32* %max_align.addr, align 4
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.31, %cond.true.30
  %cond33 = phi i32 [ %22, %cond.true.30 ], [ %23, %cond.false.31 ]
  store i32 %cond33, i32* %align, align 4
  br label %sw.epilog

sw.bb.34:                                         ; preds = %while.body
  %24 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp35 = bitcast %union.tree_node* %24 to %struct.tree_exp*
  %operands36 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp35, i32 0, i32 2
  %arrayidx37 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands36, i32 0, i64 1
  %25 = load %union.tree_node*, %union.tree_node** %arrayidx37, align 8
  %call = call i32 @host_integerp(%union.tree_node* %25, i32 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.39, label %if.then.38

if.then.38:                                       ; preds = %sw.bb.34
  %26 = load i32, i32* %align, align 4
  store i32 %26, i32* %retval
  br label %return

if.end.39:                                        ; preds = %sw.bb.34
  br label %while.cond.40

while.cond.40:                                    ; preds = %while.body.47, %if.end.39
  %27 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp41 = bitcast %union.tree_node* %27 to %struct.tree_exp*
  %operands42 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp41, i32 0, i32 2
  %arrayidx43 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands42, i32 0, i64 1
  %28 = load %union.tree_node*, %union.tree_node** %arrayidx43, align 8
  %call44 = call i64 @tree_low_cst(%union.tree_node* %28, i32 1)
  %29 = load i32, i32* %max_align.addr, align 4
  %div = udiv i32 %29, 8
  %sub = sub i32 %div, 1
  %conv = zext i32 %sub to i64
  %and = and i64 %call44, %conv
  %cmp45 = icmp ne i64 %and, 0
  br i1 %cmp45, label %while.body.47, label %while.end

while.body.47:                                    ; preds = %while.cond.40
  %30 = load i32, i32* %max_align.addr, align 4
  %shr = lshr i32 %30, 1
  store i32 %shr, i32* %max_align.addr, align 4
  br label %while.cond.40

while.end:                                        ; preds = %while.cond.40
  %31 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp48 = bitcast %union.tree_node* %31 to %struct.tree_exp*
  %operands49 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp48, i32 0, i32 2
  %arrayidx50 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands49, i32 0, i64 0
  %32 = load %union.tree_node*, %union.tree_node** %arrayidx50, align 8
  store %union.tree_node* %32, %union.tree_node** %exp.addr, align 8
  br label %sw.epilog

sw.bb.51:                                         ; preds = %while.body
  %33 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp52 = bitcast %union.tree_node* %33 to %struct.tree_exp*
  %operands53 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp52, i32 0, i32 2
  %arrayidx54 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands53, i32 0, i64 0
  %34 = load %union.tree_node*, %union.tree_node** %arrayidx54, align 8
  store %union.tree_node* %34, %union.tree_node** %exp.addr, align 8
  %35 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common55 = bitcast %union.tree_node* %35 to %struct.tree_common*
  %code56 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common55, i32 0, i32 2
  %bf.load57 = load i32, i32* %code56, align 8
  %bf.clear58 = and i32 %bf.load57, 255
  %cmp59 = icmp eq i32 %bf.clear58, 30
  br i1 %cmp59, label %if.then.61, label %if.else

if.then.61:                                       ; preds = %sw.bb.51
  store i32 16, i32* %align, align 4
  br label %if.end.87

if.else:                                          ; preds = %sw.bb.51
  %36 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common62 = bitcast %union.tree_node* %36 to %struct.tree_common*
  %code63 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common62, i32 0, i32 2
  %bf.load64 = load i32, i32* %code63, align 8
  %bf.clear65 = and i32 %bf.load64, 255
  %idxprom = sext i32 %bf.clear65 to i64
  %arrayidx66 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %37 = load i8, i8* %arrayidx66, align 1
  %conv67 = sext i8 %37 to i32
  %cmp68 = icmp eq i32 %conv67, 100
  br i1 %cmp68, label %if.then.70, label %if.else.73

if.then.70:                                       ; preds = %if.else
  %38 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %decl = bitcast %union.tree_node* %38 to %struct.tree_decl*
  %u1 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 6
  %a = bitcast %union.anon* %u1 to %struct.anon.0*
  %39 = bitcast %struct.anon.0* %a to i32*
  %bf.load71 = load i32, i32* %39, align 4
  %bf.clear72 = and i32 %bf.load71, 16777215
  store i32 %bf.clear72, i32* %align, align 4
  br label %if.end.86

if.else.73:                                       ; preds = %if.else
  %40 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common74 = bitcast %union.tree_node* %40 to %struct.tree_common*
  %code75 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common74, i32 0, i32 2
  %bf.load76 = load i32, i32* %code75, align 8
  %bf.clear77 = and i32 %bf.load76, 255
  %idxprom78 = sext i32 %bf.clear77 to i64
  %arrayidx79 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom78
  %41 = load i8, i8* %arrayidx79, align 1
  %conv80 = sext i8 %41 to i32
  %cmp81 = icmp eq i32 %conv80, 99
  br i1 %cmp81, label %if.then.83, label %if.end.85

if.then.83:                                       ; preds = %if.else.73
  %42 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %43 = load i32, i32* %align, align 4
  %call84 = call i32 @ix86_constant_alignment(%union.tree_node* %42, i32 %43)
  store i32 %call84, i32* %align, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.83, %if.else.73
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.70
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.then.61
  %44 = load i32, i32* %align, align 4
  %45 = load i32, i32* %max_align.addr, align 4
  %cmp88 = icmp ult i32 %44, %45
  br i1 %cmp88, label %cond.true.90, label %cond.false.91

cond.true.90:                                     ; preds = %if.end.87
  %46 = load i32, i32* %align, align 4
  br label %cond.end.92

cond.false.91:                                    ; preds = %if.end.87
  %47 = load i32, i32* %max_align.addr, align 4
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.false.91, %cond.true.90
  %cond93 = phi i32 [ %46, %cond.true.90 ], [ %47, %cond.false.91 ]
  store i32 %cond93, i32* %retval
  br label %return

sw.default:                                       ; preds = %while.body
  %48 = load i32, i32* %align, align 4
  store i32 %48, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %while.end, %cond.end.32
  br label %while.body

return:                                           ; preds = %sw.default, %cond.end.92, %if.then.38, %if.then.21, %if.then
  %49 = load i32, i32* %retval
  ret i32 %49
}

declare %struct.rtx_def* @emit_insn_after(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @emit_insn_before(%struct.rtx_def*, %struct.rtx_def*) #1

declare void @convert_move(%struct.rtx_def*, %struct.rtx_def*, i32) #1

declare %struct.rtx_def* @convert_to_mode(i32, %struct.rtx_def*, i32) #1

declare i32 @ix86_constant_alignment(%union.tree_node*, i32) #1

declare %union.tree_node* @size_binop(i32, %union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @chainon(%union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @build_tree_list(%union.tree_node*, %union.tree_node*) #1

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @build_function_call_expr(%union.tree_node* %fn, %union.tree_node* %arglist) #0 {
entry:
  %fn.addr = alloca %union.tree_node*, align 8
  %arglist.addr = alloca %union.tree_node*, align 8
  %call_expr = alloca %union.tree_node*, align 8
  store %union.tree_node* %fn, %union.tree_node** %fn.addr, align 8
  store %union.tree_node* %arglist, %union.tree_node** %arglist.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %fn.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %1 = load %union.tree_node*, %union.tree_node** %type, align 8
  %call = call %union.tree_node* @build_pointer_type(%union.tree_node* %1)
  %2 = load %union.tree_node*, %union.tree_node** %fn.addr, align 8
  %call1 = call %union.tree_node* @build1(i32 121, %union.tree_node* %call, %union.tree_node* %2)
  store %union.tree_node* %call1, %union.tree_node** %call_expr, align 8
  %3 = load %union.tree_node*, %union.tree_node** %fn.addr, align 8
  %common2 = bitcast %union.tree_node* %3 to %struct.tree_common*
  %type3 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 1
  %4 = load %union.tree_node*, %union.tree_node** %type3, align 8
  %common4 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %type5 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4, i32 0, i32 1
  %5 = load %union.tree_node*, %union.tree_node** %type5, align 8
  %6 = load %union.tree_node*, %union.tree_node** %call_expr, align 8
  %7 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %call6 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 53, %union.tree_node* %5, %union.tree_node* %6, %union.tree_node* %7)
  store %union.tree_node* %call6, %union.tree_node** %call_expr, align 8
  %8 = load %union.tree_node*, %union.tree_node** %call_expr, align 8
  %common7 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %side_effects_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common7, i32 0, i32 2
  %bf.load = load i32, i32* %side_effects_flag, align 8
  %bf.clear = and i32 %bf.load, -257
  %bf.set = or i32 %bf.clear, 256
  store i32 %bf.set, i32* %side_effects_flag, align 8
  %9 = load %union.tree_node*, %union.tree_node** %call_expr, align 8
  %call8 = call %union.tree_node* @fold(%union.tree_node* %9)
  ret %union.tree_node* %call8
}

declare i32 @tree_int_cst_lt(%union.tree_node*, %union.tree_node*) #1

; Function Attrs: nounwind uwtable
define internal i8* @c_getstr(%union.tree_node* %src) #0 {
entry:
  %retval = alloca i8*, align 8
  %src.addr = alloca %union.tree_node*, align 8
  %offset_node = alloca %union.tree_node*, align 8
  store %union.tree_node* %src, %union.tree_node** %src.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %src.addr, align 8
  %call = call %union.tree_node* @string_constant(%union.tree_node* %0, %union.tree_node** %offset_node)
  store %union.tree_node* %call, %union.tree_node** %src.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %src.addr, align 8
  %cmp = icmp eq %union.tree_node* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %offset_node, align 8
  %cmp1 = icmp eq %union.tree_node* %2, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %3 = load %union.tree_node*, %union.tree_node** %src.addr, align 8
  %string = bitcast %union.tree_node* %3 to %struct.tree_string*
  %pointer = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string, i32 0, i32 3
  %4 = load i8*, i8** %pointer, align 8
  store i8* %4, i8** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %5 = load %union.tree_node*, %union.tree_node** %offset_node, align 8
  %call3 = call i32 @host_integerp(%union.tree_node* %5, i32 1)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.8

lor.lhs.false:                                    ; preds = %if.else
  %6 = load %union.tree_node*, %union.tree_node** %offset_node, align 8
  %7 = load %union.tree_node*, %union.tree_node** %src.addr, align 8
  %string4 = bitcast %union.tree_node* %7 to %struct.tree_string*
  %length = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string4, i32 0, i32 2
  %8 = load i32, i32* %length, align 4
  %sub = sub nsw i32 %8, 1
  %conv = sext i32 %sub to i64
  %call5 = call i32 @compare_tree_int(%union.tree_node* %6, i64 %conv)
  %cmp6 = icmp sgt i32 %call5, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false, %if.else
  store i8* null, i8** %retval
  br label %return

if.end.9:                                         ; preds = %lor.lhs.false
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9
  %9 = load %union.tree_node*, %union.tree_node** %src.addr, align 8
  %string11 = bitcast %union.tree_node* %9 to %struct.tree_string*
  %pointer12 = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string11, i32 0, i32 3
  %10 = load i8*, i8** %pointer12, align 8
  %11 = load %union.tree_node*, %union.tree_node** %offset_node, align 8
  %call13 = call i64 @tree_low_cst(%union.tree_node* %11, i32 1)
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %call13
  store i8* %add.ptr, i8** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.8, %if.then.2, %if.then
  %12 = load i8*, i8** %retval
  ret i8* %12
}

declare i32 @can_store_by_pieces(i64, %struct.rtx_def* (i8*, i64, i32)*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @builtin_strncpy_read_str(i8* %data, i64 %offset, i32 %mode) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %data.addr = alloca i8*, align 8
  %offset.addr = alloca i64, align 8
  %mode.addr = alloca i32, align 4
  %str = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i8*, i8** %data.addr, align 8
  store i8* %0, i8** %str, align 8
  %1 = load i64, i64* %offset.addr, align 8
  %2 = load i8*, i8** %str, align 8
  %call = call i64 @strlen(i8* %2) #6
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %str, align 8
  %5 = load i64, i64* %offset.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5
  %6 = load i32, i32* %mode.addr, align 4
  %call1 = call %struct.rtx_def* @c_readstr(i8* %add.ptr, i32 %6)
  store %struct.rtx_def* %call1, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %7
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @get_memory_rtx(%union.tree_node* %exp) #0 {
entry:
  %exp.addr = alloca %union.tree_node*, align 8
  %addr = alloca %struct.rtx_def*, align 8
  %mem = alloca %struct.rtx_def*, align 8
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %1 = load i32, i32* @ptr_mode, align 4
  %call = call %struct.rtx_def* @expand_expr(%union.tree_node* %0, %struct.rtx_def* null, i32 %1, i32 1)
  store %struct.rtx_def* %call, %struct.rtx_def** %addr, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %call1 = call %struct.rtx_def* @memory_address(i32 51, %struct.rtx_def* %2)
  %call2 = call %struct.rtx_def* @gen_rtx_MEM(i32 51, %struct.rtx_def* %call1)
  store %struct.rtx_def* %call2, %struct.rtx_def** %mem, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common = bitcast %union.tree_node* %3 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 115
  br i1 %cmp, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %4 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common3 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %code4 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3, i32 0, i32 2
  %bf.load5 = load i32, i32* %code4, align 8
  %bf.clear6 = and i32 %bf.load5, 255
  %cmp7 = icmp eq i32 %bf.clear6, 114
  br i1 %cmp7, label %land.rhs, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %5 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common9 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %code10 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common9, i32 0, i32 2
  %bf.load11 = load i32, i32* %code10, align 8
  %bf.clear12 = and i32 %bf.load11, 255
  %cmp13 = icmp eq i32 %bf.clear12, 116
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false.8, %lor.lhs.false, %while.cond
  %6 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp14 = bitcast %union.tree_node* %6 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp14, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %7 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %common15 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common15, i32 0, i32 1
  %8 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common16 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %code17 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common16, i32 0, i32 2
  %bf.load18 = load i32, i32* %code17, align 8
  %bf.clear19 = and i32 %bf.load18, 255
  %cmp20 = icmp eq i32 %bf.clear19, 13
  br i1 %cmp20, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %9 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp21 = bitcast %union.tree_node* %9 to %struct.tree_exp*
  %operands22 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp21, i32 0, i32 2
  %arrayidx23 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands22, i32 0, i64 0
  %10 = load %union.tree_node*, %union.tree_node** %arrayidx23, align 8
  %common24 = bitcast %union.tree_node* %10 to %struct.tree_common*
  %type25 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common24, i32 0, i32 1
  %11 = load %union.tree_node*, %union.tree_node** %type25, align 8
  %common26 = bitcast %union.tree_node* %11 to %struct.tree_common*
  %code27 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common26, i32 0, i32 2
  %bf.load28 = load i32, i32* %code27, align 8
  %bf.clear29 = and i32 %bf.load28, 255
  %cmp30 = icmp eq i32 %bf.clear29, 15
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %12 = phi i1 [ true, %land.rhs ], [ %cmp30, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %lor.lhs.false.8
  %13 = phi i1 [ false, %lor.lhs.false.8 ], [ %12, %lor.end ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %14 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp31 = bitcast %union.tree_node* %14 to %struct.tree_exp*
  %operands32 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp31, i32 0, i32 2
  %arrayidx33 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands32, i32 0, i64 0
  %15 = load %union.tree_node*, %union.tree_node** %arrayidx33, align 8
  store %union.tree_node* %15, %union.tree_node** %exp.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %16 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common34 = bitcast %union.tree_node* %16 to %struct.tree_common*
  %code35 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common34, i32 0, i32 2
  %bf.load36 = load i32, i32* %code35, align 8
  %bf.clear37 = and i32 %bf.load36, 255
  %cmp38 = icmp eq i32 %bf.clear37, 121
  br i1 %cmp38, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %17 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp39 = bitcast %union.tree_node* %17 to %struct.tree_exp*
  %operands40 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp39, i32 0, i32 2
  %arrayidx41 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands40, i32 0, i64 0
  %18 = load %union.tree_node*, %union.tree_node** %arrayidx41, align 8
  store %union.tree_node* %18, %union.tree_node** %exp.addr, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %mem, align 8
  %20 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  call void @set_mem_attributes(%struct.rtx_def* %19, %union.tree_node* %20, i32 0)
  br label %if.end.63

if.else:                                          ; preds = %while.end
  %21 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common42 = bitcast %union.tree_node* %21 to %struct.tree_common*
  %type43 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common42, i32 0, i32 1
  %22 = load %union.tree_node*, %union.tree_node** %type43, align 8
  %common44 = bitcast %union.tree_node* %22 to %struct.tree_common*
  %code45 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common44, i32 0, i32 2
  %bf.load46 = load i32, i32* %code45, align 8
  %bf.clear47 = and i32 %bf.load46, 255
  %cmp48 = icmp eq i32 %bf.clear47, 13
  br i1 %cmp48, label %if.then.57, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %if.else
  %23 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common50 = bitcast %union.tree_node* %23 to %struct.tree_common*
  %type51 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common50, i32 0, i32 1
  %24 = load %union.tree_node*, %union.tree_node** %type51, align 8
  %common52 = bitcast %union.tree_node* %24 to %struct.tree_common*
  %code53 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common52, i32 0, i32 2
  %bf.load54 = load i32, i32* %code53, align 8
  %bf.clear55 = and i32 %bf.load54, 255
  %cmp56 = icmp eq i32 %bf.clear55, 15
  br i1 %cmp56, label %if.then.57, label %if.end

if.then.57:                                       ; preds = %lor.lhs.false.49, %if.else
  %25 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common58 = bitcast %union.tree_node* %25 to %struct.tree_common*
  %type59 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common58, i32 0, i32 1
  %26 = load %union.tree_node*, %union.tree_node** %type59, align 8
  %common60 = bitcast %union.tree_node* %26 to %struct.tree_common*
  %type61 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common60, i32 0, i32 1
  %27 = load %union.tree_node*, %union.tree_node** %type61, align 8
  %28 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %call62 = call %union.tree_node* @build1(i32 41, %union.tree_node* %27, %union.tree_node* %28)
  store %union.tree_node* %call62, %union.tree_node** %exp.addr, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %mem, align 8
  call void @set_mem_alias_set(%struct.rtx_def* %29, i64 0)
  br label %if.end

if.end:                                           ; preds = %if.then.57, %lor.lhs.false.49
  br label %if.end.63

if.end.63:                                        ; preds = %if.end, %if.then
  %30 = load %struct.rtx_def*, %struct.rtx_def** %mem, align 8
  ret %struct.rtx_def* %30
}

declare void @store_by_pieces(%struct.rtx_def*, i64, %struct.rtx_def* (i8*, i64, i32)*, i8*, i32) #1

declare %union.tree_node* @string_constant(%union.tree_node*, %union.tree_node**) #1

declare i32 @compare_tree_int(%union.tree_node*, i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @c_readstr(i8* %str, i32 %mode) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %mode.addr = alloca i32, align 4
  %c = alloca [2 x i64], align 16
  %ch = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.100, i32 0, i32 0), i32 330, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.c_readstr, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %entry
  %arrayidx1 = getelementptr inbounds [2 x i64], [2 x i64]* %c, i32 0, i64 0
  store i64 0, i64* %arrayidx1, align 8
  %arrayidx2 = getelementptr inbounds [2 x i64], [2 x i64]* %c, i32 0, i64 1
  store i64 0, i64* %arrayidx2, align 8
  store i64 1, i64* %ch, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %mode.addr, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom3
  %4 = load i8, i8* %arrayidx4, align 1
  %conv = zext i8 %4 to i32
  %cmp5 = icmp ult i32 %2, %conv
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  store i32 %5, i32* %j, align 4
  %6 = load i32, i32* %j, align 4
  %mul = mul i32 %6, 8
  store i32 %mul, i32* %j, align 4
  %7 = load i32, i32* %j, align 4
  %cmp7 = icmp ugt i32 %7, 128
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.body
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.100, i32 0, i32 0), i32 344, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.c_readstr, i32 0, i32 0)) #5
  unreachable

if.end.10:                                        ; preds = %for.body
  %8 = load i64, i64* %ch, align 8
  %tobool = icmp ne i64 %8, 0
  br i1 %tobool, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %if.end.10
  %9 = load i32, i32* %i, align 4
  %idxprom12 = zext i32 %9 to i64
  %10 = load i8*, i8** %str.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %10, i64 %idxprom12
  %11 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %11 to i64
  store i64 %conv14, i64* %ch, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.11, %if.end.10
  %12 = load i64, i64* %ch, align 8
  %13 = load i32, i32* %j, align 4
  %rem = urem i32 %13, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 %12, %sh_prom
  %14 = load i32, i32* %j, align 4
  %div = udiv i32 %14, 64
  %idxprom16 = zext i32 %div to i64
  %arrayidx17 = getelementptr inbounds [2 x i64], [2 x i64]* %c, i32 0, i64 %idxprom16
  %15 = load i64, i64* %arrayidx17, align 8
  %or = or i64 %15, %shl
  store i64 %or, i64* %arrayidx17, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %16 = load i32, i32* %i, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arrayidx18 = getelementptr inbounds [2 x i64], [2 x i64]* %c, i32 0, i64 0
  %17 = load i64, i64* %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds [2 x i64], [2 x i64]* %c, i32 0, i64 1
  %18 = load i64, i64* %arrayidx19, align 8
  %19 = load i32, i32* %mode.addr, align 4
  %call = call %struct.rtx_def* @immed_double_const(i64 %17, i64 %18, i32 %19)
  ret %struct.rtx_def* %call
}

declare %struct.rtx_def* @immed_double_const(i64, i64, i32) #1

declare void @set_mem_attributes(%struct.rtx_def*, %union.tree_node*, i32) #1

declare %union.tree_node* @tree_cons(%union.tree_node*, %union.tree_node*, %union.tree_node*) #1

; Function Attrs: nounwind readonly
declare i64 @strspn(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strcspn(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #3

declare %union.tree_node* @build_int_2_wide(i64, i64) #1

; Function Attrs: nounwind readonly
declare i8* @strpbrk(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @target_char_cast(%union.tree_node* %cst, i8* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %cst.addr = alloca %union.tree_node*, align 8
  %p.addr = alloca i8*, align 8
  %val = alloca i64, align 8
  %hostval = alloca i64, align 8
  store %union.tree_node* %cst, %union.tree_node** %cst.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %cst.addr, align 8
  %call = call i32 @host_integerp(%union.tree_node* %0, i32 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %cst.addr, align 8
  %call1 = call i64 @tree_low_cst(%union.tree_node* %1, i32 1)
  store i64 %call1, i64* %val, align 8
  %2 = load i64, i64* %val, align 8
  %and = and i64 %2, 255
  store i64 %and, i64* %val, align 8
  %3 = load i64, i64* %val, align 8
  store i64 %3, i64* %hostval, align 8
  %4 = load i64, i64* %hostval, align 8
  %and2 = and i64 %4, 255
  store i64 %and2, i64* %hostval, align 8
  %5 = load i64, i64* %val, align 8
  %6 = load i64, i64* %hostval, align 8
  %cmp = icmp ne i64 %5, %6
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %7 = load i64, i64* %hostval, align 8
  %conv = trunc i64 %7 to i8
  %8 = load i8*, i8** %p.addr, align 8
  store i8 %conv, i8* %8, align 1
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @builtin_memcpy_read_str(i8* %data, i64 %offset, i32 %mode) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %offset.addr = alloca i64, align 8
  %mode.addr = alloca i32, align 4
  %str = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i8*, i8** %data.addr, align 8
  store i8* %0, i8** %str, align 8
  %1 = load i64, i64* %offset.addr, align 8
  %cmp = icmp slt i64 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64, i64* %offset.addr, align 8
  %3 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i64
  %add = add i64 %2, %conv
  %5 = load i8*, i8** %str, align 8
  %call = call i64 @strlen(i8* %5) #6
  %add1 = add i64 %call, 1
  %cmp2 = icmp ugt i64 %add, %add1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.100, i32 0, i32 0), i32 1912, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.builtin_memcpy_read_str, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i8*, i8** %str, align 8
  %7 = load i64, i64* %offset.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %7
  %8 = load i32, i32* %mode.addr, align 4
  %call4 = call %struct.rtx_def* @c_readstr(i8* %add.ptr, i32 %8)
  ret %struct.rtx_def* %call4
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @builtin_memset_read_str(i8* %data, i64 %offset, i32 %mode) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %offset.addr = alloca i64, align 8
  %mode.addr = alloca i32, align 4
  %c = alloca i8*, align 8
  %p = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i8*, i8** %data.addr, align 8
  store i8* %0, i8** %c, align 8
  %1 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i64
  %3 = alloca i8, i64 %conv
  store i8* %3, i8** %p, align 8
  %4 = load i8*, i8** %p, align 8
  %5 = load i8*, i8** %c, align 8
  %6 = load i8, i8* %5, align 1
  %conv1 = sext i8 %6 to i32
  %7 = trunc i32 %conv1 to i8
  %8 = load i32, i32* %mode.addr, align 4
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom2
  %9 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %9 to i64
  call void @llvm.memset.p0i8.i64(i8* %4, i8 %7, i64 %conv4, i32 1, i1 false)
  %10 = load i8*, i8** %p, align 8
  %11 = load i32, i32* %mode.addr, align 4
  %call = call %struct.rtx_def* @c_readstr(i8* %10, i32 %11)
  ret %struct.rtx_def* %call
}

declare %struct.rtx_def* @clear_storage(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare %union.tree_node* @convert(%union.tree_node*, %union.tree_node*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare %union.tree_node* @build_qualified_type(%union.tree_node*, i32) #1

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

declare %struct.rtx_def* @gen_cmpstrsi(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @emit_library_call_value(%struct.rtx_def*, %struct.rtx_def*, i32, i32, i32, ...) #1

declare %struct.rtx_def* @emit_jump_insn(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_jump(%struct.rtx_def*) #1

declare void @ix86_va_start(i32, %union.tree_node*, %struct.rtx_def*) #1

declare i64 @get_alias_set(%union.tree_node*) #1

declare %struct.rtx_def* @emit_note(i8*, i32) #1

declare %struct.rtx_def* @gen_prefetch(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @protect_from_queue(%struct.rtx_def*, i32) #1

declare i32 @side_effects_p(%struct.rtx_def*) #1

declare %union.tree_node* @size_diffop(%union.tree_node*, %union.tree_node*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
