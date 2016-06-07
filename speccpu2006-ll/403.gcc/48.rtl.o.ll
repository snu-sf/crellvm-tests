; ModuleID = 'rtl.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }

@rtx_length = constant [153 x i8] c"\01\01\01\02\02\03\02\01\03\03\02\02\02\05\04\04\08\04\03\04\02\07\01\03\01\01\03\01\02\02\02\01\07\08\08\03\08\06\02\01\01\07\02\02\01\05\03\02\01\01\02\00\02\01\01\04\01\01\01\00\01\02\01\02\01\02\02\03\01\00\03\05\03\02\02\02\02\01\02\02\02\02\02\02\02\02\01\02\02\02\02\02\02\02\02\02\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01\03\03\01\02\0D\0A\03\02\01\04\03\02\02\01\02\02\02\02\01\01\01", align 16
@.str = private unnamed_addr constant [8 x i8] c"UnKnown\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"expr_list\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"insn_list\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"match_operand\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"match_scratch\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"match_dup\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"match_operator\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"match_parallel\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"match_op_dup\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"match_par_dup\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"match_insn\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"define_insn\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"define_peephole\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"define_split\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"define_insn_and_split\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"define_peephole2\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"define_combine\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"define_expand\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"define_delay\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"define_function_unit\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"define_asm_attributes\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"define_cond_exec\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"sequence\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"address\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"define_attr\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"attr\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"set_attr\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"set_attr_alternative\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"eq_attr\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"attr_flag\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"insn\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"jump_insn\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"call_insn\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"barrier\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"code_label\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"note\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"cond_exec\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"parallel\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"asm_input\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"asm_operands\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"unspec\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"unspec_volatile\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"addr_vec\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"addr_diff_vec\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"prefetch\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"use\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"clobber\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"trap_if\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"resx\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"const_int\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"const_double\00", align 1
@.str.56 = private unnamed_addr constant [13 x i8] c"const_vector\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"const_string\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"scratch\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"subreg\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"strict_low_part\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"concat\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"label_ref\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"symbol_ref\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"cc0\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"addressof\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"queued\00", align 1
@.str.72 = private unnamed_addr constant [13 x i8] c"if_then_else\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"cond\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"compare\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"plus\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"minus\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"neg\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"mult\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"div\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"udiv\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"umod\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"ior\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.87 = private unnamed_addr constant [7 x i8] c"ashift\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"rotate\00", align 1
@.str.89 = private unnamed_addr constant [9 x i8] c"ashiftrt\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"lshiftrt\00", align 1
@.str.91 = private unnamed_addr constant [9 x i8] c"rotatert\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"smin\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"smax\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"umin\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"umax\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"pre_dec\00", align 1
@.str.97 = private unnamed_addr constant [8 x i8] c"pre_inc\00", align 1
@.str.98 = private unnamed_addr constant [9 x i8] c"post_dec\00", align 1
@.str.99 = private unnamed_addr constant [9 x i8] c"post_inc\00", align 1
@.str.100 = private unnamed_addr constant [11 x i8] c"pre_modify\00", align 1
@.str.101 = private unnamed_addr constant [12 x i8] c"post_modify\00", align 1
@.str.102 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@.str.103 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"ge\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"gt\00", align 1
@.str.106 = private unnamed_addr constant [3 x i8] c"le\00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c"lt\00", align 1
@.str.108 = private unnamed_addr constant [4 x i8] c"geu\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"gtu\00", align 1
@.str.110 = private unnamed_addr constant [4 x i8] c"leu\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"ltu\00", align 1
@.str.112 = private unnamed_addr constant [10 x i8] c"unordered\00", align 1
@.str.113 = private unnamed_addr constant [8 x i8] c"ordered\00", align 1
@.str.114 = private unnamed_addr constant [5 x i8] c"uneq\00", align 1
@.str.115 = private unnamed_addr constant [5 x i8] c"unge\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c"ungt\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c"unle\00", align 1
@.str.118 = private unnamed_addr constant [5 x i8] c"unlt\00", align 1
@.str.119 = private unnamed_addr constant [5 x i8] c"ltgt\00", align 1
@.str.120 = private unnamed_addr constant [12 x i8] c"sign_extend\00", align 1
@.str.121 = private unnamed_addr constant [12 x i8] c"zero_extend\00", align 1
@.str.122 = private unnamed_addr constant [9 x i8] c"truncate\00", align 1
@.str.123 = private unnamed_addr constant [13 x i8] c"float_extend\00", align 1
@.str.124 = private unnamed_addr constant [15 x i8] c"float_truncate\00", align 1
@.str.125 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.126 = private unnamed_addr constant [4 x i8] c"fix\00", align 1
@.str.127 = private unnamed_addr constant [15 x i8] c"unsigned_float\00", align 1
@.str.128 = private unnamed_addr constant [13 x i8] c"unsigned_fix\00", align 1
@.str.129 = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@.str.130 = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@.str.131 = private unnamed_addr constant [4 x i8] c"ffs\00", align 1
@.str.132 = private unnamed_addr constant [13 x i8] c"sign_extract\00", align 1
@.str.133 = private unnamed_addr constant [13 x i8] c"zero_extract\00", align 1
@.str.134 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.135 = private unnamed_addr constant [7 x i8] c"lo_sum\00", align 1
@.str.136 = private unnamed_addr constant [11 x i8] c"range_info\00", align 1
@.str.137 = private unnamed_addr constant [10 x i8] c"range_reg\00", align 1
@.str.138 = private unnamed_addr constant [10 x i8] c"range_var\00", align 1
@.str.139 = private unnamed_addr constant [11 x i8] c"range_live\00", align 1
@.str.140 = private unnamed_addr constant [15 x i8] c"constant_p_rtx\00", align 1
@.str.141 = private unnamed_addr constant [17 x i8] c"call_placeholder\00", align 1
@.str.142 = private unnamed_addr constant [10 x i8] c"vec_merge\00", align 1
@.str.143 = private unnamed_addr constant [11 x i8] c"vec_select\00", align 1
@.str.144 = private unnamed_addr constant [11 x i8] c"vec_concat\00", align 1
@.str.145 = private unnamed_addr constant [14 x i8] c"vec_duplicate\00", align 1
@.str.146 = private unnamed_addr constant [8 x i8] c"ss_plus\00", align 1
@.str.147 = private unnamed_addr constant [8 x i8] c"us_plus\00", align 1
@.str.148 = private unnamed_addr constant [9 x i8] c"ss_minus\00", align 1
@.str.149 = private unnamed_addr constant [9 x i8] c"us_minus\00", align 1
@.str.150 = private unnamed_addr constant [12 x i8] c"ss_truncate\00", align 1
@.str.151 = private unnamed_addr constant [12 x i8] c"us_truncate\00", align 1
@.str.152 = private unnamed_addr constant [4 x i8] c"phi\00", align 1
@rtx_name = constant [153 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.152, i32 0, i32 0)], align 16
@.str.153 = private unnamed_addr constant [5 x i8] c"VOID\00", align 1
@.str.154 = private unnamed_addr constant [3 x i8] c"BI\00", align 1
@.str.155 = private unnamed_addr constant [3 x i8] c"QI\00", align 1
@.str.156 = private unnamed_addr constant [3 x i8] c"HI\00", align 1
@.str.157 = private unnamed_addr constant [3 x i8] c"SI\00", align 1
@.str.158 = private unnamed_addr constant [3 x i8] c"DI\00", align 1
@.str.159 = private unnamed_addr constant [3 x i8] c"TI\00", align 1
@.str.160 = private unnamed_addr constant [3 x i8] c"OI\00", align 1
@.str.161 = private unnamed_addr constant [4 x i8] c"PQI\00", align 1
@.str.162 = private unnamed_addr constant [4 x i8] c"PHI\00", align 1
@.str.163 = private unnamed_addr constant [4 x i8] c"PSI\00", align 1
@.str.164 = private unnamed_addr constant [4 x i8] c"PDI\00", align 1
@.str.165 = private unnamed_addr constant [3 x i8] c"QF\00", align 1
@.str.166 = private unnamed_addr constant [3 x i8] c"HF\00", align 1
@.str.167 = private unnamed_addr constant [4 x i8] c"TQF\00", align 1
@.str.168 = private unnamed_addr constant [3 x i8] c"SF\00", align 1
@.str.169 = private unnamed_addr constant [3 x i8] c"DF\00", align 1
@.str.170 = private unnamed_addr constant [3 x i8] c"XF\00", align 1
@.str.171 = private unnamed_addr constant [3 x i8] c"TF\00", align 1
@.str.172 = private unnamed_addr constant [3 x i8] c"QC\00", align 1
@.str.173 = private unnamed_addr constant [3 x i8] c"HC\00", align 1
@.str.174 = private unnamed_addr constant [3 x i8] c"SC\00", align 1
@.str.175 = private unnamed_addr constant [3 x i8] c"DC\00", align 1
@.str.176 = private unnamed_addr constant [3 x i8] c"XC\00", align 1
@.str.177 = private unnamed_addr constant [3 x i8] c"TC\00", align 1
@.str.178 = private unnamed_addr constant [4 x i8] c"CQI\00", align 1
@.str.179 = private unnamed_addr constant [4 x i8] c"CHI\00", align 1
@.str.180 = private unnamed_addr constant [4 x i8] c"CSI\00", align 1
@.str.181 = private unnamed_addr constant [4 x i8] c"CDI\00", align 1
@.str.182 = private unnamed_addr constant [4 x i8] c"CTI\00", align 1
@.str.183 = private unnamed_addr constant [4 x i8] c"COI\00", align 1
@.str.184 = private unnamed_addr constant [5 x i8] c"V2QI\00", align 1
@.str.185 = private unnamed_addr constant [5 x i8] c"V2HI\00", align 1
@.str.186 = private unnamed_addr constant [5 x i8] c"V2SI\00", align 1
@.str.187 = private unnamed_addr constant [5 x i8] c"V2DI\00", align 1
@.str.188 = private unnamed_addr constant [5 x i8] c"V4QI\00", align 1
@.str.189 = private unnamed_addr constant [5 x i8] c"V4HI\00", align 1
@.str.190 = private unnamed_addr constant [5 x i8] c"V4SI\00", align 1
@.str.191 = private unnamed_addr constant [5 x i8] c"V4DI\00", align 1
@.str.192 = private unnamed_addr constant [5 x i8] c"V8QI\00", align 1
@.str.193 = private unnamed_addr constant [5 x i8] c"V8HI\00", align 1
@.str.194 = private unnamed_addr constant [5 x i8] c"V8SI\00", align 1
@.str.195 = private unnamed_addr constant [5 x i8] c"V8DI\00", align 1
@.str.196 = private unnamed_addr constant [6 x i8] c"V16QI\00", align 1
@.str.197 = private unnamed_addr constant [5 x i8] c"V2SF\00", align 1
@.str.198 = private unnamed_addr constant [5 x i8] c"V2DF\00", align 1
@.str.199 = private unnamed_addr constant [5 x i8] c"V4SF\00", align 1
@.str.200 = private unnamed_addr constant [5 x i8] c"V4DF\00", align 1
@.str.201 = private unnamed_addr constant [5 x i8] c"V8SF\00", align 1
@.str.202 = private unnamed_addr constant [5 x i8] c"V8DF\00", align 1
@.str.203 = private unnamed_addr constant [6 x i8] c"V16SF\00", align 1
@.str.204 = private unnamed_addr constant [4 x i8] c"BLK\00", align 1
@.str.205 = private unnamed_addr constant [3 x i8] c"CC\00", align 1
@.str.206 = private unnamed_addr constant [5 x i8] c"CCGC\00", align 1
@.str.207 = private unnamed_addr constant [6 x i8] c"CCGOC\00", align 1
@.str.208 = private unnamed_addr constant [5 x i8] c"CCNO\00", align 1
@.str.209 = private unnamed_addr constant [4 x i8] c"CCZ\00", align 1
@.str.210 = private unnamed_addr constant [5 x i8] c"CCFP\00", align 1
@.str.211 = private unnamed_addr constant [6 x i8] c"CCFPU\00", align 1
@mode_name = constant [59 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.169, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.174, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.175, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.177, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.178, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.181, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.182, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.183, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.184, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.185, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.187, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.188, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.195, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.196, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.197, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.199, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.201, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.203, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.204, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.205, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.206, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.207, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.208, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.209, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.211, i32 0, i32 0)], align 16
@mode_class = constant [59 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4], align 16
@mode_bitsize = constant [59 x i16] [i16 0, i16 1, i16 8, i16 16, i16 32, i16 64, i16 128, i16 256, i16 8, i16 16, i16 32, i16 64, i16 8, i16 16, i16 24, i16 32, i16 64, i16 96, i16 128, i16 16, i16 32, i16 64, i16 128, i16 192, i16 256, i16 16, i16 32, i16 64, i16 128, i16 256, i16 512, i16 16, i16 32, i16 64, i16 128, i16 32, i16 64, i16 128, i16 256, i16 64, i16 128, i16 256, i16 512, i16 128, i16 64, i16 128, i16 128, i16 256, i16 256, i16 512, i16 512, i16 0, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32], align 16
@mode_size = constant [59 x i8] c"\00\01\01\02\04\08\10 \01\02\04\08\01\02\03\04\08\0C\10\02\04\08\10\18 \02\04\08\10 @\02\04\08\10\04\08\10 \08\10 @\10\08\10\10  @@\00\04\04\04\04\04\04\04", align 16
@mode_unit_size = constant [59 x i8] c"\00\01\01\02\04\08\10 \01\02\04\08\01\02\03\04\08\0C\10\01\02\04\08\0C\10\01\02\04\08\10 \01\02\04\08\01\02\04\08\01\02\04\08\01\04\08\04\08\04\08\04\00\04\04\04\04\04\04\04", align 16
@mode_wider_mode = constant [59 x i8] c"\00\02\03\04\05\06\07\00\09\0A\0B\00\0D\0E\0F\10\11\12\00\14\15\16\17\18\00\1A\1B\1C\1D\1E\00#'+) !\22*$%&\00(.0-1/\00\00\00\00\00\00\00\00\00\00", align 16
@mode_mask_array = constant [59 x i64] [i64 0, i64 1, i64 255, i64 65535, i64 4294967295, i64 -1, i64 -1, i64 -1, i64 255, i64 65535, i64 4294967295, i64 -1, i64 255, i64 65535, i64 16777215, i64 4294967295, i64 -1, i64 -1, i64 -1, i64 65535, i64 4294967295, i64 -1, i64 -1, i64 -1, i64 -1, i64 65535, i64 4294967295, i64 -1, i64 -1, i64 -1, i64 -1, i64 65535, i64 4294967295, i64 -1, i64 -1, i64 4294967295, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 0, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295], align 16
@inner_mode_array = constant [59 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 12, i32 13, i32 15, i32 16, i32 17, i32 18, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 2, i32 3, i32 4, i32 5, i32 2, i32 3, i32 4, i32 5, i32 2, i32 3, i32 4, i32 5, i32 2, i32 15, i32 16, i32 15, i32 16, i32 15, i32 16, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@class_narrowest_mode = constant [9 x i32] [i32 0, i32 2, i32 12, i32 8, i32 52, i32 25, i32 19, i32 31, i32 44], align 16
@.str.212 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.213 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.214 = private unnamed_addr constant [3 x i8] c"ee\00", align 1
@.str.215 = private unnamed_addr constant [3 x i8] c"ue\00", align 1
@.str.216 = private unnamed_addr constant [4 x i8] c"iss\00", align 1
@.str.217 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.218 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.219 = private unnamed_addr constant [4 x i8] c"isE\00", align 1
@.str.220 = private unnamed_addr constant [3 x i8] c"iE\00", align 1
@.str.221 = private unnamed_addr constant [6 x i8] c"sEsTV\00", align 1
@.str.222 = private unnamed_addr constant [5 x i8] c"EsTV\00", align 1
@.str.223 = private unnamed_addr constant [5 x i8] c"EsES\00", align 1
@.str.224 = private unnamed_addr constant [9 x i8] c"sEsTsESV\00", align 1
@.str.225 = private unnamed_addr constant [4 x i8] c"Ess\00", align 1
@.str.226 = private unnamed_addr constant [5 x i8] c"sEss\00", align 1
@.str.227 = private unnamed_addr constant [3 x i8] c"eE\00", align 1
@.str.228 = private unnamed_addr constant [8 x i8] c"siieiiV\00", align 1
@.str.229 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.230 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.231 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.232 = private unnamed_addr constant [4 x i8] c"sse\00", align 1
@.str.233 = private unnamed_addr constant [3 x i8] c"ss\00", align 1
@.str.234 = private unnamed_addr constant [3 x i8] c"sE\00", align 1
@.str.235 = private unnamed_addr constant [8 x i8] c"iuueiee\00", align 1
@.str.236 = private unnamed_addr constant [9 x i8] c"iuueiee0\00", align 1
@.str.237 = private unnamed_addr constant [9 x i8] c"iuueieee\00", align 1
@.str.238 = private unnamed_addr constant [4 x i8] c"iuu\00", align 1
@.str.239 = private unnamed_addr constant [9 x i8] c"iuu00iss\00", align 1
@.str.240 = private unnamed_addr constant [7 x i8] c"iuu0ni\00", align 1
@.str.241 = private unnamed_addr constant [8 x i8] c"ssiEEsi\00", align 1
@.str.242 = private unnamed_addr constant [3 x i8] c"Ei\00", align 1
@.str.243 = private unnamed_addr constant [6 x i8] c"eEee0\00", align 1
@.str.244 = private unnamed_addr constant [4 x i8] c"eee\00", align 1
@.str.245 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.246 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.247 = private unnamed_addr constant [5 x i8] c"0www\00", align 1
@.str.248 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.249 = private unnamed_addr constant [3 x i8] c"i0\00", align 1
@.str.250 = private unnamed_addr constant [3 x i8] c"ei\00", align 1
@.str.251 = private unnamed_addr constant [3 x i8] c"e0\00", align 1
@.str.252 = private unnamed_addr constant [4 x i8] c"u00\00", align 1
@.str.253 = private unnamed_addr constant [4 x i8] c"eit\00", align 1
@.str.254 = private unnamed_addr constant [6 x i8] c"eeeee\00", align 1
@.str.255 = private unnamed_addr constant [3 x i8] c"Ee\00", align 1
@.str.256 = private unnamed_addr constant [14 x i8] c"uuEiiiiiibbii\00", align 1
@.str.257 = private unnamed_addr constant [11 x i8] c"iiiiiiiitt\00", align 1
@.str.258 = private unnamed_addr constant [4 x i8] c"eti\00", align 1
@.str.259 = private unnamed_addr constant [3 x i8] c"bi\00", align 1
@.str.260 = private unnamed_addr constant [5 x i8] c"uuuu\00", align 1
@rtx_format = constant [153 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.212, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.212, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.215, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.216, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.217, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.218, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.219, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.219, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.220, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.220, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.217, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.221, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.222, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.223, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.224, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.223, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.226, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.227, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.228, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.229, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.230, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.232, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.233, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.234, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.233, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.235, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.236, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.237, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.238, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.239, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.240, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.230, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.241, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.242, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.242, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.230, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.243, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.244, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.245, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.218, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.246, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.247, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.230, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.245, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.248, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.249, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.248, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.250, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.251, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.252, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.245, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.253, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.254, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.244, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.255, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.244, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.244, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.256, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.257, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.258, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.259, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.260, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.244, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.230, i32 0, i32 0)], align 16
@rtx_class = constant [153 x i8] c"xxxxxmmmmmmmmxxxxxxxxxxxxmxxxxxxiiixxxxxxxxxxxxxxxxxxxooxooooooxxoooooox3x2c21c2222ccc122222ccccaaaaaa<<<<<<<<<<<<<<<<<<111111111111bbooxxxxxxxxxxcc2211x", align 16
@.str.261 = private unnamed_addr constant [18 x i8] c"NOTE_INSN_DELETED\00", align 1
@.str.262 = private unnamed_addr constant [20 x i8] c"NOTE_INSN_BLOCK_BEG\00", align 1
@.str.263 = private unnamed_addr constant [20 x i8] c"NOTE_INSN_BLOCK_END\00", align 1
@.str.264 = private unnamed_addr constant [19 x i8] c"NOTE_INSN_LOOP_BEG\00", align 1
@.str.265 = private unnamed_addr constant [19 x i8] c"NOTE_INSN_LOOP_END\00", align 1
@.str.266 = private unnamed_addr constant [20 x i8] c"NOTE_INSN_LOOP_CONT\00", align 1
@.str.267 = private unnamed_addr constant [20 x i8] c"NOTE_INSN_LOOP_VTOP\00", align 1
@.str.268 = private unnamed_addr constant [28 x i8] c"NOTE_INSN_LOOP_END_TOP_COND\00", align 1
@.str.269 = private unnamed_addr constant [23 x i8] c"NOTE_INSN_FUNCTION_END\00", align 1
@.str.270 = private unnamed_addr constant [23 x i8] c"NOTE_INSN_PROLOGUE_END\00", align 1
@.str.271 = private unnamed_addr constant [23 x i8] c"NOTE_INSN_EPILOGUE_BEG\00", align 1
@.str.272 = private unnamed_addr constant [24 x i8] c"NOTE_INSN_DELETED_LABEL\00", align 1
@.str.273 = private unnamed_addr constant [23 x i8] c"NOTE_INSN_FUNCTION_BEG\00", align 1
@.str.274 = private unnamed_addr constant [24 x i8] c"NOTE_INSN_EH_REGION_BEG\00", align 1
@.str.275 = private unnamed_addr constant [24 x i8] c"NOTE_INSN_EH_REGION_END\00", align 1
@.str.276 = private unnamed_addr constant [31 x i8] c"NOTE_INSN_REPEATED_LINE_NUMBER\00", align 1
@.str.277 = private unnamed_addr constant [20 x i8] c"NOTE_INSN_RANGE_BEG\00", align 1
@.str.278 = private unnamed_addr constant [20 x i8] c"NOTE_INSN_RANGE_END\00", align 1
@.str.279 = private unnamed_addr constant [15 x i8] c"NOTE_INSN_LIVE\00", align 1
@.str.280 = private unnamed_addr constant [22 x i8] c"NOTE_INSN_BASIC_BLOCK\00", align 1
@.str.281 = private unnamed_addr constant [25 x i8] c"NOTE_INSN_EXPECTED_VALUE\00", align 1
@note_insn_name = constant [22 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.245, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.261, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.262, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.263, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.264, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.265, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.266, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.267, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.268, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.269, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.270, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.271, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.272, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.274, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.275, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.276, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.277, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.278, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.279, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.280, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.281, i32 0, i32 0)], align 16
@.str.282 = private unnamed_addr constant [9 x i8] c"REG_DEAD\00", align 1
@.str.283 = private unnamed_addr constant [8 x i8] c"REG_INC\00", align 1
@.str.284 = private unnamed_addr constant [10 x i8] c"REG_EQUIV\00", align 1
@.str.285 = private unnamed_addr constant [10 x i8] c"REG_EQUAL\00", align 1
@.str.286 = private unnamed_addr constant [10 x i8] c"REG_WAS_0\00", align 1
@.str.287 = private unnamed_addr constant [11 x i8] c"REG_RETVAL\00", align 1
@.str.288 = private unnamed_addr constant [12 x i8] c"REG_LIBCALL\00", align 1
@.str.289 = private unnamed_addr constant [11 x i8] c"REG_NONNEG\00", align 1
@.str.290 = private unnamed_addr constant [16 x i8] c"REG_NO_CONFLICT\00", align 1
@.str.291 = private unnamed_addr constant [11 x i8] c"REG_UNUSED\00", align 1
@.str.292 = private unnamed_addr constant [14 x i8] c"REG_CC_SETTER\00", align 1
@.str.293 = private unnamed_addr constant [12 x i8] c"REG_CC_USER\00", align 1
@.str.294 = private unnamed_addr constant [10 x i8] c"REG_LABEL\00", align 1
@.str.295 = private unnamed_addr constant [13 x i8] c"REG_DEP_ANTI\00", align 1
@.str.296 = private unnamed_addr constant [15 x i8] c"REG_DEP_OUTPUT\00", align 1
@.str.297 = private unnamed_addr constant [12 x i8] c"REG_BR_PROB\00", align 1
@.str.298 = private unnamed_addr constant [15 x i8] c"REG_EXEC_COUNT\00", align 1
@.str.299 = private unnamed_addr constant [12 x i8] c"REG_NOALIAS\00", align 1
@.str.300 = private unnamed_addr constant [14 x i8] c"REG_SAVE_AREA\00", align 1
@.str.301 = private unnamed_addr constant [12 x i8] c"REG_BR_PRED\00", align 1
@.str.302 = private unnamed_addr constant [23 x i8] c"REG_FRAME_RELATED_EXPR\00", align 1
@.str.303 = private unnamed_addr constant [15 x i8] c"REG_EH_CONTEXT\00", align 1
@.str.304 = private unnamed_addr constant [14 x i8] c"REG_EH_REGION\00", align 1
@.str.305 = private unnamed_addr constant [14 x i8] c"REG_SAVE_NOTE\00", align 1
@.str.306 = private unnamed_addr constant [15 x i8] c"REG_MAYBE_DEAD\00", align 1
@.str.307 = private unnamed_addr constant [13 x i8] c"REG_NORETURN\00", align 1
@.str.308 = private unnamed_addr constant [19 x i8] c"REG_NON_LOCAL_GOTO\00", align 1
@.str.309 = private unnamed_addr constant [11 x i8] c"REG_SETJMP\00", align 1
@.str.310 = private unnamed_addr constant [18 x i8] c"REG_ALWAYS_RETURN\00", align 1
@.str.311 = private unnamed_addr constant [15 x i8] c"REG_VTABLE_REF\00", align 1
@reg_note_name = constant [31 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.245, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.282, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.283, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.284, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.285, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.286, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.287, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.288, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.289, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.290, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.291, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.292, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.293, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.294, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.295, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.296, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.297, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.298, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.299, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.300, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.301, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.302, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.303, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.304, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.305, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.306, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.307, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.308, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.309, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.310, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.311, i32 0, i32 0)], align 16
@.str.312 = private unnamed_addr constant [6 x i8] c"rtl.c\00", align 1
@__FUNCTION__.copy_rtx = private unnamed_addr constant [9 x i8] c"copy_rtx\00", align 1
@rtx_equal_function_value_matters = common global i32 0, align 4
@__FUNCTION__.rtx_equal_p = private unnamed_addr constant [12 x i8] c"rtx_equal_p\00", align 1
@generating_concat_p = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define %struct.rtvec_def* @rtvec_alloc(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %rt = alloca %struct.rtvec_def*, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %0, 1
  %conv = sext i32 %sub to i64
  %mul = mul i64 %conv, 8
  %add = add i64 16, %mul
  %call = call i8* @ggc_alloc(i64 %add)
  %1 = bitcast i8* %call to %struct.rtvec_def*
  store %struct.rtvec_def* %1, %struct.rtvec_def** %rt, align 8
  %2 = load %struct.rtvec_def*, %struct.rtvec_def** %rt, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 0
  %3 = bitcast %struct.rtx_def** %arrayidx to i8*
  %4 = load i32, i32* %n.addr, align 4
  %conv1 = sext i32 %4 to i64
  %mul2 = mul i64 %conv1, 8
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 %mul2, i32 8, i1 false)
  %5 = load i32, i32* %n.addr, align 4
  %6 = load %struct.rtvec_def*, %struct.rtvec_def** %rt, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %6, i32 0, i32 0
  store i32 %5, i32* %num_elem, align 4
  %7 = load %struct.rtvec_def*, %struct.rtvec_def** %rt, align 8
  ret %struct.rtvec_def* %7
}

declare i8* @ggc_alloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @rtx_alloc(i32 %code) #0 {
entry:
  %code.addr = alloca i32, align 4
  %rt = alloca %struct.rtx_def*, align 8
  %n = alloca i32, align 4
  store i32 %code, i32* %code.addr, align 4
  %0 = load i32, i32* %code.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %n, align 4
  %2 = load i32, i32* %n, align 4
  %sub = sub nsw i32 %2, 1
  %conv1 = sext i32 %sub to i64
  %mul = mul i64 %conv1, 8
  %add = add i64 16, %mul
  %call = call i8* @ggc_alloc(i64 %add)
  %3 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %3, %struct.rtx_def** %rt, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 8, i32 8, i1 false)
  %6 = load i32, i32* %code.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load = load i32, i32* %8, align 8
  %bf.value = and i32 %6, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %8, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %9
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @copy_rtx(%struct.rtx_def* %orig) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %orig.addr = alloca %struct.rtx_def*, align 8
  %copy = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %code = alloca i32, align 4
  %format_ptr = alloca i8*, align 8
  store %struct.rtx_def* %orig, %struct.rtx_def** %orig.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  switch i32 %2, label %sw.default [
    i32 61, label %sw.bb
    i32 71, label %sw.bb
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 68, label %sw.bb
    i32 36, label %sw.bb
    i32 59, label %sw.bb
    i32 69, label %sw.bb
    i32 62, label %sw.bb
    i32 70, label %sw.bb
    i32 58, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load2 = load i32, i32* %6, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %cmp = icmp eq i32 %bf.clear3, 75
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb.1
  %7 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 0
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx9, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load10 = load i32, i32* %10, align 8
  %bf.clear11 = and i32 %bf.load10, 65535
  %cmp12 = icmp eq i32 %bf.clear11, 68
  br i1 %cmp12, label %land.lhs.true.13, label %if.end

land.lhs.true.13:                                 ; preds = %land.lhs.true
  %11 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 0
  %rtx16 = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx16, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 1
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load20 = load i32, i32* %14, align 8
  %bf.clear21 = and i32 %bf.load20, 65535
  %cmp22 = icmp eq i32 %bf.clear21, 54
  br i1 %cmp22, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.13
  %15 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.13, %land.lhs.true, %sw.bb.1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end
  %16 = load i32, i32* %code, align 4
  %call = call %struct.rtx_def* @rtx_alloc(i32 %16)
  store %struct.rtx_def* %call, %struct.rtx_def** %copy, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %18 = bitcast %struct.rtx_def* %17 to i8*
  %19 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %20 = bitcast %struct.rtx_def* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %20, i64 8, i32 8, i1 false)
  %21 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load23 = load i32, i32* %22, align 8
  %bf.clear24 = and i32 %bf.load23, -536870913
  store i32 %bf.clear24, i32* %22, align 8
  %23 = load i32, i32* %code, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx25 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %24 = load i8, i8* %arrayidx25, align 1
  %conv = sext i8 %24 to i32
  %cmp26 = icmp eq i32 %conv, 105
  br i1 %cmp26, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %sw.epilog
  %25 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load29 = load i32, i32* %26, align 8
  %bf.clear30 = and i32 %bf.load29, 2147483647
  store i32 %bf.clear30, i32* %26, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %sw.epilog
  %27 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load32 = load i32, i32* %28, align 8
  %bf.lshr = lshr i32 %bf.load32, 24
  %bf.clear33 = and i32 %bf.lshr, 1
  %29 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load34 = load i32, i32* %30, align 8
  %bf.value = and i32 %bf.clear33, 1
  %bf.shl = shl i32 %bf.value, 24
  %bf.clear35 = and i32 %bf.load34, -16777217
  %bf.set = or i32 %bf.clear35, %bf.shl
  store i32 %bf.set, i32* %30, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load36 = load i32, i32* %32, align 8
  %bf.lshr37 = lshr i32 %bf.load36, 25
  %bf.clear38 = and i32 %bf.lshr37, 1
  %33 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load39 = load i32, i32* %34, align 8
  %bf.value40 = and i32 %bf.clear38, 1
  %bf.shl41 = shl i32 %bf.value40, 25
  %bf.clear42 = and i32 %bf.load39, -33554433
  %bf.set43 = or i32 %bf.clear42, %bf.shl41
  store i32 %bf.set43, i32* %34, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %bf.load44 = load i32, i32* %36, align 8
  %bf.clear45 = and i32 %bf.load44, 65535
  %idxprom46 = sext i32 %bf.clear45 to i64
  %arrayidx47 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom46
  %37 = load i8*, i8** %arrayidx47, align 8
  store i8* %37, i8** %format_ptr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.123, %if.end.31
  %38 = load i32, i32* %i, align 4
  %39 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load48 = load i32, i32* %40, align 8
  %bf.clear49 = and i32 %bf.load48, 65535
  %idxprom50 = sext i32 %bf.clear49 to i64
  %arrayidx51 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom50
  %41 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %41 to i32
  %cmp53 = icmp slt i32 %38, %conv52
  br i1 %cmp53, label %for.body, label %for.end.125

for.body:                                         ; preds = %for.cond
  %42 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %42 to i64
  %43 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld56 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld56, i32 0, i64 %idxprom55
  %44 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %44 to i64
  %45 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld59, i32 0, i64 %idxprom58
  %46 = bitcast %union.rtunion_def* %arrayidx57 to i8*
  %47 = bitcast %union.rtunion_def* %arrayidx60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 8, i32 8, i1 false)
  %48 = load i8*, i8** %format_ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr, i8** %format_ptr, align 8
  %49 = load i8, i8* %48, align 1
  %conv61 = sext i8 %49 to i32
  switch i32 %conv61, label %sw.default.121 [
    i32 101, label %sw.bb.62
    i32 69, label %sw.bb.80
    i32 86, label %sw.bb.80
    i32 116, label %sw.bb.120
    i32 119, label %sw.bb.120
    i32 105, label %sw.bb.120
    i32 115, label %sw.bb.120
    i32 83, label %sw.bb.120
    i32 84, label %sw.bb.120
    i32 117, label %sw.bb.120
    i32 48, label %sw.bb.120
  ]

sw.bb.62:                                         ; preds = %for.body
  %50 = load i32, i32* %i, align 4
  %idxprom63 = sext i32 %50 to i64
  %51 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld64 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld64, i32 0, i64 %idxprom63
  %rtx66 = bitcast %union.rtunion_def* %arrayidx65 to %struct.rtx_def**
  %52 = load %struct.rtx_def*, %struct.rtx_def** %rtx66, align 8
  %cmp67 = icmp ne %struct.rtx_def* %52, null
  br i1 %cmp67, label %if.then.69, label %if.end.79

if.then.69:                                       ; preds = %sw.bb.62
  %53 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %53 to i64
  %54 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld71, i32 0, i64 %idxprom70
  %rtx73 = bitcast %union.rtunion_def* %arrayidx72 to %struct.rtx_def**
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rtx73, align 8
  %call74 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %55)
  %56 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %56 to i64
  %57 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld76 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld76, i32 0, i64 %idxprom75
  %rtx78 = bitcast %union.rtunion_def* %arrayidx77 to %struct.rtx_def**
  store %struct.rtx_def* %call74, %struct.rtx_def** %rtx78, align 8
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.69, %sw.bb.62
  br label %sw.epilog.122

sw.bb.80:                                         ; preds = %for.body, %for.body
  %58 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %58 to i64
  %59 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld82 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld82, i32 0, i64 %idxprom81
  %rtvec = bitcast %union.rtunion_def* %arrayidx83 to %struct.rtvec_def**
  %60 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %cmp84 = icmp ne %struct.rtvec_def* %60, null
  br i1 %cmp84, label %if.then.86, label %if.end.119

if.then.86:                                       ; preds = %sw.bb.80
  %61 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %61 to i64
  %62 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld88 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld88, i32 0, i64 %idxprom87
  %rtvec90 = bitcast %union.rtunion_def* %arrayidx89 to %struct.rtvec_def**
  %63 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec90, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %63, i32 0, i32 0
  %64 = load i32, i32* %num_elem, align 4
  %call91 = call %struct.rtvec_def* @rtvec_alloc(i32 %64)
  %65 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %65 to i64
  %66 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld93 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %66, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld93, i32 0, i64 %idxprom92
  %rtvec95 = bitcast %union.rtunion_def* %arrayidx94 to %struct.rtvec_def**
  store %struct.rtvec_def* %call91, %struct.rtvec_def** %rtvec95, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.96

for.cond.96:                                      ; preds = %for.inc, %if.then.86
  %67 = load i32, i32* %j, align 4
  %68 = load i32, i32* %i, align 4
  %idxprom97 = sext i32 %68 to i64
  %69 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld98 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i32 0, i32 1
  %arrayidx99 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld98, i32 0, i64 %idxprom97
  %rtvec100 = bitcast %union.rtunion_def* %arrayidx99 to %struct.rtvec_def**
  %70 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec100, align 8
  %num_elem101 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %70, i32 0, i32 0
  %71 = load i32, i32* %num_elem101, align 4
  %cmp102 = icmp slt i32 %67, %71
  br i1 %cmp102, label %for.body.104, label %for.end

for.body.104:                                     ; preds = %for.cond.96
  %72 = load i32, i32* %j, align 4
  %idxprom105 = sext i32 %72 to i64
  %73 = load i32, i32* %i, align 4
  %idxprom106 = sext i32 %73 to i64
  %74 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld107 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %74, i32 0, i32 1
  %arrayidx108 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld107, i32 0, i64 %idxprom106
  %rtvec109 = bitcast %union.rtunion_def* %arrayidx108 to %struct.rtvec_def**
  %75 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec109, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %75, i32 0, i32 1
  %arrayidx110 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom105
  %76 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx110, align 8
  %call111 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %76)
  %77 = load i32, i32* %j, align 4
  %idxprom112 = sext i32 %77 to i64
  %78 = load i32, i32* %i, align 4
  %idxprom113 = sext i32 %78 to i64
  %79 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld114 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %79, i32 0, i32 1
  %arrayidx115 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld114, i32 0, i64 %idxprom113
  %rtvec116 = bitcast %union.rtunion_def* %arrayidx115 to %struct.rtvec_def**
  %80 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec116, align 8
  %elem117 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %80, i32 0, i32 1
  %arrayidx118 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem117, i32 0, i64 %idxprom112
  store %struct.rtx_def* %call111, %struct.rtx_def** %arrayidx118, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.104
  %81 = load i32, i32* %j, align 4
  %inc = add nsw i32 %81, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.96

for.end:                                          ; preds = %for.cond.96
  br label %if.end.119

if.end.119:                                       ; preds = %for.end, %sw.bb.80
  br label %sw.epilog.122

sw.bb.120:                                        ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  br label %sw.epilog.122

sw.default.121:                                   ; preds = %for.body
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.312, i32 0, i32 0), i32 440, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__FUNCTION__.copy_rtx, i32 0, i32 0)) #5
  unreachable

sw.epilog.122:                                    ; preds = %sw.bb.120, %if.end.119, %if.end.79
  br label %for.inc.123

for.inc.123:                                      ; preds = %sw.epilog.122
  %82 = load i32, i32* %i, align 4
  %inc124 = add nsw i32 %82, 1
  store i32 %inc124, i32* %i, align 4
  br label %for.cond

for.end.125:                                      ; preds = %for.cond
  %83 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  store %struct.rtx_def* %83, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %for.end.125, %if.then, %sw.bb
  %84 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %84
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #3

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @shallow_copy_rtx(%struct.rtx_def* %orig) #0 {
entry:
  %orig.addr = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %copy = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %orig, %struct.rtx_def** %orig.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  %call = call %struct.rtx_def* @rtx_alloc(i32 %2)
  store %struct.rtx_def* %call, %struct.rtx_def** %copy, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load1 = load i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load1, 16
  %bf.clear2 = and i32 %bf.lshr, 255
  %5 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load3 = load i32, i32* %6, align 8
  %bf.value = and i32 %bf.clear2, 255
  %bf.shl = shl i32 %bf.value, 16
  %bf.clear4 = and i32 %bf.load3, -16711681
  %bf.set = or i32 %bf.clear4, %bf.shl
  store i32 %bf.set, i32* %6, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load5 = load i32, i32* %8, align 8
  %bf.lshr6 = lshr i32 %bf.load5, 28
  %bf.clear7 = and i32 %bf.lshr6, 1
  %9 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load8 = load i32, i32* %10, align 8
  %bf.value9 = and i32 %bf.clear7, 1
  %bf.shl10 = shl i32 %bf.value9, 28
  %bf.clear11 = and i32 %bf.load8, -268435457
  %bf.set12 = or i32 %bf.clear11, %bf.shl10
  store i32 %bf.set12, i32* %10, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load13 = load i32, i32* %12, align 8
  %bf.lshr14 = lshr i32 %bf.load13, 27
  %bf.clear15 = and i32 %bf.lshr14, 1
  %13 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load16 = load i32, i32* %14, align 8
  %bf.value17 = and i32 %bf.clear15, 1
  %bf.shl18 = shl i32 %bf.value17, 27
  %bf.clear19 = and i32 %bf.load16, -134217729
  %bf.set20 = or i32 %bf.clear19, %bf.shl18
  store i32 %bf.set20, i32* %14, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load21 = load i32, i32* %16, align 8
  %bf.lshr22 = lshr i32 %bf.load21, 26
  %bf.clear23 = and i32 %bf.lshr22, 1
  %17 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load24 = load i32, i32* %18, align 8
  %bf.value25 = and i32 %bf.clear23, 1
  %bf.shl26 = shl i32 %bf.value25, 26
  %bf.clear27 = and i32 %bf.load24, -67108865
  %bf.set28 = or i32 %bf.clear27, %bf.shl26
  store i32 %bf.set28, i32* %18, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load29 = load i32, i32* %20, align 8
  %bf.lshr30 = lshr i32 %bf.load29, 30
  %bf.clear31 = and i32 %bf.lshr30, 1
  %21 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load32 = load i32, i32* %22, align 8
  %bf.value33 = and i32 %bf.clear31, 1
  %bf.shl34 = shl i32 %bf.value33, 30
  %bf.clear35 = and i32 %bf.load32, -1073741825
  %bf.set36 = or i32 %bf.clear35, %bf.shl34
  store i32 %bf.set36, i32* %22, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load37 = load i32, i32* %24, align 8
  %bf.lshr38 = lshr i32 %bf.load37, 31
  %25 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load39 = load i32, i32* %26, align 8
  %bf.value40 = and i32 %bf.lshr38, 1
  %bf.shl41 = shl i32 %bf.value40, 31
  %bf.clear42 = and i32 %bf.load39, 2147483647
  %bf.set43 = or i32 %bf.clear42, %bf.shl41
  store i32 %bf.set43, i32* %26, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %code, align 4
  %idxprom = sext i32 %28 to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom
  %29 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %29 to i32
  %cmp = icmp slt i32 %27, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %30 to i64
  %31 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 %idxprom45
  %32 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %32 to i64
  %33 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 %idxprom47
  %34 = bitcast %union.rtunion_def* %arrayidx46 to i8*
  %35 = bitcast %union.rtunion_def* %arrayidx49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 8, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %i, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  ret %struct.rtx_def* %37
}

; Function Attrs: nounwind uwtable
define i32 @get_mode_alignment(i32 %mode) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %alignment = alloca i32, align 4
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  %cmp = icmp eq i32 %1, 6
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %mode.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom1
  %3 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp eq i32 %3, 5
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i32, i32* %mode.addr, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_unit_size, i32 0, i64 %idxprom4
  %5 = load i8, i8* %arrayidx5, align 1
  %conv = zext i8 %5 to i32
  store i32 %conv, i32* %alignment, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %6 = load i32, i32* %mode.addr, align 4
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom6
  %7 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %7 to i32
  store i32 %conv8, i32* %alignment, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* %alignment, align 4
  %9 = load i32, i32* %alignment, align 4
  %sub = sub i32 0, %9
  %and = and i32 %8, %sub
  store i32 %and, i32* %alignment, align 4
  %10 = load i32, i32* %alignment, align 4
  %mul = mul i32 %10, 8
  store i32 %mul, i32* %alignment, align 4
  %11 = load i32, i32* %alignment, align 4
  %cmp9 = icmp ugt i32 1, %11
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %12 = load i32, i32* %alignment, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %12, %cond.false ]
  %cmp11 = icmp ult i32 128, %cond
  br i1 %cmp11, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %cond.end
  br label %cond.end.21

cond.false.14:                                    ; preds = %cond.end
  %13 = load i32, i32* %alignment, align 4
  %cmp15 = icmp ugt i32 1, %13
  br i1 %cmp15, label %cond.true.17, label %cond.false.18

cond.true.17:                                     ; preds = %cond.false.14
  br label %cond.end.19

cond.false.18:                                    ; preds = %cond.false.14
  %14 = load i32, i32* %alignment, align 4
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.18, %cond.true.17
  %cond20 = phi i32 [ 1, %cond.true.17 ], [ %14, %cond.false.18 ]
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.end.19, %cond.true.13
  %cond22 = phi i32 [ 128, %cond.true.13 ], [ %cond20, %cond.end.19 ]
  store i32 %cond22, i32* %alignment, align 4
  %15 = load i32, i32* %alignment, align 4
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @rtx_equal_p(%struct.rtx_def* %x, %struct.rtx_def* %y) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %y.addr = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %code = alloca i32, align 4
  %fmt = alloca i8*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %y, %struct.rtx_def** %y.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %cmp1 = icmp eq %struct.rtx_def* %2, null
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %cmp2 = icmp eq %struct.rtx_def* %3, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %lor.lhs.false
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %6 = load i32, i32* %code, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load5 = load i32, i32* %8, align 8
  %bf.clear6 = and i32 %bf.load5, 65535
  %cmp7 = icmp ne i32 %6, %bf.clear6
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.4
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.4
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load10 = load i32, i32* %10, align 8
  %bf.lshr = lshr i32 %bf.load10, 16
  %bf.clear11 = and i32 %bf.lshr, 255
  %11 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load12 = load i32, i32* %12, align 8
  %bf.lshr13 = lshr i32 %bf.load12, 16
  %bf.clear14 = and i32 %bf.lshr13, 255
  %cmp15 = icmp ne i32 %bf.clear11, %bf.clear14
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.9
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.9
  %13 = load i32, i32* %code, align 4
  switch i32 %13, label %sw.default [
    i32 61, label %sw.bb
    i32 67, label %sw.bb.29
    i32 68, label %sw.bb.36
    i32 62, label %sw.bb.44
    i32 55, label %sw.bb.44
    i32 54, label %sw.bb.44
    i32 56, label %sw.bb.44
  ]

sw.bb:                                            ; preds = %if.end.17
  %14 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %15 = load i32, i32* %rtuint, align 4
  %16 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 0
  %rtuint20 = bitcast %union.rtunion_def* %arrayidx19 to i32*
  %17 = load i32, i32* %rtuint20, align 4
  %cmp21 = icmp eq i32 %15, %17
  br i1 %cmp21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %sw.bb
  %18 = load i32, i32* @rtx_equal_function_value_matters, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %land.rhs
  %19 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load22 = load i32, i32* %20, align 8
  %bf.lshr23 = lshr i32 %bf.load22, 30
  %bf.clear24 = and i32 %bf.lshr23, 1
  %21 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load25 = load i32, i32* %22, align 8
  %bf.lshr26 = lshr i32 %bf.load25, 30
  %bf.clear27 = and i32 %bf.lshr26, 1
  %cmp28 = icmp eq i32 %bf.clear24, %bf.clear27
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %23 = phi i1 [ true, %land.rhs ], [ %cmp28, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %sw.bb
  %24 = phi i1 [ false, %sw.bb ], [ %23, %lor.end ]
  %land.ext = zext i1 %24 to i32
  store i32 %land.ext, i32* %retval
  br label %return

sw.bb.29:                                         ; preds = %if.end.17
  %25 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 0
  %rtx34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx34, align 8
  %cmp35 = icmp eq %struct.rtx_def* %26, %28
  %conv = zext i1 %cmp35 to i32
  store i32 %conv, i32* %retval
  br label %return

sw.bb.36:                                         ; preds = %if.end.17
  %29 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 0
  %rtstr = bitcast %union.rtunion_def* %arrayidx38 to i8**
  %30 = load i8*, i8** %rtstr, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld39, i32 0, i64 0
  %rtstr41 = bitcast %union.rtunion_def* %arrayidx40 to i8**
  %32 = load i8*, i8** %rtstr41, align 8
  %cmp42 = icmp eq i8* %30, %32
  %conv43 = zext i1 %cmp42 to i32
  store i32 %conv43, i32* %retval
  br label %return

sw.bb.44:                                         ; preds = %if.end.17, %if.end.17, %if.end.17, %if.end.17
  store i32 0, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end.17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %33 = load i32, i32* %code, align 4
  %idxprom = sext i32 %33 to i64
  %arrayidx45 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom
  %34 = load i8*, i8** %arrayidx45, align 8
  store i8* %34, i8** %fmt, align 8
  %35 = load i32, i32* %code, align 4
  %idxprom46 = sext i32 %35 to i64
  %arrayidx47 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom46
  %36 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %36 to i32
  %sub = sub nsw i32 %conv48, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.171, %sw.epilog
  %37 = load i32, i32* %i, align 4
  %cmp49 = icmp sge i32 %37, 0
  br i1 %cmp49, label %for.body, label %for.end.172

for.body:                                         ; preds = %for.cond
  %38 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %38 to i64
  %39 = load i8*, i8** %fmt, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %39, i64 %idxprom51
  %40 = load i8, i8* %arrayidx52, align 1
  %conv53 = sext i8 %40 to i32
  switch i32 %conv53, label %sw.default.169 [
    i32 119, label %sw.bb.54
    i32 110, label %sw.bb.66
    i32 105, label %sw.bb.66
    i32 86, label %sw.bb.78
    i32 69, label %sw.bb.78
    i32 101, label %sw.bb.117
    i32 83, label %sw.bb.131
    i32 115, label %sw.bb.131
    i32 117, label %sw.bb.167
    i32 48, label %sw.bb.168
    i32 116, label %sw.bb.168
  ]

sw.bb.54:                                         ; preds = %for.body
  %41 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %41 to i64
  %42 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld56 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld56, i32 0, i64 %idxprom55
  %rtwint = bitcast %union.rtunion_def* %arrayidx57 to i64*
  %43 = load i64, i64* %rtwint, align 8
  %44 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %44 to i64
  %45 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld59, i32 0, i64 %idxprom58
  %rtwint61 = bitcast %union.rtunion_def* %arrayidx60 to i64*
  %46 = load i64, i64* %rtwint61, align 8
  %cmp62 = icmp ne i64 %43, %46
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %sw.bb.54
  store i32 0, i32* %retval
  br label %return

if.end.65:                                        ; preds = %sw.bb.54
  br label %sw.epilog.170

sw.bb.66:                                         ; preds = %for.body, %for.body
  %47 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %47 to i64
  %48 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld68 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld68, i32 0, i64 %idxprom67
  %rtint = bitcast %union.rtunion_def* %arrayidx69 to i32*
  %49 = load i32, i32* %rtint, align 4
  %50 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %50 to i64
  %51 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld71, i32 0, i64 %idxprom70
  %rtint73 = bitcast %union.rtunion_def* %arrayidx72 to i32*
  %52 = load i32, i32* %rtint73, align 4
  %cmp74 = icmp ne i32 %49, %52
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %sw.bb.66
  store i32 0, i32* %retval
  br label %return

if.end.77:                                        ; preds = %sw.bb.66
  br label %sw.epilog.170

sw.bb.78:                                         ; preds = %for.body, %for.body
  %53 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %53 to i64
  %54 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld80 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld80, i32 0, i64 %idxprom79
  %rtvec = bitcast %union.rtunion_def* %arrayidx81 to %struct.rtvec_def**
  %55 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %55, i32 0, i32 0
  %56 = load i32, i32* %num_elem, align 4
  %57 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %57 to i64
  %58 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld83, i32 0, i64 %idxprom82
  %rtvec85 = bitcast %union.rtunion_def* %arrayidx84 to %struct.rtvec_def**
  %59 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec85, align 8
  %num_elem86 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %59, i32 0, i32 0
  %60 = load i32, i32* %num_elem86, align 4
  %cmp87 = icmp ne i32 %56, %60
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %sw.bb.78
  store i32 0, i32* %retval
  br label %return

if.end.90:                                        ; preds = %sw.bb.78
  store i32 0, i32* %j, align 4
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc, %if.end.90
  %61 = load i32, i32* %j, align 4
  %62 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %62 to i64
  %63 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld93 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld93, i32 0, i64 %idxprom92
  %rtvec95 = bitcast %union.rtunion_def* %arrayidx94 to %struct.rtvec_def**
  %64 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec95, align 8
  %num_elem96 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %64, i32 0, i32 0
  %65 = load i32, i32* %num_elem96, align 4
  %cmp97 = icmp slt i32 %61, %65
  br i1 %cmp97, label %for.body.99, label %for.end

for.body.99:                                      ; preds = %for.cond.91
  %66 = load i32, i32* %j, align 4
  %idxprom100 = sext i32 %66 to i64
  %67 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %67 to i64
  %68 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld102 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %68, i32 0, i32 1
  %arrayidx103 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld102, i32 0, i64 %idxprom101
  %rtvec104 = bitcast %union.rtunion_def* %arrayidx103 to %struct.rtvec_def**
  %69 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec104, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %69, i32 0, i32 1
  %arrayidx105 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom100
  %70 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx105, align 8
  %71 = load i32, i32* %j, align 4
  %idxprom106 = sext i32 %71 to i64
  %72 = load i32, i32* %i, align 4
  %idxprom107 = sext i32 %72 to i64
  %73 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld108 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld108, i32 0, i64 %idxprom107
  %rtvec110 = bitcast %union.rtunion_def* %arrayidx109 to %struct.rtvec_def**
  %74 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec110, align 8
  %elem111 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %74, i32 0, i32 1
  %arrayidx112 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem111, i32 0, i64 %idxprom106
  %75 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx112, align 8
  %call = call i32 @rtx_equal_p(%struct.rtx_def* %70, %struct.rtx_def* %75)
  %cmp113 = icmp eq i32 %call, 0
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %for.body.99
  store i32 0, i32* %retval
  br label %return

if.end.116:                                       ; preds = %for.body.99
  br label %for.inc

for.inc:                                          ; preds = %if.end.116
  %76 = load i32, i32* %j, align 4
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.91

for.end:                                          ; preds = %for.cond.91
  br label %sw.epilog.170

sw.bb.117:                                        ; preds = %for.body
  %77 = load i32, i32* %i, align 4
  %idxprom118 = sext i32 %77 to i64
  %78 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld119 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx120 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld119, i32 0, i64 %idxprom118
  %rtx121 = bitcast %union.rtunion_def* %arrayidx120 to %struct.rtx_def**
  %79 = load %struct.rtx_def*, %struct.rtx_def** %rtx121, align 8
  %80 = load i32, i32* %i, align 4
  %idxprom122 = sext i32 %80 to i64
  %81 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld123 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %81, i32 0, i32 1
  %arrayidx124 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld123, i32 0, i64 %idxprom122
  %rtx125 = bitcast %union.rtunion_def* %arrayidx124 to %struct.rtx_def**
  %82 = load %struct.rtx_def*, %struct.rtx_def** %rtx125, align 8
  %call126 = call i32 @rtx_equal_p(%struct.rtx_def* %79, %struct.rtx_def* %82)
  %cmp127 = icmp eq i32 %call126, 0
  br i1 %cmp127, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %sw.bb.117
  store i32 0, i32* %retval
  br label %return

if.end.130:                                       ; preds = %sw.bb.117
  br label %sw.epilog.170

sw.bb.131:                                        ; preds = %for.body, %for.body
  %83 = load i32, i32* %i, align 4
  %idxprom132 = sext i32 %83 to i64
  %84 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld133 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %84, i32 0, i32 1
  %arrayidx134 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld133, i32 0, i64 %idxprom132
  %rtstr135 = bitcast %union.rtunion_def* %arrayidx134 to i8**
  %85 = load i8*, i8** %rtstr135, align 8
  %tobool136 = icmp ne i8* %85, null
  br i1 %tobool136, label %land.lhs.true, label %lor.lhs.false.137

lor.lhs.false.137:                                ; preds = %sw.bb.131
  %86 = load i32, i32* %i, align 4
  %idxprom138 = sext i32 %86 to i64
  %87 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld139 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %87, i32 0, i32 1
  %arrayidx140 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld139, i32 0, i64 %idxprom138
  %rtstr141 = bitcast %union.rtunion_def* %arrayidx140 to i8**
  %88 = load i8*, i8** %rtstr141, align 8
  %tobool142 = icmp ne i8* %88, null
  br i1 %tobool142, label %land.lhs.true, label %if.end.166

land.lhs.true:                                    ; preds = %lor.lhs.false.137, %sw.bb.131
  %89 = load i32, i32* %i, align 4
  %idxprom143 = sext i32 %89 to i64
  %90 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld144 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %90, i32 0, i32 1
  %arrayidx145 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld144, i32 0, i64 %idxprom143
  %rtstr146 = bitcast %union.rtunion_def* %arrayidx145 to i8**
  %91 = load i8*, i8** %rtstr146, align 8
  %tobool147 = icmp ne i8* %91, null
  br i1 %tobool147, label %lor.lhs.false.148, label %if.then.165

lor.lhs.false.148:                                ; preds = %land.lhs.true
  %92 = load i32, i32* %i, align 4
  %idxprom149 = sext i32 %92 to i64
  %93 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld150 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %93, i32 0, i32 1
  %arrayidx151 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld150, i32 0, i64 %idxprom149
  %rtstr152 = bitcast %union.rtunion_def* %arrayidx151 to i8**
  %94 = load i8*, i8** %rtstr152, align 8
  %tobool153 = icmp ne i8* %94, null
  br i1 %tobool153, label %lor.lhs.false.154, label %if.then.165

lor.lhs.false.154:                                ; preds = %lor.lhs.false.148
  %95 = load i32, i32* %i, align 4
  %idxprom155 = sext i32 %95 to i64
  %96 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld156 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %96, i32 0, i32 1
  %arrayidx157 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld156, i32 0, i64 %idxprom155
  %rtstr158 = bitcast %union.rtunion_def* %arrayidx157 to i8**
  %97 = load i8*, i8** %rtstr158, align 8
  %98 = load i32, i32* %i, align 4
  %idxprom159 = sext i32 %98 to i64
  %99 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld160 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %99, i32 0, i32 1
  %arrayidx161 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld160, i32 0, i64 %idxprom159
  %rtstr162 = bitcast %union.rtunion_def* %arrayidx161 to i8**
  %100 = load i8*, i8** %rtstr162, align 8
  %call163 = call i32 @strcmp(i8* %97, i8* %100) #6
  %tobool164 = icmp ne i32 %call163, 0
  br i1 %tobool164, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %lor.lhs.false.154, %lor.lhs.false.148, %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end.166:                                       ; preds = %lor.lhs.false.154, %lor.lhs.false.137
  br label %sw.epilog.170

sw.bb.167:                                        ; preds = %for.body
  br label %sw.epilog.170

sw.bb.168:                                        ; preds = %for.body, %for.body
  br label %sw.epilog.170

sw.default.169:                                   ; preds = %for.body
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.312, i32 0, i32 0), i32 611, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.rtx_equal_p, i32 0, i32 0)) #5
  unreachable

sw.epilog.170:                                    ; preds = %sw.bb.168, %sw.bb.167, %if.end.166, %if.end.130, %for.end, %if.end.77, %if.end.65
  br label %for.inc.171

for.inc.171:                                      ; preds = %sw.epilog.170
  %101 = load i32, i32* %i, align 4
  %dec = add nsw i32 %101, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end.172:                                      ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.172, %if.then.165, %if.then.129, %if.then.115, %if.then.89, %if.then.76, %if.then.64, %sw.bb.44, %sw.bb.36, %sw.bb.29, %land.end, %if.then.16, %if.then.8, %if.then.3, %if.then
  %102 = load i32, i32* %retval
  ret i32 %102
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
