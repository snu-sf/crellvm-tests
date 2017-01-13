; ModuleID = './MultiSource.Applications.d/11.write_ctables.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_fns_t = type { {}*, i32 (i8*, i8*, %struct.hash_fns_t*)*, [2 x i8*] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ScannerBlock = type { i32, i32, i32, %struct.ScanState**, %struct.ScanStateTransition** }
%struct.ScanState = type { i32, [256 x %struct.ScanState*], %struct.VecAction, %struct.VecAction, [256 x %struct.ScanStateTransition*] }
%struct.VecAction = type { i32, i32, %struct.Action**, [3 x %struct.Action*] }
%struct.Action = type { i32, %struct.Term*, %struct.Rule*, %struct.State*, i32, i8* }
%struct.Term = type { i32, i32, i32, i32, i32, i8*, i32, i8, %struct.Production* }
%struct.Production = type { i8*, i32, %struct.anon, i32, i8, %struct.Rule*, [8 x %struct.Production*], [8 x %struct.Declaration*], %struct.State*, %struct.Elem*, %struct.Term*, %struct.Production* }
%struct.anon = type { i32, i32, %struct.Rule**, [3 x %struct.Rule*] }
%struct.Declaration = type { %struct.Elem*, i32, i32 }
%struct.Elem = type { i32, i32, %struct.Rule*, %union.anon }
%union.anon = type { %struct.Unresolved }
%struct.Unresolved = type { i8*, i32 }
%struct.Rule = type { i32, %struct.Production*, i32, i32, i32, i32, %struct.anon.0, %struct.Elem*, %struct.Code, %struct.Code, %struct.anon.1, i32, %struct.Rule* }
%struct.anon.0 = type { i32, i32, %struct.Elem**, [3 x %struct.Elem*] }
%struct.Code = type { i8*, i32 }
%struct.anon.1 = type { i32, i32, %struct.Code**, [3 x %struct.Code*] }
%struct.State = type { i32, i64, %struct.anon.2, %struct.anon.3, %struct.VecGoto, %struct.VecAction, %struct.VecAction, %struct.VecHint, %struct.VecHint, %struct.Scanner, i8, i8*, i32, %struct.State*, %struct.State*, %struct.Rule*, %struct.Rule* }
%struct.anon.2 = type { i32, i32, %struct.Elem**, [3 x %struct.Elem*] }
%struct.anon.3 = type { i32, i32, %struct.Elem**, [3 x %struct.Elem*] }
%struct.VecGoto = type { i32, i32, %struct.Goto**, [3 x %struct.Goto*] }
%struct.Goto = type { %struct.Elem*, %struct.State* }
%struct.VecHint = type { i32, i32, %struct.Hint**, [3 x %struct.Hint*] }
%struct.Hint = type { i32, %struct.State*, %struct.Rule* }
%struct.Scanner = type { %struct.VecScanState, %struct.VecScanStateTransition }
%struct.VecScanState = type { i32, i32, %struct.ScanState**, [3 x %struct.ScanState*] }
%struct.VecScanStateTransition = type { i32, i32, %struct.ScanStateTransition**, [3 x %struct.ScanStateTransition*] }
%struct.ScanStateTransition = type { i32, %struct.VecAction, %struct.VecAction }
%struct.Grammar = type { i8*, %struct.anon.4, %struct.anon.5, %struct.anon.6, %struct.Code, %struct.Code*, i32, %struct.anon.7, %struct.anon.8, i8*, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, i32, i32, i32, %struct.Production*, %struct.Rule*, %struct.Elem*, i32, i32, i32, i32 }
%struct.anon.4 = type { i32, i32, %struct.Production**, [3 x %struct.Production*] }
%struct.anon.5 = type { i32, i32, %struct.Term**, [3 x %struct.Term*] }
%struct.anon.6 = type { i32, i32, %struct.State**, [3 x %struct.State*] }
%struct.anon.7 = type { i32, i32, %struct.Declaration**, [3 x %struct.Declaration*] }
%struct.anon.8 = type { i32, i32, %struct.D_Pass**, [3 x %struct.D_Pass*] }
%struct.D_Pass = type { i8*, i32, i32, i32 }
%struct.VecState = type { i32, i32, %struct.State**, [3 x %struct.State*] }
%struct.VecScannerBlock = type { i32, i32, %struct.ScannerBlock**, [3 x %struct.ScannerBlock*] }
%struct.anon.9 = type { i32, i32, i64*, [3 x i64] }

@scanner_block_fns = global { i32 (i8*, %struct.hash_fns_t*)*, i32 (i8*, i8*, %struct.hash_fns_t*)*, [2 x i8*] } { i32 (i8*, %struct.hash_fns_t*)* bitcast (i32 (%struct.ScannerBlock*, %struct.hash_fns_t*)* @scanner_block_hash_fn to i32 (i8*, %struct.hash_fns_t*)*), i32 (i8*, i8*, %struct.hash_fns_t*)* bitcast (i32 (%struct.ScannerBlock*, %struct.ScannerBlock*, %struct.hash_fns_t*)* @scanner_block_cmp_fn to i32 (i8*, i8*, %struct.hash_fns_t*)*), [2 x i8*] zeroinitializer }, align 8
@trans_scanner_block_fns = global { i32 (i8*, %struct.hash_fns_t*)*, i32 (i8*, i8*, %struct.hash_fns_t*)*, [2 x i8*] } { i32 (i8*, %struct.hash_fns_t*)* bitcast (i32 (%struct.ScannerBlock*, %struct.hash_fns_t*)* @trans_scanner_block_hash_fn to i32 (i8*, %struct.hash_fns_t*)*), i32 (i8*, i8*, %struct.hash_fns_t*)* bitcast (i32 (%struct.ScannerBlock*, %struct.ScannerBlock*, %struct.hash_fns_t*)* @trans_scanner_block_cmp_fn to i32 (i8*, i8*, %struct.hash_fns_t*)*), [2 x i8*] zeroinitializer }, align 8
@shift_fns = global { i32 (i8*, %struct.hash_fns_t*)*, i32 (i8*, i8*, %struct.hash_fns_t*)*, [2 x i8*] } { i32 (i8*, %struct.hash_fns_t*)* bitcast (i32 (%struct.Action*, %struct.hash_fns_t*)* @shift_hash_fn to i32 (i8*, %struct.hash_fns_t*)*), i32 (i8*, i8*, %struct.hash_fns_t*)* bitcast (i32 (%struct.Action*, %struct.Action*, %struct.hash_fns_t*)* @shift_cmp_fn to i32 (i8*, i8*, %struct.hash_fns_t*)*), [2 x i8*] zeroinitializer }, align 8
@er_hint_hash_fns = global { i32 (i8*, %struct.hash_fns_t*)*, i32 (i8*, i8*, %struct.hash_fns_t*)*, [2 x i8*] } { i32 (i8*, %struct.hash_fns_t*)* bitcast (i32 (%struct.State*, %struct.hash_fns_t*)* @er_hint_hash_fn to i32 (i8*, %struct.hash_fns_t*)*), i32 (i8*, i8*, %struct.hash_fns_t*)* bitcast (i32 (%struct.State*, %struct.State*, %struct.hash_fns_t*)* @er_hint_cmp_fn to i32 (i8*, i8*, %struct.hash_fns_t*)*), [2 x i8*] zeroinitializer }, align 8
@.str = private unnamed_addr constant [12 x i8] c".d_parser.c\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"unable to open `%s` for write\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"#include \22dparse.h\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"#include \22%s.d_parser.h\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"whitespace\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"D_ParserTables parser_tables_%s = {\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%d, \00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"d_states_%s, \00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"d_gotos_%s, \00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"d_symbols_%s, \00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%s, \00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"NULL, \00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"d_passes_%s, \00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c".d_parser.h\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"#ifndef _%s_h\0A\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"#define _%s_h\0A\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"#define %s \09%d\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"enum D_Tokens_%s {\0A\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"%s = %d%s\00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"\0A};\0A\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"#define D_START_STATE_%s \09%d\0A\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"#endif\0A\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"#line %d \22%s\22\0A\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"nterm\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"bad $ escape in code line %u\0A\00", align 1
@.str.33 = private unnamed_addr constant [51 x i8] c"attempt to find symbol for non-unique string '%s'\0A\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.35 = private unnamed_addr constant [46 x i8] c"int d_speculative_reduction_code_%d_%d_%s%s;\0A\00", align 1
@reduction_args = internal global i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.52, i32 0, i32 0), align 8
@.str.36 = private unnamed_addr constant [40 x i8] c"int d_final_reduction_code_%d_%d_%s%s;\0A\00", align 1
@.str.37 = private unnamed_addr constant [48 x i8] c"extern D_ReductionCode d_pass_code_%d_%d_%s[];\0A\00", align 1
@.str.38 = private unnamed_addr constant [32 x i8] c"int d_pass_code_%d_%d_%d_%s%s;\0A\00", align 1
@.str.39 = private unnamed_addr constant [45 x i8] c"int d_speculative_reduction_code_%d_%d_%s%s \00", align 1
@.str.40 = private unnamed_addr constant [39 x i8] c"int d_final_reduction_code_%d_%d_%s%s \00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"int d_pass_code_%d_%d_%d_%s%s \00", align 1
@.str.42 = private unnamed_addr constant [38 x i8] c"d_speculative_reduction_code_%d_%d_%s\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.44 = private unnamed_addr constant [32 x i8] c"d_final_reduction_code_%d_%d_%s\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"d_pass_code_%d_%d_%s\00", align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"D_ReductionCode %s[] = {\00", align 1
@.str.47 = private unnamed_addr constant [26 x i8] c"d_pass_code_%d_%d_%d_%s%s\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"NULL%s\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"};\0A\0A\00", align 1
@.str.50 = private unnamed_addr constant [33 x i8] c"D_Reduction d_reduction_%d_%s = \00", align 1
@.str.51 = private unnamed_addr constant [47 x i8] c"{%d, %d, %s, %s, %d, %d, %d, %d, %d, %d, %s};\0A\00", align 1
@.str.52 = private unnamed_addr constant [79 x i8] c"(void *_ps, void **_children, int _n_children, int _offset, D_Parser *_parser)\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"(_n_children)\00", align 1
@.str.55 = private unnamed_addr constant [30 x i8] c"(D_PN(_ps, _offset)->globals)\00", align 1
@.str.56 = private unnamed_addr constant [34 x i8] c"(*(D_PN(_children[%d], _offset)))\00", align 1
@.str.57 = private unnamed_addr constant [50 x i8] c"$nXXXX greater than number of children at line %d\00", align 1
@.str.58 = private unnamed_addr constant [24 x i8] c"(*(D_PN(_ps, _offset)))\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"(D_PN(_ps, _offset)->user)\00", align 1
@.str.60 = private unnamed_addr constant [37 x i8] c"(D_PN(_children[%d], _offset)->user)\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"reject\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c" return -1 \00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"free_below\00", align 1
@.str.64 = private unnamed_addr constant [54 x i8] c" free_D_ParseTreeBelow(_parser, (D_PN(_ps, _offset)))\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"scope\00", align 1
@.str.66 = private unnamed_addr constant [28 x i8] c"(D_PN(_ps, _offset)->scope)\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"parser\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"_parser\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.70 = private unnamed_addr constant [26 x i8] c"unknown pass '%s' line %d\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"  return 0;\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"}\0A\0A\00", align 1
@.str.73 = private unnamed_addr constant [53 x i8] c"D_Shift d_shift_%d_%s = { %d, %d, %d, %d, %d, %s };\0A\00", align 1
@.str.74 = private unnamed_addr constant [31 x i8] c"D_Shift *d_shifts_%d_%s[] = {\0A\00", align 1
@.str.75 = private unnamed_addr constant [17 x i8] c"&d_shift_%d_%s%s\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c", NULL\00", align 1
@.str.77 = private unnamed_addr constant [39 x i8] c"D_Shift *d_accepts_diff_%d_%d_%s[] = {\00", align 1
@.str.78 = private unnamed_addr constant [16 x i8] c"&d_shift_%d_%s,\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"0};\0A\00", align 1
@.str.80 = private unnamed_addr constant [38 x i8] c"D_Shift **d_accepts_diff_%d_%s[] = {\0A\00", align 1
@.str.81 = private unnamed_addr constant [26 x i8] c"d_accepts_diff_%d_%d_%s%s\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.83 = private unnamed_addr constant [50 x i8] c"%s d_scanner_%d_%d_%d_%s[SCANNER_BLOCK_SIZE] = {\0A\00", align 1
@.str.84 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.85 = private unnamed_addr constant [55 x i8] c"%s d_accepts_diff_%d_%d_%d_%s[SCANNER_BLOCK_SIZE] = {\0A\00", align 1
@.str.86 = private unnamed_addr constant [17 x i8] c"d_shift_%d_%d_%s\00", align 1
@.str.87 = private unnamed_addr constant [19 x i8] c"D_Shift *%s[] = { \00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c", NULL};\0A\0A\00", align 1
@.str.89 = private unnamed_addr constant [31 x i8] c"SB_%s d_scanner_%d_%s[%d] = {\0A\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"{ %s, {\00", align 1
@.str.91 = private unnamed_addr constant [22 x i8] c"{ d_shift_%d_%d_%s, {\00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"{ NULL, {\00", align 1
@.str.93 = private unnamed_addr constant [22 x i8] c"d_scanner_%d_%d_%d_%s\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"\0A  \00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"}},\0A\00", align 1
@.str.96 = private unnamed_addr constant [4 x i8] c"}}\0A\00", align 1
@.str.97 = private unnamed_addr constant [40 x i8] c"SB_trans_%s d_transition_%d_%s[%d] = {\0A\00", align 1
@.str.98 = private unnamed_addr constant [4 x i8] c"{{ \00", align 1
@.str.99 = private unnamed_addr constant [27 x i8] c"d_accepts_diff_%d_%d_%d_%s\00", align 1
@.str.100 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@.str.101 = private unnamed_addr constant [15 x i8] c"unsigned short\00", align 1
@.str.102 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.103 = private unnamed_addr constant [9 x i8] c"bad case\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"uint8\00", align 1
@.str.105 = private unnamed_addr constant [7 x i8] c"uint16\00", align 1
@.str.106 = private unnamed_addr constant [7 x i8] c"uint32\00", align 1
@.str.107 = private unnamed_addr constant [153 x i8] c"int d_scan_code_%d_%s(char **as, int *col, int *line,unsigned short *symbol, int *term_priority,unsigned char *op_assoc, int *op_priority) {\0A  int res;\0A\00", align 1
@.str.108 = private unnamed_addr constant [14 x i8] c"  if ((res = \00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"%s(\00", align 1
@.str.110 = private unnamed_addr constant [106 x i8] c"as, col, line, op_assoc, op_priority))) {\0A    *symbol = %d;\0A    *term_priority = %d;\0A    return res;\0A  }\0A\00", align 1
@.str.111 = private unnamed_addr constant [16 x i8] c"  return 0;\0A}\0A\0A\00", align 1
@.str.112 = private unnamed_addr constant [40 x i8] c"unsigned char d_goto_valid_%d_%s[] = {\0A\00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c"0x%x%s\00", align 1
@.str.114 = private unnamed_addr constant [38 x i8] c"D_Reduction *d_reductions_%d_%s[] = {\00", align 1
@.str.115 = private unnamed_addr constant [21 x i8] c"&d_reduction_%d_%s%s\00", align 1
@.str.116 = private unnamed_addr constant [53 x i8] c"D_RightEpsilonHint d_right_epsilon_hints_%d_%s[] = {\00", align 1
@.str.117 = private unnamed_addr constant [32 x i8] c"{ %d, %d, &d_reduction_%d_%s}%s\00", align 1
@.str.118 = private unnamed_addr constant [35 x i8] c"unsigned short d_gotos_%s[%d] = {\0A\00", align 1
@.str.119 = private unnamed_addr constant [37 x i8] c"unsigned short d_gotos_%s[1] = {0};\0A\00", align 1
@.str.120 = private unnamed_addr constant [57 x i8] c"D_ErrorRecoveryHint d_error_recovery_hints_%d_%s[] = {%s\00", align 1
@.str.121 = private unnamed_addr constant [18 x i8] c"{ %d, %d, \22%s\22}%s\00", align 1
@.str.122 = private unnamed_addr constant [26 x i8] c"\0AD_State d_states_%s[] = \00", align 1
@.str.123 = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@.str.124 = private unnamed_addr constant [21 x i8] c"d_goto_valid_%d_%s, \00", align 1
@.str.125 = private unnamed_addr constant [28 x i8] c"{ %d, d_reductions_%d_%s}, \00", align 1
@.str.126 = private unnamed_addr constant [13 x i8] c"{ 0, NULL}, \00", align 1
@.str.127 = private unnamed_addr constant [37 x i8] c"{ %d, d_right_epsilon_hints_%d_%s}, \00", align 1
@.str.128 = private unnamed_addr constant [38 x i8] c"{ %d, d_error_recovery_hints_%d_%s}, \00", align 1
@.str.129 = private unnamed_addr constant [17 x i8] c"d_shifts_%d_%s, \00", align 1
@.str.130 = private unnamed_addr constant [16 x i8] c"D_SHIFTS_CODE, \00", align 1
@.str.131 = private unnamed_addr constant [20 x i8] c"d_scan_code_%d_%s, \00", align 1
@.str.132 = private unnamed_addr constant [25 x i8] c"(void*)d_scanner_%d_%s, \00", align 1
@.str.133 = private unnamed_addr constant [13 x i8] c"sizeof(%s), \00", align 1
@.str.134 = private unnamed_addr constant [4 x i8] c"1, \00", align 1
@.str.135 = private unnamed_addr constant [4 x i8] c"0, \00", align 1
@scan_kind_strings = internal global [4 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.144, i32 0, i32 0), i8* null], align 16
@.str.136 = private unnamed_addr constant [28 x i8] c"(void*)d_transition_%d_%s, \00", align 1
@.str.137 = private unnamed_addr constant [23 x i8] c"d_accepts_diff_%d_%s, \00", align 1
@.str.138 = private unnamed_addr constant [19 x i8] c"(D_Shift***)NULL, \00", align 1
@.str.139 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.140 = private unnamed_addr constant [5 x i8] c"}%s\0A\00", align 1
@.str.141 = private unnamed_addr constant [29 x i8] c"{{0, {0, NULL}, 0, NULL}};\0A\0A\00", align 1
@.str.142 = private unnamed_addr constant [11 x i8] c"D_SCAN_ALL\00", align 1
@.str.143 = private unnamed_addr constant [15 x i8] c"D_SCAN_LONGEST\00", align 1
@.str.144 = private unnamed_addr constant [13 x i8] c"D_SCAN_MIXED\00", align 1
@.str.145 = private unnamed_addr constant [29 x i8] c"D_Symbol d_symbols_%s[] = {\0A\00", align 1
@.str.146 = private unnamed_addr constant [17 x i8] c"{%s, \22%s\22, %d},\0A\00", align 1
@d_internal = internal global [2 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.148, i32 0, i32 0)], align 16
@d_symbol = internal global [4 x i8*] [i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.152, i32 0, i32 0)], align 16
@.str.147 = private unnamed_addr constant [15 x i8] c"D_SYMBOL_NTERM\00", align 1
@.str.148 = private unnamed_addr constant [18 x i8] c"D_SYMBOL_INTERNAL\00", align 1
@.str.149 = private unnamed_addr constant [16 x i8] c"D_SYMBOL_STRING\00", align 1
@.str.150 = private unnamed_addr constant [15 x i8] c"D_SYMBOL_REGEX\00", align 1
@.str.151 = private unnamed_addr constant [14 x i8] c"D_SYMBOL_CODE\00", align 1
@.str.152 = private unnamed_addr constant [15 x i8] c"D_SYMBOL_TOKEN\00", align 1
@.str.153 = private unnamed_addr constant [26 x i8] c"D_Pass d_passes_%s[] = {\0A\00", align 1
@.str.154 = private unnamed_addr constant [24 x i8] c"{\22%s\22, %d, 0x%X, %d}%s\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @scanner_block_hash_fn(%struct.ScannerBlock* %b, %struct.hash_fns_t* %fns) #0 {
entry:
  %b.addr = alloca %struct.ScannerBlock*, align 8
  %fns.addr = alloca %struct.hash_fns_t*, align 8
  %hash = alloca i32, align 4
  %i = alloca i32, align 4
  %block_size = alloca i32, align 4
  %sb = alloca %struct.ScanState**, align 8
  store %struct.ScannerBlock* %b, %struct.ScannerBlock** %b.addr, align 8
  store %struct.hash_fns_t* %fns, %struct.hash_fns_t** %fns.addr, align 8
  store i32 0, i32* %hash, align 4
  %0 = load %struct.hash_fns_t*, %struct.hash_fns_t** %fns.addr, align 8
  %data = getelementptr inbounds %struct.hash_fns_t, %struct.hash_fns_t* %0, i32 0, i32 2
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* %data, i32 0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  %2 = ptrtoint i8* %1 to i32
  store i32 %2, i32* %block_size, align 4
  %3 = load %struct.ScannerBlock*, %struct.ScannerBlock** %b.addr, align 8
  %chars = getelementptr inbounds %struct.ScannerBlock, %struct.ScannerBlock* %3, i32 0, i32 3
  %4 = load %struct.ScanState**, %struct.ScanState*** %chars, align 8
  store %struct.ScanState** %4, %struct.ScanState*** %sb, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %block_size, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %hash, align 4
  %mul = mul i32 %7, 17
  store i32 %mul, i32* %hash, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.ScanState**, %struct.ScanState*** %sb, align 8
  %arrayidx1 = getelementptr inbounds %struct.ScanState*, %struct.ScanState** %9, i64 %idxprom
  %10 = load %struct.ScanState*, %struct.ScanState** %arrayidx1, align 8
  %tobool = icmp ne %struct.ScanState* %10, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %11 to i64
  %12 = load %struct.ScanState**, %struct.ScanState*** %sb, align 8
  %arrayidx3 = getelementptr inbounds %struct.ScanState*, %struct.ScanState** %12, i64 %idxprom2
  %13 = load %struct.ScanState*, %struct.ScanState** %arrayidx3, align 8
  %index = getelementptr inbounds %struct.ScanState, %struct.ScanState* %13, i32 0, i32 0
  %14 = load i32, i32* %index, align 4
  %add = add i32 %14, 2
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ 1, %cond.false ]
  %15 = load i32, i32* %hash, align 4
  %add4 = add i32 %15, %cond
  store i32 %add4, i32* %hash, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %hash, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @scanner_block_cmp_fn(%struct.ScannerBlock* %a, %struct.ScannerBlock* %b, %struct.hash_fns_t* %fns) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.ScannerBlock*, align 8
  %b.addr = alloca %struct.ScannerBlock*, align 8
  %fns.addr = alloca %struct.hash_fns_t*, align 8
  %i = alloca i32, align 4
  %block_size = alloca i32, align 4
  %sa = alloca %struct.ScanState**, align 8
  %sb = alloca %struct.ScanState**, align 8
  store %struct.ScannerBlock* %a, %struct.ScannerBlock** %a.addr, align 8
  store %struct.ScannerBlock* %b, %struct.ScannerBlock** %b.addr, align 8
  store %struct.hash_fns_t* %fns, %struct.hash_fns_t** %fns.addr, align 8
  %0 = load %struct.hash_fns_t*, %struct.hash_fns_t** %fns.addr, align 8
  %data = getelementptr inbounds %struct.hash_fns_t, %struct.hash_fns_t* %0, i32 0, i32 2
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* %data, i32 0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  %2 = ptrtoint i8* %1 to i32
  store i32 %2, i32* %block_size, align 4
  %3 = load %struct.ScannerBlock*, %struct.ScannerBlock** %a.addr, align 8
  %chars = getelementptr inbounds %struct.ScannerBlock, %struct.ScannerBlock* %3, i32 0, i32 3
  %4 = load %struct.ScanState**, %struct.ScanState*** %chars, align 8
  store %struct.ScanState** %4, %struct.ScanState*** %sa, align 8
  %5 = load %struct.ScannerBlock*, %struct.ScannerBlock** %b.addr, align 8
  %chars1 = getelementptr inbounds %struct.ScannerBlock, %struct.ScannerBlock* %5, i32 0, i32 3
  %6 = load %struct.ScanState**, %struct.ScanState*** %chars1, align 8
  store %struct.ScanState** %6, %struct.ScanState*** %sb, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %block_size, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.ScanState**, %struct.ScanState*** %sa, align 8
  %arrayidx2 = getelementptr inbounds %struct.ScanState*, %struct.ScanState** %10, i64 %idxprom
  %11 = load %struct.ScanState*, %struct.ScanState** %arrayidx2, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %12 to i64
  %13 = load %struct.ScanState**, %struct.ScanState*** %sb, align 8
  %arrayidx4 = getelementptr inbounds %struct.ScanState*, %struct.ScanState** %13, i64 %idxprom3
  %14 = load %struct.ScanState*, %struct.ScanState** %arrayidx4, align 8
  %cmp5 = icmp eq %struct.ScanState* %11, %14
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %15 to i64
  %16 = load %struct.ScanState**, %struct.ScanState*** %sa, align 8
  %arrayidx7 = getelementptr inbounds %struct.ScanState*, %struct.ScanState** %16, i64 %idxprom6
  %17 = load %struct.ScanState*, %struct.ScanState** %arrayidx7, align 8
  %tobool = icmp ne %struct.ScanState* %17, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.11

lor.lhs.false:                                    ; preds = %if.end
  %18 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %18 to i64
  %19 = load %struct.ScanState**, %struct.ScanState*** %sb, align 8
  %arrayidx9 = getelementptr inbounds %struct.ScanState*, %struct.ScanState** %19, i64 %idxprom8
  %20 = load %struct.ScanState*, %struct.ScanState** %arrayidx9, align 8
  %tobool10 = icmp ne %struct.ScanState* %20, null
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %lor.lhs.false, %if.end
  store i32 1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %lor.lhs.false
  %21 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %21 to i64
  %22 = load %struct.ScanState**, %struct.ScanState*** %sa, align 8
  %arrayidx14 = getelementptr inbounds %struct.ScanState*, %struct.ScanState** %22, i64 %idxprom13
  %23 = load %struct.ScanState*, %struct.ScanState** %arrayidx14, align 8
  %index = getelementptr inbounds %struct.ScanState, %struct.ScanState* %23, i32 0, i32 0
  %24 = load i32, i32* %index, align 4
  %25 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %25 to i64
  %26 = load %struct.ScanState**, %struct.ScanState*** %sb, align 8
  %arrayidx16 = getelementptr inbounds %struct.ScanState*, %struct.ScanState** %26, i64 %idxprom15
  %27 = load %struct.ScanState*, %struct.ScanState** %arrayidx16, align 8
  %index17 = getelementptr inbounds %struct.ScanState, %struct.ScanState* %27, i32 0, i32 0
  %28 = load i32, i32* %index17, align 4
  %cmp18 = icmp ne i32 %24, %28
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.12
  store i32 1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.12
  br label %for.inc

for.inc:                                          ; preds = %if.end.20, %if.then
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.19, %if.then.11
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @trans_scanner_block_hash_fn(%struct.ScannerBlock* %b, %struct.hash_fns_t* %fns) #0 {
entry:
  %b.addr = alloca %struct.ScannerBlock*, align 8
  %fns.addr = alloca %struct.hash_fns_t*, align 8
  %hash = alloca i32, align 4
  %i = alloca i32, align 4
  %block_size = alloca i32, align 4
  %sb = alloca %struct.ScanStateTransition**, align 8
  store %struct.ScannerBlock* %b, %struct.ScannerBlock** %b.addr, align 8
  store %struct.hash_fns_t* %fns, %struct.hash_fns_t** %fns.addr, align 8
  store i32 0, i32* %hash, align 4
  %0 = load %struct.hash_fns_t*, %struct.hash_fns_t** %fns.addr, align 8
  %data = getelementptr inbounds %struct.hash_fns_t, %struct.hash_fns_t* %0, i32 0, i32 2
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* %data, i32 0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  %2 = ptrtoint i8* %1 to i32
  store i32 %2, i32* %block_size, align 4
  %3 = load %struct.ScannerBlock*, %struct.ScannerBlock** %b.addr, align 8
  %transitions = getelementptr inbounds %struct.ScannerBlock, %struct.ScannerBlock* %3, i32 0, i32 4
  %4 = load %struct.ScanStateTransition**, %struct.ScanStateTransition*** %transitions, align 8
  store %struct.ScanStateTransition** %4, %struct.ScanStateTransition*** %sb, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %block_size, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %hash, align 4
  %mul = mul i32 %7, 3
  store i32 %mul, i32* %hash, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.ScanStateTransition**, %struct.ScanStateTransition*** %sb, align 8
  %arrayidx1 = getelementptr inbounds %struct.ScanStateTransition*, %struct.ScanStateTransition** %9, i64 %idxprom
  %10 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %arrayidx1, align 8
  %tobool = icmp ne %struct.ScanStateTransition* %10, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %11 to i64
  %12 = load %struct.ScanStateTransition**, %struct.ScanStateTransition*** %sb, align 8
  %arrayidx3 = getelementptr inbounds %struct.ScanStateTransition*, %struct.ScanStateTransition** %12, i64 %idxprom2
  %13 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %arrayidx3, align 8
  %index = getelementptr inbounds %struct.ScanStateTransition, %struct.ScanStateTransition* %13, i32 0, i32 0
  %14 = load i32, i32* %index, align 4
  %add = add i32 %14, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ 0, %cond.false ]
  %15 = load i32, i32* %hash, align 4
  %add4 = add i32 %15, %cond
  store i32 %add4, i32* %hash, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %hash, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @trans_scanner_block_cmp_fn(%struct.ScannerBlock* %a, %struct.ScannerBlock* %b, %struct.hash_fns_t* %fns) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.ScannerBlock*, align 8
  %b.addr = alloca %struct.ScannerBlock*, align 8
  %fns.addr = alloca %struct.hash_fns_t*, align 8
  %i = alloca i32, align 4
  %block_size = alloca i32, align 4
  %sa = alloca %struct.ScanStateTransition**, align 8
  %sb = alloca %struct.ScanStateTransition**, align 8
  store %struct.ScannerBlock* %a, %struct.ScannerBlock** %a.addr, align 8
  store %struct.ScannerBlock* %b, %struct.ScannerBlock** %b.addr, align 8
  store %struct.hash_fns_t* %fns, %struct.hash_fns_t** %fns.addr, align 8
  %0 = load %struct.hash_fns_t*, %struct.hash_fns_t** %fns.addr, align 8
  %data = getelementptr inbounds %struct.hash_fns_t, %struct.hash_fns_t* %0, i32 0, i32 2
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* %data, i32 0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  %2 = ptrtoint i8* %1 to i32
  store i32 %2, i32* %block_size, align 4
  %3 = load %struct.ScannerBlock*, %struct.ScannerBlock** %a.addr, align 8
  %transitions = getelementptr inbounds %struct.ScannerBlock, %struct.ScannerBlock* %3, i32 0, i32 4
  %4 = load %struct.ScanStateTransition**, %struct.ScanStateTransition*** %transitions, align 8
  store %struct.ScanStateTransition** %4, %struct.ScanStateTransition*** %sa, align 8
  %5 = load %struct.ScannerBlock*, %struct.ScannerBlock** %b.addr, align 8
  %transitions1 = getelementptr inbounds %struct.ScannerBlock, %struct.ScannerBlock* %5, i32 0, i32 4
  %6 = load %struct.ScanStateTransition**, %struct.ScanStateTransition*** %transitions1, align 8
  store %struct.ScanStateTransition** %6, %struct.ScanStateTransition*** %sb, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %block_size, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.ScanStateTransition**, %struct.ScanStateTransition*** %sa, align 8
  %arrayidx2 = getelementptr inbounds %struct.ScanStateTransition*, %struct.ScanStateTransition** %10, i64 %idxprom
  %11 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %arrayidx2, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %12 to i64
  %13 = load %struct.ScanStateTransition**, %struct.ScanStateTransition*** %sb, align 8
  %arrayidx4 = getelementptr inbounds %struct.ScanStateTransition*, %struct.ScanStateTransition** %13, i64 %idxprom3
  %14 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %arrayidx4, align 8
  %cmp5 = icmp eq %struct.ScanStateTransition* %11, %14
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %15 to i64
  %16 = load %struct.ScanStateTransition**, %struct.ScanStateTransition*** %sa, align 8
  %arrayidx7 = getelementptr inbounds %struct.ScanStateTransition*, %struct.ScanStateTransition** %16, i64 %idxprom6
  %17 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %arrayidx7, align 8
  %tobool = icmp ne %struct.ScanStateTransition* %17, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.11

lor.lhs.false:                                    ; preds = %if.end
  %18 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %18 to i64
  %19 = load %struct.ScanStateTransition**, %struct.ScanStateTransition*** %sb, align 8
  %arrayidx9 = getelementptr inbounds %struct.ScanStateTransition*, %struct.ScanStateTransition** %19, i64 %idxprom8
  %20 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %arrayidx9, align 8
  %tobool10 = icmp ne %struct.ScanStateTransition* %20, null
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %lor.lhs.false, %if.end
  store i32 1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %lor.lhs.false
  %21 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %21 to i64
  %22 = load %struct.ScanStateTransition**, %struct.ScanStateTransition*** %sa, align 8
  %arrayidx14 = getelementptr inbounds %struct.ScanStateTransition*, %struct.ScanStateTransition** %22, i64 %idxprom13
  %23 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %arrayidx14, align 8
  %index = getelementptr inbounds %struct.ScanStateTransition, %struct.ScanStateTransition* %23, i32 0, i32 0
  %24 = load i32, i32* %index, align 4
  %25 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %25 to i64
  %26 = load %struct.ScanStateTransition**, %struct.ScanStateTransition*** %sb, align 8
  %arrayidx16 = getelementptr inbounds %struct.ScanStateTransition*, %struct.ScanStateTransition** %26, i64 %idxprom15
  %27 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %arrayidx16, align 8
  %index17 = getelementptr inbounds %struct.ScanStateTransition, %struct.ScanStateTransition* %27, i32 0, i32 0
  %28 = load i32, i32* %index17, align 4
  %cmp18 = icmp ne i32 %24, %28
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.12
  store i32 1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.12
  br label %for.inc

for.inc:                                          ; preds = %if.end.20, %if.then
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.19, %if.then.11
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @shift_hash_fn(%struct.Action* %sa, %struct.hash_fns_t* %fns) #0 {
entry:
  %sa.addr = alloca %struct.Action*, align 8
  %fns.addr = alloca %struct.hash_fns_t*, align 8
  store %struct.Action* %sa, %struct.Action** %sa.addr, align 8
  store %struct.hash_fns_t* %fns, %struct.hash_fns_t** %fns.addr, align 8
  %0 = load %struct.Action*, %struct.Action** %sa.addr, align 8
  %term = getelementptr inbounds %struct.Action, %struct.Action* %0, i32 0, i32 1
  %1 = load %struct.Term*, %struct.Term** %term, align 8
  %index = getelementptr inbounds %struct.Term, %struct.Term* %1, i32 0, i32 1
  %2 = load i32, i32* %index, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @shift_cmp_fn(%struct.Action* %sa, %struct.Action* %sb, %struct.hash_fns_t* %fns) #0 {
entry:
  %sa.addr = alloca %struct.Action*, align 8
  %sb.addr = alloca %struct.Action*, align 8
  %fns.addr = alloca %struct.hash_fns_t*, align 8
  store %struct.Action* %sa, %struct.Action** %sa.addr, align 8
  store %struct.Action* %sb, %struct.Action** %sb.addr, align 8
  store %struct.hash_fns_t* %fns, %struct.hash_fns_t** %fns.addr, align 8
  %0 = load %struct.Action*, %struct.Action** %sa.addr, align 8
  %term = getelementptr inbounds %struct.Action, %struct.Action* %0, i32 0, i32 1
  %1 = load %struct.Term*, %struct.Term** %term, align 8
  %index = getelementptr inbounds %struct.Term, %struct.Term* %1, i32 0, i32 1
  %2 = load i32, i32* %index, align 4
  %3 = load %struct.Action*, %struct.Action** %sb.addr, align 8
  %term1 = getelementptr inbounds %struct.Action, %struct.Action* %3, i32 0, i32 1
  %4 = load %struct.Term*, %struct.Term** %term1, align 8
  %index2 = getelementptr inbounds %struct.Term, %struct.Term* %4, i32 0, i32 1
  %5 = load i32, i32* %index2, align 4
  %cmp = icmp ne i32 %2, %5
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @er_hint_hash_fn(%struct.State* %a, %struct.hash_fns_t* %fns) #0 {
entry:
  %a.addr = alloca %struct.State*, align 8
  %fns.addr = alloca %struct.hash_fns_t*, align 8
  %sa = alloca %struct.VecHint*, align 8
  %hash = alloca i32, align 4
  %i = alloca i32, align 4
  %ta = alloca %struct.Term*, align 8
  store %struct.State* %a, %struct.State** %a.addr, align 8
  store %struct.hash_fns_t* %fns, %struct.hash_fns_t** %fns.addr, align 8
  %0 = load %struct.State*, %struct.State** %a.addr, align 8
  %error_recovery_hints = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  store %struct.VecHint* %error_recovery_hints, %struct.VecHint** %sa, align 8
  store i32 0, i32* %hash, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.VecHint*, %struct.VecHint** %sa, align 8
  %n = getelementptr inbounds %struct.VecHint, %struct.VecHint* %2, i32 0, i32 0
  %3 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct.VecHint*, %struct.VecHint** %sa, align 8
  %v = getelementptr inbounds %struct.VecHint, %struct.VecHint* %5, i32 0, i32 2
  %6 = load %struct.Hint**, %struct.Hint*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.Hint*, %struct.Hint** %6, i64 %idxprom
  %7 = load %struct.Hint*, %struct.Hint** %arrayidx, align 8
  %rule = getelementptr inbounds %struct.Hint, %struct.Hint* %7, i32 0, i32 2
  %8 = load %struct.Rule*, %struct.Rule** %rule, align 8
  %elems = getelementptr inbounds %struct.Rule, %struct.Rule* %8, i32 0, i32 6
  %n1 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems, i32 0, i32 0
  %9 = load i32, i32* %n1, align 4
  %sub = sub i32 %9, 1
  %idxprom2 = zext i32 %sub to i64
  %10 = load i32, i32* %i, align 4
  %idxprom3 = zext i32 %10 to i64
  %11 = load %struct.VecHint*, %struct.VecHint** %sa, align 8
  %v4 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %11, i32 0, i32 2
  %12 = load %struct.Hint**, %struct.Hint*** %v4, align 8
  %arrayidx5 = getelementptr inbounds %struct.Hint*, %struct.Hint** %12, i64 %idxprom3
  %13 = load %struct.Hint*, %struct.Hint** %arrayidx5, align 8
  %rule6 = getelementptr inbounds %struct.Hint, %struct.Hint* %13, i32 0, i32 2
  %14 = load %struct.Rule*, %struct.Rule** %rule6, align 8
  %elems7 = getelementptr inbounds %struct.Rule, %struct.Rule* %14, i32 0, i32 6
  %v8 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems7, i32 0, i32 2
  %15 = load %struct.Elem**, %struct.Elem*** %v8, align 8
  %arrayidx9 = getelementptr inbounds %struct.Elem*, %struct.Elem** %15, i64 %idxprom2
  %16 = load %struct.Elem*, %struct.Elem** %arrayidx9, align 8
  %e = getelementptr inbounds %struct.Elem, %struct.Elem* %16, i32 0, i32 3
  %term = bitcast %union.anon* %e to %struct.Term**
  %17 = load %struct.Term*, %struct.Term** %term, align 8
  store %struct.Term* %17, %struct.Term** %ta, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom10 = zext i32 %18 to i64
  %19 = load %struct.VecHint*, %struct.VecHint** %sa, align 8
  %v11 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %19, i32 0, i32 2
  %20 = load %struct.Hint**, %struct.Hint*** %v11, align 8
  %arrayidx12 = getelementptr inbounds %struct.Hint*, %struct.Hint** %20, i64 %idxprom10
  %21 = load %struct.Hint*, %struct.Hint** %arrayidx12, align 8
  %depth = getelementptr inbounds %struct.Hint, %struct.Hint* %21, i32 0, i32 0
  %22 = load i32, i32* %depth, align 4
  %add = add i32 %22, 1
  %mul = mul i32 %add, 13
  %23 = load i32, i32* %hash, align 4
  %add13 = add i32 %23, %mul
  store i32 %add13, i32* %hash, align 4
  %24 = load %struct.Term*, %struct.Term** %ta, align 8
  %string = getelementptr inbounds %struct.Term, %struct.Term* %24, i32 0, i32 5
  %25 = load i8*, i8** %string, align 8
  %26 = load %struct.Term*, %struct.Term** %ta, align 8
  %string_len = getelementptr inbounds %struct.Term, %struct.Term* %26, i32 0, i32 6
  %27 = load i32, i32* %string_len, align 4
  %call = call i32 @strhashl(i8* %25, i32 %27)
  %28 = load i32, i32* %hash, align 4
  %add14 = add i32 %28, %call
  store i32 %add14, i32* %hash, align 4
  %29 = load i32, i32* %i, align 4
  %idxprom15 = zext i32 %29 to i64
  %30 = load %struct.VecHint*, %struct.VecHint** %sa, align 8
  %v16 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %30, i32 0, i32 2
  %31 = load %struct.Hint**, %struct.Hint*** %v16, align 8
  %arrayidx17 = getelementptr inbounds %struct.Hint*, %struct.Hint** %31, i64 %idxprom15
  %32 = load %struct.Hint*, %struct.Hint** %arrayidx17, align 8
  %rule18 = getelementptr inbounds %struct.Hint, %struct.Hint* %32, i32 0, i32 2
  %33 = load %struct.Rule*, %struct.Rule** %rule18, align 8
  %tobool = icmp ne %struct.Rule* %33, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %34 = load i32, i32* %i, align 4
  %idxprom19 = zext i32 %34 to i64
  %35 = load %struct.VecHint*, %struct.VecHint** %sa, align 8
  %v20 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %35, i32 0, i32 2
  %36 = load %struct.Hint**, %struct.Hint*** %v20, align 8
  %arrayidx21 = getelementptr inbounds %struct.Hint*, %struct.Hint** %36, i64 %idxprom19
  %37 = load %struct.Hint*, %struct.Hint** %arrayidx21, align 8
  %rule22 = getelementptr inbounds %struct.Hint, %struct.Hint* %37, i32 0, i32 2
  %38 = load %struct.Rule*, %struct.Rule** %rule22, align 8
  %prod = getelementptr inbounds %struct.Rule, %struct.Rule* %38, i32 0, i32 1
  %39 = load %struct.Production*, %struct.Production** %prod, align 8
  %index = getelementptr inbounds %struct.Production, %struct.Production* %39, i32 0, i32 3
  %40 = load i32, i32* %index, align 4
  %mul23 = mul i32 %40, 10007
  %41 = load i32, i32* %hash, align 4
  %add24 = add i32 %41, %mul23
  store i32 %add24, i32* %hash, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %42 = load i32, i32* %i, align 4
  %inc = add i32 %42, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load i32, i32* %hash, align 4
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define internal i32 @er_hint_cmp_fn(%struct.State* %a, %struct.State* %b, %struct.hash_fns_t* %fns) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.State*, align 8
  %b.addr = alloca %struct.State*, align 8
  %fns.addr = alloca %struct.hash_fns_t*, align 8
  %i = alloca i32, align 4
  %sa = alloca %struct.VecHint*, align 8
  %sb = alloca %struct.VecHint*, align 8
  %ta = alloca %struct.Term*, align 8
  %tb = alloca %struct.Term*, align 8
  store %struct.State* %a, %struct.State** %a.addr, align 8
  store %struct.State* %b, %struct.State** %b.addr, align 8
  store %struct.hash_fns_t* %fns, %struct.hash_fns_t** %fns.addr, align 8
  %0 = load %struct.State*, %struct.State** %a.addr, align 8
  %error_recovery_hints = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  store %struct.VecHint* %error_recovery_hints, %struct.VecHint** %sa, align 8
  %1 = load %struct.State*, %struct.State** %b.addr, align 8
  %error_recovery_hints1 = getelementptr inbounds %struct.State, %struct.State* %1, i32 0, i32 8
  store %struct.VecHint* %error_recovery_hints1, %struct.VecHint** %sb, align 8
  %2 = load %struct.VecHint*, %struct.VecHint** %sa, align 8
  %n = getelementptr inbounds %struct.VecHint, %struct.VecHint* %2, i32 0, i32 0
  %3 = load i32, i32* %n, align 4
  %4 = load %struct.VecHint*, %struct.VecHint** %sb, align 8
  %n2 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %4, i32 0, i32 0
  %5 = load i32, i32* %n2, align 4
  %cmp = icmp ne i32 %3, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.VecHint*, %struct.VecHint** %sa, align 8
  %n3 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %7, i32 0, i32 0
  %8 = load i32, i32* %n3, align 4
  %cmp4 = icmp ult i32 %6, %8
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.VecHint*, %struct.VecHint** %sa, align 8
  %v = getelementptr inbounds %struct.VecHint, %struct.VecHint* %10, i32 0, i32 2
  %11 = load %struct.Hint**, %struct.Hint*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.Hint*, %struct.Hint** %11, i64 %idxprom
  %12 = load %struct.Hint*, %struct.Hint** %arrayidx, align 8
  %rule = getelementptr inbounds %struct.Hint, %struct.Hint* %12, i32 0, i32 2
  %13 = load %struct.Rule*, %struct.Rule** %rule, align 8
  %elems = getelementptr inbounds %struct.Rule, %struct.Rule* %13, i32 0, i32 6
  %n5 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems, i32 0, i32 0
  %14 = load i32, i32* %n5, align 4
  %sub = sub i32 %14, 1
  %idxprom6 = zext i32 %sub to i64
  %15 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %15 to i64
  %16 = load %struct.VecHint*, %struct.VecHint** %sa, align 8
  %v8 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %16, i32 0, i32 2
  %17 = load %struct.Hint**, %struct.Hint*** %v8, align 8
  %arrayidx9 = getelementptr inbounds %struct.Hint*, %struct.Hint** %17, i64 %idxprom7
  %18 = load %struct.Hint*, %struct.Hint** %arrayidx9, align 8
  %rule10 = getelementptr inbounds %struct.Hint, %struct.Hint* %18, i32 0, i32 2
  %19 = load %struct.Rule*, %struct.Rule** %rule10, align 8
  %elems11 = getelementptr inbounds %struct.Rule, %struct.Rule* %19, i32 0, i32 6
  %v12 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems11, i32 0, i32 2
  %20 = load %struct.Elem**, %struct.Elem*** %v12, align 8
  %arrayidx13 = getelementptr inbounds %struct.Elem*, %struct.Elem** %20, i64 %idxprom6
  %21 = load %struct.Elem*, %struct.Elem** %arrayidx13, align 8
  %e = getelementptr inbounds %struct.Elem, %struct.Elem* %21, i32 0, i32 3
  %term = bitcast %union.anon* %e to %struct.Term**
  %22 = load %struct.Term*, %struct.Term** %term, align 8
  store %struct.Term* %22, %struct.Term** %ta, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %23 to i64
  %24 = load %struct.VecHint*, %struct.VecHint** %sb, align 8
  %v15 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %24, i32 0, i32 2
  %25 = load %struct.Hint**, %struct.Hint*** %v15, align 8
  %arrayidx16 = getelementptr inbounds %struct.Hint*, %struct.Hint** %25, i64 %idxprom14
  %26 = load %struct.Hint*, %struct.Hint** %arrayidx16, align 8
  %rule17 = getelementptr inbounds %struct.Hint, %struct.Hint* %26, i32 0, i32 2
  %27 = load %struct.Rule*, %struct.Rule** %rule17, align 8
  %elems18 = getelementptr inbounds %struct.Rule, %struct.Rule* %27, i32 0, i32 6
  %n19 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems18, i32 0, i32 0
  %28 = load i32, i32* %n19, align 4
  %sub20 = sub i32 %28, 1
  %idxprom21 = zext i32 %sub20 to i64
  %29 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %29 to i64
  %30 = load %struct.VecHint*, %struct.VecHint** %sb, align 8
  %v23 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %30, i32 0, i32 2
  %31 = load %struct.Hint**, %struct.Hint*** %v23, align 8
  %arrayidx24 = getelementptr inbounds %struct.Hint*, %struct.Hint** %31, i64 %idxprom22
  %32 = load %struct.Hint*, %struct.Hint** %arrayidx24, align 8
  %rule25 = getelementptr inbounds %struct.Hint, %struct.Hint* %32, i32 0, i32 2
  %33 = load %struct.Rule*, %struct.Rule** %rule25, align 8
  %elems26 = getelementptr inbounds %struct.Rule, %struct.Rule* %33, i32 0, i32 6
  %v27 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems26, i32 0, i32 2
  %34 = load %struct.Elem**, %struct.Elem*** %v27, align 8
  %arrayidx28 = getelementptr inbounds %struct.Elem*, %struct.Elem** %34, i64 %idxprom21
  %35 = load %struct.Elem*, %struct.Elem** %arrayidx28, align 8
  %e29 = getelementptr inbounds %struct.Elem, %struct.Elem* %35, i32 0, i32 3
  %term30 = bitcast %union.anon* %e29 to %struct.Term**
  %36 = load %struct.Term*, %struct.Term** %term30, align 8
  store %struct.Term* %36, %struct.Term** %tb, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %37 to i64
  %38 = load %struct.VecHint*, %struct.VecHint** %sa, align 8
  %v32 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %38, i32 0, i32 2
  %39 = load %struct.Hint**, %struct.Hint*** %v32, align 8
  %arrayidx33 = getelementptr inbounds %struct.Hint*, %struct.Hint** %39, i64 %idxprom31
  %40 = load %struct.Hint*, %struct.Hint** %arrayidx33, align 8
  %depth = getelementptr inbounds %struct.Hint, %struct.Hint* %40, i32 0, i32 0
  %41 = load i32, i32* %depth, align 4
  %42 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %42 to i64
  %43 = load %struct.VecHint*, %struct.VecHint** %sb, align 8
  %v35 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %43, i32 0, i32 2
  %44 = load %struct.Hint**, %struct.Hint*** %v35, align 8
  %arrayidx36 = getelementptr inbounds %struct.Hint*, %struct.Hint** %44, i64 %idxprom34
  %45 = load %struct.Hint*, %struct.Hint** %arrayidx36, align 8
  %depth37 = getelementptr inbounds %struct.Hint, %struct.Hint* %45, i32 0, i32 0
  %46 = load i32, i32* %depth37, align 4
  %cmp38 = icmp ne i32 %41, %46
  br i1 %cmp38, label %if.then.52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %47 = load %struct.Term*, %struct.Term** %ta, align 8
  %string = getelementptr inbounds %struct.Term, %struct.Term* %47, i32 0, i32 5
  %48 = load i8*, i8** %string, align 8
  %49 = load %struct.Term*, %struct.Term** %tb, align 8
  %string39 = getelementptr inbounds %struct.Term, %struct.Term* %49, i32 0, i32 5
  %50 = load i8*, i8** %string39, align 8
  %call = call i32 @strcmp(i8* %48, i8* %50) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.52, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %lor.lhs.false
  %51 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %51 to i64
  %52 = load %struct.VecHint*, %struct.VecHint** %sa, align 8
  %v42 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %52, i32 0, i32 2
  %53 = load %struct.Hint**, %struct.Hint*** %v42, align 8
  %arrayidx43 = getelementptr inbounds %struct.Hint*, %struct.Hint** %53, i64 %idxprom41
  %54 = load %struct.Hint*, %struct.Hint** %arrayidx43, align 8
  %rule44 = getelementptr inbounds %struct.Hint, %struct.Hint* %54, i32 0, i32 2
  %55 = load %struct.Rule*, %struct.Rule** %rule44, align 8
  %prod = getelementptr inbounds %struct.Rule, %struct.Rule* %55, i32 0, i32 1
  %56 = load %struct.Production*, %struct.Production** %prod, align 8
  %index = getelementptr inbounds %struct.Production, %struct.Production* %56, i32 0, i32 3
  %57 = load i32, i32* %index, align 4
  %58 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %58 to i64
  %59 = load %struct.VecHint*, %struct.VecHint** %sb, align 8
  %v46 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %59, i32 0, i32 2
  %60 = load %struct.Hint**, %struct.Hint*** %v46, align 8
  %arrayidx47 = getelementptr inbounds %struct.Hint*, %struct.Hint** %60, i64 %idxprom45
  %61 = load %struct.Hint*, %struct.Hint** %arrayidx47, align 8
  %rule48 = getelementptr inbounds %struct.Hint, %struct.Hint* %61, i32 0, i32 2
  %62 = load %struct.Rule*, %struct.Rule** %rule48, align 8
  %prod49 = getelementptr inbounds %struct.Rule, %struct.Rule* %62, i32 0, i32 1
  %63 = load %struct.Production*, %struct.Production** %prod49, align 8
  %index50 = getelementptr inbounds %struct.Production, %struct.Production* %63, i32 0, i32 3
  %64 = load i32, i32* %index50, align 4
  %cmp51 = icmp ne i32 %57, %64
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %lor.lhs.false.40, %lor.lhs.false, %for.body
  store i32 1, i32* %retval
  br label %return

if.end.53:                                        ; preds = %lor.lhs.false.40
  br label %for.inc

for.inc:                                          ; preds = %if.end.53
  %65 = load i32, i32* %i, align 4
  %inc = add nsw i32 %65, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.52, %if.then
  %66 = load i32, i32* %retval
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define void @write_parser_tables_as_C(%struct.Grammar* %g, i8* %base_pathname, i8* %tag) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %base_pathname.addr = alloca i8*, align 8
  %tag.addr = alloca i8*, align 8
  %pathname = alloca [4096 x i8], align 16
  %fp = alloca %struct._IO_FILE*, align 8
  %whitespace_production = alloca i32, align 4
  %header = alloca i32, align 4
  %er_hash = alloca %struct.VecState, align 8
  %p = alloca %struct.Production*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store i8* %base_pathname, i8** %base_pathname.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  store i32 0, i32* %whitespace_production, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %n = getelementptr inbounds %struct.VecState, %struct.VecState* %er_hash, i32 0, i32 0
  store i32 0, i32* %n, align 4
  %v = getelementptr inbounds %struct.VecState, %struct.VecState* %er_hash, i32 0, i32 2
  store %struct.State** null, %struct.State*** %v, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %pathname, i32 0, i32 0
  %0 = load i8*, i8** %base_pathname.addr, align 8
  %call = call i8* @strcpy(i8* %arraydecay, i8* %0) #5
  %arraydecay1 = getelementptr inbounds [4096 x i8], [4096 x i8]* %pathname, i32 0, i32 0
  %call2 = call i8* @strcat(i8* %arraydecay1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)) #5
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %fp, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  %arraydecay3 = getelementptr inbounds [4096 x i8], [4096 x i8]* %pathname, i32 0, i32 0
  call void (i8*, ...) @d_fail(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0), i8* %arraydecay3)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %3 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %4 = load i8*, i8** %base_pathname.addr, align 8
  %5 = load i8*, i8** %tag.addr, align 8
  %call4 = call i32 @write_header_as_C(%struct.Grammar* %3, i8* %4, i8* %5)
  store i32 %call4, i32* %header, align 4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %7 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %8 = load i8*, i8** %tag.addr, align 8
  call void @write_global_code_as_C(%struct._IO_FILE* %6, %struct.Grammar* %7, i8* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0))
  %10 = load i32, i32* %header, align 4
  %tobool6 = icmp ne i32 %10, 0
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %12 = load i8*, i8** %base_pathname.addr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0), i8* %12)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %15 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %16 = load i8*, i8** %tag.addr, align 8
  call void @write_reductions_as_C(%struct._IO_FILE* %14, %struct.Grammar* %15, i8* %16)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %18 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %19 = load i8*, i8** %tag.addr, align 8
  call void @write_scanner_data_as_C(%struct._IO_FILE* %17, %struct.Grammar* %18, i8* %19)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %21 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %22 = load i8*, i8** %tag.addr, align 8
  call void @write_scanner_code_as_C(%struct._IO_FILE* %20, %struct.Grammar* %21, i8* %22)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %24 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %25 = load i8*, i8** %tag.addr, align 8
  call void @write_goto_data_as_C(%struct._IO_FILE* %23, %struct.Grammar* %24, i8* %25)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %27 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %28 = load i8*, i8** %tag.addr, align 8
  call void @write_error_data_as_C(%struct._IO_FILE* %26, %struct.Grammar* %27, %struct.VecState* %er_hash, i8* %28)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %30 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %31 = load i8*, i8** %tag.addr, align 8
  call void @write_state_data_as_C(%struct._IO_FILE* %29, %struct.Grammar* %30, %struct.VecState* %er_hash, i8* %31)
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %33 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %34 = load i8*, i8** %tag.addr, align 8
  call void @write_symbol_data_as_C(%struct._IO_FILE* %32, %struct.Grammar* %33, i8* %34)
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %36 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %37 = load i8*, i8** %tag.addr, align 8
  call void @write_passes_as_C(%struct._IO_FILE* %35, %struct.Grammar* %36, i8* %37)
  %38 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %call11 = call %struct.Production* @lookup_production(%struct.Grammar* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 10)
  store %struct.Production* %call11, %struct.Production** %p, align 8
  %tobool12 = icmp ne %struct.Production* %call11, null
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.9
  %39 = load %struct.Production*, %struct.Production** %p, align 8
  %state = getelementptr inbounds %struct.Production, %struct.Production* %39, i32 0, i32 8
  %40 = load %struct.State*, %struct.State** %state, align 8
  %index = getelementptr inbounds %struct.State, %struct.State* %40, i32 0, i32 0
  %41 = load i32, i32* %index, align 4
  store i32 %41, i32* %whitespace_production, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.9
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %43 = load i8*, i8** %tag.addr, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i8* %43)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %45 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states = getelementptr inbounds %struct.Grammar, %struct.Grammar* %45, i32 0, i32 3
  %n16 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states, i32 0, i32 0
  %46 = load i32, i32* %n16, align 4
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %46)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %48 = load i8*, i8** %tag.addr, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* %48)
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %50 = load i8*, i8** %tag.addr, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* %50)
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %52 = load i32, i32* %whitespace_production, align 4
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %52)
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %54 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions = getelementptr inbounds %struct.Grammar, %struct.Grammar* %54, i32 0, i32 1
  %n21 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions, i32 0, i32 0
  %55 = load i32, i32* %n21, align 4
  %56 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals = getelementptr inbounds %struct.Grammar, %struct.Grammar* %56, i32 0, i32 2
  %n22 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals, i32 0, i32 0
  %57 = load i32, i32* %n22, align 4
  %add = add i32 %55, %57
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %add)
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %59 = load i8*, i8** %tag.addr, align 8
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* %59)
  %60 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %default_white_space = getelementptr inbounds %struct.Grammar, %struct.Grammar* %60, i32 0, i32 9
  %61 = load i8*, i8** %default_white_space, align 8
  %tobool25 = icmp ne i8* %61, null
  br i1 %tobool25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.end.14
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %63 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %default_white_space27 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %63, i32 0, i32 9
  %64 = load i8*, i8** %default_white_space27, align 8
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* %64)
  br label %if.end.30

if.else:                                          ; preds = %if.end.14
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %if.then.26
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %67 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %passes = getelementptr inbounds %struct.Grammar, %struct.Grammar* %67, i32 0, i32 8
  %n31 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %passes, i32 0, i32 0
  %68 = load i32, i32* %n31, align 4
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %68)
  %69 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %passes33 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %69, i32 0, i32 8
  %n34 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %passes33, i32 0, i32 0
  %70 = load i32, i32* %n34, align 4
  %tobool35 = icmp ne i32 %70, 0
  br i1 %tobool35, label %if.then.36, label %if.else.38

if.then.36:                                       ; preds = %if.end.30
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %72 = load i8*, i8** %tag.addr, align 8
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* %72)
  br label %if.end.40

if.else.38:                                       ; preds = %if.end.30
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.38, %if.then.36
  %74 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %save_parse_tree = getelementptr inbounds %struct.Grammar, %struct.Grammar* %74, i32 0, i32 16
  %75 = load i32, i32* %save_parse_tree, align 4
  %tobool41 = icmp ne i32 %75, 0
  br i1 %tobool41, label %if.then.42, label %if.else.44

if.then.42:                                       ; preds = %if.end.40
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.46

if.else.44:                                       ; preds = %if.end.40
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.44, %if.then.42
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #1

declare void @d_fail(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @write_header_as_C(%struct.Grammar* %g, i8* %base_pathname, i8* %tag) #0 {
entry:
  %retval = alloca i32, align 4
  %g.addr = alloca %struct.Grammar*, align 8
  %base_pathname.addr = alloca i8*, align 8
  %tag.addr = alloca i8*, align 8
  %pathname = alloca [4096 x i8], align 16
  %i = alloca i32, align 4
  %tokens = alloca i32, align 4
  %states = alloca i32, align 4
  %col = alloca i32, align 4
  %hfp = alloca %struct._IO_FILE*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store i8* %base_pathname, i8** %base_pathname.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  store i32 0, i32* %tokens, align 4
  store i32 0, i32* %states, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals = getelementptr inbounds %struct.Grammar, %struct.Grammar* %1, i32 0, i32 2
  %n = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals, i32 0, i32 0
  %2 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals1 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %4, i32 0, i32 2
  %v = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals1, i32 0, i32 2
  %5 = load %struct.Term**, %struct.Term*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.Term*, %struct.Term** %5, i64 %idxprom
  %6 = load %struct.Term*, %struct.Term** %arrayidx, align 8
  %kind = getelementptr inbounds %struct.Term, %struct.Term* %6, i32 0, i32 0
  %7 = load i32, i32* %kind, align 4
  %cmp2 = icmp eq i32 %7, 3
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %tokens, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states_for_all_nterms = getelementptr inbounds %struct.Grammar, %struct.Grammar* %9, i32 0, i32 13
  %10 = load i32, i32* %states_for_all_nterms, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %for.end
  store i32 1, i32* %states, align 4
  br label %if.end.14

if.else:                                          ; preds = %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.11, %if.else
  %11 = load i32, i32* %i, align 4
  %12 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions = getelementptr inbounds %struct.Grammar, %struct.Grammar* %12, i32 0, i32 1
  %n5 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions, i32 0, i32 0
  %13 = load i32, i32* %n5, align 4
  %cmp6 = icmp ult i32 %11, %13
  br i1 %cmp6, label %for.body.7, label %for.end.13

for.body.7:                                       ; preds = %for.cond.4
  %14 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %15 = load i32, i32* %i, align 4
  %call = call i32 @state_for_declaration(%struct.Grammar* %14, i32 %15)
  %tobool8 = icmp ne i32 %call, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.body.7
  store i32 1, i32* %states, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %for.body.7
  br label %for.inc.11

for.inc.11:                                       ; preds = %if.end.10
  %16 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %16, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond.4

for.end.13:                                       ; preds = %for.cond.4
  br label %if.end.14

if.end.14:                                        ; preds = %for.end.13, %if.then.3
  %17 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %write_header = getelementptr inbounds %struct.Grammar, %struct.Grammar* %17, i32 0, i32 21
  %18 = load i32, i32* %write_header, align 4
  %cmp15 = icmp sgt i32 %18, 0
  br i1 %cmp15, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.14
  %19 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %write_header16 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %19, i32 0, i32 21
  %20 = load i32, i32* %write_header16, align 4
  %cmp17 = icmp slt i32 %20, 0
  br i1 %cmp17, label %land.lhs.true, label %if.end.145

land.lhs.true:                                    ; preds = %lor.lhs.false
  %21 = load i32, i32* %tokens, align 4
  %tobool18 = icmp ne i32 %21, 0
  br i1 %tobool18, label %if.then.21, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %land.lhs.true
  %22 = load i32, i32* %states, align 4
  %tobool20 = icmp ne i32 %22, 0
  br i1 %tobool20, label %if.then.21, label %if.end.145

if.then.21:                                       ; preds = %lor.lhs.false.19, %land.lhs.true, %if.end.14
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %pathname, i32 0, i32 0
  %23 = load i8*, i8** %base_pathname.addr, align 8
  %call22 = call i8* @strcpy(i8* %arraydecay, i8* %23) #5
  %arraydecay23 = getelementptr inbounds [4096 x i8], [4096 x i8]* %pathname, i32 0, i32 0
  %call24 = call i8* @strcat(i8* %arraydecay23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0)) #5
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %24, %struct._IO_FILE** %hfp, align 8
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %hfp, align 8
  %tobool25 = icmp ne %struct._IO_FILE* %25, null
  br i1 %tobool25, label %if.end.28, label %if.then.26

if.then.26:                                       ; preds = %if.then.21
  %arraydecay27 = getelementptr inbounds [4096 x i8], [4096 x i8]* %pathname, i32 0, i32 0
  call void (i8*, ...) @d_fail(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0), i8* %arraydecay27)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.then.21
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %hfp, align 8
  %27 = load i8*, i8** %tag.addr, align 8
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0), i8* %27)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %hfp, align 8
  %29 = load i8*, i8** %tag.addr, align 8
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i8* %29)
  %30 = load i32, i32* %tokens, align 4
  %tobool31 = icmp ne i32 %30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.109

if.then.32:                                       ; preds = %if.end.28
  %31 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %token_type = getelementptr inbounds %struct.Grammar, %struct.Grammar* %31, i32 0, i32 22
  %32 = load i32, i32* %token_type, align 4
  %tobool33 = icmp ne i32 %32, 0
  br i1 %tobool33, label %if.else.62, label %if.then.34

if.then.34:                                       ; preds = %if.then.32
  store i32 0, i32* %i, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.59, %if.then.34
  %33 = load i32, i32* %i, align 4
  %34 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals36 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %34, i32 0, i32 2
  %n37 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals36, i32 0, i32 0
  %35 = load i32, i32* %n37, align 4
  %cmp38 = icmp ult i32 %33, %35
  br i1 %cmp38, label %for.body.39, label %for.end.61

for.body.39:                                      ; preds = %for.cond.35
  %36 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %36 to i64
  %37 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals41 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %37, i32 0, i32 2
  %v42 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals41, i32 0, i32 2
  %38 = load %struct.Term**, %struct.Term*** %v42, align 8
  %arrayidx43 = getelementptr inbounds %struct.Term*, %struct.Term** %38, i64 %idxprom40
  %39 = load %struct.Term*, %struct.Term** %arrayidx43, align 8
  %kind44 = getelementptr inbounds %struct.Term, %struct.Term* %39, i32 0, i32 0
  %40 = load i32, i32* %kind44, align 4
  %cmp45 = icmp eq i32 %40, 3
  br i1 %cmp45, label %if.then.46, label %if.end.58

if.then.46:                                       ; preds = %for.body.39
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %hfp, align 8
  %42 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %42 to i64
  %43 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals48 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %43, i32 0, i32 2
  %v49 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals48, i32 0, i32 2
  %44 = load %struct.Term**, %struct.Term*** %v49, align 8
  %arrayidx50 = getelementptr inbounds %struct.Term*, %struct.Term** %44, i64 %idxprom47
  %45 = load %struct.Term*, %struct.Term** %arrayidx50, align 8
  %string = getelementptr inbounds %struct.Term, %struct.Term* %45, i32 0, i32 5
  %46 = load i8*, i8** %string, align 8
  %47 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %47 to i64
  %48 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals52 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %48, i32 0, i32 2
  %v53 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals52, i32 0, i32 2
  %49 = load %struct.Term**, %struct.Term*** %v53, align 8
  %arrayidx54 = getelementptr inbounds %struct.Term*, %struct.Term** %49, i64 %idxprom51
  %50 = load %struct.Term*, %struct.Term** %arrayidx54, align 8
  %index = getelementptr inbounds %struct.Term, %struct.Term* %50, i32 0, i32 1
  %51 = load i32, i32* %index, align 4
  %52 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions55 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %52, i32 0, i32 1
  %n56 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions55, i32 0, i32 0
  %53 = load i32, i32* %n56, align 4
  %add = add i32 %51, %53
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0), i8* %46, i32 %add)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.46, %for.body.39
  br label %for.inc.59

for.inc.59:                                       ; preds = %if.end.58
  %54 = load i32, i32* %i, align 4
  %inc60 = add nsw i32 %54, 1
  store i32 %inc60, i32* %i, align 4
  br label %for.cond.35

for.end.61:                                       ; preds = %for.cond.35
  br label %if.end.108

if.else.62:                                       ; preds = %if.then.32
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %hfp, align 8
  %56 = load i8*, i8** %tag.addr, align 8
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i8* %56)
  store i32 0, i32* %col, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.104, %if.else.62
  %57 = load i32, i32* %i, align 4
  %58 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals65 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %58, i32 0, i32 2
  %n66 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals65, i32 0, i32 0
  %59 = load i32, i32* %n66, align 4
  %cmp67 = icmp ult i32 %57, %59
  br i1 %cmp67, label %for.body.68, label %for.end.106

for.body.68:                                      ; preds = %for.cond.64
  %60 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %60 to i64
  %61 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals70 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %61, i32 0, i32 2
  %v71 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals70, i32 0, i32 2
  %62 = load %struct.Term**, %struct.Term*** %v71, align 8
  %arrayidx72 = getelementptr inbounds %struct.Term*, %struct.Term** %62, i64 %idxprom69
  %63 = load %struct.Term*, %struct.Term** %arrayidx72, align 8
  %kind73 = getelementptr inbounds %struct.Term, %struct.Term* %63, i32 0, i32 0
  %64 = load i32, i32* %kind73, align 4
  %cmp74 = icmp eq i32 %64, 3
  br i1 %cmp74, label %if.then.75, label %if.end.103

if.then.75:                                       ; preds = %for.body.68
  %65 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %65 to i64
  %66 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals77 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %66, i32 0, i32 2
  %v78 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals77, i32 0, i32 2
  %67 = load %struct.Term**, %struct.Term*** %v78, align 8
  %arrayidx79 = getelementptr inbounds %struct.Term*, %struct.Term** %67, i64 %idxprom76
  %68 = load %struct.Term*, %struct.Term** %arrayidx79, align 8
  %string_len = getelementptr inbounds %struct.Term, %struct.Term* %68, i32 0, i32 6
  %69 = load i32, i32* %string_len, align 4
  %add80 = add nsw i32 %69, 7
  %70 = load i32, i32* %col, align 4
  %add81 = add nsw i32 %70, %add80
  store i32 %add81, i32* %col, align 4
  %71 = load i32, i32* %col, align 4
  %cmp82 = icmp sgt i32 %71, 70
  br i1 %cmp82, label %if.then.83, label %if.end.85

if.then.83:                                       ; preds = %if.then.75
  %call84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %col, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.83, %if.then.75
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %hfp, align 8
  %73 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %73 to i64
  %74 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals87 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %74, i32 0, i32 2
  %v88 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals87, i32 0, i32 2
  %75 = load %struct.Term**, %struct.Term*** %v88, align 8
  %arrayidx89 = getelementptr inbounds %struct.Term*, %struct.Term** %75, i64 %idxprom86
  %76 = load %struct.Term*, %struct.Term** %arrayidx89, align 8
  %string90 = getelementptr inbounds %struct.Term, %struct.Term* %76, i32 0, i32 5
  %77 = load i8*, i8** %string90, align 8
  %78 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %78 to i64
  %79 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals92 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %79, i32 0, i32 2
  %v93 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals92, i32 0, i32 2
  %80 = load %struct.Term**, %struct.Term*** %v93, align 8
  %arrayidx94 = getelementptr inbounds %struct.Term*, %struct.Term** %80, i64 %idxprom91
  %81 = load %struct.Term*, %struct.Term** %arrayidx94, align 8
  %index95 = getelementptr inbounds %struct.Term, %struct.Term* %81, i32 0, i32 1
  %82 = load i32, i32* %index95, align 4
  %83 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions96 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %83, i32 0, i32 1
  %n97 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions96, i32 0, i32 0
  %84 = load i32, i32* %n97, align 4
  %add98 = add i32 %82, %84
  %85 = load i32, i32* %i, align 4
  %86 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals99 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %86, i32 0, i32 2
  %n100 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals99, i32 0, i32 0
  %87 = load i32, i32* %n100, align 4
  %sub = sub i32 %87, 1
  %cmp101 = icmp eq i32 %85, %sub
  %cond = select i1 %cmp101, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0)
  %call102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* %77, i32 %add98, i8* %cond)
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.85, %for.body.68
  br label %for.inc.104

for.inc.104:                                      ; preds = %if.end.103
  %88 = load i32, i32* %i, align 4
  %inc105 = add nsw i32 %88, 1
  store i32 %inc105, i32* %i, align 4
  br label %for.cond.64

for.end.106:                                      ; preds = %for.cond.64
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %hfp, align 8
  %call107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end.108

if.end.108:                                       ; preds = %for.end.106, %for.end.61
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.end.28
  %90 = load i32, i32* %states, align 4
  %tobool110 = icmp ne i32 %90, 0
  br i1 %tobool110, label %if.then.111, label %if.end.143

if.then.111:                                      ; preds = %if.end.109
  store i32 0, i32* %i, align 4
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.140, %if.then.111
  %91 = load i32, i32* %i, align 4
  %92 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions113 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %92, i32 0, i32 1
  %n114 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions113, i32 0, i32 0
  %93 = load i32, i32* %n114, align 4
  %cmp115 = icmp ult i32 %91, %93
  br i1 %cmp115, label %for.body.116, label %for.end.142

for.body.116:                                     ; preds = %for.cond.112
  %94 = load i32, i32* %i, align 4
  %idxprom117 = sext i32 %94 to i64
  %95 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions118 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %95, i32 0, i32 1
  %v119 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions118, i32 0, i32 2
  %96 = load %struct.Production**, %struct.Production*** %v119, align 8
  %arrayidx120 = getelementptr inbounds %struct.Production*, %struct.Production** %96, i64 %idxprom117
  %97 = load %struct.Production*, %struct.Production** %arrayidx120, align 8
  %internal = getelementptr inbounds %struct.Production, %struct.Production* %97, i32 0, i32 4
  %bf.load = load i8, i8* %internal, align 4
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 7
  %bf.cast = zext i8 %bf.clear to i32
  %tobool121 = icmp ne i32 %bf.cast, 0
  br i1 %tobool121, label %if.end.139, label %land.lhs.true.122

land.lhs.true.122:                                ; preds = %for.body.116
  %98 = load i32, i32* %i, align 4
  %idxprom123 = sext i32 %98 to i64
  %99 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions124 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %99, i32 0, i32 1
  %v125 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions124, i32 0, i32 2
  %100 = load %struct.Production**, %struct.Production*** %v125, align 8
  %arrayidx126 = getelementptr inbounds %struct.Production*, %struct.Production** %100, i64 %idxprom123
  %101 = load %struct.Production*, %struct.Production** %arrayidx126, align 8
  %elem = getelementptr inbounds %struct.Production, %struct.Production* %101, i32 0, i32 9
  %102 = load %struct.Elem*, %struct.Elem** %elem, align 8
  %tobool127 = icmp ne %struct.Elem* %102, null
  br i1 %tobool127, label %if.then.128, label %if.end.139

if.then.128:                                      ; preds = %land.lhs.true.122
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** %hfp, align 8
  %104 = load i32, i32* %i, align 4
  %idxprom129 = sext i32 %104 to i64
  %105 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions130 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %105, i32 0, i32 1
  %v131 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions130, i32 0, i32 2
  %106 = load %struct.Production**, %struct.Production*** %v131, align 8
  %arrayidx132 = getelementptr inbounds %struct.Production*, %struct.Production** %106, i64 %idxprom129
  %107 = load %struct.Production*, %struct.Production** %arrayidx132, align 8
  %name = getelementptr inbounds %struct.Production, %struct.Production* %107, i32 0, i32 0
  %108 = load i8*, i8** %name, align 8
  %109 = load i32, i32* %i, align 4
  %idxprom133 = sext i32 %109 to i64
  %110 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions134 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %110, i32 0, i32 1
  %v135 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions134, i32 0, i32 2
  %111 = load %struct.Production**, %struct.Production*** %v135, align 8
  %arrayidx136 = getelementptr inbounds %struct.Production*, %struct.Production** %111, i64 %idxprom133
  %112 = load %struct.Production*, %struct.Production** %arrayidx136, align 8
  %state = getelementptr inbounds %struct.Production, %struct.Production* %112, i32 0, i32 8
  %113 = load %struct.State*, %struct.State** %state, align 8
  %index137 = getelementptr inbounds %struct.State, %struct.State* %113, i32 0, i32 0
  %114 = load i32, i32* %index137, align 4
  %call138 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %103, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i32 0, i32 0), i8* %108, i32 %114)
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.128, %land.lhs.true.122, %for.body.116
  br label %for.inc.140

for.inc.140:                                      ; preds = %if.end.139
  %115 = load i32, i32* %i, align 4
  %inc141 = add nsw i32 %115, 1
  store i32 %inc141, i32* %i, align 4
  br label %for.cond.112

for.end.142:                                      ; preds = %for.cond.112
  br label %if.end.143

if.end.143:                                       ; preds = %for.end.142, %if.end.109
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %hfp, align 8
  %call144 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.145:                                       ; preds = %lor.lhs.false.19, %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.145, %if.end.143
  %117 = load i32, i32* %retval
  ret i32 %117
}

; Function Attrs: nounwind uwtable
define internal void @write_global_code_as_C(%struct._IO_FILE* %fp, %struct.Grammar* %g, i8* %tag) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %g.addr = alloca %struct.Grammar*, align 8
  %tag.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %c = alloca i8*, align 8
  %e = alloca i8*, align 8
  %a = alloca i8*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %ncode = getelementptr inbounds %struct.Grammar, %struct.Grammar* %1, i32 0, i32 6
  %2 = load i32, i32* %ncode, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %write_line_directives = getelementptr inbounds %struct.Grammar, %struct.Grammar* %3, i32 0, i32 20
  %4 = load i32, i32* %write_line_directives, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %code = getelementptr inbounds %struct.Grammar, %struct.Grammar* %7, i32 0, i32 5
  %8 = load %struct.Code*, %struct.Code** %code, align 8
  %arrayidx = getelementptr inbounds %struct.Code, %struct.Code* %8, i64 %idxprom
  %line = getelementptr inbounds %struct.Code, %struct.Code* %arrayidx, i32 0, i32 1
  %9 = load i32, i32* %line, align 4
  %10 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %pathname = getelementptr inbounds %struct.Grammar, %struct.Grammar* %10, i32 0, i32 0
  %11 = load i8*, i8** %pathname, align 8
  %call = call i8* @mybasename(i8* %11)
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), i32 %9, i8* %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %12 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %12 to i64
  %13 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %code3 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %13, i32 0, i32 5
  %14 = load %struct.Code*, %struct.Code** %code3, align 8
  %arrayidx4 = getelementptr inbounds %struct.Code, %struct.Code* %14, i64 %idxprom2
  %code5 = getelementptr inbounds %struct.Code, %struct.Code* %arrayidx4, i32 0, i32 0
  %15 = load i8*, i8** %code5, align 8
  store i8* %15, i8** %c, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.87, %if.end
  %16 = load i8*, i8** %c, align 8
  %17 = load i8, i8* %16, align 1
  %tobool6 = icmp ne i8 %17, 0
  br i1 %tobool6, label %while.body, label %while.end.88

while.body:                                       ; preds = %while.cond
  %18 = load i8*, i8** %c, align 8
  %19 = load i8, i8* %18, align 1
  %conv = sext i8 %19 to i32
  %cmp7 = icmp eq i32 %conv, 36
  br i1 %cmp7, label %if.then.9, label %if.else.83

if.then.9:                                        ; preds = %while.body
  %20 = load i8*, i8** %c, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %c, align 8
  %21 = load i8*, i8** %c, align 8
  %22 = load i8, i8* %21, align 1
  %conv10 = sext i8 %22 to i32
  %cmp11 = icmp eq i32 %conv10, 123
  br i1 %cmp11, label %if.then.13, label %if.else.76

if.then.13:                                       ; preds = %if.then.9
  %23 = load i8*, i8** %c, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr14, i8** %c, align 8
  store i8* %incdec.ptr14, i8** %e, align 8
  br label %while.cond.15

while.cond.15:                                    ; preds = %while.body.27, %if.then.13
  %24 = load i8*, i8** %e, align 8
  %25 = load i8, i8* %24, align 1
  %conv16 = sext i8 %25 to i32
  %tobool17 = icmp ne i32 %conv16, 0
  br i1 %tobool17, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond.15
  %26 = load i8*, i8** %e, align 8
  %27 = load i8, i8* %26, align 1
  %conv18 = sext i8 %27 to i32
  %cmp19 = icmp ne i32 %conv18, 125
  br i1 %cmp19, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %28 = load i8*, i8** %e, align 8
  %29 = load i8, i8* %28, align 1
  %conv21 = sext i8 %29 to i32
  %idxprom22 = sext i32 %conv21 to i64
  %call23 = call i16** @__ctype_b_loc() #7
  %30 = load i16*, i16** %call23, align 8
  %arrayidx24 = getelementptr inbounds i16, i16* %30, i64 %idxprom22
  %31 = load i16, i16* %arrayidx24, align 2
  %conv25 = zext i16 %31 to i32
  %and = and i32 %conv25, 8192
  %tobool26 = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool26, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond.15
  %32 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond.15 ], [ %lnot, %land.rhs ]
  br i1 %32, label %while.body.27, label %while.end

while.body.27:                                    ; preds = %land.end
  %33 = load i8*, i8** %e, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr28, i8** %e, align 8
  br label %while.cond.15

while.end:                                        ; preds = %land.end
  %34 = load i8*, i8** %e, align 8
  store i8* %34, i8** %a, align 8
  %35 = load i8*, i8** %a, align 8
  %36 = load i8, i8* %35, align 1
  %conv29 = sext i8 %36 to i32
  %idxprom30 = sext i32 %conv29 to i64
  %call31 = call i16** @__ctype_b_loc() #7
  %37 = load i16*, i16** %call31, align 8
  %arrayidx32 = getelementptr inbounds i16, i16* %37, i64 %idxprom30
  %38 = load i16, i16* %arrayidx32, align 2
  %conv33 = zext i16 %38 to i32
  %and34 = and i32 %conv33, 8192
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %while.end
  %39 = load i8*, i8** %a, align 8
  %incdec.ptr37 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr37, i8** %a, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %while.end
  br label %while.cond.39

while.cond.39:                                    ; preds = %while.body.47, %if.end.38
  %40 = load i8*, i8** %a, align 8
  %41 = load i8, i8* %40, align 1
  %conv40 = sext i8 %41 to i32
  %tobool41 = icmp ne i32 %conv40, 0
  br i1 %tobool41, label %land.rhs.42, label %land.end.46

land.rhs.42:                                      ; preds = %while.cond.39
  %42 = load i8*, i8** %a, align 8
  %43 = load i8, i8* %42, align 1
  %conv43 = sext i8 %43 to i32
  %cmp44 = icmp ne i32 %conv43, 125
  br label %land.end.46

land.end.46:                                      ; preds = %land.rhs.42, %while.cond.39
  %44 = phi i1 [ false, %while.cond.39 ], [ %cmp44, %land.rhs.42 ]
  br i1 %44, label %while.body.47, label %while.end.49

while.body.47:                                    ; preds = %land.end.46
  %45 = load i8*, i8** %a, align 8
  %incdec.ptr48 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr48, i8** %a, align 8
  br label %while.cond.39

while.end.49:                                     ; preds = %land.end.46
  %46 = load i8*, i8** %e, align 8
  %47 = load i8*, i8** %c, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %46 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %47 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp50 = icmp eq i64 %sub.ptr.sub, 5
  br i1 %cmp50, label %land.lhs.true.52, label %if.else

land.lhs.true.52:                                 ; preds = %while.end.49
  %48 = load i8*, i8** %c, align 8
  %call53 = call i32 @strncasecmp(i8* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i64 5) #6
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.else, label %if.then.55

if.then.55:                                       ; preds = %land.lhs.true.52
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %50 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %51 = load i8*, i8** %e, align 8
  %52 = load i8*, i8** %a, align 8
  %call56 = call i32 @find_symbol(%struct.Grammar* %50, i8* %51, i8* %52, i32 1)
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i32 %call56)
  br label %if.end.75

if.else:                                          ; preds = %land.lhs.true.52, %while.end.49
  %53 = load i8*, i8** %e, align 8
  %54 = load i8*, i8** %c, align 8
  %sub.ptr.lhs.cast58 = ptrtoint i8* %53 to i64
  %sub.ptr.rhs.cast59 = ptrtoint i8* %54 to i64
  %sub.ptr.sub60 = sub i64 %sub.ptr.lhs.cast58, %sub.ptr.rhs.cast59
  %cmp61 = icmp eq i64 %sub.ptr.sub60, 6
  br i1 %cmp61, label %land.lhs.true.63, label %if.else.69

land.lhs.true.63:                                 ; preds = %if.else
  %55 = load i8*, i8** %c, align 8
  %call64 = call i32 @strncasecmp(i8* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i64 6) #6
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.else.69, label %if.then.66

if.then.66:                                       ; preds = %land.lhs.true.63
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %57 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %58 = load i8*, i8** %e, align 8
  %59 = load i8*, i8** %a, align 8
  %call67 = call i32 @find_symbol(%struct.Grammar* %57, i8* %58, i8* %59, i32 3)
  %call68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i32 %call67)
  br label %if.end.74

if.else.69:                                       ; preds = %land.lhs.true.63, %if.else
  %60 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %60 to i64
  %61 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %code71 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %61, i32 0, i32 5
  %62 = load %struct.Code*, %struct.Code** %code71, align 8
  %arrayidx72 = getelementptr inbounds %struct.Code, %struct.Code* %62, i64 %idxprom70
  %line73 = getelementptr inbounds %struct.Code, %struct.Code* %arrayidx72, i32 0, i32 1
  %63 = load i32, i32* %line73, align 4
  %64 = load i32, i32* %i, align 4
  %add = add nsw i32 %63, %64
  call void (i8*, ...) @d_fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.32, i32 0, i32 0), i32 %add)
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.69, %if.then.66
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.55
  %65 = load i8*, i8** %a, align 8
  %add.ptr = getelementptr inbounds i8, i8* %65, i64 1
  store i8* %add.ptr, i8** %c, align 8
  br label %if.end.82

if.else.76:                                       ; preds = %if.then.9
  %66 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %66 to i64
  %67 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %code78 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %67, i32 0, i32 5
  %68 = load %struct.Code*, %struct.Code** %code78, align 8
  %arrayidx79 = getelementptr inbounds %struct.Code, %struct.Code* %68, i64 %idxprom77
  %line80 = getelementptr inbounds %struct.Code, %struct.Code* %arrayidx79, i32 0, i32 1
  %69 = load i32, i32* %line80, align 4
  %70 = load i32, i32* %i, align 4
  %add81 = add nsw i32 %69, %70
  call void (i8*, ...) @d_fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.32, i32 0, i32 0), i32 %add81)
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.76, %if.end.75
  br label %if.end.87

if.else.83:                                       ; preds = %while.body
  %71 = load i8*, i8** %c, align 8
  %72 = load i8, i8* %71, align 1
  %conv84 = sext i8 %72 to i32
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call85 = call i32 @fputc(i32 %conv84, %struct._IO_FILE* %73)
  %74 = load i8*, i8** %c, align 8
  %incdec.ptr86 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr86, i8** %c, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.83, %if.end.82
  br label %while.cond

while.end.88:                                     ; preds = %while.cond
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call89 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %while.end.88
  %76 = load i32, i32* %i, align 4
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @write_reductions_as_C(%struct._IO_FILE* %fp, %struct.Grammar* %g, i8* %tag) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %g.addr = alloca %struct.Grammar*, align 8
  %tag.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %pmax = alloca i32, align 4
  %p = alloca %struct.Production*, align 8
  %pdefault = alloca %struct.Production*, align 8
  %r = alloca %struct.Rule*, align 8
  %rdefault = alloca %struct.Rule*, align 8
  %final_code = alloca [256 x i8], align 16
  %speculative_code = alloca [256 x i8], align 16
  %pass_code = alloca [256 x i8], align 16
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  store %struct.Rule* null, %struct.Rule** %rdefault, align 8
  %0 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %call = call %struct.Production* @lookup_production(%struct.Grammar* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0), i32 1)
  store %struct.Production* %call, %struct.Production** %pdefault, align 8
  %1 = load %struct.Production*, %struct.Production** %pdefault, align 8
  %tobool = icmp ne %struct.Production* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.Production*, %struct.Production** %pdefault, align 8
  %rules = getelementptr inbounds %struct.Production, %struct.Production* %2, i32 0, i32 2
  %v = getelementptr inbounds %struct.anon, %struct.anon* %rules, i32 0, i32 2
  %3 = load %struct.Rule**, %struct.Rule*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.Rule*, %struct.Rule** %3, i64 0
  %4 = load %struct.Rule*, %struct.Rule** %arrayidx, align 8
  store %struct.Rule* %4, %struct.Rule** %rdefault, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %6 = load %struct.Rule*, %struct.Rule** %rdefault, align 8
  %prod = getelementptr inbounds %struct.Rule, %struct.Rule* %6, i32 0, i32 1
  %7 = load %struct.Production*, %struct.Production** %prod, align 8
  %index = getelementptr inbounds %struct.Production, %struct.Production* %7, i32 0, i32 3
  %8 = load i32, i32* %index, align 4
  %9 = load %struct.Rule*, %struct.Rule** %rdefault, align 8
  %index1 = getelementptr inbounds %struct.Rule, %struct.Rule* %9, i32 0, i32 0
  %10 = load i32, i32* %index1, align 4
  %11 = load i8*, i8** %tag.addr, align 8
  %12 = load i8*, i8** @reduction_args, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.35, i32 0, i32 0), i32 %8, i32 %10, i8* %11, i8* %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %14 = load %struct.Rule*, %struct.Rule** %rdefault, align 8
  %prod3 = getelementptr inbounds %struct.Rule, %struct.Rule* %14, i32 0, i32 1
  %15 = load %struct.Production*, %struct.Production** %prod3, align 8
  %index4 = getelementptr inbounds %struct.Production, %struct.Production* %15, i32 0, i32 3
  %16 = load i32, i32* %index4, align 4
  %17 = load %struct.Rule*, %struct.Rule** %rdefault, align 8
  %index5 = getelementptr inbounds %struct.Rule, %struct.Rule* %17, i32 0, i32 0
  %18 = load i32, i32* %index5, align 4
  %19 = load i8*, i8** %tag.addr, align 8
  %20 = load i8*, i8** @reduction_args, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i32 0, i32 0), i32 %16, i32 %18, i8* %19, i8* %20)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %22 = load %struct.Rule*, %struct.Rule** %rdefault, align 8
  %prod7 = getelementptr inbounds %struct.Rule, %struct.Rule* %22, i32 0, i32 1
  %23 = load %struct.Production*, %struct.Production** %prod7, align 8
  %index8 = getelementptr inbounds %struct.Production, %struct.Production* %23, i32 0, i32 3
  %24 = load i32, i32* %index8, align 4
  %25 = load %struct.Rule*, %struct.Rule** %rdefault, align 8
  %index9 = getelementptr inbounds %struct.Rule, %struct.Rule* %25, i32 0, i32 0
  %26 = load i32, i32* %index9, align 4
  %27 = load i8*, i8** %tag.addr, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.37, i32 0, i32 0), i32 %24, i32 %26, i8* %27)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %28 = load i32, i32* %i, align 4
  %29 = load %struct.Rule*, %struct.Rule** %rdefault, align 8
  %pass_code11 = getelementptr inbounds %struct.Rule, %struct.Rule* %29, i32 0, i32 10
  %n = getelementptr inbounds %struct.anon.1, %struct.anon.1* %pass_code11, i32 0, i32 0
  %30 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %28, %30
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %32 = load i32, i32* %i, align 4
  %33 = load %struct.Rule*, %struct.Rule** %rdefault, align 8
  %prod12 = getelementptr inbounds %struct.Rule, %struct.Rule* %33, i32 0, i32 1
  %34 = load %struct.Production*, %struct.Production** %prod12, align 8
  %index13 = getelementptr inbounds %struct.Production, %struct.Production* %34, i32 0, i32 3
  %35 = load i32, i32* %index13, align 4
  %36 = load %struct.Rule*, %struct.Rule** %rdefault, align 8
  %index14 = getelementptr inbounds %struct.Rule, %struct.Rule* %36, i32 0, i32 0
  %37 = load i32, i32* %index14, align 4
  %38 = load i8*, i8** %tag.addr, align 8
  %39 = load i8*, i8** @reduction_args, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.38, i32 0, i32 0), i32 %32, i32 %35, i32 %37, i8* %38, i8* %39)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i32, i32* %i, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.409, %if.end
  %41 = load i32, i32* %i, align 4
  %42 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions = getelementptr inbounds %struct.Grammar, %struct.Grammar* %42, i32 0, i32 1
  %n17 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions, i32 0, i32 0
  %43 = load i32, i32* %n17, align 4
  %cmp18 = icmp ult i32 %41, %43
  br i1 %cmp18, label %for.body.19, label %for.end.411

for.body.19:                                      ; preds = %for.cond.16
  %44 = load i32, i32* %i, align 4
  %idxprom = sext i32 %44 to i64
  %45 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions20 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %45, i32 0, i32 1
  %v21 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions20, i32 0, i32 2
  %46 = load %struct.Production**, %struct.Production*** %v21, align 8
  %arrayidx22 = getelementptr inbounds %struct.Production*, %struct.Production** %46, i64 %idxprom
  %47 = load %struct.Production*, %struct.Production** %arrayidx22, align 8
  store %struct.Production* %47, %struct.Production** %p, align 8
  %48 = load %struct.Production*, %struct.Production** %p, align 8
  %rules23 = getelementptr inbounds %struct.Production, %struct.Production* %48, i32 0, i32 2
  %n24 = getelementptr inbounds %struct.anon, %struct.anon* %rules23, i32 0, i32 0
  %49 = load i32, i32* %n24, align 4
  %sub = sub i32 %49, 1
  store i32 %sub, i32* %j, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.174, %for.body.19
  %50 = load i32, i32* %j, align 4
  %cmp26 = icmp sge i32 %50, 0
  br i1 %cmp26, label %for.body.27, label %for.end.175

for.body.27:                                      ; preds = %for.cond.25
  %51 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %51 to i64
  %52 = load %struct.Production*, %struct.Production** %p, align 8
  %rules29 = getelementptr inbounds %struct.Production, %struct.Production* %52, i32 0, i32 2
  %v30 = getelementptr inbounds %struct.anon, %struct.anon* %rules29, i32 0, i32 2
  %53 = load %struct.Rule**, %struct.Rule*** %v30, align 8
  %arrayidx31 = getelementptr inbounds %struct.Rule*, %struct.Rule** %53, i64 %idxprom28
  %54 = load %struct.Rule*, %struct.Rule** %arrayidx31, align 8
  store %struct.Rule* %54, %struct.Rule** %r, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.171, %for.body.27
  %55 = load i32, i32* %k, align 4
  %56 = load i32, i32* %j, align 4
  %cmp33 = icmp slt i32 %55, %56
  br i1 %cmp33, label %for.body.34, label %for.end.173

for.body.34:                                      ; preds = %for.cond.32
  %57 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems = getelementptr inbounds %struct.Rule, %struct.Rule* %57, i32 0, i32 6
  %n35 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems, i32 0, i32 0
  %58 = load i32, i32* %n35, align 4
  %59 = load i32, i32* %k, align 4
  %idxprom36 = sext i32 %59 to i64
  %60 = load %struct.Production*, %struct.Production** %p, align 8
  %rules37 = getelementptr inbounds %struct.Production, %struct.Production* %60, i32 0, i32 2
  %v38 = getelementptr inbounds %struct.anon, %struct.anon* %rules37, i32 0, i32 2
  %61 = load %struct.Rule**, %struct.Rule*** %v38, align 8
  %arrayidx39 = getelementptr inbounds %struct.Rule*, %struct.Rule** %61, i64 %idxprom36
  %62 = load %struct.Rule*, %struct.Rule** %arrayidx39, align 8
  %elems40 = getelementptr inbounds %struct.Rule, %struct.Rule* %62, i32 0, i32 6
  %n41 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems40, i32 0, i32 0
  %63 = load i32, i32* %n41, align 4
  %cmp42 = icmp eq i32 %58, %63
  br i1 %cmp42, label %land.lhs.true, label %if.end.170

land.lhs.true:                                    ; preds = %for.body.34
  %64 = load %struct.Rule*, %struct.Rule** %r, align 8
  %speculative_code43 = getelementptr inbounds %struct.Rule, %struct.Rule* %64, i32 0, i32 8
  %code = getelementptr inbounds %struct.Code, %struct.Code* %speculative_code43, i32 0, i32 0
  %65 = load i8*, i8** %code, align 8
  %66 = load i32, i32* %k, align 4
  %idxprom44 = sext i32 %66 to i64
  %67 = load %struct.Production*, %struct.Production** %p, align 8
  %rules45 = getelementptr inbounds %struct.Production, %struct.Production* %67, i32 0, i32 2
  %v46 = getelementptr inbounds %struct.anon, %struct.anon* %rules45, i32 0, i32 2
  %68 = load %struct.Rule**, %struct.Rule*** %v46, align 8
  %arrayidx47 = getelementptr inbounds %struct.Rule*, %struct.Rule** %68, i64 %idxprom44
  %69 = load %struct.Rule*, %struct.Rule** %arrayidx47, align 8
  %speculative_code48 = getelementptr inbounds %struct.Rule, %struct.Rule* %69, i32 0, i32 8
  %code49 = getelementptr inbounds %struct.Code, %struct.Code* %speculative_code48, i32 0, i32 0
  %70 = load i8*, i8** %code49, align 8
  %cmp50 = icmp eq i8* %65, %70
  br i1 %cmp50, label %land.lhs.true.51, label %if.end.170

land.lhs.true.51:                                 ; preds = %land.lhs.true
  %71 = load %struct.Rule*, %struct.Rule** %r, align 8
  %final_code52 = getelementptr inbounds %struct.Rule, %struct.Rule* %71, i32 0, i32 9
  %code53 = getelementptr inbounds %struct.Code, %struct.Code* %final_code52, i32 0, i32 0
  %72 = load i8*, i8** %code53, align 8
  %73 = load i32, i32* %k, align 4
  %idxprom54 = sext i32 %73 to i64
  %74 = load %struct.Production*, %struct.Production** %p, align 8
  %rules55 = getelementptr inbounds %struct.Production, %struct.Production* %74, i32 0, i32 2
  %v56 = getelementptr inbounds %struct.anon, %struct.anon* %rules55, i32 0, i32 2
  %75 = load %struct.Rule**, %struct.Rule*** %v56, align 8
  %arrayidx57 = getelementptr inbounds %struct.Rule*, %struct.Rule** %75, i64 %idxprom54
  %76 = load %struct.Rule*, %struct.Rule** %arrayidx57, align 8
  %final_code58 = getelementptr inbounds %struct.Rule, %struct.Rule* %76, i32 0, i32 9
  %code59 = getelementptr inbounds %struct.Code, %struct.Code* %final_code58, i32 0, i32 0
  %77 = load i8*, i8** %code59, align 8
  %cmp60 = icmp eq i8* %72, %77
  br i1 %cmp60, label %land.lhs.true.61, label %if.end.170

land.lhs.true.61:                                 ; preds = %land.lhs.true.51
  %78 = load %struct.Rule*, %struct.Rule** %r, align 8
  %op_priority = getelementptr inbounds %struct.Rule, %struct.Rule* %78, i32 0, i32 2
  %79 = load i32, i32* %op_priority, align 4
  %80 = load i32, i32* %k, align 4
  %idxprom62 = sext i32 %80 to i64
  %81 = load %struct.Production*, %struct.Production** %p, align 8
  %rules63 = getelementptr inbounds %struct.Production, %struct.Production* %81, i32 0, i32 2
  %v64 = getelementptr inbounds %struct.anon, %struct.anon* %rules63, i32 0, i32 2
  %82 = load %struct.Rule**, %struct.Rule*** %v64, align 8
  %arrayidx65 = getelementptr inbounds %struct.Rule*, %struct.Rule** %82, i64 %idxprom62
  %83 = load %struct.Rule*, %struct.Rule** %arrayidx65, align 8
  %op_priority66 = getelementptr inbounds %struct.Rule, %struct.Rule* %83, i32 0, i32 2
  %84 = load i32, i32* %op_priority66, align 4
  %cmp67 = icmp eq i32 %79, %84
  br i1 %cmp67, label %land.lhs.true.68, label %if.end.170

land.lhs.true.68:                                 ; preds = %land.lhs.true.61
  %85 = load %struct.Rule*, %struct.Rule** %r, align 8
  %op_assoc = getelementptr inbounds %struct.Rule, %struct.Rule* %85, i32 0, i32 3
  %86 = load i32, i32* %op_assoc, align 4
  %87 = load i32, i32* %k, align 4
  %idxprom69 = sext i32 %87 to i64
  %88 = load %struct.Production*, %struct.Production** %p, align 8
  %rules70 = getelementptr inbounds %struct.Production, %struct.Production* %88, i32 0, i32 2
  %v71 = getelementptr inbounds %struct.anon, %struct.anon* %rules70, i32 0, i32 2
  %89 = load %struct.Rule**, %struct.Rule*** %v71, align 8
  %arrayidx72 = getelementptr inbounds %struct.Rule*, %struct.Rule** %89, i64 %idxprom69
  %90 = load %struct.Rule*, %struct.Rule** %arrayidx72, align 8
  %op_assoc73 = getelementptr inbounds %struct.Rule, %struct.Rule* %90, i32 0, i32 3
  %91 = load i32, i32* %op_assoc73, align 4
  %cmp74 = icmp eq i32 %86, %91
  br i1 %cmp74, label %land.lhs.true.75, label %if.end.170

land.lhs.true.75:                                 ; preds = %land.lhs.true.68
  %92 = load %struct.Rule*, %struct.Rule** %r, align 8
  %rule_priority = getelementptr inbounds %struct.Rule, %struct.Rule* %92, i32 0, i32 4
  %93 = load i32, i32* %rule_priority, align 4
  %94 = load i32, i32* %k, align 4
  %idxprom76 = sext i32 %94 to i64
  %95 = load %struct.Production*, %struct.Production** %p, align 8
  %rules77 = getelementptr inbounds %struct.Production, %struct.Production* %95, i32 0, i32 2
  %v78 = getelementptr inbounds %struct.anon, %struct.anon* %rules77, i32 0, i32 2
  %96 = load %struct.Rule**, %struct.Rule*** %v78, align 8
  %arrayidx79 = getelementptr inbounds %struct.Rule*, %struct.Rule** %96, i64 %idxprom76
  %97 = load %struct.Rule*, %struct.Rule** %arrayidx79, align 8
  %rule_priority80 = getelementptr inbounds %struct.Rule, %struct.Rule* %97, i32 0, i32 4
  %98 = load i32, i32* %rule_priority80, align 4
  %cmp81 = icmp eq i32 %93, %98
  br i1 %cmp81, label %land.lhs.true.82, label %if.end.170

land.lhs.true.82:                                 ; preds = %land.lhs.true.75
  %99 = load %struct.Rule*, %struct.Rule** %r, align 8
  %rule_assoc = getelementptr inbounds %struct.Rule, %struct.Rule* %99, i32 0, i32 5
  %100 = load i32, i32* %rule_assoc, align 4
  %101 = load i32, i32* %k, align 4
  %idxprom83 = sext i32 %101 to i64
  %102 = load %struct.Production*, %struct.Production** %p, align 8
  %rules84 = getelementptr inbounds %struct.Production, %struct.Production* %102, i32 0, i32 2
  %v85 = getelementptr inbounds %struct.anon, %struct.anon* %rules84, i32 0, i32 2
  %103 = load %struct.Rule**, %struct.Rule*** %v85, align 8
  %arrayidx86 = getelementptr inbounds %struct.Rule*, %struct.Rule** %103, i64 %idxprom83
  %104 = load %struct.Rule*, %struct.Rule** %arrayidx86, align 8
  %rule_assoc87 = getelementptr inbounds %struct.Rule, %struct.Rule* %104, i32 0, i32 5
  %105 = load i32, i32* %rule_assoc87, align 4
  %cmp88 = icmp eq i32 %100, %105
  br i1 %cmp88, label %land.lhs.true.89, label %if.end.170

land.lhs.true.89:                                 ; preds = %land.lhs.true.82
  %106 = load %struct.Rule*, %struct.Rule** %r, align 8
  %action_index = getelementptr inbounds %struct.Rule, %struct.Rule* %106, i32 0, i32 11
  %107 = load i32, i32* %action_index, align 4
  %108 = load i32, i32* %k, align 4
  %idxprom90 = sext i32 %108 to i64
  %109 = load %struct.Production*, %struct.Production** %p, align 8
  %rules91 = getelementptr inbounds %struct.Production, %struct.Production* %109, i32 0, i32 2
  %v92 = getelementptr inbounds %struct.anon, %struct.anon* %rules91, i32 0, i32 2
  %110 = load %struct.Rule**, %struct.Rule*** %v92, align 8
  %arrayidx93 = getelementptr inbounds %struct.Rule*, %struct.Rule** %110, i64 %idxprom90
  %111 = load %struct.Rule*, %struct.Rule** %arrayidx93, align 8
  %action_index94 = getelementptr inbounds %struct.Rule, %struct.Rule* %111, i32 0, i32 11
  %112 = load i32, i32* %action_index94, align 4
  %cmp95 = icmp eq i32 %107, %112
  br i1 %cmp95, label %if.then.96, label %if.end.170

if.then.96:                                       ; preds = %land.lhs.true.89
  %113 = load %struct.Rule*, %struct.Rule** %r, align 8
  %pass_code97 = getelementptr inbounds %struct.Rule, %struct.Rule* %113, i32 0, i32 10
  %n98 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %pass_code97, i32 0, i32 0
  %114 = load i32, i32* %n98, align 4
  %115 = load i32, i32* %k, align 4
  %idxprom99 = sext i32 %115 to i64
  %116 = load %struct.Production*, %struct.Production** %p, align 8
  %rules100 = getelementptr inbounds %struct.Production, %struct.Production* %116, i32 0, i32 2
  %v101 = getelementptr inbounds %struct.anon, %struct.anon* %rules100, i32 0, i32 2
  %117 = load %struct.Rule**, %struct.Rule*** %v101, align 8
  %arrayidx102 = getelementptr inbounds %struct.Rule*, %struct.Rule** %117, i64 %idxprom99
  %118 = load %struct.Rule*, %struct.Rule** %arrayidx102, align 8
  %pass_code103 = getelementptr inbounds %struct.Rule, %struct.Rule* %118, i32 0, i32 10
  %n104 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %pass_code103, i32 0, i32 0
  %119 = load i32, i32* %n104, align 4
  %cmp105 = icmp ne i32 %114, %119
  br i1 %cmp105, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.then.96
  br label %for.inc.171

if.end.107:                                       ; preds = %if.then.96
  store i32 0, i32* %l, align 4
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.163, %if.end.107
  %120 = load i32, i32* %l, align 4
  %121 = load %struct.Rule*, %struct.Rule** %r, align 8
  %pass_code109 = getelementptr inbounds %struct.Rule, %struct.Rule* %121, i32 0, i32 10
  %n110 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %pass_code109, i32 0, i32 0
  %122 = load i32, i32* %n110, align 4
  %cmp111 = icmp ult i32 %120, %122
  br i1 %cmp111, label %for.body.112, label %for.end.165

for.body.112:                                     ; preds = %for.cond.108
  %123 = load i32, i32* %l, align 4
  %idxprom113 = sext i32 %123 to i64
  %124 = load %struct.Rule*, %struct.Rule** %r, align 8
  %pass_code114 = getelementptr inbounds %struct.Rule, %struct.Rule* %124, i32 0, i32 10
  %v115 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %pass_code114, i32 0, i32 2
  %125 = load %struct.Code**, %struct.Code*** %v115, align 8
  %arrayidx116 = getelementptr inbounds %struct.Code*, %struct.Code** %125, i64 %idxprom113
  %126 = load %struct.Code*, %struct.Code** %arrayidx116, align 8
  %tobool117 = icmp ne %struct.Code* %126, null
  br i1 %tobool117, label %if.end.129, label %land.lhs.true.118

land.lhs.true.118:                                ; preds = %for.body.112
  %127 = load i32, i32* %l, align 4
  %idxprom119 = sext i32 %127 to i64
  %128 = load i32, i32* %k, align 4
  %idxprom120 = sext i32 %128 to i64
  %129 = load %struct.Production*, %struct.Production** %p, align 8
  %rules121 = getelementptr inbounds %struct.Production, %struct.Production* %129, i32 0, i32 2
  %v122 = getelementptr inbounds %struct.anon, %struct.anon* %rules121, i32 0, i32 2
  %130 = load %struct.Rule**, %struct.Rule*** %v122, align 8
  %arrayidx123 = getelementptr inbounds %struct.Rule*, %struct.Rule** %130, i64 %idxprom120
  %131 = load %struct.Rule*, %struct.Rule** %arrayidx123, align 8
  %pass_code124 = getelementptr inbounds %struct.Rule, %struct.Rule* %131, i32 0, i32 10
  %v125 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %pass_code124, i32 0, i32 2
  %132 = load %struct.Code**, %struct.Code*** %v125, align 8
  %arrayidx126 = getelementptr inbounds %struct.Code*, %struct.Code** %132, i64 %idxprom119
  %133 = load %struct.Code*, %struct.Code** %arrayidx126, align 8
  %tobool127 = icmp ne %struct.Code* %133, null
  br i1 %tobool127, label %if.end.129, label %if.then.128

if.then.128:                                      ; preds = %land.lhs.true.118
  br label %for.inc.163

if.end.129:                                       ; preds = %land.lhs.true.118, %for.body.112
  %134 = load i32, i32* %l, align 4
  %idxprom130 = sext i32 %134 to i64
  %135 = load %struct.Rule*, %struct.Rule** %r, align 8
  %pass_code131 = getelementptr inbounds %struct.Rule, %struct.Rule* %135, i32 0, i32 10
  %v132 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %pass_code131, i32 0, i32 2
  %136 = load %struct.Code**, %struct.Code*** %v132, align 8
  %arrayidx133 = getelementptr inbounds %struct.Code*, %struct.Code** %136, i64 %idxprom130
  %137 = load %struct.Code*, %struct.Code** %arrayidx133, align 8
  %tobool134 = icmp ne %struct.Code* %137, null
  br i1 %tobool134, label %lor.lhs.false, label %if.then.144

lor.lhs.false:                                    ; preds = %if.end.129
  %138 = load i32, i32* %l, align 4
  %idxprom135 = sext i32 %138 to i64
  %139 = load i32, i32* %k, align 4
  %idxprom136 = sext i32 %139 to i64
  %140 = load %struct.Production*, %struct.Production** %p, align 8
  %rules137 = getelementptr inbounds %struct.Production, %struct.Production* %140, i32 0, i32 2
  %v138 = getelementptr inbounds %struct.anon, %struct.anon* %rules137, i32 0, i32 2
  %141 = load %struct.Rule**, %struct.Rule*** %v138, align 8
  %arrayidx139 = getelementptr inbounds %struct.Rule*, %struct.Rule** %141, i64 %idxprom136
  %142 = load %struct.Rule*, %struct.Rule** %arrayidx139, align 8
  %pass_code140 = getelementptr inbounds %struct.Rule, %struct.Rule* %142, i32 0, i32 10
  %v141 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %pass_code140, i32 0, i32 2
  %143 = load %struct.Code**, %struct.Code*** %v141, align 8
  %arrayidx142 = getelementptr inbounds %struct.Code*, %struct.Code** %143, i64 %idxprom135
  %144 = load %struct.Code*, %struct.Code** %arrayidx142, align 8
  %tobool143 = icmp ne %struct.Code* %144, null
  br i1 %tobool143, label %if.end.145, label %if.then.144

if.then.144:                                      ; preds = %lor.lhs.false, %if.end.129
  br label %Lcontinue

if.end.145:                                       ; preds = %lor.lhs.false
  %145 = load i32, i32* %l, align 4
  %idxprom146 = sext i32 %145 to i64
  %146 = load %struct.Rule*, %struct.Rule** %r, align 8
  %pass_code147 = getelementptr inbounds %struct.Rule, %struct.Rule* %146, i32 0, i32 10
  %v148 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %pass_code147, i32 0, i32 2
  %147 = load %struct.Code**, %struct.Code*** %v148, align 8
  %arrayidx149 = getelementptr inbounds %struct.Code*, %struct.Code** %147, i64 %idxprom146
  %148 = load %struct.Code*, %struct.Code** %arrayidx149, align 8
  %code150 = getelementptr inbounds %struct.Code, %struct.Code* %148, i32 0, i32 0
  %149 = load i8*, i8** %code150, align 8
  %150 = load i32, i32* %l, align 4
  %idxprom151 = sext i32 %150 to i64
  %151 = load i32, i32* %k, align 4
  %idxprom152 = sext i32 %151 to i64
  %152 = load %struct.Production*, %struct.Production** %p, align 8
  %rules153 = getelementptr inbounds %struct.Production, %struct.Production* %152, i32 0, i32 2
  %v154 = getelementptr inbounds %struct.anon, %struct.anon* %rules153, i32 0, i32 2
  %153 = load %struct.Rule**, %struct.Rule*** %v154, align 8
  %arrayidx155 = getelementptr inbounds %struct.Rule*, %struct.Rule** %153, i64 %idxprom152
  %154 = load %struct.Rule*, %struct.Rule** %arrayidx155, align 8
  %pass_code156 = getelementptr inbounds %struct.Rule, %struct.Rule* %154, i32 0, i32 10
  %v157 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %pass_code156, i32 0, i32 2
  %155 = load %struct.Code**, %struct.Code*** %v157, align 8
  %arrayidx158 = getelementptr inbounds %struct.Code*, %struct.Code** %155, i64 %idxprom151
  %156 = load %struct.Code*, %struct.Code** %arrayidx158, align 8
  %code159 = getelementptr inbounds %struct.Code, %struct.Code* %156, i32 0, i32 0
  %157 = load i8*, i8** %code159, align 8
  %cmp160 = icmp ne i8* %149, %157
  br i1 %cmp160, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %if.end.145
  br label %Lcontinue

if.end.162:                                       ; preds = %if.end.145
  br label %for.inc.163

for.inc.163:                                      ; preds = %if.end.162, %if.then.128
  %158 = load i32, i32* %l, align 4
  %inc164 = add nsw i32 %158, 1
  store i32 %inc164, i32* %l, align 4
  br label %for.cond.108

for.end.165:                                      ; preds = %for.cond.108
  %159 = load i32, i32* %k, align 4
  %idxprom166 = sext i32 %159 to i64
  %160 = load %struct.Production*, %struct.Production** %p, align 8
  %rules167 = getelementptr inbounds %struct.Production, %struct.Production* %160, i32 0, i32 2
  %v168 = getelementptr inbounds %struct.anon, %struct.anon* %rules167, i32 0, i32 2
  %161 = load %struct.Rule**, %struct.Rule*** %v168, align 8
  %arrayidx169 = getelementptr inbounds %struct.Rule*, %struct.Rule** %161, i64 %idxprom166
  %162 = load %struct.Rule*, %struct.Rule** %arrayidx169, align 8
  %163 = load %struct.Rule*, %struct.Rule** %r, align 8
  %same_reduction = getelementptr inbounds %struct.Rule, %struct.Rule* %163, i32 0, i32 12
  store %struct.Rule* %162, %struct.Rule** %same_reduction, align 8
  br label %for.end.173

Lcontinue:                                        ; preds = %if.then.161, %if.then.144
  br label %if.end.170

if.end.170:                                       ; preds = %Lcontinue, %land.lhs.true.89, %land.lhs.true.82, %land.lhs.true.75, %land.lhs.true.68, %land.lhs.true.61, %land.lhs.true.51, %land.lhs.true, %for.body.34
  br label %for.inc.171

for.inc.171:                                      ; preds = %if.end.170, %if.then.106
  %164 = load i32, i32* %k, align 4
  %inc172 = add nsw i32 %164, 1
  store i32 %inc172, i32* %k, align 4
  br label %for.cond.32

for.end.173:                                      ; preds = %for.end.165, %for.cond.32
  br label %for.inc.174

for.inc.174:                                      ; preds = %for.end.173
  %165 = load i32, i32* %j, align 4
  %dec = add nsw i32 %165, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.25

for.end.175:                                      ; preds = %for.cond.25
  store i32 0, i32* %j, align 4
  br label %for.cond.176

for.cond.176:                                     ; preds = %for.inc.406, %for.end.175
  %166 = load i32, i32* %j, align 4
  %167 = load %struct.Production*, %struct.Production** %p, align 8
  %rules177 = getelementptr inbounds %struct.Production, %struct.Production* %167, i32 0, i32 2
  %n178 = getelementptr inbounds %struct.anon, %struct.anon* %rules177, i32 0, i32 0
  %168 = load i32, i32* %n178, align 4
  %cmp179 = icmp ult i32 %166, %168
  br i1 %cmp179, label %for.body.180, label %for.end.408

for.body.180:                                     ; preds = %for.cond.176
  %169 = load i32, i32* %j, align 4
  %idxprom181 = sext i32 %169 to i64
  %170 = load %struct.Production*, %struct.Production** %p, align 8
  %rules182 = getelementptr inbounds %struct.Production, %struct.Production* %170, i32 0, i32 2
  %v183 = getelementptr inbounds %struct.anon, %struct.anon* %rules182, i32 0, i32 2
  %171 = load %struct.Rule**, %struct.Rule*** %v183, align 8
  %arrayidx184 = getelementptr inbounds %struct.Rule*, %struct.Rule** %171, i64 %idxprom181
  %172 = load %struct.Rule*, %struct.Rule** %arrayidx184, align 8
  store %struct.Rule* %172, %struct.Rule** %r, align 8
  %173 = load %struct.Rule*, %struct.Rule** %r, align 8
  %same_reduction185 = getelementptr inbounds %struct.Rule, %struct.Rule* %173, i32 0, i32 12
  %174 = load %struct.Rule*, %struct.Rule** %same_reduction185, align 8
  %tobool186 = icmp ne %struct.Rule* %174, null
  br i1 %tobool186, label %if.then.187, label %if.end.188

if.then.187:                                      ; preds = %for.body.180
  br label %for.inc.406

if.end.188:                                       ; preds = %for.body.180
  %175 = load %struct.Rule*, %struct.Rule** %r, align 8
  %speculative_code189 = getelementptr inbounds %struct.Rule, %struct.Rule* %175, i32 0, i32 8
  %code190 = getelementptr inbounds %struct.Code, %struct.Code* %speculative_code189, i32 0, i32 0
  %176 = load i8*, i8** %code190, align 8
  %tobool191 = icmp ne i8* %176, null
  br i1 %tobool191, label %if.then.192, label %if.end.200

if.then.192:                                      ; preds = %if.end.188
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %178 = load %struct.Rule*, %struct.Rule** %r, align 8
  %prod193 = getelementptr inbounds %struct.Rule, %struct.Rule* %178, i32 0, i32 1
  %179 = load %struct.Production*, %struct.Production** %prod193, align 8
  %index194 = getelementptr inbounds %struct.Production, %struct.Production* %179, i32 0, i32 3
  %180 = load i32, i32* %index194, align 4
  %181 = load %struct.Rule*, %struct.Rule** %r, align 8
  %index195 = getelementptr inbounds %struct.Rule, %struct.Rule* %181, i32 0, i32 0
  %182 = load i32, i32* %index195, align 4
  %183 = load i8*, i8** %tag.addr, align 8
  %184 = load i8*, i8** @reduction_args, align 8
  %call196 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %177, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.39, i32 0, i32 0), i32 %180, i32 %182, i8* %183, i8* %184)
  %185 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %186 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %187 = load %struct.Rule*, %struct.Rule** %r, align 8
  %188 = load %struct.Rule*, %struct.Rule** %r, align 8
  %speculative_code197 = getelementptr inbounds %struct.Rule, %struct.Rule* %188, i32 0, i32 8
  %code198 = getelementptr inbounds %struct.Code, %struct.Code* %speculative_code197, i32 0, i32 0
  %189 = load i8*, i8** %code198, align 8
  %190 = load %struct.Rule*, %struct.Rule** %r, align 8
  %speculative_code199 = getelementptr inbounds %struct.Rule, %struct.Rule* %190, i32 0, i32 8
  %line = getelementptr inbounds %struct.Code, %struct.Code* %speculative_code199, i32 0, i32 1
  %191 = load i32, i32* %line, align 4
  %192 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %pathname = getelementptr inbounds %struct.Grammar, %struct.Grammar* %192, i32 0, i32 0
  %193 = load i8*, i8** %pathname, align 8
  call void @write_code_as_C(%struct._IO_FILE* %185, %struct.Grammar* %186, %struct.Rule* %187, i8* %189, i32 %191, i8* %193)
  br label %if.end.200

if.end.200:                                       ; preds = %if.then.192, %if.end.188
  %194 = load %struct.Rule*, %struct.Rule** %r, align 8
  %final_code201 = getelementptr inbounds %struct.Rule, %struct.Rule* %194, i32 0, i32 9
  %code202 = getelementptr inbounds %struct.Code, %struct.Code* %final_code201, i32 0, i32 0
  %195 = load i8*, i8** %code202, align 8
  %tobool203 = icmp ne i8* %195, null
  br i1 %tobool203, label %if.then.204, label %if.end.214

if.then.204:                                      ; preds = %if.end.200
  %196 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %197 = load %struct.Rule*, %struct.Rule** %r, align 8
  %prod205 = getelementptr inbounds %struct.Rule, %struct.Rule* %197, i32 0, i32 1
  %198 = load %struct.Production*, %struct.Production** %prod205, align 8
  %index206 = getelementptr inbounds %struct.Production, %struct.Production* %198, i32 0, i32 3
  %199 = load i32, i32* %index206, align 4
  %200 = load %struct.Rule*, %struct.Rule** %r, align 8
  %index207 = getelementptr inbounds %struct.Rule, %struct.Rule* %200, i32 0, i32 0
  %201 = load i32, i32* %index207, align 4
  %202 = load i8*, i8** %tag.addr, align 8
  %203 = load i8*, i8** @reduction_args, align 8
  %call208 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %196, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40, i32 0, i32 0), i32 %199, i32 %201, i8* %202, i8* %203)
  %204 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %205 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %206 = load %struct.Rule*, %struct.Rule** %r, align 8
  %207 = load %struct.Rule*, %struct.Rule** %r, align 8
  %final_code209 = getelementptr inbounds %struct.Rule, %struct.Rule* %207, i32 0, i32 9
  %code210 = getelementptr inbounds %struct.Code, %struct.Code* %final_code209, i32 0, i32 0
  %208 = load i8*, i8** %code210, align 8
  %209 = load %struct.Rule*, %struct.Rule** %r, align 8
  %final_code211 = getelementptr inbounds %struct.Rule, %struct.Rule* %209, i32 0, i32 9
  %line212 = getelementptr inbounds %struct.Code, %struct.Code* %final_code211, i32 0, i32 1
  %210 = load i32, i32* %line212, align 4
  %211 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %pathname213 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %211, i32 0, i32 0
  %212 = load i8*, i8** %pathname213, align 8
  call void @write_code_as_C(%struct._IO_FILE* %204, %struct.Grammar* %205, %struct.Rule* %206, i8* %208, i32 %210, i8* %212)
  br label %if.end.214

if.end.214:                                       ; preds = %if.then.204, %if.end.200
  store i32 0, i32* %k, align 4
  br label %for.cond.215

for.cond.215:                                     ; preds = %for.inc.242, %if.end.214
  %213 = load i32, i32* %k, align 4
  %214 = load %struct.Rule*, %struct.Rule** %r, align 8
  %pass_code216 = getelementptr inbounds %struct.Rule, %struct.Rule* %214, i32 0, i32 10
  %n217 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %pass_code216, i32 0, i32 0
  %215 = load i32, i32* %n217, align 4
  %cmp218 = icmp ult i32 %213, %215
  br i1 %cmp218, label %for.body.219, label %for.end.244

for.body.219:                                     ; preds = %for.cond.215
  %216 = load i32, i32* %k, align 4
  %idxprom220 = sext i32 %216 to i64
  %217 = load %struct.Rule*, %struct.Rule** %r, align 8
  %pass_code221 = getelementptr inbounds %struct.Rule, %struct.Rule* %217, i32 0, i32 10
  %v222 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %pass_code221, i32 0, i32 2
  %218 = load %struct.Code**, %struct.Code*** %v222, align 8
  %arrayidx223 = getelementptr inbounds %struct.Code*, %struct.Code** %218, i64 %idxprom220
  %219 = load %struct.Code*, %struct.Code** %arrayidx223, align 8
  %tobool224 = icmp ne %struct.Code* %219, null
  br i1 %tobool224, label %if.then.225, label %if.end.241

if.then.225:                                      ; preds = %for.body.219
  %220 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %221 = load i32, i32* %k, align 4
  %222 = load %struct.Rule*, %struct.Rule** %r, align 8
  %prod226 = getelementptr inbounds %struct.Rule, %struct.Rule* %222, i32 0, i32 1
  %223 = load %struct.Production*, %struct.Production** %prod226, align 8
  %index227 = getelementptr inbounds %struct.Production, %struct.Production* %223, i32 0, i32 3
  %224 = load i32, i32* %index227, align 4
  %225 = load %struct.Rule*, %struct.Rule** %r, align 8
  %index228 = getelementptr inbounds %struct.Rule, %struct.Rule* %225, i32 0, i32 0
  %226 = load i32, i32* %index228, align 4
  %227 = load i8*, i8** %tag.addr, align 8
  %228 = load i8*, i8** @reduction_args, align 8
  %call229 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %220, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i32 0, i32 0), i32 %221, i32 %224, i32 %226, i8* %227, i8* %228)
  %229 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %230 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %231 = load %struct.Rule*, %struct.Rule** %r, align 8
  %232 = load i32, i32* %k, align 4
  %idxprom230 = sext i32 %232 to i64
  %233 = load %struct.Rule*, %struct.Rule** %r, align 8
  %pass_code231 = getelementptr inbounds %struct.Rule, %struct.Rule* %233, i32 0, i32 10
  %v232 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %pass_code231, i32 0, i32 2
  %234 = load %struct.Code**, %struct.Code*** %v232, align 8
  %arrayidx233 = getelementptr inbounds %struct.Code*, %struct.Code** %234, i64 %idxprom230
  %235 = load %struct.Code*, %struct.Code** %arrayidx233, align 8
  %code234 = getelementptr inbounds %struct.Code, %struct.Code* %235, i32 0, i32 0
  %236 = load i8*, i8** %code234, align 8
  %237 = load i32, i32* %k, align 4
  %idxprom235 = sext i32 %237 to i64
  %238 = load %struct.Rule*, %struct.Rule** %r, align 8
  %pass_code236 = getelementptr inbounds %struct.Rule, %struct.Rule* %238, i32 0, i32 10
  %v237 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %pass_code236, i32 0, i32 2
  %239 = load %struct.Code**, %struct.Code*** %v237, align 8
  %arrayidx238 = getelementptr inbounds %struct.Code*, %struct.Code** %239, i64 %idxprom235
  %240 = load %struct.Code*, %struct.Code** %arrayidx238, align 8
  %line239 = getelementptr inbounds %struct.Code, %struct.Code* %240, i32 0, i32 1
  %241 = load i32, i32* %line239, align 4
  %242 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %pathname240 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %242, i32 0, i32 0
  %243 = load i8*, i8** %pathname240, align 8
  call void @write_code_as_C(%struct._IO_FILE* %229, %struct.Grammar* %230, %struct.Rule* %231, i8* %236, i32 %241, i8* %243)
  br label %if.end.241

if.end.241:                                       ; preds = %if.then.225, %for.body.219
  br label %for.inc.242

for.inc.242:                                      ; preds = %if.end.241
  %244 = load i32, i32* %k, align 4
  %inc243 = add nsw i32 %244, 1
  store i32 %inc243, i32* %k, align 4
  br label %for.cond.215

for.end.244:                                      ; preds = %for.cond.215
  %245 = load %struct.Rule*, %struct.Rule** %r, align 8
  %speculative_code245 = getelementptr inbounds %struct.Rule, %struct.Rule* %245, i32 0, i32 8
  %code246 = getelementptr inbounds %struct.Code, %struct.Code* %speculative_code245, i32 0, i32 0
  %246 = load i8*, i8** %code246, align 8
  %tobool247 = icmp ne i8* %246, null
  br i1 %tobool247, label %if.then.248, label %if.else

if.then.248:                                      ; preds = %for.end.244
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %speculative_code, i32 0, i32 0
  %247 = load %struct.Rule*, %struct.Rule** %r, align 8
  %prod249 = getelementptr inbounds %struct.Rule, %struct.Rule* %247, i32 0, i32 1
  %248 = load %struct.Production*, %struct.Production** %prod249, align 8
  %index250 = getelementptr inbounds %struct.Production, %struct.Production* %248, i32 0, i32 3
  %249 = load i32, i32* %index250, align 4
  %250 = load %struct.Rule*, %struct.Rule** %r, align 8
  %index251 = getelementptr inbounds %struct.Rule, %struct.Rule* %250, i32 0, i32 0
  %251 = load i32, i32* %index251, align 4
  %252 = load i8*, i8** %tag.addr, align 8
  %call252 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.42, i32 0, i32 0), i32 %249, i32 %251, i8* %252) #5
  br label %if.end.268

if.else:                                          ; preds = %for.end.244
  %253 = load %struct.Rule*, %struct.Rule** %rdefault, align 8
  %tobool253 = icmp ne %struct.Rule* %253, null
  br i1 %tobool253, label %land.lhs.true.254, label %if.else.264

land.lhs.true.254:                                ; preds = %if.else
  %254 = load %struct.Rule*, %struct.Rule** %rdefault, align 8
  %speculative_code255 = getelementptr inbounds %struct.Rule, %struct.Rule* %254, i32 0, i32 8
  %code256 = getelementptr inbounds %struct.Code, %struct.Code* %speculative_code255, i32 0, i32 0
  %255 = load i8*, i8** %code256, align 8
  %tobool257 = icmp ne i8* %255, null
  br i1 %tobool257, label %if.then.258, label %if.else.264

if.then.258:                                      ; preds = %land.lhs.true.254
  %arraydecay259 = getelementptr inbounds [256 x i8], [256 x i8]* %speculative_code, i32 0, i32 0
  %256 = load %struct.Rule*, %struct.Rule** %rdefault, align 8
  %prod260 = getelementptr inbounds %struct.Rule, %struct.Rule* %256, i32 0, i32 1
  %257 = load %struct.Production*, %struct.Production** %prod260, align 8
  %index261 = getelementptr inbounds %struct.Production, %struct.Production* %257, i32 0, i32 3
  %258 = load i32, i32* %index261, align 4
  %259 = load %struct.Rule*, %struct.Rule** %rdefault, align 8
  %index262 = getelementptr inbounds %struct.Rule, %struct.Rule* %259, i32 0, i32 0
  %260 = load i32, i32* %index262, align 4
  %261 = load i8*, i8** %tag.addr, align 8
  %call263 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay259, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.42, i32 0, i32 0), i32 %258, i32 %260, i8* %261) #5
  br label %if.end.267

if.else.264:                                      ; preds = %land.lhs.true.254, %if.else
  %arraydecay265 = getelementptr inbounds [256 x i8], [256 x i8]* %speculative_code, i32 0, i32 0
  %call266 = call i8* @strcpy(i8* %arraydecay265, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0)) #5
  br label %if.end.267

if.end.267:                                       ; preds = %if.else.264, %if.then.258
  br label %if.end.268

if.end.268:                                       ; preds = %if.end.267, %if.then.248
  %262 = load %struct.Rule*, %struct.Rule** %r, align 8
  %final_code269 = getelementptr inbounds %struct.Rule, %struct.Rule* %262, i32 0, i32 9
  %code270 = getelementptr inbounds %struct.Code, %struct.Code* %final_code269, i32 0, i32 0
  %263 = load i8*, i8** %code270, align 8
  %tobool271 = icmp ne i8* %263, null
  br i1 %tobool271, label %if.then.272, label %if.else.278

if.then.272:                                      ; preds = %if.end.268
  %arraydecay273 = getelementptr inbounds [256 x i8], [256 x i8]* %final_code, i32 0, i32 0
  %264 = load %struct.Rule*, %struct.Rule** %r, align 8
  %prod274 = getelementptr inbounds %struct.Rule, %struct.Rule* %264, i32 0, i32 1
  %265 = load %struct.Production*, %struct.Production** %prod274, align 8
  %index275 = getelementptr inbounds %struct.Production, %struct.Production* %265, i32 0, i32 3
  %266 = load i32, i32* %index275, align 4
  %267 = load %struct.Rule*, %struct.Rule** %r, align 8
  %index276 = getelementptr inbounds %struct.Rule, %struct.Rule* %267, i32 0, i32 0
  %268 = load i32, i32* %index276, align 4
  %269 = load i8*, i8** %tag.addr, align 8
  %call277 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay273, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.44, i32 0, i32 0), i32 %266, i32 %268, i8* %269) #5
  br label %if.end.294

if.else.278:                                      ; preds = %if.end.268
  %270 = load %struct.Rule*, %struct.Rule** %rdefault, align 8
  %tobool279 = icmp ne %struct.Rule* %270, null
  br i1 %tobool279, label %land.lhs.true.280, label %if.else.290

land.lhs.true.280:                                ; preds = %if.else.278
  %271 = load %struct.Rule*, %struct.Rule** %rdefault, align 8
  %final_code281 = getelementptr inbounds %struct.Rule, %struct.Rule* %271, i32 0, i32 9
  %code282 = getelementptr inbounds %struct.Code, %struct.Code* %final_code281, i32 0, i32 0
  %272 = load i8*, i8** %code282, align 8
  %tobool283 = icmp ne i8* %272, null
  br i1 %tobool283, label %if.then.284, label %if.else.290

if.then.284:                                      ; preds = %land.lhs.true.280
  %arraydecay285 = getelementptr inbounds [256 x i8], [256 x i8]* %final_code, i32 0, i32 0
  %273 = load %struct.Rule*, %struct.Rule** %rdefault, align 8
  %prod286 = getelementptr inbounds %struct.Rule, %struct.Rule* %273, i32 0, i32 1
  %274 = load %struct.Production*, %struct.Production** %prod286, align 8
  %index287 = getelementptr inbounds %struct.Production, %struct.Production* %274, i32 0, i32 3
  %275 = load i32, i32* %index287, align 4
  %276 = load %struct.Rule*, %struct.Rule** %rdefault, align 8
  %index288 = getelementptr inbounds %struct.Rule, %struct.Rule* %276, i32 0, i32 0
  %277 = load i32, i32* %index288, align 4
  %278 = load i8*, i8** %tag.addr, align 8
  %call289 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay285, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.44, i32 0, i32 0), i32 %275, i32 %277, i8* %278) #5
  br label %if.end.293

if.else.290:                                      ; preds = %land.lhs.true.280, %if.else.278
  %arraydecay291 = getelementptr inbounds [256 x i8], [256 x i8]* %final_code, i32 0, i32 0
  %call292 = call i8* @strcpy(i8* %arraydecay291, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0)) #5
  br label %if.end.293

if.end.293:                                       ; preds = %if.else.290, %if.then.284
  br label %if.end.294

if.end.294:                                       ; preds = %if.end.293, %if.then.272
  %279 = load %struct.Rule*, %struct.Rule** %r, align 8
  %pass_code295 = getelementptr inbounds %struct.Rule, %struct.Rule* %279, i32 0, i32 10
  %n296 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %pass_code295, i32 0, i32 0
  %280 = load i32, i32* %n296, align 4
  store i32 %280, i32* %pmax, align 4
  %281 = load %struct.Rule*, %struct.Rule** %r, align 8
  %pass_code297 = getelementptr inbounds %struct.Rule, %struct.Rule* %281, i32 0, i32 10
  %n298 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %pass_code297, i32 0, i32 0
  %282 = load i32, i32* %n298, align 4
  %tobool299 = icmp ne i32 %282, 0
  br i1 %tobool299, label %if.then.306, label %lor.lhs.false.300

lor.lhs.false.300:                                ; preds = %if.end.294
  %283 = load %struct.Rule*, %struct.Rule** %rdefault, align 8
  %tobool301 = icmp ne %struct.Rule* %283, null
  br i1 %tobool301, label %land.lhs.true.302, label %if.else.384

land.lhs.true.302:                                ; preds = %lor.lhs.false.300
  %284 = load %struct.Rule*, %struct.Rule** %rdefault, align 8
  %pass_code303 = getelementptr inbounds %struct.Rule, %struct.Rule* %284, i32 0, i32 10
  %n304 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %pass_code303, i32 0, i32 0
  %285 = load i32, i32* %n304, align 4
  %tobool305 = icmp ne i32 %285, 0
  br i1 %tobool305, label %if.then.306, label %if.else.384

if.then.306:                                      ; preds = %land.lhs.true.302, %if.end.294
  %286 = load %struct.Rule*, %struct.Rule** %rdefault, align 8
  %tobool307 = icmp ne %struct.Rule* %286, null
  br i1 %tobool307, label %land.lhs.true.308, label %if.end.315

land.lhs.true.308:                                ; preds = %if.then.306
  %287 = load %struct.Rule*, %struct.Rule** %rdefault, align 8
  %pass_code309 = getelementptr inbounds %struct.Rule, %struct.Rule* %287, i32 0, i32 10
  %n310 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %pass_code309, i32 0, i32 0
  %288 = load i32, i32* %n310, align 4
  %289 = load i32, i32* %pmax, align 4
  %cmp311 = icmp ugt i32 %288, %289
  br i1 %cmp311, label %if.then.312, label %if.end.315

if.then.312:                                      ; preds = %land.lhs.true.308
  %290 = load %struct.Rule*, %struct.Rule** %rdefault, align 8
  %pass_code313 = getelementptr inbounds %struct.Rule, %struct.Rule* %290, i32 0, i32 10
  %n314 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %pass_code313, i32 0, i32 0
  %291 = load i32, i32* %n314, align 4
  store i32 %291, i32* %pmax, align 4
  br label %if.end.315

if.end.315:                                       ; preds = %if.then.312, %land.lhs.true.308, %if.then.306
  %292 = load %struct.Rule*, %struct.Rule** %r, align 8
  %pass_code316 = getelementptr inbounds %struct.Rule, %struct.Rule* %292, i32 0, i32 10
  %n317 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %pass_code316, i32 0, i32 0
  %293 = load i32, i32* %n317, align 4
  %tobool318 = icmp ne i32 %293, 0
  br i1 %tobool318, label %if.else.325, label %if.then.319

if.then.319:                                      ; preds = %if.end.315
  %arraydecay320 = getelementptr inbounds [256 x i8], [256 x i8]* %pass_code, i32 0, i32 0
  %294 = load %struct.Rule*, %struct.Rule** %rdefault, align 8
  %prod321 = getelementptr inbounds %struct.Rule, %struct.Rule* %294, i32 0, i32 1
  %295 = load %struct.Production*, %struct.Production** %prod321, align 8
  %index322 = getelementptr inbounds %struct.Production, %struct.Production* %295, i32 0, i32 3
  %296 = load i32, i32* %index322, align 4
  %297 = load %struct.Rule*, %struct.Rule** %rdefault, align 8
  %index323 = getelementptr inbounds %struct.Rule, %struct.Rule* %297, i32 0, i32 0
  %298 = load i32, i32* %index323, align 4
  %299 = load i8*, i8** %tag.addr, align 8
  %call324 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay320, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.45, i32 0, i32 0), i32 %296, i32 %298, i8* %299) #5
  br label %if.end.383

if.else.325:                                      ; preds = %if.end.315
  %arraydecay326 = getelementptr inbounds [256 x i8], [256 x i8]* %pass_code, i32 0, i32 0
  %300 = load %struct.Rule*, %struct.Rule** %r, align 8
  %prod327 = getelementptr inbounds %struct.Rule, %struct.Rule* %300, i32 0, i32 1
  %301 = load %struct.Production*, %struct.Production** %prod327, align 8
  %index328 = getelementptr inbounds %struct.Production, %struct.Production* %301, i32 0, i32 3
  %302 = load i32, i32* %index328, align 4
  %303 = load %struct.Rule*, %struct.Rule** %r, align 8
  %index329 = getelementptr inbounds %struct.Rule, %struct.Rule* %303, i32 0, i32 0
  %304 = load i32, i32* %index329, align 4
  %305 = load i8*, i8** %tag.addr, align 8
  %call330 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay326, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.45, i32 0, i32 0), i32 %302, i32 %304, i8* %305) #5
  %306 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay331 = getelementptr inbounds [256 x i8], [256 x i8]* %pass_code, i32 0, i32 0
  %call332 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %306, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.46, i32 0, i32 0), i8* %arraydecay331)
  store i32 0, i32* %k, align 4
  br label %for.cond.333

for.cond.333:                                     ; preds = %for.inc.379, %if.else.325
  %307 = load i32, i32* %k, align 4
  %308 = load i32, i32* %pmax, align 4
  %cmp334 = icmp slt i32 %307, %308
  br i1 %cmp334, label %for.body.335, label %for.end.381

for.body.335:                                     ; preds = %for.cond.333
  %309 = load %struct.Rule*, %struct.Rule** %r, align 8
  %pass_code336 = getelementptr inbounds %struct.Rule, %struct.Rule* %309, i32 0, i32 10
  %n337 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %pass_code336, i32 0, i32 0
  %310 = load i32, i32* %n337, align 4
  %311 = load i32, i32* %k, align 4
  %cmp338 = icmp ugt i32 %310, %311
  br i1 %cmp338, label %land.lhs.true.339, label %if.else.352

land.lhs.true.339:                                ; preds = %for.body.335
  %312 = load i32, i32* %k, align 4
  %idxprom340 = sext i32 %312 to i64
  %313 = load %struct.Rule*, %struct.Rule** %r, align 8
  %pass_code341 = getelementptr inbounds %struct.Rule, %struct.Rule* %313, i32 0, i32 10
  %v342 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %pass_code341, i32 0, i32 2
  %314 = load %struct.Code**, %struct.Code*** %v342, align 8
  %arrayidx343 = getelementptr inbounds %struct.Code*, %struct.Code** %314, i64 %idxprom340
  %315 = load %struct.Code*, %struct.Code** %arrayidx343, align 8
  %tobool344 = icmp ne %struct.Code* %315, null
  br i1 %tobool344, label %if.then.345, label %if.else.352

if.then.345:                                      ; preds = %land.lhs.true.339
  %316 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %317 = load i32, i32* %k, align 4
  %318 = load %struct.Rule*, %struct.Rule** %r, align 8
  %prod346 = getelementptr inbounds %struct.Rule, %struct.Rule* %318, i32 0, i32 1
  %319 = load %struct.Production*, %struct.Production** %prod346, align 8
  %index347 = getelementptr inbounds %struct.Production, %struct.Production* %319, i32 0, i32 3
  %320 = load i32, i32* %index347, align 4
  %321 = load %struct.Rule*, %struct.Rule** %r, align 8
  %index348 = getelementptr inbounds %struct.Rule, %struct.Rule* %321, i32 0, i32 0
  %322 = load i32, i32* %index348, align 4
  %323 = load i8*, i8** %tag.addr, align 8
  %324 = load i32, i32* %k, align 4
  %325 = load i32, i32* %pmax, align 4
  %sub349 = sub nsw i32 %325, 1
  %cmp350 = icmp slt i32 %324, %sub349
  %cond = select i1 %cmp350, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0)
  %call351 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %316, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.47, i32 0, i32 0), i32 %317, i32 %320, i32 %322, i8* %323, i8* %cond)
  br label %if.end.378

if.else.352:                                      ; preds = %land.lhs.true.339, %for.body.335
  %326 = load %struct.Rule*, %struct.Rule** %rdefault, align 8
  %tobool353 = icmp ne %struct.Rule* %326, null
  br i1 %tobool353, label %land.lhs.true.354, label %if.else.372

land.lhs.true.354:                                ; preds = %if.else.352
  %327 = load %struct.Rule*, %struct.Rule** %rdefault, align 8
  %pass_code355 = getelementptr inbounds %struct.Rule, %struct.Rule* %327, i32 0, i32 10
  %n356 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %pass_code355, i32 0, i32 0
  %328 = load i32, i32* %n356, align 4
  %329 = load i32, i32* %k, align 4
  %cmp357 = icmp ugt i32 %328, %329
  br i1 %cmp357, label %land.lhs.true.358, label %if.else.372

land.lhs.true.358:                                ; preds = %land.lhs.true.354
  %330 = load i32, i32* %k, align 4
  %idxprom359 = sext i32 %330 to i64
  %331 = load %struct.Rule*, %struct.Rule** %rdefault, align 8
  %pass_code360 = getelementptr inbounds %struct.Rule, %struct.Rule* %331, i32 0, i32 10
  %v361 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %pass_code360, i32 0, i32 2
  %332 = load %struct.Code**, %struct.Code*** %v361, align 8
  %arrayidx362 = getelementptr inbounds %struct.Code*, %struct.Code** %332, i64 %idxprom359
  %333 = load %struct.Code*, %struct.Code** %arrayidx362, align 8
  %tobool363 = icmp ne %struct.Code* %333, null
  br i1 %tobool363, label %if.then.364, label %if.else.372

if.then.364:                                      ; preds = %land.lhs.true.358
  %334 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %335 = load i32, i32* %k, align 4
  %336 = load %struct.Rule*, %struct.Rule** %rdefault, align 8
  %prod365 = getelementptr inbounds %struct.Rule, %struct.Rule* %336, i32 0, i32 1
  %337 = load %struct.Production*, %struct.Production** %prod365, align 8
  %index366 = getelementptr inbounds %struct.Production, %struct.Production* %337, i32 0, i32 3
  %338 = load i32, i32* %index366, align 4
  %339 = load %struct.Rule*, %struct.Rule** %rdefault, align 8
  %index367 = getelementptr inbounds %struct.Rule, %struct.Rule* %339, i32 0, i32 0
  %340 = load i32, i32* %index367, align 4
  %341 = load i8*, i8** %tag.addr, align 8
  %342 = load i32, i32* %k, align 4
  %343 = load i32, i32* %pmax, align 4
  %sub368 = sub nsw i32 %343, 1
  %cmp369 = icmp slt i32 %342, %sub368
  %cond370 = select i1 %cmp369, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0)
  %call371 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %334, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.47, i32 0, i32 0), i32 %335, i32 %338, i32 %340, i8* %341, i8* %cond370)
  br label %if.end.377

if.else.372:                                      ; preds = %land.lhs.true.358, %land.lhs.true.354, %if.else.352
  %344 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %345 = load i32, i32* %k, align 4
  %346 = load i32, i32* %pmax, align 4
  %sub373 = sub nsw i32 %346, 1
  %cmp374 = icmp slt i32 %345, %sub373
  %cond375 = select i1 %cmp374, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0)
  %call376 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %344, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i8* %cond375)
  br label %if.end.377

if.end.377:                                       ; preds = %if.else.372, %if.then.364
  br label %if.end.378

if.end.378:                                       ; preds = %if.end.377, %if.then.345
  br label %for.inc.379

for.inc.379:                                      ; preds = %if.end.378
  %347 = load i32, i32* %k, align 4
  %inc380 = add nsw i32 %347, 1
  store i32 %inc380, i32* %k, align 4
  br label %for.cond.333

for.end.381:                                      ; preds = %for.cond.333
  %348 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call382 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %348, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0))
  br label %if.end.383

if.end.383:                                       ; preds = %for.end.381, %if.then.319
  br label %if.end.387

if.else.384:                                      ; preds = %land.lhs.true.302, %lor.lhs.false.300
  %arraydecay385 = getelementptr inbounds [256 x i8], [256 x i8]* %pass_code, i32 0, i32 0
  %call386 = call i8* @strcpy(i8* %arraydecay385, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0)) #5
  br label %if.end.387

if.end.387:                                       ; preds = %if.else.384, %if.end.383
  %349 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %350 = load %struct.Rule*, %struct.Rule** %r, align 8
  %index388 = getelementptr inbounds %struct.Rule, %struct.Rule* %350, i32 0, i32 0
  %351 = load i32, i32* %index388, align 4
  %352 = load i8*, i8** %tag.addr, align 8
  %call389 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %349, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.50, i32 0, i32 0), i32 %351, i8* %352)
  %353 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %354 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems390 = getelementptr inbounds %struct.Rule, %struct.Rule* %354, i32 0, i32 6
  %n391 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems390, i32 0, i32 0
  %355 = load i32, i32* %n391, align 4
  %356 = load %struct.Rule*, %struct.Rule** %r, align 8
  %prod392 = getelementptr inbounds %struct.Rule, %struct.Rule* %356, i32 0, i32 1
  %357 = load %struct.Production*, %struct.Production** %prod392, align 8
  %index393 = getelementptr inbounds %struct.Production, %struct.Production* %357, i32 0, i32 3
  %358 = load i32, i32* %index393, align 4
  %arraydecay394 = getelementptr inbounds [256 x i8], [256 x i8]* %speculative_code, i32 0, i32 0
  %arraydecay395 = getelementptr inbounds [256 x i8], [256 x i8]* %final_code, i32 0, i32 0
  %359 = load %struct.Rule*, %struct.Rule** %r, align 8
  %op_assoc396 = getelementptr inbounds %struct.Rule, %struct.Rule* %359, i32 0, i32 3
  %360 = load i32, i32* %op_assoc396, align 4
  %361 = load %struct.Rule*, %struct.Rule** %r, align 8
  %rule_assoc397 = getelementptr inbounds %struct.Rule, %struct.Rule* %361, i32 0, i32 5
  %362 = load i32, i32* %rule_assoc397, align 4
  %363 = load %struct.Rule*, %struct.Rule** %r, align 8
  %op_priority398 = getelementptr inbounds %struct.Rule, %struct.Rule* %363, i32 0, i32 2
  %364 = load i32, i32* %op_priority398, align 4
  %365 = load %struct.Rule*, %struct.Rule** %r, align 8
  %rule_priority399 = getelementptr inbounds %struct.Rule, %struct.Rule* %365, i32 0, i32 4
  %366 = load i32, i32* %rule_priority399, align 4
  %367 = load %struct.Rule*, %struct.Rule** %r, align 8
  %prod400 = getelementptr inbounds %struct.Rule, %struct.Rule* %367, i32 0, i32 1
  %368 = load %struct.Production*, %struct.Production** %prod400, align 8
  %internal = getelementptr inbounds %struct.Production, %struct.Production* %368, i32 0, i32 4
  %bf.load = load i8, i8* %internal, align 4
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 7
  %bf.cast = zext i8 %bf.clear to i32
  %tobool401 = icmp ne i32 %bf.cast, 0
  br i1 %tobool401, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.387
  br label %cond.end

cond.false:                                       ; preds = %if.end.387
  %369 = load %struct.Rule*, %struct.Rule** %r, align 8
  %action_index402 = getelementptr inbounds %struct.Rule, %struct.Rule* %369, i32 0, i32 11
  %370 = load i32, i32* %action_index402, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond403 = phi i32 [ -1, %cond.true ], [ %370, %cond.false ]
  %371 = load i32, i32* %pmax, align 4
  %arraydecay404 = getelementptr inbounds [256 x i8], [256 x i8]* %pass_code, i32 0, i32 0
  %call405 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %353, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.51, i32 0, i32 0), i32 %355, i32 %358, i8* %arraydecay394, i8* %arraydecay395, i32 %360, i32 %362, i32 %364, i32 %366, i32 %cond403, i32 %371, i8* %arraydecay404)
  br label %for.inc.406

for.inc.406:                                      ; preds = %cond.end, %if.then.187
  %372 = load i32, i32* %j, align 4
  %inc407 = add nsw i32 %372, 1
  store i32 %inc407, i32* %j, align 4
  br label %for.cond.176

for.end.408:                                      ; preds = %for.cond.176
  br label %for.inc.409

for.inc.409:                                      ; preds = %for.end.408
  %373 = load i32, i32* %i, align 4
  %inc410 = add nsw i32 %373, 1
  store i32 %inc410, i32* %i, align 4
  br label %for.cond.16

for.end.411:                                      ; preds = %for.cond.16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_scanner_data_as_C(%struct._IO_FILE* %fp, %struct.Grammar* %g, i8* %tag) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %g.addr = alloca %struct.Grammar*, align 8
  %tag.addr = alloca i8*, align 8
  %s = alloca %struct.State*, align 8
  %vsblock = alloca %struct.ScannerBlock*, align 8
  %xv = alloca %struct.ScannerBlock*, align 8
  %yv = alloca %struct.ScannerBlock*, align 8
  %scanner_block_hash = alloca [4 x %struct.VecScannerBlock], align 16
  %pscanner_block_hash = alloca %struct.VecScannerBlock*, align 8
  %trans_scanner_block_hash = alloca [4 x %struct.VecScannerBlock], align 16
  %ptrans_scanner_block_hash = alloca %struct.VecScannerBlock*, align 8
  %shift_hash = alloca %struct.VecAction, align 8
  %nvsblocks = alloca i32, align 4
  %ivsblock = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %x = alloca i32, align 4
  %xx = alloca i32, align 4
  %a = alloca %struct.Action*, align 8
  %ss = alloca %struct.VecScanState*, align 8
  %speculative_code = alloca [256 x i8], align 16
  %t = alloca %struct.Term*, align 8
  %va = alloca %struct.VecAction*, align 8
  %a347 = alloca %struct.Action*, align 8
  %aa = alloca %struct.Action*, align 8
  %tmp = alloca [256 x i8], align 16
  %a432 = alloca %struct.Action*, align 8
  %vs = alloca %struct.ScannerBlock, align 8
  %vs552 = alloca %struct.ScannerBlock, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals = getelementptr inbounds %struct.Grammar, %struct.Grammar* %1, i32 0, i32 2
  %n = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals, i32 0, i32 0
  %2 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals1 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %4, i32 0, i32 2
  %v = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals1, i32 0, i32 2
  %5 = load %struct.Term**, %struct.Term*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.Term*, %struct.Term** %5, i64 %idxprom
  %6 = load %struct.Term*, %struct.Term** %arrayidx, align 8
  store %struct.Term* %6, %struct.Term** %t, align 8
  %7 = load %struct.Term*, %struct.Term** %t, align 8
  %regex_production = getelementptr inbounds %struct.Term, %struct.Term* %7, i32 0, i32 8
  %8 = load %struct.Production*, %struct.Production** %regex_production, align 8
  %tobool = icmp ne %struct.Production* %8, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %9 = load %struct.Term*, %struct.Term** %t, align 8
  %regex_production2 = getelementptr inbounds %struct.Term, %struct.Term* %9, i32 0, i32 8
  %10 = load %struct.Production*, %struct.Production** %regex_production2, align 8
  %rules = getelementptr inbounds %struct.Production, %struct.Production* %10, i32 0, i32 2
  %v3 = getelementptr inbounds %struct.anon, %struct.anon* %rules, i32 0, i32 2
  %11 = load %struct.Rule**, %struct.Rule*** %v3, align 8
  %arrayidx4 = getelementptr inbounds %struct.Rule*, %struct.Rule** %11, i64 0
  %12 = load %struct.Rule*, %struct.Rule** %arrayidx4, align 8
  %speculative_code5 = getelementptr inbounds %struct.Rule, %struct.Rule* %12, i32 0, i32 8
  %code = getelementptr inbounds %struct.Code, %struct.Code* %speculative_code5, i32 0, i32 0
  %13 = load i8*, i8** %code, align 8
  %tobool6 = icmp ne i8* %13, null
  br i1 %tobool6, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %speculative_code, i32 0, i32 0
  %14 = load %struct.Term*, %struct.Term** %t, align 8
  %regex_production7 = getelementptr inbounds %struct.Term, %struct.Term* %14, i32 0, i32 8
  %15 = load %struct.Production*, %struct.Production** %regex_production7, align 8
  %index = getelementptr inbounds %struct.Production, %struct.Production* %15, i32 0, i32 3
  %16 = load i32, i32* %index, align 4
  %17 = load %struct.Term*, %struct.Term** %t, align 8
  %regex_production8 = getelementptr inbounds %struct.Term, %struct.Term* %17, i32 0, i32 8
  %18 = load %struct.Production*, %struct.Production** %regex_production8, align 8
  %rules9 = getelementptr inbounds %struct.Production, %struct.Production* %18, i32 0, i32 2
  %v10 = getelementptr inbounds %struct.anon, %struct.anon* %rules9, i32 0, i32 2
  %19 = load %struct.Rule**, %struct.Rule*** %v10, align 8
  %arrayidx11 = getelementptr inbounds %struct.Rule*, %struct.Rule** %19, i64 0
  %20 = load %struct.Rule*, %struct.Rule** %arrayidx11, align 8
  %index12 = getelementptr inbounds %struct.Rule, %struct.Rule* %20, i32 0, i32 0
  %21 = load i32, i32* %index12, align 4
  %22 = load i8*, i8** %tag.addr, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.42, i32 0, i32 0), i32 %16, i32 %21, i8* %22) #5
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %for.body
  %arraydecay13 = getelementptr inbounds [256 x i8], [256 x i8]* %speculative_code, i32 0, i32 0
  %call14 = call i8* @strcpy(i8* %arraydecay13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %24 = load i32, i32* %i, align 4
  %25 = load i8*, i8** %tag.addr, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %26 to i64
  %27 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals16 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %27, i32 0, i32 2
  %v17 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals16, i32 0, i32 2
  %28 = load %struct.Term**, %struct.Term*** %v17, align 8
  %arrayidx18 = getelementptr inbounds %struct.Term*, %struct.Term** %28, i64 %idxprom15
  %29 = load %struct.Term*, %struct.Term** %arrayidx18, align 8
  %index19 = getelementptr inbounds %struct.Term, %struct.Term* %29, i32 0, i32 1
  %30 = load i32, i32* %index19, align 4
  %31 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions = getelementptr inbounds %struct.Grammar, %struct.Grammar* %31, i32 0, i32 1
  %n20 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions, i32 0, i32 0
  %32 = load i32, i32* %n20, align 4
  %add = add i32 %30, %32
  %33 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %33 to i64
  %34 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals22 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %34, i32 0, i32 2
  %v23 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals22, i32 0, i32 2
  %35 = load %struct.Term**, %struct.Term*** %v23, align 8
  %arrayidx24 = getelementptr inbounds %struct.Term*, %struct.Term** %35, i64 %idxprom21
  %36 = load %struct.Term*, %struct.Term** %arrayidx24, align 8
  %scan_kind = getelementptr inbounds %struct.Term, %struct.Term* %36, i32 0, i32 7
  %bf.load = load i8, i8* %scan_kind, align 4
  %bf.clear = and i8 %bf.load, 7
  %bf.cast = zext i8 %bf.clear to i32
  %37 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %37 to i64
  %38 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals26 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %38, i32 0, i32 2
  %v27 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals26, i32 0, i32 2
  %39 = load %struct.Term**, %struct.Term*** %v27, align 8
  %arrayidx28 = getelementptr inbounds %struct.Term*, %struct.Term** %39, i64 %idxprom25
  %40 = load %struct.Term*, %struct.Term** %arrayidx28, align 8
  %op_assoc = getelementptr inbounds %struct.Term, %struct.Term* %40, i32 0, i32 3
  %41 = load i32, i32* %op_assoc, align 4
  %42 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %42 to i64
  %43 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals30 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %43, i32 0, i32 2
  %v31 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals30, i32 0, i32 2
  %44 = load %struct.Term**, %struct.Term*** %v31, align 8
  %arrayidx32 = getelementptr inbounds %struct.Term*, %struct.Term** %44, i64 %idxprom29
  %45 = load %struct.Term*, %struct.Term** %arrayidx32, align 8
  %op_priority = getelementptr inbounds %struct.Term, %struct.Term* %45, i32 0, i32 4
  %46 = load i32, i32* %op_priority, align 4
  %47 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %47 to i64
  %48 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals34 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %48, i32 0, i32 2
  %v35 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals34, i32 0, i32 2
  %49 = load %struct.Term**, %struct.Term*** %v35, align 8
  %arrayidx36 = getelementptr inbounds %struct.Term*, %struct.Term** %49, i64 %idxprom33
  %50 = load %struct.Term*, %struct.Term** %arrayidx36, align 8
  %term_priority = getelementptr inbounds %struct.Term, %struct.Term* %50, i32 0, i32 2
  %51 = load i32, i32* %term_priority, align 4
  %arraydecay37 = getelementptr inbounds [256 x i8], [256 x i8]* %speculative_code, i32 0, i32 0
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.73, i32 0, i32 0), i32 %24, i8* %25, i32 %add, i32 %bf.cast, i32 %41, i32 %46, i32 %51, i8* %arraydecay37)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %52 = load i32, i32* %i, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %nvsblocks, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.51, %for.end
  %54 = load i32, i32* %i, align 4
  %55 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states = getelementptr inbounds %struct.Grammar, %struct.Grammar* %55, i32 0, i32 3
  %n41 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states, i32 0, i32 0
  %56 = load i32, i32* %n41, align 4
  %cmp42 = icmp ult i32 %54, %56
  br i1 %cmp42, label %for.body.43, label %for.end.53

for.body.43:                                      ; preds = %for.cond.40
  %57 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %57 to i64
  %58 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states45 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %58, i32 0, i32 3
  %v46 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states45, i32 0, i32 2
  %59 = load %struct.State**, %struct.State*** %v46, align 8
  %arrayidx47 = getelementptr inbounds %struct.State*, %struct.State** %59, i64 %idxprom44
  %60 = load %struct.State*, %struct.State** %arrayidx47, align 8
  %scanner = getelementptr inbounds %struct.State, %struct.State* %60, i32 0, i32 9
  %states48 = getelementptr inbounds %struct.Scanner, %struct.Scanner* %scanner, i32 0, i32 0
  %n49 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %states48, i32 0, i32 0
  %61 = load i32, i32* %n49, align 4
  %62 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %scanner_blocks = getelementptr inbounds %struct.Grammar, %struct.Grammar* %62, i32 0, i32 18
  %63 = load i32, i32* %scanner_blocks, align 4
  %mul = mul i32 %61, %63
  %64 = load i32, i32* %nvsblocks, align 4
  %add50 = add i32 %64, %mul
  store i32 %add50, i32* %nvsblocks, align 4
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.body.43
  %65 = load i32, i32* %i, align 4
  %inc52 = add nsw i32 %65, 1
  store i32 %inc52, i32* %i, align 4
  br label %for.cond.40

for.end.53:                                       ; preds = %for.cond.40
  %66 = load i32, i32* %nvsblocks, align 4
  %tobool54 = icmp ne i32 %66, 0
  br i1 %tobool54, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.53
  %67 = load i32, i32* %nvsblocks, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.end.53
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %67, %cond.true ], [ 1, %cond.false ]
  %conv = sext i32 %cond to i64
  %mul55 = mul i64 %conv, 32
  %call56 = call noalias i8* @malloc(i64 %mul55) #5
  %68 = bitcast i8* %call56 to %struct.ScannerBlock*
  store %struct.ScannerBlock* %68, %struct.ScannerBlock** %vsblock, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.75, %cond.end
  %69 = load i32, i32* %i, align 4
  %cmp58 = icmp slt i32 %69, 4
  br i1 %cmp58, label %for.body.60, label %for.end.77

for.body.60:                                      ; preds = %for.cond.57
  br label %do.body

do.body:                                          ; preds = %for.body.60
  %70 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %70 to i64
  %arrayidx62 = getelementptr inbounds [4 x %struct.VecScannerBlock], [4 x %struct.VecScannerBlock]* %scanner_block_hash, i32 0, i64 %idxprom61
  %n63 = getelementptr inbounds %struct.VecScannerBlock, %struct.VecScannerBlock* %arrayidx62, i32 0, i32 0
  store i32 0, i32* %n63, align 4
  %71 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %71 to i64
  %arrayidx65 = getelementptr inbounds [4 x %struct.VecScannerBlock], [4 x %struct.VecScannerBlock]* %scanner_block_hash, i32 0, i64 %idxprom64
  %v66 = getelementptr inbounds %struct.VecScannerBlock, %struct.VecScannerBlock* %arrayidx65, i32 0, i32 2
  store %struct.ScannerBlock** null, %struct.ScannerBlock*** %v66, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.67

do.body.67:                                       ; preds = %do.end
  %72 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %72 to i64
  %arrayidx69 = getelementptr inbounds [4 x %struct.VecScannerBlock], [4 x %struct.VecScannerBlock]* %trans_scanner_block_hash, i32 0, i64 %idxprom68
  %n70 = getelementptr inbounds %struct.VecScannerBlock, %struct.VecScannerBlock* %arrayidx69, i32 0, i32 0
  store i32 0, i32* %n70, align 4
  %73 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %73 to i64
  %arrayidx72 = getelementptr inbounds [4 x %struct.VecScannerBlock], [4 x %struct.VecScannerBlock]* %trans_scanner_block_hash, i32 0, i64 %idxprom71
  %v73 = getelementptr inbounds %struct.VecScannerBlock, %struct.VecScannerBlock* %arrayidx72, i32 0, i32 2
  store %struct.ScannerBlock** null, %struct.ScannerBlock*** %v73, align 8
  br label %do.end.74

do.end.74:                                        ; preds = %do.body.67
  br label %for.inc.75

for.inc.75:                                       ; preds = %do.end.74
  %74 = load i32, i32* %i, align 4
  %inc76 = add nsw i32 %74, 1
  store i32 %inc76, i32* %i, align 4
  br label %for.cond.57

for.end.77:                                       ; preds = %for.cond.57
  %75 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %scanner_block_size = getelementptr inbounds %struct.Grammar, %struct.Grammar* %75, i32 0, i32 19
  %76 = load i32, i32* %scanner_block_size, align 4
  %conv78 = sext i32 %76 to i64
  %77 = inttoptr i64 %conv78 to i8*
  store i8* %77, i8** getelementptr inbounds (%struct.hash_fns_t, %struct.hash_fns_t* bitcast ({ i32 (i8*, %struct.hash_fns_t*)*, i32 (i8*, i8*, %struct.hash_fns_t*)*, [2 x i8*] }* @scanner_block_fns to %struct.hash_fns_t*), i32 0, i32 2, i64 0), align 8
  %78 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %79 = bitcast %struct.Grammar* %78 to i8*
  store i8* %79, i8** getelementptr inbounds (%struct.hash_fns_t, %struct.hash_fns_t* bitcast ({ i32 (i8*, %struct.hash_fns_t*)*, i32 (i8*, i8*, %struct.hash_fns_t*)*, [2 x i8*] }* @scanner_block_fns to %struct.hash_fns_t*), i32 0, i32 2, i64 1), align 8
  %80 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %scanner_block_size79 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %80, i32 0, i32 19
  %81 = load i32, i32* %scanner_block_size79, align 4
  %conv80 = sext i32 %81 to i64
  %82 = inttoptr i64 %conv80 to i8*
  store i8* %82, i8** getelementptr inbounds (%struct.hash_fns_t, %struct.hash_fns_t* bitcast ({ i32 (i8*, %struct.hash_fns_t*)*, i32 (i8*, i8*, %struct.hash_fns_t*)*, [2 x i8*] }* @trans_scanner_block_fns to %struct.hash_fns_t*), i32 0, i32 2, i64 0), align 8
  %83 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %84 = bitcast %struct.Grammar* %83 to i8*
  store i8* %84, i8** getelementptr inbounds (%struct.hash_fns_t, %struct.hash_fns_t* bitcast ({ i32 (i8*, %struct.hash_fns_t*)*, i32 (i8*, i8*, %struct.hash_fns_t*)*, [2 x i8*] }* @trans_scanner_block_fns to %struct.hash_fns_t*), i32 0, i32 2, i64 1), align 8
  br label %do.body.81

do.body.81:                                       ; preds = %for.end.77
  %n82 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_hash, i32 0, i32 0
  store i32 0, i32* %n82, align 4
  %v83 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_hash, i32 0, i32 2
  store %struct.Action** null, %struct.Action*** %v83, align 8
  br label %do.end.84

do.end.84:                                        ; preds = %do.body.81
  store i32 0, i32* %ivsblock, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.398, %do.end.84
  %85 = load i32, i32* %i, align 4
  %86 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states86 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %86, i32 0, i32 3
  %n87 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states86, i32 0, i32 0
  %87 = load i32, i32* %n87, align 4
  %cmp88 = icmp ult i32 %85, %87
  br i1 %cmp88, label %for.body.90, label %for.end.400

for.body.90:                                      ; preds = %for.cond.85
  %88 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %88 to i64
  %89 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states92 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %89, i32 0, i32 3
  %v93 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states92, i32 0, i32 2
  %90 = load %struct.State**, %struct.State*** %v93, align 8
  %arrayidx94 = getelementptr inbounds %struct.State*, %struct.State** %90, i64 %idxprom91
  %91 = load %struct.State*, %struct.State** %arrayidx94, align 8
  store %struct.State* %91, %struct.State** %s, align 8
  %92 = load %struct.State*, %struct.State** %s, align 8
  %scanner95 = getelementptr inbounds %struct.State, %struct.State* %92, i32 0, i32 9
  %states96 = getelementptr inbounds %struct.Scanner, %struct.Scanner* %scanner95, i32 0, i32 0
  store %struct.VecScanState* %states96, %struct.VecScanState** %ss, align 8
  %93 = load %struct.State*, %struct.State** %s, align 8
  %shift_actions = getelementptr inbounds %struct.State, %struct.State* %93, i32 0, i32 5
  %n97 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions, i32 0, i32 0
  %94 = load i32, i32* %n97, align 4
  %tobool98 = icmp ne i32 %94, 0
  br i1 %tobool98, label %land.lhs.true.99, label %if.end.124

land.lhs.true.99:                                 ; preds = %for.body.90
  %95 = load %struct.State*, %struct.State** %s, align 8
  %same_shifts = getelementptr inbounds %struct.State, %struct.State* %95, i32 0, i32 13
  %96 = load %struct.State*, %struct.State** %same_shifts, align 8
  %tobool100 = icmp ne %struct.State* %96, null
  br i1 %tobool100, label %if.end.124, label %if.then.101

if.then.101:                                      ; preds = %land.lhs.true.99
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %98 = load i32, i32* %i, align 4
  %99 = load i8*, i8** %tag.addr, align 8
  %call102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %97, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.74, i32 0, i32 0), i32 %98, i8* %99)
  store i32 0, i32* %j, align 4
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.120, %if.then.101
  %100 = load i32, i32* %j, align 4
  %101 = load %struct.State*, %struct.State** %s, align 8
  %shift_actions104 = getelementptr inbounds %struct.State, %struct.State* %101, i32 0, i32 5
  %n105 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions104, i32 0, i32 0
  %102 = load i32, i32* %n105, align 4
  %cmp106 = icmp ult i32 %100, %102
  br i1 %cmp106, label %for.body.108, label %for.end.122

for.body.108:                                     ; preds = %for.cond.103
  %103 = load i32, i32* %j, align 4
  %idxprom109 = sext i32 %103 to i64
  %104 = load %struct.State*, %struct.State** %s, align 8
  %shift_actions110 = getelementptr inbounds %struct.State, %struct.State* %104, i32 0, i32 5
  %v111 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions110, i32 0, i32 2
  %105 = load %struct.Action**, %struct.Action*** %v111, align 8
  %arrayidx112 = getelementptr inbounds %struct.Action*, %struct.Action** %105, i64 %idxprom109
  %106 = load %struct.Action*, %struct.Action** %arrayidx112, align 8
  store %struct.Action* %106, %struct.Action** %a, align 8
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %108 = load %struct.Action*, %struct.Action** %a, align 8
  %term = getelementptr inbounds %struct.Action, %struct.Action* %108, i32 0, i32 1
  %109 = load %struct.Term*, %struct.Term** %term, align 8
  %index113 = getelementptr inbounds %struct.Term, %struct.Term* %109, i32 0, i32 1
  %110 = load i32, i32* %index113, align 4
  %111 = load i8*, i8** %tag.addr, align 8
  %112 = load i32, i32* %j, align 4
  %113 = load %struct.State*, %struct.State** %s, align 8
  %shift_actions114 = getelementptr inbounds %struct.State, %struct.State* %113, i32 0, i32 5
  %n115 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions114, i32 0, i32 0
  %114 = load i32, i32* %n115, align 4
  %sub = sub i32 %114, 1
  %cmp116 = icmp eq i32 %112, %sub
  %cond118 = select i1 %cmp116, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0)
  %call119 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.75, i32 0, i32 0), i32 %110, i8* %111, i8* %cond118)
  br label %for.inc.120

for.inc.120:                                      ; preds = %for.body.108
  %115 = load i32, i32* %j, align 4
  %inc121 = add nsw i32 %115, 1
  store i32 %inc121, i32* %j, align 4
  br label %for.cond.103

for.end.122:                                      ; preds = %for.cond.103
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call123 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0))
  br label %if.end.124

if.end.124:                                       ; preds = %for.end.122, %land.lhs.true.99, %for.body.90
  store i32 0, i32* %j, align 4
  br label %for.cond.125

for.cond.125:                                     ; preds = %for.inc.152, %if.end.124
  %117 = load i32, i32* %j, align 4
  %118 = load %struct.State*, %struct.State** %s, align 8
  %scanner126 = getelementptr inbounds %struct.State, %struct.State* %118, i32 0, i32 9
  %transitions = getelementptr inbounds %struct.Scanner, %struct.Scanner* %scanner126, i32 0, i32 1
  %n127 = getelementptr inbounds %struct.VecScanStateTransition, %struct.VecScanStateTransition* %transitions, i32 0, i32 0
  %119 = load i32, i32* %n127, align 4
  %cmp128 = icmp ult i32 %117, %119
  br i1 %cmp128, label %for.body.130, label %for.end.154

for.body.130:                                     ; preds = %for.cond.125
  %120 = load i32, i32* %j, align 4
  %idxprom131 = sext i32 %120 to i64
  %121 = load %struct.State*, %struct.State** %s, align 8
  %scanner132 = getelementptr inbounds %struct.State, %struct.State* %121, i32 0, i32 9
  %transitions133 = getelementptr inbounds %struct.Scanner, %struct.Scanner* %scanner132, i32 0, i32 1
  %v134 = getelementptr inbounds %struct.VecScanStateTransition, %struct.VecScanStateTransition* %transitions133, i32 0, i32 2
  %122 = load %struct.ScanStateTransition**, %struct.ScanStateTransition*** %v134, align 8
  %arrayidx135 = getelementptr inbounds %struct.ScanStateTransition*, %struct.ScanStateTransition** %122, i64 %idxprom131
  %123 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %arrayidx135, align 8
  %accepts_diff = getelementptr inbounds %struct.ScanStateTransition, %struct.ScanStateTransition* %123, i32 0, i32 2
  store %struct.VecAction* %accepts_diff, %struct.VecAction** %va, align 8
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %125 = load i32, i32* %i, align 4
  %126 = load i32, i32* %j, align 4
  %127 = load i8*, i8** %tag.addr, align 8
  %call136 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %124, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.77, i32 0, i32 0), i32 %125, i32 %126, i8* %127)
  store i32 0, i32* %k, align 4
  br label %for.cond.137

for.cond.137:                                     ; preds = %for.inc.148, %for.body.130
  %128 = load i32, i32* %k, align 4
  %129 = load %struct.VecAction*, %struct.VecAction** %va, align 8
  %n138 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %129, i32 0, i32 0
  %130 = load i32, i32* %n138, align 4
  %cmp139 = icmp ult i32 %128, %130
  br i1 %cmp139, label %for.body.141, label %for.end.150

for.body.141:                                     ; preds = %for.cond.137
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %132 = load i32, i32* %k, align 4
  %idxprom142 = sext i32 %132 to i64
  %133 = load %struct.VecAction*, %struct.VecAction** %va, align 8
  %v143 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %133, i32 0, i32 2
  %134 = load %struct.Action**, %struct.Action*** %v143, align 8
  %arrayidx144 = getelementptr inbounds %struct.Action*, %struct.Action** %134, i64 %idxprom142
  %135 = load %struct.Action*, %struct.Action** %arrayidx144, align 8
  %term145 = getelementptr inbounds %struct.Action, %struct.Action* %135, i32 0, i32 1
  %136 = load %struct.Term*, %struct.Term** %term145, align 8
  %index146 = getelementptr inbounds %struct.Term, %struct.Term* %136, i32 0, i32 1
  %137 = load i32, i32* %index146, align 4
  %138 = load i8*, i8** %tag.addr, align 8
  %call147 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %131, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.78, i32 0, i32 0), i32 %137, i8* %138)
  br label %for.inc.148

for.inc.148:                                      ; preds = %for.body.141
  %139 = load i32, i32* %k, align 4
  %inc149 = add nsw i32 %139, 1
  store i32 %inc149, i32* %k, align 4
  br label %for.cond.137

for.end.150:                                      ; preds = %for.cond.137
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call151 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i32 0, i32 0))
  br label %for.inc.152

for.inc.152:                                      ; preds = %for.end.150
  %141 = load i32, i32* %j, align 4
  %inc153 = add nsw i32 %141, 1
  store i32 %inc153, i32* %j, align 4
  br label %for.cond.125

for.end.154:                                      ; preds = %for.cond.125
  %142 = load %struct.State*, %struct.State** %s, align 8
  %scanner155 = getelementptr inbounds %struct.State, %struct.State* %142, i32 0, i32 9
  %transitions156 = getelementptr inbounds %struct.Scanner, %struct.Scanner* %scanner155, i32 0, i32 1
  %n157 = getelementptr inbounds %struct.VecScanStateTransition, %struct.VecScanStateTransition* %transitions156, i32 0, i32 0
  %143 = load i32, i32* %n157, align 4
  %tobool158 = icmp ne i32 %143, 0
  br i1 %tobool158, label %if.then.159, label %if.end.180

if.then.159:                                      ; preds = %for.end.154
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %145 = load i32, i32* %i, align 4
  %146 = load i8*, i8** %tag.addr, align 8
  %call160 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %144, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.80, i32 0, i32 0), i32 %145, i8* %146)
  store i32 0, i32* %j, align 4
  br label %for.cond.161

for.cond.161:                                     ; preds = %for.inc.176, %if.then.159
  %147 = load i32, i32* %j, align 4
  %148 = load %struct.State*, %struct.State** %s, align 8
  %scanner162 = getelementptr inbounds %struct.State, %struct.State* %148, i32 0, i32 9
  %transitions163 = getelementptr inbounds %struct.Scanner, %struct.Scanner* %scanner162, i32 0, i32 1
  %n164 = getelementptr inbounds %struct.VecScanStateTransition, %struct.VecScanStateTransition* %transitions163, i32 0, i32 0
  %149 = load i32, i32* %n164, align 4
  %cmp165 = icmp ult i32 %147, %149
  br i1 %cmp165, label %for.body.167, label %for.end.178

for.body.167:                                     ; preds = %for.cond.161
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %151 = load i32, i32* %i, align 4
  %152 = load i32, i32* %j, align 4
  %153 = load i8*, i8** %tag.addr, align 8
  %154 = load i32, i32* %j, align 4
  %155 = load %struct.State*, %struct.State** %s, align 8
  %scanner168 = getelementptr inbounds %struct.State, %struct.State* %155, i32 0, i32 9
  %transitions169 = getelementptr inbounds %struct.Scanner, %struct.Scanner* %scanner168, i32 0, i32 1
  %n170 = getelementptr inbounds %struct.VecScanStateTransition, %struct.VecScanStateTransition* %transitions169, i32 0, i32 0
  %156 = load i32, i32* %n170, align 4
  %sub171 = sub i32 %156, 1
  %cmp172 = icmp eq i32 %154, %sub171
  %cond174 = select i1 %cmp172, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i32 0, i32 0)
  %call175 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %150, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.81, i32 0, i32 0), i32 %151, i32 %152, i8* %153, i8* %cond174)
  br label %for.inc.176

for.inc.176:                                      ; preds = %for.body.167
  %157 = load i32, i32* %j, align 4
  %inc177 = add nsw i32 %157, 1
  store i32 %inc177, i32* %j, align 4
  br label %for.cond.161

for.end.178:                                      ; preds = %for.cond.161
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call179 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %158, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0))
  br label %if.end.180

if.end.180:                                       ; preds = %for.end.178, %for.end.154
  %159 = load %struct.State*, %struct.State** %s, align 8
  %call181 = call i32 @scanner_size(%struct.State* %159)
  %sub182 = sub nsw i32 %call181, 1
  %idxprom183 = sext i32 %sub182 to i64
  %arrayidx184 = getelementptr inbounds [4 x %struct.VecScannerBlock], [4 x %struct.VecScannerBlock]* %scanner_block_hash, i32 0, i64 %idxprom183
  store %struct.VecScannerBlock* %arrayidx184, %struct.VecScannerBlock** %pscanner_block_hash, align 8
  %160 = load %struct.State*, %struct.State** %s, align 8
  %call185 = call i32 @scanner_size(%struct.State* %160)
  %sub186 = sub nsw i32 %call185, 1
  %idxprom187 = sext i32 %sub186 to i64
  %arrayidx188 = getelementptr inbounds [4 x %struct.VecScannerBlock], [4 x %struct.VecScannerBlock]* %trans_scanner_block_hash, i32 0, i64 %idxprom187
  store %struct.VecScannerBlock* %arrayidx188, %struct.VecScannerBlock** %ptrans_scanner_block_hash, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.189

for.cond.189:                                     ; preds = %for.inc.395, %if.end.180
  %161 = load i32, i32* %j, align 4
  %162 = load %struct.VecScanState*, %struct.VecScanState** %ss, align 8
  %n190 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %162, i32 0, i32 0
  %163 = load i32, i32* %n190, align 4
  %cmp191 = icmp ult i32 %161, %163
  br i1 %cmp191, label %for.body.193, label %for.end.397

for.body.193:                                     ; preds = %for.cond.189
  %164 = load %struct.State*, %struct.State** %s, align 8
  %same_shifts194 = getelementptr inbounds %struct.State, %struct.State* %164, i32 0, i32 13
  %165 = load %struct.State*, %struct.State** %same_shifts194, align 8
  %tobool195 = icmp ne %struct.State* %165, null
  br i1 %tobool195, label %if.end.394, label %if.then.196

if.then.196:                                      ; preds = %for.body.193
  store i32 0, i32* %k, align 4
  br label %for.cond.197

for.cond.197:                                     ; preds = %for.inc.329, %if.then.196
  %166 = load i32, i32* %k, align 4
  %167 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %scanner_blocks198 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %167, i32 0, i32 18
  %168 = load i32, i32* %scanner_blocks198, align 4
  %cmp199 = icmp slt i32 %166, %168
  br i1 %cmp199, label %for.body.201, label %for.end.331

for.body.201:                                     ; preds = %for.cond.197
  %169 = load %struct.State*, %struct.State** %s, align 8
  %index202 = getelementptr inbounds %struct.State, %struct.State* %169, i32 0, i32 0
  %170 = load i32, i32* %index202, align 4
  %171 = load i32, i32* %ivsblock, align 4
  %idxprom203 = sext i32 %171 to i64
  %172 = load %struct.ScannerBlock*, %struct.ScannerBlock** %vsblock, align 8
  %arrayidx204 = getelementptr inbounds %struct.ScannerBlock, %struct.ScannerBlock* %172, i64 %idxprom203
  %state_index = getelementptr inbounds %struct.ScannerBlock, %struct.ScannerBlock* %arrayidx204, i32 0, i32 0
  store i32 %170, i32* %state_index, align 4
  %173 = load i32, i32* %j, align 4
  %174 = load i32, i32* %ivsblock, align 4
  %idxprom205 = sext i32 %174 to i64
  %175 = load %struct.ScannerBlock*, %struct.ScannerBlock** %vsblock, align 8
  %arrayidx206 = getelementptr inbounds %struct.ScannerBlock, %struct.ScannerBlock* %175, i64 %idxprom205
  %scanner_index = getelementptr inbounds %struct.ScannerBlock, %struct.ScannerBlock* %arrayidx206, i32 0, i32 1
  store i32 %173, i32* %scanner_index, align 4
  %176 = load i32, i32* %k, align 4
  %177 = load i32, i32* %ivsblock, align 4
  %idxprom207 = sext i32 %177 to i64
  %178 = load %struct.ScannerBlock*, %struct.ScannerBlock** %vsblock, align 8
  %arrayidx208 = getelementptr inbounds %struct.ScannerBlock, %struct.ScannerBlock* %178, i64 %idxprom207
  %block_index = getelementptr inbounds %struct.ScannerBlock, %struct.ScannerBlock* %arrayidx208, i32 0, i32 2
  store i32 %176, i32* %block_index, align 4
  %179 = load i32, i32* %k, align 4
  %180 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %scanner_block_size209 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %180, i32 0, i32 19
  %181 = load i32, i32* %scanner_block_size209, align 4
  %mul210 = mul nsw i32 %179, %181
  %idxprom211 = sext i32 %mul210 to i64
  %182 = load i32, i32* %j, align 4
  %idxprom212 = sext i32 %182 to i64
  %183 = load %struct.VecScanState*, %struct.VecScanState** %ss, align 8
  %v213 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %183, i32 0, i32 2
  %184 = load %struct.ScanState**, %struct.ScanState*** %v213, align 8
  %arrayidx214 = getelementptr inbounds %struct.ScanState*, %struct.ScanState** %184, i64 %idxprom212
  %185 = load %struct.ScanState*, %struct.ScanState** %arrayidx214, align 8
  %chars = getelementptr inbounds %struct.ScanState, %struct.ScanState* %185, i32 0, i32 1
  %arrayidx215 = getelementptr inbounds [256 x %struct.ScanState*], [256 x %struct.ScanState*]* %chars, i32 0, i64 %idxprom211
  %186 = bitcast %struct.ScanState** %arrayidx215 to i8*
  %187 = bitcast i8* %186 to %struct.ScanState**
  %188 = load i32, i32* %ivsblock, align 4
  %idxprom216 = sext i32 %188 to i64
  %189 = load %struct.ScannerBlock*, %struct.ScannerBlock** %vsblock, align 8
  %arrayidx217 = getelementptr inbounds %struct.ScannerBlock, %struct.ScannerBlock* %189, i64 %idxprom216
  %chars218 = getelementptr inbounds %struct.ScannerBlock, %struct.ScannerBlock* %arrayidx217, i32 0, i32 3
  store %struct.ScanState** %187, %struct.ScanState*** %chars218, align 8
  %190 = load i32, i32* %k, align 4
  %191 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %scanner_block_size219 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %191, i32 0, i32 19
  %192 = load i32, i32* %scanner_block_size219, align 4
  %mul220 = mul nsw i32 %190, %192
  %idxprom221 = sext i32 %mul220 to i64
  %193 = load i32, i32* %j, align 4
  %idxprom222 = sext i32 %193 to i64
  %194 = load %struct.VecScanState*, %struct.VecScanState** %ss, align 8
  %v223 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %194, i32 0, i32 2
  %195 = load %struct.ScanState**, %struct.ScanState*** %v223, align 8
  %arrayidx224 = getelementptr inbounds %struct.ScanState*, %struct.ScanState** %195, i64 %idxprom222
  %196 = load %struct.ScanState*, %struct.ScanState** %arrayidx224, align 8
  %transition = getelementptr inbounds %struct.ScanState, %struct.ScanState* %196, i32 0, i32 4
  %arrayidx225 = getelementptr inbounds [256 x %struct.ScanStateTransition*], [256 x %struct.ScanStateTransition*]* %transition, i32 0, i64 %idxprom221
  %197 = bitcast %struct.ScanStateTransition** %arrayidx225 to i8*
  %198 = bitcast i8* %197 to %struct.ScanStateTransition**
  %199 = load i32, i32* %ivsblock, align 4
  %idxprom226 = sext i32 %199 to i64
  %200 = load %struct.ScannerBlock*, %struct.ScannerBlock** %vsblock, align 8
  %arrayidx227 = getelementptr inbounds %struct.ScannerBlock, %struct.ScannerBlock* %200, i64 %idxprom226
  %transitions228 = getelementptr inbounds %struct.ScannerBlock, %struct.ScannerBlock* %arrayidx227, i32 0, i32 4
  store %struct.ScanStateTransition** %198, %struct.ScanStateTransition*** %transitions228, align 8
  %201 = load i32, i32* %ivsblock, align 4
  %idxprom229 = sext i32 %201 to i64
  %202 = load %struct.ScannerBlock*, %struct.ScannerBlock** %vsblock, align 8
  %arrayidx230 = getelementptr inbounds %struct.ScannerBlock, %struct.ScannerBlock* %202, i64 %idxprom229
  store %struct.ScannerBlock* %arrayidx230, %struct.ScannerBlock** %xv, align 8
  %203 = load i32, i32* %ivsblock, align 4
  %inc231 = add nsw i32 %203, 1
  store i32 %inc231, i32* %ivsblock, align 4
  %204 = load %struct.VecScannerBlock*, %struct.VecScannerBlock** %pscanner_block_hash, align 8
  %205 = bitcast %struct.VecScannerBlock* %204 to i8*
  %206 = load %struct.ScannerBlock*, %struct.ScannerBlock** %xv, align 8
  %207 = bitcast %struct.ScannerBlock* %206 to i8*
  %call232 = call i8* @set_add_fn(i8* %205, i8* %207, %struct.hash_fns_t* bitcast ({ i32 (i8*, %struct.hash_fns_t*)*, i32 (i8*, i8*, %struct.hash_fns_t*)*, [2 x i8*] }* @scanner_block_fns to %struct.hash_fns_t*))
  %208 = bitcast i8* %call232 to %struct.ScannerBlock*
  store %struct.ScannerBlock* %208, %struct.ScannerBlock** %yv, align 8
  %209 = load %struct.ScannerBlock*, %struct.ScannerBlock** %xv, align 8
  %210 = load %struct.ScannerBlock*, %struct.ScannerBlock** %yv, align 8
  %cmp233 = icmp eq %struct.ScannerBlock* %209, %210
  br i1 %cmp233, label %if.then.235, label %if.end.281

if.then.235:                                      ; preds = %for.body.201
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %212 = load %struct.State*, %struct.State** %s, align 8
  %call236 = call i8* @scanner_type(%struct.State* %212)
  %213 = load i32, i32* %i, align 4
  %214 = load i32, i32* %j, align 4
  %215 = load i32, i32* %k, align 4
  %216 = load i8*, i8** %tag.addr, align 8
  %call237 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %211, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.83, i32 0, i32 0), i8* %call236, i32 %213, i32 %214, i32 %215, i8* %216)
  store i32 0, i32* %x, align 4
  br label %for.cond.238

for.cond.238:                                     ; preds = %for.inc.277, %if.then.235
  %217 = load i32, i32* %x, align 4
  %218 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %scanner_block_size239 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %218, i32 0, i32 19
  %219 = load i32, i32* %scanner_block_size239, align 4
  %cmp240 = icmp slt i32 %217, %219
  br i1 %cmp240, label %for.body.242, label %for.end.279

for.body.242:                                     ; preds = %for.cond.238
  %220 = load i32, i32* %x, align 4
  %221 = load i32, i32* %k, align 4
  %222 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %scanner_block_size243 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %222, i32 0, i32 19
  %223 = load i32, i32* %scanner_block_size243, align 4
  %mul244 = mul nsw i32 %221, %223
  %add245 = add nsw i32 %220, %mul244
  store i32 %add245, i32* %xx, align 4
  %224 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %225 = load i32, i32* %xx, align 4
  %idxprom246 = sext i32 %225 to i64
  %226 = load i32, i32* %j, align 4
  %idxprom247 = sext i32 %226 to i64
  %227 = load %struct.VecScanState*, %struct.VecScanState** %ss, align 8
  %v248 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %227, i32 0, i32 2
  %228 = load %struct.ScanState**, %struct.ScanState*** %v248, align 8
  %arrayidx249 = getelementptr inbounds %struct.ScanState*, %struct.ScanState** %228, i64 %idxprom247
  %229 = load %struct.ScanState*, %struct.ScanState** %arrayidx249, align 8
  %chars250 = getelementptr inbounds %struct.ScanState, %struct.ScanState* %229, i32 0, i32 1
  %arrayidx251 = getelementptr inbounds [256 x %struct.ScanState*], [256 x %struct.ScanState*]* %chars250, i32 0, i64 %idxprom246
  %230 = load %struct.ScanState*, %struct.ScanState** %arrayidx251, align 8
  %tobool252 = icmp ne %struct.ScanState* %230, null
  br i1 %tobool252, label %cond.true.253, label %cond.false.262

cond.true.253:                                    ; preds = %for.body.242
  %231 = load i32, i32* %xx, align 4
  %idxprom254 = sext i32 %231 to i64
  %232 = load i32, i32* %j, align 4
  %idxprom255 = sext i32 %232 to i64
  %233 = load %struct.VecScanState*, %struct.VecScanState** %ss, align 8
  %v256 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %233, i32 0, i32 2
  %234 = load %struct.ScanState**, %struct.ScanState*** %v256, align 8
  %arrayidx257 = getelementptr inbounds %struct.ScanState*, %struct.ScanState** %234, i64 %idxprom255
  %235 = load %struct.ScanState*, %struct.ScanState** %arrayidx257, align 8
  %chars258 = getelementptr inbounds %struct.ScanState, %struct.ScanState* %235, i32 0, i32 1
  %arrayidx259 = getelementptr inbounds [256 x %struct.ScanState*], [256 x %struct.ScanState*]* %chars258, i32 0, i64 %idxprom254
  %236 = load %struct.ScanState*, %struct.ScanState** %arrayidx259, align 8
  %index260 = getelementptr inbounds %struct.ScanState, %struct.ScanState* %236, i32 0, i32 0
  %237 = load i32, i32* %index260, align 4
  %add261 = add i32 %237, 1
  br label %cond.end.263

cond.false.262:                                   ; preds = %for.body.242
  br label %cond.end.263

cond.end.263:                                     ; preds = %cond.false.262, %cond.true.253
  %cond264 = phi i32 [ %add261, %cond.true.253 ], [ 0, %cond.false.262 ]
  %call265 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %224, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i32 %cond264)
  %238 = load i32, i32* %x, align 4
  %239 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %scanner_block_size266 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %239, i32 0, i32 19
  %240 = load i32, i32* %scanner_block_size266, align 4
  %cmp267 = icmp ne i32 %238, %240
  br i1 %cmp267, label %if.then.269, label %if.end.271

if.then.269:                                      ; preds = %cond.end.263
  %241 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call270 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %241, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i32 0, i32 0))
  br label %if.end.271

if.end.271:                                       ; preds = %if.then.269, %cond.end.263
  %242 = load i32, i32* %x, align 4
  %rem = srem i32 %242, 16
  %cmp272 = icmp eq i32 %rem, 15
  br i1 %cmp272, label %if.then.274, label %if.end.276

if.then.274:                                      ; preds = %if.end.271
  %243 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call275 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %243, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.276

if.end.276:                                       ; preds = %if.then.274, %if.end.271
  br label %for.inc.277

for.inc.277:                                      ; preds = %if.end.276
  %244 = load i32, i32* %x, align 4
  %inc278 = add nsw i32 %244, 1
  store i32 %inc278, i32* %x, align 4
  br label %for.cond.238

for.end.279:                                      ; preds = %for.cond.238
  %245 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call280 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %245, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0))
  br label %if.end.281

if.end.281:                                       ; preds = %for.end.279, %for.body.201
  %246 = load %struct.State*, %struct.State** %s, align 8
  %scan_kind282 = getelementptr inbounds %struct.State, %struct.State* %246, i32 0, i32 10
  %bf.load283 = load i8, i8* %scan_kind282, align 8
  %bf.lshr = lshr i8 %bf.load283, 3
  %bf.clear284 = and i8 %bf.lshr, 3
  %bf.cast285 = zext i8 %bf.clear284 to i32
  %cmp286 = icmp ne i32 %bf.cast285, 1
  br i1 %cmp286, label %if.then.288, label %if.end.328

if.then.288:                                      ; preds = %if.end.281
  %247 = load %struct.VecScannerBlock*, %struct.VecScannerBlock** %ptrans_scanner_block_hash, align 8
  %248 = bitcast %struct.VecScannerBlock* %247 to i8*
  %249 = load %struct.ScannerBlock*, %struct.ScannerBlock** %xv, align 8
  %250 = bitcast %struct.ScannerBlock* %249 to i8*
  %call289 = call i8* @set_add_fn(i8* %248, i8* %250, %struct.hash_fns_t* bitcast ({ i32 (i8*, %struct.hash_fns_t*)*, i32 (i8*, i8*, %struct.hash_fns_t*)*, [2 x i8*] }* @trans_scanner_block_fns to %struct.hash_fns_t*))
  %251 = bitcast i8* %call289 to %struct.ScannerBlock*
  store %struct.ScannerBlock* %251, %struct.ScannerBlock** %yv, align 8
  %252 = load %struct.ScannerBlock*, %struct.ScannerBlock** %xv, align 8
  %253 = load %struct.ScannerBlock*, %struct.ScannerBlock** %yv, align 8
  %cmp290 = icmp eq %struct.ScannerBlock* %252, %253
  br i1 %cmp290, label %if.then.292, label %if.end.327

if.then.292:                                      ; preds = %if.then.288
  %254 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %255 = load %struct.State*, %struct.State** %s, align 8
  %call293 = call i8* @scanner_type(%struct.State* %255)
  %256 = load i32, i32* %i, align 4
  %257 = load i32, i32* %j, align 4
  %258 = load i32, i32* %k, align 4
  %259 = load i8*, i8** %tag.addr, align 8
  %call294 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %254, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.85, i32 0, i32 0), i8* %call293, i32 %256, i32 %257, i32 %258, i8* %259)
  store i32 0, i32* %x, align 4
  br label %for.cond.295

for.cond.295:                                     ; preds = %for.inc.323, %if.then.292
  %260 = load i32, i32* %x, align 4
  %261 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %scanner_block_size296 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %261, i32 0, i32 19
  %262 = load i32, i32* %scanner_block_size296, align 4
  %cmp297 = icmp slt i32 %260, %262
  br i1 %cmp297, label %for.body.299, label %for.end.325

for.body.299:                                     ; preds = %for.cond.295
  %263 = load i32, i32* %x, align 4
  %264 = load i32, i32* %k, align 4
  %265 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %scanner_block_size300 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %265, i32 0, i32 19
  %266 = load i32, i32* %scanner_block_size300, align 4
  %mul301 = mul nsw i32 %264, %266
  %add302 = add nsw i32 %263, %mul301
  store i32 %add302, i32* %xx, align 4
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %268 = load i32, i32* %xx, align 4
  %idxprom303 = sext i32 %268 to i64
  %269 = load i32, i32* %j, align 4
  %idxprom304 = sext i32 %269 to i64
  %270 = load %struct.VecScanState*, %struct.VecScanState** %ss, align 8
  %v305 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %270, i32 0, i32 2
  %271 = load %struct.ScanState**, %struct.ScanState*** %v305, align 8
  %arrayidx306 = getelementptr inbounds %struct.ScanState*, %struct.ScanState** %271, i64 %idxprom304
  %272 = load %struct.ScanState*, %struct.ScanState** %arrayidx306, align 8
  %transition307 = getelementptr inbounds %struct.ScanState, %struct.ScanState* %272, i32 0, i32 4
  %arrayidx308 = getelementptr inbounds [256 x %struct.ScanStateTransition*], [256 x %struct.ScanStateTransition*]* %transition307, i32 0, i64 %idxprom303
  %273 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %arrayidx308, align 8
  %index309 = getelementptr inbounds %struct.ScanStateTransition, %struct.ScanStateTransition* %273, i32 0, i32 0
  %274 = load i32, i32* %index309, align 4
  %call310 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %267, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i32 %274)
  %275 = load i32, i32* %x, align 4
  %276 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %scanner_block_size311 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %276, i32 0, i32 19
  %277 = load i32, i32* %scanner_block_size311, align 4
  %cmp312 = icmp ne i32 %275, %277
  br i1 %cmp312, label %if.then.314, label %if.end.316

if.then.314:                                      ; preds = %for.body.299
  %278 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call315 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %278, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i32 0, i32 0))
  br label %if.end.316

if.end.316:                                       ; preds = %if.then.314, %for.body.299
  %279 = load i32, i32* %x, align 4
  %rem317 = srem i32 %279, 16
  %cmp318 = icmp eq i32 %rem317, 15
  br i1 %cmp318, label %if.then.320, label %if.end.322

if.then.320:                                      ; preds = %if.end.316
  %280 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call321 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %280, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.322

if.end.322:                                       ; preds = %if.then.320, %if.end.316
  br label %for.inc.323

for.inc.323:                                      ; preds = %if.end.322
  %281 = load i32, i32* %x, align 4
  %inc324 = add nsw i32 %281, 1
  store i32 %inc324, i32* %x, align 4
  br label %for.cond.295

for.end.325:                                      ; preds = %for.cond.295
  %282 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call326 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %282, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0))
  br label %if.end.327

if.end.327:                                       ; preds = %for.end.325, %if.then.288
  br label %if.end.328

if.end.328:                                       ; preds = %if.end.327, %if.end.281
  br label %for.inc.329

for.inc.329:                                      ; preds = %if.end.328
  %283 = load i32, i32* %k, align 4
  %inc330 = add nsw i32 %283, 1
  store i32 %inc330, i32* %k, align 4
  br label %for.cond.197

for.end.331:                                      ; preds = %for.cond.197
  %284 = load i32, i32* %j, align 4
  %idxprom332 = sext i32 %284 to i64
  %285 = load %struct.VecScanState*, %struct.VecScanState** %ss, align 8
  %v333 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %285, i32 0, i32 2
  %286 = load %struct.ScanState**, %struct.ScanState*** %v333, align 8
  %arrayidx334 = getelementptr inbounds %struct.ScanState*, %struct.ScanState** %286, i64 %idxprom332
  %287 = load %struct.ScanState*, %struct.ScanState** %arrayidx334, align 8
  %accepts = getelementptr inbounds %struct.ScanState, %struct.ScanState* %287, i32 0, i32 2
  %n335 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %accepts, i32 0, i32 0
  %288 = load i32, i32* %n335, align 4
  %tobool336 = icmp ne i32 %288, 0
  br i1 %tobool336, label %if.then.337, label %if.end.393

if.then.337:                                      ; preds = %for.end.331
  store i32 0, i32* %k, align 4
  br label %for.cond.338

for.cond.338:                                     ; preds = %for.inc.390, %if.then.337
  %289 = load i32, i32* %k, align 4
  %290 = load i32, i32* %j, align 4
  %idxprom339 = sext i32 %290 to i64
  %291 = load %struct.VecScanState*, %struct.VecScanState** %ss, align 8
  %v340 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %291, i32 0, i32 2
  %292 = load %struct.ScanState**, %struct.ScanState*** %v340, align 8
  %arrayidx341 = getelementptr inbounds %struct.ScanState*, %struct.ScanState** %292, i64 %idxprom339
  %293 = load %struct.ScanState*, %struct.ScanState** %arrayidx341, align 8
  %accepts342 = getelementptr inbounds %struct.ScanState, %struct.ScanState* %293, i32 0, i32 2
  %n343 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %accepts342, i32 0, i32 0
  %294 = load i32, i32* %n343, align 4
  %cmp344 = icmp ult i32 %289, %294
  br i1 %cmp344, label %for.body.346, label %for.end.392

for.body.346:                                     ; preds = %for.cond.338
  %295 = load i32, i32* %k, align 4
  %idxprom348 = sext i32 %295 to i64
  %296 = load i32, i32* %j, align 4
  %idxprom349 = sext i32 %296 to i64
  %297 = load %struct.VecScanState*, %struct.VecScanState** %ss, align 8
  %v350 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %297, i32 0, i32 2
  %298 = load %struct.ScanState**, %struct.ScanState*** %v350, align 8
  %arrayidx351 = getelementptr inbounds %struct.ScanState*, %struct.ScanState** %298, i64 %idxprom349
  %299 = load %struct.ScanState*, %struct.ScanState** %arrayidx351, align 8
  %accepts352 = getelementptr inbounds %struct.ScanState, %struct.ScanState* %299, i32 0, i32 2
  %v353 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %accepts352, i32 0, i32 2
  %300 = load %struct.Action**, %struct.Action*** %v353, align 8
  %arrayidx354 = getelementptr inbounds %struct.Action*, %struct.Action** %300, i64 %idxprom348
  %301 = load %struct.Action*, %struct.Action** %arrayidx354, align 8
  store %struct.Action* %301, %struct.Action** %a347, align 8
  %arraydecay355 = getelementptr inbounds [256 x i8], [256 x i8]* %tmp, i32 0, i32 0
  %302 = load i32, i32* %i, align 4
  %303 = load i32, i32* %j, align 4
  %304 = load i8*, i8** %tag.addr, align 8
  %call356 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay355, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.86, i32 0, i32 0), i32 %302, i32 %303, i8* %304) #5
  %305 = load i32, i32* %j, align 4
  %idxprom357 = sext i32 %305 to i64
  %306 = load %struct.VecScanState*, %struct.VecScanState** %ss, align 8
  %v358 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %306, i32 0, i32 2
  %307 = load %struct.ScanState**, %struct.ScanState*** %v358, align 8
  %arrayidx359 = getelementptr inbounds %struct.ScanState*, %struct.ScanState** %307, i64 %idxprom357
  %308 = load %struct.ScanState*, %struct.ScanState** %arrayidx359, align 8
  %accepts360 = getelementptr inbounds %struct.ScanState, %struct.ScanState* %308, i32 0, i32 2
  %n361 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %accepts360, i32 0, i32 0
  %309 = load i32, i32* %n361, align 4
  %cmp362 = icmp eq i32 %309, 1
  br i1 %cmp362, label %if.then.364, label %if.end.372

if.then.364:                                      ; preds = %for.body.346
  %arraydecay365 = getelementptr inbounds [256 x i8], [256 x i8]* %tmp, i32 0, i32 0
  %call366 = call noalias i8* @strdup(i8* %arraydecay365) #5
  %310 = load %struct.Action*, %struct.Action** %a347, align 8
  %temp_string = getelementptr inbounds %struct.Action, %struct.Action* %310, i32 0, i32 5
  store i8* %call366, i8** %temp_string, align 8
  %311 = bitcast %struct.VecAction* %shift_hash to i8*
  %312 = load %struct.Action*, %struct.Action** %a347, align 8
  %313 = bitcast %struct.Action* %312 to i8*
  %call367 = call i8* @set_add_fn(i8* %311, i8* %313, %struct.hash_fns_t* bitcast ({ i32 (i8*, %struct.hash_fns_t*)*, i32 (i8*, i8*, %struct.hash_fns_t*)*, [2 x i8*] }* @shift_fns to %struct.hash_fns_t*))
  %314 = bitcast i8* %call367 to %struct.Action*
  store %struct.Action* %314, %struct.Action** %aa, align 8
  %315 = load %struct.Action*, %struct.Action** %aa, align 8
  %316 = load %struct.Action*, %struct.Action** %a347, align 8
  %cmp368 = icmp ne %struct.Action* %315, %316
  br i1 %cmp368, label %if.then.370, label %if.end.371

if.then.370:                                      ; preds = %if.then.364
  br label %for.inc.390

if.end.371:                                       ; preds = %if.then.364
  br label %if.end.372

if.end.372:                                       ; preds = %if.end.371, %for.body.346
  %317 = load i32, i32* %k, align 4
  %tobool373 = icmp ne i32 %317, 0
  br i1 %tobool373, label %if.end.377, label %if.then.374

if.then.374:                                      ; preds = %if.end.372
  %318 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay375 = getelementptr inbounds [256 x i8], [256 x i8]* %tmp, i32 0, i32 0
  %call376 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %318, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.87, i32 0, i32 0), i8* %arraydecay375)
  br label %if.end.377

if.end.377:                                       ; preds = %if.then.374, %if.end.372
  %319 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %320 = load %struct.Action*, %struct.Action** %a347, align 8
  %term378 = getelementptr inbounds %struct.Action, %struct.Action* %320, i32 0, i32 1
  %321 = load %struct.Term*, %struct.Term** %term378, align 8
  %index379 = getelementptr inbounds %struct.Term, %struct.Term* %321, i32 0, i32 1
  %322 = load i32, i32* %index379, align 4
  %323 = load i8*, i8** %tag.addr, align 8
  %324 = load i32, i32* %k, align 4
  %325 = load i32, i32* %j, align 4
  %idxprom380 = sext i32 %325 to i64
  %326 = load %struct.VecScanState*, %struct.VecScanState** %ss, align 8
  %v381 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %326, i32 0, i32 2
  %327 = load %struct.ScanState**, %struct.ScanState*** %v381, align 8
  %arrayidx382 = getelementptr inbounds %struct.ScanState*, %struct.ScanState** %327, i64 %idxprom380
  %328 = load %struct.ScanState*, %struct.ScanState** %arrayidx382, align 8
  %accepts383 = getelementptr inbounds %struct.ScanState, %struct.ScanState* %328, i32 0, i32 2
  %n384 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %accepts383, i32 0, i32 0
  %329 = load i32, i32* %n384, align 4
  %sub385 = sub i32 %329, 1
  %cmp386 = icmp eq i32 %324, %sub385
  %cond388 = select i1 %cmp386, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0)
  %call389 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %319, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.75, i32 0, i32 0), i32 %322, i8* %323, i8* %cond388)
  br label %for.inc.390

for.inc.390:                                      ; preds = %if.end.377, %if.then.370
  %330 = load i32, i32* %k, align 4
  %inc391 = add nsw i32 %330, 1
  store i32 %inc391, i32* %k, align 4
  br label %for.cond.338

for.end.392:                                      ; preds = %for.cond.338
  br label %if.end.393

if.end.393:                                       ; preds = %for.end.392, %for.end.331
  br label %if.end.394

if.end.394:                                       ; preds = %if.end.393, %for.body.193
  br label %for.inc.395

for.inc.395:                                      ; preds = %if.end.394
  %331 = load i32, i32* %j, align 4
  %inc396 = add nsw i32 %331, 1
  store i32 %inc396, i32* %j, align 4
  br label %for.cond.189

for.end.397:                                      ; preds = %for.cond.189
  br label %for.inc.398

for.inc.398:                                      ; preds = %for.end.397
  %332 = load i32, i32* %i, align 4
  %inc399 = add nsw i32 %332, 1
  store i32 %inc399, i32* %i, align 4
  br label %for.cond.85

for.end.400:                                      ; preds = %for.cond.85
  store i32 0, i32* %i, align 4
  br label %for.cond.401

for.cond.401:                                     ; preds = %for.inc.611, %for.end.400
  %333 = load i32, i32* %i, align 4
  %334 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states402 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %334, i32 0, i32 3
  %n403 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states402, i32 0, i32 0
  %335 = load i32, i32* %n403, align 4
  %cmp404 = icmp ult i32 %333, %335
  br i1 %cmp404, label %for.body.406, label %for.end.613

for.body.406:                                     ; preds = %for.cond.401
  %336 = load i32, i32* %i, align 4
  %idxprom407 = sext i32 %336 to i64
  %337 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states408 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %337, i32 0, i32 3
  %v409 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states408, i32 0, i32 2
  %338 = load %struct.State**, %struct.State*** %v409, align 8
  %arrayidx410 = getelementptr inbounds %struct.State*, %struct.State** %338, i64 %idxprom407
  %339 = load %struct.State*, %struct.State** %arrayidx410, align 8
  store %struct.State* %339, %struct.State** %s, align 8
  %340 = load %struct.State*, %struct.State** %s, align 8
  %scanner411 = getelementptr inbounds %struct.State, %struct.State* %340, i32 0, i32 9
  %states412 = getelementptr inbounds %struct.Scanner, %struct.Scanner* %scanner411, i32 0, i32 0
  store %struct.VecScanState* %states412, %struct.VecScanState** %ss, align 8
  store i32 0, i32* %ivsblock, align 4
  %341 = load %struct.VecScanState*, %struct.VecScanState** %ss, align 8
  %n413 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %341, i32 0, i32 0
  %342 = load i32, i32* %n413, align 4
  %tobool414 = icmp ne i32 %342, 0
  br i1 %tobool414, label %land.lhs.true.415, label %if.end.610

land.lhs.true.415:                                ; preds = %for.body.406
  %343 = load %struct.State*, %struct.State** %s, align 8
  %same_shifts416 = getelementptr inbounds %struct.State, %struct.State* %343, i32 0, i32 13
  %344 = load %struct.State*, %struct.State** %same_shifts416, align 8
  %tobool417 = icmp ne %struct.State* %344, null
  br i1 %tobool417, label %if.end.610, label %if.then.418

if.then.418:                                      ; preds = %land.lhs.true.415
  %345 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %346 = load %struct.State*, %struct.State** %s, align 8
  %call419 = call i8* @scanner_u_type(%struct.State* %346)
  %347 = load i32, i32* %i, align 4
  %348 = load i8*, i8** %tag.addr, align 8
  %349 = load %struct.VecScanState*, %struct.VecScanState** %ss, align 8
  %n420 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %349, i32 0, i32 0
  %350 = load i32, i32* %n420, align 4
  %call421 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %345, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.89, i32 0, i32 0), i8* %call419, i32 %347, i8* %348, i32 %350)
  %351 = load %struct.State*, %struct.State** %s, align 8
  %call422 = call i32 @scanner_size(%struct.State* %351)
  %sub423 = sub nsw i32 %call422, 1
  %idxprom424 = sext i32 %sub423 to i64
  %arrayidx425 = getelementptr inbounds [4 x %struct.VecScannerBlock], [4 x %struct.VecScannerBlock]* %scanner_block_hash, i32 0, i64 %idxprom424
  store %struct.VecScannerBlock* %arrayidx425, %struct.VecScannerBlock** %pscanner_block_hash, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.426

for.cond.426:                                     ; preds = %for.inc.521, %if.then.418
  %352 = load i32, i32* %j, align 4
  %353 = load %struct.VecScanState*, %struct.VecScanState** %ss, align 8
  %n427 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %353, i32 0, i32 0
  %354 = load i32, i32* %n427, align 4
  %cmp428 = icmp ult i32 %352, %354
  br i1 %cmp428, label %for.body.430, label %for.end.523

for.body.430:                                     ; preds = %for.cond.426
  %355 = load i32, i32* %j, align 4
  %idxprom433 = sext i32 %355 to i64
  %356 = load %struct.VecScanState*, %struct.VecScanState** %ss, align 8
  %v434 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %356, i32 0, i32 2
  %357 = load %struct.ScanState**, %struct.ScanState*** %v434, align 8
  %arrayidx435 = getelementptr inbounds %struct.ScanState*, %struct.ScanState** %357, i64 %idxprom433
  %358 = load %struct.ScanState*, %struct.ScanState** %arrayidx435, align 8
  %accepts436 = getelementptr inbounds %struct.ScanState, %struct.ScanState* %358, i32 0, i32 2
  %n437 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %accepts436, i32 0, i32 0
  %359 = load i32, i32* %n437, align 4
  %tobool438 = icmp ne i32 %359, 0
  br i1 %tobool438, label %if.then.439, label %if.else.460

if.then.439:                                      ; preds = %for.body.430
  %360 = load i32, i32* %j, align 4
  %idxprom440 = sext i32 %360 to i64
  %361 = load %struct.VecScanState*, %struct.VecScanState** %ss, align 8
  %v441 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %361, i32 0, i32 2
  %362 = load %struct.ScanState**, %struct.ScanState*** %v441, align 8
  %arrayidx442 = getelementptr inbounds %struct.ScanState*, %struct.ScanState** %362, i64 %idxprom440
  %363 = load %struct.ScanState*, %struct.ScanState** %arrayidx442, align 8
  %accepts443 = getelementptr inbounds %struct.ScanState, %struct.ScanState* %363, i32 0, i32 2
  %v444 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %accepts443, i32 0, i32 2
  %364 = load %struct.Action**, %struct.Action*** %v444, align 8
  %arrayidx445 = getelementptr inbounds %struct.Action*, %struct.Action** %364, i64 0
  %365 = load %struct.Action*, %struct.Action** %arrayidx445, align 8
  store %struct.Action* %365, %struct.Action** %a432, align 8
  %366 = load i32, i32* %j, align 4
  %idxprom446 = sext i32 %366 to i64
  %367 = load %struct.VecScanState*, %struct.VecScanState** %ss, align 8
  %v447 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %367, i32 0, i32 2
  %368 = load %struct.ScanState**, %struct.ScanState*** %v447, align 8
  %arrayidx448 = getelementptr inbounds %struct.ScanState*, %struct.ScanState** %368, i64 %idxprom446
  %369 = load %struct.ScanState*, %struct.ScanState** %arrayidx448, align 8
  %accepts449 = getelementptr inbounds %struct.ScanState, %struct.ScanState* %369, i32 0, i32 2
  %n450 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %accepts449, i32 0, i32 0
  %370 = load i32, i32* %n450, align 4
  %cmp451 = icmp eq i32 %370, 1
  br i1 %cmp451, label %if.then.453, label %if.else.457

if.then.453:                                      ; preds = %if.then.439
  %371 = bitcast %struct.VecAction* %shift_hash to i8*
  %372 = load %struct.Action*, %struct.Action** %a432, align 8
  %373 = bitcast %struct.Action* %372 to i8*
  %call454 = call i8* @set_add_fn(i8* %371, i8* %373, %struct.hash_fns_t* bitcast ({ i32 (i8*, %struct.hash_fns_t*)*, i32 (i8*, i8*, %struct.hash_fns_t*)*, [2 x i8*] }* @shift_fns to %struct.hash_fns_t*))
  %374 = bitcast i8* %call454 to %struct.Action*
  store %struct.Action* %374, %struct.Action** %a432, align 8
  %375 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %376 = load %struct.Action*, %struct.Action** %a432, align 8
  %temp_string455 = getelementptr inbounds %struct.Action, %struct.Action* %376, i32 0, i32 5
  %377 = load i8*, i8** %temp_string455, align 8
  %call456 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %375, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.90, i32 0, i32 0), i8* %377)
  br label %if.end.459

if.else.457:                                      ; preds = %if.then.439
  %378 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %379 = load i32, i32* %i, align 4
  %380 = load i32, i32* %j, align 4
  %381 = load i8*, i8** %tag.addr, align 8
  %call458 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %378, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.91, i32 0, i32 0), i32 %379, i32 %380, i8* %381)
  br label %if.end.459

if.end.459:                                       ; preds = %if.else.457, %if.then.453
  br label %if.end.462

if.else.460:                                      ; preds = %for.body.430
  %382 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call461 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %382, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i32 0, i32 0))
  br label %if.end.462

if.end.462:                                       ; preds = %if.else.460, %if.end.459
  store i32 0, i32* %k, align 4
  br label %for.cond.463

for.cond.463:                                     ; preds = %for.inc.509, %if.end.462
  %383 = load i32, i32* %k, align 4
  %384 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %scanner_blocks464 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %384, i32 0, i32 18
  %385 = load i32, i32* %scanner_blocks464, align 4
  %cmp465 = icmp slt i32 %383, %385
  br i1 %cmp465, label %for.body.467, label %for.end.511

for.body.467:                                     ; preds = %for.cond.463
  %386 = load %struct.State*, %struct.State** %s, align 8
  %index469 = getelementptr inbounds %struct.State, %struct.State* %386, i32 0, i32 0
  %387 = load i32, i32* %index469, align 4
  %state_index470 = getelementptr inbounds %struct.ScannerBlock, %struct.ScannerBlock* %vs, i32 0, i32 0
  store i32 %387, i32* %state_index470, align 4
  %388 = load i32, i32* %j, align 4
  %scanner_index471 = getelementptr inbounds %struct.ScannerBlock, %struct.ScannerBlock* %vs, i32 0, i32 1
  store i32 %388, i32* %scanner_index471, align 4
  %389 = load i32, i32* %k, align 4
  %block_index472 = getelementptr inbounds %struct.ScannerBlock, %struct.ScannerBlock* %vs, i32 0, i32 2
  store i32 %389, i32* %block_index472, align 4
  %390 = load i32, i32* %k, align 4
  %391 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %scanner_block_size473 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %391, i32 0, i32 19
  %392 = load i32, i32* %scanner_block_size473, align 4
  %mul474 = mul nsw i32 %390, %392
  %idxprom475 = sext i32 %mul474 to i64
  %393 = load i32, i32* %j, align 4
  %idxprom476 = sext i32 %393 to i64
  %394 = load %struct.VecScanState*, %struct.VecScanState** %ss, align 8
  %v477 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %394, i32 0, i32 2
  %395 = load %struct.ScanState**, %struct.ScanState*** %v477, align 8
  %arrayidx478 = getelementptr inbounds %struct.ScanState*, %struct.ScanState** %395, i64 %idxprom476
  %396 = load %struct.ScanState*, %struct.ScanState** %arrayidx478, align 8
  %chars479 = getelementptr inbounds %struct.ScanState, %struct.ScanState* %396, i32 0, i32 1
  %arrayidx480 = getelementptr inbounds [256 x %struct.ScanState*], [256 x %struct.ScanState*]* %chars479, i32 0, i64 %idxprom475
  %397 = bitcast %struct.ScanState** %arrayidx480 to i8*
  %398 = bitcast i8* %397 to %struct.ScanState**
  %chars481 = getelementptr inbounds %struct.ScannerBlock, %struct.ScannerBlock* %vs, i32 0, i32 3
  store %struct.ScanState** %398, %struct.ScanState*** %chars481, align 8
  %399 = load i32, i32* %k, align 4
  %400 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %scanner_block_size482 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %400, i32 0, i32 19
  %401 = load i32, i32* %scanner_block_size482, align 4
  %mul483 = mul nsw i32 %399, %401
  %idxprom484 = sext i32 %mul483 to i64
  %402 = load i32, i32* %j, align 4
  %idxprom485 = sext i32 %402 to i64
  %403 = load %struct.VecScanState*, %struct.VecScanState** %ss, align 8
  %v486 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %403, i32 0, i32 2
  %404 = load %struct.ScanState**, %struct.ScanState*** %v486, align 8
  %arrayidx487 = getelementptr inbounds %struct.ScanState*, %struct.ScanState** %404, i64 %idxprom485
  %405 = load %struct.ScanState*, %struct.ScanState** %arrayidx487, align 8
  %transition488 = getelementptr inbounds %struct.ScanState, %struct.ScanState* %405, i32 0, i32 4
  %arrayidx489 = getelementptr inbounds [256 x %struct.ScanStateTransition*], [256 x %struct.ScanStateTransition*]* %transition488, i32 0, i64 %idxprom484
  %406 = bitcast %struct.ScanStateTransition** %arrayidx489 to i8*
  %407 = bitcast i8* %406 to %struct.ScanStateTransition**
  %transitions490 = getelementptr inbounds %struct.ScannerBlock, %struct.ScannerBlock* %vs, i32 0, i32 4
  store %struct.ScanStateTransition** %407, %struct.ScanStateTransition*** %transitions490, align 8
  store %struct.ScannerBlock* %vs, %struct.ScannerBlock** %xv, align 8
  %408 = load %struct.VecScannerBlock*, %struct.VecScannerBlock** %pscanner_block_hash, align 8
  %409 = bitcast %struct.VecScannerBlock* %408 to i8*
  %410 = load %struct.ScannerBlock*, %struct.ScannerBlock** %xv, align 8
  %411 = bitcast %struct.ScannerBlock* %410 to i8*
  %call491 = call i8* @set_add_fn(i8* %409, i8* %411, %struct.hash_fns_t* bitcast ({ i32 (i8*, %struct.hash_fns_t*)*, i32 (i8*, i8*, %struct.hash_fns_t*)*, [2 x i8*] }* @scanner_block_fns to %struct.hash_fns_t*))
  %412 = bitcast i8* %call491 to %struct.ScannerBlock*
  store %struct.ScannerBlock* %412, %struct.ScannerBlock** %yv, align 8
  %413 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %414 = load %struct.ScannerBlock*, %struct.ScannerBlock** %yv, align 8
  %state_index492 = getelementptr inbounds %struct.ScannerBlock, %struct.ScannerBlock* %414, i32 0, i32 0
  %415 = load i32, i32* %state_index492, align 4
  %416 = load %struct.ScannerBlock*, %struct.ScannerBlock** %yv, align 8
  %scanner_index493 = getelementptr inbounds %struct.ScannerBlock, %struct.ScannerBlock* %416, i32 0, i32 1
  %417 = load i32, i32* %scanner_index493, align 4
  %418 = load %struct.ScannerBlock*, %struct.ScannerBlock** %yv, align 8
  %block_index494 = getelementptr inbounds %struct.ScannerBlock, %struct.ScannerBlock* %418, i32 0, i32 2
  %419 = load i32, i32* %block_index494, align 4
  %420 = load i8*, i8** %tag.addr, align 8
  %call495 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %413, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.93, i32 0, i32 0), i32 %415, i32 %417, i32 %419, i8* %420)
  %421 = load i32, i32* %k, align 4
  %422 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %scanner_blocks496 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %422, i32 0, i32 18
  %423 = load i32, i32* %scanner_blocks496, align 4
  %sub497 = sub nsw i32 %423, 1
  %cmp498 = icmp ne i32 %421, %sub497
  br i1 %cmp498, label %if.then.500, label %if.end.508

if.then.500:                                      ; preds = %for.body.467
  %424 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call501 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %424, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0))
  %425 = load i32, i32* %k, align 4
  %rem502 = srem i32 %425, 2
  %cmp503 = icmp eq i32 %rem502, 1
  br i1 %cmp503, label %if.then.505, label %if.end.507

if.then.505:                                      ; preds = %if.then.500
  %426 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call506 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %426, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i32 0, i32 0))
  br label %if.end.507

if.end.507:                                       ; preds = %if.then.505, %if.then.500
  br label %if.end.508

if.end.508:                                       ; preds = %if.end.507, %for.body.467
  br label %for.inc.509

for.inc.509:                                      ; preds = %if.end.508
  %427 = load i32, i32* %k, align 4
  %inc510 = add nsw i32 %427, 1
  store i32 %inc510, i32* %k, align 4
  br label %for.cond.463

for.end.511:                                      ; preds = %for.cond.463
  %428 = load i32, i32* %j, align 4
  %429 = load %struct.VecScanState*, %struct.VecScanState** %ss, align 8
  %n512 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %429, i32 0, i32 0
  %430 = load i32, i32* %n512, align 4
  %sub513 = sub i32 %430, 1
  %cmp514 = icmp ne i32 %428, %sub513
  br i1 %cmp514, label %if.then.516, label %if.else.518

if.then.516:                                      ; preds = %for.end.511
  %431 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call517 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %431, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i32 0, i32 0))
  br label %if.end.520

if.else.518:                                      ; preds = %for.end.511
  %432 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call519 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %432, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i32 0, i32 0))
  br label %if.end.520

if.end.520:                                       ; preds = %if.else.518, %if.then.516
  br label %for.inc.521

for.inc.521:                                      ; preds = %if.end.520
  %433 = load i32, i32* %j, align 4
  %inc522 = add nsw i32 %433, 1
  store i32 %inc522, i32* %j, align 4
  br label %for.cond.426

for.end.523:                                      ; preds = %for.cond.426
  %434 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call524 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %434, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0))
  %435 = load %struct.State*, %struct.State** %s, align 8
  %scan_kind525 = getelementptr inbounds %struct.State, %struct.State* %435, i32 0, i32 10
  %bf.load526 = load i8, i8* %scan_kind525, align 8
  %bf.lshr527 = lshr i8 %bf.load526, 3
  %bf.clear528 = and i8 %bf.lshr527, 3
  %bf.cast529 = zext i8 %bf.clear528 to i32
  %cmp530 = icmp ne i32 %bf.cast529, 1
  br i1 %cmp530, label %if.then.532, label %if.end.609

if.then.532:                                      ; preds = %for.end.523
  %436 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %437 = load %struct.State*, %struct.State** %s, align 8
  %call533 = call i8* @scanner_u_type(%struct.State* %437)
  %438 = load i32, i32* %i, align 4
  %439 = load i8*, i8** %tag.addr, align 8
  %440 = load %struct.VecScanState*, %struct.VecScanState** %ss, align 8
  %n534 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %440, i32 0, i32 0
  %441 = load i32, i32* %n534, align 4
  %call535 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %436, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.97, i32 0, i32 0), i8* %call533, i32 %438, i8* %439, i32 %441)
  %442 = load %struct.State*, %struct.State** %s, align 8
  %call536 = call i32 @scanner_size(%struct.State* %442)
  %sub537 = sub nsw i32 %call536, 1
  %idxprom538 = sext i32 %sub537 to i64
  %arrayidx539 = getelementptr inbounds [4 x %struct.VecScannerBlock], [4 x %struct.VecScannerBlock]* %trans_scanner_block_hash, i32 0, i64 %idxprom538
  store %struct.VecScannerBlock* %arrayidx539, %struct.VecScannerBlock** %ptrans_scanner_block_hash, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.540

for.cond.540:                                     ; preds = %for.inc.605, %if.then.532
  %443 = load i32, i32* %j, align 4
  %444 = load %struct.VecScanState*, %struct.VecScanState** %ss, align 8
  %n541 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %444, i32 0, i32 0
  %445 = load i32, i32* %n541, align 4
  %cmp542 = icmp ult i32 %443, %445
  br i1 %cmp542, label %for.body.544, label %for.end.607

for.body.544:                                     ; preds = %for.cond.540
  %446 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call545 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %446, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.98, i32 0, i32 0))
  store i32 0, i32* %k, align 4
  br label %for.cond.546

for.cond.546:                                     ; preds = %for.inc.593, %for.body.544
  %447 = load i32, i32* %k, align 4
  %448 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %scanner_blocks547 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %448, i32 0, i32 18
  %449 = load i32, i32* %scanner_blocks547, align 4
  %cmp548 = icmp slt i32 %447, %449
  br i1 %cmp548, label %for.body.550, label %for.end.595

for.body.550:                                     ; preds = %for.cond.546
  %450 = load %struct.State*, %struct.State** %s, align 8
  %index553 = getelementptr inbounds %struct.State, %struct.State* %450, i32 0, i32 0
  %451 = load i32, i32* %index553, align 4
  %state_index554 = getelementptr inbounds %struct.ScannerBlock, %struct.ScannerBlock* %vs552, i32 0, i32 0
  store i32 %451, i32* %state_index554, align 4
  %452 = load i32, i32* %j, align 4
  %scanner_index555 = getelementptr inbounds %struct.ScannerBlock, %struct.ScannerBlock* %vs552, i32 0, i32 1
  store i32 %452, i32* %scanner_index555, align 4
  %453 = load i32, i32* %k, align 4
  %block_index556 = getelementptr inbounds %struct.ScannerBlock, %struct.ScannerBlock* %vs552, i32 0, i32 2
  store i32 %453, i32* %block_index556, align 4
  %454 = load i32, i32* %k, align 4
  %455 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %scanner_block_size557 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %455, i32 0, i32 19
  %456 = load i32, i32* %scanner_block_size557, align 4
  %mul558 = mul nsw i32 %454, %456
  %idxprom559 = sext i32 %mul558 to i64
  %457 = load i32, i32* %j, align 4
  %idxprom560 = sext i32 %457 to i64
  %458 = load %struct.VecScanState*, %struct.VecScanState** %ss, align 8
  %v561 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %458, i32 0, i32 2
  %459 = load %struct.ScanState**, %struct.ScanState*** %v561, align 8
  %arrayidx562 = getelementptr inbounds %struct.ScanState*, %struct.ScanState** %459, i64 %idxprom560
  %460 = load %struct.ScanState*, %struct.ScanState** %arrayidx562, align 8
  %chars563 = getelementptr inbounds %struct.ScanState, %struct.ScanState* %460, i32 0, i32 1
  %arrayidx564 = getelementptr inbounds [256 x %struct.ScanState*], [256 x %struct.ScanState*]* %chars563, i32 0, i64 %idxprom559
  %461 = bitcast %struct.ScanState** %arrayidx564 to i8*
  %462 = bitcast i8* %461 to %struct.ScanState**
  %chars565 = getelementptr inbounds %struct.ScannerBlock, %struct.ScannerBlock* %vs552, i32 0, i32 3
  store %struct.ScanState** %462, %struct.ScanState*** %chars565, align 8
  %463 = load i32, i32* %k, align 4
  %464 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %scanner_block_size566 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %464, i32 0, i32 19
  %465 = load i32, i32* %scanner_block_size566, align 4
  %mul567 = mul nsw i32 %463, %465
  %idxprom568 = sext i32 %mul567 to i64
  %466 = load i32, i32* %j, align 4
  %idxprom569 = sext i32 %466 to i64
  %467 = load %struct.VecScanState*, %struct.VecScanState** %ss, align 8
  %v570 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %467, i32 0, i32 2
  %468 = load %struct.ScanState**, %struct.ScanState*** %v570, align 8
  %arrayidx571 = getelementptr inbounds %struct.ScanState*, %struct.ScanState** %468, i64 %idxprom569
  %469 = load %struct.ScanState*, %struct.ScanState** %arrayidx571, align 8
  %transition572 = getelementptr inbounds %struct.ScanState, %struct.ScanState* %469, i32 0, i32 4
  %arrayidx573 = getelementptr inbounds [256 x %struct.ScanStateTransition*], [256 x %struct.ScanStateTransition*]* %transition572, i32 0, i64 %idxprom568
  %470 = bitcast %struct.ScanStateTransition** %arrayidx573 to i8*
  %471 = bitcast i8* %470 to %struct.ScanStateTransition**
  %transitions574 = getelementptr inbounds %struct.ScannerBlock, %struct.ScannerBlock* %vs552, i32 0, i32 4
  store %struct.ScanStateTransition** %471, %struct.ScanStateTransition*** %transitions574, align 8
  store %struct.ScannerBlock* %vs552, %struct.ScannerBlock** %xv, align 8
  %472 = load %struct.VecScannerBlock*, %struct.VecScannerBlock** %ptrans_scanner_block_hash, align 8
  %473 = bitcast %struct.VecScannerBlock* %472 to i8*
  %474 = load %struct.ScannerBlock*, %struct.ScannerBlock** %xv, align 8
  %475 = bitcast %struct.ScannerBlock* %474 to i8*
  %call575 = call i8* @set_add_fn(i8* %473, i8* %475, %struct.hash_fns_t* bitcast ({ i32 (i8*, %struct.hash_fns_t*)*, i32 (i8*, i8*, %struct.hash_fns_t*)*, [2 x i8*] }* @trans_scanner_block_fns to %struct.hash_fns_t*))
  %476 = bitcast i8* %call575 to %struct.ScannerBlock*
  store %struct.ScannerBlock* %476, %struct.ScannerBlock** %yv, align 8
  %477 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %478 = load %struct.ScannerBlock*, %struct.ScannerBlock** %yv, align 8
  %state_index576 = getelementptr inbounds %struct.ScannerBlock, %struct.ScannerBlock* %478, i32 0, i32 0
  %479 = load i32, i32* %state_index576, align 4
  %480 = load %struct.ScannerBlock*, %struct.ScannerBlock** %yv, align 8
  %scanner_index577 = getelementptr inbounds %struct.ScannerBlock, %struct.ScannerBlock* %480, i32 0, i32 1
  %481 = load i32, i32* %scanner_index577, align 4
  %482 = load %struct.ScannerBlock*, %struct.ScannerBlock** %yv, align 8
  %block_index578 = getelementptr inbounds %struct.ScannerBlock, %struct.ScannerBlock* %482, i32 0, i32 2
  %483 = load i32, i32* %block_index578, align 4
  %484 = load i8*, i8** %tag.addr, align 8
  %call579 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %477, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.99, i32 0, i32 0), i32 %479, i32 %481, i32 %483, i8* %484)
  %485 = load i32, i32* %k, align 4
  %486 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %scanner_blocks580 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %486, i32 0, i32 18
  %487 = load i32, i32* %scanner_blocks580, align 4
  %sub581 = sub nsw i32 %487, 1
  %cmp582 = icmp ne i32 %485, %sub581
  br i1 %cmp582, label %if.then.584, label %if.end.592

if.then.584:                                      ; preds = %for.body.550
  %488 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call585 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %488, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0))
  %489 = load i32, i32* %k, align 4
  %rem586 = srem i32 %489, 2
  %cmp587 = icmp eq i32 %rem586, 1
  br i1 %cmp587, label %if.then.589, label %if.end.591

if.then.589:                                      ; preds = %if.then.584
  %490 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call590 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %490, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i32 0, i32 0))
  br label %if.end.591

if.end.591:                                       ; preds = %if.then.589, %if.then.584
  br label %if.end.592

if.end.592:                                       ; preds = %if.end.591, %for.body.550
  br label %for.inc.593

for.inc.593:                                      ; preds = %if.end.592
  %491 = load i32, i32* %k, align 4
  %inc594 = add nsw i32 %491, 1
  store i32 %inc594, i32* %k, align 4
  br label %for.cond.546

for.end.595:                                      ; preds = %for.cond.546
  %492 = load i32, i32* %j, align 4
  %493 = load %struct.VecScanState*, %struct.VecScanState** %ss, align 8
  %n596 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %493, i32 0, i32 0
  %494 = load i32, i32* %n596, align 4
  %sub597 = sub i32 %494, 1
  %cmp598 = icmp ne i32 %492, %sub597
  br i1 %cmp598, label %if.then.600, label %if.else.602

if.then.600:                                      ; preds = %for.end.595
  %495 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call601 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %495, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i32 0, i32 0))
  br label %if.end.604

if.else.602:                                      ; preds = %for.end.595
  %496 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call603 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %496, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i32 0, i32 0))
  br label %if.end.604

if.end.604:                                       ; preds = %if.else.602, %if.then.600
  br label %for.inc.605

for.inc.605:                                      ; preds = %if.end.604
  %497 = load i32, i32* %j, align 4
  %inc606 = add nsw i32 %497, 1
  store i32 %inc606, i32* %j, align 4
  br label %for.cond.540

for.end.607:                                      ; preds = %for.cond.540
  %498 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call608 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %498, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0))
  br label %if.end.609

if.end.609:                                       ; preds = %for.end.607, %for.end.523
  br label %if.end.610

if.end.610:                                       ; preds = %if.end.609, %land.lhs.true.415, %for.body.406
  br label %for.inc.611

for.inc.611:                                      ; preds = %if.end.610
  %499 = load i32, i32* %i, align 4
  %inc612 = add nsw i32 %499, 1
  store i32 %inc612, i32* %i, align 4
  br label %for.cond.401

for.end.613:                                      ; preds = %for.cond.401
  store i32 0, i32* %i, align 4
  br label %for.cond.614

for.cond.614:                                     ; preds = %for.inc.646, %for.end.613
  %500 = load i32, i32* %i, align 4
  %cmp615 = icmp slt i32 %500, 4
  br i1 %cmp615, label %for.body.617, label %for.end.648

for.body.617:                                     ; preds = %for.cond.614
  br label %do.body.618

do.body.618:                                      ; preds = %for.body.617
  %501 = load i32, i32* %i, align 4
  %idxprom619 = sext i32 %501 to i64
  %arrayidx620 = getelementptr inbounds [4 x %struct.VecScannerBlock], [4 x %struct.VecScannerBlock]* %scanner_block_hash, i32 0, i64 %idxprom619
  %v621 = getelementptr inbounds %struct.VecScannerBlock, %struct.VecScannerBlock* %arrayidx620, i32 0, i32 2
  %502 = load %struct.ScannerBlock**, %struct.ScannerBlock*** %v621, align 8
  %tobool622 = icmp ne %struct.ScannerBlock** %502, null
  br i1 %tobool622, label %land.lhs.true.623, label %if.end.636

land.lhs.true.623:                                ; preds = %do.body.618
  %503 = load i32, i32* %i, align 4
  %idxprom624 = sext i32 %503 to i64
  %arrayidx625 = getelementptr inbounds [4 x %struct.VecScannerBlock], [4 x %struct.VecScannerBlock]* %scanner_block_hash, i32 0, i64 %idxprom624
  %v626 = getelementptr inbounds %struct.VecScannerBlock, %struct.VecScannerBlock* %arrayidx625, i32 0, i32 2
  %504 = load %struct.ScannerBlock**, %struct.ScannerBlock*** %v626, align 8
  %505 = load i32, i32* %i, align 4
  %idxprom627 = sext i32 %505 to i64
  %arrayidx628 = getelementptr inbounds [4 x %struct.VecScannerBlock], [4 x %struct.VecScannerBlock]* %scanner_block_hash, i32 0, i64 %idxprom627
  %e = getelementptr inbounds %struct.VecScannerBlock, %struct.VecScannerBlock* %arrayidx628, i32 0, i32 3
  %arraydecay629 = getelementptr inbounds [3 x %struct.ScannerBlock*], [3 x %struct.ScannerBlock*]* %e, i32 0, i32 0
  %cmp630 = icmp ne %struct.ScannerBlock** %504, %arraydecay629
  br i1 %cmp630, label %if.then.632, label %if.end.636

if.then.632:                                      ; preds = %land.lhs.true.623
  %506 = load i32, i32* %i, align 4
  %idxprom633 = sext i32 %506 to i64
  %arrayidx634 = getelementptr inbounds [4 x %struct.VecScannerBlock], [4 x %struct.VecScannerBlock]* %scanner_block_hash, i32 0, i64 %idxprom633
  %v635 = getelementptr inbounds %struct.VecScannerBlock, %struct.VecScannerBlock* %arrayidx634, i32 0, i32 2
  %507 = load %struct.ScannerBlock**, %struct.ScannerBlock*** %v635, align 8
  %508 = bitcast %struct.ScannerBlock** %507 to i8*
  call void @free(i8* %508) #5
  br label %if.end.636

if.end.636:                                       ; preds = %if.then.632, %land.lhs.true.623, %do.body.618
  br label %do.body.637

do.body.637:                                      ; preds = %if.end.636
  %509 = load i32, i32* %i, align 4
  %idxprom638 = sext i32 %509 to i64
  %arrayidx639 = getelementptr inbounds [4 x %struct.VecScannerBlock], [4 x %struct.VecScannerBlock]* %scanner_block_hash, i32 0, i64 %idxprom638
  %n640 = getelementptr inbounds %struct.VecScannerBlock, %struct.VecScannerBlock* %arrayidx639, i32 0, i32 0
  store i32 0, i32* %n640, align 4
  %510 = load i32, i32* %i, align 4
  %idxprom641 = sext i32 %510 to i64
  %arrayidx642 = getelementptr inbounds [4 x %struct.VecScannerBlock], [4 x %struct.VecScannerBlock]* %scanner_block_hash, i32 0, i64 %idxprom641
  %v643 = getelementptr inbounds %struct.VecScannerBlock, %struct.VecScannerBlock* %arrayidx642, i32 0, i32 2
  store %struct.ScannerBlock** null, %struct.ScannerBlock*** %v643, align 8
  br label %do.end.644

do.end.644:                                       ; preds = %do.body.637
  br label %do.end.645

do.end.645:                                       ; preds = %do.end.644
  br label %for.inc.646

for.inc.646:                                      ; preds = %do.end.645
  %511 = load i32, i32* %i, align 4
  %inc647 = add nsw i32 %511, 1
  store i32 %inc647, i32* %i, align 4
  br label %for.cond.614

for.end.648:                                      ; preds = %for.cond.614
  %512 = load %struct.ScannerBlock*, %struct.ScannerBlock** %vsblock, align 8
  %513 = bitcast %struct.ScannerBlock* %512 to i8*
  call void @free(i8* %513) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_scanner_code_as_C(%struct._IO_FILE* %fp, %struct.Grammar* %g, i8* %tag) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %g.addr = alloca %struct.Grammar*, align 8
  %tag.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l = alloca i32, align 4
  %a = alloca %struct.Action*, align 8
  %s = alloca %struct.State*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.52, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states = getelementptr inbounds %struct.Grammar, %struct.Grammar* %1, i32 0, i32 3
  %n = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states, i32 0, i32 0
  %2 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.54

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states1 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %4, i32 0, i32 3
  %v = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states1, i32 0, i32 2
  %5 = load %struct.State**, %struct.State*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.State*, %struct.State** %5, i64 %idxprom
  %6 = load %struct.State*, %struct.State** %arrayidx, align 8
  store %struct.State* %6, %struct.State** %s, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %j, align 4
  %8 = load %struct.State*, %struct.State** %s, align 8
  %shift_actions = getelementptr inbounds %struct.State, %struct.State* %8, i32 0, i32 5
  %n3 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions, i32 0, i32 0
  %9 = load i32, i32* %n3, align 4
  %cmp4 = icmp ult i32 %7, %9
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.2
  %10 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load %struct.State*, %struct.State** %s, align 8
  %shift_actions7 = getelementptr inbounds %struct.State, %struct.State* %11, i32 0, i32 5
  %v8 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions7, i32 0, i32 2
  %12 = load %struct.Action**, %struct.Action*** %v8, align 8
  %arrayidx9 = getelementptr inbounds %struct.Action*, %struct.Action** %12, i64 %idxprom6
  %13 = load %struct.Action*, %struct.Action** %arrayidx9, align 8
  store %struct.Action* %13, %struct.Action** %a, align 8
  %14 = load %struct.Action*, %struct.Action** %a, align 8
  %kind = getelementptr inbounds %struct.Action, %struct.Action* %14, i32 0, i32 0
  %15 = load i32, i32* %kind, align 4
  %cmp10 = icmp eq i32 %15, 1
  br i1 %cmp10, label %land.lhs.true, label %if.end.42

land.lhs.true:                                    ; preds = %for.body.5
  %16 = load %struct.Action*, %struct.Action** %a, align 8
  %term = getelementptr inbounds %struct.Action, %struct.Action* %16, i32 0, i32 1
  %17 = load %struct.Term*, %struct.Term** %term, align 8
  %kind11 = getelementptr inbounds %struct.Term, %struct.Term* %17, i32 0, i32 0
  %18 = load i32, i32* %kind11, align 4
  %cmp12 = icmp eq i32 %18, 2
  br i1 %cmp12, label %if.then, label %if.end.42

if.then:                                          ; preds = %land.lhs.true
  %19 = load %struct.State*, %struct.State** %s, align 8
  %scanner_code = getelementptr inbounds %struct.State, %struct.State* %19, i32 0, i32 10
  %bf.load = load i8, i8* %scanner_code, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end, label %if.then.13

if.then.13:                                       ; preds = %if.then
  %20 = load %struct.State*, %struct.State** %s, align 8
  %scanner_code14 = getelementptr inbounds %struct.State, %struct.State* %20, i32 0, i32 10
  %bf.load15 = load i8, i8* %scanner_code14, align 8
  %bf.clear16 = and i8 %bf.load15, -3
  %bf.set = or i8 %bf.clear16, 2
  store i8 %bf.set, i8* %scanner_code14, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %22 = load i32, i32* %i, align 4
  %23 = load i8*, i8** %tag.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([153 x i8], [153 x i8]* @.str.107, i32 0, i32 0), i32 %22, i8* %23)
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.then
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.108, i32 0, i32 0))
  %25 = load %struct.Action*, %struct.Action** %a, align 8
  %term18 = getelementptr inbounds %struct.Action, %struct.Action* %25, i32 0, i32 1
  %26 = load %struct.Term*, %struct.Term** %term18, align 8
  %string = getelementptr inbounds %struct.Term, %struct.Term* %26, i32 0, i32 5
  %27 = load i8*, i8** %string, align 8
  %call19 = call i64 @strlen(i8* %27) #6
  %conv = trunc i64 %call19 to i32
  store i32 %conv, i32* %l, align 4
  %28 = load i32, i32* %l, align 4
  %sub = sub nsw i32 %28, 1
  %idxprom20 = sext i32 %sub to i64
  %29 = load %struct.Action*, %struct.Action** %a, align 8
  %term21 = getelementptr inbounds %struct.Action, %struct.Action* %29, i32 0, i32 1
  %30 = load %struct.Term*, %struct.Term** %term21, align 8
  %string22 = getelementptr inbounds %struct.Term, %struct.Term* %30, i32 0, i32 5
  %31 = load i8*, i8** %string22, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %31, i64 %idxprom20
  %32 = load i8, i8* %arrayidx23, align 1
  %conv24 = sext i8 %32 to i32
  %cmp25 = icmp eq i32 %conv24, 41
  br i1 %cmp25, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %if.end
  %33 = load %struct.Action*, %struct.Action** %a, align 8
  %term28 = getelementptr inbounds %struct.Action, %struct.Action* %33, i32 0, i32 1
  %34 = load %struct.Term*, %struct.Term** %term28, align 8
  %string29 = getelementptr inbounds %struct.Term, %struct.Term* %34, i32 0, i32 5
  %35 = load i8*, i8** %string29, align 8
  %36 = load i32, i32* %l, align 4
  %sub30 = sub nsw i32 %36, 1
  %conv31 = sext i32 %sub30 to i64
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call32 = call i64 @fwrite(i8* %35, i64 %conv31, i64 1, %struct._IO_FILE* %37)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end.37

if.else:                                          ; preds = %if.end
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %40 = load %struct.Action*, %struct.Action** %a, align 8
  %term34 = getelementptr inbounds %struct.Action, %struct.Action* %40, i32 0, i32 1
  %41 = load %struct.Term*, %struct.Term** %term34, align 8
  %string35 = getelementptr inbounds %struct.Term, %struct.Term* %41, i32 0, i32 5
  %42 = load i8*, i8** %string35, align 8
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i32 0, i32 0), i8* %42)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %if.then.27
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %44 = load %struct.Action*, %struct.Action** %a, align 8
  %term38 = getelementptr inbounds %struct.Action, %struct.Action* %44, i32 0, i32 1
  %45 = load %struct.Term*, %struct.Term** %term38, align 8
  %index = getelementptr inbounds %struct.Term, %struct.Term* %45, i32 0, i32 1
  %46 = load i32, i32* %index, align 4
  %47 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions = getelementptr inbounds %struct.Grammar, %struct.Grammar* %47, i32 0, i32 1
  %n39 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions, i32 0, i32 0
  %48 = load i32, i32* %n39, align 4
  %add = add i32 %46, %48
  %49 = load %struct.Action*, %struct.Action** %a, align 8
  %term40 = getelementptr inbounds %struct.Action, %struct.Action* %49, i32 0, i32 1
  %50 = load %struct.Term*, %struct.Term** %term40, align 8
  %term_priority = getelementptr inbounds %struct.Term, %struct.Term* %50, i32 0, i32 2
  %51 = load i32, i32* %term_priority, align 4
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.110, i32 0, i32 0), i32 %add, i32 %51)
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.37, %land.lhs.true, %for.body.5
  br label %for.inc

for.inc:                                          ; preds = %if.end.42
  %52 = load i32, i32* %j, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %53 = load %struct.State*, %struct.State** %s, align 8
  %scanner_code43 = getelementptr inbounds %struct.State, %struct.State* %53, i32 0, i32 10
  %bf.load44 = load i8, i8* %scanner_code43, align 8
  %bf.lshr45 = lshr i8 %bf.load44, 1
  %bf.clear46 = and i8 %bf.lshr45, 1
  %bf.cast47 = zext i8 %bf.clear46 to i32
  %tobool48 = icmp ne i32 %bf.cast47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %for.end
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.111, i32 0, i32 0))
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %for.end
  br label %for.inc.52

for.inc.52:                                       ; preds = %if.end.51
  %55 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %55, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond

for.end.54:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_goto_data_as_C(%struct._IO_FILE* %fp, %struct.Grammar* %g, i8* %tag) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %g.addr = alloca %struct.Grammar*, align 8
  %tag.addr = alloca i8*, align 8
  %vgoto = alloca %struct.anon.9, align 8
  %s = alloca %struct.State*, align 8
  %goto_valid = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  %again = alloca i32, align 4
  %lowest = alloca i32, align 4
  %nvalid_bytes = alloca i32, align 4
  %sym = alloca i32, align 4
  %lowest_sym = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  store i8* null, i8** %goto_valid, align 8
  %0 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions = getelementptr inbounds %struct.Grammar, %struct.Grammar* %0, i32 0, i32 1
  %n = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions, i32 0, i32 0
  %1 = load i32, i32* %n, align 4
  %2 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals = getelementptr inbounds %struct.Grammar, %struct.Grammar* %2, i32 0, i32 2
  %n1 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals, i32 0, i32 0
  %3 = load i32, i32* %n1, align 4
  %add = add i32 %1, %3
  %add2 = add i32 %add, 7
  %div = udiv i32 %add2, 8
  store i32 %div, i32* %nvalid_bytes, align 4
  %4 = load i32, i32* %nvalid_bytes, align 4
  %conv = sext i32 %4 to i64
  %call = call noalias i8* @malloc(i64 %conv) #5
  store i8* %call, i8** %goto_valid, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %n3 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %vgoto, i32 0, i32 0
  store i32 0, i32* %n3, align 4
  %v = getelementptr inbounds %struct.anon.9, %struct.anon.9* %vgoto, i32 0, i32 2
  store i64* null, i64** %v, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.279, %do.end
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states = getelementptr inbounds %struct.Grammar, %struct.Grammar* %6, i32 0, i32 3
  %n4 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states, i32 0, i32 0
  %7 = load i32, i32* %n4, align 4
  %cmp = icmp ult i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end.281

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states6 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %9, i32 0, i32 3
  %v7 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states6, i32 0, i32 2
  %10 = load %struct.State**, %struct.State*** %v7, align 8
  %arrayidx = getelementptr inbounds %struct.State*, %struct.State** %10, i64 %idxprom
  %11 = load %struct.State*, %struct.State** %arrayidx, align 8
  store %struct.State* %11, %struct.State** %s, align 8
  %12 = load %struct.State*, %struct.State** %s, align 8
  %gotos = getelementptr inbounds %struct.State, %struct.State* %12, i32 0, i32 4
  %n8 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos, i32 0, i32 0
  %13 = load i32, i32* %n8, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.else.179

if.then:                                          ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %if.then
  %14 = load i32, i32* %j, align 4
  %15 = load %struct.State*, %struct.State** %s, align 8
  %gotos10 = getelementptr inbounds %struct.State, %struct.State* %15, i32 0, i32 4
  %n11 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos10, i32 0, i32 0
  %16 = load i32, i32* %n11, align 4
  %cmp12 = icmp ult i32 %14, %16
  br i1 %cmp12, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.9
  %17 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %17 to i64
  %18 = load %struct.State*, %struct.State** %s, align 8
  %gotos16 = getelementptr inbounds %struct.State, %struct.State* %18, i32 0, i32 4
  %v17 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos16, i32 0, i32 2
  %19 = load %struct.Goto**, %struct.Goto*** %v17, align 8
  %arrayidx18 = getelementptr inbounds %struct.Goto*, %struct.Goto** %19, i64 %idxprom15
  %20 = load %struct.Goto*, %struct.Goto** %arrayidx18, align 8
  %elem = getelementptr inbounds %struct.Goto, %struct.Goto* %20, i32 0, i32 0
  %21 = load %struct.Elem*, %struct.Elem** %elem, align 8
  %kind = getelementptr inbounds %struct.Elem, %struct.Elem* %21, i32 0, i32 0
  %22 = load i32, i32* %kind, align 4
  %cmp19 = icmp eq i32 %22, 1
  br i1 %cmp19, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.14
  %23 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %23 to i64
  %24 = load %struct.State*, %struct.State** %s, align 8
  %gotos22 = getelementptr inbounds %struct.State, %struct.State* %24, i32 0, i32 4
  %v23 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos22, i32 0, i32 2
  %25 = load %struct.Goto**, %struct.Goto*** %v23, align 8
  %arrayidx24 = getelementptr inbounds %struct.Goto*, %struct.Goto** %25, i64 %idxprom21
  %26 = load %struct.Goto*, %struct.Goto** %arrayidx24, align 8
  %elem25 = getelementptr inbounds %struct.Goto, %struct.Goto* %26, i32 0, i32 0
  %27 = load %struct.Elem*, %struct.Elem** %elem25, align 8
  %e = getelementptr inbounds %struct.Elem, %struct.Elem* %27, i32 0, i32 3
  %term = bitcast %union.anon* %e to %struct.Term**
  %28 = load %struct.Term*, %struct.Term** %term, align 8
  %kind26 = getelementptr inbounds %struct.Term, %struct.Term* %28, i32 0, i32 0
  %29 = load i32, i32* %kind26, align 4
  %cmp27 = icmp eq i32 %29, 3
  br i1 %cmp27, label %if.then.29, label %if.end

if.then.29:                                       ; preds = %land.lhs.true
  %30 = load %struct.State*, %struct.State** %s, align 8
  %goto_on_token = getelementptr inbounds %struct.State, %struct.State* %30, i32 0, i32 10
  %bf.load = load i8, i8* %goto_on_token, align 8
  %bf.clear = and i8 %bf.load, -5
  %bf.set = or i8 %bf.clear, 4
  store i8 %bf.set, i8* %goto_on_token, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.29, %land.lhs.true, %for.body.14
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %31 = load i32, i32* %j, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  %32 = load i8*, i8** %goto_valid, align 8
  %33 = load i32, i32* %nvalid_bytes, align 4
  %conv30 = sext i32 %33 to i64
  call void @llvm.memset.p0i8.i64(i8* %32, i8 0, i64 %conv30, i32 1, i1 false)
  store i32 0, i32* %lowest, align 4
  %34 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %35 = load %struct.State*, %struct.State** %s, align 8
  %gotos31 = getelementptr inbounds %struct.State, %struct.State* %35, i32 0, i32 4
  %v32 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos31, i32 0, i32 2
  %36 = load %struct.Goto**, %struct.Goto*** %v32, align 8
  %arrayidx33 = getelementptr inbounds %struct.Goto*, %struct.Goto** %36, i64 0
  %37 = load %struct.Goto*, %struct.Goto** %arrayidx33, align 8
  %elem34 = getelementptr inbounds %struct.Goto, %struct.Goto* %37, i32 0, i32 0
  %38 = load %struct.Elem*, %struct.Elem** %elem34, align 8
  %call35 = call i32 @elem_symbol(%struct.Grammar* %34, %struct.Elem* %38)
  store i32 %call35, i32* %lowest_sym, align 4
  %39 = load i32, i32* %lowest_sym, align 4
  %rem = srem i32 %39, 8
  %shl = shl i32 1, %rem
  %40 = load i32, i32* %lowest_sym, align 4
  %div36 = sdiv i32 %40, 8
  %idxprom37 = sext i32 %div36 to i64
  %41 = load i8*, i8** %goto_valid, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %41, i64 %idxprom37
  %42 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %42 to i32
  %or = or i32 %conv39, %shl
  %conv40 = trunc i32 %or to i8
  store i8 %conv40, i8* %arrayidx38, align 1
  store i32 1, i32* %j, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.65, %for.end
  %43 = load i32, i32* %j, align 4
  %44 = load %struct.State*, %struct.State** %s, align 8
  %gotos42 = getelementptr inbounds %struct.State, %struct.State* %44, i32 0, i32 4
  %n43 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos42, i32 0, i32 0
  %45 = load i32, i32* %n43, align 4
  %cmp44 = icmp ult i32 %43, %45
  br i1 %cmp44, label %for.body.46, label %for.end.67

for.body.46:                                      ; preds = %for.cond.41
  %46 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %47 = load i32, i32* %j, align 4
  %idxprom47 = sext i32 %47 to i64
  %48 = load %struct.State*, %struct.State** %s, align 8
  %gotos48 = getelementptr inbounds %struct.State, %struct.State* %48, i32 0, i32 4
  %v49 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos48, i32 0, i32 2
  %49 = load %struct.Goto**, %struct.Goto*** %v49, align 8
  %arrayidx50 = getelementptr inbounds %struct.Goto*, %struct.Goto** %49, i64 %idxprom47
  %50 = load %struct.Goto*, %struct.Goto** %arrayidx50, align 8
  %elem51 = getelementptr inbounds %struct.Goto, %struct.Goto* %50, i32 0, i32 0
  %51 = load %struct.Elem*, %struct.Elem** %elem51, align 8
  %call52 = call i32 @elem_symbol(%struct.Grammar* %46, %struct.Elem* %51)
  store i32 %call52, i32* %sym, align 4
  %52 = load i32, i32* %sym, align 4
  %rem53 = srem i32 %52, 8
  %shl54 = shl i32 1, %rem53
  %53 = load i32, i32* %sym, align 4
  %div55 = sdiv i32 %53, 8
  %idxprom56 = sext i32 %div55 to i64
  %54 = load i8*, i8** %goto_valid, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %54, i64 %idxprom56
  %55 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %55 to i32
  %or59 = or i32 %conv58, %shl54
  %conv60 = trunc i32 %or59 to i8
  store i8 %conv60, i8* %arrayidx57, align 1
  %56 = load i32, i32* %sym, align 4
  %57 = load i32, i32* %lowest_sym, align 4
  %cmp61 = icmp slt i32 %56, %57
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %for.body.46
  %58 = load i32, i32* %j, align 4
  store i32 %58, i32* %lowest, align 4
  %59 = load i32, i32* %sym, align 4
  store i32 %59, i32* %lowest_sym, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %for.body.46
  br label %for.inc.65

for.inc.65:                                       ; preds = %if.end.64
  %60 = load i32, i32* %j, align 4
  %inc66 = add nsw i32 %60, 1
  store i32 %inc66, i32* %j, align 4
  br label %for.cond.41

for.end.67:                                       ; preds = %for.cond.41
  store i32 1, i32* %again, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end.161, %for.end.67
  %61 = load i32, i32* %again, align 4
  %tobool68 = icmp ne i32 %61, 0
  br i1 %tobool68, label %while.body, label %while.end.162

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %again, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.159, %while.body
  %62 = load i32, i32* %j, align 4
  %63 = load %struct.State*, %struct.State** %s, align 8
  %gotos70 = getelementptr inbounds %struct.State, %struct.State* %63, i32 0, i32 4
  %n71 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos70, i32 0, i32 0
  %64 = load i32, i32* %n71, align 4
  %cmp72 = icmp ult i32 %62, %64
  br i1 %cmp72, label %for.body.74, label %for.end.161

for.body.74:                                      ; preds = %for.cond.69
  %65 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %66 = load i32, i32* %j, align 4
  %idxprom75 = sext i32 %66 to i64
  %67 = load %struct.State*, %struct.State** %s, align 8
  %gotos76 = getelementptr inbounds %struct.State, %struct.State* %67, i32 0, i32 4
  %v77 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos76, i32 0, i32 2
  %68 = load %struct.Goto**, %struct.Goto*** %v77, align 8
  %arrayidx78 = getelementptr inbounds %struct.Goto*, %struct.Goto** %68, i64 %idxprom75
  %69 = load %struct.Goto*, %struct.Goto** %arrayidx78, align 8
  %elem79 = getelementptr inbounds %struct.Goto, %struct.Goto* %69, i32 0, i32 0
  %70 = load %struct.Elem*, %struct.Elem** %elem79, align 8
  %call80 = call i32 @elem_symbol(%struct.Grammar* %65, %struct.Elem* %70)
  store i32 %call80, i32* %x, align 4
  %71 = load i32, i32* %lowest_sym, align 4
  %72 = load i32, i32* %x, align 4
  %sub = sub nsw i32 %72, %71
  store i32 %sub, i32* %x, align 4
  br label %while.cond.81

while.cond.81:                                    ; preds = %do.end.124, %for.body.74
  %n82 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %vgoto, i32 0, i32 0
  %73 = load i32, i32* %n82, align 4
  %74 = load i32, i32* %x, align 4
  %cmp83 = icmp ule i32 %73, %74
  br i1 %cmp83, label %while.body.85, label %while.end

while.body.85:                                    ; preds = %while.cond.81
  br label %do.body.86

do.body.86:                                       ; preds = %while.body.85
  %v87 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %vgoto, i32 0, i32 2
  %75 = load i64*, i64** %v87, align 8
  %tobool88 = icmp ne i64* %75, null
  br i1 %tobool88, label %if.else, label %if.then.89

if.then.89:                                       ; preds = %do.body.86
  %n90 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %vgoto, i32 0, i32 0
  %76 = load i32, i32* %n90, align 4
  %inc91 = add i32 %76, 1
  store i32 %inc91, i32* %n90, align 4
  %idxprom92 = zext i32 %76 to i64
  %e93 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %vgoto, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x i64], [3 x i64]* %e93, i32 0, i32 0
  %v94 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %vgoto, i32 0, i32 2
  store i64* %arraydecay, i64** %v94, align 8
  %arrayidx95 = getelementptr inbounds i64, i64* %arraydecay, i64 %idxprom92
  store i64 0, i64* %arrayidx95, align 8
  br label %do.end.124

if.else:                                          ; preds = %do.body.86
  %v96 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %vgoto, i32 0, i32 2
  %77 = load i64*, i64** %v96, align 8
  %e97 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %vgoto, i32 0, i32 3
  %arraydecay98 = getelementptr inbounds [3 x i64], [3 x i64]* %e97, i32 0, i32 0
  %cmp99 = icmp eq i64* %77, %arraydecay98
  br i1 %cmp99, label %if.then.101, label %if.else.112

if.then.101:                                      ; preds = %if.else
  %n102 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %vgoto, i32 0, i32 0
  %78 = load i32, i32* %n102, align 4
  %cmp103 = icmp ult i32 %78, 3
  br i1 %cmp103, label %if.then.105, label %if.end.111

if.then.105:                                      ; preds = %if.then.101
  %n106 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %vgoto, i32 0, i32 0
  %79 = load i32, i32* %n106, align 4
  %inc107 = add i32 %79, 1
  store i32 %inc107, i32* %n106, align 4
  %idxprom108 = zext i32 %79 to i64
  %v109 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %vgoto, i32 0, i32 2
  %80 = load i64*, i64** %v109, align 8
  %arrayidx110 = getelementptr inbounds i64, i64* %80, i64 %idxprom108
  store i64 0, i64* %arrayidx110, align 8
  br label %do.end.124

if.end.111:                                       ; preds = %if.then.101
  br label %if.end.122

if.else.112:                                      ; preds = %if.else
  %n113 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %vgoto, i32 0, i32 0
  %81 = load i32, i32* %n113, align 4
  %and = and i32 %81, 7
  %tobool114 = icmp ne i32 %and, 0
  br i1 %tobool114, label %if.then.115, label %if.end.121

if.then.115:                                      ; preds = %if.else.112
  %n116 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %vgoto, i32 0, i32 0
  %82 = load i32, i32* %n116, align 4
  %inc117 = add i32 %82, 1
  store i32 %inc117, i32* %n116, align 4
  %idxprom118 = zext i32 %82 to i64
  %v119 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %vgoto, i32 0, i32 2
  %83 = load i64*, i64** %v119, align 8
  %arrayidx120 = getelementptr inbounds i64, i64* %83, i64 %idxprom118
  store i64 0, i64* %arrayidx120, align 8
  br label %do.end.124

if.end.121:                                       ; preds = %if.else.112
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.end.111
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122
  %84 = bitcast %struct.anon.9* %vgoto to i8*
  call void @vec_add_internal(i8* %84, i8* null)
  br label %do.end.124

do.end.124:                                       ; preds = %if.end.123, %if.then.115, %if.then.105, %if.then.89
  br label %while.cond.81

while.end:                                        ; preds = %while.cond.81
  %85 = load i32, i32* %x, align 4
  %idxprom125 = sext i32 %85 to i64
  %v126 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %vgoto, i32 0, i32 2
  %86 = load i64*, i64** %v126, align 8
  %arrayidx127 = getelementptr inbounds i64, i64* %86, i64 %idxprom125
  %87 = load i64, i64* %arrayidx127, align 8
  %tobool128 = icmp ne i64 %87, 0
  br i1 %tobool128, label %if.then.129, label %if.else.148

if.then.129:                                      ; preds = %while.end
  store i32 1, i32* %again, align 4
  %88 = load i32, i32* %j, align 4
  %dec = add nsw i32 %88, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.130

for.cond.130:                                     ; preds = %for.inc.144, %if.then.129
  %89 = load i32, i32* %j, align 4
  %cmp131 = icmp sge i32 %89, 0
  br i1 %cmp131, label %for.body.133, label %for.end.146

for.body.133:                                     ; preds = %for.cond.130
  %90 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %91 = load i32, i32* %j, align 4
  %idxprom134 = sext i32 %91 to i64
  %92 = load %struct.State*, %struct.State** %s, align 8
  %gotos135 = getelementptr inbounds %struct.State, %struct.State* %92, i32 0, i32 4
  %v136 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos135, i32 0, i32 2
  %93 = load %struct.Goto**, %struct.Goto*** %v136, align 8
  %arrayidx137 = getelementptr inbounds %struct.Goto*, %struct.Goto** %93, i64 %idxprom134
  %94 = load %struct.Goto*, %struct.Goto** %arrayidx137, align 8
  %elem138 = getelementptr inbounds %struct.Goto, %struct.Goto* %94, i32 0, i32 0
  %95 = load %struct.Elem*, %struct.Elem** %elem138, align 8
  %call139 = call i32 @elem_symbol(%struct.Grammar* %90, %struct.Elem* %95)
  store i32 %call139, i32* %x, align 4
  %96 = load i32, i32* %lowest_sym, align 4
  %97 = load i32, i32* %x, align 4
  %sub140 = sub nsw i32 %97, %96
  store i32 %sub140, i32* %x, align 4
  %98 = load i32, i32* %x, align 4
  %idxprom141 = sext i32 %98 to i64
  %v142 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %vgoto, i32 0, i32 2
  %99 = load i64*, i64** %v142, align 8
  %arrayidx143 = getelementptr inbounds i64, i64* %99, i64 %idxprom141
  store i64 0, i64* %arrayidx143, align 8
  br label %for.inc.144

for.inc.144:                                      ; preds = %for.body.133
  %100 = load i32, i32* %j, align 4
  %dec145 = add nsw i32 %100, -1
  store i32 %dec145, i32* %j, align 4
  br label %for.cond.130

for.end.146:                                      ; preds = %for.cond.130
  %101 = load i32, i32* %lowest_sym, align 4
  %dec147 = add nsw i32 %101, -1
  store i32 %dec147, i32* %lowest_sym, align 4
  br label %for.end.161

if.else.148:                                      ; preds = %while.end
  %102 = load i32, i32* %j, align 4
  %idxprom149 = sext i32 %102 to i64
  %103 = load %struct.State*, %struct.State** %s, align 8
  %gotos150 = getelementptr inbounds %struct.State, %struct.State* %103, i32 0, i32 4
  %v151 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos150, i32 0, i32 2
  %104 = load %struct.Goto**, %struct.Goto*** %v151, align 8
  %arrayidx152 = getelementptr inbounds %struct.Goto*, %struct.Goto** %104, i64 %idxprom149
  %105 = load %struct.Goto*, %struct.Goto** %arrayidx152, align 8
  %state = getelementptr inbounds %struct.Goto, %struct.Goto* %105, i32 0, i32 1
  %106 = load %struct.State*, %struct.State** %state, align 8
  %index = getelementptr inbounds %struct.State, %struct.State* %106, i32 0, i32 0
  %107 = load i32, i32* %index, align 4
  %add153 = add i32 %107, 1
  %conv154 = zext i32 %add153 to i64
  %108 = load i32, i32* %x, align 4
  %idxprom155 = sext i32 %108 to i64
  %v156 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %vgoto, i32 0, i32 2
  %109 = load i64*, i64** %v156, align 8
  %arrayidx157 = getelementptr inbounds i64, i64* %109, i64 %idxprom155
  store i64 %conv154, i64* %arrayidx157, align 8
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.148
  br label %for.inc.159

for.inc.159:                                      ; preds = %if.end.158
  %110 = load i32, i32* %j, align 4
  %inc160 = add nsw i32 %110, 1
  store i32 %inc160, i32* %j, align 4
  br label %for.cond.69

for.end.161:                                      ; preds = %for.end.146, %for.cond.69
  br label %while.cond

while.end.162:                                    ; preds = %while.cond
  %111 = load i32, i32* %lowest_sym, align 4
  %112 = load %struct.State*, %struct.State** %s, align 8
  %goto_table_offset = getelementptr inbounds %struct.State, %struct.State* %112, i32 0, i32 12
  store i32 %111, i32* %goto_table_offset, align 4
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %114 = load i32, i32* %i, align 4
  %115 = load i8*, i8** %tag.addr, align 8
  %call163 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %113, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.112, i32 0, i32 0), i32 %114, i8* %115)
  store i32 0, i32* %j, align 4
  br label %for.cond.164

for.cond.164:                                     ; preds = %for.inc.175, %while.end.162
  %116 = load i32, i32* %j, align 4
  %117 = load i32, i32* %nvalid_bytes, align 4
  %cmp165 = icmp slt i32 %116, %117
  br i1 %cmp165, label %for.body.167, label %for.end.177

for.body.167:                                     ; preds = %for.cond.164
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %119 = load i32, i32* %j, align 4
  %idxprom168 = sext i32 %119 to i64
  %120 = load i8*, i8** %goto_valid, align 8
  %arrayidx169 = getelementptr inbounds i8, i8* %120, i64 %idxprom168
  %121 = load i8, i8* %arrayidx169, align 1
  %conv170 = zext i8 %121 to i32
  %122 = load i32, i32* %j, align 4
  %123 = load i32, i32* %nvalid_bytes, align 4
  %sub171 = sub nsw i32 %123, 1
  %cmp172 = icmp eq i32 %122, %sub171
  %cond = select i1 %cmp172, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0)
  %call174 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.113, i32 0, i32 0), i32 %conv170, i8* %cond)
  br label %for.inc.175

for.inc.175:                                      ; preds = %for.body.167
  %124 = load i32, i32* %j, align 4
  %inc176 = add nsw i32 %124, 1
  store i32 %inc176, i32* %j, align 4
  br label %for.cond.164

for.end.177:                                      ; preds = %for.cond.164
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.181

if.else.179:                                      ; preds = %for.body
  %126 = load %struct.State*, %struct.State** %s, align 8
  %goto_table_offset180 = getelementptr inbounds %struct.State, %struct.State* %126, i32 0, i32 12
  store i32 -2147483647, i32* %goto_table_offset180, align 4
  br label %if.end.181

if.end.181:                                       ; preds = %if.else.179, %for.end.177
  %127 = load %struct.State*, %struct.State** %s, align 8
  %reduce_actions = getelementptr inbounds %struct.State, %struct.State* %127, i32 0, i32 6
  %n182 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %reduce_actions, i32 0, i32 0
  %128 = load i32, i32* %n182, align 4
  %tobool183 = icmp ne i32 %128, 0
  br i1 %tobool183, label %if.then.184, label %if.end.222

if.then.184:                                      ; preds = %if.end.181
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %130 = load i32, i32* %i, align 4
  %131 = load i8*, i8** %tag.addr, align 8
  %call185 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %129, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.114, i32 0, i32 0), i32 %130, i8* %131)
  store i32 0, i32* %j, align 4
  br label %for.cond.186

for.cond.186:                                     ; preds = %for.inc.218, %if.then.184
  %132 = load i32, i32* %j, align 4
  %133 = load %struct.State*, %struct.State** %s, align 8
  %reduce_actions187 = getelementptr inbounds %struct.State, %struct.State* %133, i32 0, i32 6
  %n188 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %reduce_actions187, i32 0, i32 0
  %134 = load i32, i32* %n188, align 4
  %cmp189 = icmp ult i32 %132, %134
  br i1 %cmp189, label %for.body.191, label %for.end.220

for.body.191:                                     ; preds = %for.cond.186
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %136 = load i32, i32* %j, align 4
  %idxprom192 = sext i32 %136 to i64
  %137 = load %struct.State*, %struct.State** %s, align 8
  %reduce_actions193 = getelementptr inbounds %struct.State, %struct.State* %137, i32 0, i32 6
  %v194 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %reduce_actions193, i32 0, i32 2
  %138 = load %struct.Action**, %struct.Action*** %v194, align 8
  %arrayidx195 = getelementptr inbounds %struct.Action*, %struct.Action** %138, i64 %idxprom192
  %139 = load %struct.Action*, %struct.Action** %arrayidx195, align 8
  %rule = getelementptr inbounds %struct.Action, %struct.Action* %139, i32 0, i32 2
  %140 = load %struct.Rule*, %struct.Rule** %rule, align 8
  %same_reduction = getelementptr inbounds %struct.Rule, %struct.Rule* %140, i32 0, i32 12
  %141 = load %struct.Rule*, %struct.Rule** %same_reduction, align 8
  %tobool196 = icmp ne %struct.Rule* %141, null
  br i1 %tobool196, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.191
  %142 = load i32, i32* %j, align 4
  %idxprom197 = sext i32 %142 to i64
  %143 = load %struct.State*, %struct.State** %s, align 8
  %reduce_actions198 = getelementptr inbounds %struct.State, %struct.State* %143, i32 0, i32 6
  %v199 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %reduce_actions198, i32 0, i32 2
  %144 = load %struct.Action**, %struct.Action*** %v199, align 8
  %arrayidx200 = getelementptr inbounds %struct.Action*, %struct.Action** %144, i64 %idxprom197
  %145 = load %struct.Action*, %struct.Action** %arrayidx200, align 8
  %rule201 = getelementptr inbounds %struct.Action, %struct.Action* %145, i32 0, i32 2
  %146 = load %struct.Rule*, %struct.Rule** %rule201, align 8
  %same_reduction202 = getelementptr inbounds %struct.Rule, %struct.Rule* %146, i32 0, i32 12
  %147 = load %struct.Rule*, %struct.Rule** %same_reduction202, align 8
  %index203 = getelementptr inbounds %struct.Rule, %struct.Rule* %147, i32 0, i32 0
  %148 = load i32, i32* %index203, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body.191
  %149 = load i32, i32* %j, align 4
  %idxprom204 = sext i32 %149 to i64
  %150 = load %struct.State*, %struct.State** %s, align 8
  %reduce_actions205 = getelementptr inbounds %struct.State, %struct.State* %150, i32 0, i32 6
  %v206 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %reduce_actions205, i32 0, i32 2
  %151 = load %struct.Action**, %struct.Action*** %v206, align 8
  %arrayidx207 = getelementptr inbounds %struct.Action*, %struct.Action** %151, i64 %idxprom204
  %152 = load %struct.Action*, %struct.Action** %arrayidx207, align 8
  %rule208 = getelementptr inbounds %struct.Action, %struct.Action* %152, i32 0, i32 2
  %153 = load %struct.Rule*, %struct.Rule** %rule208, align 8
  %index209 = getelementptr inbounds %struct.Rule, %struct.Rule* %153, i32 0, i32 0
  %154 = load i32, i32* %index209, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond210 = phi i32 [ %148, %cond.true ], [ %154, %cond.false ]
  %155 = load i8*, i8** %tag.addr, align 8
  %156 = load i32, i32* %j, align 4
  %157 = load %struct.State*, %struct.State** %s, align 8
  %reduce_actions211 = getelementptr inbounds %struct.State, %struct.State* %157, i32 0, i32 6
  %n212 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %reduce_actions211, i32 0, i32 0
  %158 = load i32, i32* %n212, align 4
  %sub213 = sub i32 %158, 1
  %cmp214 = icmp eq i32 %156, %sub213
  %cond216 = select i1 %cmp214, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0)
  %call217 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %135, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.115, i32 0, i32 0), i32 %cond210, i8* %155, i8* %cond216)
  br label %for.inc.218

for.inc.218:                                      ; preds = %cond.end
  %159 = load i32, i32* %j, align 4
  %inc219 = add nsw i32 %159, 1
  store i32 %inc219, i32* %j, align 4
  br label %for.cond.186

for.end.220:                                      ; preds = %for.cond.186
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call221 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %160, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.222

if.end.222:                                       ; preds = %for.end.220, %if.end.181
  %161 = load %struct.State*, %struct.State** %s, align 8
  %right_epsilon_hints = getelementptr inbounds %struct.State, %struct.State* %161, i32 0, i32 7
  %n223 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %right_epsilon_hints, i32 0, i32 0
  %162 = load i32, i32* %n223, align 4
  %tobool224 = icmp ne i32 %162, 0
  br i1 %tobool224, label %if.then.225, label %if.end.278

if.then.225:                                      ; preds = %if.end.222
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %164 = load i32, i32* %i, align 4
  %165 = load i8*, i8** %tag.addr, align 8
  %call226 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %163, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.116, i32 0, i32 0), i32 %164, i8* %165)
  store i32 0, i32* %j, align 4
  br label %for.cond.227

for.cond.227:                                     ; preds = %for.inc.274, %if.then.225
  %166 = load i32, i32* %j, align 4
  %167 = load %struct.State*, %struct.State** %s, align 8
  %right_epsilon_hints228 = getelementptr inbounds %struct.State, %struct.State* %167, i32 0, i32 7
  %n229 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %right_epsilon_hints228, i32 0, i32 0
  %168 = load i32, i32* %n229, align 4
  %cmp230 = icmp ult i32 %166, %168
  br i1 %cmp230, label %for.body.232, label %for.end.276

for.body.232:                                     ; preds = %for.cond.227
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %170 = load i32, i32* %j, align 4
  %idxprom233 = sext i32 %170 to i64
  %171 = load %struct.State*, %struct.State** %s, align 8
  %right_epsilon_hints234 = getelementptr inbounds %struct.State, %struct.State* %171, i32 0, i32 7
  %v235 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %right_epsilon_hints234, i32 0, i32 2
  %172 = load %struct.Hint**, %struct.Hint*** %v235, align 8
  %arrayidx236 = getelementptr inbounds %struct.Hint*, %struct.Hint** %172, i64 %idxprom233
  %173 = load %struct.Hint*, %struct.Hint** %arrayidx236, align 8
  %depth = getelementptr inbounds %struct.Hint, %struct.Hint* %173, i32 0, i32 0
  %174 = load i32, i32* %depth, align 4
  %175 = load i32, i32* %j, align 4
  %idxprom237 = sext i32 %175 to i64
  %176 = load %struct.State*, %struct.State** %s, align 8
  %right_epsilon_hints238 = getelementptr inbounds %struct.State, %struct.State* %176, i32 0, i32 7
  %v239 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %right_epsilon_hints238, i32 0, i32 2
  %177 = load %struct.Hint**, %struct.Hint*** %v239, align 8
  %arrayidx240 = getelementptr inbounds %struct.Hint*, %struct.Hint** %177, i64 %idxprom237
  %178 = load %struct.Hint*, %struct.Hint** %arrayidx240, align 8
  %state241 = getelementptr inbounds %struct.Hint, %struct.Hint* %178, i32 0, i32 1
  %179 = load %struct.State*, %struct.State** %state241, align 8
  %index242 = getelementptr inbounds %struct.State, %struct.State* %179, i32 0, i32 0
  %180 = load i32, i32* %index242, align 4
  %181 = load i32, i32* %j, align 4
  %idxprom243 = sext i32 %181 to i64
  %182 = load %struct.State*, %struct.State** %s, align 8
  %right_epsilon_hints244 = getelementptr inbounds %struct.State, %struct.State* %182, i32 0, i32 7
  %v245 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %right_epsilon_hints244, i32 0, i32 2
  %183 = load %struct.Hint**, %struct.Hint*** %v245, align 8
  %arrayidx246 = getelementptr inbounds %struct.Hint*, %struct.Hint** %183, i64 %idxprom243
  %184 = load %struct.Hint*, %struct.Hint** %arrayidx246, align 8
  %rule247 = getelementptr inbounds %struct.Hint, %struct.Hint* %184, i32 0, i32 2
  %185 = load %struct.Rule*, %struct.Rule** %rule247, align 8
  %same_reduction248 = getelementptr inbounds %struct.Rule, %struct.Rule* %185, i32 0, i32 12
  %186 = load %struct.Rule*, %struct.Rule** %same_reduction248, align 8
  %tobool249 = icmp ne %struct.Rule* %186, null
  br i1 %tobool249, label %cond.true.250, label %cond.false.258

cond.true.250:                                    ; preds = %for.body.232
  %187 = load i32, i32* %j, align 4
  %idxprom251 = sext i32 %187 to i64
  %188 = load %struct.State*, %struct.State** %s, align 8
  %right_epsilon_hints252 = getelementptr inbounds %struct.State, %struct.State* %188, i32 0, i32 7
  %v253 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %right_epsilon_hints252, i32 0, i32 2
  %189 = load %struct.Hint**, %struct.Hint*** %v253, align 8
  %arrayidx254 = getelementptr inbounds %struct.Hint*, %struct.Hint** %189, i64 %idxprom251
  %190 = load %struct.Hint*, %struct.Hint** %arrayidx254, align 8
  %rule255 = getelementptr inbounds %struct.Hint, %struct.Hint* %190, i32 0, i32 2
  %191 = load %struct.Rule*, %struct.Rule** %rule255, align 8
  %same_reduction256 = getelementptr inbounds %struct.Rule, %struct.Rule* %191, i32 0, i32 12
  %192 = load %struct.Rule*, %struct.Rule** %same_reduction256, align 8
  %index257 = getelementptr inbounds %struct.Rule, %struct.Rule* %192, i32 0, i32 0
  %193 = load i32, i32* %index257, align 4
  br label %cond.end.265

cond.false.258:                                   ; preds = %for.body.232
  %194 = load i32, i32* %j, align 4
  %idxprom259 = sext i32 %194 to i64
  %195 = load %struct.State*, %struct.State** %s, align 8
  %right_epsilon_hints260 = getelementptr inbounds %struct.State, %struct.State* %195, i32 0, i32 7
  %v261 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %right_epsilon_hints260, i32 0, i32 2
  %196 = load %struct.Hint**, %struct.Hint*** %v261, align 8
  %arrayidx262 = getelementptr inbounds %struct.Hint*, %struct.Hint** %196, i64 %idxprom259
  %197 = load %struct.Hint*, %struct.Hint** %arrayidx262, align 8
  %rule263 = getelementptr inbounds %struct.Hint, %struct.Hint* %197, i32 0, i32 2
  %198 = load %struct.Rule*, %struct.Rule** %rule263, align 8
  %index264 = getelementptr inbounds %struct.Rule, %struct.Rule* %198, i32 0, i32 0
  %199 = load i32, i32* %index264, align 4
  br label %cond.end.265

cond.end.265:                                     ; preds = %cond.false.258, %cond.true.250
  %cond266 = phi i32 [ %193, %cond.true.250 ], [ %199, %cond.false.258 ]
  %200 = load i8*, i8** %tag.addr, align 8
  %201 = load i32, i32* %j, align 4
  %202 = load %struct.State*, %struct.State** %s, align 8
  %right_epsilon_hints267 = getelementptr inbounds %struct.State, %struct.State* %202, i32 0, i32 7
  %n268 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %right_epsilon_hints267, i32 0, i32 0
  %203 = load i32, i32* %n268, align 4
  %sub269 = sub i32 %203, 1
  %cmp270 = icmp eq i32 %201, %sub269
  %cond272 = select i1 %cmp270, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0)
  %call273 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %169, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.117, i32 0, i32 0), i32 %174, i32 %180, i32 %cond266, i8* %200, i8* %cond272)
  br label %for.inc.274

for.inc.274:                                      ; preds = %cond.end.265
  %204 = load i32, i32* %j, align 4
  %inc275 = add nsw i32 %204, 1
  store i32 %inc275, i32* %j, align 4
  br label %for.cond.227

for.end.276:                                      ; preds = %for.cond.227
  %205 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call277 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %205, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.278

if.end.278:                                       ; preds = %for.end.276, %if.end.222
  br label %for.inc.279

for.inc.279:                                      ; preds = %if.end.278
  %206 = load i32, i32* %i, align 4
  %inc280 = add nsw i32 %206, 1
  store i32 %inc280, i32* %i, align 4
  br label %for.cond

for.end.281:                                      ; preds = %for.cond
  %n282 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %vgoto, i32 0, i32 0
  %207 = load i32, i32* %n282, align 4
  %tobool283 = icmp ne i32 %207, 0
  br i1 %tobool283, label %if.then.284, label %if.else.313

if.then.284:                                      ; preds = %for.end.281
  %208 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %209 = load i8*, i8** %tag.addr, align 8
  %n285 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %vgoto, i32 0, i32 0
  %210 = load i32, i32* %n285, align 4
  %call286 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %208, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.118, i32 0, i32 0), i8* %209, i32 %210)
  store i32 0, i32* %j, align 4
  br label %for.cond.287

for.cond.287:                                     ; preds = %for.inc.309, %if.then.284
  %211 = load i32, i32* %j, align 4
  %n288 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %vgoto, i32 0, i32 0
  %212 = load i32, i32* %n288, align 4
  %cmp289 = icmp ult i32 %211, %212
  br i1 %cmp289, label %for.body.291, label %for.end.311

for.body.291:                                     ; preds = %for.cond.287
  %213 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %214 = load i32, i32* %j, align 4
  %idxprom292 = sext i32 %214 to i64
  %v293 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %vgoto, i32 0, i32 2
  %215 = load i64*, i64** %v293, align 8
  %arrayidx294 = getelementptr inbounds i64, i64* %215, i64 %idxprom292
  %216 = load i64, i64* %arrayidx294, align 8
  %call295 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %213, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i64 %216)
  %217 = load i32, i32* %j, align 4
  %n296 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %vgoto, i32 0, i32 0
  %218 = load i32, i32* %n296, align 4
  %sub297 = sub i32 %218, 1
  %cmp298 = icmp ne i32 %217, %sub297
  br i1 %cmp298, label %if.then.300, label %if.end.302

if.then.300:                                      ; preds = %for.body.291
  %219 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call301 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %219, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i32 0, i32 0))
  br label %if.end.302

if.end.302:                                       ; preds = %if.then.300, %for.body.291
  %220 = load i32, i32* %j, align 4
  %rem303 = srem i32 %220, 16
  %cmp304 = icmp eq i32 %rem303, 15
  br i1 %cmp304, label %if.then.306, label %if.end.308

if.then.306:                                      ; preds = %if.end.302
  %221 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call307 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %221, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.308

if.end.308:                                       ; preds = %if.then.306, %if.end.302
  br label %for.inc.309

for.inc.309:                                      ; preds = %if.end.308
  %222 = load i32, i32* %j, align 4
  %inc310 = add nsw i32 %222, 1
  store i32 %inc310, i32* %j, align 4
  br label %for.cond.287

for.end.311:                                      ; preds = %for.cond.287
  %223 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call312 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %223, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0))
  br label %if.end.315

if.else.313:                                      ; preds = %for.end.281
  %224 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %225 = load i8*, i8** %tag.addr, align 8
  %call314 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %224, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.119, i32 0, i32 0), i8* %225)
  br label %if.end.315

if.end.315:                                       ; preds = %if.else.313, %for.end.311
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_error_data_as_C(%struct._IO_FILE* %fp, %struct.Grammar* %g, %struct.VecState* %er_hash, i8* %tag) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %g.addr = alloca %struct.Grammar*, align 8
  %er_hash.addr = alloca %struct.VecState*, align 8
  %tag.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %s = alloca %struct.State*, align 8
  %t = alloca %struct.Term*, align 8
  %h = alloca %struct.State*, align 8
  %ss = alloca i8*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store %struct.VecState* %er_hash, %struct.VecState** %er_hash.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  %0 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states = getelementptr inbounds %struct.Grammar, %struct.Grammar* %0, i32 0, i32 3
  %n = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states, i32 0, i32 0
  %1 = load i32, i32* %n, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end.53

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.50, %if.then
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states1 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %3, i32 0, i32 3
  %n2 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states1, i32 0, i32 0
  %4 = load i32, i32* %n2, align 4
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end.52

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states3 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %6, i32 0, i32 3
  %v = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states3, i32 0, i32 2
  %7 = load %struct.State**, %struct.State*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.State*, %struct.State** %7, i64 %idxprom
  %8 = load %struct.State*, %struct.State** %arrayidx, align 8
  store %struct.State* %8, %struct.State** %s, align 8
  %9 = load %struct.State*, %struct.State** %s, align 8
  %error_recovery_hints = getelementptr inbounds %struct.State, %struct.State* %9, i32 0, i32 8
  %n4 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %error_recovery_hints, i32 0, i32 0
  %10 = load i32, i32* %n4, align 4
  %tobool5 = icmp ne i32 %10, 0
  br i1 %tobool5, label %if.then.6, label %if.end.49

if.then.6:                                        ; preds = %for.body
  %11 = load %struct.VecState*, %struct.VecState** %er_hash.addr, align 8
  %12 = bitcast %struct.VecState* %11 to i8*
  %13 = load %struct.State*, %struct.State** %s, align 8
  %14 = bitcast %struct.State* %13 to i8*
  %call = call i8* @set_add_fn(i8* %12, i8* %14, %struct.hash_fns_t* bitcast ({ i32 (i8*, %struct.hash_fns_t*)*, i32 (i8*, i8*, %struct.hash_fns_t*)*, [2 x i8*] }* @er_hint_hash_fns to %struct.hash_fns_t*))
  %15 = bitcast i8* %call to %struct.State*
  store %struct.State* %15, %struct.State** %h, align 8
  %16 = load %struct.State*, %struct.State** %h, align 8
  %17 = load %struct.State*, %struct.State** %s, align 8
  %cmp7 = icmp eq %struct.State* %16, %17
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then.6
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %19 = load i32, i32* %i, align 4
  %20 = load i8*, i8** %tag.addr, align 8
  %21 = load %struct.State*, %struct.State** %s, align 8
  %error_recovery_hints9 = getelementptr inbounds %struct.State, %struct.State* %21, i32 0, i32 8
  %n10 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %error_recovery_hints9, i32 0, i32 0
  %22 = load i32, i32* %n10, align 4
  %cmp11 = icmp ugt i32 %22, 1
  %cond = select i1 %cmp11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0)
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.120, i32 0, i32 0), i32 %19, i8* %20, i8* %cond)
  store i32 0, i32* %j, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %if.then.8
  %23 = load i32, i32* %j, align 4
  %24 = load %struct.State*, %struct.State** %s, align 8
  %error_recovery_hints14 = getelementptr inbounds %struct.State, %struct.State* %24, i32 0, i32 8
  %n15 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %error_recovery_hints14, i32 0, i32 0
  %25 = load i32, i32* %n15, align 4
  %cmp16 = icmp ult i32 %23, %25
  br i1 %cmp16, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.13
  %26 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %26 to i64
  %27 = load %struct.State*, %struct.State** %s, align 8
  %error_recovery_hints19 = getelementptr inbounds %struct.State, %struct.State* %27, i32 0, i32 8
  %v20 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %error_recovery_hints19, i32 0, i32 2
  %28 = load %struct.Hint**, %struct.Hint*** %v20, align 8
  %arrayidx21 = getelementptr inbounds %struct.Hint*, %struct.Hint** %28, i64 %idxprom18
  %29 = load %struct.Hint*, %struct.Hint** %arrayidx21, align 8
  %rule = getelementptr inbounds %struct.Hint, %struct.Hint* %29, i32 0, i32 2
  %30 = load %struct.Rule*, %struct.Rule** %rule, align 8
  %elems = getelementptr inbounds %struct.Rule, %struct.Rule* %30, i32 0, i32 6
  %n22 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems, i32 0, i32 0
  %31 = load i32, i32* %n22, align 4
  %sub = sub i32 %31, 1
  %idxprom23 = zext i32 %sub to i64
  %32 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %32 to i64
  %33 = load %struct.State*, %struct.State** %s, align 8
  %error_recovery_hints25 = getelementptr inbounds %struct.State, %struct.State* %33, i32 0, i32 8
  %v26 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %error_recovery_hints25, i32 0, i32 2
  %34 = load %struct.Hint**, %struct.Hint*** %v26, align 8
  %arrayidx27 = getelementptr inbounds %struct.Hint*, %struct.Hint** %34, i64 %idxprom24
  %35 = load %struct.Hint*, %struct.Hint** %arrayidx27, align 8
  %rule28 = getelementptr inbounds %struct.Hint, %struct.Hint* %35, i32 0, i32 2
  %36 = load %struct.Rule*, %struct.Rule** %rule28, align 8
  %elems29 = getelementptr inbounds %struct.Rule, %struct.Rule* %36, i32 0, i32 6
  %v30 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems29, i32 0, i32 2
  %37 = load %struct.Elem**, %struct.Elem*** %v30, align 8
  %arrayidx31 = getelementptr inbounds %struct.Elem*, %struct.Elem** %37, i64 %idxprom23
  %38 = load %struct.Elem*, %struct.Elem** %arrayidx31, align 8
  %e = getelementptr inbounds %struct.Elem, %struct.Elem* %38, i32 0, i32 3
  %term = bitcast %union.anon* %e to %struct.Term**
  %39 = load %struct.Term*, %struct.Term** %term, align 8
  store %struct.Term* %39, %struct.Term** %t, align 8
  %40 = load %struct.Term*, %struct.Term** %t, align 8
  %string = getelementptr inbounds %struct.Term, %struct.Term* %40, i32 0, i32 5
  %41 = load i8*, i8** %string, align 8
  %call32 = call i8* @escape_string(i8* %41)
  store i8* %call32, i8** %ss, align 8
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %43 = load i32, i32* %j, align 4
  %idxprom33 = sext i32 %43 to i64
  %44 = load %struct.State*, %struct.State** %s, align 8
  %error_recovery_hints34 = getelementptr inbounds %struct.State, %struct.State* %44, i32 0, i32 8
  %v35 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %error_recovery_hints34, i32 0, i32 2
  %45 = load %struct.Hint**, %struct.Hint*** %v35, align 8
  %arrayidx36 = getelementptr inbounds %struct.Hint*, %struct.Hint** %45, i64 %idxprom33
  %46 = load %struct.Hint*, %struct.Hint** %arrayidx36, align 8
  %depth = getelementptr inbounds %struct.Hint, %struct.Hint* %46, i32 0, i32 0
  %47 = load i32, i32* %depth, align 4
  %48 = load i32, i32* %j, align 4
  %idxprom37 = sext i32 %48 to i64
  %49 = load %struct.State*, %struct.State** %s, align 8
  %error_recovery_hints38 = getelementptr inbounds %struct.State, %struct.State* %49, i32 0, i32 8
  %v39 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %error_recovery_hints38, i32 0, i32 2
  %50 = load %struct.Hint**, %struct.Hint*** %v39, align 8
  %arrayidx40 = getelementptr inbounds %struct.Hint*, %struct.Hint** %50, i64 %idxprom37
  %51 = load %struct.Hint*, %struct.Hint** %arrayidx40, align 8
  %rule41 = getelementptr inbounds %struct.Hint, %struct.Hint* %51, i32 0, i32 2
  %52 = load %struct.Rule*, %struct.Rule** %rule41, align 8
  %prod = getelementptr inbounds %struct.Rule, %struct.Rule* %52, i32 0, i32 1
  %53 = load %struct.Production*, %struct.Production** %prod, align 8
  %index = getelementptr inbounds %struct.Production, %struct.Production* %53, i32 0, i32 3
  %54 = load i32, i32* %index, align 4
  %55 = load i8*, i8** %ss, align 8
  %56 = load i32, i32* %j, align 4
  %57 = load %struct.State*, %struct.State** %s, align 8
  %error_recovery_hints42 = getelementptr inbounds %struct.State, %struct.State* %57, i32 0, i32 8
  %n43 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %error_recovery_hints42, i32 0, i32 0
  %58 = load i32, i32* %n43, align 4
  %sub44 = sub i32 %58, 1
  %cmp45 = icmp eq i32 %56, %sub44
  %cond46 = select i1 %cmp45, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i32 0, i32 0)
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.121, i32 0, i32 0), i32 %47, i32 %54, i8* %55, i8* %cond46)
  %59 = load i8*, i8** %ss, align 8
  call void @free(i8* %59) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body.17
  %60 = load i32, i32* %j, align 4
  %inc = add nsw i32 %60, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.13

for.end:                                          ; preds = %for.cond.13
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then.6
  br label %if.end.49

if.end.49:                                        ; preds = %if.end, %for.body
  br label %for.inc.50

for.inc.50:                                       ; preds = %if.end.49
  %62 = load i32, i32* %i, align 4
  %inc51 = add nsw i32 %62, 1
  store i32 %inc51, i32* %i, align 4
  br label %for.cond

for.end.52:                                       ; preds = %for.cond
  br label %if.end.53

if.end.53:                                        ; preds = %for.end.52, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_state_data_as_C(%struct._IO_FILE* %fp, %struct.Grammar* %g, %struct.VecState* %er_hash, i8* %tag) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %g.addr = alloca %struct.Grammar*, align 8
  %er_hash.addr = alloca %struct.VecState*, align 8
  %tag.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %s = alloca %struct.State*, align 8
  %h = alloca %struct.State*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store %struct.VecState* %er_hash, %struct.VecState** %er_hash.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %1 = load i8*, i8** %tag.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.122, i32 0, i32 0), i8* %1)
  %2 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states = getelementptr inbounds %struct.Grammar, %struct.Grammar* %2, i32 0, i32 3
  %n = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states, i32 0, i32 0
  %3 = load i32, i32* %n, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else.185

if.then:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states2 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %6, i32 0, i32 3
  %n3 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states2, i32 0, i32 0
  %7 = load i32, i32* %n3, align 4
  %cmp = icmp ult i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states4 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %9, i32 0, i32 3
  %v = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states4, i32 0, i32 2
  %10 = load %struct.State**, %struct.State*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.State*, %struct.State** %10, i64 %idxprom
  %11 = load %struct.State*, %struct.State** %arrayidx, align 8
  store %struct.State* %11, %struct.State** %s, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.123, i32 0, i32 0))
  %13 = load %struct.State*, %struct.State** %s, align 8
  %gotos = getelementptr inbounds %struct.State, %struct.State* %13, i32 0, i32 4
  %n6 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos, i32 0, i32 0
  %14 = load i32, i32* %n6, align 4
  %tobool7 = icmp ne i32 %14, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %for.body
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %16 = load i32, i32* %i, align 4
  %17 = load i8*, i8** %tag.addr, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.124, i32 0, i32 0), i32 %16, i8* %17)
  br label %if.end

if.else:                                          ; preds = %for.body
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %20 = load %struct.State*, %struct.State** %s, align 8
  %goto_table_offset = getelementptr inbounds %struct.State, %struct.State* %20, i32 0, i32 12
  %21 = load i32, i32* %goto_table_offset, align 4
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %21)
  %22 = load %struct.State*, %struct.State** %s, align 8
  %reduce_actions = getelementptr inbounds %struct.State, %struct.State* %22, i32 0, i32 6
  %n12 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %reduce_actions, i32 0, i32 0
  %23 = load i32, i32* %n12, align 4
  %tobool13 = icmp ne i32 %23, 0
  br i1 %tobool13, label %if.then.14, label %if.else.18

if.then.14:                                       ; preds = %if.end
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %25 = load %struct.State*, %struct.State** %s, align 8
  %reduce_actions15 = getelementptr inbounds %struct.State, %struct.State* %25, i32 0, i32 6
  %n16 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %reduce_actions15, i32 0, i32 0
  %26 = load i32, i32* %n16, align 4
  %27 = load i32, i32* %i, align 4
  %28 = load i8*, i8** %tag.addr, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.125, i32 0, i32 0), i32 %26, i32 %27, i8* %28)
  br label %if.end.20

if.else.18:                                       ; preds = %if.end
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.126, i32 0, i32 0))
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.18, %if.then.14
  %30 = load %struct.State*, %struct.State** %s, align 8
  %right_epsilon_hints = getelementptr inbounds %struct.State, %struct.State* %30, i32 0, i32 7
  %n21 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %right_epsilon_hints, i32 0, i32 0
  %31 = load i32, i32* %n21, align 4
  %tobool22 = icmp ne i32 %31, 0
  br i1 %tobool22, label %if.then.23, label %if.else.27

if.then.23:                                       ; preds = %if.end.20
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %33 = load %struct.State*, %struct.State** %s, align 8
  %right_epsilon_hints24 = getelementptr inbounds %struct.State, %struct.State* %33, i32 0, i32 7
  %n25 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %right_epsilon_hints24, i32 0, i32 0
  %34 = load i32, i32* %n25, align 4
  %35 = load i32, i32* %i, align 4
  %36 = load i8*, i8** %tag.addr, align 8
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.127, i32 0, i32 0), i32 %34, i32 %35, i8* %36)
  br label %if.end.29

if.else.27:                                       ; preds = %if.end.20
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.126, i32 0, i32 0))
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.27, %if.then.23
  %38 = load %struct.State*, %struct.State** %s, align 8
  %error_recovery_hints = getelementptr inbounds %struct.State, %struct.State* %38, i32 0, i32 8
  %n30 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %error_recovery_hints, i32 0, i32 0
  %39 = load i32, i32* %n30, align 4
  %tobool31 = icmp ne i32 %39, 0
  br i1 %tobool31, label %if.then.32, label %if.else.37

if.then.32:                                       ; preds = %if.end.29
  %40 = load %struct.VecState*, %struct.VecState** %er_hash.addr, align 8
  %41 = bitcast %struct.VecState* %40 to i8*
  %42 = load %struct.State*, %struct.State** %s, align 8
  %43 = bitcast %struct.State* %42 to i8*
  %call33 = call i8* @set_add_fn(i8* %41, i8* %43, %struct.hash_fns_t* bitcast ({ i32 (i8*, %struct.hash_fns_t*)*, i32 (i8*, i8*, %struct.hash_fns_t*)*, [2 x i8*] }* @er_hint_hash_fns to %struct.hash_fns_t*))
  %44 = bitcast i8* %call33 to %struct.State*
  store %struct.State* %44, %struct.State** %h, align 8
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %46 = load %struct.State*, %struct.State** %s, align 8
  %error_recovery_hints34 = getelementptr inbounds %struct.State, %struct.State* %46, i32 0, i32 8
  %n35 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %error_recovery_hints34, i32 0, i32 0
  %47 = load i32, i32* %n35, align 4
  %48 = load %struct.State*, %struct.State** %h, align 8
  %index = getelementptr inbounds %struct.State, %struct.State* %48, i32 0, i32 0
  %49 = load i32, i32* %index, align 4
  %50 = load i8*, i8** %tag.addr, align 8
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.128, i32 0, i32 0), i32 %47, i32 %49, i8* %50)
  br label %if.end.39

if.else.37:                                       ; preds = %if.end.29
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.126, i32 0, i32 0))
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.37, %if.then.32
  %52 = load %struct.State*, %struct.State** %s, align 8
  %shift_actions = getelementptr inbounds %struct.State, %struct.State* %52, i32 0, i32 5
  %n40 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions, i32 0, i32 0
  %53 = load i32, i32* %n40, align 4
  %tobool41 = icmp ne i32 %53, 0
  br i1 %tobool41, label %if.then.42, label %if.else.47

if.then.42:                                       ; preds = %if.end.39
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %55 = load %struct.State*, %struct.State** %s, align 8
  %same_shifts = getelementptr inbounds %struct.State, %struct.State* %55, i32 0, i32 13
  %56 = load %struct.State*, %struct.State** %same_shifts, align 8
  %tobool43 = icmp ne %struct.State* %56, null
  br i1 %tobool43, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.42
  %57 = load %struct.State*, %struct.State** %s, align 8
  %same_shifts44 = getelementptr inbounds %struct.State, %struct.State* %57, i32 0, i32 13
  %58 = load %struct.State*, %struct.State** %same_shifts44, align 8
  %index45 = getelementptr inbounds %struct.State, %struct.State* %58, i32 0, i32 0
  %59 = load i32, i32* %index45, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.42
  %60 = load i32, i32* %i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %59, %cond.true ], [ %60, %cond.false ]
  %61 = load i8*, i8** %tag.addr, align 8
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.129, i32 0, i32 0), i32 %cond, i8* %61)
  br label %if.end.60

if.else.47:                                       ; preds = %if.end.39
  %62 = load %struct.State*, %struct.State** %s, align 8
  %scanner_code = getelementptr inbounds %struct.State, %struct.State* %62, i32 0, i32 10
  %bf.load = load i8, i8* %scanner_code, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool48 = icmp ne i32 %bf.cast, 0
  br i1 %tobool48, label %if.then.55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.47
  %63 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %scanner = getelementptr inbounds %struct.Grammar, %struct.Grammar* %63, i32 0, i32 4
  %code = getelementptr inbounds %struct.Code, %struct.Code* %scanner, i32 0, i32 0
  %64 = load i8*, i8** %code, align 8
  %tobool49 = icmp ne i8* %64, null
  br i1 %tobool49, label %land.lhs.true, label %if.else.57

land.lhs.true:                                    ; preds = %lor.lhs.false
  %65 = load %struct.State*, %struct.State** %s, align 8
  %goto_on_token = getelementptr inbounds %struct.State, %struct.State* %65, i32 0, i32 10
  %bf.load50 = load i8, i8* %goto_on_token, align 8
  %bf.lshr51 = lshr i8 %bf.load50, 2
  %bf.clear52 = and i8 %bf.lshr51, 1
  %bf.cast53 = zext i8 %bf.clear52 to i32
  %tobool54 = icmp ne i32 %bf.cast53, 0
  br i1 %tobool54, label %if.then.55, label %if.else.57

if.then.55:                                       ; preds = %land.lhs.true, %if.else.47
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.130, i32 0, i32 0))
  br label %if.end.59

if.else.57:                                       ; preds = %land.lhs.true, %lor.lhs.false
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.57, %if.then.55
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %cond.end
  %68 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %scanner61 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %68, i32 0, i32 4
  %code62 = getelementptr inbounds %struct.Code, %struct.Code* %scanner61, i32 0, i32 0
  %69 = load i8*, i8** %code62, align 8
  %tobool63 = icmp ne i8* %69, null
  br i1 %tobool63, label %if.then.64, label %if.else.78

if.then.64:                                       ; preds = %if.end.60
  %70 = load %struct.State*, %struct.State** %s, align 8
  %goto_on_token65 = getelementptr inbounds %struct.State, %struct.State* %70, i32 0, i32 10
  %bf.load66 = load i8, i8* %goto_on_token65, align 8
  %bf.lshr67 = lshr i8 %bf.load66, 2
  %bf.clear68 = and i8 %bf.lshr67, 1
  %bf.cast69 = zext i8 %bf.clear68 to i32
  %tobool70 = icmp ne i32 %bf.cast69, 0
  br i1 %tobool70, label %if.then.71, label %if.else.75

if.then.71:                                       ; preds = %if.then.64
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %72 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %scanner72 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %72, i32 0, i32 4
  %code73 = getelementptr inbounds %struct.Code, %struct.Code* %scanner72, i32 0, i32 0
  %73 = load i8*, i8** %code73, align 8
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* %73)
  br label %if.end.77

if.else.75:                                       ; preds = %if.then.64
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.75, %if.then.71
  br label %if.end.90

if.else.78:                                       ; preds = %if.end.60
  %75 = load %struct.State*, %struct.State** %s, align 8
  %scanner_code79 = getelementptr inbounds %struct.State, %struct.State* %75, i32 0, i32 10
  %bf.load80 = load i8, i8* %scanner_code79, align 8
  %bf.lshr81 = lshr i8 %bf.load80, 1
  %bf.clear82 = and i8 %bf.lshr81, 1
  %bf.cast83 = zext i8 %bf.clear82 to i32
  %tobool84 = icmp ne i32 %bf.cast83, 0
  br i1 %tobool84, label %if.then.85, label %if.else.87

if.then.85:                                       ; preds = %if.else.78
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %77 = load i32, i32* %i, align 4
  %78 = load i8*, i8** %tag.addr, align 8
  %call86 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.131, i32 0, i32 0), i32 %77, i8* %78)
  br label %if.end.89

if.else.87:                                       ; preds = %if.else.78
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.87, %if.then.85
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.end.77
  %80 = load %struct.State*, %struct.State** %s, align 8
  %scanner91 = getelementptr inbounds %struct.State, %struct.State* %80, i32 0, i32 9
  %states92 = getelementptr inbounds %struct.Scanner, %struct.Scanner* %scanner91, i32 0, i32 0
  %n93 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %states92, i32 0, i32 0
  %81 = load i32, i32* %n93, align 4
  %tobool94 = icmp ne i32 %81, 0
  br i1 %tobool94, label %if.then.95, label %if.else.105

if.then.95:                                       ; preds = %if.end.90
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %83 = load %struct.State*, %struct.State** %s, align 8
  %same_shifts96 = getelementptr inbounds %struct.State, %struct.State* %83, i32 0, i32 13
  %84 = load %struct.State*, %struct.State** %same_shifts96, align 8
  %tobool97 = icmp ne %struct.State* %84, null
  br i1 %tobool97, label %cond.true.98, label %cond.false.101

cond.true.98:                                     ; preds = %if.then.95
  %85 = load %struct.State*, %struct.State** %s, align 8
  %same_shifts99 = getelementptr inbounds %struct.State, %struct.State* %85, i32 0, i32 13
  %86 = load %struct.State*, %struct.State** %same_shifts99, align 8
  %index100 = getelementptr inbounds %struct.State, %struct.State* %86, i32 0, i32 0
  %87 = load i32, i32* %index100, align 4
  br label %cond.end.102

cond.false.101:                                   ; preds = %if.then.95
  %88 = load i32, i32* %i, align 4
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.false.101, %cond.true.98
  %cond103 = phi i32 [ %87, %cond.true.98 ], [ %88, %cond.false.101 ]
  %89 = load i8*, i8** %tag.addr, align 8
  %call104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.132, i32 0, i32 0), i32 %cond103, i8* %89)
  br label %if.end.107

if.else.105:                                      ; preds = %if.end.90
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call106 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.105, %cond.end.102
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %92 = load %struct.State*, %struct.State** %s, align 8
  %call108 = call i8* @scanner_type(%struct.State* %92)
  %call109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.133, i32 0, i32 0), i8* %call108)
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %94 = load %struct.State*, %struct.State** %s, align 8
  %accept = getelementptr inbounds %struct.State, %struct.State* %94, i32 0, i32 10
  %bf.load110 = load i8, i8* %accept, align 8
  %bf.clear111 = and i8 %bf.load110, 1
  %bf.cast112 = zext i8 %bf.clear111 to i32
  %tobool113 = icmp ne i32 %bf.cast112, 0
  %cond114 = select i1 %tobool113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.135, i32 0, i32 0)
  %call115 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %93, i8* %cond114)
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %96 = load %struct.State*, %struct.State** %s, align 8
  %scan_kind = getelementptr inbounds %struct.State, %struct.State* %96, i32 0, i32 10
  %bf.load116 = load i8, i8* %scan_kind, align 8
  %bf.lshr117 = lshr i8 %bf.load116, 3
  %bf.clear118 = and i8 %bf.lshr117, 3
  %bf.cast119 = zext i8 %bf.clear118 to i32
  %idxprom120 = zext i32 %bf.cast119 to i64
  %arrayidx121 = getelementptr inbounds [4 x i8*], [4 x i8*]* @scan_kind_strings, i32 0, i64 %idxprom120
  %97 = load i8*, i8** %arrayidx121, align 8
  %call122 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* %97)
  %98 = load %struct.State*, %struct.State** %s, align 8
  %scan_kind123 = getelementptr inbounds %struct.State, %struct.State* %98, i32 0, i32 10
  %bf.load124 = load i8, i8* %scan_kind123, align 8
  %bf.lshr125 = lshr i8 %bf.load124, 3
  %bf.clear126 = and i8 %bf.lshr125, 3
  %bf.cast127 = zext i8 %bf.clear126 to i32
  %cmp128 = icmp ne i32 %bf.cast127, 1
  br i1 %cmp128, label %land.lhs.true.129, label %if.else.144

land.lhs.true.129:                                ; preds = %if.end.107
  %99 = load %struct.State*, %struct.State** %s, align 8
  %scanner130 = getelementptr inbounds %struct.State, %struct.State* %99, i32 0, i32 9
  %states131 = getelementptr inbounds %struct.Scanner, %struct.Scanner* %scanner130, i32 0, i32 0
  %n132 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %states131, i32 0, i32 0
  %100 = load i32, i32* %n132, align 4
  %tobool133 = icmp ne i32 %100, 0
  br i1 %tobool133, label %if.then.134, label %if.else.144

if.then.134:                                      ; preds = %land.lhs.true.129
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %102 = load %struct.State*, %struct.State** %s, align 8
  %same_shifts135 = getelementptr inbounds %struct.State, %struct.State* %102, i32 0, i32 13
  %103 = load %struct.State*, %struct.State** %same_shifts135, align 8
  %tobool136 = icmp ne %struct.State* %103, null
  br i1 %tobool136, label %cond.true.137, label %cond.false.140

cond.true.137:                                    ; preds = %if.then.134
  %104 = load %struct.State*, %struct.State** %s, align 8
  %same_shifts138 = getelementptr inbounds %struct.State, %struct.State* %104, i32 0, i32 13
  %105 = load %struct.State*, %struct.State** %same_shifts138, align 8
  %index139 = getelementptr inbounds %struct.State, %struct.State* %105, i32 0, i32 0
  %106 = load i32, i32* %index139, align 4
  br label %cond.end.141

cond.false.140:                                   ; preds = %if.then.134
  %107 = load i32, i32* %i, align 4
  br label %cond.end.141

cond.end.141:                                     ; preds = %cond.false.140, %cond.true.137
  %cond142 = phi i32 [ %106, %cond.true.137 ], [ %107, %cond.false.140 ]
  %108 = load i8*, i8** %tag.addr, align 8
  %call143 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %101, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.136, i32 0, i32 0), i32 %cond142, i8* %108)
  br label %if.end.146

if.else.144:                                      ; preds = %land.lhs.true.129, %if.end.107
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call145 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.146

if.end.146:                                       ; preds = %if.else.144, %cond.end.141
  %110 = load %struct.State*, %struct.State** %s, align 8
  %scan_kind147 = getelementptr inbounds %struct.State, %struct.State* %110, i32 0, i32 10
  %bf.load148 = load i8, i8* %scan_kind147, align 8
  %bf.lshr149 = lshr i8 %bf.load148, 3
  %bf.clear150 = and i8 %bf.lshr149, 3
  %bf.cast151 = zext i8 %bf.clear150 to i32
  %cmp152 = icmp ne i32 %bf.cast151, 1
  br i1 %cmp152, label %land.lhs.true.153, label %if.else.168

land.lhs.true.153:                                ; preds = %if.end.146
  %111 = load %struct.State*, %struct.State** %s, align 8
  %scanner154 = getelementptr inbounds %struct.State, %struct.State* %111, i32 0, i32 9
  %states155 = getelementptr inbounds %struct.Scanner, %struct.Scanner* %scanner154, i32 0, i32 0
  %n156 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %states155, i32 0, i32 0
  %112 = load i32, i32* %n156, align 4
  %tobool157 = icmp ne i32 %112, 0
  br i1 %tobool157, label %if.then.158, label %if.else.168

if.then.158:                                      ; preds = %land.lhs.true.153
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %114 = load %struct.State*, %struct.State** %s, align 8
  %same_shifts159 = getelementptr inbounds %struct.State, %struct.State* %114, i32 0, i32 13
  %115 = load %struct.State*, %struct.State** %same_shifts159, align 8
  %tobool160 = icmp ne %struct.State* %115, null
  br i1 %tobool160, label %cond.true.161, label %cond.false.164

cond.true.161:                                    ; preds = %if.then.158
  %116 = load %struct.State*, %struct.State** %s, align 8
  %same_shifts162 = getelementptr inbounds %struct.State, %struct.State* %116, i32 0, i32 13
  %117 = load %struct.State*, %struct.State** %same_shifts162, align 8
  %index163 = getelementptr inbounds %struct.State, %struct.State* %117, i32 0, i32 0
  %118 = load i32, i32* %index163, align 4
  br label %cond.end.165

cond.false.164:                                   ; preds = %if.then.158
  %119 = load i32, i32* %i, align 4
  br label %cond.end.165

cond.end.165:                                     ; preds = %cond.false.164, %cond.true.161
  %cond166 = phi i32 [ %118, %cond.true.161 ], [ %119, %cond.false.164 ]
  %120 = load i8*, i8** %tag.addr, align 8
  %call167 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %113, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.137, i32 0, i32 0), i32 %cond166, i8* %120)
  br label %if.end.170

if.else.168:                                      ; preds = %land.lhs.true.153, %if.end.146
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call169 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %121, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.138, i32 0, i32 0))
  br label %if.end.170

if.end.170:                                       ; preds = %if.else.168, %cond.end.165
  %122 = load %struct.State*, %struct.State** %s, align 8
  %reduces_to = getelementptr inbounds %struct.State, %struct.State* %122, i32 0, i32 14
  %123 = load %struct.State*, %struct.State** %reduces_to, align 8
  %tobool171 = icmp ne %struct.State* %123, null
  br i1 %tobool171, label %if.then.172, label %if.else.176

if.then.172:                                      ; preds = %if.end.170
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %125 = load %struct.State*, %struct.State** %s, align 8
  %reduces_to173 = getelementptr inbounds %struct.State, %struct.State* %125, i32 0, i32 14
  %126 = load %struct.State*, %struct.State** %reduces_to173, align 8
  %index174 = getelementptr inbounds %struct.State, %struct.State* %126, i32 0, i32 0
  %127 = load i32, i32* %index174, align 4
  %call175 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i32 %127)
  br label %if.end.178

if.else.176:                                      ; preds = %if.end.170
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call177 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.139, i32 0, i32 0))
  br label %if.end.178

if.end.178:                                       ; preds = %if.else.176, %if.then.172
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %130 = load i32, i32* %i, align 4
  %131 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states179 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %131, i32 0, i32 3
  %n180 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states179, i32 0, i32 0
  %132 = load i32, i32* %n180, align 4
  %sub = sub i32 %132, 1
  %cmp181 = icmp eq i32 %130, %sub
  %cond182 = select i1 %cmp181, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i32 0, i32 0)
  %call183 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %129, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.140, i32 0, i32 0), i8* %cond182)
  br label %for.inc

for.inc:                                          ; preds = %if.end.178
  %133 = load i32, i32* %i, align 4
  %inc = add nsw i32 %133, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call184 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %134, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0))
  br label %if.end.187

if.else.185:                                      ; preds = %entry
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call186 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %135, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.141, i32 0, i32 0))
  br label %if.end.187

if.end.187:                                       ; preds = %if.else.185, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_symbol_data_as_C(%struct._IO_FILE* %fp, %struct.Grammar* %g, i8* %tag) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %g.addr = alloca %struct.Grammar*, align 8
  %tag.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %s = alloca i8*, align 8
  %ss = alloca i8*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %1 = load i8*, i8** %tag.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.145, i32 0, i32 0), i8* %1)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions = getelementptr inbounds %struct.Grammar, %struct.Grammar* %3, i32 0, i32 1
  %n = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions, i32 0, i32 0
  %4 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions1 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %7, i32 0, i32 1
  %v = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions1, i32 0, i32 2
  %8 = load %struct.Production**, %struct.Production*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.Production*, %struct.Production** %8, i64 %idxprom
  %9 = load %struct.Production*, %struct.Production** %arrayidx, align 8
  %internal = getelementptr inbounds %struct.Production, %struct.Production* %9, i32 0, i32 4
  %bf.load = load i8, i8* %internal, align 4
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 7
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %idxprom2 = sext i32 %cond to i64
  %arrayidx3 = getelementptr inbounds [2 x i8*], [2 x i8*]* @d_internal, i32 0, i64 %idxprom2
  %10 = load i8*, i8** %arrayidx3, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %11 to i64
  %12 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions5 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %12, i32 0, i32 1
  %v6 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions5, i32 0, i32 2
  %13 = load %struct.Production**, %struct.Production*** %v6, align 8
  %arrayidx7 = getelementptr inbounds %struct.Production*, %struct.Production** %13, i64 %idxprom4
  %14 = load %struct.Production*, %struct.Production** %arrayidx7, align 8
  %name = getelementptr inbounds %struct.Production, %struct.Production* %14, i32 0, i32 0
  %15 = load i8*, i8** %name, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %16 to i64
  %17 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions9 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %17, i32 0, i32 1
  %v10 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions9, i32 0, i32 2
  %18 = load %struct.Production**, %struct.Production*** %v10, align 8
  %arrayidx11 = getelementptr inbounds %struct.Production*, %struct.Production** %18, i64 %idxprom8
  %19 = load %struct.Production*, %struct.Production** %arrayidx11, align 8
  %name_len = getelementptr inbounds %struct.Production, %struct.Production* %19, i32 0, i32 1
  %20 = load i32, i32* %name_len, align 4
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.146, i32 0, i32 0), i8* %10, i8* %15, i32 %20)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.31, %for.end
  %22 = load i32, i32* %i, align 4
  %23 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals = getelementptr inbounds %struct.Grammar, %struct.Grammar* %23, i32 0, i32 2
  %n14 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals, i32 0, i32 0
  %24 = load i32, i32* %n14, align 4
  %cmp15 = icmp ult i32 %22, %24
  br i1 %cmp15, label %for.body.16, label %for.end.33

for.body.16:                                      ; preds = %for.cond.13
  %25 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %25 to i64
  %26 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals18 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %26, i32 0, i32 2
  %v19 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals18, i32 0, i32 2
  %27 = load %struct.Term**, %struct.Term*** %v19, align 8
  %arrayidx20 = getelementptr inbounds %struct.Term*, %struct.Term** %27, i64 %idxprom17
  %28 = load %struct.Term*, %struct.Term** %arrayidx20, align 8
  %string = getelementptr inbounds %struct.Term, %struct.Term* %28, i32 0, i32 5
  %29 = load i8*, i8** %string, align 8
  %call21 = call i8* @escape_string(i8* %29)
  store i8* %call21, i8** %s, align 8
  %30 = load i8*, i8** %s, align 8
  %call22 = call i8* @escape_string(i8* %30)
  store i8* %call22, i8** %ss, align 8
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %32 to i64
  %33 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals24 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %33, i32 0, i32 2
  %v25 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals24, i32 0, i32 2
  %34 = load %struct.Term**, %struct.Term*** %v25, align 8
  %arrayidx26 = getelementptr inbounds %struct.Term*, %struct.Term** %34, i64 %idxprom23
  %35 = load %struct.Term*, %struct.Term** %arrayidx26, align 8
  %kind = getelementptr inbounds %struct.Term, %struct.Term* %35, i32 0, i32 0
  %36 = load i32, i32* %kind, align 4
  %idxprom27 = zext i32 %36 to i64
  %arrayidx28 = getelementptr inbounds [4 x i8*], [4 x i8*]* @d_symbol, i32 0, i64 %idxprom27
  %37 = load i8*, i8** %arrayidx28, align 8
  %38 = load i8*, i8** %ss, align 8
  %39 = load i8*, i8** %ss, align 8
  %call29 = call i64 @strlen(i8* %39) #6
  %conv = trunc i64 %call29 to i32
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.146, i32 0, i32 0), i8* %37, i8* %38, i32 %conv)
  %40 = load i8*, i8** %s, align 8
  call void @free(i8* %40) #5
  %41 = load i8*, i8** %ss, align 8
  call void @free(i8* %41) #5
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.body.16
  %42 = load i32, i32* %i, align 4
  %inc32 = add nsw i32 %42, 1
  store i32 %inc32, i32* %i, align 4
  br label %for.cond.13

for.end.33:                                       ; preds = %for.cond.13
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_passes_as_C(%struct._IO_FILE* %fp, %struct.Grammar* %g, i8* %tag) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %g.addr = alloca %struct.Grammar*, align 8
  %tag.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %p = alloca %struct.D_Pass*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  %0 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %passes = getelementptr inbounds %struct.Grammar, %struct.Grammar* %0, i32 0, i32 8
  %n = getelementptr inbounds %struct.anon.8, %struct.anon.8* %passes, i32 0, i32 0
  %1 = load i32, i32* %n, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %3 = load i8*, i8** %tag.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.153, i32 0, i32 0), i8* %3)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %passes1 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %5, i32 0, i32 8
  %n2 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %passes1, i32 0, i32 0
  %6 = load i32, i32* %n2, align 4
  %cmp = icmp ult i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %passes3 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %8, i32 0, i32 8
  %v = getelementptr inbounds %struct.anon.8, %struct.anon.8* %passes3, i32 0, i32 2
  %9 = load %struct.D_Pass**, %struct.D_Pass*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.D_Pass*, %struct.D_Pass** %9, i64 %idxprom
  %10 = load %struct.D_Pass*, %struct.D_Pass** %arrayidx, align 8
  store %struct.D_Pass* %10, %struct.D_Pass** %p, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %12 = load %struct.D_Pass*, %struct.D_Pass** %p, align 8
  %name = getelementptr inbounds %struct.D_Pass, %struct.D_Pass* %12, i32 0, i32 0
  %13 = load i8*, i8** %name, align 8
  %14 = load %struct.D_Pass*, %struct.D_Pass** %p, align 8
  %name_len = getelementptr inbounds %struct.D_Pass, %struct.D_Pass* %14, i32 0, i32 1
  %15 = load i32, i32* %name_len, align 4
  %16 = load %struct.D_Pass*, %struct.D_Pass** %p, align 8
  %kind = getelementptr inbounds %struct.D_Pass, %struct.D_Pass* %16, i32 0, i32 2
  %17 = load i32, i32* %kind, align 4
  %18 = load %struct.D_Pass*, %struct.D_Pass** %p, align 8
  %index = getelementptr inbounds %struct.D_Pass, %struct.D_Pass* %18, i32 0, i32 3
  %19 = load i32, i32* %index, align 4
  %20 = load i32, i32* %i, align 4
  %21 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %passes4 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %21, i32 0, i32 8
  %n5 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %passes4, i32 0, i32 0
  %22 = load i32, i32* %n5, align 4
  %sub = sub i32 %22, 1
  %cmp6 = icmp ult i32 %20, %sub
  %cond = select i1 %cmp6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0)
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.154, i32 0, i32 0), i8* %13, i32 %15, i32 %17, i32 %19, i8* %cond)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  ret void
}

declare %struct.Production* @lookup_production(%struct.Grammar*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @write_ctables(%struct.Grammar* %g) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  %0 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %scanner_blocks = getelementptr inbounds %struct.Grammar, %struct.Grammar* %0, i32 0, i32 18
  %1 = load i32, i32* %scanner_blocks, align 4
  %div = sdiv i32 256, %1
  %2 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %scanner_block_size = getelementptr inbounds %struct.Grammar, %struct.Grammar* %2, i32 0, i32 19
  store i32 %div, i32* %scanner_block_size, align 4
  %3 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %4 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %pathname = getelementptr inbounds %struct.Grammar, %struct.Grammar* %4, i32 0, i32 0
  %5 = load i8*, i8** %pathname, align 8
  %6 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %grammar_ident = getelementptr inbounds %struct.Grammar, %struct.Grammar* %6, i32 0, i32 17
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %grammar_ident, i32 0, i32 0
  %7 = load i8, i8* %arraydecay, align 1
  %conv = sext i8 %7 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %grammar_ident1 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %8, i32 0, i32 17
  %arraydecay2 = getelementptr inbounds [256 x i8], [256 x i8]* %grammar_ident1, i32 0, i32 0
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %arraydecay2, %cond.true ], [ null, %cond.false ]
  call void @write_parser_tables_as_C(%struct.Grammar* %3, i8* %5, i8* %cond)
  ret i32 0
}

declare i32 @strhashl(i8*, i32) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare i32 @state_for_declaration(%struct.Grammar*, i32) #2

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i8* @mybasename(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %base = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i8* @strrchr(i8* %0, i32 47) #6
  store i8* %call, i8** %base, align 8
  %1 = load i8*, i8** %base, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i8*, i8** %base, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i8*, i8** %str.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %3, %cond.false ]
  ret i8* %cond
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind readonly
declare i32 @strncasecmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @find_symbol(%struct.Grammar* %g, i8* %s, i8* %e, i32 %kind) #0 {
entry:
  %retval = alloca i32, align 4
  %g.addr = alloca %struct.Grammar*, align 8
  %s.addr = alloca i8*, align 8
  %e.addr = alloca i8*, align 8
  %kind.addr = alloca i32, align 4
  %p = alloca %struct.Production*, align 8
  %i = alloca i32, align 4
  %found = alloca i32, align 4
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %e, i8** %e.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv1 = sext i8 %3 to i32
  %idxprom = sext i32 %conv1 to i64
  %call = call i16** @__ctype_b_loc() #7
  %4 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 %idxprom
  %5 = load i16, i16* %arrayidx, align 2
  %conv2 = zext i16 %5 to i32
  %and = and i32 %conv2, 8192
  %tobool3 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %tobool3, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %8 = load i8*, i8** %e.addr, align 8
  %9 = load i8*, i8** %s.addr, align 8
  %cmp = icmp ugt i8* %8, %9
  br i1 %cmp, label %if.then, label %if.end.62

if.then:                                          ; preds = %while.end
  %10 = load i32, i32* %kind.addr, align 4
  %cmp5 = icmp eq i32 %10, 1
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  %11 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %12 = load i8*, i8** %s.addr, align 8
  %13 = load i8*, i8** %e.addr, align 8
  %14 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv8 = trunc i64 %sub.ptr.sub to i32
  %call9 = call %struct.Production* @lookup_production(%struct.Grammar* %11, i8* %12, i32 %conv8)
  store %struct.Production* %call9, %struct.Production** %p, align 8
  %tobool10 = icmp ne %struct.Production* %call9, null
  br i1 %tobool10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then.7
  %15 = load %struct.Production*, %struct.Production** %p, align 8
  %index = getelementptr inbounds %struct.Production, %struct.Production* %15, i32 0, i32 3
  %16 = load i32, i32* %index, align 4
  store i32 %16, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.7
  br label %if.end.61

if.else:                                          ; preds = %if.then
  %17 = load i32, i32* %kind.addr, align 4
  %cmp12 = icmp eq i32 %17, 3
  br i1 %cmp12, label %if.then.14, label %if.end.60

if.then.14:                                       ; preds = %if.else
  store i32 -1, i32* %found, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.14
  %18 = load i32, i32* %i, align 4
  %19 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals = getelementptr inbounds %struct.Grammar, %struct.Grammar* %19, i32 0, i32 2
  %n = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals, i32 0, i32 0
  %20 = load i32, i32* %n, align 4
  %cmp15 = icmp ult i32 %18, %20
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %21 to i64
  %22 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals18 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %22, i32 0, i32 2
  %v = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals18, i32 0, i32 2
  %23 = load %struct.Term**, %struct.Term*** %v, align 8
  %arrayidx19 = getelementptr inbounds %struct.Term*, %struct.Term** %23, i64 %idxprom17
  %24 = load %struct.Term*, %struct.Term** %arrayidx19, align 8
  %kind20 = getelementptr inbounds %struct.Term, %struct.Term* %24, i32 0, i32 0
  %25 = load i32, i32* %kind20, align 4
  %cmp21 = icmp eq i32 %25, 0
  br i1 %cmp21, label %land.lhs.true, label %if.end.54

land.lhs.true:                                    ; preds = %for.body
  %26 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %26 to i64
  %27 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals24 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %27, i32 0, i32 2
  %v25 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals24, i32 0, i32 2
  %28 = load %struct.Term**, %struct.Term*** %v25, align 8
  %arrayidx26 = getelementptr inbounds %struct.Term*, %struct.Term** %28, i64 %idxprom23
  %29 = load %struct.Term*, %struct.Term** %arrayidx26, align 8
  %string_len = getelementptr inbounds %struct.Term, %struct.Term* %29, i32 0, i32 6
  %30 = load i32, i32* %string_len, align 4
  %conv27 = sext i32 %30 to i64
  %31 = load i8*, i8** %e.addr, align 8
  %32 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast28 = ptrtoint i8* %31 to i64
  %sub.ptr.rhs.cast29 = ptrtoint i8* %32 to i64
  %sub.ptr.sub30 = sub i64 %sub.ptr.lhs.cast28, %sub.ptr.rhs.cast29
  %cmp31 = icmp eq i64 %conv27, %sub.ptr.sub30
  br i1 %cmp31, label %land.lhs.true.33, label %if.end.54

land.lhs.true.33:                                 ; preds = %land.lhs.true
  %33 = load i8*, i8** %s.addr, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %34 to i64
  %35 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals35 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %35, i32 0, i32 2
  %v36 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals35, i32 0, i32 2
  %36 = load %struct.Term**, %struct.Term*** %v36, align 8
  %arrayidx37 = getelementptr inbounds %struct.Term*, %struct.Term** %36, i64 %idxprom34
  %37 = load %struct.Term*, %struct.Term** %arrayidx37, align 8
  %string = getelementptr inbounds %struct.Term, %struct.Term* %37, i32 0, i32 5
  %38 = load i8*, i8** %string, align 8
  %39 = load i8*, i8** %e.addr, align 8
  %40 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast38 = ptrtoint i8* %39 to i64
  %sub.ptr.rhs.cast39 = ptrtoint i8* %40 to i64
  %sub.ptr.sub40 = sub i64 %sub.ptr.lhs.cast38, %sub.ptr.rhs.cast39
  %call41 = call i32 @strncmp(i8* %33, i8* %38, i64 %sub.ptr.sub40) #6
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.end.54, label %if.then.43

if.then.43:                                       ; preds = %land.lhs.true.33
  %41 = load i32, i32* %found, align 4
  %cmp44 = icmp sgt i32 %41, 0
  br i1 %cmp44, label %if.then.46, label %if.else.52

if.then.46:                                       ; preds = %if.then.43
  %42 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %42 to i64
  %43 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals48 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %43, i32 0, i32 2
  %v49 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals48, i32 0, i32 2
  %44 = load %struct.Term**, %struct.Term*** %v49, align 8
  %arrayidx50 = getelementptr inbounds %struct.Term*, %struct.Term** %44, i64 %idxprom47
  %45 = load %struct.Term*, %struct.Term** %arrayidx50, align 8
  %string51 = getelementptr inbounds %struct.Term, %struct.Term* %45, i32 0, i32 5
  %46 = load i8*, i8** %string51, align 8
  call void (i8*, ...) @d_fail(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.33, i32 0, i32 0), i8* %46)
  br label %if.end.53

if.else.52:                                       ; preds = %if.then.43
  %47 = load i32, i32* %i, align 4
  store i32 %47, i32* %found, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.52, %if.then.46
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %land.lhs.true.33, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.54
  %48 = load i32, i32* %i, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %49 = load i32, i32* %found, align 4
  %cmp55 = icmp sgt i32 %49, 0
  br i1 %cmp55, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %for.end
  %50 = load i32, i32* %found, align 4
  %51 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions = getelementptr inbounds %struct.Grammar, %struct.Grammar* %51, i32 0, i32 1
  %n58 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions, i32 0, i32 0
  %52 = load i32, i32* %n58, align 4
  %add = add i32 %50, %52
  store i32 %add, i32* %retval
  br label %return

if.end.59:                                        ; preds = %for.end
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.else
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.end
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %while.end
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.62, %if.then.57, %if.then.11
  %53 = load i32, i32* %retval
  ret i32 %53
}

declare i32 @fputc(i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal void @write_code_as_C(%struct._IO_FILE* %fp, %struct.Grammar* %g, %struct.Rule* %r, i8* %code, i32 %line, i8* %pathname) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %g.addr = alloca %struct.Grammar*, align 8
  %r.addr = alloca %struct.Rule*, align 8
  %code.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %pathname.addr = alloca i8*, align 8
  %c = alloca i8*, align 8
  %n = alloca i32, align 4
  %n65 = alloca i32, align 4
  %e = alloca i8*, align 8
  %a = alloca i8*, align 8
  %p = alloca %struct.D_Pass*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store %struct.Rule* %r, %struct.Rule** %r.addr, align 8
  store i8* %code, i8** %code.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  store i8* %pathname, i8** %pathname.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i32 0, i32 0))
  %1 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %write_line_directives = getelementptr inbounds %struct.Grammar, %struct.Grammar* %1, i32 0, i32 20
  %2 = load i32, i32* %write_line_directives, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %4 = load i32, i32* %line.addr, align 4
  %5 = load i8*, i8** %pathname.addr, align 8
  %call1 = call i8* @mybasename(i8* %5)
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), i32 %4, i8* %call1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8*, i8** %code.addr, align 8
  store i8* %6, i8** %c, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.221, %if.end
  %7 = load i8*, i8** %c, align 8
  %8 = load i8, i8* %7, align 1
  %tobool3 = icmp ne i8 %8, 0
  br i1 %tobool3, label %while.body, label %while.end.222

while.body:                                       ; preds = %while.cond
  %9 = load i8*, i8** %c, align 8
  %10 = load i8, i8* %9, align 1
  %conv = sext i8 %10 to i32
  %cmp = icmp eq i32 %conv, 36
  br i1 %cmp, label %if.then.5, label %if.else.217

if.then.5:                                        ; preds = %while.body
  %11 = load i8*, i8** %c, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %c, align 8
  %12 = load i8*, i8** %c, align 8
  %13 = load i8, i8* %12, align 1
  %conv6 = sext i8 %13 to i32
  %cmp7 = icmp eq i32 %conv6, 35
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.5
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0))
  %15 = load i8*, i8** %c, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr11, i8** %c, align 8
  br label %if.end.216

if.else:                                          ; preds = %if.then.5
  %16 = load i8*, i8** %c, align 8
  %17 = load i8, i8* %16, align 1
  %conv12 = sext i8 %17 to i32
  %cmp13 = icmp eq i32 %conv12, 103
  br i1 %cmp13, label %if.then.15, label %if.else.18

if.then.15:                                       ; preds = %if.else
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.55, i32 0, i32 0))
  %19 = load i8*, i8** %c, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr17, i8** %c, align 8
  br label %if.end.215

if.else.18:                                       ; preds = %if.else
  %20 = load i8*, i8** %c, align 8
  %21 = load i8, i8* %20, align 1
  %conv19 = sext i8 %21 to i32
  %cmp20 = icmp eq i32 %conv19, 110
  br i1 %cmp20, label %if.then.22, label %if.else.49

if.then.22:                                       ; preds = %if.else.18
  %22 = load i8*, i8** %c, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr23, i8** %c, align 8
  %23 = load i8*, i8** %c, align 8
  %24 = load i8, i8* %23, align 1
  %conv24 = sext i8 %24 to i32
  %idxprom = sext i32 %conv24 to i64
  %call25 = call i16** @__ctype_b_loc() #7
  %25 = load i16*, i16** %call25, align 8
  %arrayidx = getelementptr inbounds i16, i16* %25, i64 %idxprom
  %26 = load i16, i16* %arrayidx, align 2
  %conv26 = zext i16 %26 to i32
  %and = and i32 %conv26, 2048
  %tobool27 = icmp ne i32 %and, 0
  br i1 %tobool27, label %if.then.28, label %if.else.46

if.then.28:                                       ; preds = %if.then.22
  %27 = load i8*, i8** %c, align 8
  %call29 = call i32 @atoi(i8* %27) #6
  store i32 %call29, i32* %n, align 4
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %29 = load i32, i32* %n, align 4
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.56, i32 0, i32 0), i32 %29)
  %30 = load i32, i32* %n, align 4
  %31 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %elems = getelementptr inbounds %struct.Rule, %struct.Rule* %31, i32 0, i32 6
  %n31 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems, i32 0, i32 0
  %32 = load i32, i32* %n31, align 4
  %sub = sub i32 %32, 1
  %cmp32 = icmp ugt i32 %30, %sub
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.28
  %33 = load i32, i32* %line.addr, align 4
  call void (i8*, ...) @d_fail(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.57, i32 0, i32 0), i32 %33)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.then.28
  br label %while.cond.36

while.cond.36:                                    ; preds = %while.body.44, %if.end.35
  %34 = load i8*, i8** %c, align 8
  %35 = load i8, i8* %34, align 1
  %conv37 = sext i8 %35 to i32
  %idxprom38 = sext i32 %conv37 to i64
  %call39 = call i16** @__ctype_b_loc() #7
  %36 = load i16*, i16** %call39, align 8
  %arrayidx40 = getelementptr inbounds i16, i16* %36, i64 %idxprom38
  %37 = load i16, i16* %arrayidx40, align 2
  %conv41 = zext i16 %37 to i32
  %and42 = and i32 %conv41, 2048
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %while.body.44, label %while.end

while.body.44:                                    ; preds = %while.cond.36
  %38 = load i8*, i8** %c, align 8
  %incdec.ptr45 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr45, i8** %c, align 8
  br label %while.cond.36

while.end:                                        ; preds = %while.cond.36
  br label %if.end.48

if.else.46:                                       ; preds = %if.then.22
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.58, i32 0, i32 0))
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.46, %while.end
  br label %if.end.214

if.else.49:                                       ; preds = %if.else.18
  %40 = load i8*, i8** %c, align 8
  %41 = load i8, i8* %40, align 1
  %conv50 = sext i8 %41 to i32
  %cmp51 = icmp eq i32 %conv50, 36
  br i1 %cmp51, label %if.then.53, label %if.else.56

if.then.53:                                       ; preds = %if.else.49
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.59, i32 0, i32 0))
  %43 = load i8*, i8** %c, align 8
  %incdec.ptr55 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr55, i8** %c, align 8
  br label %if.end.213

if.else.56:                                       ; preds = %if.else.49
  %44 = load i8*, i8** %c, align 8
  %45 = load i8, i8* %44, align 1
  %conv57 = sext i8 %45 to i32
  %idxprom58 = sext i32 %conv57 to i64
  %call59 = call i16** @__ctype_b_loc() #7
  %46 = load i16*, i16** %call59, align 8
  %arrayidx60 = getelementptr inbounds i16, i16* %46, i64 %idxprom58
  %47 = load i16, i16* %arrayidx60, align 2
  %conv61 = zext i16 %47 to i32
  %and62 = and i32 %conv61, 2048
  %tobool63 = icmp ne i32 %and62, 0
  br i1 %tobool63, label %if.then.64, label %if.else.79

if.then.64:                                       ; preds = %if.else.56
  %48 = load i8*, i8** %c, align 8
  %call66 = call i32 @atoi(i8* %48) #6
  store i32 %call66, i32* %n65, align 4
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %50 = load i32, i32* %n65, align 4
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.60, i32 0, i32 0), i32 %50)
  br label %while.cond.68

while.cond.68:                                    ; preds = %while.body.76, %if.then.64
  %51 = load i8*, i8** %c, align 8
  %52 = load i8, i8* %51, align 1
  %conv69 = sext i8 %52 to i32
  %idxprom70 = sext i32 %conv69 to i64
  %call71 = call i16** @__ctype_b_loc() #7
  %53 = load i16*, i16** %call71, align 8
  %arrayidx72 = getelementptr inbounds i16, i16* %53, i64 %idxprom70
  %54 = load i16, i16* %arrayidx72, align 2
  %conv73 = zext i16 %54 to i32
  %and74 = and i32 %conv73, 2048
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %while.body.76, label %while.end.78

while.body.76:                                    ; preds = %while.cond.68
  %55 = load i8*, i8** %c, align 8
  %incdec.ptr77 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr77, i8** %c, align 8
  br label %while.cond.68

while.end.78:                                     ; preds = %while.cond.68
  br label %if.end.212

if.else.79:                                       ; preds = %if.else.56
  %56 = load i8*, i8** %c, align 8
  %57 = load i8, i8* %56, align 1
  %conv80 = sext i8 %57 to i32
  %cmp81 = icmp eq i32 %conv80, 123
  br i1 %cmp81, label %if.then.83, label %if.else.210

if.then.83:                                       ; preds = %if.else.79
  %58 = load i8*, i8** %c, align 8
  %incdec.ptr84 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr84, i8** %c, align 8
  store i8* %incdec.ptr84, i8** %e, align 8
  br label %while.cond.85

while.cond.85:                                    ; preds = %while.body.98, %if.then.83
  %59 = load i8*, i8** %e, align 8
  %60 = load i8, i8* %59, align 1
  %conv86 = sext i8 %60 to i32
  %tobool87 = icmp ne i32 %conv86, 0
  br i1 %tobool87, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond.85
  %61 = load i8*, i8** %e, align 8
  %62 = load i8, i8* %61, align 1
  %conv88 = sext i8 %62 to i32
  %cmp89 = icmp ne i32 %conv88, 125
  br i1 %cmp89, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %63 = load i8*, i8** %e, align 8
  %64 = load i8, i8* %63, align 1
  %conv91 = sext i8 %64 to i32
  %idxprom92 = sext i32 %conv91 to i64
  %call93 = call i16** @__ctype_b_loc() #7
  %65 = load i16*, i16** %call93, align 8
  %arrayidx94 = getelementptr inbounds i16, i16* %65, i64 %idxprom92
  %66 = load i16, i16* %arrayidx94, align 2
  %conv95 = zext i16 %66 to i32
  %and96 = and i32 %conv95, 8192
  %tobool97 = icmp ne i32 %and96, 0
  %lnot = xor i1 %tobool97, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond.85
  %67 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond.85 ], [ %lnot, %land.rhs ]
  br i1 %67, label %while.body.98, label %while.end.100

while.body.98:                                    ; preds = %land.end
  %68 = load i8*, i8** %e, align 8
  %incdec.ptr99 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr99, i8** %e, align 8
  br label %while.cond.85

while.end.100:                                    ; preds = %land.end
  %69 = load i8*, i8** %e, align 8
  store i8* %69, i8** %a, align 8
  %70 = load i8*, i8** %a, align 8
  %71 = load i8, i8* %70, align 1
  %conv101 = sext i8 %71 to i32
  %idxprom102 = sext i32 %conv101 to i64
  %call103 = call i16** @__ctype_b_loc() #7
  %72 = load i16*, i16** %call103, align 8
  %arrayidx104 = getelementptr inbounds i16, i16* %72, i64 %idxprom102
  %73 = load i16, i16* %arrayidx104, align 2
  %conv105 = zext i16 %73 to i32
  %and106 = and i32 %conv105, 8192
  %tobool107 = icmp ne i32 %and106, 0
  br i1 %tobool107, label %if.then.108, label %if.end.110

if.then.108:                                      ; preds = %while.end.100
  %74 = load i8*, i8** %a, align 8
  %incdec.ptr109 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr109, i8** %a, align 8
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.108, %while.end.100
  br label %while.cond.111

while.cond.111:                                   ; preds = %while.body.119, %if.end.110
  %75 = load i8*, i8** %a, align 8
  %76 = load i8, i8* %75, align 1
  %conv112 = sext i8 %76 to i32
  %tobool113 = icmp ne i32 %conv112, 0
  br i1 %tobool113, label %land.rhs.114, label %land.end.118

land.rhs.114:                                     ; preds = %while.cond.111
  %77 = load i8*, i8** %a, align 8
  %78 = load i8, i8* %77, align 1
  %conv115 = sext i8 %78 to i32
  %cmp116 = icmp ne i32 %conv115, 125
  br label %land.end.118

land.end.118:                                     ; preds = %land.rhs.114, %while.cond.111
  %79 = phi i1 [ false, %while.cond.111 ], [ %cmp116, %land.rhs.114 ]
  br i1 %79, label %while.body.119, label %while.end.121

while.body.119:                                   ; preds = %land.end.118
  %80 = load i8*, i8** %a, align 8
  %incdec.ptr120 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %incdec.ptr120, i8** %a, align 8
  br label %while.cond.111

while.end.121:                                    ; preds = %land.end.118
  %81 = load i8*, i8** %e, align 8
  %82 = load i8*, i8** %c, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %81 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %82 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp122 = icmp eq i64 %sub.ptr.sub, 6
  br i1 %cmp122, label %land.lhs.true.124, label %if.else.129

land.lhs.true.124:                                ; preds = %while.end.121
  %83 = load i8*, i8** %c, align 8
  %call125 = call i32 @strncasecmp(i8* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i64 6) #6
  %tobool126 = icmp ne i32 %call125, 0
  br i1 %tobool126, label %if.else.129, label %if.then.127

if.then.127:                                      ; preds = %land.lhs.true.124
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call128 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i32 0, i32 0))
  br label %if.end.209

if.else.129:                                      ; preds = %land.lhs.true.124, %while.end.121
  %85 = load i8*, i8** %e, align 8
  %86 = load i8*, i8** %c, align 8
  %sub.ptr.lhs.cast130 = ptrtoint i8* %85 to i64
  %sub.ptr.rhs.cast131 = ptrtoint i8* %86 to i64
  %sub.ptr.sub132 = sub i64 %sub.ptr.lhs.cast130, %sub.ptr.rhs.cast131
  %cmp133 = icmp eq i64 %sub.ptr.sub132, 10
  br i1 %cmp133, label %land.lhs.true.135, label %if.else.140

land.lhs.true.135:                                ; preds = %if.else.129
  %87 = load i8*, i8** %c, align 8
  %call136 = call i32 @strncasecmp(i8* %87, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0), i64 10) #6
  %tobool137 = icmp ne i32 %call136, 0
  br i1 %tobool137, label %if.else.140, label %if.then.138

if.then.138:                                      ; preds = %land.lhs.true.135
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call139 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.64, i32 0, i32 0))
  br label %if.end.208

if.else.140:                                      ; preds = %land.lhs.true.135, %if.else.129
  %89 = load i8*, i8** %e, align 8
  %90 = load i8*, i8** %c, align 8
  %sub.ptr.lhs.cast141 = ptrtoint i8* %89 to i64
  %sub.ptr.rhs.cast142 = ptrtoint i8* %90 to i64
  %sub.ptr.sub143 = sub i64 %sub.ptr.lhs.cast141, %sub.ptr.rhs.cast142
  %cmp144 = icmp eq i64 %sub.ptr.sub143, 5
  br i1 %cmp144, label %land.lhs.true.146, label %if.else.151

land.lhs.true.146:                                ; preds = %if.else.140
  %91 = load i8*, i8** %c, align 8
  %call147 = call i32 @strncasecmp(i8* %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), i64 5) #6
  %tobool148 = icmp ne i32 %call147, 0
  br i1 %tobool148, label %if.else.151, label %if.then.149

if.then.149:                                      ; preds = %land.lhs.true.146
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %92, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.66, i32 0, i32 0))
  br label %if.end.207

if.else.151:                                      ; preds = %land.lhs.true.146, %if.else.140
  %93 = load i8*, i8** %e, align 8
  %94 = load i8*, i8** %c, align 8
  %sub.ptr.lhs.cast152 = ptrtoint i8* %93 to i64
  %sub.ptr.rhs.cast153 = ptrtoint i8* %94 to i64
  %sub.ptr.sub154 = sub i64 %sub.ptr.lhs.cast152, %sub.ptr.rhs.cast153
  %cmp155 = icmp eq i64 %sub.ptr.sub154, 6
  br i1 %cmp155, label %land.lhs.true.157, label %if.else.162

land.lhs.true.157:                                ; preds = %if.else.151
  %95 = load i8*, i8** %c, align 8
  %call158 = call i32 @strncasecmp(i8* %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i32 0, i32 0), i64 6) #6
  %tobool159 = icmp ne i32 %call158, 0
  br i1 %tobool159, label %if.else.162, label %if.then.160

if.then.160:                                      ; preds = %land.lhs.true.157
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call161 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0))
  br label %if.end.206

if.else.162:                                      ; preds = %land.lhs.true.157, %if.else.151
  %97 = load i8*, i8** %e, align 8
  %98 = load i8*, i8** %c, align 8
  %sub.ptr.lhs.cast163 = ptrtoint i8* %97 to i64
  %sub.ptr.rhs.cast164 = ptrtoint i8* %98 to i64
  %sub.ptr.sub165 = sub i64 %sub.ptr.lhs.cast163, %sub.ptr.rhs.cast164
  %cmp166 = icmp eq i64 %sub.ptr.sub165, 5
  br i1 %cmp166, label %land.lhs.true.168, label %if.else.174

land.lhs.true.168:                                ; preds = %if.else.162
  %99 = load i8*, i8** %c, align 8
  %call169 = call i32 @strncasecmp(i8* %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i64 5) #6
  %tobool170 = icmp ne i32 %call169, 0
  br i1 %tobool170, label %if.else.174, label %if.then.171

if.then.171:                                      ; preds = %land.lhs.true.168
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %101 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %102 = load i8*, i8** %e, align 8
  %103 = load i8*, i8** %a, align 8
  %call172 = call i32 @find_symbol(%struct.Grammar* %101, i8* %102, i8* %103, i32 1)
  %call173 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i32 %call172)
  br label %if.end.205

if.else.174:                                      ; preds = %land.lhs.true.168, %if.else.162
  %104 = load i8*, i8** %e, align 8
  %105 = load i8*, i8** %c, align 8
  %sub.ptr.lhs.cast175 = ptrtoint i8* %104 to i64
  %sub.ptr.rhs.cast176 = ptrtoint i8* %105 to i64
  %sub.ptr.sub177 = sub i64 %sub.ptr.lhs.cast175, %sub.ptr.rhs.cast176
  %cmp178 = icmp eq i64 %sub.ptr.sub177, 6
  br i1 %cmp178, label %land.lhs.true.180, label %if.else.186

land.lhs.true.180:                                ; preds = %if.else.174
  %106 = load i8*, i8** %c, align 8
  %call181 = call i32 @strncasecmp(i8* %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i64 6) #6
  %tobool182 = icmp ne i32 %call181, 0
  br i1 %tobool182, label %if.else.186, label %if.then.183

if.then.183:                                      ; preds = %land.lhs.true.180
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %108 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %109 = load i8*, i8** %e, align 8
  %110 = load i8*, i8** %a, align 8
  %call184 = call i32 @find_symbol(%struct.Grammar* %108, i8* %109, i8* %110, i32 3)
  %call185 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i32 %call184)
  br label %if.end.204

if.else.186:                                      ; preds = %land.lhs.true.180, %if.else.174
  %111 = load i8*, i8** %e, align 8
  %112 = load i8*, i8** %c, align 8
  %sub.ptr.lhs.cast187 = ptrtoint i8* %111 to i64
  %sub.ptr.rhs.cast188 = ptrtoint i8* %112 to i64
  %sub.ptr.sub189 = sub i64 %sub.ptr.lhs.cast187, %sub.ptr.rhs.cast188
  %cmp190 = icmp eq i64 %sub.ptr.sub189, 4
  br i1 %cmp190, label %land.lhs.true.192, label %if.else.202

land.lhs.true.192:                                ; preds = %if.else.186
  %113 = load i8*, i8** %c, align 8
  %call193 = call i32 @strncasecmp(i8* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), i64 4) #6
  %tobool194 = icmp ne i32 %call193, 0
  br i1 %tobool194, label %if.else.202, label %if.then.195

if.then.195:                                      ; preds = %land.lhs.true.192
  %114 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %115 = load i8*, i8** %e, align 8
  %116 = load i8*, i8** %a, align 8
  %call196 = call %struct.D_Pass* @find_pass(%struct.Grammar* %114, i8* %115, i8* %116)
  store %struct.D_Pass* %call196, %struct.D_Pass** %p, align 8
  %117 = load %struct.D_Pass*, %struct.D_Pass** %p, align 8
  %tobool197 = icmp ne %struct.D_Pass* %117, null
  br i1 %tobool197, label %if.end.200, label %if.then.198

if.then.198:                                      ; preds = %if.then.195
  %118 = load i8*, i8** %e, align 8
  %119 = load i8*, i8** %a, align 8
  %call199 = call i8* @dup_str(i8* %118, i8* %119)
  %120 = load i32, i32* %line.addr, align 4
  call void (i8*, ...) @d_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.70, i32 0, i32 0), i8* %call199, i32 %120)
  br label %if.end.200

if.end.200:                                       ; preds = %if.then.198, %if.then.195
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %122 = load %struct.D_Pass*, %struct.D_Pass** %p, align 8
  %index = getelementptr inbounds %struct.D_Pass, %struct.D_Pass* %122, i32 0, i32 3
  %123 = load i32, i32* %index, align 4
  %call201 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %121, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i32 %123)
  br label %if.end.203

if.else.202:                                      ; preds = %land.lhs.true.192, %if.else.186
  %124 = load i32, i32* %line.addr, align 4
  call void (i8*, ...) @d_fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.32, i32 0, i32 0), i32 %124)
  br label %if.end.203

if.end.203:                                       ; preds = %if.else.202, %if.end.200
  br label %if.end.204

if.end.204:                                       ; preds = %if.end.203, %if.then.183
  br label %if.end.205

if.end.205:                                       ; preds = %if.end.204, %if.then.171
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %if.then.160
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.206, %if.then.149
  br label %if.end.208

if.end.208:                                       ; preds = %if.end.207, %if.then.138
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %if.then.127
  %125 = load i8*, i8** %a, align 8
  %add.ptr = getelementptr inbounds i8, i8* %125, i64 1
  store i8* %add.ptr, i8** %c, align 8
  br label %if.end.211

if.else.210:                                      ; preds = %if.else.79
  %126 = load i32, i32* %line.addr, align 4
  call void (i8*, ...) @d_fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.32, i32 0, i32 0), i32 %126)
  br label %if.end.211

if.end.211:                                       ; preds = %if.else.210, %if.end.209
  br label %if.end.212

if.end.212:                                       ; preds = %if.end.211, %while.end.78
  br label %if.end.213

if.end.213:                                       ; preds = %if.end.212, %if.then.53
  br label %if.end.214

if.end.214:                                       ; preds = %if.end.213, %if.end.48
  br label %if.end.215

if.end.215:                                       ; preds = %if.end.214, %if.then.15
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.215, %if.then.9
  br label %if.end.221

if.else.217:                                      ; preds = %while.body
  %127 = load i8*, i8** %c, align 8
  %128 = load i8, i8* %127, align 1
  %conv218 = sext i8 %128 to i32
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call219 = call i32 @fputc(i32 %conv218, %struct._IO_FILE* %129)
  %130 = load i8*, i8** %c, align 8
  %incdec.ptr220 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %incdec.ptr220, i8** %c, align 8
  br label %if.end.221

if.end.221:                                       ; preds = %if.else.217, %if.end.216
  br label %while.cond

while.end.222:                                    ; preds = %while.cond
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call223 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %131, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.71, i32 0, i32 0))
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call224 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

declare %struct.D_Pass* @find_pass(%struct.Grammar*, i8*, i8*) #2

declare i8* @dup_str(i8*, i8*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @scanner_size(%struct.State* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.State*, align 8
  store %struct.State* %s, %struct.State** %s.addr, align 8
  %0 = load %struct.State*, %struct.State** %s.addr, align 8
  %scanner = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 9
  %states = getelementptr inbounds %struct.Scanner, %struct.Scanner* %scanner, i32 0, i32 0
  %n = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %states, i32 0, i32 0
  %1 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %1, 255
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.State*, %struct.State** %s.addr, align 8
  %scanner1 = getelementptr inbounds %struct.State, %struct.State* %2, i32 0, i32 9
  %transitions = getelementptr inbounds %struct.Scanner, %struct.Scanner* %scanner1, i32 0, i32 1
  %n2 = getelementptr inbounds %struct.VecScanStateTransition, %struct.VecScanStateTransition* %transitions, i32 0, i32 0
  %3 = load i32, i32* %n2, align 4
  %cmp3 = icmp ult i32 %3, 255
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load %struct.State*, %struct.State** %s.addr, align 8
  %scanner4 = getelementptr inbounds %struct.State, %struct.State* %4, i32 0, i32 9
  %states5 = getelementptr inbounds %struct.Scanner, %struct.Scanner* %scanner4, i32 0, i32 0
  %n6 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %states5, i32 0, i32 0
  %5 = load i32, i32* %n6, align 4
  %cmp7 = icmp ult i32 %5, 32384
  br i1 %cmp7, label %land.lhs.true.8, label %if.end.14

land.lhs.true.8:                                  ; preds = %if.end
  %6 = load %struct.State*, %struct.State** %s.addr, align 8
  %scanner9 = getelementptr inbounds %struct.State, %struct.State* %6, i32 0, i32 9
  %transitions10 = getelementptr inbounds %struct.Scanner, %struct.Scanner* %scanner9, i32 0, i32 1
  %n11 = getelementptr inbounds %struct.VecScanStateTransition, %struct.VecScanStateTransition* %transitions10, i32 0, i32 0
  %7 = load i32, i32* %n11, align 4
  %cmp12 = icmp ult i32 %7, 32384
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %land.lhs.true.8
  store i32 2, i32* %retval
  br label %return

if.end.14:                                        ; preds = %land.lhs.true.8, %if.end
  store i32 4, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare i8* @set_add_fn(i8*, i8*, %struct.hash_fns_t*) #2

; Function Attrs: nounwind uwtable
define internal i8* @scanner_type(%struct.State* %s) #0 {
entry:
  %s.addr = alloca %struct.State*, align 8
  store %struct.State* %s, %struct.State** %s.addr, align 8
  %0 = load %struct.State*, %struct.State** %s.addr, align 8
  %call = call i32 @scanner_size(%struct.State* %0)
  %call1 = call i8* @make_type(i32 %call)
  ret i8* %call1
}

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @scanner_u_type(%struct.State* %s) #0 {
entry:
  %s.addr = alloca %struct.State*, align 8
  store %struct.State* %s, %struct.State** %s.addr, align 8
  %0 = load %struct.State*, %struct.State** %s.addr, align 8
  %call = call i32 @scanner_size(%struct.State* %0)
  %call1 = call i8* @make_u_type(i32 %call)
  ret i8* %call1
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @make_type(i32 %i) #0 {
entry:
  %retval = alloca i8*, align 8
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
    i32 4, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.100, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.101, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.102, i32 0, i32 0), i8** %retval
  br label %return

sw.default:                                       ; preds = %entry
  call void (i8*, ...) @d_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.103, i32 0, i32 0))
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i8*, i8** %retval
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define internal i8* @make_u_type(i32 %i) #0 {
entry:
  %retval = alloca i8*, align 8
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
    i32 4, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.104, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.105, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.106, i32 0, i32 0), i8** %retval
  br label %return

sw.default:                                       ; preds = %entry
  call void (i8*, ...) @d_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.103, i32 0, i32 0))
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i8*, i8** %retval
  ret i8* %1
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare i32 @elem_symbol(%struct.Grammar*, %struct.Elem*) #2

declare void @vec_add_internal(i8*, i8*) #2

declare i8* @escape_string(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
