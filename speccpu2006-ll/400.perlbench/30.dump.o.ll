; ModuleID = 'dump.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
%struct.hv = type { %struct.xpvhv*, i32, i32 }
%struct.xpvhv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, i32, %struct.he*, %struct.pmop*, i8* }
%struct.magic = type { %struct.magic*, %struct.mgvtbl*, i16, i8, i8, %struct.sv*, i8*, i32 }
%struct.mgvtbl = type { i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.magic*, %struct.clone_params*)* }
%struct.clone_params = type { %struct.av*, i64, %struct.interpreter* }
%struct.av = type { %struct.xpvav*, i32, i32 }
%struct.xpvav = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.sv**, %struct.sv*, i8 }
%struct.interpreter = type { i8 }
%struct.sv = type { i8*, i32, i32 }
%struct.he = type { %struct.he*, %struct.hek*, %struct.sv* }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.pmop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.op*, %struct.op*, %struct.op*, %struct.op*, %struct.pmop*, %struct.regexp*, i32, i32, i8, %struct.hv* }
%struct.regexp = type { i32*, i32*, %struct.regnode*, %struct.reg_substr_data*, i8*, %struct.reg_data*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.regnode] }
%struct.regnode = type { i8, i8, i16 }
%struct.reg_substr_data = type { [3 x %struct.reg_substr_datum] }
%struct.reg_substr_datum = type { i32, i32, %struct.sv*, %struct.sv* }
%struct.reg_data = type { i32, i8*, [1 x i8*] }
%struct.anon = type { i8, i8* }
%struct.cv = type { %struct.xpvcv*, i32, i32 }
%struct.xpvcv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, void (%struct.cv*)*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32 }
%union.any = type { i8* }
%struct.gv = type { %struct.xpvgv*, i32, i32 }
%struct.xpvgv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.gp*, i8*, i64, %struct.hv*, i8 }
%struct.gp = type { %struct.sv*, i32, %struct.io*, %struct.cv*, %struct.av*, %struct.hv*, %struct.gv*, %struct.cv*, i32, i32, i32, i8* }
%struct.io = type { %struct.xpvio*, i32, i32 }
%struct.xpvio = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct._PerlIO**, %struct._PerlIO**, %union.anon, i64, i64, i64, i64, i8*, %struct.gv*, i8*, %struct.gv*, i8*, %struct.gv*, i16, i8, i8 }
%struct._PerlIO = type opaque
%union.anon = type { %struct.__dirstream* }
%struct.__dirstream = type opaque
%struct.cop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, i8*, %struct.hv*, %struct.gv*, i32, i32, i32, %struct.sv*, %struct.sv* }
%struct.stackinfo = type { %struct.av*, %struct.context*, i32, i32, i32, %struct.stackinfo*, %struct.stackinfo*, i32 }
%struct.context = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.block }
%struct.block = type { i32, %struct.cop*, i32, i32, i32, %struct.pmop*, i8, %union.anon.1 }
%union.anon.1 = type { %struct.block_loop }
%struct.block_loop = type { i8*, i32, %struct.op*, %struct.op*, %struct.op*, %struct.sv**, %struct.sv*, %struct.sv*, %struct.av*, i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.xpv = type { i8*, i64, i64 }
%struct.xpvnv = type { i8*, i64, i64, i64, double }
%struct.xrv = type { %struct.sv* }
%struct.xpviv = type { i8*, i64, i64, i64 }
%struct.xpvuv = type { i8*, i64, i64, i64 }
%struct.svop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.sv* }
%struct.loop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.op*, %struct.op*, %struct.op*, %struct.op*, %struct.op* }
%struct.logop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.op*, %struct.op* }
%struct.unop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.op* }
%struct.xpvmg = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv* }
%struct.xpvlv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, i64, i64, %struct.sv*, i8 }
%struct.xpvfm = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, void (%struct.cv*)*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32, i64 }
%struct.block_sub = type { %struct.cv*, %struct.gv*, %struct.gv*, %struct.av*, %struct.av*, i64, i8, i8, %struct.av* }

@.str = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@PL_dumpindent = external global i32, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PL_main_root = external global %struct.op*, align 8
@PL_defstash = external global %struct.hv*, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"\0ASUB %s = \00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"(xsub 0x%lx %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"<undef>\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"\0AFORMAT %s = \00", align 1
@PL_eval_root = external global %struct.op*, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\5Ct\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\5Cn\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\5Cr\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\5Cf\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"\5C\22\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"\5C\5C\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"\5C%03o\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"\5C%o\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"\5C0\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"VOID\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"WILD\00", align 1
@PL_sv_undef = external global %struct.sv, align 8
@PL_sv_no = external global %struct.sv, align 8
@PL_sv_yes = external global %struct.sv, align 8
@PL_sv_placeholder = external global %struct.sv, align 8
@.str.19 = private unnamed_addr constant [9 x i8] c"SV_UNDEF\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"SV_NO\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"SV_YES\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"SV_PLACEHOLDER\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@PL_debug = external global i32, align 4
@PL_tmps_ix = external global i32, align 4
@PL_tmps_stack = external global %struct.sv**, align 8
@.str.25 = private unnamed_addr constant [8 x i8] c"<%lu%s>\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"<T>\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"\5C\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"FREED\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"UNDEF\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"IV\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"NV\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"RV\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"PV\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"PVIV\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"PVNV\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"PVMG\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"PVLV\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"AV\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"HV\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"CV(%s)\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"CV()\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"GV\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"BM\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"FM\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"IO\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"[%s]\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"%s)\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c" [UTF8 \22%s\22]\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"(%g)\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"(%lu)\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"(%ld)\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"{}\0A\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"PMf_PRE %c%s%c%s\0A\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c" (RUNTIME)\00", align 1
@.str.60 = private unnamed_addr constant [19 x i8] c"PMf_PRE (RUNTIME)\0A\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"PMf_REPL = \00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c",USED\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c",TAINTED\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c",ONCE\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c",SCANFIRST\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c",ALL\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c",SKIPWHITE\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c",CONST\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c",KEEP\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c",GLOBAL\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c",CONTINUE\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c",RETAINT\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c",EVAL\00", align 1
@.str.74 = private unnamed_addr constant [16 x i8] c"PMFLAGS = (%s)\0A\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"%-4d\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.78 = private unnamed_addr constant [20 x i8] c"%*sTYPE = %s  ===> \00", align 1
@PL_op_name = external global [0 x i8*], align 8
@.str.79 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"(%d)\0A\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"DONE\0A\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"  (was %s)\0A\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"LINE = %lu\0A\00", align 1
@.str.84 = private unnamed_addr constant [16 x i8] c"PACKAGE = \22%s\22\0A\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"LABEL = \22%s\22\0A\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"TARG = %ld\0A\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c",VOID\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c",SCALAR\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c",LIST\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c",UNKNOWN\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c",KIDS\00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c",PARENS\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c",STACKED\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c",REF\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c",MOD\00", align 1
@.str.96 = private unnamed_addr constant [9 x i8] c",SPECIAL\00", align 1
@.str.97 = private unnamed_addr constant [14 x i8] c"FLAGS = (%s)\0A\00", align 1
@PL_opargs = external global [0 x i32], align 4
@.str.98 = private unnamed_addr constant [11 x i8] c",TARGET_MY\00", align 1
@.str.99 = private unnamed_addr constant [12 x i8] c",REFCOUNTED\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c",COMMON\00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c",HASH\00", align 1
@.str.102 = private unnamed_addr constant [11 x i8] c",BACKWARDS\00", align 1
@.str.103 = private unnamed_addr constant [8 x i8] c",SQUASH\00", align 1
@.str.104 = private unnamed_addr constant [8 x i8] c",DELETE\00", align 1
@.str.105 = private unnamed_addr constant [12 x i8] c",COMPLEMENT\00", align 1
@.str.106 = private unnamed_addr constant [11 x i8] c",IDENTICAL\00", align 1
@.str.107 = private unnamed_addr constant [7 x i8] c",GROWS\00", align 1
@.str.108 = private unnamed_addr constant [8 x i8] c",DOLIST\00", align 1
@.str.109 = private unnamed_addr constant [7 x i8] c",AMPER\00", align 1
@.str.110 = private unnamed_addr constant [4 x i8] c",DB\00", align 1
@.str.111 = private unnamed_addr constant [9 x i8] c",HASTARG\00", align 1
@.str.112 = private unnamed_addr constant [9 x i8] c",NOPAREN\00", align 1
@.str.113 = private unnamed_addr constant [8 x i8] c",INARGS\00", align 1
@.str.114 = private unnamed_addr constant [7 x i8] c",NOMOD\00", align 1
@.str.115 = private unnamed_addr constant [4 x i8] c",SV\00", align 1
@.str.116 = private unnamed_addr constant [4 x i8] c",AV\00", align 1
@.str.117 = private unnamed_addr constant [4 x i8] c",HV\00", align 1
@.str.118 = private unnamed_addr constant [13 x i8] c",MAYBE_LVSUB\00", align 1
@.str.119 = private unnamed_addr constant [12 x i8] c",LVAL_DEFER\00", align 1
@.str.120 = private unnamed_addr constant [13 x i8] c",STRICT_REFS\00", align 1
@.str.121 = private unnamed_addr constant [11 x i8] c",OUR_INTRO\00", align 1
@.str.122 = private unnamed_addr constant [6 x i8] c",BARE\00", align 1
@.str.123 = private unnamed_addr constant [8 x i8] c",STRICT\00", align 1
@.str.124 = private unnamed_addr constant [9 x i8] c",ARYBASE\00", align 1
@.str.125 = private unnamed_addr constant [9 x i8] c",WARNING\00", align 1
@.str.126 = private unnamed_addr constant [9 x i8] c",ENTERED\00", align 1
@.str.127 = private unnamed_addr constant [9 x i8] c",LINENUM\00", align 1
@.str.128 = private unnamed_addr constant [7 x i8] c",INTRO\00", align 1
@.str.129 = private unnamed_addr constant [10 x i8] c",EARLY_CV\00", align 1
@.str.130 = private unnamed_addr constant [9 x i8] c",GUESSED\00", align 1
@.str.131 = private unnamed_addr constant [7 x i8] c",SLICE\00", align 1
@.str.132 = private unnamed_addr constant [12 x i8] c",EXISTS_SUB\00", align 1
@.str.133 = private unnamed_addr constant [9 x i8] c",NUMERIC\00", align 1
@.str.134 = private unnamed_addr constant [9 x i8] c",INTEGER\00", align 1
@.str.135 = private unnamed_addr constant [9 x i8] c",REVERSE\00", align 1
@.str.136 = private unnamed_addr constant [7 x i8] c",SVREF\00", align 1
@.str.137 = private unnamed_addr constant [8 x i8] c",IN_RAW\00", align 1
@.str.138 = private unnamed_addr constant [9 x i8] c",IN_CRLF\00", align 1
@.str.139 = private unnamed_addr constant [9 x i8] c",OUT_RAW\00", align 1
@.str.140 = private unnamed_addr constant [10 x i8] c",OUT_CRLF\00", align 1
@.str.141 = private unnamed_addr constant [13 x i8] c",EXIT_VMSISH\00", align 1
@.str.142 = private unnamed_addr constant [13 x i8] c",HUSH_VMSISH\00", align 1
@.str.143 = private unnamed_addr constant [11 x i8] c",FT_ACCESS\00", align 1
@.str.144 = private unnamed_addr constant [16 x i8] c"PRIVATE = (%s)\0A\00", align 1
@PL_op = external global %struct.op*, align 8
@.str.145 = private unnamed_addr constant [9 x i8] c"GV = %s\0A\00", align 1
@.str.146 = private unnamed_addr constant [11 x i8] c"GV = NULL\0A\00", align 1
@.str.147 = private unnamed_addr constant [9 x i8] c"SV = %s\0A\00", align 1
@.str.148 = private unnamed_addr constant [11 x i8] c"REDO ===> \00", align 1
@.str.149 = private unnamed_addr constant [11 x i8] c"NEXT ===> \00", align 1
@.str.150 = private unnamed_addr constant [11 x i8] c"LAST ===> \00", align 1
@.str.151 = private unnamed_addr constant [12 x i8] c"OTHER ===> \00", align 1
@.str.152 = private unnamed_addr constant [14 x i8] c"REFCNT = %lu\0A\00", align 1
@.str.153 = private unnamed_addr constant [13 x i8] c"GV_NAME = %s\00", align 1
@.str.154 = private unnamed_addr constant [6 x i8] c"-> %s\00", align 1
@.str.155 = private unnamed_addr constant [17 x i8] c"  MAGIC = 0x%lx\0A\00", align 1
@PL_vtbl_sv = external global %struct.mgvtbl, align 8
@.str.156 = private unnamed_addr constant [3 x i8] c"sv\00", align 1
@PL_vtbl_env = external global %struct.mgvtbl, align 8
@.str.157 = private unnamed_addr constant [4 x i8] c"env\00", align 1
@PL_vtbl_envelem = external global %struct.mgvtbl, align 8
@.str.158 = private unnamed_addr constant [8 x i8] c"envelem\00", align 1
@PL_vtbl_sig = external global %struct.mgvtbl, align 8
@.str.159 = private unnamed_addr constant [4 x i8] c"sig\00", align 1
@PL_vtbl_sigelem = external global %struct.mgvtbl, align 8
@.str.160 = private unnamed_addr constant [8 x i8] c"sigelem\00", align 1
@PL_vtbl_pack = external global %struct.mgvtbl, align 8
@.str.161 = private unnamed_addr constant [5 x i8] c"pack\00", align 1
@PL_vtbl_packelem = external global %struct.mgvtbl, align 8
@.str.162 = private unnamed_addr constant [9 x i8] c"packelem\00", align 1
@PL_vtbl_dbline = external global %struct.mgvtbl, align 8
@.str.163 = private unnamed_addr constant [7 x i8] c"dbline\00", align 1
@PL_vtbl_isa = external global %struct.mgvtbl, align 8
@.str.164 = private unnamed_addr constant [4 x i8] c"isa\00", align 1
@PL_vtbl_arylen = external global %struct.mgvtbl, align 8
@.str.165 = private unnamed_addr constant [7 x i8] c"arylen\00", align 1
@PL_vtbl_glob = external global %struct.mgvtbl, align 8
@.str.166 = private unnamed_addr constant [5 x i8] c"glob\00", align 1
@PL_vtbl_mglob = external global %struct.mgvtbl, align 8
@.str.167 = private unnamed_addr constant [6 x i8] c"mglob\00", align 1
@PL_vtbl_nkeys = external global %struct.mgvtbl, align 8
@.str.168 = private unnamed_addr constant [6 x i8] c"nkeys\00", align 1
@PL_vtbl_taint = external global %struct.mgvtbl, align 8
@.str.169 = private unnamed_addr constant [6 x i8] c"taint\00", align 1
@PL_vtbl_substr = external global %struct.mgvtbl, align 8
@.str.170 = private unnamed_addr constant [7 x i8] c"substr\00", align 1
@PL_vtbl_vec = external global %struct.mgvtbl, align 8
@.str.171 = private unnamed_addr constant [4 x i8] c"vec\00", align 1
@PL_vtbl_pos = external global %struct.mgvtbl, align 8
@.str.172 = private unnamed_addr constant [4 x i8] c"pos\00", align 1
@PL_vtbl_bm = external global %struct.mgvtbl, align 8
@.str.173 = private unnamed_addr constant [3 x i8] c"bm\00", align 1
@PL_vtbl_fm = external global %struct.mgvtbl, align 8
@.str.174 = private unnamed_addr constant [3 x i8] c"fm\00", align 1
@PL_vtbl_uvar = external global %struct.mgvtbl, align 8
@.str.175 = private unnamed_addr constant [5 x i8] c"uvar\00", align 1
@PL_vtbl_defelem = external global %struct.mgvtbl, align 8
@.str.176 = private unnamed_addr constant [8 x i8] c"defelem\00", align 1
@PL_vtbl_amagic = external global %struct.mgvtbl, align 8
@.str.177 = private unnamed_addr constant [7 x i8] c"amagic\00", align 1
@PL_vtbl_amagicelem = external global %struct.mgvtbl, align 8
@.str.178 = private unnamed_addr constant [11 x i8] c"amagicelem\00", align 1
@PL_vtbl_backref = external global %struct.mgvtbl, align 8
@.str.179 = private unnamed_addr constant [8 x i8] c"backref\00", align 1
@PL_vtbl_utf8 = external global %struct.mgvtbl, align 8
@.str.180 = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@.str.181 = private unnamed_addr constant [30 x i8] c"    MG_VIRTUAL = &PL_vtbl_%s\0A\00", align 1
@.str.182 = private unnamed_addr constant [24 x i8] c"    MG_VIRTUAL = 0x%lx\0A\00", align 1
@.str.183 = private unnamed_addr constant [20 x i8] c"    MG_VIRTUAL = 0\0A\00", align 1
@.str.184 = private unnamed_addr constant [21 x i8] c"    MG_PRIVATE = %d\0A\00", align 1
@magic_names = internal global [40 x %struct.anon] [%struct.anon { i8 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.378, i32 0, i32 0) }, %struct.anon { i8 35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.379, i32 0, i32 0) }, %struct.anon { i8 42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.380, i32 0, i32 0) }, %struct.anon { i8 46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.381, i32 0, i32 0) }, %struct.anon { i8 60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.382, i32 0, i32 0) }, %struct.anon { i8 65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.383, i32 0, i32 0) }, %struct.anon { i8 66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.384, i32 0, i32 0) }, %struct.anon { i8 68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.385, i32 0, i32 0) }, %struct.anon { i8 69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.386, i32 0, i32 0) }, %struct.anon { i8 73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.387, i32 0, i32 0) }, %struct.anon { i8 76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.388, i32 0, i32 0) }, %struct.anon { i8 78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.389, i32 0, i32 0) }, %struct.anon { i8 80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.390, i32 0, i32 0) }, %struct.anon { i8 83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.391, i32 0, i32 0) }, %struct.anon { i8 85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.392, i32 0, i32 0) }, %struct.anon { i8 97, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.393, i32 0, i32 0) }, %struct.anon { i8 99, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.394, i32 0, i32 0) }, %struct.anon { i8 100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.395, i32 0, i32 0) }, %struct.anon { i8 101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.396, i32 0, i32 0) }, %struct.anon { i8 102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.397, i32 0, i32 0) }, %struct.anon { i8 103, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.398, i32 0, i32 0) }, %struct.anon { i8 105, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.399, i32 0, i32 0) }, %struct.anon { i8 107, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.400, i32 0, i32 0) }, %struct.anon { i8 108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.401, i32 0, i32 0) }, %struct.anon { i8 109, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.402, i32 0, i32 0) }, %struct.anon { i8 110, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.403, i32 0, i32 0) }, %struct.anon { i8 111, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.404, i32 0, i32 0) }, %struct.anon { i8 112, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.405, i32 0, i32 0) }, %struct.anon { i8 113, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.406, i32 0, i32 0) }, %struct.anon { i8 114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.407, i32 0, i32 0) }, %struct.anon { i8 115, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.408, i32 0, i32 0) }, %struct.anon { i8 116, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.409, i32 0, i32 0) }, %struct.anon { i8 117, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.410, i32 0, i32 0) }, %struct.anon { i8 118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.411, i32 0, i32 0) }, %struct.anon { i8 86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.412, i32 0, i32 0) }, %struct.anon { i8 119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.413, i32 0, i32 0) }, %struct.anon { i8 120, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.414, i32 0, i32 0) }, %struct.anon { i8 121, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.415, i32 0, i32 0) }, %struct.anon { i8 126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.416, i32 0, i32 0) }, %struct.anon zeroinitializer], align 16
@.str.185 = private unnamed_addr constant [29 x i8] c"    MG_TYPE = PERL_MAGIC_%s\0A\00", align 1
@.str.186 = private unnamed_addr constant [28 x i8] c"    MG_TYPE = UNKNOWN(\5C%o)\0A\00", align 1
@.str.187 = private unnamed_addr constant [23 x i8] c"    MG_FLAGS = 0x%02X\0A\00", align 1
@.str.188 = private unnamed_addr constant [18 x i8] c"      TAINTEDDIR\0A\00", align 1
@.str.189 = private unnamed_addr constant [18 x i8] c"      REFCOUNTED\0A\00", align 1
@.str.190 = private unnamed_addr constant [13 x i8] c"      GSKIP\0A\00", align 1
@.str.191 = private unnamed_addr constant [16 x i8] c"      MINMATCH\0A\00", align 1
@.str.192 = private unnamed_addr constant [20 x i8] c"    MG_OBJ = 0x%lx\0A\00", align 1
@.str.193 = private unnamed_addr constant [18 x i8] c"    MG_LEN = %ld\0A\00", align 1
@.str.194 = private unnamed_addr constant [19 x i8] c"    MG_PTR = 0x%lx\00", align 1
@.str.195 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.196 = private unnamed_addr constant [15 x i8] c" => HEf_SVKEY\0A\00", align 1
@.str.197 = private unnamed_addr constant [25 x i8] c" ???? - please notify IZ\00", align 1
@.str.198 = private unnamed_addr constant [24 x i8] c"      %2ld: %lu -> %lu\0A\00", align 1
@.str.199 = private unnamed_addr constant [11 x i8] c"%s = 0x%lx\00", align 1
@.str.200 = private unnamed_addr constant [7 x i8] c"\09\22%s\22\0A\00", align 1
@.str.201 = private unnamed_addr constant [3 x i8] c"\09\22\00", align 1
@.str.202 = private unnamed_addr constant [9 x i8] c"%s\22 :: \22\00", align 1
@.str.203 = private unnamed_addr constant [5 x i8] c"%s\22\0A\00", align 1
@.str.204 = private unnamed_addr constant [8 x i8] c"SV = 0\0A\00", align 1
@.str.205 = private unnamed_addr constant [50 x i8] c"(0x%lx) at 0x%lx\0A%*s  REFCNT = %ld\0A%*s  FLAGS = (\00", align 1
@.str.206 = private unnamed_addr constant [9 x i8] c"PADBUSY,\00", align 1
@.str.207 = private unnamed_addr constant [8 x i8] c"PADTMP,\00", align 1
@.str.208 = private unnamed_addr constant [7 x i8] c"PADMY,\00", align 1
@.str.209 = private unnamed_addr constant [6 x i8] c"TEMP,\00", align 1
@.str.210 = private unnamed_addr constant [8 x i8] c"OBJECT,\00", align 1
@.str.211 = private unnamed_addr constant [5 x i8] c"GMG,\00", align 1
@.str.212 = private unnamed_addr constant [5 x i8] c"SMG,\00", align 1
@.str.213 = private unnamed_addr constant [5 x i8] c"RMG,\00", align 1
@.str.214 = private unnamed_addr constant [5 x i8] c"IOK,\00", align 1
@.str.215 = private unnamed_addr constant [5 x i8] c"NOK,\00", align 1
@.str.216 = private unnamed_addr constant [5 x i8] c"POK,\00", align 1
@.str.217 = private unnamed_addr constant [5 x i8] c"ROK,\00", align 1
@.str.218 = private unnamed_addr constant [9 x i8] c"WEAKREF,\00", align 1
@.str.219 = private unnamed_addr constant [5 x i8] c"OOK,\00", align 1
@.str.220 = private unnamed_addr constant [6 x i8] c"FAKE,\00", align 1
@.str.221 = private unnamed_addr constant [10 x i8] c"READONLY,\00", align 1
@.str.222 = private unnamed_addr constant [10 x i8] c"OVERLOAD,\00", align 1
@.str.223 = private unnamed_addr constant [6 x i8] c"pIOK,\00", align 1
@.str.224 = private unnamed_addr constant [6 x i8] c"pNOK,\00", align 1
@.str.225 = private unnamed_addr constant [6 x i8] c"pPOK,\00", align 1
@.str.226 = private unnamed_addr constant [8 x i8] c"SCREAM,\00", align 1
@.str.227 = private unnamed_addr constant [6 x i8] c"ANON,\00", align 1
@.str.228 = private unnamed_addr constant [8 x i8] c"UNIQUE,\00", align 1
@.str.229 = private unnamed_addr constant [7 x i8] c"CLONE,\00", align 1
@.str.230 = private unnamed_addr constant [8 x i8] c"CLONED,\00", align 1
@.str.231 = private unnamed_addr constant [7 x i8] c"CONST,\00", align 1
@.str.232 = private unnamed_addr constant [9 x i8] c"NODEBUG,\00", align 1
@.str.233 = private unnamed_addr constant [10 x i8] c"COMPILED,\00", align 1
@.str.234 = private unnamed_addr constant [8 x i8] c"LVALUE,\00", align 1
@.str.235 = private unnamed_addr constant [8 x i8] c"METHOD,\00", align 1
@.str.236 = private unnamed_addr constant [8 x i8] c"LOCKED,\00", align 1
@.str.237 = private unnamed_addr constant [13 x i8] c"WEAKOUTSIDE,\00", align 1
@.str.238 = private unnamed_addr constant [11 x i8] c"SHAREKEYS,\00", align 1
@.str.239 = private unnamed_addr constant [9 x i8] c"LAZYDEL,\00", align 1
@.str.240 = private unnamed_addr constant [11 x i8] c"HASKFLAGS,\00", align 1
@.str.241 = private unnamed_addr constant [8 x i8] c"REHASH,\00", align 1
@.str.242 = private unnamed_addr constant [11 x i8] c"CLONEABLE,\00", align 1
@.str.243 = private unnamed_addr constant [7 x i8] c"INTRO,\00", align 1
@.str.244 = private unnamed_addr constant [7 x i8] c"MULTI,\00", align 1
@.str.245 = private unnamed_addr constant [10 x i8] c"ASSUMECV,\00", align 1
@.str.246 = private unnamed_addr constant [8 x i8] c"IN_PAD,\00", align 1
@.str.247 = private unnamed_addr constant [5 x i8] c"OUR,\00", align 1
@.str.248 = private unnamed_addr constant [7 x i8] c"IMPORT\00", align 1
@.str.249 = private unnamed_addr constant [5 x i8] c"ALL,\00", align 1
@.str.250 = private unnamed_addr constant [4 x i8] c" SV\00", align 1
@.str.251 = private unnamed_addr constant [4 x i8] c" AV\00", align 1
@.str.252 = private unnamed_addr constant [4 x i8] c" HV\00", align 1
@.str.253 = private unnamed_addr constant [4 x i8] c" CV\00", align 1
@.str.254 = private unnamed_addr constant [4 x i8] c" ),\00", align 1
@.str.255 = private unnamed_addr constant [8 x i8] c"EVALED,\00", align 1
@.str.256 = private unnamed_addr constant [6 x i8] c"IsUV,\00", align 1
@.str.257 = private unnamed_addr constant [6 x i8] c"TAIL,\00", align 1
@.str.258 = private unnamed_addr constant [7 x i8] c"VALID,\00", align 1
@.str.259 = private unnamed_addr constant [7 x i8] c"TYPED,\00", align 1
@.str.260 = private unnamed_addr constant [5 x i8] c"UTF8\00", align 1
@.str.261 = private unnamed_addr constant [6 x i8] c"SV = \00", align 1
@.str.262 = private unnamed_addr constant [8 x i8] c"NULL%s\0A\00", align 1
@.str.263 = private unnamed_addr constant [6 x i8] c"IV%s\0A\00", align 1
@.str.264 = private unnamed_addr constant [6 x i8] c"NV%s\0A\00", align 1
@.str.265 = private unnamed_addr constant [6 x i8] c"RV%s\0A\00", align 1
@.str.266 = private unnamed_addr constant [6 x i8] c"PV%s\0A\00", align 1
@.str.267 = private unnamed_addr constant [8 x i8] c"PVIV%s\0A\00", align 1
@.str.268 = private unnamed_addr constant [8 x i8] c"PVNV%s\0A\00", align 1
@.str.269 = private unnamed_addr constant [8 x i8] c"PVBM%s\0A\00", align 1
@.str.270 = private unnamed_addr constant [8 x i8] c"PVMG%s\0A\00", align 1
@.str.271 = private unnamed_addr constant [8 x i8] c"PVLV%s\0A\00", align 1
@.str.272 = private unnamed_addr constant [8 x i8] c"PVAV%s\0A\00", align 1
@.str.273 = private unnamed_addr constant [8 x i8] c"PVHV%s\0A\00", align 1
@.str.274 = private unnamed_addr constant [8 x i8] c"PVCV%s\0A\00", align 1
@.str.275 = private unnamed_addr constant [8 x i8] c"PVGV%s\0A\00", align 1
@.str.276 = private unnamed_addr constant [8 x i8] c"PVFM%s\0A\00", align 1
@.str.277 = private unnamed_addr constant [8 x i8] c"PVIO%s\0A\00", align 1
@.str.278 = private unnamed_addr constant [19 x i8] c"UNKNOWN(0x%lx) %s\0A\00", align 1
@.str.279 = private unnamed_addr constant [11 x i8] c"  UV = %lu\00", align 1
@.str.280 = private unnamed_addr constant [11 x i8] c"  IV = %ld\00", align 1
@.str.281 = private unnamed_addr constant [11 x i8] c"  (OFFSET)\00", align 1
@.str.282 = private unnamed_addr constant [13 x i8] c"  NV = %.*g\0A\00", align 1
@.str.283 = private unnamed_addr constant [14 x i8] c"  RV = 0x%lx\0A\00", align 1
@.str.284 = private unnamed_addr constant [14 x i8] c"  PV = 0x%lx \00", align 1
@.str.285 = private unnamed_addr constant [10 x i8] c"( %s . ) \00", align 1
@.str.286 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.287 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.288 = private unnamed_addr constant [13 x i8] c"  CUR = %ld\0A\00", align 1
@.str.289 = private unnamed_addr constant [13 x i8] c"  LEN = %ld\0A\00", align 1
@.str.290 = private unnamed_addr constant [10 x i8] c"  PV = 0\0A\00", align 1
@.str.291 = private unnamed_addr constant [8 x i8] c"  STASH\00", align 1
@.str.292 = private unnamed_addr constant [13 x i8] c"  TYPE = %c\0A\00", align 1
@.str.293 = private unnamed_addr constant [17 x i8] c"  TARGOFF = %ld\0A\00", align 1
@.str.294 = private unnamed_addr constant [17 x i8] c"  TARGLEN = %ld\0A\00", align 1
@.str.295 = private unnamed_addr constant [16 x i8] c"  TARG = 0x%lx\0A\00", align 1
@.str.296 = private unnamed_addr constant [16 x i8] c"  ARRAY = 0x%lx\00", align 1
@.str.297 = private unnamed_addr constant [15 x i8] c" (offset=%ld)\0A\00", align 1
@.str.298 = private unnamed_addr constant [17 x i8] c"  ALLOC = 0x%lx\0A\00", align 1
@.str.299 = private unnamed_addr constant [14 x i8] c"  FILL = %ld\0A\00", align 1
@.str.300 = private unnamed_addr constant [13 x i8] c"  MAX = %ld\0A\00", align 1
@.str.301 = private unnamed_addr constant [18 x i8] c"  ARYLEN = 0x%lx\0A\00", align 1
@.str.302 = private unnamed_addr constant [6 x i8] c",REAL\00", align 1
@.str.303 = private unnamed_addr constant [7 x i8] c",REIFY\00", align 1
@.str.304 = private unnamed_addr constant [8 x i8] c",REUSED\00", align 1
@.str.305 = private unnamed_addr constant [16 x i8] c"  FLAGS = (%s)\0A\00", align 1
@.str.306 = private unnamed_addr constant [13 x i8] c"Elt No. %ld\0A\00", align 1
@.str.307 = private unnamed_addr constant [4 x i8] c"  (\00", align 1
@.str.308 = private unnamed_addr constant [8 x i8] c"%d%s:%d\00", align 1
@.str.309 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.310 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.311 = private unnamed_addr constant [24 x i8] c"  hash quality = %.1f%%\00", align 1
@.str.312 = private unnamed_addr constant [14 x i8] c"  KEYS = %ld\0A\00", align 1
@.str.313 = private unnamed_addr constant [15 x i8] c"  RITER = %ld\0A\00", align 1
@.str.314 = private unnamed_addr constant [17 x i8] c"  EITER = 0x%lx\0A\00", align 1
@.str.315 = private unnamed_addr constant [18 x i8] c"  PMROOT = 0x%lx\0A\00", align 1
@.str.316 = private unnamed_addr constant [15 x i8] c"  NAME = \22%s\22\0A\00", align 1
@.str.317 = private unnamed_addr constant [8 x i8] c"Elt %s \00", align 1
@.str.318 = private unnamed_addr constant [13 x i8] c"[UTF8 \22%s\22] \00", align 1
@.str.319 = private unnamed_addr constant [10 x i8] c"[REHASH] \00", align 1
@.str.320 = private unnamed_addr constant [14 x i8] c"HASH = 0x%lx\0A\00", align 1
@.str.321 = private unnamed_addr constant [20 x i8] c"  PROTOTYPE = \22%s\22\0A\00", align 1
@.str.322 = private unnamed_addr constant [13 x i8] c"  COMP_STASH\00", align 1
@.str.323 = private unnamed_addr constant [26 x i8] c"  START = 0x%lx ===> %ld\0A\00", align 1
@.str.324 = private unnamed_addr constant [16 x i8] c"  ROOT = 0x%lx\0A\00", align 1
@.str.325 = private unnamed_addr constant [16 x i8] c"  XSUB = 0x%lx\0A\00", align 1
@.str.326 = private unnamed_addr constant [17 x i8] c"  XSUBANY = %ld\0A\00", align 1
@.str.327 = private unnamed_addr constant [11 x i8] c"  GVGV::GV\00", align 1
@.str.328 = private unnamed_addr constant [15 x i8] c"  FILE = \22%s\22\0A\00", align 1
@.str.329 = private unnamed_addr constant [15 x i8] c"  DEPTH = %ld\0A\00", align 1
@.str.330 = private unnamed_addr constant [17 x i8] c"  FLAGS = 0x%lx\0A\00", align 1
@.str.331 = private unnamed_addr constant [21 x i8] c"  OUTSIDE_SEQ = %lu\0A\00", align 1
@.str.332 = private unnamed_addr constant [15 x i8] c"  LINES = %ld\0A\00", align 1
@.str.333 = private unnamed_addr constant [19 x i8] c"  PADLIST = 0x%lx\0A\00", align 1
@.str.334 = private unnamed_addr constant [24 x i8] c"  OUTSIDE = 0x%lx (%s)\0A\00", align 1
@.str.335 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.336 = private unnamed_addr constant [5 x i8] c"ANON\00", align 1
@PL_main_cv = external global %struct.cv*, align 8
@.str.337 = private unnamed_addr constant [5 x i8] c"MAIN\00", align 1
@.str.338 = private unnamed_addr constant [7 x i8] c"UNIQUE\00", align 1
@.str.339 = private unnamed_addr constant [10 x i8] c"UNDEFINED\00", align 1
@.str.340 = private unnamed_addr constant [17 x i8] c"  NAMELEN = %ld\0A\00", align 1
@.str.341 = private unnamed_addr constant [10 x i8] c"  GvSTASH\00", align 1
@.str.342 = private unnamed_addr constant [14 x i8] c"  GP = 0x%lx\0A\00", align 1
@.str.343 = private unnamed_addr constant [16 x i8] c"    SV = 0x%lx\0A\00", align 1
@.str.344 = private unnamed_addr constant [18 x i8] c"    REFCNT = %ld\0A\00", align 1
@.str.345 = private unnamed_addr constant [16 x i8] c"    IO = 0x%lx\0A\00", align 1
@.str.346 = private unnamed_addr constant [20 x i8] c"    FORM = 0x%lx  \0A\00", align 1
@.str.347 = private unnamed_addr constant [16 x i8] c"    AV = 0x%lx\0A\00", align 1
@.str.348 = private unnamed_addr constant [16 x i8] c"    HV = 0x%lx\0A\00", align 1
@.str.349 = private unnamed_addr constant [16 x i8] c"    CV = 0x%lx\0A\00", align 1
@.str.350 = private unnamed_addr constant [19 x i8] c"    CVGEN = 0x%lx\0A\00", align 1
@.str.351 = private unnamed_addr constant [21 x i8] c"    GPFLAGS = 0x%lx\0A\00", align 1
@.str.352 = private unnamed_addr constant [16 x i8] c"    LINE = %ld\0A\00", align 1
@.str.353 = private unnamed_addr constant [17 x i8] c"    FILE = \22%s\22\0A\00", align 1
@.str.354 = private unnamed_addr constant [19 x i8] c"    FLAGS = 0x%lx\0A\00", align 1
@.str.355 = private unnamed_addr constant [8 x i8] c"    EGV\00", align 1
@.str.356 = private unnamed_addr constant [15 x i8] c"  IFP = 0x%lx\0A\00", align 1
@.str.357 = private unnamed_addr constant [15 x i8] c"  OFP = 0x%lx\0A\00", align 1
@.str.358 = private unnamed_addr constant [16 x i8] c"  DIRP = 0x%lx\0A\00", align 1
@.str.359 = private unnamed_addr constant [14 x i8] c"  PAGE = %ld\0A\00", align 1
@.str.360 = private unnamed_addr constant [18 x i8] c"  PAGE_LEN = %ld\0A\00", align 1
@.str.361 = private unnamed_addr constant [20 x i8] c"  LINES_LEFT = %ld\0A\00", align 1
@.str.362 = private unnamed_addr constant [19 x i8] c"  TOP_NAME = \22%s\22\0A\00", align 1
@.str.363 = private unnamed_addr constant [9 x i8] c"  TOP_GV\00", align 1
@.str.364 = private unnamed_addr constant [19 x i8] c"  FMT_NAME = \22%s\22\0A\00", align 1
@.str.365 = private unnamed_addr constant [9 x i8] c"  FMT_GV\00", align 1
@.str.366 = private unnamed_addr constant [22 x i8] c"  BOTTOM_NAME = \22%s\22\0A\00", align 1
@.str.367 = private unnamed_addr constant [12 x i8] c"  BOTTOM_GV\00", align 1
@.str.368 = private unnamed_addr constant [20 x i8] c"  SUBPROCESS = %ld\0A\00", align 1
@.str.369 = private unnamed_addr constant [15 x i8] c"  TYPE = '%c'\0A\00", align 1
@.str.370 = private unnamed_addr constant [16 x i8] c"  TYPE = '\5C%o'\0A\00", align 1
@PL_curcop = external global %struct.cop*, align 8
@.str.371 = private unnamed_addr constant [15 x i8] c"NULL OP IN RUN\00", align 1
@PL_sig_pending = external global i32, align 4
@PL_watchaddr = external global i8**, align 8
@PL_watchok = external global i8*, align 8
@.str.372 = private unnamed_addr constant [38 x i8] c"WARNING: %lx changed from %lx to %lx\0A\00", align 1
@PL_tainted = external global i8, align 1
@PL_debstash = external global %struct.hv*, align 8
@.str.373 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@.str.374 = private unnamed_addr constant [7 x i8] c"(NULL)\00", align 1
@PL_curstackinfo = external global %struct.stackinfo*, align 8
@.str.375 = private unnamed_addr constant [6 x i8] c"[%lu]\00", align 1
@.str.376 = private unnamed_addr constant [32 x i8] c"WATCHING, %lx is currently %lx\0A\00", align 1
@PL_profiledata = external global i32*, align 8
@.str.377 = private unnamed_addr constant [9 x i8] c"%5lu %s\0A\00", align 1
@.str.378 = private unnamed_addr constant [7 x i8] c"sv(\5C0)\00", align 1
@.str.379 = private unnamed_addr constant [10 x i8] c"arylen(#)\00", align 1
@.str.380 = private unnamed_addr constant [8 x i8] c"glob(*)\00", align 1
@.str.381 = private unnamed_addr constant [7 x i8] c"pos(.)\00", align 1
@.str.382 = private unnamed_addr constant [11 x i8] c"backref(<)\00", align 1
@.str.383 = private unnamed_addr constant [12 x i8] c"overload(A)\00", align 1
@.str.384 = private unnamed_addr constant [6 x i8] c"bm(B)\00", align 1
@.str.385 = private unnamed_addr constant [11 x i8] c"regdata(D)\00", align 1
@.str.386 = private unnamed_addr constant [7 x i8] c"env(E)\00", align 1
@.str.387 = private unnamed_addr constant [7 x i8] c"isa(I)\00", align 1
@.str.388 = private unnamed_addr constant [10 x i8] c"dbfile(L)\00", align 1
@.str.389 = private unnamed_addr constant [10 x i8] c"shared(N)\00", align 1
@.str.390 = private unnamed_addr constant [8 x i8] c"tied(P)\00", align 1
@.str.391 = private unnamed_addr constant [7 x i8] c"sig(S)\00", align 1
@.str.392 = private unnamed_addr constant [8 x i8] c"uvar(U)\00", align 1
@.str.393 = private unnamed_addr constant [17 x i8] c"overload_elem(a)\00", align 1
@.str.394 = private unnamed_addr constant [18 x i8] c"overload_table(c)\00", align 1
@.str.395 = private unnamed_addr constant [12 x i8] c"regdatum(d)\00", align 1
@.str.396 = private unnamed_addr constant [11 x i8] c"envelem(e)\00", align 1
@.str.397 = private unnamed_addr constant [6 x i8] c"fm(f)\00", align 1
@.str.398 = private unnamed_addr constant [16 x i8] c"regex_global(g)\00", align 1
@.str.399 = private unnamed_addr constant [11 x i8] c"isaelem(i)\00", align 1
@.str.400 = private unnamed_addr constant [9 x i8] c"nkeys(k)\00", align 1
@.str.401 = private unnamed_addr constant [10 x i8] c"dbline(l)\00", align 1
@.str.402 = private unnamed_addr constant [9 x i8] c"mutex(m)\00", align 1
@.str.403 = private unnamed_addr constant [17 x i8] c"shared_scalar(n)\00", align 1
@.str.404 = private unnamed_addr constant [12 x i8] c"collxfrm(o)\00", align 1
@.str.405 = private unnamed_addr constant [12 x i8] c"tiedelem(p)\00", align 1
@.str.406 = private unnamed_addr constant [14 x i8] c"tiedscalar(q)\00", align 1
@.str.407 = private unnamed_addr constant [6 x i8] c"qr(r)\00", align 1
@.str.408 = private unnamed_addr constant [11 x i8] c"sigelem(s)\00", align 1
@.str.409 = private unnamed_addr constant [9 x i8] c"taint(t)\00", align 1
@.str.410 = private unnamed_addr constant [13 x i8] c"uvar_elem(v)\00", align 1
@.str.411 = private unnamed_addr constant [7 x i8] c"vec(v)\00", align 1
@.str.412 = private unnamed_addr constant [12 x i8] c"v-string(V)\00", align 1
@.str.413 = private unnamed_addr constant [8 x i8] c"utf8(w)\00", align 1
@.str.414 = private unnamed_addr constant [10 x i8] c"substr(x)\00", align 1
@.str.415 = private unnamed_addr constant [11 x i8] c"defelem(y)\00", align 1
@.str.416 = private unnamed_addr constant [7 x i8] c"ext(~)\00", align 1
@PL_compcv = external global %struct.cv*, align 8

; Function Attrs: nounwind uwtable
define void @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* %pat, ...) #0 {
entry:
  %level.addr = alloca i32, align 4
  %file.addr = alloca %struct._PerlIO**, align 8
  %pat.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %level, i32* %level.addr, align 4
  store %struct._PerlIO** %file, %struct._PerlIO*** %file.addr, align 8
  store i8* %pat, i8** %pat.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i32, i32* %level.addr, align 4
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %2 = load i8*, i8** %pat.addr, align 8
  call void @Perl_dump_vindent(i32 %0, %struct._PerlIO** %1, i8* %2, [1 x %struct.__va_list_tag]* %args)
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay23 = bitcast %struct.__va_list_tag* %arraydecay2 to i8*
  call void @llvm.va_end(i8* %arraydecay23)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind uwtable
define void @Perl_dump_vindent(i32 %level, %struct._PerlIO** %file, i8* %pat, [1 x %struct.__va_list_tag]* %args) #0 {
entry:
  %level.addr = alloca i32, align 4
  %file.addr = alloca %struct._PerlIO**, align 8
  %pat.addr = alloca i8*, align 8
  %args.addr = alloca [1 x %struct.__va_list_tag]*, align 8
  store i32 %level, i32* %level.addr, align 4
  store %struct._PerlIO** %file, %struct._PerlIO*** %file.addr, align 8
  store i8* %pat, i8** %pat.addr, align 8
  store [1 x %struct.__va_list_tag]* %args, [1 x %struct.__va_list_tag]** %args.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %1 = load i32, i32* %level.addr, align 4
  %2 = load i32, i32* @PL_dumpindent, align 4
  %mul = mul nsw i32 %1, %2
  %call = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %mul, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0))
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %4 = load i8*, i8** %pat.addr, align 8
  %5 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0
  %call1 = call i32 @PerlIO_vprintf(%struct._PerlIO** %3, i8* %4, %struct.__va_list_tag* %arraydecay)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

declare i32 @PerlIO_printf(%struct._PerlIO**, i8*, ...) #2

declare i32 @PerlIO_vprintf(%struct._PerlIO**, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind uwtable
define void @Perl_dump_all() #0 {
entry:
  %call = call %struct._PerlIO** @Perl_PerlIO_stderr()
  call void @Perl_PerlIO_setlinebuf(%struct._PerlIO** %call)
  %0 = load %struct.op*, %struct.op** @PL_main_root, align 8
  %tobool = icmp ne %struct.op* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.op*, %struct.op** @PL_main_root, align 8
  call void @Perl_op_dump(%struct.op* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.hv*, %struct.hv** @PL_defstash, align 8
  call void @Perl_dump_packsubs(%struct.hv* %2)
  ret void
}

declare void @Perl_PerlIO_setlinebuf(%struct._PerlIO**) #2

declare %struct._PerlIO** @Perl_PerlIO_stderr() #2

; Function Attrs: nounwind uwtable
define void @Perl_op_dump(%struct.op* %o) #0 {
entry:
  %o.addr = alloca %struct.op*, align 8
  store %struct.op* %o, %struct.op** %o.addr, align 8
  %call = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %0 = load %struct.op*, %struct.op** %o.addr, align 8
  call void @Perl_do_op_dump(i32 0, %struct._PerlIO** %call, %struct.op* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_dump_packsubs(%struct.hv* %stash) #0 {
entry:
  %stash.addr = alloca %struct.hv*, align 8
  %i = alloca i32, align 4
  %entry1 = alloca %struct.he*, align 8
  %gv = alloca %struct.gv*, align 8
  %hv = alloca %struct.hv*, align 8
  store %struct.hv* %stash, %struct.hv** %stash.addr, align 8
  %0 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %sv_any = getelementptr inbounds %struct.hv, %struct.hv* %0, i32 0, i32 0
  %1 = load %struct.xpvhv*, %struct.xpvhv** %sv_any, align 8
  %xhv_array = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %1, i32 0, i32 0
  %2 = bitcast i8** %xhv_array to %struct.he***
  %3 = load %struct.he**, %struct.he*** %2, align 8
  %tobool = icmp ne %struct.he** %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %for.end.43

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.42, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %sv_any2 = getelementptr inbounds %struct.hv, %struct.hv* %5, i32 0, i32 0
  %6 = load %struct.xpvhv*, %struct.xpvhv** %sv_any2, align 8
  %xhv_max = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %6, i32 0, i32 2
  %7 = load i64, i64* %xhv_max, align 8
  %conv = trunc i64 %7 to i32
  %cmp = icmp sle i32 %4, %conv
  br i1 %cmp, label %for.body, label %for.end.43

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %sv_any4 = getelementptr inbounds %struct.hv, %struct.hv* %9, i32 0, i32 0
  %10 = load %struct.xpvhv*, %struct.xpvhv** %sv_any4, align 8
  %xhv_array5 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %10, i32 0, i32 0
  %11 = bitcast i8** %xhv_array5 to %struct.he***
  %12 = load %struct.he**, %struct.he*** %11, align 8
  %arrayidx = getelementptr inbounds %struct.he*, %struct.he** %12, i64 %idxprom
  %13 = load %struct.he*, %struct.he** %arrayidx, align 8
  store %struct.he* %13, %struct.he** %entry1, align 8
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %14 = load %struct.he*, %struct.he** %entry1, align 8
  %tobool7 = icmp ne %struct.he* %14, null
  br i1 %tobool7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %15 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_val = getelementptr inbounds %struct.he, %struct.he* %15, i32 0, i32 2
  %16 = load %struct.sv*, %struct.sv** %hent_val, align 8
  %17 = bitcast %struct.sv* %16 to %struct.gv*
  store %struct.gv* %17, %struct.gv** %gv, align 8
  %18 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_flags = getelementptr inbounds %struct.gv, %struct.gv* %18, i32 0, i32 2
  %19 = load i32, i32* %sv_flags, align 4
  %and = and i32 %19, 255
  %cmp9 = icmp ne i32 %and, 13
  br i1 %cmp9, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.8
  %20 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any11 = getelementptr inbounds %struct.gv, %struct.gv* %20, i32 0, i32 0
  %21 = load %struct.xpvgv*, %struct.xpvgv** %sv_any11, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %21, i32 0, i32 7
  %22 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %tobool12 = icmp ne %struct.gp* %22, null
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %lor.lhs.false, %for.body.8
  br label %for.inc

if.end.14:                                        ; preds = %lor.lhs.false
  %23 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any15 = getelementptr inbounds %struct.gv, %struct.gv* %23, i32 0, i32 0
  %24 = load %struct.xpvgv*, %struct.xpvgv** %sv_any15, align 8
  %xgv_gp16 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %24, i32 0, i32 7
  %25 = load %struct.gp*, %struct.gp** %xgv_gp16, align 8
  %gp_cvgen = getelementptr inbounds %struct.gp, %struct.gp* %25, i32 0, i32 8
  %26 = load i32, i32* %gp_cvgen, align 4
  %tobool17 = icmp ne i32 %26, 0
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.14
  br i1 false, label %if.then.21, label %if.end.22

cond.false:                                       ; preds = %if.end.14
  %27 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any18 = getelementptr inbounds %struct.gv, %struct.gv* %27, i32 0, i32 0
  %28 = load %struct.xpvgv*, %struct.xpvgv** %sv_any18, align 8
  %xgv_gp19 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %28, i32 0, i32 7
  %29 = load %struct.gp*, %struct.gp** %xgv_gp19, align 8
  %gp_cv = getelementptr inbounds %struct.gp, %struct.gp* %29, i32 0, i32 7
  %30 = load %struct.cv*, %struct.cv** %gp_cv, align 8
  %tobool20 = icmp ne %struct.cv* %30, null
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %cond.false, %cond.true
  %31 = load %struct.gv*, %struct.gv** %gv, align 8
  call void @Perl_dump_sub(%struct.gv* %31)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %cond.false, %cond.true
  %32 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any23 = getelementptr inbounds %struct.gv, %struct.gv* %32, i32 0, i32 0
  %33 = load %struct.xpvgv*, %struct.xpvgv** %sv_any23, align 8
  %xgv_gp24 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %33, i32 0, i32 7
  %34 = load %struct.gp*, %struct.gp** %xgv_gp24, align 8
  %gp_form = getelementptr inbounds %struct.gp, %struct.gp* %34, i32 0, i32 3
  %35 = load %struct.cv*, %struct.cv** %gp_form, align 8
  %tobool25 = icmp ne %struct.cv* %35, null
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.22
  %36 = load %struct.gv*, %struct.gv** %gv, align 8
  call void @Perl_dump_form(%struct.gv* %36)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.22
  %37 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek = getelementptr inbounds %struct.he, %struct.he* %37, i32 0, i32 1
  %38 = load %struct.hek*, %struct.hek** %hent_hek, align 8
  %hek_len = getelementptr inbounds %struct.hek, %struct.hek* %38, i32 0, i32 1
  %39 = load i32, i32* %hek_len, align 4
  %sub = sub nsw i32 %39, 1
  %idxprom28 = sext i32 %sub to i64
  %40 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek29 = getelementptr inbounds %struct.he, %struct.he* %40, i32 0, i32 1
  %41 = load %struct.hek*, %struct.hek** %hent_hek29, align 8
  %hek_key = getelementptr inbounds %struct.hek, %struct.hek* %41, i32 0, i32 2
  %arrayidx30 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key, i32 0, i64 %idxprom28
  %42 = load i8, i8* %arrayidx30, align 1
  %conv31 = sext i8 %42 to i32
  %cmp32 = icmp eq i32 %conv31, 58
  br i1 %cmp32, label %land.lhs.true, label %if.end.41

land.lhs.true:                                    ; preds = %if.end.27
  %43 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any34 = getelementptr inbounds %struct.gv, %struct.gv* %43, i32 0, i32 0
  %44 = load %struct.xpvgv*, %struct.xpvgv** %sv_any34, align 8
  %xgv_gp35 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %44, i32 0, i32 7
  %45 = load %struct.gp*, %struct.gp** %xgv_gp35, align 8
  %gp_hv = getelementptr inbounds %struct.gp, %struct.gp* %45, i32 0, i32 5
  %46 = load %struct.hv*, %struct.hv** %gp_hv, align 8
  store %struct.hv* %46, %struct.hv** %hv, align 8
  %tobool36 = icmp ne %struct.hv* %46, null
  br i1 %tobool36, label %land.lhs.true.37, label %if.end.41

land.lhs.true.37:                                 ; preds = %land.lhs.true
  %47 = load %struct.hv*, %struct.hv** %hv, align 8
  %48 = load %struct.hv*, %struct.hv** @PL_defstash, align 8
  %cmp38 = icmp ne %struct.hv* %47, %48
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %land.lhs.true.37
  %49 = load %struct.hv*, %struct.hv** %hv, align 8
  call void @Perl_dump_packsubs(%struct.hv* %49)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %land.lhs.true.37, %land.lhs.true, %if.end.27
  br label %for.inc

for.inc:                                          ; preds = %if.end.41, %if.then.13
  %50 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_next = getelementptr inbounds %struct.he, %struct.he* %50, i32 0, i32 0
  %51 = load %struct.he*, %struct.he** %hent_next, align 8
  store %struct.he* %51, %struct.he** %entry1, align 8
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.end
  %52 = load i32, i32* %i, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.43:                                       ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_dump_sub(%struct.gv* %gv) #0 {
entry:
  %gv.addr = alloca %struct.gv*, align 8
  %sv = alloca %struct.sv*, align 8
  store %struct.gv* %gv, %struct.gv** %gv.addr, align 8
  %call = call %struct.sv* @Perl_sv_newmortal()
  store %struct.sv* %call, %struct.sv** %sv, align 8
  %0 = load %struct.sv*, %struct.sv** %sv, align 8
  %1 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  call void @Perl_gv_fullname4(%struct.sv* %0, %struct.gv* %1, i8* null, i8 signext 1)
  %call1 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %2 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 0
  %3 = load i8*, i8** %sv_any, align 8
  %4 = bitcast i8* %3 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %4, i32 0, i32 0
  %5 = load i8*, i8** %xpv_pv, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 0, %struct._PerlIO** %call1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* %5)
  %6 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any2 = getelementptr inbounds %struct.gv, %struct.gv* %6, i32 0, i32 0
  %7 = load %struct.xpvgv*, %struct.xpvgv** %sv_any2, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %7, i32 0, i32 7
  %8 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_cv = getelementptr inbounds %struct.gp, %struct.gp* %8, i32 0, i32 7
  %9 = load %struct.cv*, %struct.cv** %gp_cv, align 8
  %sv_any3 = getelementptr inbounds %struct.cv, %struct.cv* %9, i32 0, i32 0
  %10 = load %struct.xpvcv*, %struct.xpvcv** %sv_any3, align 8
  %xcv_xsub = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %10, i32 0, i32 10
  %11 = load void (%struct.cv*)*, void (%struct.cv*)** %xcv_xsub, align 8
  %tobool = icmp ne void (%struct.cv*)* %11, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call4 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %12 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any5 = getelementptr inbounds %struct.gv, %struct.gv* %12, i32 0, i32 0
  %13 = load %struct.xpvgv*, %struct.xpvgv** %sv_any5, align 8
  %xgv_gp6 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %13, i32 0, i32 7
  %14 = load %struct.gp*, %struct.gp** %xgv_gp6, align 8
  %gp_cv7 = getelementptr inbounds %struct.gp, %struct.gp* %14, i32 0, i32 7
  %15 = load %struct.cv*, %struct.cv** %gp_cv7, align 8
  %sv_any8 = getelementptr inbounds %struct.cv, %struct.cv* %15, i32 0, i32 0
  %16 = load %struct.xpvcv*, %struct.xpvcv** %sv_any8, align 8
  %xcv_xsub9 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %16, i32 0, i32 10
  %17 = load void (%struct.cv*)*, void (%struct.cv*)** %xcv_xsub9, align 8
  %18 = ptrtoint void (%struct.cv*)* %17 to i64
  %19 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any10 = getelementptr inbounds %struct.gv, %struct.gv* %19, i32 0, i32 0
  %20 = load %struct.xpvgv*, %struct.xpvgv** %sv_any10, align 8
  %xgv_gp11 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %20, i32 0, i32 7
  %21 = load %struct.gp*, %struct.gp** %xgv_gp11, align 8
  %gp_cv12 = getelementptr inbounds %struct.gp, %struct.gp* %21, i32 0, i32 7
  %22 = load %struct.cv*, %struct.cv** %gp_cv12, align 8
  %sv_any13 = getelementptr inbounds %struct.cv, %struct.cv* %22, i32 0, i32 0
  %23 = load %struct.xpvcv*, %struct.xpvcv** %sv_any13, align 8
  %xcv_xsubany = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %23, i32 0, i32 11
  %any_i32 = bitcast %union.any* %xcv_xsubany to i32*
  %24 = load i32, i32* %any_i32, align 4
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 0, %struct._PerlIO** %call4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i64 %18, i32 %24)
  br label %if.end.27

if.else:                                          ; preds = %entry
  %25 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any14 = getelementptr inbounds %struct.gv, %struct.gv* %25, i32 0, i32 0
  %26 = load %struct.xpvgv*, %struct.xpvgv** %sv_any14, align 8
  %xgv_gp15 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %26, i32 0, i32 7
  %27 = load %struct.gp*, %struct.gp** %xgv_gp15, align 8
  %gp_cv16 = getelementptr inbounds %struct.gp, %struct.gp* %27, i32 0, i32 7
  %28 = load %struct.cv*, %struct.cv** %gp_cv16, align 8
  %sv_any17 = getelementptr inbounds %struct.cv, %struct.cv* %28, i32 0, i32 0
  %29 = load %struct.xpvcv*, %struct.xpvcv** %sv_any17, align 8
  %xcv_root = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %29, i32 0, i32 9
  %30 = load %struct.op*, %struct.op** %xcv_root, align 8
  %tobool18 = icmp ne %struct.op* %30, null
  br i1 %tobool18, label %if.then.19, label %if.else.25

if.then.19:                                       ; preds = %if.else
  %31 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any20 = getelementptr inbounds %struct.gv, %struct.gv* %31, i32 0, i32 0
  %32 = load %struct.xpvgv*, %struct.xpvgv** %sv_any20, align 8
  %xgv_gp21 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %32, i32 0, i32 7
  %33 = load %struct.gp*, %struct.gp** %xgv_gp21, align 8
  %gp_cv22 = getelementptr inbounds %struct.gp, %struct.gp* %33, i32 0, i32 7
  %34 = load %struct.cv*, %struct.cv** %gp_cv22, align 8
  %sv_any23 = getelementptr inbounds %struct.cv, %struct.cv* %34, i32 0, i32 0
  %35 = load %struct.xpvcv*, %struct.xpvcv** %sv_any23, align 8
  %xcv_root24 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %35, i32 0, i32 9
  %36 = load %struct.op*, %struct.op** %xcv_root24, align 8
  call void @Perl_op_dump(%struct.op* %36)
  br label %if.end

if.else.25:                                       ; preds = %if.else
  %call26 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 0, %struct._PerlIO** %call26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else.25, %if.then.19
  br label %if.end.27

if.end.27:                                        ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_dump_form(%struct.gv* %gv) #0 {
entry:
  %gv.addr = alloca %struct.gv*, align 8
  %sv = alloca %struct.sv*, align 8
  store %struct.gv* %gv, %struct.gv** %gv.addr, align 8
  %call = call %struct.sv* @Perl_sv_newmortal()
  store %struct.sv* %call, %struct.sv** %sv, align 8
  %0 = load %struct.sv*, %struct.sv** %sv, align 8
  %1 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  call void @Perl_gv_fullname4(%struct.sv* %0, %struct.gv* %1, i8* null, i8 signext 1)
  %call1 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %2 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 0
  %3 = load i8*, i8** %sv_any, align 8
  %4 = bitcast i8* %3 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %4, i32 0, i32 0
  %5 = load i8*, i8** %xpv_pv, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 0, %struct._PerlIO** %call1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* %5)
  %6 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any2 = getelementptr inbounds %struct.gv, %struct.gv* %6, i32 0, i32 0
  %7 = load %struct.xpvgv*, %struct.xpvgv** %sv_any2, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %7, i32 0, i32 7
  %8 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_form = getelementptr inbounds %struct.gp, %struct.gp* %8, i32 0, i32 3
  %9 = load %struct.cv*, %struct.cv** %gp_form, align 8
  %sv_any3 = getelementptr inbounds %struct.cv, %struct.cv* %9, i32 0, i32 0
  %10 = load %struct.xpvcv*, %struct.xpvcv** %sv_any3, align 8
  %xcv_root = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %10, i32 0, i32 9
  %11 = load %struct.op*, %struct.op** %xcv_root, align 8
  %tobool = icmp ne %struct.op* %11, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any4 = getelementptr inbounds %struct.gv, %struct.gv* %12, i32 0, i32 0
  %13 = load %struct.xpvgv*, %struct.xpvgv** %sv_any4, align 8
  %xgv_gp5 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %13, i32 0, i32 7
  %14 = load %struct.gp*, %struct.gp** %xgv_gp5, align 8
  %gp_form6 = getelementptr inbounds %struct.gp, %struct.gp* %14, i32 0, i32 3
  %15 = load %struct.cv*, %struct.cv** %gp_form6, align 8
  %sv_any7 = getelementptr inbounds %struct.cv, %struct.cv* %15, i32 0, i32 0
  %16 = load %struct.xpvcv*, %struct.xpvcv** %sv_any7, align 8
  %xcv_root8 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %16, i32 0, i32 9
  %17 = load %struct.op*, %struct.op** %xcv_root8, align 8
  call void @Perl_op_dump(%struct.op* %17)
  br label %if.end

if.else:                                          ; preds = %entry
  %call9 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 0, %struct._PerlIO** %call9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare %struct.sv* @Perl_sv_newmortal() #2

declare void @Perl_gv_fullname4(%struct.sv*, %struct.gv*, i8*, i8 signext) #2

; Function Attrs: nounwind uwtable
define void @Perl_dump_eval() #0 {
entry:
  %0 = load %struct.op*, %struct.op** @PL_eval_root, align 8
  call void @Perl_op_dump(%struct.op* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @Perl_pv_display(%struct.sv* %dsv, i8* %pv, i64 %cur, i64 %len, i64 %pvlim) #0 {
entry:
  %dsv.addr = alloca %struct.sv*, align 8
  %pv.addr = alloca i8*, align 8
  %cur.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %pvlim.addr = alloca i64, align 8
  %truncated = alloca i32, align 4
  %nul_terminated = alloca i32, align 4
  store %struct.sv* %dsv, %struct.sv** %dsv.addr, align 8
  store i8* %pv, i8** %pv.addr, align 8
  store i64 %cur, i64* %cur.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 %pvlim, i64* %pvlim.addr, align 8
  store i32 0, i32* %truncated, align 4
  %0 = load i64, i64* %len.addr, align 8
  %1 = load i64, i64* %cur.addr, align 8
  %cmp = icmp ugt i64 %0, %1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load i64, i64* %cur.addr, align 8
  %3 = load i8*, i8** %pv.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %2
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %5 to i32
  store i32 %land.ext, i32* %nul_terminated, align 4
  %6 = load %struct.sv*, %struct.sv** %dsv.addr, align 8
  call void @Perl_sv_setpvn(%struct.sv* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i64 1)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %land.end
  %7 = load i64, i64* %cur.addr, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %cur.addr, align 8
  %tobool = icmp ne i64 %7, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i64, i64* %pvlim.addr, align 8
  %tobool3 = icmp ne i64 %8, 0
  br i1 %tobool3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %9 = load %struct.sv*, %struct.sv** %dsv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %9, i32 0, i32 0
  %10 = load i8*, i8** %sv_any, align 8
  %11 = bitcast i8* %10 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %11, i32 0, i32 1
  %12 = load i64, i64* %xpv_cur, align 8
  %13 = load i64, i64* %pvlim.addr, align 8
  %cmp4 = icmp uge i64 %12, %13
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %14 = load i32, i32* %truncated, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %truncated, align 4
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  %15 = load i8*, i8** %pv.addr, align 8
  %16 = load i8, i8* %15, align 1
  %conv6 = sext i8 %16 to i32
  switch i32 %conv6, label %sw.default [
    i32 9, label %sw.bb
    i32 10, label %sw.bb.7
    i32 13, label %sw.bb.8
    i32 12, label %sw.bb.9
    i32 34, label %sw.bb.10
    i32 92, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %if.end
  %17 = load %struct.sv*, %struct.sv** %dsv.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i64 2, i32 2)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.end
  %18 = load %struct.sv*, %struct.sv** %dsv.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i64 2, i32 2)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.end
  %19 = load %struct.sv*, %struct.sv** %dsv.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i64 2, i32 2)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.end
  %20 = load %struct.sv*, %struct.sv** %dsv.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i64 2, i32 2)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.end
  %21 = load %struct.sv*, %struct.sv** %dsv.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i64 2, i32 2)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.end
  %22 = load %struct.sv*, %struct.sv** %dsv.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i64 2, i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %23 = load i8*, i8** %pv.addr, align 8
  %24 = load i8, i8* %23, align 1
  %conv12 = sext i8 %24 to i32
  %cmp13 = icmp sgt i32 %conv12, 32
  br i1 %cmp13, label %land.lhs.true.15, label %lor.lhs.false

land.lhs.true.15:                                 ; preds = %sw.default
  %25 = load i8*, i8** %pv.addr, align 8
  %26 = load i8, i8* %25, align 1
  %conv16 = sext i8 %26 to i32
  %cmp17 = icmp slt i32 %conv16, 127
  br i1 %cmp17, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.15, %sw.default
  %27 = load i8*, i8** %pv.addr, align 8
  %28 = load i8, i8* %27, align 1
  %conv19 = sext i8 %28 to i32
  %cmp20 = icmp eq i32 %conv19, 32
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %lor.lhs.false, %land.lhs.true.15
  %29 = load %struct.sv*, %struct.sv** %dsv.addr, align 8
  %30 = load i8*, i8** %pv.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %29, i8* %30, i64 1, i32 2)
  br label %if.end.38

if.else:                                          ; preds = %lor.lhs.false
  %31 = load i64, i64* %cur.addr, align 8
  %tobool23 = icmp ne i64 %31, 0
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.35

land.lhs.true.24:                                 ; preds = %if.else
  %32 = load i8*, i8** %pv.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 1
  %33 = load i8, i8* %add.ptr, align 1
  %conv25 = sext i8 %33 to i32
  %cmp26 = icmp sge i32 %conv25, 48
  br i1 %cmp26, label %land.lhs.true.28, label %if.else.35

land.lhs.true.28:                                 ; preds = %land.lhs.true.24
  %34 = load i8*, i8** %pv.addr, align 8
  %add.ptr29 = getelementptr inbounds i8, i8* %34, i64 1
  %35 = load i8, i8* %add.ptr29, align 1
  %conv30 = sext i8 %35 to i32
  %cmp31 = icmp sle i32 %conv30, 57
  br i1 %cmp31, label %if.then.33, label %if.else.35

if.then.33:                                       ; preds = %land.lhs.true.28
  %36 = load %struct.sv*, %struct.sv** %dsv.addr, align 8
  %37 = load i8*, i8** %pv.addr, align 8
  %38 = load i8, i8* %37, align 1
  %conv34 = zext i8 %38 to i32
  call void (%struct.sv*, i8*, ...) @Perl_sv_catpvf(%struct.sv* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %conv34)
  br label %if.end.37

if.else.35:                                       ; preds = %land.lhs.true.28, %land.lhs.true.24, %if.else
  %39 = load %struct.sv*, %struct.sv** %dsv.addr, align 8
  %40 = load i8*, i8** %pv.addr, align 8
  %41 = load i8, i8* %40, align 1
  %conv36 = zext i8 %41 to i32
  call void (%struct.sv*, i8*, ...) @Perl_sv_catpvf(%struct.sv* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i32 %conv36)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.then.33
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.22
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.38, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %42 = load i8*, i8** %pv.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr, i8** %pv.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %43 = load %struct.sv*, %struct.sv** %dsv.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i64 1, i32 2)
  %44 = load i32, i32* %truncated, align 4
  %tobool39 = icmp ne i32 %44, 0
  br i1 %tobool39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %for.end
  %45 = load %struct.sv*, %struct.sv** %dsv.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i64 3, i32 2)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %for.end
  %46 = load i32, i32* %nul_terminated, align 4
  %tobool42 = icmp ne i32 %46, 0
  br i1 %tobool42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.41
  %47 = load %struct.sv*, %struct.sv** %dsv.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i64 2, i32 2)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %if.end.41
  %48 = load %struct.sv*, %struct.sv** %dsv.addr, align 8
  %sv_any45 = getelementptr inbounds %struct.sv, %struct.sv* %48, i32 0, i32 0
  %49 = load i8*, i8** %sv_any45, align 8
  %50 = bitcast i8* %49 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %50, i32 0, i32 0
  %51 = load i8*, i8** %xpv_pv, align 8
  ret i8* %51
}

declare void @Perl_sv_setpvn(%struct.sv*, i8*, i64) #2

declare void @Perl_sv_catpvn_flags(%struct.sv*, i8*, i64, i32) #2

declare void @Perl_sv_catpvf(%struct.sv*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define i8* @Perl_sv_peek(%struct.sv* %sv) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %t = alloca %struct.sv*, align 8
  %n_a = alloca i64, align 8
  %unref = alloca i32, align 4
  %is_tmp = alloca i32, align 4
  %ix = alloca i32, align 4
  %tmp = alloca %struct.sv*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  %call = call %struct.sv* @Perl_sv_newmortal()
  store %struct.sv* %call, %struct.sv** %t, align 8
  store i32 0, i32* %unref, align 4
  %0 = load %struct.sv*, %struct.sv** %t, align 8
  call void @Perl_sv_setpvn(%struct.sv* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i64 0)
  br label %retry

retry:                                            ; preds = %if.end.130, %entry
  %1 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %tobool = icmp ne %struct.sv* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %retry
  %2 = load %struct.sv*, %struct.sv** %t, align 8
  call void @Perl_sv_catpv(%struct.sv* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0))
  br label %finish

if.else:                                          ; preds = %retry
  %3 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %cmp = icmp eq %struct.sv* %3, inttoptr (i64 1431655765 to %struct.sv*)
  br i1 %cmp, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %4 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 2
  %5 = load i32, i32* %sv_flags, align 4
  %and = and i32 %5, 255
  %cmp1 = icmp eq i32 %and, 85
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %lor.lhs.false, %if.else
  %6 = load %struct.sv*, %struct.sv** %t, align 8
  call void @Perl_sv_catpv(%struct.sv* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0))
  br label %finish

if.else.3:                                        ; preds = %lor.lhs.false
  %7 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %cmp4 = icmp eq %struct.sv* %7, @PL_sv_undef
  br i1 %cmp4, label %if.then.11, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %if.else.3
  %8 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %cmp6 = icmp eq %struct.sv* %8, @PL_sv_no
  br i1 %cmp6, label %if.then.11, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.5
  %9 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %cmp8 = icmp eq %struct.sv* %9, @PL_sv_yes
  br i1 %cmp8, label %if.then.11, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.7
  %10 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %cmp10 = icmp eq %struct.sv* %10, @PL_sv_placeholder
  br i1 %cmp10, label %if.then.11, label %if.else.81

if.then.11:                                       ; preds = %lor.lhs.false.9, %lor.lhs.false.7, %lor.lhs.false.5, %if.else.3
  %11 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %cmp12 = icmp eq %struct.sv* %11, @PL_sv_undef
  br i1 %cmp12, label %if.then.13, label %if.else.21

if.then.13:                                       ; preds = %if.then.11
  %12 = load %struct.sv*, %struct.sv** %t, align 8
  call void @Perl_sv_catpv(%struct.sv* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0))
  %13 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags14 = getelementptr inbounds %struct.sv, %struct.sv* %13, i32 0, i32 2
  %14 = load i32, i32* %sv_flags14, align 4
  %and15 = and i32 %14, 120582144
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.13
  %15 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags17 = getelementptr inbounds %struct.sv, %struct.sv* %15, i32 0, i32 2
  %16 = load i32, i32* %sv_flags17, align 4
  %and18 = and i32 %16, 8388608
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %land.lhs.true
  br label %finish

if.end:                                           ; preds = %land.lhs.true, %if.then.13
  br label %if.end.80

if.else.21:                                       ; preds = %if.then.11
  %17 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %cmp22 = icmp eq %struct.sv* %17, @PL_sv_no
  br i1 %cmp22, label %if.then.23, label %if.else.38

if.then.23:                                       ; preds = %if.else.21
  %18 = load %struct.sv*, %struct.sv** %t, align 8
  call void @Perl_sv_catpv(%struct.sv* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0))
  %19 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags24 = getelementptr inbounds %struct.sv, %struct.sv* %19, i32 0, i32 2
  %20 = load i32, i32* %sv_flags24, align 4
  %and25 = and i32 %20, 2682880
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %if.end.37, label %land.lhs.true.27

land.lhs.true.27:                                 ; preds = %if.then.23
  %21 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags28 = getelementptr inbounds %struct.sv, %struct.sv* %21, i32 0, i32 2
  %22 = load i32, i32* %sv_flags28, align 4
  %neg = xor i32 %22, -1
  %and29 = and i32 %neg, 109445120
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %if.end.37, label %land.lhs.true.31

land.lhs.true.31:                                 ; preds = %land.lhs.true.27
  %23 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %23, i32 0, i32 0
  %24 = load i8*, i8** %sv_any, align 8
  %25 = bitcast i8* %24 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %25, i32 0, i32 1
  %26 = load i64, i64* %xpv_cur, align 8
  %cmp32 = icmp eq i64 %26, 0
  br i1 %cmp32, label %land.lhs.true.33, label %if.end.37

land.lhs.true.33:                                 ; preds = %land.lhs.true.31
  %27 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any34 = getelementptr inbounds %struct.sv, %struct.sv* %27, i32 0, i32 0
  %28 = load i8*, i8** %sv_any34, align 8
  %29 = bitcast i8* %28 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %29, i32 0, i32 4
  %30 = load double, double* %xnv_nv, align 8
  %cmp35 = fcmp oeq double %30, 0.000000e+00
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %land.lhs.true.33
  br label %finish

if.end.37:                                        ; preds = %land.lhs.true.33, %land.lhs.true.31, %land.lhs.true.27, %if.then.23
  br label %if.end.79

if.else.38:                                       ; preds = %if.else.21
  %31 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %cmp39 = icmp eq %struct.sv* %31, @PL_sv_yes
  br i1 %cmp39, label %if.then.40, label %if.else.68

if.then.40:                                       ; preds = %if.else.38
  %32 = load %struct.sv*, %struct.sv** %t, align 8
  call void @Perl_sv_catpv(%struct.sv* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0))
  %33 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags41 = getelementptr inbounds %struct.sv, %struct.sv* %33, i32 0, i32 2
  %34 = load i32, i32* %sv_flags41, align 4
  %and42 = and i32 %34, 2682880
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %if.end.67, label %land.lhs.true.44

land.lhs.true.44:                                 ; preds = %if.then.40
  %35 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags45 = getelementptr inbounds %struct.sv, %struct.sv* %35, i32 0, i32 2
  %36 = load i32, i32* %sv_flags45, align 4
  %neg46 = xor i32 %36, -1
  %and47 = and i32 %neg46, 109445120
  %tobool48 = icmp ne i32 %and47, 0
  br i1 %tobool48, label %if.end.67, label %land.lhs.true.49

land.lhs.true.49:                                 ; preds = %land.lhs.true.44
  %37 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any50 = getelementptr inbounds %struct.sv, %struct.sv* %37, i32 0, i32 0
  %38 = load i8*, i8** %sv_any50, align 8
  %39 = bitcast i8* %38 to %struct.xpv*
  %xpv_cur51 = getelementptr inbounds %struct.xpv, %struct.xpv* %39, i32 0, i32 1
  %40 = load i64, i64* %xpv_cur51, align 8
  %cmp52 = icmp eq i64 %40, 1
  br i1 %cmp52, label %land.lhs.true.53, label %if.end.67

land.lhs.true.53:                                 ; preds = %land.lhs.true.49
  %41 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any54 = getelementptr inbounds %struct.sv, %struct.sv* %41, i32 0, i32 0
  %42 = load i8*, i8** %sv_any54, align 8
  %43 = bitcast i8* %42 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %43, i32 0, i32 0
  %44 = load i8*, i8** %xpv_pv, align 8
  %tobool55 = icmp ne i8* %44, null
  br i1 %tobool55, label %land.lhs.true.56, label %if.end.67

land.lhs.true.56:                                 ; preds = %land.lhs.true.53
  %45 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any57 = getelementptr inbounds %struct.sv, %struct.sv* %45, i32 0, i32 0
  %46 = load i8*, i8** %sv_any57, align 8
  %47 = bitcast i8* %46 to %struct.xpv*
  %xpv_pv58 = getelementptr inbounds %struct.xpv, %struct.xpv* %47, i32 0, i32 0
  %48 = load i8*, i8** %xpv_pv58, align 8
  %49 = load i8, i8* %48, align 1
  %conv = sext i8 %49 to i32
  %cmp59 = icmp eq i32 %conv, 49
  br i1 %cmp59, label %land.lhs.true.61, label %if.end.67

land.lhs.true.61:                                 ; preds = %land.lhs.true.56
  %50 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any62 = getelementptr inbounds %struct.sv, %struct.sv* %50, i32 0, i32 0
  %51 = load i8*, i8** %sv_any62, align 8
  %52 = bitcast i8* %51 to %struct.xpvnv*
  %xnv_nv63 = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %52, i32 0, i32 4
  %53 = load double, double* %xnv_nv63, align 8
  %cmp64 = fcmp oeq double %53, 1.000000e+00
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %land.lhs.true.61
  br label %finish

if.end.67:                                        ; preds = %land.lhs.true.61, %land.lhs.true.56, %land.lhs.true.53, %land.lhs.true.49, %land.lhs.true.44, %if.then.40
  br label %if.end.78

if.else.68:                                       ; preds = %if.else.38
  %54 = load %struct.sv*, %struct.sv** %t, align 8
  call void @Perl_sv_catpv(%struct.sv* %54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  %55 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags69 = getelementptr inbounds %struct.sv, %struct.sv* %55, i32 0, i32 2
  %56 = load i32, i32* %sv_flags69, align 4
  %and70 = and i32 %56, 120582144
  %tobool71 = icmp ne i32 %and70, 0
  br i1 %tobool71, label %if.end.77, label %land.lhs.true.72

land.lhs.true.72:                                 ; preds = %if.else.68
  %57 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags73 = getelementptr inbounds %struct.sv, %struct.sv* %57, i32 0, i32 2
  %58 = load i32, i32* %sv_flags73, align 4
  %and74 = and i32 %58, 8388608
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %land.lhs.true.72
  br label %finish

if.end.77:                                        ; preds = %land.lhs.true.72, %if.else.68
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.end.67
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.end.37
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.end
  %59 = load %struct.sv*, %struct.sv** %t, align 8
  call void @Perl_sv_catpv(%struct.sv* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end.109

if.else.81:                                       ; preds = %lor.lhs.false.9
  %60 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %60, i32 0, i32 1
  %61 = load i32, i32* %sv_refcnt, align 4
  %cmp82 = icmp eq i32 %61, 0
  br i1 %cmp82, label %if.then.84, label %if.else.85

if.then.84:                                       ; preds = %if.else.81
  %62 = load %struct.sv*, %struct.sv** %t, align 8
  call void @Perl_sv_catpv(%struct.sv* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0))
  %63 = load i32, i32* %unref, align 4
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* %unref, align 4
  br label %if.end.108

if.else.85:                                       ; preds = %if.else.81
  %64 = load volatile i32, i32* @PL_debug, align 4
  %and86 = and i32 %64, 262144
  %tobool87 = icmp ne i32 %and86, 0
  br i1 %tobool87, label %if.then.88, label %if.end.107

if.then.88:                                       ; preds = %if.else.85
  store i32 0, i32* %is_tmp, align 4
  %65 = load i32, i32* @PL_tmps_ix, align 4
  store i32 %65, i32* %ix, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.88
  %66 = load i32, i32* %ix, align 4
  %cmp89 = icmp sge i32 %66, 0
  br i1 %cmp89, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %67 = load i32, i32* %ix, align 4
  %idxprom = sext i32 %67 to i64
  %68 = load %struct.sv**, %struct.sv*** @PL_tmps_stack, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %68, i64 %idxprom
  %69 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %70 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %cmp91 = icmp eq %struct.sv* %69, %70
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %for.body
  store i32 1, i32* %is_tmp, align 4
  br label %for.end

if.end.94:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.94
  %71 = load i32, i32* %ix, align 4
  %dec = add nsw i32 %71, -1
  store i32 %dec, i32* %ix, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.93, %for.cond
  %72 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_refcnt95 = getelementptr inbounds %struct.sv, %struct.sv* %72, i32 0, i32 1
  %73 = load i32, i32* %sv_refcnt95, align 4
  %cmp96 = icmp ugt i32 %73, 1
  br i1 %cmp96, label %if.then.98, label %if.else.102

if.then.98:                                       ; preds = %for.end
  %74 = load %struct.sv*, %struct.sv** %t, align 8
  %75 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_refcnt99 = getelementptr inbounds %struct.sv, %struct.sv* %75, i32 0, i32 1
  %76 = load i32, i32* %sv_refcnt99, align 4
  %conv100 = zext i32 %76 to i64
  %77 = load i32, i32* %is_tmp, align 4
  %tobool101 = icmp ne i32 %77, 0
  %cond = select i1 %tobool101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0)
  call void (%struct.sv*, i8*, ...) @Perl_sv_catpvf(%struct.sv* %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i64 %conv100, i8* %cond)
  br label %if.end.106

if.else.102:                                      ; preds = %for.end
  %78 = load i32, i32* %is_tmp, align 4
  %tobool103 = icmp ne i32 %78, 0
  br i1 %tobool103, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %if.else.102
  %79 = load %struct.sv*, %struct.sv** %t, align 8
  call void @Perl_sv_catpv(%struct.sv* %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.104, %if.else.102
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.then.98
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.else.85
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.then.84
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.end.80
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110
  %80 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags112 = getelementptr inbounds %struct.sv, %struct.sv* %80, i32 0, i32 2
  %81 = load i32, i32* %sv_flags112, align 4
  %and113 = and i32 %81, 524288
  %tobool114 = icmp ne i32 %and113, 0
  br i1 %tobool114, label %if.then.115, label %if.end.132

if.then.115:                                      ; preds = %if.end.111
  %82 = load %struct.sv*, %struct.sv** %t, align 8
  call void @Perl_sv_catpv(%struct.sv* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0))
  %83 = load %struct.sv*, %struct.sv** %t, align 8
  %sv_any116 = getelementptr inbounds %struct.sv, %struct.sv* %83, i32 0, i32 0
  %84 = load i8*, i8** %sv_any116, align 8
  %85 = bitcast i8* %84 to %struct.xpv*
  %xpv_cur117 = getelementptr inbounds %struct.xpv, %struct.xpv* %85, i32 0, i32 1
  %86 = load i64, i64* %xpv_cur117, align 8
  %87 = load i32, i32* %unref, align 4
  %conv118 = sext i32 %87 to i64
  %add = add i64 %86, %conv118
  %cmp119 = icmp ugt i64 %add, 10
  br i1 %cmp119, label %if.then.121, label %if.end.130

if.then.121:                                      ; preds = %if.then.115
  %88 = load i32, i32* %unref, align 4
  %add122 = add nsw i32 %88, 3
  %conv123 = sext i32 %add122 to i64
  %89 = load %struct.sv*, %struct.sv** %t, align 8
  %sv_any124 = getelementptr inbounds %struct.sv, %struct.sv* %89, i32 0, i32 0
  %90 = load i8*, i8** %sv_any124, align 8
  %91 = bitcast i8* %90 to %struct.xpv*
  %xpv_cur125 = getelementptr inbounds %struct.xpv, %struct.xpv* %91, i32 0, i32 1
  store i64 %conv123, i64* %xpv_cur125, align 8
  %92 = load %struct.sv*, %struct.sv** %t, align 8
  %sv_any126 = getelementptr inbounds %struct.sv, %struct.sv* %92, i32 0, i32 0
  %93 = load i8*, i8** %sv_any126, align 8
  %94 = bitcast i8* %93 to %struct.xpv*
  %xpv_pv127 = getelementptr inbounds %struct.xpv, %struct.xpv* %94, i32 0, i32 0
  %95 = load i8*, i8** %xpv_pv127, align 8
  %96 = load %struct.sv*, %struct.sv** %t, align 8
  %sv_any128 = getelementptr inbounds %struct.sv, %struct.sv* %96, i32 0, i32 0
  %97 = load i8*, i8** %sv_any128, align 8
  %98 = bitcast i8* %97 to %struct.xpv*
  %xpv_cur129 = getelementptr inbounds %struct.xpv, %struct.xpv* %98, i32 0, i32 1
  %99 = load i64, i64* %xpv_cur129, align 8
  %add.ptr = getelementptr inbounds i8, i8* %95, i64 %99
  store i8 0, i8* %add.ptr, align 1
  %100 = load %struct.sv*, %struct.sv** %t, align 8
  call void @Perl_sv_catpv(%struct.sv* %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0))
  br label %finish

if.end.130:                                       ; preds = %if.then.115
  %101 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any131 = getelementptr inbounds %struct.sv, %struct.sv* %101, i32 0, i32 0
  %102 = load i8*, i8** %sv_any131, align 8
  %103 = bitcast i8* %102 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %103, i32 0, i32 0
  %104 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  store %struct.sv* %104, %struct.sv** %sv.addr, align 8
  br label %retry

if.end.132:                                       ; preds = %if.end.111
  %105 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags133 = getelementptr inbounds %struct.sv, %struct.sv* %105, i32 0, i32 2
  %106 = load i32, i32* %sv_flags133, align 4
  %and134 = and i32 %106, 255
  switch i32 %and134, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.135
    i32 2, label %sw.bb.136
    i32 3, label %sw.bb.137
    i32 4, label %sw.bb.138
    i32 5, label %sw.bb.139
    i32 6, label %sw.bb.140
    i32 7, label %sw.bb.141
    i32 9, label %sw.bb.142
    i32 10, label %sw.bb.143
    i32 11, label %sw.bb.144
    i32 12, label %sw.bb.145
    i32 13, label %sw.bb.154
    i32 8, label %sw.bb.155
    i32 14, label %sw.bb.156
    i32 15, label %sw.bb.157
  ]

sw.default:                                       ; preds = %if.end.132
  %107 = load %struct.sv*, %struct.sv** %t, align 8
  call void @Perl_sv_catpv(%struct.sv* %107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0))
  br label %finish

sw.bb:                                            ; preds = %if.end.132
  %108 = load %struct.sv*, %struct.sv** %t, align 8
  call void @Perl_sv_catpv(%struct.sv* %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0))
  br label %finish

sw.bb.135:                                        ; preds = %if.end.132
  %109 = load %struct.sv*, %struct.sv** %t, align 8
  call void @Perl_sv_catpv(%struct.sv* %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0))
  br label %sw.epilog

sw.bb.136:                                        ; preds = %if.end.132
  %110 = load %struct.sv*, %struct.sv** %t, align 8
  call void @Perl_sv_catpv(%struct.sv* %110, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0))
  br label %sw.epilog

sw.bb.137:                                        ; preds = %if.end.132
  %111 = load %struct.sv*, %struct.sv** %t, align 8
  call void @Perl_sv_catpv(%struct.sv* %111, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0))
  br label %sw.epilog

sw.bb.138:                                        ; preds = %if.end.132
  %112 = load %struct.sv*, %struct.sv** %t, align 8
  call void @Perl_sv_catpv(%struct.sv* %112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0))
  br label %sw.epilog

sw.bb.139:                                        ; preds = %if.end.132
  %113 = load %struct.sv*, %struct.sv** %t, align 8
  call void @Perl_sv_catpv(%struct.sv* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0))
  br label %sw.epilog

sw.bb.140:                                        ; preds = %if.end.132
  %114 = load %struct.sv*, %struct.sv** %t, align 8
  call void @Perl_sv_catpv(%struct.sv* %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0))
  br label %sw.epilog

sw.bb.141:                                        ; preds = %if.end.132
  %115 = load %struct.sv*, %struct.sv** %t, align 8
  call void @Perl_sv_catpv(%struct.sv* %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0))
  br label %sw.epilog

sw.bb.142:                                        ; preds = %if.end.132
  %116 = load %struct.sv*, %struct.sv** %t, align 8
  call void @Perl_sv_catpv(%struct.sv* %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0))
  br label %sw.epilog

sw.bb.143:                                        ; preds = %if.end.132
  %117 = load %struct.sv*, %struct.sv** %t, align 8
  call void @Perl_sv_catpv(%struct.sv* %117, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0))
  br label %sw.epilog

sw.bb.144:                                        ; preds = %if.end.132
  %118 = load %struct.sv*, %struct.sv** %t, align 8
  call void @Perl_sv_catpv(%struct.sv* %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0))
  br label %sw.epilog

sw.bb.145:                                        ; preds = %if.end.132
  %119 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any146 = getelementptr inbounds %struct.sv, %struct.sv* %119, i32 0, i32 0
  %120 = load i8*, i8** %sv_any146, align 8
  %121 = bitcast i8* %120 to %struct.xpvcv*
  %xcv_gv = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %121, i32 0, i32 12
  %122 = load %struct.gv*, %struct.gv** %xcv_gv, align 8
  %tobool147 = icmp ne %struct.gv* %122, null
  br i1 %tobool147, label %if.then.148, label %if.else.152

if.then.148:                                      ; preds = %sw.bb.145
  %123 = load %struct.sv*, %struct.sv** %t, align 8
  %124 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any149 = getelementptr inbounds %struct.sv, %struct.sv* %124, i32 0, i32 0
  %125 = load i8*, i8** %sv_any149, align 8
  %126 = bitcast i8* %125 to %struct.xpvcv*
  %xcv_gv150 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %126, i32 0, i32 12
  %127 = load %struct.gv*, %struct.gv** %xcv_gv150, align 8
  %sv_any151 = getelementptr inbounds %struct.gv, %struct.gv* %127, i32 0, i32 0
  %128 = load %struct.xpvgv*, %struct.xpvgv** %sv_any151, align 8
  %xgv_name = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %128, i32 0, i32 8
  %129 = load i8*, i8** %xgv_name, align 8
  call void (%struct.sv*, i8*, ...) @Perl_sv_catpvf(%struct.sv* %123, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i8* %129)
  br label %if.end.153

if.else.152:                                      ; preds = %sw.bb.145
  %130 = load %struct.sv*, %struct.sv** %t, align 8
  call void @Perl_sv_catpv(%struct.sv* %130, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0))
  br label %if.end.153

if.end.153:                                       ; preds = %if.else.152, %if.then.148
  br label %finish

sw.bb.154:                                        ; preds = %if.end.132
  %131 = load %struct.sv*, %struct.sv** %t, align 8
  call void @Perl_sv_catpv(%struct.sv* %131, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0))
  br label %sw.epilog

sw.bb.155:                                        ; preds = %if.end.132
  %132 = load %struct.sv*, %struct.sv** %t, align 8
  call void @Perl_sv_catpv(%struct.sv* %132, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0))
  br label %sw.epilog

sw.bb.156:                                        ; preds = %if.end.132
  %133 = load %struct.sv*, %struct.sv** %t, align 8
  call void @Perl_sv_catpv(%struct.sv* %133, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0))
  br label %sw.epilog

sw.bb.157:                                        ; preds = %if.end.132
  %134 = load %struct.sv*, %struct.sv** %t, align 8
  call void @Perl_sv_catpv(%struct.sv* %134, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.157, %sw.bb.156, %sw.bb.155, %sw.bb.154, %sw.bb.144, %sw.bb.143, %sw.bb.142, %sw.bb.141, %sw.bb.140, %sw.bb.139, %sw.bb.138, %sw.bb.137, %sw.bb.136, %sw.bb.135
  %135 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags158 = getelementptr inbounds %struct.sv, %struct.sv* %135, i32 0, i32 2
  %136 = load i32, i32* %sv_flags158, align 4
  %and159 = and i32 %136, 67108864
  %tobool160 = icmp ne i32 %and159, 0
  br i1 %tobool160, label %if.then.161, label %if.else.194

if.then.161:                                      ; preds = %sw.epilog
  %137 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any162 = getelementptr inbounds %struct.sv, %struct.sv* %137, i32 0, i32 0
  %138 = load i8*, i8** %sv_any162, align 8
  %139 = bitcast i8* %138 to %struct.xpv*
  %xpv_pv163 = getelementptr inbounds %struct.xpv, %struct.xpv* %139, i32 0, i32 0
  %140 = load i8*, i8** %xpv_pv163, align 8
  %tobool164 = icmp ne i8* %140, null
  br i1 %tobool164, label %if.else.166, label %if.then.165

if.then.165:                                      ; preds = %if.then.161
  %141 = load %struct.sv*, %struct.sv** %t, align 8
  call void @Perl_sv_catpv(%struct.sv* %141, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0))
  br label %if.end.193

if.else.166:                                      ; preds = %if.then.161
  %call167 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i64 0)
  store %struct.sv* %call167, %struct.sv** %tmp, align 8
  %142 = load %struct.sv*, %struct.sv** %t, align 8
  call void @Perl_sv_catpv(%struct.sv* %142, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0))
  %143 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags168 = getelementptr inbounds %struct.sv, %struct.sv* %143, i32 0, i32 2
  %144 = load i32, i32* %sv_flags168, align 4
  %and169 = and i32 %144, 2097152
  %tobool170 = icmp ne i32 %and169, 0
  br i1 %tobool170, label %if.then.171, label %if.end.179

if.then.171:                                      ; preds = %if.else.166
  %145 = load %struct.sv*, %struct.sv** %t, align 8
  %146 = load %struct.sv*, %struct.sv** %tmp, align 8
  %147 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any172 = getelementptr inbounds %struct.sv, %struct.sv* %147, i32 0, i32 0
  %148 = load i8*, i8** %sv_any172, align 8
  %149 = bitcast i8* %148 to %struct.xpv*
  %xpv_pv173 = getelementptr inbounds %struct.xpv, %struct.xpv* %149, i32 0, i32 0
  %150 = load i8*, i8** %xpv_pv173, align 8
  %151 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any174 = getelementptr inbounds %struct.sv, %struct.sv* %151, i32 0, i32 0
  %152 = load i8*, i8** %sv_any174, align 8
  %153 = bitcast i8* %152 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %153, i32 0, i32 3
  %154 = load i64, i64* %xiv_iv, align 8
  %idx.neg = sub i64 0, %154
  %add.ptr175 = getelementptr inbounds i8, i8* %150, i64 %idx.neg
  %155 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any176 = getelementptr inbounds %struct.sv, %struct.sv* %155, i32 0, i32 0
  %156 = load i8*, i8** %sv_any176, align 8
  %157 = bitcast i8* %156 to %struct.xpviv*
  %xiv_iv177 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %157, i32 0, i32 3
  %158 = load i64, i64* %xiv_iv177, align 8
  %call178 = call i8* @Perl_pv_display(%struct.sv* %146, i8* %add.ptr175, i64 %158, i64 0, i64 127)
  call void (%struct.sv*, i8*, ...) @Perl_sv_catpvf(%struct.sv* %145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i8* %call178)
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.171, %if.else.166
  %159 = load %struct.sv*, %struct.sv** %t, align 8
  %160 = load %struct.sv*, %struct.sv** %tmp, align 8
  %161 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any180 = getelementptr inbounds %struct.sv, %struct.sv* %161, i32 0, i32 0
  %162 = load i8*, i8** %sv_any180, align 8
  %163 = bitcast i8* %162 to %struct.xpv*
  %xpv_pv181 = getelementptr inbounds %struct.xpv, %struct.xpv* %163, i32 0, i32 0
  %164 = load i8*, i8** %xpv_pv181, align 8
  %165 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any182 = getelementptr inbounds %struct.sv, %struct.sv* %165, i32 0, i32 0
  %166 = load i8*, i8** %sv_any182, align 8
  %167 = bitcast i8* %166 to %struct.xpv*
  %xpv_cur183 = getelementptr inbounds %struct.xpv, %struct.xpv* %167, i32 0, i32 1
  %168 = load i64, i64* %xpv_cur183, align 8
  %169 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any184 = getelementptr inbounds %struct.sv, %struct.sv* %169, i32 0, i32 0
  %170 = load i8*, i8** %sv_any184, align 8
  %171 = bitcast i8* %170 to %struct.xpv*
  %xpv_len = getelementptr inbounds %struct.xpv, %struct.xpv* %171, i32 0, i32 2
  %172 = load i64, i64* %xpv_len, align 8
  %call185 = call i8* @Perl_pv_display(%struct.sv* %160, i8* %164, i64 %168, i64 %172, i64 127)
  call void (%struct.sv*, i8*, ...) @Perl_sv_catpvf(%struct.sv* %159, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i32 0, i32 0), i8* %call185)
  %173 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags186 = getelementptr inbounds %struct.sv, %struct.sv* %173, i32 0, i32 2
  %174 = load i32, i32* %sv_flags186, align 4
  %and187 = and i32 %174, 536870912
  %tobool188 = icmp ne i32 %and187, 0
  br i1 %tobool188, label %if.then.189, label %if.end.192

if.then.189:                                      ; preds = %if.end.179
  %175 = load %struct.sv*, %struct.sv** %t, align 8
  %176 = load %struct.sv*, %struct.sv** %tmp, align 8
  %177 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %178 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call190 = call i64 @Perl_sv_len_utf8(%struct.sv* %178)
  %mul = mul i64 8, %call190
  %call191 = call i8* @Perl_sv_uni_display(%struct.sv* %176, %struct.sv* %177, i64 %mul, i64 3)
  call void (%struct.sv*, i8*, ...) @Perl_sv_catpvf(%struct.sv* %175, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.50, i32 0, i32 0), i8* %call191)
  br label %if.end.192

if.end.192:                                       ; preds = %if.then.189, %if.end.179
  %179 = load %struct.sv*, %struct.sv** %tmp, align 8
  call void @Perl_sv_free(%struct.sv* %179)
  br label %if.end.193

if.end.193:                                       ; preds = %if.end.192, %if.then.165
  br label %if.end.218

if.else.194:                                      ; preds = %sw.epilog
  %180 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags195 = getelementptr inbounds %struct.sv, %struct.sv* %180, i32 0, i32 2
  %181 = load i32, i32* %sv_flags195, align 4
  %and196 = and i32 %181, 33554432
  %tobool197 = icmp ne i32 %and196, 0
  br i1 %tobool197, label %if.then.198, label %if.else.201

if.then.198:                                      ; preds = %if.else.194
  %182 = load %struct.sv*, %struct.sv** %t, align 8
  %183 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any199 = getelementptr inbounds %struct.sv, %struct.sv* %183, i32 0, i32 0
  %184 = load i8*, i8** %sv_any199, align 8
  %185 = bitcast i8* %184 to %struct.xpvnv*
  %xnv_nv200 = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %185, i32 0, i32 4
  %186 = load double, double* %xnv_nv200, align 8
  call void (%struct.sv*, i8*, ...) @Perl_sv_catpvf(%struct.sv* %182, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), double %186)
  br label %if.end.217

if.else.201:                                      ; preds = %if.else.194
  %187 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags202 = getelementptr inbounds %struct.sv, %struct.sv* %187, i32 0, i32 2
  %188 = load i32, i32* %sv_flags202, align 4
  %and203 = and i32 %188, 16777216
  %tobool204 = icmp ne i32 %and203, 0
  br i1 %tobool204, label %if.then.205, label %if.else.215

if.then.205:                                      ; preds = %if.else.201
  %189 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags206 = getelementptr inbounds %struct.sv, %struct.sv* %189, i32 0, i32 2
  %190 = load i32, i32* %sv_flags206, align 4
  %and207 = and i32 %190, -2147483648
  %tobool208 = icmp ne i32 %and207, 0
  br i1 %tobool208, label %if.then.209, label %if.else.211

if.then.209:                                      ; preds = %if.then.205
  %191 = load %struct.sv*, %struct.sv** %t, align 8
  %192 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any210 = getelementptr inbounds %struct.sv, %struct.sv* %192, i32 0, i32 0
  %193 = load i8*, i8** %sv_any210, align 8
  %194 = bitcast i8* %193 to %struct.xpvuv*
  %xuv_uv = getelementptr inbounds %struct.xpvuv, %struct.xpvuv* %194, i32 0, i32 3
  %195 = load i64, i64* %xuv_uv, align 8
  call void (%struct.sv*, i8*, ...) @Perl_sv_catpvf(%struct.sv* %191, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i64 %195)
  br label %if.end.214

if.else.211:                                      ; preds = %if.then.205
  %196 = load %struct.sv*, %struct.sv** %t, align 8
  %197 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any212 = getelementptr inbounds %struct.sv, %struct.sv* %197, i32 0, i32 0
  %198 = load i8*, i8** %sv_any212, align 8
  %199 = bitcast i8* %198 to %struct.xpviv*
  %xiv_iv213 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %199, i32 0, i32 3
  %200 = load i64, i64* %xiv_iv213, align 8
  call void (%struct.sv*, i8*, ...) @Perl_sv_catpvf(%struct.sv* %196, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0), i64 %200)
  br label %if.end.214

if.end.214:                                       ; preds = %if.else.211, %if.then.209
  br label %if.end.216

if.else.215:                                      ; preds = %if.else.201
  %201 = load %struct.sv*, %struct.sv** %t, align 8
  call void @Perl_sv_catpv(%struct.sv* %201, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0))
  br label %if.end.216

if.end.216:                                       ; preds = %if.else.215, %if.end.214
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216, %if.then.198
  br label %if.end.218

if.end.218:                                       ; preds = %if.end.217, %if.end.193
  br label %finish

finish:                                           ; preds = %if.end.218, %if.end.153, %sw.bb, %sw.default, %if.then.121, %if.then.76, %if.then.66, %if.then.36, %if.then.20, %if.then.2, %if.then
  %202 = load i32, i32* %unref, align 4
  %tobool219 = icmp ne i32 %202, 0
  br i1 %tobool219, label %if.then.220, label %if.end.223

if.then.220:                                      ; preds = %finish
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.220
  %203 = load i32, i32* %unref, align 4
  %dec221 = add nsw i32 %203, -1
  store i32 %dec221, i32* %unref, align 4
  %tobool222 = icmp ne i32 %203, 0
  br i1 %tobool222, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %204 = load %struct.sv*, %struct.sv** %t, align 8
  call void @Perl_sv_catpv(%struct.sv* %204, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i32 0, i32 0))
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.223

if.end.223:                                       ; preds = %while.end, %finish
  %205 = load %struct.sv*, %struct.sv** %t, align 8
  %sv_flags224 = getelementptr inbounds %struct.sv, %struct.sv* %205, i32 0, i32 2
  %206 = load i32, i32* %sv_flags224, align 4
  %and225 = and i32 %206, 262144
  %cmp226 = icmp eq i32 %and225, 262144
  br i1 %cmp226, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.223
  %207 = load %struct.sv*, %struct.sv** %t, align 8
  %sv_any228 = getelementptr inbounds %struct.sv, %struct.sv* %207, i32 0, i32 0
  %208 = load i8*, i8** %sv_any228, align 8
  %209 = bitcast i8* %208 to %struct.xpv*
  %xpv_cur229 = getelementptr inbounds %struct.xpv, %struct.xpv* %209, i32 0, i32 1
  %210 = load i64, i64* %xpv_cur229, align 8
  store i64 %210, i64* %n_a, align 8
  %211 = load %struct.sv*, %struct.sv** %t, align 8
  %sv_any230 = getelementptr inbounds %struct.sv, %struct.sv* %211, i32 0, i32 0
  %212 = load i8*, i8** %sv_any230, align 8
  %213 = bitcast i8* %212 to %struct.xpv*
  %xpv_pv231 = getelementptr inbounds %struct.xpv, %struct.xpv* %213, i32 0, i32 0
  %214 = load i8*, i8** %xpv_pv231, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.223
  %215 = load %struct.sv*, %struct.sv** %t, align 8
  %call232 = call i8* @Perl_sv_2pv_flags(%struct.sv* %215, i64* %n_a, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond233 = phi i8* [ %214, %cond.true ], [ %call232, %cond.false ]
  ret i8* %cond233
}

declare void @Perl_sv_catpv(%struct.sv*, i8*) #2

declare %struct.sv* @Perl_newSVpvn(i8*, i64) #2

declare i8* @Perl_sv_uni_display(%struct.sv*, %struct.sv*, i64, i64) #2

declare i64 @Perl_sv_len_utf8(%struct.sv*) #2

declare void @Perl_sv_free(%struct.sv*) #2

declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #2

; Function Attrs: nounwind uwtable
define void @Perl_do_pmop_dump(i32 %level, %struct._PerlIO** %file, %struct.pmop* %pm) #0 {
entry:
  %level.addr = alloca i32, align 4
  %file.addr = alloca %struct._PerlIO**, align 8
  %pm.addr = alloca %struct.pmop*, align 8
  %ch = alloca i8, align 1
  %tmpsv = alloca %struct.sv*, align 8
  store i32 %level, i32* %level.addr, align 4
  store %struct._PerlIO** %file, %struct._PerlIO*** %file.addr, align 8
  store %struct.pmop* %pm, %struct.pmop** %pm.addr, align 8
  %0 = load %struct.pmop*, %struct.pmop** %pm.addr, align 8
  %tobool = icmp ne %struct.pmop* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %level.addr, align 4
  %2 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %1, %struct._PerlIO** %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %level.addr, align 4
  %4 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %3, %struct._PerlIO** %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i32 0, i32 0))
  %5 = load i32, i32* %level.addr, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %level.addr, align 4
  %6 = load %struct.pmop*, %struct.pmop** %pm.addr, align 8
  %op_pmflags = getelementptr inbounds %struct.pmop, %struct.pmop* %6, i32 0, i32 14
  %7 = load i32, i32* %op_pmflags, align 4
  %and = and i32 %7, 2
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  store i8 63, i8* %ch, align 1
  br label %if.end.3

if.else:                                          ; preds = %if.end
  store i8 47, i8* %ch, align 1
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  %8 = load %struct.pmop*, %struct.pmop** %pm.addr, align 8
  %op_pmregexp = getelementptr inbounds %struct.pmop, %struct.pmop* %8, i32 0, i32 13
  %9 = load %struct.regexp*, %struct.regexp** %op_pmregexp, align 8
  %tobool4 = icmp ne %struct.regexp* %9, null
  br i1 %tobool4, label %if.then.5, label %if.else.11

if.then.5:                                        ; preds = %if.end.3
  %10 = load i32, i32* %level.addr, align 4
  %11 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %12 = load i8, i8* %ch, align 1
  %conv = sext i8 %12 to i32
  %13 = load %struct.pmop*, %struct.pmop** %pm.addr, align 8
  %op_pmregexp6 = getelementptr inbounds %struct.pmop, %struct.pmop* %13, i32 0, i32 13
  %14 = load %struct.regexp*, %struct.regexp** %op_pmregexp6, align 8
  %precomp = getelementptr inbounds %struct.regexp, %struct.regexp* %14, i32 0, i32 4
  %15 = load i8*, i8** %precomp, align 8
  %16 = load i8, i8* %ch, align 1
  %conv7 = sext i8 %16 to i32
  %17 = load %struct.pmop*, %struct.pmop** %pm.addr, align 8
  %op_private = getelementptr inbounds %struct.pmop, %struct.pmop* %17, i32 0, i32 7
  %18 = load i8, i8* %op_private, align 1
  %conv8 = zext i8 %18 to i32
  %and9 = and i32 %conv8, 64
  %tobool10 = icmp ne i32 %and9, 0
  %cond = select i1 %tobool10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0)
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %10, %struct._PerlIO** %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.58, i32 0, i32 0), i32 %conv, i8* %15, i32 %conv7, i8* %cond)
  br label %if.end.12

if.else.11:                                       ; preds = %if.end.3
  %19 = load i32, i32* %level.addr, align 4
  %20 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %19, %struct._PerlIO** %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.60, i32 0, i32 0))
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.11, %if.then.5
  %21 = load %struct.pmop*, %struct.pmop** %pm.addr, align 8
  %op_type = getelementptr inbounds %struct.pmop, %struct.pmop* %21, i32 0, i32 4
  %22 = load i16, i16* %op_type, align 2
  %conv13 = zext i16 %22 to i32
  %cmp = icmp ne i32 %conv13, 13
  br i1 %cmp, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.end.12
  %23 = load %struct.pmop*, %struct.pmop** %pm.addr, align 8
  %op_pmreplroot = getelementptr inbounds %struct.pmop, %struct.pmop* %23, i32 0, i32 10
  %24 = load %struct.op*, %struct.op** %op_pmreplroot, align 8
  %tobool15 = icmp ne %struct.op* %24, null
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %land.lhs.true
  %25 = load i32, i32* %level.addr, align 4
  %26 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %25, %struct._PerlIO** %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i32 0, i32 0))
  %27 = load %struct.pmop*, %struct.pmop** %pm.addr, align 8
  %op_pmreplroot17 = getelementptr inbounds %struct.pmop, %struct.pmop* %27, i32 0, i32 10
  %28 = load %struct.op*, %struct.op** %op_pmreplroot17, align 8
  call void @Perl_op_dump(%struct.op* %28)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %land.lhs.true, %if.end.12
  %29 = load %struct.pmop*, %struct.pmop** %pm.addr, align 8
  %op_pmflags19 = getelementptr inbounds %struct.pmop, %struct.pmop* %29, i32 0, i32 14
  %30 = load i32, i32* %op_pmflags19, align 4
  %tobool20 = icmp ne i32 %30, 0
  br i1 %tobool20, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.18
  %31 = load %struct.pmop*, %struct.pmop** %pm.addr, align 8
  %op_pmregexp21 = getelementptr inbounds %struct.pmop, %struct.pmop* %31, i32 0, i32 13
  %32 = load %struct.regexp*, %struct.regexp** %op_pmregexp21, align 8
  %tobool22 = icmp ne %struct.regexp* %32, null
  br i1 %tobool22, label %land.lhs.true.23, label %if.end.112

land.lhs.true.23:                                 ; preds = %lor.lhs.false
  %33 = load %struct.pmop*, %struct.pmop** %pm.addr, align 8
  %op_pmregexp24 = getelementptr inbounds %struct.pmop, %struct.pmop* %33, i32 0, i32 13
  %34 = load %struct.regexp*, %struct.regexp** %op_pmregexp24, align 8
  %substrs = getelementptr inbounds %struct.regexp, %struct.regexp* %34, i32 0, i32 3
  %35 = load %struct.reg_substr_data*, %struct.reg_substr_data** %substrs, align 8
  %data = getelementptr inbounds %struct.reg_substr_data, %struct.reg_substr_data* %35, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.reg_substr_datum], [3 x %struct.reg_substr_datum]* %data, i32 0, i64 2
  %substr = getelementptr inbounds %struct.reg_substr_datum, %struct.reg_substr_datum* %arrayidx, i32 0, i32 2
  %36 = load %struct.sv*, %struct.sv** %substr, align 8
  %tobool25 = icmp ne %struct.sv* %36, null
  br i1 %tobool25, label %if.then.26, label %if.end.112

if.then.26:                                       ; preds = %land.lhs.true.23, %if.end.18
  %call = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i64 0)
  store %struct.sv* %call, %struct.sv** %tmpsv, align 8
  %37 = load %struct.pmop*, %struct.pmop** %pm.addr, align 8
  %op_pmdynflags = getelementptr inbounds %struct.pmop, %struct.pmop* %37, i32 0, i32 16
  %38 = load i8, i8* %op_pmdynflags, align 1
  %conv27 = zext i8 %38 to i32
  %and28 = and i32 %conv27, 1
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.then.26
  %39 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  call void @Perl_sv_catpv(%struct.sv* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0))
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.then.26
  %40 = load %struct.pmop*, %struct.pmop** %pm.addr, align 8
  %op_pmdynflags32 = getelementptr inbounds %struct.pmop, %struct.pmop* %40, i32 0, i32 16
  %41 = load i8, i8* %op_pmdynflags32, align 1
  %conv33 = zext i8 %41 to i32
  %and34 = and i32 %conv33, 2
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.31
  %42 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  call void @Perl_sv_catpv(%struct.sv* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0))
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.31
  %43 = load %struct.pmop*, %struct.pmop** %pm.addr, align 8
  %op_pmflags38 = getelementptr inbounds %struct.pmop, %struct.pmop* %43, i32 0, i32 14
  %44 = load i32, i32* %op_pmflags38, align 4
  %and39 = and i32 %44, 2
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.37
  %45 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  call void @Perl_sv_catpv(%struct.sv* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i32 0, i32 0))
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.end.37
  %46 = load %struct.pmop*, %struct.pmop** %pm.addr, align 8
  %op_pmregexp43 = getelementptr inbounds %struct.pmop, %struct.pmop* %46, i32 0, i32 13
  %47 = load %struct.regexp*, %struct.regexp** %op_pmregexp43, align 8
  %tobool44 = icmp ne %struct.regexp* %47, null
  br i1 %tobool44, label %land.lhs.true.45, label %if.end.57

land.lhs.true.45:                                 ; preds = %if.end.42
  %48 = load %struct.pmop*, %struct.pmop** %pm.addr, align 8
  %op_pmregexp46 = getelementptr inbounds %struct.pmop, %struct.pmop* %48, i32 0, i32 13
  %49 = load %struct.regexp*, %struct.regexp** %op_pmregexp46, align 8
  %substrs47 = getelementptr inbounds %struct.regexp, %struct.regexp* %49, i32 0, i32 3
  %50 = load %struct.reg_substr_data*, %struct.reg_substr_data** %substrs47, align 8
  %data48 = getelementptr inbounds %struct.reg_substr_data, %struct.reg_substr_data* %50, i32 0, i32 0
  %arrayidx49 = getelementptr inbounds [3 x %struct.reg_substr_datum], [3 x %struct.reg_substr_datum]* %data48, i32 0, i64 2
  %substr50 = getelementptr inbounds %struct.reg_substr_datum, %struct.reg_substr_datum* %arrayidx49, i32 0, i32 2
  %51 = load %struct.sv*, %struct.sv** %substr50, align 8
  %tobool51 = icmp ne %struct.sv* %51, null
  br i1 %tobool51, label %land.lhs.true.52, label %if.end.57

land.lhs.true.52:                                 ; preds = %land.lhs.true.45
  %52 = load %struct.pmop*, %struct.pmop** %pm.addr, align 8
  %op_pmregexp53 = getelementptr inbounds %struct.pmop, %struct.pmop* %52, i32 0, i32 13
  %53 = load %struct.regexp*, %struct.regexp** %op_pmregexp53, align 8
  %reganch = getelementptr inbounds %struct.regexp, %struct.regexp* %53, i32 0, i32 15
  %54 = load i32, i32* %reganch, align 4
  %and54 = and i32 %54, 64
  %tobool55 = icmp ne i32 %and54, 0
  br i1 %tobool55, label %if.end.57, label %if.then.56

if.then.56:                                       ; preds = %land.lhs.true.52
  %55 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  call void @Perl_sv_catpv(%struct.sv* %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0))
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %land.lhs.true.52, %land.lhs.true.45, %if.end.42
  %56 = load %struct.pmop*, %struct.pmop** %pm.addr, align 8
  %op_pmregexp58 = getelementptr inbounds %struct.pmop, %struct.pmop* %56, i32 0, i32 13
  %57 = load %struct.regexp*, %struct.regexp** %op_pmregexp58, align 8
  %tobool59 = icmp ne %struct.regexp* %57, null
  br i1 %tobool59, label %land.lhs.true.60, label %if.end.73

land.lhs.true.60:                                 ; preds = %if.end.57
  %58 = load %struct.pmop*, %struct.pmop** %pm.addr, align 8
  %op_pmregexp61 = getelementptr inbounds %struct.pmop, %struct.pmop* %58, i32 0, i32 13
  %59 = load %struct.regexp*, %struct.regexp** %op_pmregexp61, align 8
  %substrs62 = getelementptr inbounds %struct.regexp, %struct.regexp* %59, i32 0, i32 3
  %60 = load %struct.reg_substr_data*, %struct.reg_substr_data** %substrs62, align 8
  %data63 = getelementptr inbounds %struct.reg_substr_data, %struct.reg_substr_data* %60, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [3 x %struct.reg_substr_datum], [3 x %struct.reg_substr_datum]* %data63, i32 0, i64 2
  %substr65 = getelementptr inbounds %struct.reg_substr_datum, %struct.reg_substr_datum* %arrayidx64, i32 0, i32 2
  %61 = load %struct.sv*, %struct.sv** %substr65, align 8
  %tobool66 = icmp ne %struct.sv* %61, null
  br i1 %tobool66, label %land.lhs.true.67, label %if.end.73

land.lhs.true.67:                                 ; preds = %land.lhs.true.60
  %62 = load %struct.pmop*, %struct.pmop** %pm.addr, align 8
  %op_pmregexp68 = getelementptr inbounds %struct.pmop, %struct.pmop* %62, i32 0, i32 13
  %63 = load %struct.regexp*, %struct.regexp** %op_pmregexp68, align 8
  %reganch69 = getelementptr inbounds %struct.regexp, %struct.regexp* %63, i32 0, i32 15
  %64 = load i32, i32* %reganch69, align 4
  %and70 = and i32 %64, 256
  %tobool71 = icmp ne i32 %and70, 0
  br i1 %tobool71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %land.lhs.true.67
  %65 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  call void @Perl_sv_catpv(%struct.sv* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0))
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %land.lhs.true.67, %land.lhs.true.60, %if.end.57
  %66 = load %struct.pmop*, %struct.pmop** %pm.addr, align 8
  %op_pmflags74 = getelementptr inbounds %struct.pmop, %struct.pmop* %66, i32 0, i32 14
  %67 = load i32, i32* %op_pmflags74, align 4
  %and75 = and i32 %67, 16
  %tobool76 = icmp ne i32 %and75, 0
  br i1 %tobool76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.end.73
  %68 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  call void @Perl_sv_catpv(%struct.sv* %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i32 0, i32 0))
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %if.end.73
  %69 = load %struct.pmop*, %struct.pmop** %pm.addr, align 8
  %op_pmflags79 = getelementptr inbounds %struct.pmop, %struct.pmop* %69, i32 0, i32 14
  %70 = load i32, i32* %op_pmflags79, align 4
  %and80 = and i32 %70, 64
  %tobool81 = icmp ne i32 %and80, 0
  br i1 %tobool81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.end.78
  %71 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  call void @Perl_sv_catpv(%struct.sv* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0))
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %if.end.78
  %72 = load %struct.pmop*, %struct.pmop** %pm.addr, align 8
  %op_pmflags84 = getelementptr inbounds %struct.pmop, %struct.pmop* %72, i32 0, i32 14
  %73 = load i32, i32* %op_pmflags84, align 4
  %and85 = and i32 %73, 128
  %tobool86 = icmp ne i32 %and85, 0
  br i1 %tobool86, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %if.end.83
  %74 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  call void @Perl_sv_catpv(%struct.sv* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0))
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.87, %if.end.83
  %75 = load %struct.pmop*, %struct.pmop** %pm.addr, align 8
  %op_pmflags89 = getelementptr inbounds %struct.pmop, %struct.pmop* %75, i32 0, i32 14
  %76 = load i32, i32* %op_pmflags89, align 4
  %and90 = and i32 %76, 256
  %tobool91 = icmp ne i32 %and90, 0
  br i1 %tobool91, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.end.88
  %77 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  call void @Perl_sv_catpv(%struct.sv* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0))
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.92, %if.end.88
  %78 = load %struct.pmop*, %struct.pmop** %pm.addr, align 8
  %op_pmflags94 = getelementptr inbounds %struct.pmop, %struct.pmop* %78, i32 0, i32 14
  %79 = load i32, i32* %op_pmflags94, align 4
  %and95 = and i32 %79, 512
  %tobool96 = icmp ne i32 %and95, 0
  br i1 %tobool96, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %if.end.93
  %80 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  call void @Perl_sv_catpv(%struct.sv* %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0))
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.97, %if.end.93
  %81 = load %struct.pmop*, %struct.pmop** %pm.addr, align 8
  %op_pmflags99 = getelementptr inbounds %struct.pmop, %struct.pmop* %81, i32 0, i32 14
  %82 = load i32, i32* %op_pmflags99, align 4
  %and100 = and i32 %82, 1
  %tobool101 = icmp ne i32 %and100, 0
  br i1 %tobool101, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.98
  %83 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  call void @Perl_sv_catpv(%struct.sv* %83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i32 0, i32 0))
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.102, %if.end.98
  %84 = load %struct.pmop*, %struct.pmop** %pm.addr, align 8
  %op_pmflags104 = getelementptr inbounds %struct.pmop, %struct.pmop* %84, i32 0, i32 14
  %85 = load i32, i32* %op_pmflags104, align 4
  %and105 = and i32 %85, 1024
  %tobool106 = icmp ne i32 %and105, 0
  br i1 %tobool106, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %if.end.103
  %86 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  call void @Perl_sv_catpv(%struct.sv* %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0))
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.107, %if.end.103
  %87 = load i32, i32* %level.addr, align 4
  %88 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %89 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %89, i32 0, i32 0
  %90 = load i8*, i8** %sv_any, align 8
  %91 = bitcast i8* %90 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %91, i32 0, i32 1
  %92 = load i64, i64* %xpv_cur, align 8
  %tobool109 = icmp ne i64 %92, 0
  br i1 %tobool109, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.108
  %93 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %sv_any110 = getelementptr inbounds %struct.sv, %struct.sv* %93, i32 0, i32 0
  %94 = load i8*, i8** %sv_any110, align 8
  %95 = bitcast i8* %94 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %95, i32 0, i32 0
  %96 = load i8*, i8** %xpv_pv, align 8
  %add.ptr = getelementptr inbounds i8, i8* %96, i64 1
  br label %cond.end

cond.false:                                       ; preds = %if.end.108
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond111 = phi i8* [ %add.ptr, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %cond.false ]
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %87, %struct._PerlIO** %88, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.74, i32 0, i32 0), i8* %cond111)
  %97 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  call void @Perl_sv_free(%struct.sv* %97)
  br label %if.end.112

if.end.112:                                       ; preds = %cond.end, %land.lhs.true.23, %lor.lhs.false
  %98 = load i32, i32* %level.addr, align 4
  %sub = sub nsw i32 %98, 1
  %99 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %sub, %struct._PerlIO** %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end.112, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_pmop_dump(%struct.pmop* %pm) #0 {
entry:
  %pm.addr = alloca %struct.pmop*, align 8
  store %struct.pmop* %pm, %struct.pmop** %pm.addr, align 8
  %call = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %0 = load %struct.pmop*, %struct.pmop** %pm.addr, align 8
  call void @Perl_do_pmop_dump(i32 0, %struct._PerlIO** %call, %struct.pmop* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_do_op_dump(i32 %level, %struct._PerlIO** %file, %struct.op* %o) #0 {
entry:
  %level.addr = alloca i32, align 4
  %file.addr = alloca %struct._PerlIO**, align 8
  %o.addr = alloca %struct.op*, align 8
  %tmpsv = alloca %struct.sv*, align 8
  %tmpsv122 = alloca %struct.sv*, align 8
  %tmpsv675 = alloca %struct.sv*, align 8
  %n_a = alloca i64, align 8
  %kid = alloca %struct.op*, align 8
  store i32 %level, i32* %level.addr, align 4
  store %struct._PerlIO** %file, %struct._PerlIO*** %file.addr, align 8
  store %struct.op* %o, %struct.op** %o.addr, align 8
  %0 = load i32, i32* %level.addr, align 4
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %0, %struct._PerlIO** %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i32 0, i32 0))
  %2 = load i32, i32* %level.addr, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %level.addr, align 4
  %3 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_seq = getelementptr inbounds %struct.op, %struct.op* %3, i32 0, i32 5
  %4 = load i16, i16* %op_seq, align 2
  %tobool = icmp ne i16 %4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %6 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_seq1 = getelementptr inbounds %struct.op, %struct.op* %6, i32 0, i32 5
  %7 = load i16, i16* %op_seq1, align 2
  %conv = zext i16 %7 to i32
  %call = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i32 0, i32 0), i32 %conv)
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %call2 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %10 = load i32, i32* @PL_dumpindent, align 4
  %11 = load i32, i32* %level.addr, align 4
  %mul = mul nsw i32 %10, %11
  %sub = sub nsw i32 %mul, 4
  %12 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type = getelementptr inbounds %struct.op, %struct.op* %12, i32 0, i32 4
  %13 = load i16, i16* %op_type, align 2
  %conv3 = zext i16 %13 to i32
  %cmp = icmp eq i32 %conv3, 351
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %14 = load %struct.op*, %struct.op** %o.addr, align 8
  %call5 = call i8* @Perl_custom_op_name(%struct.op* %14)
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %15 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type6 = getelementptr inbounds %struct.op, %struct.op* %15, i32 0, i32 4
  %16 = load i16, i16* %op_type6, align 2
  %idxprom = zext i16 %16 to i64
  %arrayidx = getelementptr inbounds [0 x i8*], [0 x i8*]* @PL_op_name, i32 0, i64 %idxprom
  %17 = load i8*, i8** %arrayidx, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call5, %cond.true ], [ %17, %cond.false ]
  %call7 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.78, i32 0, i32 0), i32 %sub, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* %cond)
  %18 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %18, i32 0, i32 0
  %19 = load %struct.op*, %struct.op** %op_next, align 8
  %tobool8 = icmp ne %struct.op* %19, null
  br i1 %tobool8, label %if.then.9, label %if.else.23

if.then.9:                                        ; preds = %cond.end
  %20 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_seq10 = getelementptr inbounds %struct.op, %struct.op* %20, i32 0, i32 5
  %21 = load i16, i16* %op_seq10, align 2
  %tobool11 = icmp ne i16 %21, 0
  br i1 %tobool11, label %if.then.12, label %if.else.17

if.then.12:                                       ; preds = %if.then.9
  %22 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %23 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_next13 = getelementptr inbounds %struct.op, %struct.op* %23, i32 0, i32 0
  %24 = load %struct.op*, %struct.op** %op_next13, align 8
  %op_seq14 = getelementptr inbounds %struct.op, %struct.op* %24, i32 0, i32 5
  %25 = load i16, i16* %op_seq14, align 2
  %conv15 = zext i16 %25 to i32
  %call16 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i32 0, i32 0), i32 %conv15)
  br label %if.end.22

if.else.17:                                       ; preds = %if.then.9
  %26 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %27 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_next18 = getelementptr inbounds %struct.op, %struct.op* %27, i32 0, i32 0
  %28 = load %struct.op*, %struct.op** %op_next18, align 8
  %op_seq19 = getelementptr inbounds %struct.op, %struct.op* %28, i32 0, i32 5
  %29 = load i16, i16* %op_seq19, align 2
  %conv20 = zext i16 %29 to i32
  %call21 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i32 0, i32 0), i32 %conv20)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.17, %if.then.12
  br label %if.end.25

if.else.23:                                       ; preds = %cond.end
  %30 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %call24 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i32 0, i32 0))
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.23, %if.end.22
  %31 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %31, i32 0, i32 3
  %32 = load i64, i64* %op_targ, align 8
  %tobool26 = icmp ne i64 %32, 0
  br i1 %tobool26, label %if.then.27, label %if.end.68

if.then.27:                                       ; preds = %if.end.25
  %33 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type28 = getelementptr inbounds %struct.op, %struct.op* %33, i32 0, i32 4
  %34 = load i16, i16* %op_type28, align 2
  %conv29 = zext i16 %34 to i32
  %cmp30 = icmp eq i32 %conv29, 0
  br i1 %cmp30, label %if.then.32, label %if.else.65

if.then.32:                                       ; preds = %if.then.27
  %35 = load i32, i32* %level.addr, align 4
  %36 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %37 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_targ33 = getelementptr inbounds %struct.op, %struct.op* %37, i32 0, i32 3
  %38 = load i64, i64* %op_targ33, align 8
  %arrayidx34 = getelementptr inbounds [0 x i8*], [0 x i8*]* @PL_op_name, i32 0, i64 %38
  %39 = load i8*, i8** %arrayidx34, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %35, %struct._PerlIO** %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.82, i32 0, i32 0), i8* %39)
  %40 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_targ35 = getelementptr inbounds %struct.op, %struct.op* %40, i32 0, i32 3
  %41 = load i64, i64* %op_targ35, align 8
  %cmp36 = icmp eq i64 %41, 174
  br i1 %cmp36, label %if.then.38, label %if.end.64

if.then.38:                                       ; preds = %if.then.32
  %42 = load %struct.op*, %struct.op** %o.addr, align 8
  %43 = bitcast %struct.op* %42 to %struct.cop*
  %cop_line = getelementptr inbounds %struct.cop, %struct.cop* %43, i32 0, i32 13
  %44 = load i32, i32* %cop_line, align 4
  %tobool39 = icmp ne i32 %44, 0
  br i1 %tobool39, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %if.then.38
  %45 = load i32, i32* %level.addr, align 4
  %46 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %47 = load %struct.op*, %struct.op** %o.addr, align 8
  %48 = bitcast %struct.op* %47 to %struct.cop*
  %cop_line41 = getelementptr inbounds %struct.cop, %struct.cop* %48, i32 0, i32 13
  %49 = load i32, i32* %cop_line41, align 4
  %conv42 = zext i32 %49 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %45, %struct._PerlIO** %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.83, i32 0, i32 0), i64 %conv42)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %if.then.38
  %50 = load %struct.op*, %struct.op** %o.addr, align 8
  %51 = bitcast %struct.op* %50 to %struct.cop*
  %cop_stash = getelementptr inbounds %struct.cop, %struct.cop* %51, i32 0, i32 9
  %52 = load %struct.hv*, %struct.hv** %cop_stash, align 8
  %tobool44 = icmp ne %struct.hv* %52, null
  br i1 %tobool44, label %cond.true.45, label %cond.false.48

cond.true.45:                                     ; preds = %if.end.43
  %53 = load %struct.op*, %struct.op** %o.addr, align 8
  %54 = bitcast %struct.op* %53 to %struct.cop*
  %cop_stash46 = getelementptr inbounds %struct.cop, %struct.cop* %54, i32 0, i32 9
  %55 = load %struct.hv*, %struct.hv** %cop_stash46, align 8
  %sv_any = getelementptr inbounds %struct.hv, %struct.hv* %55, i32 0, i32 0
  %56 = load %struct.xpvhv*, %struct.xpvhv** %sv_any, align 8
  %xhv_name = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %56, i32 0, i32 10
  %57 = load i8*, i8** %xhv_name, align 8
  %tobool47 = icmp ne i8* %57, null
  br i1 %tobool47, label %if.then.49, label %if.end.59

cond.false.48:                                    ; preds = %if.end.43
  br i1 false, label %if.then.49, label %if.end.59

if.then.49:                                       ; preds = %cond.false.48, %cond.true.45
  %58 = load i32, i32* %level.addr, align 4
  %59 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %60 = load %struct.op*, %struct.op** %o.addr, align 8
  %61 = bitcast %struct.op* %60 to %struct.cop*
  %cop_stash50 = getelementptr inbounds %struct.cop, %struct.cop* %61, i32 0, i32 9
  %62 = load %struct.hv*, %struct.hv** %cop_stash50, align 8
  %tobool51 = icmp ne %struct.hv* %62, null
  br i1 %tobool51, label %cond.true.52, label %cond.false.56

cond.true.52:                                     ; preds = %if.then.49
  %63 = load %struct.op*, %struct.op** %o.addr, align 8
  %64 = bitcast %struct.op* %63 to %struct.cop*
  %cop_stash53 = getelementptr inbounds %struct.cop, %struct.cop* %64, i32 0, i32 9
  %65 = load %struct.hv*, %struct.hv** %cop_stash53, align 8
  %sv_any54 = getelementptr inbounds %struct.hv, %struct.hv* %65, i32 0, i32 0
  %66 = load %struct.xpvhv*, %struct.xpvhv** %sv_any54, align 8
  %xhv_name55 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %66, i32 0, i32 10
  %67 = load i8*, i8** %xhv_name55, align 8
  br label %cond.end.57

cond.false.56:                                    ; preds = %if.then.49
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.56, %cond.true.52
  %cond58 = phi i8* [ %67, %cond.true.52 ], [ null, %cond.false.56 ]
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %58, %struct._PerlIO** %59, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.84, i32 0, i32 0), i8* %cond58)
  br label %if.end.59

if.end.59:                                        ; preds = %cond.end.57, %cond.false.48, %cond.true.45
  %68 = load %struct.op*, %struct.op** %o.addr, align 8
  %69 = bitcast %struct.op* %68 to %struct.cop*
  %cop_label = getelementptr inbounds %struct.cop, %struct.cop* %69, i32 0, i32 8
  %70 = load i8*, i8** %cop_label, align 8
  %tobool60 = icmp ne i8* %70, null
  br i1 %tobool60, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %if.end.59
  %71 = load i32, i32* %level.addr, align 4
  %72 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %73 = load %struct.op*, %struct.op** %o.addr, align 8
  %74 = bitcast %struct.op* %73 to %struct.cop*
  %cop_label62 = getelementptr inbounds %struct.cop, %struct.cop* %74, i32 0, i32 8
  %75 = load i8*, i8** %cop_label62, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %71, %struct._PerlIO** %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.85, i32 0, i32 0), i8* %75)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %if.end.59
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.32
  br label %if.end.67

if.else.65:                                       ; preds = %if.then.27
  %76 = load i32, i32* %level.addr, align 4
  %77 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %78 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_targ66 = getelementptr inbounds %struct.op, %struct.op* %78, i32 0, i32 3
  %79 = load i64, i64* %op_targ66, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %76, %struct._PerlIO** %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.86, i32 0, i32 0), i64 %79)
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.65, %if.end.64
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.end.25
  %80 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_flags = getelementptr inbounds %struct.op, %struct.op* %80, i32 0, i32 6
  %81 = load i8, i8* %op_flags, align 1
  %tobool69 = icmp ne i8 %81, 0
  br i1 %tobool69, label %if.then.70, label %if.end.119

if.then.70:                                       ; preds = %if.end.68
  %call71 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i64 0)
  store %struct.sv* %call71, %struct.sv** %tmpsv, align 8
  %82 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_flags72 = getelementptr inbounds %struct.op, %struct.op* %82, i32 0, i32 6
  %83 = load i8, i8* %op_flags72, align 1
  %conv73 = zext i8 %83 to i32
  %and = and i32 %conv73, 3
  switch i32 %and, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.74
    i32 3, label %sw.bb.75
  ]

sw.bb:                                            ; preds = %if.then.70
  %84 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  call void @Perl_sv_catpv(%struct.sv* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i32 0, i32 0))
  br label %sw.epilog

sw.bb.74:                                         ; preds = %if.then.70
  %85 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  call void @Perl_sv_catpv(%struct.sv* %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.88, i32 0, i32 0))
  br label %sw.epilog

sw.bb.75:                                         ; preds = %if.then.70
  %86 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  call void @Perl_sv_catpv(%struct.sv* %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i32 0, i32 0))
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.70
  %87 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  call void @Perl_sv_catpv(%struct.sv* %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.90, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.75, %sw.bb.74, %sw.bb
  %88 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_flags76 = getelementptr inbounds %struct.op, %struct.op* %88, i32 0, i32 6
  %89 = load i8, i8* %op_flags76, align 1
  %conv77 = zext i8 %89 to i32
  %and78 = and i32 %conv77, 4
  %tobool79 = icmp ne i32 %and78, 0
  br i1 %tobool79, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %sw.epilog
  %90 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  call void @Perl_sv_catpv(%struct.sv* %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i32 0, i32 0))
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %sw.epilog
  %91 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_flags82 = getelementptr inbounds %struct.op, %struct.op* %91, i32 0, i32 6
  %92 = load i8, i8* %op_flags82, align 1
  %conv83 = zext i8 %92 to i32
  %and84 = and i32 %conv83, 8
  %tobool85 = icmp ne i32 %and84, 0
  br i1 %tobool85, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.end.81
  %93 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  call void @Perl_sv_catpv(%struct.sv* %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.92, i32 0, i32 0))
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.86, %if.end.81
  %94 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_flags88 = getelementptr inbounds %struct.op, %struct.op* %94, i32 0, i32 6
  %95 = load i8, i8* %op_flags88, align 1
  %conv89 = zext i8 %95 to i32
  %and90 = and i32 %conv89, 64
  %tobool91 = icmp ne i32 %and90, 0
  br i1 %tobool91, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.end.87
  %96 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  call void @Perl_sv_catpv(%struct.sv* %96, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.93, i32 0, i32 0))
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.92, %if.end.87
  %97 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_flags94 = getelementptr inbounds %struct.op, %struct.op* %97, i32 0, i32 6
  %98 = load i8, i8* %op_flags94, align 1
  %conv95 = zext i8 %98 to i32
  %and96 = and i32 %conv95, 16
  %tobool97 = icmp ne i32 %and96, 0
  br i1 %tobool97, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.end.93
  %99 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  call void @Perl_sv_catpv(%struct.sv* %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.94, i32 0, i32 0))
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.98, %if.end.93
  %100 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_flags100 = getelementptr inbounds %struct.op, %struct.op* %100, i32 0, i32 6
  %101 = load i8, i8* %op_flags100, align 1
  %conv101 = zext i8 %101 to i32
  %and102 = and i32 %conv101, 32
  %tobool103 = icmp ne i32 %and102, 0
  br i1 %tobool103, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %if.end.99
  %102 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  call void @Perl_sv_catpv(%struct.sv* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i32 0, i32 0))
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.104, %if.end.99
  %103 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_flags106 = getelementptr inbounds %struct.op, %struct.op* %103, i32 0, i32 6
  %104 = load i8, i8* %op_flags106, align 1
  %conv107 = zext i8 %104 to i32
  %and108 = and i32 %conv107, 128
  %tobool109 = icmp ne i32 %and108, 0
  br i1 %tobool109, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %if.end.105
  %105 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  call void @Perl_sv_catpv(%struct.sv* %105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.96, i32 0, i32 0))
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.110, %if.end.105
  %106 = load i32, i32* %level.addr, align 4
  %107 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %108 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %sv_any112 = getelementptr inbounds %struct.sv, %struct.sv* %108, i32 0, i32 0
  %109 = load i8*, i8** %sv_any112, align 8
  %110 = bitcast i8* %109 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %110, i32 0, i32 1
  %111 = load i64, i64* %xpv_cur, align 8
  %tobool113 = icmp ne i64 %111, 0
  br i1 %tobool113, label %cond.true.114, label %cond.false.116

cond.true.114:                                    ; preds = %if.end.111
  %112 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %sv_any115 = getelementptr inbounds %struct.sv, %struct.sv* %112, i32 0, i32 0
  %113 = load i8*, i8** %sv_any115, align 8
  %114 = bitcast i8* %113 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %114, i32 0, i32 0
  %115 = load i8*, i8** %xpv_pv, align 8
  %add.ptr = getelementptr inbounds i8, i8* %115, i64 1
  br label %cond.end.117

cond.false.116:                                   ; preds = %if.end.111
  br label %cond.end.117

cond.end.117:                                     ; preds = %cond.false.116, %cond.true.114
  %cond118 = phi i8* [ %add.ptr, %cond.true.114 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %cond.false.116 ]
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %106, %struct._PerlIO** %107, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.97, i32 0, i32 0), i8* %cond118)
  %116 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  call void @Perl_sv_free(%struct.sv* %116)
  br label %if.end.119

if.end.119:                                       ; preds = %cond.end.117, %if.end.68
  %117 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %117, i32 0, i32 7
  %118 = load i8, i8* %op_private, align 1
  %tobool120 = icmp ne i8 %118, 0
  br i1 %tobool120, label %if.then.121, label %if.end.664

if.then.121:                                      ; preds = %if.end.119
  %call123 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i64 0)
  store %struct.sv* %call123, %struct.sv** %tmpsv122, align 8
  %119 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type124 = getelementptr inbounds %struct.op, %struct.op* %119, i32 0, i32 4
  %120 = load i16, i16* %op_type124, align 2
  %idxprom125 = zext i16 %120 to i64
  %arrayidx126 = getelementptr inbounds [0 x i32], [0 x i32]* @PL_opargs, i32 0, i64 %idxprom125
  %121 = load i32, i32* %arrayidx126, align 4
  %and127 = and i32 %121, 256
  %tobool128 = icmp ne i32 %and127, 0
  br i1 %tobool128, label %if.then.129, label %if.else.136

if.then.129:                                      ; preds = %if.then.121
  %122 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private130 = getelementptr inbounds %struct.op, %struct.op* %122, i32 0, i32 7
  %123 = load i8, i8* %op_private130, align 1
  %conv131 = zext i8 %123 to i32
  %and132 = and i32 %conv131, 16
  %tobool133 = icmp ne i32 %and132, 0
  br i1 %tobool133, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %if.then.129
  %124 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %124, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.98, i32 0, i32 0))
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.134, %if.then.129
  br label %if.end.645

if.else.136:                                      ; preds = %if.then.121
  %125 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type137 = getelementptr inbounds %struct.op, %struct.op* %125, i32 0, i32 4
  %126 = load i16, i16* %op_type137, align 2
  %conv138 = zext i16 %126 to i32
  %cmp139 = icmp eq i32 %conv138, 167
  br i1 %cmp139, label %if.then.155, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.136
  %127 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type141 = getelementptr inbounds %struct.op, %struct.op* %127, i32 0, i32 4
  %128 = load i16, i16* %op_type141, align 2
  %conv142 = zext i16 %128 to i32
  %cmp143 = icmp eq i32 %conv142, 178
  br i1 %cmp143, label %if.then.155, label %lor.lhs.false.145

lor.lhs.false.145:                                ; preds = %lor.lhs.false
  %129 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type146 = getelementptr inbounds %struct.op, %struct.op* %129, i32 0, i32 4
  %130 = load i16, i16* %op_type146, align 2
  %conv147 = zext i16 %130 to i32
  %cmp148 = icmp eq i32 %conv147, 168
  br i1 %cmp148, label %if.then.155, label %lor.lhs.false.150

lor.lhs.false.150:                                ; preds = %lor.lhs.false.145
  %131 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type151 = getelementptr inbounds %struct.op, %struct.op* %131, i32 0, i32 4
  %132 = load i16, i16* %op_type151, align 2
  %conv152 = zext i16 %132 to i32
  %cmp153 = icmp eq i32 %conv152, 207
  br i1 %cmp153, label %if.then.155, label %if.else.162

if.then.155:                                      ; preds = %lor.lhs.false.150, %lor.lhs.false.145, %lor.lhs.false, %if.else.136
  %133 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private156 = getelementptr inbounds %struct.op, %struct.op* %133, i32 0, i32 7
  %134 = load i8, i8* %op_private156, align 1
  %conv157 = zext i8 %134 to i32
  %and158 = and i32 %conv157, 64
  %tobool159 = icmp ne i32 %and158, 0
  br i1 %tobool159, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %if.then.155
  %135 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %135, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.99, i32 0, i32 0))
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.160, %if.then.155
  br label %if.end.644

if.else.162:                                      ; preds = %lor.lhs.false.150
  %136 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type163 = getelementptr inbounds %struct.op, %struct.op* %136, i32 0, i32 4
  %137 = load i16, i16* %op_type163, align 2
  %conv164 = zext i16 %137 to i32
  %cmp165 = icmp eq i32 %conv164, 37
  br i1 %cmp165, label %if.then.167, label %if.else.180

if.then.167:                                      ; preds = %if.else.162
  %138 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private168 = getelementptr inbounds %struct.op, %struct.op* %138, i32 0, i32 7
  %139 = load i8, i8* %op_private168, align 1
  %conv169 = zext i8 %139 to i32
  %and170 = and i32 %conv169, 64
  %tobool171 = icmp ne i32 %and170, 0
  br i1 %tobool171, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %if.then.167
  %140 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %140, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.100, i32 0, i32 0))
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.172, %if.then.167
  %141 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private174 = getelementptr inbounds %struct.op, %struct.op* %141, i32 0, i32 7
  %142 = load i8, i8* %op_private174, align 1
  %conv175 = zext i8 %142 to i32
  %and176 = and i32 %conv175, 32
  %tobool177 = icmp ne i32 %and176, 0
  br i1 %tobool177, label %if.then.178, label %if.end.179

if.then.178:                                      ; preds = %if.end.173
  %143 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %143, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.101, i32 0, i32 0))
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.178, %if.end.173
  br label %if.end.643

if.else.180:                                      ; preds = %if.else.162
  %144 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type181 = getelementptr inbounds %struct.op, %struct.op* %144, i32 0, i32 4
  %145 = load i16, i16* %op_type181, align 2
  %conv182 = zext i16 %145 to i32
  %cmp183 = icmp eq i32 %conv182, 36
  br i1 %cmp183, label %if.then.185, label %if.else.192

if.then.185:                                      ; preds = %if.else.180
  %146 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private186 = getelementptr inbounds %struct.op, %struct.op* %146, i32 0, i32 7
  %147 = load i8, i8* %op_private186, align 1
  %conv187 = zext i8 %147 to i32
  %and188 = and i32 %conv187, 64
  %tobool189 = icmp ne i32 %and188, 0
  br i1 %tobool189, label %if.then.190, label %if.end.191

if.then.190:                                      ; preds = %if.then.185
  %148 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %148, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.102, i32 0, i32 0))
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.190, %if.then.185
  br label %if.end.642

if.else.192:                                      ; preds = %if.else.180
  %149 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type193 = getelementptr inbounds %struct.op, %struct.op* %149, i32 0, i32 4
  %150 = load i16, i16* %op_type193, align 2
  %conv194 = zext i16 %150 to i32
  %cmp195 = icmp eq i32 %conv194, 35
  br i1 %cmp195, label %if.then.197, label %if.else.228

if.then.197:                                      ; preds = %if.else.192
  %151 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private198 = getelementptr inbounds %struct.op, %struct.op* %151, i32 0, i32 7
  %152 = load i8, i8* %op_private198, align 1
  %conv199 = zext i8 %152 to i32
  %and200 = and i32 %conv199, 8
  %tobool201 = icmp ne i32 %and200, 0
  br i1 %tobool201, label %if.then.202, label %if.end.203

if.then.202:                                      ; preds = %if.then.197
  %153 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %153, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.103, i32 0, i32 0))
  br label %if.end.203

if.end.203:                                       ; preds = %if.then.202, %if.then.197
  %154 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private204 = getelementptr inbounds %struct.op, %struct.op* %154, i32 0, i32 7
  %155 = load i8, i8* %op_private204, align 1
  %conv205 = zext i8 %155 to i32
  %and206 = and i32 %conv205, 16
  %tobool207 = icmp ne i32 %and206, 0
  br i1 %tobool207, label %if.then.208, label %if.end.209

if.then.208:                                      ; preds = %if.end.203
  %156 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %156, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.104, i32 0, i32 0))
  br label %if.end.209

if.end.209:                                       ; preds = %if.then.208, %if.end.203
  %157 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private210 = getelementptr inbounds %struct.op, %struct.op* %157, i32 0, i32 7
  %158 = load i8, i8* %op_private210, align 1
  %conv211 = zext i8 %158 to i32
  %and212 = and i32 %conv211, 32
  %tobool213 = icmp ne i32 %and212, 0
  br i1 %tobool213, label %if.then.214, label %if.end.215

if.then.214:                                      ; preds = %if.end.209
  %159 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %159, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.105, i32 0, i32 0))
  br label %if.end.215

if.end.215:                                       ; preds = %if.then.214, %if.end.209
  %160 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private216 = getelementptr inbounds %struct.op, %struct.op* %160, i32 0, i32 7
  %161 = load i8, i8* %op_private216, align 1
  %conv217 = zext i8 %161 to i32
  %and218 = and i32 %conv217, 4
  %tobool219 = icmp ne i32 %and218, 0
  br i1 %tobool219, label %if.then.220, label %if.end.221

if.then.220:                                      ; preds = %if.end.215
  %162 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %162, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.106, i32 0, i32 0))
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.220, %if.end.215
  %163 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private222 = getelementptr inbounds %struct.op, %struct.op* %163, i32 0, i32 7
  %164 = load i8, i8* %op_private222, align 1
  %conv223 = zext i8 %164 to i32
  %and224 = and i32 %conv223, 64
  %tobool225 = icmp ne i32 %and224, 0
  br i1 %tobool225, label %if.then.226, label %if.end.227

if.then.226:                                      ; preds = %if.end.221
  %165 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %165, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.107, i32 0, i32 0))
  br label %if.end.227

if.end.227:                                       ; preds = %if.then.226, %if.end.221
  br label %if.end.641

if.else.228:                                      ; preds = %if.else.192
  %166 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type229 = getelementptr inbounds %struct.op, %struct.op* %166, i32 0, i32 4
  %167 = load i16, i16* %op_type229, align 2
  %conv230 = zext i16 %167 to i32
  %cmp231 = icmp eq i32 %conv230, 61
  br i1 %cmp231, label %if.then.233, label %if.else.240

if.then.233:                                      ; preds = %if.else.228
  %168 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private234 = getelementptr inbounds %struct.op, %struct.op* %168, i32 0, i32 7
  %169 = load i8, i8* %op_private234, align 1
  %conv235 = zext i8 %169 to i32
  %and236 = and i32 %conv235, 64
  %tobool237 = icmp ne i32 %and236, 0
  br i1 %tobool237, label %if.then.238, label %if.end.239

if.then.238:                                      ; preds = %if.then.233
  %170 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %170, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.108, i32 0, i32 0))
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.238, %if.then.233
  br label %if.end.640

if.else.240:                                      ; preds = %if.else.228
  %171 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type241 = getelementptr inbounds %struct.op, %struct.op* %171, i32 0, i32 4
  %172 = load i16, i16* %op_type241, align 2
  %conv242 = zext i16 %172 to i32
  %cmp243 = icmp eq i32 %conv242, 166
  br i1 %cmp243, label %if.then.280, label %lor.lhs.false.245

lor.lhs.false.245:                                ; preds = %if.else.240
  %173 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type246 = getelementptr inbounds %struct.op, %struct.op* %173, i32 0, i32 4
  %174 = load i16, i16* %op_type246, align 2
  %conv247 = zext i16 %174 to i32
  %cmp248 = icmp eq i32 %conv247, 15
  br i1 %cmp248, label %if.then.280, label %lor.lhs.false.250

lor.lhs.false.250:                                ; preds = %lor.lhs.false.245
  %175 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type251 = getelementptr inbounds %struct.op, %struct.op* %175, i32 0, i32 4
  %176 = load i16, i16* %op_type251, align 2
  %conv252 = zext i16 %176 to i32
  %cmp253 = icmp eq i32 %conv252, 6
  br i1 %cmp253, label %if.then.280, label %lor.lhs.false.255

lor.lhs.false.255:                                ; preds = %lor.lhs.false.250
  %177 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type256 = getelementptr inbounds %struct.op, %struct.op* %177, i32 0, i32 4
  %178 = load i16, i16* %op_type256, align 2
  %conv257 = zext i16 %178 to i32
  %cmp258 = icmp eq i32 %conv257, 125
  br i1 %cmp258, label %if.then.280, label %lor.lhs.false.260

lor.lhs.false.260:                                ; preds = %lor.lhs.false.255
  %179 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type261 = getelementptr inbounds %struct.op, %struct.op* %179, i32 0, i32 4
  %180 = load i16, i16* %op_type261, align 2
  %conv262 = zext i16 %180 to i32
  %cmp263 = icmp eq i32 %conv262, 134
  br i1 %cmp263, label %if.then.280, label %lor.lhs.false.265

lor.lhs.false.265:                                ; preds = %lor.lhs.false.260
  %181 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type266 = getelementptr inbounds %struct.op, %struct.op* %181, i32 0, i32 4
  %182 = load i16, i16* %op_type266, align 2
  %conv267 = zext i16 %182 to i32
  %cmp268 = icmp eq i32 %conv267, 14
  br i1 %cmp268, label %if.then.280, label %lor.lhs.false.270

lor.lhs.false.270:                                ; preds = %lor.lhs.false.265
  %183 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type271 = getelementptr inbounds %struct.op, %struct.op* %183, i32 0, i32 4
  %184 = load i16, i16* %op_type271, align 2
  %conv272 = zext i16 %184 to i32
  %cmp273 = icmp eq i32 %conv272, 127
  br i1 %cmp273, label %if.then.280, label %lor.lhs.false.275

lor.lhs.false.275:                                ; preds = %lor.lhs.false.270
  %185 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type276 = getelementptr inbounds %struct.op, %struct.op* %185, i32 0, i32 4
  %186 = load i16, i16* %op_type276, align 2
  %conv277 = zext i16 %186 to i32
  %cmp278 = icmp eq i32 %conv277, 135
  br i1 %cmp278, label %if.then.280, label %if.else.367

if.then.280:                                      ; preds = %lor.lhs.false.275, %lor.lhs.false.270, %lor.lhs.false.265, %lor.lhs.false.260, %lor.lhs.false.255, %lor.lhs.false.250, %lor.lhs.false.245, %if.else.240
  %187 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type281 = getelementptr inbounds %struct.op, %struct.op* %187, i32 0, i32 4
  %188 = load i16, i16* %op_type281, align 2
  %conv282 = zext i16 %188 to i32
  %cmp283 = icmp eq i32 %conv282, 166
  br i1 %cmp283, label %if.then.285, label %if.else.322

if.then.285:                                      ; preds = %if.then.280
  %189 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private286 = getelementptr inbounds %struct.op, %struct.op* %189, i32 0, i32 7
  %190 = load i8, i8* %op_private286, align 1
  %conv287 = zext i8 %190 to i32
  %and288 = and i32 %conv287, 8
  %tobool289 = icmp ne i32 %and288, 0
  br i1 %tobool289, label %if.then.290, label %if.end.291

if.then.290:                                      ; preds = %if.then.285
  %191 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %191, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.109, i32 0, i32 0))
  br label %if.end.291

if.end.291:                                       ; preds = %if.then.290, %if.then.285
  %192 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private292 = getelementptr inbounds %struct.op, %struct.op* %192, i32 0, i32 7
  %193 = load i8, i8* %op_private292, align 1
  %conv293 = zext i8 %193 to i32
  %and294 = and i32 %conv293, 16
  %tobool295 = icmp ne i32 %and294, 0
  br i1 %tobool295, label %if.then.296, label %if.end.297

if.then.296:                                      ; preds = %if.end.291
  %194 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %194, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.110, i32 0, i32 0))
  br label %if.end.297

if.end.297:                                       ; preds = %if.then.296, %if.end.291
  %195 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private298 = getelementptr inbounds %struct.op, %struct.op* %195, i32 0, i32 7
  %196 = load i8, i8* %op_private298, align 1
  %conv299 = zext i8 %196 to i32
  %and300 = and i32 %conv299, 32
  %tobool301 = icmp ne i32 %and300, 0
  br i1 %tobool301, label %if.then.302, label %if.end.303

if.then.302:                                      ; preds = %if.end.297
  %197 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %197, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.111, i32 0, i32 0))
  br label %if.end.303

if.end.303:                                       ; preds = %if.then.302, %if.end.297
  %198 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private304 = getelementptr inbounds %struct.op, %struct.op* %198, i32 0, i32 7
  %199 = load i8, i8* %op_private304, align 1
  %conv305 = zext i8 %199 to i32
  %and306 = and i32 %conv305, 128
  %tobool307 = icmp ne i32 %and306, 0
  br i1 %tobool307, label %if.then.308, label %if.end.309

if.then.308:                                      ; preds = %if.end.303
  %200 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %200, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.112, i32 0, i32 0))
  br label %if.end.309

if.end.309:                                       ; preds = %if.then.308, %if.end.303
  %201 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private310 = getelementptr inbounds %struct.op, %struct.op* %201, i32 0, i32 7
  %202 = load i8, i8* %op_private310, align 1
  %conv311 = zext i8 %202 to i32
  %and312 = and i32 %conv311, 4
  %tobool313 = icmp ne i32 %and312, 0
  br i1 %tobool313, label %if.then.314, label %if.end.315

if.then.314:                                      ; preds = %if.end.309
  %203 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %203, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.113, i32 0, i32 0))
  br label %if.end.315

if.end.315:                                       ; preds = %if.then.314, %if.end.309
  %204 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private316 = getelementptr inbounds %struct.op, %struct.op* %204, i32 0, i32 7
  %205 = load i8, i8* %op_private316, align 1
  %conv317 = zext i8 %205 to i32
  %and318 = and i32 %conv317, 64
  %tobool319 = icmp ne i32 %and318, 0
  br i1 %tobool319, label %if.then.320, label %if.end.321

if.then.320:                                      ; preds = %if.end.315
  %206 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %206, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.114, i32 0, i32 0))
  br label %if.end.321

if.end.321:                                       ; preds = %if.then.320, %if.end.315
  br label %if.end.336

if.else.322:                                      ; preds = %if.then.280
  %207 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private323 = getelementptr inbounds %struct.op, %struct.op* %207, i32 0, i32 7
  %208 = load i8, i8* %op_private323, align 1
  %conv324 = zext i8 %208 to i32
  %and325 = and i32 %conv324, 96
  switch i32 %and325, label %sw.epilog.329 [
    i32 96, label %sw.bb.326
    i32 32, label %sw.bb.327
    i32 64, label %sw.bb.328
  ]

sw.bb.326:                                        ; preds = %if.else.322
  %209 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %209, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.115, i32 0, i32 0))
  br label %sw.epilog.329

sw.bb.327:                                        ; preds = %if.else.322
  %210 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %210, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.116, i32 0, i32 0))
  br label %sw.epilog.329

sw.bb.328:                                        ; preds = %if.else.322
  %211 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %211, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.117, i32 0, i32 0))
  br label %sw.epilog.329

sw.epilog.329:                                    ; preds = %if.else.322, %sw.bb.328, %sw.bb.327, %sw.bb.326
  %212 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private330 = getelementptr inbounds %struct.op, %struct.op* %212, i32 0, i32 7
  %213 = load i8, i8* %op_private330, align 1
  %conv331 = zext i8 %213 to i32
  %and332 = and i32 %conv331, 8
  %tobool333 = icmp ne i32 %and332, 0
  br i1 %tobool333, label %if.then.334, label %if.end.335

if.then.334:                                      ; preds = %sw.epilog.329
  %214 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %214, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.118, i32 0, i32 0))
  br label %if.end.335

if.end.335:                                       ; preds = %if.then.334, %sw.epilog.329
  br label %if.end.336

if.end.336:                                       ; preds = %if.end.335, %if.end.321
  %215 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type337 = getelementptr inbounds %struct.op, %struct.op* %215, i32 0, i32 4
  %216 = load i16, i16* %op_type337, align 2
  %conv338 = zext i16 %216 to i32
  %cmp339 = icmp eq i32 %conv338, 127
  br i1 %cmp339, label %if.then.346, label %lor.lhs.false.341

lor.lhs.false.341:                                ; preds = %if.end.336
  %217 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type342 = getelementptr inbounds %struct.op, %struct.op* %217, i32 0, i32 4
  %218 = load i16, i16* %op_type342, align 2
  %conv343 = zext i16 %218 to i32
  %cmp344 = icmp eq i32 %conv343, 135
  br i1 %cmp344, label %if.then.346, label %if.else.353

if.then.346:                                      ; preds = %lor.lhs.false.341, %if.end.336
  %219 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private347 = getelementptr inbounds %struct.op, %struct.op* %219, i32 0, i32 7
  %220 = load i8, i8* %op_private347, align 1
  %conv348 = zext i8 %220 to i32
  %and349 = and i32 %conv348, 16
  %tobool350 = icmp ne i32 %and349, 0
  br i1 %tobool350, label %if.then.351, label %if.end.352

if.then.351:                                      ; preds = %if.then.346
  %221 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %221, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.119, i32 0, i32 0))
  br label %if.end.352

if.end.352:                                       ; preds = %if.then.351, %if.then.346
  br label %if.end.366

if.else.353:                                      ; preds = %lor.lhs.false.341
  %222 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private354 = getelementptr inbounds %struct.op, %struct.op* %222, i32 0, i32 7
  %223 = load i8, i8* %op_private354, align 1
  %conv355 = zext i8 %223 to i32
  %and356 = and i32 %conv355, 2
  %tobool357 = icmp ne i32 %and356, 0
  br i1 %tobool357, label %if.then.358, label %if.end.359

if.then.358:                                      ; preds = %if.else.353
  %224 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %224, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.120, i32 0, i32 0))
  br label %if.end.359

if.end.359:                                       ; preds = %if.then.358, %if.else.353
  %225 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private360 = getelementptr inbounds %struct.op, %struct.op* %225, i32 0, i32 7
  %226 = load i8, i8* %op_private360, align 1
  %conv361 = zext i8 %226 to i32
  %and362 = and i32 %conv361, 16
  %tobool363 = icmp ne i32 %and362, 0
  br i1 %tobool363, label %if.then.364, label %if.end.365

if.then.364:                                      ; preds = %if.end.359
  %227 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %227, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.121, i32 0, i32 0))
  br label %if.end.365

if.end.365:                                       ; preds = %if.then.364, %if.end.359
  br label %if.end.366

if.end.366:                                       ; preds = %if.end.365, %if.end.352
  br label %if.end.639

if.else.367:                                      ; preds = %lor.lhs.false.275
  %228 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type368 = getelementptr inbounds %struct.op, %struct.op* %228, i32 0, i32 4
  %229 = load i16, i16* %op_type368, align 2
  %conv369 = zext i16 %229 to i32
  %cmp370 = icmp eq i32 %conv369, 5
  br i1 %cmp370, label %if.then.372, label %if.else.403

if.then.372:                                      ; preds = %if.else.367
  %230 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private373 = getelementptr inbounds %struct.op, %struct.op* %230, i32 0, i32 7
  %231 = load i8, i8* %op_private373, align 1
  %conv374 = zext i8 %231 to i32
  %and375 = and i32 %conv374, 64
  %tobool376 = icmp ne i32 %and375, 0
  br i1 %tobool376, label %if.then.377, label %if.end.378

if.then.377:                                      ; preds = %if.then.372
  %232 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %232, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.122, i32 0, i32 0))
  br label %if.end.378

if.end.378:                                       ; preds = %if.then.377, %if.then.372
  %233 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private379 = getelementptr inbounds %struct.op, %struct.op* %233, i32 0, i32 7
  %234 = load i8, i8* %op_private379, align 1
  %conv380 = zext i8 %234 to i32
  %and381 = and i32 %conv380, 8
  %tobool382 = icmp ne i32 %and381, 0
  br i1 %tobool382, label %if.then.383, label %if.end.384

if.then.383:                                      ; preds = %if.end.378
  %235 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %235, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.123, i32 0, i32 0))
  br label %if.end.384

if.end.384:                                       ; preds = %if.then.383, %if.end.378
  %236 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private385 = getelementptr inbounds %struct.op, %struct.op* %236, i32 0, i32 7
  %237 = load i8, i8* %op_private385, align 1
  %conv386 = zext i8 %237 to i32
  %and387 = and i32 %conv386, 32
  %tobool388 = icmp ne i32 %and387, 0
  br i1 %tobool388, label %if.then.389, label %if.end.390

if.then.389:                                      ; preds = %if.end.384
  %238 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %238, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.124, i32 0, i32 0))
  br label %if.end.390

if.end.390:                                       ; preds = %if.then.389, %if.end.384
  %239 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private391 = getelementptr inbounds %struct.op, %struct.op* %239, i32 0, i32 7
  %240 = load i8, i8* %op_private391, align 1
  %conv392 = zext i8 %240 to i32
  %and393 = and i32 %conv392, 128
  %tobool394 = icmp ne i32 %and393, 0
  br i1 %tobool394, label %if.then.395, label %if.end.396

if.then.395:                                      ; preds = %if.end.390
  %241 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %241, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.125, i32 0, i32 0))
  br label %if.end.396

if.end.396:                                       ; preds = %if.then.395, %if.end.390
  %242 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private397 = getelementptr inbounds %struct.op, %struct.op* %242, i32 0, i32 7
  %243 = load i8, i8* %op_private397, align 1
  %conv398 = zext i8 %243 to i32
  %and399 = and i32 %conv398, 16
  %tobool400 = icmp ne i32 %and399, 0
  br i1 %tobool400, label %if.then.401, label %if.end.402

if.then.401:                                      ; preds = %if.end.396
  %244 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %244, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.126, i32 0, i32 0))
  br label %if.end.402

if.end.402:                                       ; preds = %if.then.401, %if.end.396
  br label %if.end.638

if.else.403:                                      ; preds = %if.else.367
  %245 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type404 = getelementptr inbounds %struct.op, %struct.op* %245, i32 0, i32 4
  %246 = load i16, i16* %op_type404, align 2
  %conv405 = zext i16 %246 to i32
  %cmp406 = icmp eq i32 %conv405, 157
  br i1 %cmp406, label %if.then.408, label %if.else.415

if.then.408:                                      ; preds = %if.else.403
  %247 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private409 = getelementptr inbounds %struct.op, %struct.op* %247, i32 0, i32 7
  %248 = load i8, i8* %op_private409, align 1
  %conv410 = zext i8 %248 to i32
  %and411 = and i32 %conv410, 64
  %tobool412 = icmp ne i32 %and411, 0
  br i1 %tobool412, label %if.then.413, label %if.end.414

if.then.413:                                      ; preds = %if.then.408
  %249 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %249, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.127, i32 0, i32 0))
  br label %if.end.414

if.end.414:                                       ; preds = %if.then.413, %if.then.408
  br label %if.end.637

if.else.415:                                      ; preds = %if.else.403
  %250 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type416 = getelementptr inbounds %struct.op, %struct.op* %250, i32 0, i32 4
  %251 = load i16, i16* %op_type416, align 2
  %conv417 = zext i16 %251 to i32
  %cmp418 = icmp eq i32 %conv417, 158
  br i1 %cmp418, label %if.then.420, label %if.else.427

if.then.420:                                      ; preds = %if.else.415
  %252 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private421 = getelementptr inbounds %struct.op, %struct.op* %252, i32 0, i32 7
  %253 = load i8, i8* %op_private421, align 1
  %conv422 = zext i8 %253 to i32
  %and423 = and i32 %conv422, 64
  %tobool424 = icmp ne i32 %and423, 0
  br i1 %tobool424, label %if.then.425, label %if.end.426

if.then.425:                                      ; preds = %if.then.420
  %254 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %254, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.127, i32 0, i32 0))
  br label %if.end.426

if.end.426:                                       ; preds = %if.then.425, %if.then.420
  br label %if.end.636

if.else.427:                                      ; preds = %if.else.415
  %255 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type428 = getelementptr inbounds %struct.op, %struct.op* %255, i32 0, i32 4
  %256 = load i16, i16* %op_type428, align 2
  %conv429 = zext i16 %256 to i32
  %cmp430 = icmp eq i32 %conv429, 17
  br i1 %cmp430, label %if.then.432, label %if.else.439

if.then.432:                                      ; preds = %if.else.427
  %257 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private433 = getelementptr inbounds %struct.op, %struct.op* %257, i32 0, i32 7
  %258 = load i8, i8* %op_private433, align 1
  %conv434 = zext i8 %258 to i32
  %and435 = and i32 %conv434, 128
  %tobool436 = icmp ne i32 %and435, 0
  br i1 %tobool436, label %if.then.437, label %if.end.438

if.then.437:                                      ; preds = %if.then.432
  %259 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %259, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.128, i32 0, i32 0))
  br label %if.end.438

if.end.438:                                       ; preds = %if.then.437, %if.then.432
  br label %if.end.635

if.else.439:                                      ; preds = %if.else.427
  %260 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type440 = getelementptr inbounds %struct.op, %struct.op* %260, i32 0, i32 4
  %261 = load i16, i16* %op_type440, align 2
  %conv441 = zext i16 %261 to i32
  %cmp442 = icmp eq i32 %conv441, 7
  br i1 %cmp442, label %if.then.444, label %if.else.451

if.then.444:                                      ; preds = %if.else.439
  %262 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private445 = getelementptr inbounds %struct.op, %struct.op* %262, i32 0, i32 7
  %263 = load i8, i8* %op_private445, align 1
  %conv446 = zext i8 %263 to i32
  %and447 = and i32 %conv446, 32
  %tobool448 = icmp ne i32 %and447, 0
  br i1 %tobool448, label %if.then.449, label %if.end.450

if.then.449:                                      ; preds = %if.then.444
  %264 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %264, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.129, i32 0, i32 0))
  br label %if.end.450

if.end.450:                                       ; preds = %if.then.449, %if.then.444
  br label %if.end.634

if.else.451:                                      ; preds = %if.else.439
  %265 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type452 = getelementptr inbounds %struct.op, %struct.op* %265, i32 0, i32 4
  %266 = load i16, i16* %op_type452, align 2
  %conv453 = zext i16 %266 to i32
  %cmp454 = icmp eq i32 %conv453, 141
  br i1 %cmp454, label %if.then.456, label %if.else.463

if.then.456:                                      ; preds = %if.else.451
  %267 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private457 = getelementptr inbounds %struct.op, %struct.op* %267, i32 0, i32 7
  %268 = load i8, i8* %op_private457, align 1
  %conv458 = zext i8 %268 to i32
  %and459 = and i32 %conv458, 64
  %tobool460 = icmp ne i32 %and459, 0
  br i1 %tobool460, label %if.then.461, label %if.end.462

if.then.461:                                      ; preds = %if.then.456
  %269 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %269, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.130, i32 0, i32 0))
  br label %if.end.462

if.end.462:                                       ; preds = %if.then.461, %if.then.456
  br label %if.end.633

if.else.463:                                      ; preds = %if.else.451
  %270 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type464 = getelementptr inbounds %struct.op, %struct.op* %270, i32 0, i32 4
  %271 = load i16, i16* %op_type464, align 2
  %conv465 = zext i16 %271 to i32
  %cmp466 = icmp eq i32 %conv465, 132
  br i1 %cmp466, label %if.then.468, label %if.else.475

if.then.468:                                      ; preds = %if.else.463
  %272 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private469 = getelementptr inbounds %struct.op, %struct.op* %272, i32 0, i32 7
  %273 = load i8, i8* %op_private469, align 1
  %conv470 = zext i8 %273 to i32
  %and471 = and i32 %conv470, 64
  %tobool472 = icmp ne i32 %and471, 0
  br i1 %tobool472, label %if.then.473, label %if.end.474

if.then.473:                                      ; preds = %if.then.468
  %274 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %274, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.131, i32 0, i32 0))
  br label %if.end.474

if.end.474:                                       ; preds = %if.then.473, %if.then.468
  br label %if.end.632

if.else.475:                                      ; preds = %if.else.463
  %275 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type476 = getelementptr inbounds %struct.op, %struct.op* %275, i32 0, i32 4
  %276 = load i16, i16* %op_type476, align 2
  %conv477 = zext i16 %276 to i32
  %cmp478 = icmp eq i32 %conv477, 133
  br i1 %cmp478, label %if.then.480, label %if.else.487

if.then.480:                                      ; preds = %if.else.475
  %277 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private481 = getelementptr inbounds %struct.op, %struct.op* %277, i32 0, i32 7
  %278 = load i8, i8* %op_private481, align 1
  %conv482 = zext i8 %278 to i32
  %and483 = and i32 %conv482, 64
  %tobool484 = icmp ne i32 %and483, 0
  br i1 %tobool484, label %if.then.485, label %if.end.486

if.then.485:                                      ; preds = %if.then.480
  %279 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %279, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.132, i32 0, i32 0))
  br label %if.end.486

if.end.486:                                       ; preds = %if.then.485, %if.then.480
  br label %if.end.631

if.else.487:                                      ; preds = %if.else.475
  %280 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type488 = getelementptr inbounds %struct.op, %struct.op* %280, i32 0, i32 4
  %281 = load i16, i16* %op_type488, align 2
  %conv489 = zext i16 %281 to i32
  %cmp490 = icmp eq i32 %conv489, 150
  br i1 %cmp490, label %if.then.492, label %if.else.511

if.then.492:                                      ; preds = %if.else.487
  %282 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private493 = getelementptr inbounds %struct.op, %struct.op* %282, i32 0, i32 7
  %283 = load i8, i8* %op_private493, align 1
  %conv494 = zext i8 %283 to i32
  %and495 = and i32 %conv494, 1
  %tobool496 = icmp ne i32 %and495, 0
  br i1 %tobool496, label %if.then.497, label %if.end.498

if.then.497:                                      ; preds = %if.then.492
  %284 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %284, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.133, i32 0, i32 0))
  br label %if.end.498

if.end.498:                                       ; preds = %if.then.497, %if.then.492
  %285 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private499 = getelementptr inbounds %struct.op, %struct.op* %285, i32 0, i32 7
  %286 = load i8, i8* %op_private499, align 1
  %conv500 = zext i8 %286 to i32
  %and501 = and i32 %conv500, 2
  %tobool502 = icmp ne i32 %and501, 0
  br i1 %tobool502, label %if.then.503, label %if.end.504

if.then.503:                                      ; preds = %if.end.498
  %287 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %287, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.134, i32 0, i32 0))
  br label %if.end.504

if.end.504:                                       ; preds = %if.then.503, %if.end.498
  %288 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private505 = getelementptr inbounds %struct.op, %struct.op* %288, i32 0, i32 7
  %289 = load i8, i8* %op_private505, align 1
  %conv506 = zext i8 %289 to i32
  %and507 = and i32 %conv506, 4
  %tobool508 = icmp ne i32 %and507, 0
  br i1 %tobool508, label %if.then.509, label %if.end.510

if.then.509:                                      ; preds = %if.end.504
  %290 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %290, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.135, i32 0, i32 0))
  br label %if.end.510

if.end.510:                                       ; preds = %if.then.509, %if.end.504
  br label %if.end.630

if.else.511:                                      ; preds = %if.else.487
  %291 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type512 = getelementptr inbounds %struct.op, %struct.op* %291, i32 0, i32 4
  %292 = load i16, i16* %op_type512, align 2
  %conv513 = zext i16 %292 to i32
  %cmp514 = icmp eq i32 %conv513, 348
  br i1 %cmp514, label %if.then.516, label %if.else.523

if.then.516:                                      ; preds = %if.else.511
  %293 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private517 = getelementptr inbounds %struct.op, %struct.op* %293, i32 0, i32 7
  %294 = load i8, i8* %op_private517, align 1
  %conv518 = zext i8 %294 to i32
  %and519 = and i32 %conv518, 64
  %tobool520 = icmp ne i32 %and519, 0
  br i1 %tobool520, label %if.then.521, label %if.end.522

if.then.521:                                      ; preds = %if.then.516
  %295 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %295, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.136, i32 0, i32 0))
  br label %if.end.522

if.end.522:                                       ; preds = %if.then.521, %if.then.516
  br label %if.end.629

if.else.523:                                      ; preds = %if.else.511
  %296 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type524 = getelementptr inbounds %struct.op, %struct.op* %296, i32 0, i32 4
  %297 = load i16, i16* %op_type524, align 2
  %conv525 = zext i16 %297 to i32
  %cmp526 = icmp eq i32 %conv525, 191
  br i1 %cmp526, label %if.then.533, label %lor.lhs.false.528

lor.lhs.false.528:                                ; preds = %if.else.523
  %298 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type529 = getelementptr inbounds %struct.op, %struct.op* %298, i32 0, i32 4
  %299 = load i16, i16* %op_type529, align 2
  %conv530 = zext i16 %299 to i32
  %cmp531 = icmp eq i32 %conv530, 24
  br i1 %cmp531, label %if.then.533, label %if.else.558

if.then.533:                                      ; preds = %lor.lhs.false.528, %if.else.523
  %300 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private534 = getelementptr inbounds %struct.op, %struct.op* %300, i32 0, i32 7
  %301 = load i8, i8* %op_private534, align 1
  %conv535 = zext i8 %301 to i32
  %and536 = and i32 %conv535, 16
  %tobool537 = icmp ne i32 %and536, 0
  br i1 %tobool537, label %if.then.538, label %if.end.539

if.then.538:                                      ; preds = %if.then.533
  %302 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %302, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.137, i32 0, i32 0))
  br label %if.end.539

if.end.539:                                       ; preds = %if.then.538, %if.then.533
  %303 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private540 = getelementptr inbounds %struct.op, %struct.op* %303, i32 0, i32 7
  %304 = load i8, i8* %op_private540, align 1
  %conv541 = zext i8 %304 to i32
  %and542 = and i32 %conv541, 32
  %tobool543 = icmp ne i32 %and542, 0
  br i1 %tobool543, label %if.then.544, label %if.end.545

if.then.544:                                      ; preds = %if.end.539
  %305 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %305, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.138, i32 0, i32 0))
  br label %if.end.545

if.end.545:                                       ; preds = %if.then.544, %if.end.539
  %306 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private546 = getelementptr inbounds %struct.op, %struct.op* %306, i32 0, i32 7
  %307 = load i8, i8* %op_private546, align 1
  %conv547 = zext i8 %307 to i32
  %and548 = and i32 %conv547, 64
  %tobool549 = icmp ne i32 %and548, 0
  br i1 %tobool549, label %if.then.550, label %if.end.551

if.then.550:                                      ; preds = %if.end.545
  %308 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %308, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.139, i32 0, i32 0))
  br label %if.end.551

if.end.551:                                       ; preds = %if.then.550, %if.end.545
  %309 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private552 = getelementptr inbounds %struct.op, %struct.op* %309, i32 0, i32 7
  %310 = load i8, i8* %op_private552, align 1
  %conv553 = zext i8 %310 to i32
  %and554 = and i32 %conv553, 128
  %tobool555 = icmp ne i32 %and554, 0
  br i1 %tobool555, label %if.then.556, label %if.end.557

if.then.556:                                      ; preds = %if.end.551
  %311 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %311, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.140, i32 0, i32 0))
  br label %if.end.557

if.end.557:                                       ; preds = %if.then.556, %if.end.551
  br label %if.end.628

if.else.558:                                      ; preds = %lor.lhs.false.528
  %312 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type559 = getelementptr inbounds %struct.op, %struct.op* %312, i32 0, i32 4
  %313 = load i16, i16* %op_type559, align 2
  %conv560 = zext i16 %313 to i32
  %cmp561 = icmp eq i32 %conv560, 190
  br i1 %cmp561, label %if.then.563, label %if.else.576

if.then.563:                                      ; preds = %if.else.558
  %314 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private564 = getelementptr inbounds %struct.op, %struct.op* %314, i32 0, i32 7
  %315 = load i8, i8* %op_private564, align 1
  %conv565 = zext i8 %315 to i32
  %and566 = and i32 %conv565, 128
  %tobool567 = icmp ne i32 %and566, 0
  br i1 %tobool567, label %if.then.568, label %if.end.569

if.then.568:                                      ; preds = %if.then.563
  %316 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %316, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.141, i32 0, i32 0))
  br label %if.end.569

if.end.569:                                       ; preds = %if.then.568, %if.then.563
  %317 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private570 = getelementptr inbounds %struct.op, %struct.op* %317, i32 0, i32 7
  %318 = load i8, i8* %op_private570, align 1
  %conv571 = zext i8 %318 to i32
  %and572 = and i32 %conv571, 64
  %tobool573 = icmp ne i32 %and572, 0
  br i1 %tobool573, label %if.then.574, label %if.end.575

if.then.574:                                      ; preds = %if.end.569
  %319 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %319, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.142, i32 0, i32 0))
  br label %if.end.575

if.end.575:                                       ; preds = %if.then.574, %if.end.569
  br label %if.end.627

if.else.576:                                      ; preds = %if.else.558
  %320 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type577 = getelementptr inbounds %struct.op, %struct.op* %320, i32 0, i32 4
  %321 = load i16, i16* %op_type577, align 2
  %conv578 = zext i16 %321 to i32
  %cmp579 = icmp eq i32 %conv578, 171
  br i1 %cmp579, label %if.then.581, label %if.else.588

if.then.581:                                      ; preds = %if.else.576
  %322 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private582 = getelementptr inbounds %struct.op, %struct.op* %322, i32 0, i32 7
  %323 = load i8, i8* %op_private582, align 1
  %conv583 = zext i8 %323 to i32
  %and584 = and i32 %conv583, 64
  %tobool585 = icmp ne i32 %and584, 0
  br i1 %tobool585, label %if.then.586, label %if.end.587

if.then.586:                                      ; preds = %if.then.581
  %324 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %324, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.142, i32 0, i32 0))
  br label %if.end.587

if.end.587:                                       ; preds = %if.then.586, %if.then.581
  br label %if.end.626

if.else.588:                                      ; preds = %if.else.576
  %325 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type589 = getelementptr inbounds %struct.op, %struct.op* %325, i32 0, i32 4
  %326 = load i16, i16* %op_type589, align 2
  %conv590 = zext i16 %326 to i32
  %cmp591 = icmp eq i32 %conv590, 236
  br i1 %cmp591, label %if.then.618, label %lor.lhs.false.593

lor.lhs.false.593:                                ; preds = %if.else.588
  %327 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type594 = getelementptr inbounds %struct.op, %struct.op* %327, i32 0, i32 4
  %328 = load i16, i16* %op_type594, align 2
  %conv595 = zext i16 %328 to i32
  %cmp596 = icmp eq i32 %conv595, 237
  br i1 %cmp596, label %if.then.618, label %lor.lhs.false.598

lor.lhs.false.598:                                ; preds = %lor.lhs.false.593
  %329 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type599 = getelementptr inbounds %struct.op, %struct.op* %329, i32 0, i32 4
  %330 = load i16, i16* %op_type599, align 2
  %conv600 = zext i16 %330 to i32
  %cmp601 = icmp eq i32 %conv600, 238
  br i1 %cmp601, label %if.then.618, label %lor.lhs.false.603

lor.lhs.false.603:                                ; preds = %lor.lhs.false.598
  %331 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type604 = getelementptr inbounds %struct.op, %struct.op* %331, i32 0, i32 4
  %332 = load i16, i16* %op_type604, align 2
  %conv605 = zext i16 %332 to i32
  %cmp606 = icmp eq i32 %conv605, 239
  br i1 %cmp606, label %if.then.618, label %lor.lhs.false.608

lor.lhs.false.608:                                ; preds = %lor.lhs.false.603
  %333 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type609 = getelementptr inbounds %struct.op, %struct.op* %333, i32 0, i32 4
  %334 = load i16, i16* %op_type609, align 2
  %conv610 = zext i16 %334 to i32
  %cmp611 = icmp eq i32 %conv610, 240
  br i1 %cmp611, label %if.then.618, label %lor.lhs.false.613

lor.lhs.false.613:                                ; preds = %lor.lhs.false.608
  %335 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type614 = getelementptr inbounds %struct.op, %struct.op* %335, i32 0, i32 4
  %336 = load i16, i16* %op_type614, align 2
  %conv615 = zext i16 %336 to i32
  %cmp616 = icmp eq i32 %conv615, 241
  br i1 %cmp616, label %if.then.618, label %if.end.625

if.then.618:                                      ; preds = %lor.lhs.false.613, %lor.lhs.false.608, %lor.lhs.false.603, %lor.lhs.false.598, %lor.lhs.false.593, %if.else.588
  %337 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private619 = getelementptr inbounds %struct.op, %struct.op* %337, i32 0, i32 7
  %338 = load i8, i8* %op_private619, align 1
  %conv620 = zext i8 %338 to i32
  %and621 = and i32 %conv620, 2
  %tobool622 = icmp ne i32 %and621, 0
  br i1 %tobool622, label %if.then.623, label %if.end.624

if.then.623:                                      ; preds = %if.then.618
  %339 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %339, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.143, i32 0, i32 0))
  br label %if.end.624

if.end.624:                                       ; preds = %if.then.623, %if.then.618
  br label %if.end.625

if.end.625:                                       ; preds = %if.end.624, %lor.lhs.false.613
  br label %if.end.626

if.end.626:                                       ; preds = %if.end.625, %if.end.587
  br label %if.end.627

if.end.627:                                       ; preds = %if.end.626, %if.end.575
  br label %if.end.628

if.end.628:                                       ; preds = %if.end.627, %if.end.557
  br label %if.end.629

if.end.629:                                       ; preds = %if.end.628, %if.end.522
  br label %if.end.630

if.end.630:                                       ; preds = %if.end.629, %if.end.510
  br label %if.end.631

if.end.631:                                       ; preds = %if.end.630, %if.end.486
  br label %if.end.632

if.end.632:                                       ; preds = %if.end.631, %if.end.474
  br label %if.end.633

if.end.633:                                       ; preds = %if.end.632, %if.end.462
  br label %if.end.634

if.end.634:                                       ; preds = %if.end.633, %if.end.450
  br label %if.end.635

if.end.635:                                       ; preds = %if.end.634, %if.end.438
  br label %if.end.636

if.end.636:                                       ; preds = %if.end.635, %if.end.426
  br label %if.end.637

if.end.637:                                       ; preds = %if.end.636, %if.end.414
  br label %if.end.638

if.end.638:                                       ; preds = %if.end.637, %if.end.402
  br label %if.end.639

if.end.639:                                       ; preds = %if.end.638, %if.end.366
  br label %if.end.640

if.end.640:                                       ; preds = %if.end.639, %if.end.239
  br label %if.end.641

if.end.641:                                       ; preds = %if.end.640, %if.end.227
  br label %if.end.642

if.end.642:                                       ; preds = %if.end.641, %if.end.191
  br label %if.end.643

if.end.643:                                       ; preds = %if.end.642, %if.end.179
  br label %if.end.644

if.end.644:                                       ; preds = %if.end.643, %if.end.161
  br label %if.end.645

if.end.645:                                       ; preds = %if.end.644, %if.end.135
  %340 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_flags646 = getelementptr inbounds %struct.op, %struct.op* %340, i32 0, i32 6
  %341 = load i8, i8* %op_flags646, align 1
  %conv647 = zext i8 %341 to i32
  %and648 = and i32 %conv647, 32
  %tobool649 = icmp ne i32 %and648, 0
  br i1 %tobool649, label %land.lhs.true, label %if.end.655

land.lhs.true:                                    ; preds = %if.end.645
  %342 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private650 = getelementptr inbounds %struct.op, %struct.op* %342, i32 0, i32 7
  %343 = load i8, i8* %op_private650, align 1
  %conv651 = zext i8 %343 to i32
  %and652 = and i32 %conv651, 128
  %tobool653 = icmp ne i32 %and652, 0
  br i1 %tobool653, label %if.then.654, label %if.end.655

if.then.654:                                      ; preds = %land.lhs.true
  %344 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_catpv(%struct.sv* %344, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.128, i32 0, i32 0))
  br label %if.end.655

if.end.655:                                       ; preds = %if.then.654, %land.lhs.true, %if.end.645
  %345 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  %sv_any656 = getelementptr inbounds %struct.sv, %struct.sv* %345, i32 0, i32 0
  %346 = load i8*, i8** %sv_any656, align 8
  %347 = bitcast i8* %346 to %struct.xpv*
  %xpv_cur657 = getelementptr inbounds %struct.xpv, %struct.xpv* %347, i32 0, i32 1
  %348 = load i64, i64* %xpv_cur657, align 8
  %tobool658 = icmp ne i64 %348, 0
  br i1 %tobool658, label %if.then.659, label %if.end.663

if.then.659:                                      ; preds = %if.end.655
  %349 = load i32, i32* %level.addr, align 4
  %350 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %351 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  %sv_any660 = getelementptr inbounds %struct.sv, %struct.sv* %351, i32 0, i32 0
  %352 = load i8*, i8** %sv_any660, align 8
  %353 = bitcast i8* %352 to %struct.xpv*
  %xpv_pv661 = getelementptr inbounds %struct.xpv, %struct.xpv* %353, i32 0, i32 0
  %354 = load i8*, i8** %xpv_pv661, align 8
  %add.ptr662 = getelementptr inbounds i8, i8* %354, i64 1
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %349, %struct._PerlIO** %350, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.144, i32 0, i32 0), i8* %add.ptr662)
  br label %if.end.663

if.end.663:                                       ; preds = %if.then.659, %if.end.655
  %355 = load %struct.sv*, %struct.sv** %tmpsv122, align 8
  call void @Perl_sv_free(%struct.sv* %355)
  br label %if.end.664

if.end.664:                                       ; preds = %if.end.663, %if.end.119
  %356 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type665 = getelementptr inbounds %struct.op, %struct.op* %356, i32 0, i32 4
  %357 = load i16, i16* %op_type665, align 2
  %conv666 = zext i16 %357 to i32
  switch i32 %conv666, label %sw.default.774 [
    i32 126, label %sw.bb.667
    i32 6, label %sw.bb.667
    i32 7, label %sw.bb.667
    i32 5, label %sw.bb.693
    i32 350, label %sw.bb.693
    i32 349, label %sw.bb.696
    i32 174, label %sw.bb.696
    i32 175, label %sw.bb.696
    i32 182, label %sw.bb.727
    i32 162, label %sw.bb.755
    i32 156, label %sw.bb.755
    i32 155, label %sw.bb.755
    i32 153, label %sw.bb.755
    i32 160, label %sw.bb.755
    i32 159, label %sw.bb.755
    i32 13, label %sw.bb.765
    i32 31, label %sw.bb.765
    i32 32, label %sw.bb.765
    i32 33, label %sw.bb.765
    i32 178, label %sw.bb.766
    i32 312, label %sw.bb.766
    i32 167, label %sw.bb.766
    i32 168, label %sw.bb.766
    i32 207, label %sw.bb.766
    i32 179, label %sw.bb.766
  ]

sw.bb.667:                                        ; preds = %if.end.664, %if.end.664, %if.end.664
  %358 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags668 = getelementptr inbounds %struct.op, %struct.op* %358, i32 0, i32 6
  %359 = load i8, i8* %op_flags668, align 1
  %tobool669 = icmp ne i8 %359, 0
  %lnot = xor i1 %tobool669, true
  %lnot.ext = zext i1 %lnot to i32
  %and670 = and i32 %lnot.ext, 128
  %tobool671 = icmp ne i32 %and670, 0
  br i1 %tobool671, label %if.then.672, label %if.end.692

if.then.672:                                      ; preds = %sw.bb.667
  %360 = load %struct.op*, %struct.op** %o.addr, align 8
  %361 = bitcast %struct.op* %360 to %struct.svop*
  %op_sv = getelementptr inbounds %struct.svop, %struct.svop* %361, i32 0, i32 8
  %362 = load %struct.sv*, %struct.sv** %op_sv, align 8
  %tobool673 = icmp ne %struct.sv* %362, null
  br i1 %tobool673, label %if.then.674, label %if.else.690

if.then.674:                                      ; preds = %if.then.672
  %call676 = call %struct.sv* @Perl_newSV(i64 0)
  store %struct.sv* %call676, %struct.sv** %tmpsv675, align 8
  call void @Perl_push_scope()
  %363 = load %struct.sv*, %struct.sv** %tmpsv675, align 8
  call void @Perl_save_freesv(%struct.sv* %363)
  %364 = load %struct.sv*, %struct.sv** %tmpsv675, align 8
  %365 = load %struct.op*, %struct.op** %o.addr, align 8
  %366 = bitcast %struct.op* %365 to %struct.svop*
  %op_sv677 = getelementptr inbounds %struct.svop, %struct.svop* %366, i32 0, i32 8
  %367 = load %struct.sv*, %struct.sv** %op_sv677, align 8
  %368 = bitcast %struct.sv* %367 to %struct.gv*
  call void @Perl_gv_fullname4(%struct.sv* %364, %struct.gv* %368, i8* null, i8 signext 1)
  %369 = load i32, i32* %level.addr, align 4
  %370 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %371 = load %struct.sv*, %struct.sv** %tmpsv675, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %371, i32 0, i32 2
  %372 = load i32, i32* %sv_flags, align 4
  %and678 = and i32 %372, 262144
  %cmp679 = icmp eq i32 %and678, 262144
  br i1 %cmp679, label %cond.true.681, label %cond.false.686

cond.true.681:                                    ; preds = %if.then.674
  %373 = load %struct.sv*, %struct.sv** %tmpsv675, align 8
  %sv_any682 = getelementptr inbounds %struct.sv, %struct.sv* %373, i32 0, i32 0
  %374 = load i8*, i8** %sv_any682, align 8
  %375 = bitcast i8* %374 to %struct.xpv*
  %xpv_cur683 = getelementptr inbounds %struct.xpv, %struct.xpv* %375, i32 0, i32 1
  %376 = load i64, i64* %xpv_cur683, align 8
  store i64 %376, i64* %n_a, align 8
  %377 = load %struct.sv*, %struct.sv** %tmpsv675, align 8
  %sv_any684 = getelementptr inbounds %struct.sv, %struct.sv* %377, i32 0, i32 0
  %378 = load i8*, i8** %sv_any684, align 8
  %379 = bitcast i8* %378 to %struct.xpv*
  %xpv_pv685 = getelementptr inbounds %struct.xpv, %struct.xpv* %379, i32 0, i32 0
  %380 = load i8*, i8** %xpv_pv685, align 8
  br label %cond.end.688

cond.false.686:                                   ; preds = %if.then.674
  %381 = load %struct.sv*, %struct.sv** %tmpsv675, align 8
  %call687 = call i8* @Perl_sv_2pv_flags(%struct.sv* %381, i64* %n_a, i32 2)
  br label %cond.end.688

cond.end.688:                                     ; preds = %cond.false.686, %cond.true.681
  %cond689 = phi i8* [ %380, %cond.true.681 ], [ %call687, %cond.false.686 ]
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %369, %struct._PerlIO** %370, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.145, i32 0, i32 0), i8* %cond689)
  call void @Perl_pop_scope()
  br label %if.end.691

if.else.690:                                      ; preds = %if.then.672
  %382 = load i32, i32* %level.addr, align 4
  %383 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %382, %struct._PerlIO** %383, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.146, i32 0, i32 0))
  br label %if.end.691

if.end.691:                                       ; preds = %if.else.690, %cond.end.688
  br label %if.end.692

if.end.692:                                       ; preds = %if.end.691, %sw.bb.667
  br label %sw.epilog.775

sw.bb.693:                                        ; preds = %if.end.664, %if.end.664
  %384 = load i32, i32* %level.addr, align 4
  %385 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %386 = load %struct.op*, %struct.op** %o.addr, align 8
  %387 = bitcast %struct.op* %386 to %struct.svop*
  %op_sv694 = getelementptr inbounds %struct.svop, %struct.svop* %387, i32 0, i32 8
  %388 = load %struct.sv*, %struct.sv** %op_sv694, align 8
  %call695 = call i8* @Perl_sv_peek(%struct.sv* %388)
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %384, %struct._PerlIO** %385, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.147, i32 0, i32 0), i8* %call695)
  br label %sw.epilog.775

sw.bb.696:                                        ; preds = %if.end.664, %if.end.664, %if.end.664
  %389 = load %struct.op*, %struct.op** %o.addr, align 8
  %390 = bitcast %struct.op* %389 to %struct.cop*
  %cop_line697 = getelementptr inbounds %struct.cop, %struct.cop* %390, i32 0, i32 13
  %391 = load i32, i32* %cop_line697, align 4
  %tobool698 = icmp ne i32 %391, 0
  br i1 %tobool698, label %if.then.699, label %if.end.702

if.then.699:                                      ; preds = %sw.bb.696
  %392 = load i32, i32* %level.addr, align 4
  %393 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %394 = load %struct.op*, %struct.op** %o.addr, align 8
  %395 = bitcast %struct.op* %394 to %struct.cop*
  %cop_line700 = getelementptr inbounds %struct.cop, %struct.cop* %395, i32 0, i32 13
  %396 = load i32, i32* %cop_line700, align 4
  %conv701 = zext i32 %396 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %392, %struct._PerlIO** %393, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.83, i32 0, i32 0), i64 %conv701)
  br label %if.end.702

if.end.702:                                       ; preds = %if.then.699, %sw.bb.696
  %397 = load %struct.op*, %struct.op** %o.addr, align 8
  %398 = bitcast %struct.op* %397 to %struct.cop*
  %cop_stash703 = getelementptr inbounds %struct.cop, %struct.cop* %398, i32 0, i32 9
  %399 = load %struct.hv*, %struct.hv** %cop_stash703, align 8
  %tobool704 = icmp ne %struct.hv* %399, null
  br i1 %tobool704, label %cond.true.705, label %cond.false.710

cond.true.705:                                    ; preds = %if.end.702
  %400 = load %struct.op*, %struct.op** %o.addr, align 8
  %401 = bitcast %struct.op* %400 to %struct.cop*
  %cop_stash706 = getelementptr inbounds %struct.cop, %struct.cop* %401, i32 0, i32 9
  %402 = load %struct.hv*, %struct.hv** %cop_stash706, align 8
  %sv_any707 = getelementptr inbounds %struct.hv, %struct.hv* %402, i32 0, i32 0
  %403 = load %struct.xpvhv*, %struct.xpvhv** %sv_any707, align 8
  %xhv_name708 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %403, i32 0, i32 10
  %404 = load i8*, i8** %xhv_name708, align 8
  %tobool709 = icmp ne i8* %404, null
  br i1 %tobool709, label %if.then.711, label %if.end.721

cond.false.710:                                   ; preds = %if.end.702
  br i1 false, label %if.then.711, label %if.end.721

if.then.711:                                      ; preds = %cond.false.710, %cond.true.705
  %405 = load i32, i32* %level.addr, align 4
  %406 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %407 = load %struct.op*, %struct.op** %o.addr, align 8
  %408 = bitcast %struct.op* %407 to %struct.cop*
  %cop_stash712 = getelementptr inbounds %struct.cop, %struct.cop* %408, i32 0, i32 9
  %409 = load %struct.hv*, %struct.hv** %cop_stash712, align 8
  %tobool713 = icmp ne %struct.hv* %409, null
  br i1 %tobool713, label %cond.true.714, label %cond.false.718

cond.true.714:                                    ; preds = %if.then.711
  %410 = load %struct.op*, %struct.op** %o.addr, align 8
  %411 = bitcast %struct.op* %410 to %struct.cop*
  %cop_stash715 = getelementptr inbounds %struct.cop, %struct.cop* %411, i32 0, i32 9
  %412 = load %struct.hv*, %struct.hv** %cop_stash715, align 8
  %sv_any716 = getelementptr inbounds %struct.hv, %struct.hv* %412, i32 0, i32 0
  %413 = load %struct.xpvhv*, %struct.xpvhv** %sv_any716, align 8
  %xhv_name717 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %413, i32 0, i32 10
  %414 = load i8*, i8** %xhv_name717, align 8
  br label %cond.end.719

cond.false.718:                                   ; preds = %if.then.711
  br label %cond.end.719

cond.end.719:                                     ; preds = %cond.false.718, %cond.true.714
  %cond720 = phi i8* [ %414, %cond.true.714 ], [ null, %cond.false.718 ]
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %405, %struct._PerlIO** %406, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.84, i32 0, i32 0), i8* %cond720)
  br label %if.end.721

if.end.721:                                       ; preds = %cond.end.719, %cond.false.710, %cond.true.705
  %415 = load %struct.op*, %struct.op** %o.addr, align 8
  %416 = bitcast %struct.op* %415 to %struct.cop*
  %cop_label722 = getelementptr inbounds %struct.cop, %struct.cop* %416, i32 0, i32 8
  %417 = load i8*, i8** %cop_label722, align 8
  %tobool723 = icmp ne i8* %417, null
  br i1 %tobool723, label %if.then.724, label %if.end.726

if.then.724:                                      ; preds = %if.end.721
  %418 = load i32, i32* %level.addr, align 4
  %419 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %420 = load %struct.op*, %struct.op** %o.addr, align 8
  %421 = bitcast %struct.op* %420 to %struct.cop*
  %cop_label725 = getelementptr inbounds %struct.cop, %struct.cop* %421, i32 0, i32 8
  %422 = load i8*, i8** %cop_label725, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %418, %struct._PerlIO** %419, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.85, i32 0, i32 0), i8* %422)
  br label %if.end.726

if.end.726:                                       ; preds = %if.then.724, %if.end.721
  br label %sw.epilog.775

sw.bb.727:                                        ; preds = %if.end.664
  %423 = load i32, i32* %level.addr, align 4
  %424 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %423, %struct._PerlIO** %424, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.148, i32 0, i32 0))
  %425 = load %struct.op*, %struct.op** %o.addr, align 8
  %426 = bitcast %struct.op* %425 to %struct.loop*
  %op_redoop = getelementptr inbounds %struct.loop, %struct.loop* %426, i32 0, i32 10
  %427 = load %struct.op*, %struct.op** %op_redoop, align 8
  %tobool728 = icmp ne %struct.op* %427, null
  br i1 %tobool728, label %if.then.729, label %if.else.734

if.then.729:                                      ; preds = %sw.bb.727
  %428 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %429 = load %struct.op*, %struct.op** %o.addr, align 8
  %430 = bitcast %struct.op* %429 to %struct.loop*
  %op_redoop730 = getelementptr inbounds %struct.loop, %struct.loop* %430, i32 0, i32 10
  %431 = load %struct.op*, %struct.op** %op_redoop730, align 8
  %op_seq731 = getelementptr inbounds %struct.op, %struct.op* %431, i32 0, i32 5
  %432 = load i16, i16* %op_seq731, align 2
  %conv732 = zext i16 %432 to i32
  %call733 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %428, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i32 0, i32 0), i32 %conv732)
  br label %if.end.736

if.else.734:                                      ; preds = %sw.bb.727
  %433 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %call735 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %433, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i32 0, i32 0))
  br label %if.end.736

if.end.736:                                       ; preds = %if.else.734, %if.then.729
  %434 = load i32, i32* %level.addr, align 4
  %435 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %434, %struct._PerlIO** %435, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.149, i32 0, i32 0))
  %436 = load %struct.op*, %struct.op** %o.addr, align 8
  %437 = bitcast %struct.op* %436 to %struct.loop*
  %op_nextop = getelementptr inbounds %struct.loop, %struct.loop* %437, i32 0, i32 11
  %438 = load %struct.op*, %struct.op** %op_nextop, align 8
  %tobool737 = icmp ne %struct.op* %438, null
  br i1 %tobool737, label %if.then.738, label %if.else.743

if.then.738:                                      ; preds = %if.end.736
  %439 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %440 = load %struct.op*, %struct.op** %o.addr, align 8
  %441 = bitcast %struct.op* %440 to %struct.loop*
  %op_nextop739 = getelementptr inbounds %struct.loop, %struct.loop* %441, i32 0, i32 11
  %442 = load %struct.op*, %struct.op** %op_nextop739, align 8
  %op_seq740 = getelementptr inbounds %struct.op, %struct.op* %442, i32 0, i32 5
  %443 = load i16, i16* %op_seq740, align 2
  %conv741 = zext i16 %443 to i32
  %call742 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %439, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i32 0, i32 0), i32 %conv741)
  br label %if.end.745

if.else.743:                                      ; preds = %if.end.736
  %444 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %call744 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %444, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i32 0, i32 0))
  br label %if.end.745

if.end.745:                                       ; preds = %if.else.743, %if.then.738
  %445 = load i32, i32* %level.addr, align 4
  %446 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %445, %struct._PerlIO** %446, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.150, i32 0, i32 0))
  %447 = load %struct.op*, %struct.op** %o.addr, align 8
  %448 = bitcast %struct.op* %447 to %struct.loop*
  %op_lastop = getelementptr inbounds %struct.loop, %struct.loop* %448, i32 0, i32 12
  %449 = load %struct.op*, %struct.op** %op_lastop, align 8
  %tobool746 = icmp ne %struct.op* %449, null
  br i1 %tobool746, label %if.then.747, label %if.else.752

if.then.747:                                      ; preds = %if.end.745
  %450 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %451 = load %struct.op*, %struct.op** %o.addr, align 8
  %452 = bitcast %struct.op* %451 to %struct.loop*
  %op_lastop748 = getelementptr inbounds %struct.loop, %struct.loop* %452, i32 0, i32 12
  %453 = load %struct.op*, %struct.op** %op_lastop748, align 8
  %op_seq749 = getelementptr inbounds %struct.op, %struct.op* %453, i32 0, i32 5
  %454 = load i16, i16* %op_seq749, align 2
  %conv750 = zext i16 %454 to i32
  %call751 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %450, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i32 0, i32 0), i32 %conv750)
  br label %if.end.754

if.else.752:                                      ; preds = %if.end.745
  %455 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %call753 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %455, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i32 0, i32 0))
  br label %if.end.754

if.end.754:                                       ; preds = %if.else.752, %if.then.747
  br label %sw.epilog.775

sw.bb.755:                                        ; preds = %if.end.664, %if.end.664, %if.end.664, %if.end.664, %if.end.664, %if.end.664
  %456 = load i32, i32* %level.addr, align 4
  %457 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %456, %struct._PerlIO** %457, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.151, i32 0, i32 0))
  %458 = load %struct.op*, %struct.op** %o.addr, align 8
  %459 = bitcast %struct.op* %458 to %struct.logop*
  %op_other = getelementptr inbounds %struct.logop, %struct.logop* %459, i32 0, i32 9
  %460 = load %struct.op*, %struct.op** %op_other, align 8
  %tobool756 = icmp ne %struct.op* %460, null
  br i1 %tobool756, label %if.then.757, label %if.else.762

if.then.757:                                      ; preds = %sw.bb.755
  %461 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %462 = load %struct.op*, %struct.op** %o.addr, align 8
  %463 = bitcast %struct.op* %462 to %struct.logop*
  %op_other758 = getelementptr inbounds %struct.logop, %struct.logop* %463, i32 0, i32 9
  %464 = load %struct.op*, %struct.op** %op_other758, align 8
  %op_seq759 = getelementptr inbounds %struct.op, %struct.op* %464, i32 0, i32 5
  %465 = load i16, i16* %op_seq759, align 2
  %conv760 = zext i16 %465 to i32
  %call761 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %461, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i32 0, i32 0), i32 %conv760)
  br label %if.end.764

if.else.762:                                      ; preds = %sw.bb.755
  %466 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %call763 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %466, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i32 0, i32 0))
  br label %if.end.764

if.end.764:                                       ; preds = %if.else.762, %if.then.757
  br label %sw.epilog.775

sw.bb.765:                                        ; preds = %if.end.664, %if.end.664, %if.end.664, %if.end.664
  %467 = load i32, i32* %level.addr, align 4
  %468 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %469 = load %struct.op*, %struct.op** %o.addr, align 8
  %470 = bitcast %struct.op* %469 to %struct.pmop*
  call void @Perl_do_pmop_dump(i32 %467, %struct._PerlIO** %468, %struct.pmop* %470)
  br label %sw.epilog.775

sw.bb.766:                                        ; preds = %if.end.664, %if.end.664, %if.end.664, %if.end.664, %if.end.664, %if.end.664
  %471 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_private767 = getelementptr inbounds %struct.op, %struct.op* %471, i32 0, i32 7
  %472 = load i8, i8* %op_private767, align 1
  %conv768 = zext i8 %472 to i32
  %and769 = and i32 %conv768, 64
  %tobool770 = icmp ne i32 %and769, 0
  br i1 %tobool770, label %if.then.771, label %if.end.773

if.then.771:                                      ; preds = %sw.bb.766
  %473 = load i32, i32* %level.addr, align 4
  %474 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %475 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_targ772 = getelementptr inbounds %struct.op, %struct.op* %475, i32 0, i32 3
  %476 = load i64, i64* %op_targ772, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %473, %struct._PerlIO** %474, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.152, i32 0, i32 0), i64 %476)
  br label %if.end.773

if.end.773:                                       ; preds = %if.then.771, %sw.bb.766
  br label %sw.epilog.775

sw.default.774:                                   ; preds = %if.end.664
  br label %sw.epilog.775

sw.epilog.775:                                    ; preds = %sw.default.774, %if.end.773, %sw.bb.765, %if.end.764, %if.end.754, %if.end.726, %sw.bb.693, %if.end.692
  %477 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_flags776 = getelementptr inbounds %struct.op, %struct.op* %477, i32 0, i32 6
  %478 = load i8, i8* %op_flags776, align 1
  %conv777 = zext i8 %478 to i32
  %and778 = and i32 %conv777, 4
  %tobool779 = icmp ne i32 %and778, 0
  br i1 %tobool779, label %if.then.780, label %if.end.782

if.then.780:                                      ; preds = %sw.epilog.775
  %479 = load %struct.op*, %struct.op** %o.addr, align 8
  %480 = bitcast %struct.op* %479 to %struct.unop*
  %op_first = getelementptr inbounds %struct.unop, %struct.unop* %480, i32 0, i32 8
  %481 = load %struct.op*, %struct.op** %op_first, align 8
  store %struct.op* %481, %struct.op** %kid, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.780
  %482 = load %struct.op*, %struct.op** %kid, align 8
  %tobool781 = icmp ne %struct.op* %482, null
  br i1 %tobool781, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %483 = load i32, i32* %level.addr, align 4
  %484 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %485 = load %struct.op*, %struct.op** %kid, align 8
  call void @Perl_do_op_dump(i32 %483, %struct._PerlIO** %484, %struct.op* %485)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %486 = load %struct.op*, %struct.op** %kid, align 8
  %op_sibling = getelementptr inbounds %struct.op, %struct.op* %486, i32 0, i32 1
  %487 = load %struct.op*, %struct.op** %op_sibling, align 8
  store %struct.op* %487, %struct.op** %kid, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.782

if.end.782:                                       ; preds = %for.end, %sw.epilog.775
  %488 = load i32, i32* %level.addr, align 4
  %sub783 = sub nsw i32 %488, 1
  %489 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %sub783, %struct._PerlIO** %489, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i32 0, i32 0))
  ret void
}

declare i8* @Perl_custom_op_name(%struct.op*) #2

declare %struct.sv* @Perl_newSV(i64) #2

declare void @Perl_push_scope() #2

declare void @Perl_save_freesv(%struct.sv*) #2

declare void @Perl_pop_scope() #2

; Function Attrs: nounwind uwtable
define void @Perl_gv_dump(%struct.gv* %gv) #0 {
entry:
  %gv.addr = alloca %struct.gv*, align 8
  %sv = alloca %struct.sv*, align 8
  store %struct.gv* %gv, %struct.gv** %gv.addr, align 8
  %0 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %tobool = icmp ne %struct.gv* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %call1 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %call, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call %struct.sv* @Perl_sv_newmortal()
  store %struct.sv* %call2, %struct.sv** %sv, align 8
  %call3 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %call4 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %call3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i32 0, i32 0))
  %1 = load %struct.sv*, %struct.sv** %sv, align 8
  %2 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  call void @Perl_gv_fullname4(%struct.sv* %1, %struct.gv* %2, i8* null, i8 signext 1)
  %call5 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %3 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %3, i32 0, i32 0
  %4 = load i8*, i8** %sv_any, align 8
  %5 = bitcast i8* %4 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %5, i32 0, i32 0
  %6 = load i8*, i8** %xpv_pv, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 1, %struct._PerlIO** %call5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.153, i32 0, i32 0), i8* %6)
  %7 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %8 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any6 = getelementptr inbounds %struct.gv, %struct.gv* %8, i32 0, i32 0
  %9 = load %struct.xpvgv*, %struct.xpvgv** %sv_any6, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %9, i32 0, i32 7
  %10 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_egv = getelementptr inbounds %struct.gp, %struct.gp* %10, i32 0, i32 6
  %11 = load %struct.gv*, %struct.gv** %gp_egv, align 8
  %cmp = icmp ne %struct.gv* %7, %11
  br i1 %cmp, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %if.end
  %12 = load %struct.sv*, %struct.sv** %sv, align 8
  %13 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any8 = getelementptr inbounds %struct.gv, %struct.gv* %13, i32 0, i32 0
  %14 = load %struct.xpvgv*, %struct.xpvgv** %sv_any8, align 8
  %xgv_gp9 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %14, i32 0, i32 7
  %15 = load %struct.gp*, %struct.gp** %xgv_gp9, align 8
  %gp_egv10 = getelementptr inbounds %struct.gp, %struct.gp* %15, i32 0, i32 6
  %16 = load %struct.gv*, %struct.gv** %gp_egv10, align 8
  call void @Perl_gv_efullname4(%struct.sv* %12, %struct.gv* %16, i8* null, i8 signext 1)
  %call11 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %17 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any12 = getelementptr inbounds %struct.sv, %struct.sv* %17, i32 0, i32 0
  %18 = load i8*, i8** %sv_any12, align 8
  %19 = bitcast i8* %18 to %struct.xpv*
  %xpv_pv13 = getelementptr inbounds %struct.xpv, %struct.xpv* %19, i32 0, i32 0
  %20 = load i8*, i8** %xpv_pv13, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 1, %struct._PerlIO** %call11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.154, i32 0, i32 0), i8* %20)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.7, %if.end
  %call15 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %call16 = call i32 @PerlIO_putc(%struct._PerlIO** %call15, i32 10)
  %call17 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 0, %struct._PerlIO** %call17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end.14, %if.then
  ret void
}

declare void @Perl_gv_efullname4(%struct.sv*, %struct.gv*, i8*, i8 signext) #2

declare i32 @PerlIO_putc(%struct._PerlIO**, i32) #2

; Function Attrs: nounwind uwtable
define void @Perl_do_magic_dump(i32 %level, %struct._PerlIO** %file, %struct.magic* %mg, i32 %nest, i32 %maxnest, i8 signext %dumpops, i64 %pvlim) #0 {
entry:
  %level.addr = alloca i32, align 4
  %file.addr = alloca %struct._PerlIO**, align 8
  %mg.addr = alloca %struct.magic*, align 8
  %nest.addr = alloca i32, align 4
  %maxnest.addr = alloca i32, align 4
  %dumpops.addr = alloca i8, align 1
  %pvlim.addr = alloca i64, align 8
  %v = alloca %struct.mgvtbl*, align 8
  %s = alloca i8*, align 8
  %n = alloca i32, align 4
  %name = alloca i8*, align 8
  %sv = alloca %struct.sv*, align 8
  %cache = alloca i64*, align 8
  %i = alloca i64, align 8
  store i32 %level, i32* %level.addr, align 4
  store %struct._PerlIO** %file, %struct._PerlIO*** %file.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  store i32 %nest, i32* %nest.addr, align 4
  store i32 %maxnest, i32* %maxnest.addr, align 4
  store i8 %dumpops, i8* %dumpops.addr, align 1
  store i64 %pvlim, i64* %pvlim.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.238, %entry
  %0 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %tobool = icmp ne %struct.magic* %0, null
  br i1 %tobool, label %for.body, label %for.end.239

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %level.addr, align 4
  %2 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %3 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %4 = ptrtoint %struct.magic* %3 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %1, %struct._PerlIO** %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.155, i32 0, i32 0), i64 %4)
  %5 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_virtual = getelementptr inbounds %struct.magic, %struct.magic* %5, i32 0, i32 1
  %6 = load %struct.mgvtbl*, %struct.mgvtbl** %mg_virtual, align 8
  %tobool1 = icmp ne %struct.mgvtbl* %6, null
  br i1 %tobool1, label %if.then, label %if.else.103

if.then:                                          ; preds = %for.body
  %7 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_virtual2 = getelementptr inbounds %struct.magic, %struct.magic* %7, i32 0, i32 1
  %8 = load %struct.mgvtbl*, %struct.mgvtbl** %mg_virtual2, align 8
  store %struct.mgvtbl* %8, %struct.mgvtbl** %v, align 8
  store i8* null, i8** %s, align 8
  %9 = load %struct.mgvtbl*, %struct.mgvtbl** %v, align 8
  %cmp = icmp eq %struct.mgvtbl* %9, @PL_vtbl_sv
  br i1 %cmp, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.156, i32 0, i32 0), i8** %s, align 8
  br label %if.end.98

if.else:                                          ; preds = %if.then
  %10 = load %struct.mgvtbl*, %struct.mgvtbl** %v, align 8
  %cmp4 = icmp eq %struct.mgvtbl* %10, @PL_vtbl_env
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.157, i32 0, i32 0), i8** %s, align 8
  br label %if.end.97

if.else.6:                                        ; preds = %if.else
  %11 = load %struct.mgvtbl*, %struct.mgvtbl** %v, align 8
  %cmp7 = icmp eq %struct.mgvtbl* %11, @PL_vtbl_envelem
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.else.6
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.158, i32 0, i32 0), i8** %s, align 8
  br label %if.end.96

if.else.9:                                        ; preds = %if.else.6
  %12 = load %struct.mgvtbl*, %struct.mgvtbl** %v, align 8
  %cmp10 = icmp eq %struct.mgvtbl* %12, @PL_vtbl_sig
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else.9
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.159, i32 0, i32 0), i8** %s, align 8
  br label %if.end.95

if.else.12:                                       ; preds = %if.else.9
  %13 = load %struct.mgvtbl*, %struct.mgvtbl** %v, align 8
  %cmp13 = icmp eq %struct.mgvtbl* %13, @PL_vtbl_sigelem
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.else.12
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.160, i32 0, i32 0), i8** %s, align 8
  br label %if.end.94

if.else.15:                                       ; preds = %if.else.12
  %14 = load %struct.mgvtbl*, %struct.mgvtbl** %v, align 8
  %cmp16 = icmp eq %struct.mgvtbl* %14, @PL_vtbl_pack
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.else.15
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.161, i32 0, i32 0), i8** %s, align 8
  br label %if.end.93

if.else.18:                                       ; preds = %if.else.15
  %15 = load %struct.mgvtbl*, %struct.mgvtbl** %v, align 8
  %cmp19 = icmp eq %struct.mgvtbl* %15, @PL_vtbl_packelem
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.else.18
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.162, i32 0, i32 0), i8** %s, align 8
  br label %if.end.92

if.else.21:                                       ; preds = %if.else.18
  %16 = load %struct.mgvtbl*, %struct.mgvtbl** %v, align 8
  %cmp22 = icmp eq %struct.mgvtbl* %16, @PL_vtbl_dbline
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.else.21
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.163, i32 0, i32 0), i8** %s, align 8
  br label %if.end.91

if.else.24:                                       ; preds = %if.else.21
  %17 = load %struct.mgvtbl*, %struct.mgvtbl** %v, align 8
  %cmp25 = icmp eq %struct.mgvtbl* %17, @PL_vtbl_isa
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %if.else.24
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.164, i32 0, i32 0), i8** %s, align 8
  br label %if.end.90

if.else.27:                                       ; preds = %if.else.24
  %18 = load %struct.mgvtbl*, %struct.mgvtbl** %v, align 8
  %cmp28 = icmp eq %struct.mgvtbl* %18, @PL_vtbl_arylen
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %if.else.27
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.165, i32 0, i32 0), i8** %s, align 8
  br label %if.end.89

if.else.30:                                       ; preds = %if.else.27
  %19 = load %struct.mgvtbl*, %struct.mgvtbl** %v, align 8
  %cmp31 = icmp eq %struct.mgvtbl* %19, @PL_vtbl_glob
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %if.else.30
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.166, i32 0, i32 0), i8** %s, align 8
  br label %if.end.88

if.else.33:                                       ; preds = %if.else.30
  %20 = load %struct.mgvtbl*, %struct.mgvtbl** %v, align 8
  %cmp34 = icmp eq %struct.mgvtbl* %20, @PL_vtbl_mglob
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.else.33
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.167, i32 0, i32 0), i8** %s, align 8
  br label %if.end.87

if.else.36:                                       ; preds = %if.else.33
  %21 = load %struct.mgvtbl*, %struct.mgvtbl** %v, align 8
  %cmp37 = icmp eq %struct.mgvtbl* %21, @PL_vtbl_nkeys
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %if.else.36
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.168, i32 0, i32 0), i8** %s, align 8
  br label %if.end.86

if.else.39:                                       ; preds = %if.else.36
  %22 = load %struct.mgvtbl*, %struct.mgvtbl** %v, align 8
  %cmp40 = icmp eq %struct.mgvtbl* %22, @PL_vtbl_taint
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %if.else.39
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.169, i32 0, i32 0), i8** %s, align 8
  br label %if.end.85

if.else.42:                                       ; preds = %if.else.39
  %23 = load %struct.mgvtbl*, %struct.mgvtbl** %v, align 8
  %cmp43 = icmp eq %struct.mgvtbl* %23, @PL_vtbl_substr
  br i1 %cmp43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %if.else.42
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.170, i32 0, i32 0), i8** %s, align 8
  br label %if.end.84

if.else.45:                                       ; preds = %if.else.42
  %24 = load %struct.mgvtbl*, %struct.mgvtbl** %v, align 8
  %cmp46 = icmp eq %struct.mgvtbl* %24, @PL_vtbl_vec
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %if.else.45
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.171, i32 0, i32 0), i8** %s, align 8
  br label %if.end.83

if.else.48:                                       ; preds = %if.else.45
  %25 = load %struct.mgvtbl*, %struct.mgvtbl** %v, align 8
  %cmp49 = icmp eq %struct.mgvtbl* %25, @PL_vtbl_pos
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %if.else.48
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.172, i32 0, i32 0), i8** %s, align 8
  br label %if.end.82

if.else.51:                                       ; preds = %if.else.48
  %26 = load %struct.mgvtbl*, %struct.mgvtbl** %v, align 8
  %cmp52 = icmp eq %struct.mgvtbl* %26, @PL_vtbl_bm
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %if.else.51
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.173, i32 0, i32 0), i8** %s, align 8
  br label %if.end.81

if.else.54:                                       ; preds = %if.else.51
  %27 = load %struct.mgvtbl*, %struct.mgvtbl** %v, align 8
  %cmp55 = icmp eq %struct.mgvtbl* %27, @PL_vtbl_fm
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %if.else.54
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.174, i32 0, i32 0), i8** %s, align 8
  br label %if.end.80

if.else.57:                                       ; preds = %if.else.54
  %28 = load %struct.mgvtbl*, %struct.mgvtbl** %v, align 8
  %cmp58 = icmp eq %struct.mgvtbl* %28, @PL_vtbl_uvar
  br i1 %cmp58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %if.else.57
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.175, i32 0, i32 0), i8** %s, align 8
  br label %if.end.79

if.else.60:                                       ; preds = %if.else.57
  %29 = load %struct.mgvtbl*, %struct.mgvtbl** %v, align 8
  %cmp61 = icmp eq %struct.mgvtbl* %29, @PL_vtbl_defelem
  br i1 %cmp61, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %if.else.60
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.176, i32 0, i32 0), i8** %s, align 8
  br label %if.end.78

if.else.63:                                       ; preds = %if.else.60
  %30 = load %struct.mgvtbl*, %struct.mgvtbl** %v, align 8
  %cmp64 = icmp eq %struct.mgvtbl* %30, @PL_vtbl_amagic
  br i1 %cmp64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %if.else.63
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.177, i32 0, i32 0), i8** %s, align 8
  br label %if.end.77

if.else.66:                                       ; preds = %if.else.63
  %31 = load %struct.mgvtbl*, %struct.mgvtbl** %v, align 8
  %cmp67 = icmp eq %struct.mgvtbl* %31, @PL_vtbl_amagicelem
  br i1 %cmp67, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %if.else.66
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.178, i32 0, i32 0), i8** %s, align 8
  br label %if.end.76

if.else.69:                                       ; preds = %if.else.66
  %32 = load %struct.mgvtbl*, %struct.mgvtbl** %v, align 8
  %cmp70 = icmp eq %struct.mgvtbl* %32, @PL_vtbl_backref
  br i1 %cmp70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %if.else.69
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.179, i32 0, i32 0), i8** %s, align 8
  br label %if.end.75

if.else.72:                                       ; preds = %if.else.69
  %33 = load %struct.mgvtbl*, %struct.mgvtbl** %v, align 8
  %cmp73 = icmp eq %struct.mgvtbl* %33, @PL_vtbl_utf8
  br i1 %cmp73, label %if.then.74, label %if.end

if.then.74:                                       ; preds = %if.else.72
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.180, i32 0, i32 0), i8** %s, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.74, %if.else.72
  br label %if.end.75

if.end.75:                                        ; preds = %if.end, %if.then.71
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then.68
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then.65
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.62
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.59
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.56
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then.53
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.then.50
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.47
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.44
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.then.41
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.38
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.then.35
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %if.then.32
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then.29
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then.26
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.then.23
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.then.20
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then.17
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.14
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.then.11
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.then.8
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.then.5
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.then.3
  %34 = load i8*, i8** %s, align 8
  %tobool99 = icmp ne i8* %34, null
  br i1 %tobool99, label %if.then.100, label %if.else.101

if.then.100:                                      ; preds = %if.end.98
  %35 = load i32, i32* %level.addr, align 4
  %36 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %37 = load i8*, i8** %s, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %35, %struct._PerlIO** %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.181, i32 0, i32 0), i8* %37)
  br label %if.end.102

if.else.101:                                      ; preds = %if.end.98
  %38 = load i32, i32* %level.addr, align 4
  %39 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %40 = load %struct.mgvtbl*, %struct.mgvtbl** %v, align 8
  %41 = ptrtoint %struct.mgvtbl* %40 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %38, %struct._PerlIO** %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.182, i32 0, i32 0), i64 %41)
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.101, %if.then.100
  br label %if.end.104

if.else.103:                                      ; preds = %for.body
  %42 = load i32, i32* %level.addr, align 4
  %43 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %42, %struct._PerlIO** %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.183, i32 0, i32 0))
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.103, %if.end.102
  %44 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_private = getelementptr inbounds %struct.magic, %struct.magic* %44, i32 0, i32 2
  %45 = load i16, i16* %mg_private, align 2
  %tobool105 = icmp ne i16 %45, 0
  br i1 %tobool105, label %if.then.106, label %if.end.108

if.then.106:                                      ; preds = %if.end.104
  %46 = load i32, i32* %level.addr, align 4
  %47 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %48 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_private107 = getelementptr inbounds %struct.magic, %struct.magic* %48, i32 0, i32 2
  %49 = load i16, i16* %mg_private107, align 2
  %conv = zext i16 %49 to i32
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %46, %struct._PerlIO** %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.184, i32 0, i32 0), i32 %conv)
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.106, %if.end.104
  store i8* null, i8** %name, align 8
  store i32 0, i32* %n, align 4
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc, %if.end.108
  %50 = load i32, i32* %n, align 4
  %idxprom = sext i32 %50 to i64
  %arrayidx = getelementptr inbounds [40 x %struct.anon], [40 x %struct.anon]* @magic_names, i32 0, i64 %idxprom
  %name110 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 1
  %51 = load i8*, i8** %name110, align 8
  %tobool111 = icmp ne i8* %51, null
  br i1 %tobool111, label %for.body.112, label %for.end

for.body.112:                                     ; preds = %for.cond.109
  %52 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_type = getelementptr inbounds %struct.magic, %struct.magic* %52, i32 0, i32 3
  %53 = load i8, i8* %mg_type, align 1
  %conv113 = sext i8 %53 to i32
  %54 = load i32, i32* %n, align 4
  %idxprom114 = sext i32 %54 to i64
  %arrayidx115 = getelementptr inbounds [40 x %struct.anon], [40 x %struct.anon]* @magic_names, i32 0, i64 %idxprom114
  %type = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx115, i32 0, i32 0
  %55 = load i8, i8* %type, align 1
  %conv116 = sext i8 %55 to i32
  %cmp117 = icmp eq i32 %conv113, %conv116
  br i1 %cmp117, label %if.then.119, label %if.end.123

if.then.119:                                      ; preds = %for.body.112
  %56 = load i32, i32* %n, align 4
  %idxprom120 = sext i32 %56 to i64
  %arrayidx121 = getelementptr inbounds [40 x %struct.anon], [40 x %struct.anon]* @magic_names, i32 0, i64 %idxprom120
  %name122 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx121, i32 0, i32 1
  %57 = load i8*, i8** %name122, align 8
  store i8* %57, i8** %name, align 8
  br label %for.end

if.end.123:                                       ; preds = %for.body.112
  br label %for.inc

for.inc:                                          ; preds = %if.end.123
  %58 = load i32, i32* %n, align 4
  %inc = add nsw i32 %58, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond.109

for.end:                                          ; preds = %if.then.119, %for.cond.109
  %59 = load i8*, i8** %name, align 8
  %tobool124 = icmp ne i8* %59, null
  br i1 %tobool124, label %if.then.125, label %if.else.126

if.then.125:                                      ; preds = %for.end
  %60 = load i32, i32* %level.addr, align 4
  %61 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %62 = load i8*, i8** %name, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %60, %struct._PerlIO** %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.185, i32 0, i32 0), i8* %62)
  br label %if.end.129

if.else.126:                                      ; preds = %for.end
  %63 = load i32, i32* %level.addr, align 4
  %64 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %65 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_type127 = getelementptr inbounds %struct.magic, %struct.magic* %65, i32 0, i32 3
  %66 = load i8, i8* %mg_type127, align 1
  %conv128 = sext i8 %66 to i32
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %63, %struct._PerlIO** %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.186, i32 0, i32 0), i32 %conv128)
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.126, %if.then.125
  %67 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_flags = getelementptr inbounds %struct.magic, %struct.magic* %67, i32 0, i32 4
  %68 = load i8, i8* %mg_flags, align 1
  %tobool130 = icmp ne i8 %68, 0
  br i1 %tobool130, label %if.then.131, label %if.end.166

if.then.131:                                      ; preds = %if.end.129
  %69 = load i32, i32* %level.addr, align 4
  %70 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %71 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_flags132 = getelementptr inbounds %struct.magic, %struct.magic* %71, i32 0, i32 4
  %72 = load i8, i8* %mg_flags132, align 1
  %conv133 = zext i8 %72 to i32
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %69, %struct._PerlIO** %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.187, i32 0, i32 0), i32 %conv133)
  %73 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_type134 = getelementptr inbounds %struct.magic, %struct.magic* %73, i32 0, i32 3
  %74 = load i8, i8* %mg_type134, align 1
  %conv135 = sext i8 %74 to i32
  %cmp136 = icmp eq i32 %conv135, 101
  br i1 %cmp136, label %land.lhs.true, label %if.end.142

land.lhs.true:                                    ; preds = %if.then.131
  %75 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_flags138 = getelementptr inbounds %struct.magic, %struct.magic* %75, i32 0, i32 4
  %76 = load i8, i8* %mg_flags138, align 1
  %conv139 = zext i8 %76 to i32
  %and = and i32 %conv139, 1
  %tobool140 = icmp ne i32 %and, 0
  br i1 %tobool140, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %land.lhs.true
  %77 = load i32, i32* %level.addr, align 4
  %78 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %77, %struct._PerlIO** %78, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.188, i32 0, i32 0))
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.141, %land.lhs.true, %if.then.131
  %79 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_flags143 = getelementptr inbounds %struct.magic, %struct.magic* %79, i32 0, i32 4
  %80 = load i8, i8* %mg_flags143, align 1
  %conv144 = zext i8 %80 to i32
  %and145 = and i32 %conv144, 2
  %tobool146 = icmp ne i32 %and145, 0
  br i1 %tobool146, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %if.end.142
  %81 = load i32, i32* %level.addr, align 4
  %82 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %81, %struct._PerlIO** %82, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.189, i32 0, i32 0))
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.147, %if.end.142
  %83 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_flags149 = getelementptr inbounds %struct.magic, %struct.magic* %83, i32 0, i32 4
  %84 = load i8, i8* %mg_flags149, align 1
  %conv150 = zext i8 %84 to i32
  %and151 = and i32 %conv150, 4
  %tobool152 = icmp ne i32 %and151, 0
  br i1 %tobool152, label %if.then.153, label %if.end.154

if.then.153:                                      ; preds = %if.end.148
  %85 = load i32, i32* %level.addr, align 4
  %86 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %85, %struct._PerlIO** %86, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.190, i32 0, i32 0))
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.153, %if.end.148
  %87 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_type155 = getelementptr inbounds %struct.magic, %struct.magic* %87, i32 0, i32 3
  %88 = load i8, i8* %mg_type155, align 1
  %conv156 = sext i8 %88 to i32
  %cmp157 = icmp eq i32 %conv156, 103
  br i1 %cmp157, label %land.lhs.true.159, label %if.end.165

land.lhs.true.159:                                ; preds = %if.end.154
  %89 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_flags160 = getelementptr inbounds %struct.magic, %struct.magic* %89, i32 0, i32 4
  %90 = load i8, i8* %mg_flags160, align 1
  %conv161 = zext i8 %90 to i32
  %and162 = and i32 %conv161, 1
  %tobool163 = icmp ne i32 %and162, 0
  br i1 %tobool163, label %if.then.164, label %if.end.165

if.then.164:                                      ; preds = %land.lhs.true.159
  %91 = load i32, i32* %level.addr, align 4
  %92 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %91, %struct._PerlIO** %92, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.191, i32 0, i32 0))
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.164, %land.lhs.true.159, %if.end.154
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %if.end.129
  %93 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %93, i32 0, i32 5
  %94 = load %struct.sv*, %struct.sv** %mg_obj, align 8
  %tobool167 = icmp ne %struct.sv* %94, null
  br i1 %tobool167, label %if.then.168, label %if.end.178

if.then.168:                                      ; preds = %if.end.166
  %95 = load i32, i32* %level.addr, align 4
  %96 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %97 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_obj169 = getelementptr inbounds %struct.magic, %struct.magic* %97, i32 0, i32 5
  %98 = load %struct.sv*, %struct.sv** %mg_obj169, align 8
  %99 = ptrtoint %struct.sv* %98 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %95, %struct._PerlIO** %96, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.192, i32 0, i32 0), i64 %99)
  %100 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_flags170 = getelementptr inbounds %struct.magic, %struct.magic* %100, i32 0, i32 4
  %101 = load i8, i8* %mg_flags170, align 1
  %conv171 = zext i8 %101 to i32
  %and172 = and i32 %conv171, 2
  %tobool173 = icmp ne i32 %and172, 0
  br i1 %tobool173, label %if.then.174, label %if.end.177

if.then.174:                                      ; preds = %if.then.168
  %102 = load i32, i32* %level.addr, align 4
  %add = add nsw i32 %102, 2
  %103 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %104 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_obj175 = getelementptr inbounds %struct.magic, %struct.magic* %104, i32 0, i32 5
  %105 = load %struct.sv*, %struct.sv** %mg_obj175, align 8
  %106 = load i32, i32* %nest.addr, align 4
  %add176 = add nsw i32 %106, 1
  %107 = load i32, i32* %maxnest.addr, align 4
  %108 = load i8, i8* %dumpops.addr, align 1
  %109 = load i64, i64* %pvlim.addr, align 8
  call void @Perl_do_sv_dump(i32 %add, %struct._PerlIO** %103, %struct.sv* %105, i32 %add176, i32 %107, i8 signext %108, i64 %109)
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.174, %if.then.168
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.177, %if.end.166
  %110 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_len = getelementptr inbounds %struct.magic, %struct.magic* %110, i32 0, i32 7
  %111 = load i32, i32* %mg_len, align 4
  %tobool179 = icmp ne i32 %111, 0
  br i1 %tobool179, label %if.then.180, label %if.end.183

if.then.180:                                      ; preds = %if.end.178
  %112 = load i32, i32* %level.addr, align 4
  %113 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %114 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_len181 = getelementptr inbounds %struct.magic, %struct.magic* %114, i32 0, i32 7
  %115 = load i32, i32* %mg_len181, align 4
  %conv182 = sext i32 %115 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %112, %struct._PerlIO** %113, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.193, i32 0, i32 0), i64 %conv182)
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.180, %if.end.178
  %116 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr = getelementptr inbounds %struct.magic, %struct.magic* %116, i32 0, i32 6
  %117 = load i8*, i8** %mg_ptr, align 8
  %tobool184 = icmp ne i8* %117, null
  br i1 %tobool184, label %if.then.185, label %if.end.216

if.then.185:                                      ; preds = %if.end.183
  %118 = load i32, i32* %level.addr, align 4
  %119 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %120 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr186 = getelementptr inbounds %struct.magic, %struct.magic* %120, i32 0, i32 6
  %121 = load i8*, i8** %mg_ptr186, align 8
  %122 = ptrtoint i8* %121 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %118, %struct._PerlIO** %119, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.194, i32 0, i32 0), i64 %122)
  %123 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_len187 = getelementptr inbounds %struct.magic, %struct.magic* %123, i32 0, i32 7
  %124 = load i32, i32* %mg_len187, align 4
  %cmp188 = icmp sge i32 %124, 0
  br i1 %cmp188, label %if.then.190, label %if.else.202

if.then.190:                                      ; preds = %if.then.185
  %125 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_type191 = getelementptr inbounds %struct.magic, %struct.magic* %125, i32 0, i32 3
  %126 = load i8, i8* %mg_type191, align 1
  %conv192 = sext i8 %126 to i32
  %cmp193 = icmp ne i32 %conv192, 119
  br i1 %cmp193, label %if.then.195, label %if.end.201

if.then.195:                                      ; preds = %if.then.190
  %call = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i64 0)
  store %struct.sv* %call, %struct.sv** %sv, align 8
  %127 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %128 = load %struct.sv*, %struct.sv** %sv, align 8
  %129 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr196 = getelementptr inbounds %struct.magic, %struct.magic* %129, i32 0, i32 6
  %130 = load i8*, i8** %mg_ptr196, align 8
  %131 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_len197 = getelementptr inbounds %struct.magic, %struct.magic* %131, i32 0, i32 7
  %132 = load i32, i32* %mg_len197, align 4
  %conv198 = sext i32 %132 to i64
  %133 = load i64, i64* %pvlim.addr, align 8
  %call199 = call i8* @Perl_pv_display(%struct.sv* %128, i8* %130, i64 %conv198, i64 0, i64 %133)
  %call200 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %127, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.195, i32 0, i32 0), i8* %call199)
  %134 = load %struct.sv*, %struct.sv** %sv, align 8
  call void @Perl_sv_free(%struct.sv* %134)
  br label %if.end.201

if.end.201:                                       ; preds = %if.then.195, %if.then.190
  br label %if.end.214

if.else.202:                                      ; preds = %if.then.185
  %135 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_len203 = getelementptr inbounds %struct.magic, %struct.magic* %135, i32 0, i32 7
  %136 = load i32, i32* %mg_len203, align 4
  %cmp204 = icmp eq i32 %136, -2
  br i1 %cmp204, label %if.then.206, label %if.else.211

if.then.206:                                      ; preds = %if.else.202
  %137 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %call207 = call i32 @PerlIO_puts(%struct._PerlIO** %137, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.196, i32 0, i32 0))
  %138 = load i32, i32* %level.addr, align 4
  %add208 = add nsw i32 %138, 2
  %139 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %140 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr209 = getelementptr inbounds %struct.magic, %struct.magic* %140, i32 0, i32 6
  %141 = load i8*, i8** %mg_ptr209, align 8
  %142 = bitcast i8* %141 to %struct.sv*
  %143 = load i32, i32* %nest.addr, align 4
  %add210 = add nsw i32 %143, 1
  %144 = load i32, i32* %maxnest.addr, align 4
  %145 = load i8, i8* %dumpops.addr, align 1
  %146 = load i64, i64* %pvlim.addr, align 8
  call void @Perl_do_sv_dump(i32 %add208, %struct._PerlIO** %139, %struct.sv* %142, i32 %add210, i32 %144, i8 signext %145, i64 %146)
  br label %for.inc.238

if.else.211:                                      ; preds = %if.else.202
  %147 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %call212 = call i32 @PerlIO_puts(%struct._PerlIO** %147, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.197, i32 0, i32 0))
  br label %if.end.213

if.end.213:                                       ; preds = %if.else.211
  br label %if.end.214

if.end.214:                                       ; preds = %if.end.213, %if.end.201
  %148 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %call215 = call i32 @PerlIO_putc(%struct._PerlIO** %148, i32 10)
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.214, %if.end.183
  %149 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_type217 = getelementptr inbounds %struct.magic, %struct.magic* %149, i32 0, i32 3
  %150 = load i8, i8* %mg_type217, align 1
  %conv218 = sext i8 %150 to i32
  %cmp219 = icmp eq i32 %conv218, 119
  br i1 %cmp219, label %if.then.221, label %if.end.237

if.then.221:                                      ; preds = %if.end.216
  %151 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr222 = getelementptr inbounds %struct.magic, %struct.magic* %151, i32 0, i32 6
  %152 = load i8*, i8** %mg_ptr222, align 8
  %153 = bitcast i8* %152 to i64*
  store i64* %153, i64** %cache, align 8
  %154 = load i64*, i64** %cache, align 8
  %tobool223 = icmp ne i64* %154, null
  br i1 %tobool223, label %if.then.224, label %if.end.236

if.then.224:                                      ; preds = %if.then.221
  store i64 0, i64* %i, align 8
  br label %for.cond.225

for.cond.225:                                     ; preds = %for.inc.233, %if.then.224
  %155 = load i64, i64* %i, align 8
  %cmp226 = icmp slt i64 %155, 2
  br i1 %cmp226, label %for.body.228, label %for.end.235

for.body.228:                                     ; preds = %for.cond.225
  %156 = load i32, i32* %level.addr, align 4
  %157 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %158 = load i64, i64* %i, align 8
  %159 = load i64, i64* %i, align 8
  %mul = mul nsw i64 %159, 2
  %160 = load i64*, i64** %cache, align 8
  %arrayidx229 = getelementptr inbounds i64, i64* %160, i64 %mul
  %161 = load i64, i64* %arrayidx229, align 8
  %162 = load i64, i64* %i, align 8
  %mul230 = mul nsw i64 %162, 2
  %add231 = add nsw i64 %mul230, 1
  %163 = load i64*, i64** %cache, align 8
  %arrayidx232 = getelementptr inbounds i64, i64* %163, i64 %add231
  %164 = load i64, i64* %arrayidx232, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %156, %struct._PerlIO** %157, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.198, i32 0, i32 0), i64 %158, i64 %161, i64 %164)
  br label %for.inc.233

for.inc.233:                                      ; preds = %for.body.228
  %165 = load i64, i64* %i, align 8
  %inc234 = add nsw i64 %165, 1
  store i64 %inc234, i64* %i, align 8
  br label %for.cond.225

for.end.235:                                      ; preds = %for.cond.225
  br label %if.end.236

if.end.236:                                       ; preds = %for.end.235, %if.then.221
  br label %if.end.237

if.end.237:                                       ; preds = %if.end.236, %if.end.216
  br label %for.inc.238

for.inc.238:                                      ; preds = %if.end.237, %if.then.206
  %166 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_moremagic = getelementptr inbounds %struct.magic, %struct.magic* %166, i32 0, i32 0
  %167 = load %struct.magic*, %struct.magic** %mg_moremagic, align 8
  store %struct.magic* %167, %struct.magic** %mg.addr, align 8
  br label %for.cond

for.end.239:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_do_sv_dump(i32 %level, %struct._PerlIO** %file, %struct.sv* %sv, i32 %nest, i32 %maxnest, i8 signext %dumpops, i64 %pvlim) #0 {
entry:
  %level.addr = alloca i32, align 4
  %file.addr = alloca %struct._PerlIO**, align 8
  %sv.addr = alloca %struct.sv*, align 8
  %nest.addr = alloca i32, align 4
  %maxnest.addr = alloca i32, align 4
  %dumpops.addr = alloca i8, align 1
  %pvlim.addr = alloca i64, align 8
  %d = alloca %struct.sv*, align 8
  %s = alloca i8*, align 8
  %flags = alloca i32, align 4
  %type = alloca i32, align 4
  %count = alloca i32, align 4
  %elt = alloca %struct.sv**, align 8
  %freq = alloca [200 x i32], align 16
  %i = alloca i32, align 4
  %max = alloca i32, align 4
  %pow2 = alloca i32, align 4
  %keys = alloca i32, align 4
  %theoret = alloca double, align 8
  %sum = alloca double, align 8
  %h = alloca %struct.he*, align 8
  %count580 = alloca i32, align 4
  %he = alloca %struct.he*, align 8
  %hv = alloca %struct.hv*, align 8
  %count691 = alloca i32, align 4
  %elt702 = alloca %struct.sv*, align 8
  %keysv = alloca %struct.sv*, align 8
  %keypv = alloca i8*, align 8
  %len = alloca i64, align 8
  %hash = alloca i32, align 4
  %outside = alloca %struct.cv*, align 8
  store i32 %level, i32* %level.addr, align 4
  store %struct._PerlIO** %file, %struct._PerlIO*** %file.addr, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store i32 %nest, i32* %nest.addr, align 4
  store i32 %maxnest, i32* %maxnest.addr, align 4
  store i8 %dumpops, i8* %dumpops.addr, align 1
  store i64 %pvlim, i64* %pvlim.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %tobool = icmp ne %struct.sv* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %level.addr, align 4
  %2 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %1, %struct._PerlIO** %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.204, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %3, i32 0, i32 2
  %4 = load i32, i32* %sv_flags, align 4
  store i32 %4, i32* %flags, align 4
  %5 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags1 = getelementptr inbounds %struct.sv, %struct.sv* %5, i32 0, i32 2
  %6 = load i32, i32* %sv_flags1, align 4
  %and = and i32 %6, 255
  store i32 %and, i32* %type, align 4
  %7 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %7, i32 0, i32 0
  %8 = load i8*, i8** %sv_any, align 8
  %9 = ptrtoint i8* %8 to i64
  %10 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %11 = ptrtoint %struct.sv* %10 to i64
  %12 = load i32, i32* @PL_dumpindent, align 4
  %13 = load i32, i32* %level.addr, align 4
  %mul = mul nsw i32 %12, %13
  %14 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 1
  %15 = load i32, i32* %sv_refcnt, align 4
  %conv = zext i32 %15 to i64
  %16 = load i32, i32* @PL_dumpindent, align 4
  %17 = load i32, i32* %level.addr, align 4
  %mul2 = mul nsw i32 %16, %17
  %call = call %struct.sv* (i8*, ...) @Perl_newSVpvf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.205, i32 0, i32 0), i64 %9, i64 %11, i32 %mul, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i64 %conv, i32 %mul2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0))
  store %struct.sv* %call, %struct.sv** %d, align 8
  %18 = load i32, i32* %flags, align 4
  %and3 = and i32 %18, 256
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %19 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.206, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %20 = load i32, i32* %flags, align 4
  %and7 = and i32 %20, 512
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  %21 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.207, i32 0, i32 0))
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.6
  %22 = load i32, i32* %flags, align 4
  %and11 = and i32 %22, 1024
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  %23 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.208, i32 0, i32 0))
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.10
  %24 = load i32, i32* %flags, align 4
  %and15 = and i32 %24, 2048
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  %25 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.209, i32 0, i32 0))
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.14
  %26 = load i32, i32* %flags, align 4
  %and19 = and i32 %26, 4096
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.18
  %27 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.210, i32 0, i32 0))
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.18
  %28 = load i32, i32* %flags, align 4
  %and23 = and i32 %28, 8192
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.22
  %29 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.211, i32 0, i32 0))
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.22
  %30 = load i32, i32* %flags, align 4
  %and27 = and i32 %30, 16384
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.26
  %31 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.212, i32 0, i32 0))
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.end.26
  %32 = load i32, i32* %flags, align 4
  %and31 = and i32 %32, 32768
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.30
  %33 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.213, i32 0, i32 0))
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.end.30
  %34 = load i32, i32* %flags, align 4
  %and35 = and i32 %34, 65536
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.34
  %35 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.214, i32 0, i32 0))
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.end.34
  %36 = load i32, i32* %flags, align 4
  %and39 = and i32 %36, 131072
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.38
  %37 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.215, i32 0, i32 0))
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.end.38
  %38 = load i32, i32* %flags, align 4
  %and43 = and i32 %38, 262144
  %tobool44 = icmp ne i32 %and43, 0
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.42
  %39 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.216, i32 0, i32 0))
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.end.42
  %40 = load i32, i32* %flags, align 4
  %and47 = and i32 %40, 524288
  %tobool48 = icmp ne i32 %and47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.55

if.then.49:                                       ; preds = %if.end.46
  %41 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.217, i32 0, i32 0))
  %42 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags50 = getelementptr inbounds %struct.sv, %struct.sv* %42, i32 0, i32 2
  %43 = load i32, i32* %sv_flags50, align 4
  %and51 = and i32 %43, -2146959360
  %cmp = icmp eq i32 %and51, -2146959360
  br i1 %cmp, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.then.49
  %44 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.218, i32 0, i32 0))
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.then.49
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.end.46
  %45 = load i32, i32* %flags, align 4
  %and56 = and i32 %45, 2097152
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.55
  %46 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.219, i32 0, i32 0))
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %if.end.55
  %47 = load i32, i32* %flags, align 4
  %and60 = and i32 %47, 1048576
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.end.59
  %48 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.220, i32 0, i32 0))
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %if.end.59
  %49 = load i32, i32* %flags, align 4
  %and64 = and i32 %49, 8388608
  %tobool65 = icmp ne i32 %and64, 0
  br i1 %tobool65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.63
  %50 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.221, i32 0, i32 0))
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %if.end.63
  %51 = load i32, i32* %flags, align 4
  %and68 = and i32 %51, 268435456
  %tobool69 = icmp ne i32 %and68, 0
  br i1 %tobool69, label %land.lhs.true, label %if.end.73

land.lhs.true:                                    ; preds = %if.end.67
  %52 = load i32, i32* %type, align 4
  %cmp70 = icmp ne i32 %52, 11
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %land.lhs.true
  %53 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.222, i32 0, i32 0))
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %land.lhs.true, %if.end.67
  %54 = load i32, i32* %flags, align 4
  %and74 = and i32 %54, 16777216
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.end.73
  %55 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.223, i32 0, i32 0))
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %if.end.73
  %56 = load i32, i32* %flags, align 4
  %and78 = and i32 %56, 33554432
  %tobool79 = icmp ne i32 %and78, 0
  br i1 %tobool79, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.end.77
  %57 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.224, i32 0, i32 0))
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %if.end.77
  %58 = load i32, i32* %flags, align 4
  %and82 = and i32 %58, 67108864
  %tobool83 = icmp ne i32 %and82, 0
  br i1 %tobool83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.end.81
  %59 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.225, i32 0, i32 0))
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %if.end.81
  %60 = load i32, i32* %flags, align 4
  %and86 = and i32 %60, 134217728
  %tobool87 = icmp ne i32 %and86, 0
  br i1 %tobool87, label %land.lhs.true.88, label %if.end.92

land.lhs.true.88:                                 ; preds = %if.end.85
  %61 = load i32, i32* %type, align 4
  %cmp89 = icmp ne i32 %61, 11
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %land.lhs.true.88
  %62 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.226, i32 0, i32 0))
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %land.lhs.true.88, %if.end.85
  %63 = load i32, i32* %type, align 4
  switch i32 %63, label %sw.default [
    i32 12, label %sw.bb
    i32 14, label %sw.bb
    i32 11, label %sw.bb.167
    i32 13, label %sw.bb.192
    i32 8, label %sw.bb.286
    i32 7, label %sw.bb.297
  ]

sw.bb:                                            ; preds = %if.end.92, %if.end.92
  %64 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any93 = getelementptr inbounds %struct.sv, %struct.sv* %64, i32 0, i32 0
  %65 = load i8*, i8** %sv_any93, align 8
  %66 = bitcast i8* %65 to %struct.xpvcv*
  %xcv_flags = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %66, i32 0, i32 17
  %67 = load i16, i16* %xcv_flags, align 2
  %conv94 = zext i16 %67 to i32
  %and95 = and i32 %conv94, 4
  %tobool96 = icmp ne i32 %and95, 0
  br i1 %tobool96, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %sw.bb
  %68 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.227, i32 0, i32 0))
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.97, %sw.bb
  %69 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any99 = getelementptr inbounds %struct.sv, %struct.sv* %69, i32 0, i32 0
  %70 = load i8*, i8** %sv_any99, align 8
  %71 = bitcast i8* %70 to %struct.xpvcv*
  %xcv_flags100 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %71, i32 0, i32 17
  %72 = load i16, i16* %xcv_flags100, align 2
  %conv101 = zext i16 %72 to i32
  %and102 = and i32 %conv101, 16
  %tobool103 = icmp ne i32 %and102, 0
  br i1 %tobool103, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %if.end.98
  %73 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.228, i32 0, i32 0))
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.104, %if.end.98
  %74 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any106 = getelementptr inbounds %struct.sv, %struct.sv* %74, i32 0, i32 0
  %75 = load i8*, i8** %sv_any106, align 8
  %76 = bitcast i8* %75 to %struct.xpvcv*
  %xcv_flags107 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %76, i32 0, i32 17
  %77 = load i16, i16* %xcv_flags107, align 2
  %conv108 = zext i16 %77 to i32
  %and109 = and i32 %conv108, 1
  %tobool110 = icmp ne i32 %and109, 0
  br i1 %tobool110, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %if.end.105
  %78 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.229, i32 0, i32 0))
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.111, %if.end.105
  %79 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any113 = getelementptr inbounds %struct.sv, %struct.sv* %79, i32 0, i32 0
  %80 = load i8*, i8** %sv_any113, align 8
  %81 = bitcast i8* %80 to %struct.xpvcv*
  %xcv_flags114 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %81, i32 0, i32 17
  %82 = load i16, i16* %xcv_flags114, align 2
  %conv115 = zext i16 %82 to i32
  %and116 = and i32 %conv115, 2
  %tobool117 = icmp ne i32 %and116, 0
  br i1 %tobool117, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %if.end.112
  %83 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.230, i32 0, i32 0))
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.118, %if.end.112
  %84 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any120 = getelementptr inbounds %struct.sv, %struct.sv* %84, i32 0, i32 0
  %85 = load i8*, i8** %sv_any120, align 8
  %86 = bitcast i8* %85 to %struct.xpvcv*
  %xcv_flags121 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %86, i32 0, i32 17
  %87 = load i16, i16* %xcv_flags121, align 2
  %conv122 = zext i16 %87 to i32
  %and123 = and i32 %conv122, 512
  %tobool124 = icmp ne i32 %and123, 0
  br i1 %tobool124, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %if.end.119
  %88 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.231, i32 0, i32 0))
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.125, %if.end.119
  %89 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any127 = getelementptr inbounds %struct.sv, %struct.sv* %89, i32 0, i32 0
  %90 = load i8*, i8** %sv_any127, align 8
  %91 = bitcast i8* %90 to %struct.xpvcv*
  %xcv_flags128 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %91, i32 0, i32 17
  %92 = load i16, i16* %xcv_flags128, align 2
  %conv129 = zext i16 %92 to i32
  %and130 = and i32 %conv129, 32
  %tobool131 = icmp ne i32 %and130, 0
  br i1 %tobool131, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %if.end.126
  %93 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.232, i32 0, i32 0))
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.132, %if.end.126
  %94 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags134 = getelementptr inbounds %struct.sv, %struct.sv* %94, i32 0, i32 2
  %95 = load i32, i32* %sv_flags134, align 4
  %and135 = and i32 %95, -2147483648
  %tobool136 = icmp ne i32 %and135, 0
  br i1 %tobool136, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %if.end.133
  %96 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %96, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.233, i32 0, i32 0))
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.137, %if.end.133
  %97 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any139 = getelementptr inbounds %struct.sv, %struct.sv* %97, i32 0, i32 0
  %98 = load i8*, i8** %sv_any139, align 8
  %99 = bitcast i8* %98 to %struct.xpvcv*
  %xcv_flags140 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %99, i32 0, i32 17
  %100 = load i16, i16* %xcv_flags140, align 2
  %conv141 = zext i16 %100 to i32
  %and142 = and i32 %conv141, 256
  %tobool143 = icmp ne i32 %and142, 0
  br i1 %tobool143, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %if.end.138
  %101 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.234, i32 0, i32 0))
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.144, %if.end.138
  %102 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any146 = getelementptr inbounds %struct.sv, %struct.sv* %102, i32 0, i32 0
  %103 = load i8*, i8** %sv_any146, align 8
  %104 = bitcast i8* %103 to %struct.xpvcv*
  %xcv_flags147 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %104, i32 0, i32 17
  %105 = load i16, i16* %xcv_flags147, align 2
  %conv148 = zext i16 %105 to i32
  %and149 = and i32 %conv148, 64
  %tobool150 = icmp ne i32 %and149, 0
  br i1 %tobool150, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %if.end.145
  %106 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %106, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.235, i32 0, i32 0))
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.151, %if.end.145
  %107 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any153 = getelementptr inbounds %struct.sv, %struct.sv* %107, i32 0, i32 0
  %108 = load i8*, i8** %sv_any153, align 8
  %109 = bitcast i8* %108 to %struct.xpvcv*
  %xcv_flags154 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %109, i32 0, i32 17
  %110 = load i16, i16* %xcv_flags154, align 2
  %conv155 = zext i16 %110 to i32
  %and156 = and i32 %conv155, 128
  %tobool157 = icmp ne i32 %and156, 0
  br i1 %tobool157, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %if.end.152
  %111 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %111, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.236, i32 0, i32 0))
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.158, %if.end.152
  %112 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any160 = getelementptr inbounds %struct.sv, %struct.sv* %112, i32 0, i32 0
  %113 = load i8*, i8** %sv_any160, align 8
  %114 = bitcast i8* %113 to %struct.xpvcv*
  %xcv_flags161 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %114, i32 0, i32 17
  %115 = load i16, i16* %xcv_flags161, align 2
  %conv162 = zext i16 %115 to i32
  %and163 = and i32 %conv162, 1024
  %tobool164 = icmp ne i32 %and163, 0
  br i1 %tobool164, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %if.end.159
  %116 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %116, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.237, i32 0, i32 0))
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.165, %if.end.159
  br label %sw.epilog

sw.bb.167:                                        ; preds = %if.end.92
  %117 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags168 = getelementptr inbounds %struct.sv, %struct.sv* %117, i32 0, i32 2
  %118 = load i32, i32* %sv_flags168, align 4
  %and169 = and i32 %118, 536870912
  %tobool170 = icmp ne i32 %and169, 0
  br i1 %tobool170, label %if.then.171, label %if.end.172

if.then.171:                                      ; preds = %sw.bb.167
  %119 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %119, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.238, i32 0, i32 0))
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.171, %sw.bb.167
  %120 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags173 = getelementptr inbounds %struct.sv, %struct.sv* %120, i32 0, i32 2
  %121 = load i32, i32* %sv_flags173, align 4
  %and174 = and i32 %121, 1073741824
  %tobool175 = icmp ne i32 %and174, 0
  br i1 %tobool175, label %if.then.176, label %if.end.177

if.then.176:                                      ; preds = %if.end.172
  %122 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %122, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.239, i32 0, i32 0))
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.176, %if.end.172
  %123 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags178 = getelementptr inbounds %struct.sv, %struct.sv* %123, i32 0, i32 2
  %124 = load i32, i32* %sv_flags178, align 4
  %and179 = and i32 %124, -2147483648
  %tobool180 = icmp ne i32 %and179, 0
  br i1 %tobool180, label %if.then.181, label %if.end.182

if.then.181:                                      ; preds = %if.end.177
  %125 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %125, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.240, i32 0, i32 0))
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.181, %if.end.177
  %126 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags183 = getelementptr inbounds %struct.sv, %struct.sv* %126, i32 0, i32 2
  %127 = load i32, i32* %sv_flags183, align 4
  %and184 = and i32 %127, 268435456
  %tobool185 = icmp ne i32 %and184, 0
  br i1 %tobool185, label %if.then.186, label %if.end.187

if.then.186:                                      ; preds = %if.end.182
  %128 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.241, i32 0, i32 0))
  br label %if.end.187

if.end.187:                                       ; preds = %if.then.186, %if.end.182
  %129 = load i32, i32* %flags, align 4
  %and188 = and i32 %129, 134217728
  %tobool189 = icmp ne i32 %and188, 0
  br i1 %tobool189, label %if.then.190, label %if.end.191

if.then.190:                                      ; preds = %if.end.187
  %130 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %130, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.242, i32 0, i32 0))
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.190, %if.end.187
  br label %sw.epilog

sw.bb.192:                                        ; preds = %if.end.92
  %131 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any193 = getelementptr inbounds %struct.sv, %struct.sv* %131, i32 0, i32 0
  %132 = load i8*, i8** %sv_any193, align 8
  %133 = bitcast i8* %132 to %struct.xpvgv*
  %xgv_flags = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %133, i32 0, i32 11
  %134 = load i8, i8* %xgv_flags, align 1
  %conv194 = zext i8 %134 to i32
  %and195 = and i32 %conv194, 1
  %tobool196 = icmp ne i32 %and195, 0
  br i1 %tobool196, label %if.then.197, label %if.end.198

if.then.197:                                      ; preds = %sw.bb.192
  %135 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %135, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.243, i32 0, i32 0))
  br label %if.end.198

if.end.198:                                       ; preds = %if.then.197, %sw.bb.192
  %136 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any199 = getelementptr inbounds %struct.sv, %struct.sv* %136, i32 0, i32 0
  %137 = load i8*, i8** %sv_any199, align 8
  %138 = bitcast i8* %137 to %struct.xpvgv*
  %xgv_flags200 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %138, i32 0, i32 11
  %139 = load i8, i8* %xgv_flags200, align 1
  %conv201 = zext i8 %139 to i32
  %and202 = and i32 %conv201, 2
  %tobool203 = icmp ne i32 %and202, 0
  br i1 %tobool203, label %if.then.204, label %if.end.205

if.then.204:                                      ; preds = %if.end.198
  %140 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %140, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.244, i32 0, i32 0))
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.204, %if.end.198
  %141 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any206 = getelementptr inbounds %struct.sv, %struct.sv* %141, i32 0, i32 0
  %142 = load i8*, i8** %sv_any206, align 8
  %143 = bitcast i8* %142 to %struct.xpvgv*
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %143, i32 0, i32 7
  %144 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %tobool207 = icmp ne %struct.gp* %144, null
  br i1 %tobool207, label %land.lhs.true.208, label %if.end.214

land.lhs.true.208:                                ; preds = %if.end.205
  %145 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any209 = getelementptr inbounds %struct.sv, %struct.sv* %145, i32 0, i32 0
  %146 = load i8*, i8** %sv_any209, align 8
  %147 = bitcast i8* %146 to %struct.xpvgv*
  %xgv_gp210 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %147, i32 0, i32 7
  %148 = load %struct.gp*, %struct.gp** %xgv_gp210, align 8
  %gp_flags = getelementptr inbounds %struct.gp, %struct.gp* %148, i32 0, i32 9
  %149 = load i32, i32* %gp_flags, align 4
  %and211 = and i32 %149, 1
  %tobool212 = icmp ne i32 %and211, 0
  br i1 %tobool212, label %if.then.213, label %if.end.214

if.then.213:                                      ; preds = %land.lhs.true.208
  %150 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %150, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.228, i32 0, i32 0))
  br label %if.end.214

if.end.214:                                       ; preds = %if.then.213, %land.lhs.true.208, %if.end.205
  %151 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any215 = getelementptr inbounds %struct.sv, %struct.sv* %151, i32 0, i32 0
  %152 = load i8*, i8** %sv_any215, align 8
  %153 = bitcast i8* %152 to %struct.xpvgv*
  %xgv_flags216 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %153, i32 0, i32 11
  %154 = load i8, i8* %xgv_flags216, align 1
  %conv217 = zext i8 %154 to i32
  %and218 = and i32 %conv217, 4
  %tobool219 = icmp ne i32 %and218, 0
  br i1 %tobool219, label %if.then.220, label %if.end.221

if.then.220:                                      ; preds = %if.end.214
  %155 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %155, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.245, i32 0, i32 0))
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.220, %if.end.214
  %156 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any222 = getelementptr inbounds %struct.sv, %struct.sv* %156, i32 0, i32 0
  %157 = load i8*, i8** %sv_any222, align 8
  %158 = bitcast i8* %157 to %struct.xpvgv*
  %xgv_flags223 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %158, i32 0, i32 11
  %159 = load i8, i8* %xgv_flags223, align 1
  %conv224 = zext i8 %159 to i32
  %and225 = and i32 %conv224, 8
  %tobool226 = icmp ne i32 %and225, 0
  br i1 %tobool226, label %if.then.227, label %if.end.228

if.then.227:                                      ; preds = %if.end.221
  %160 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %160, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.246, i32 0, i32 0))
  br label %if.end.228

if.end.228:                                       ; preds = %if.then.227, %if.end.221
  %161 = load i32, i32* %flags, align 4
  %and229 = and i32 %161, -2147483648
  %tobool230 = icmp ne i32 %and229, 0
  br i1 %tobool230, label %if.then.231, label %if.end.232

if.then.231:                                      ; preds = %if.end.228
  %162 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %162, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.247, i32 0, i32 0))
  br label %if.end.232

if.end.232:                                       ; preds = %if.then.231, %if.end.228
  %163 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any233 = getelementptr inbounds %struct.sv, %struct.sv* %163, i32 0, i32 0
  %164 = load i8*, i8** %sv_any233, align 8
  %165 = bitcast i8* %164 to %struct.xpvgv*
  %xgv_flags234 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %165, i32 0, i32 11
  %166 = load i8, i8* %xgv_flags234, align 1
  %conv235 = zext i8 %166 to i32
  %and236 = and i32 %conv235, 240
  %tobool237 = icmp ne i32 %and236, 0
  br i1 %tobool237, label %if.then.238, label %if.end.275

if.then.238:                                      ; preds = %if.end.232
  %167 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %167, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.248, i32 0, i32 0))
  %168 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any239 = getelementptr inbounds %struct.sv, %struct.sv* %168, i32 0, i32 0
  %169 = load i8*, i8** %sv_any239, align 8
  %170 = bitcast i8* %169 to %struct.xpvgv*
  %xgv_flags240 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %170, i32 0, i32 11
  %171 = load i8, i8* %xgv_flags240, align 1
  %conv241 = zext i8 %171 to i32
  %and242 = and i32 %conv241, 240
  %cmp243 = icmp eq i32 %and242, 240
  br i1 %cmp243, label %if.then.245, label %if.else

if.then.245:                                      ; preds = %if.then.238
  %172 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %172, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.249, i32 0, i32 0))
  br label %if.end.274

if.else:                                          ; preds = %if.then.238
  %173 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %173, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0))
  %174 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any246 = getelementptr inbounds %struct.sv, %struct.sv* %174, i32 0, i32 0
  %175 = load i8*, i8** %sv_any246, align 8
  %176 = bitcast i8* %175 to %struct.xpvgv*
  %xgv_flags247 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %176, i32 0, i32 11
  %177 = load i8, i8* %xgv_flags247, align 1
  %conv248 = zext i8 %177 to i32
  %and249 = and i32 %conv248, 16
  %tobool250 = icmp ne i32 %and249, 0
  br i1 %tobool250, label %if.then.251, label %if.end.252

if.then.251:                                      ; preds = %if.else
  %178 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %178, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.250, i32 0, i32 0))
  br label %if.end.252

if.end.252:                                       ; preds = %if.then.251, %if.else
  %179 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any253 = getelementptr inbounds %struct.sv, %struct.sv* %179, i32 0, i32 0
  %180 = load i8*, i8** %sv_any253, align 8
  %181 = bitcast i8* %180 to %struct.xpvgv*
  %xgv_flags254 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %181, i32 0, i32 11
  %182 = load i8, i8* %xgv_flags254, align 1
  %conv255 = zext i8 %182 to i32
  %and256 = and i32 %conv255, 32
  %tobool257 = icmp ne i32 %and256, 0
  br i1 %tobool257, label %if.then.258, label %if.end.259

if.then.258:                                      ; preds = %if.end.252
  %183 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %183, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.251, i32 0, i32 0))
  br label %if.end.259

if.end.259:                                       ; preds = %if.then.258, %if.end.252
  %184 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any260 = getelementptr inbounds %struct.sv, %struct.sv* %184, i32 0, i32 0
  %185 = load i8*, i8** %sv_any260, align 8
  %186 = bitcast i8* %185 to %struct.xpvgv*
  %xgv_flags261 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %186, i32 0, i32 11
  %187 = load i8, i8* %xgv_flags261, align 1
  %conv262 = zext i8 %187 to i32
  %and263 = and i32 %conv262, 64
  %tobool264 = icmp ne i32 %and263, 0
  br i1 %tobool264, label %if.then.265, label %if.end.266

if.then.265:                                      ; preds = %if.end.259
  %188 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %188, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.252, i32 0, i32 0))
  br label %if.end.266

if.end.266:                                       ; preds = %if.then.265, %if.end.259
  %189 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any267 = getelementptr inbounds %struct.sv, %struct.sv* %189, i32 0, i32 0
  %190 = load i8*, i8** %sv_any267, align 8
  %191 = bitcast i8* %190 to %struct.xpvgv*
  %xgv_flags268 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %191, i32 0, i32 11
  %192 = load i8, i8* %xgv_flags268, align 1
  %conv269 = zext i8 %192 to i32
  %and270 = and i32 %conv269, 128
  %tobool271 = icmp ne i32 %and270, 0
  br i1 %tobool271, label %if.then.272, label %if.end.273

if.then.272:                                      ; preds = %if.end.266
  %193 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %193, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.253, i32 0, i32 0))
  br label %if.end.273

if.end.273:                                       ; preds = %if.then.272, %if.end.266
  %194 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %194, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.254, i32 0, i32 0))
  br label %if.end.274

if.end.274:                                       ; preds = %if.end.273, %if.then.245
  br label %if.end.275

if.end.275:                                       ; preds = %if.end.274, %if.end.232
  br label %sw.default

sw.default:                                       ; preds = %if.end.92, %if.end.275
  %195 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags276 = getelementptr inbounds %struct.sv, %struct.sv* %195, i32 0, i32 2
  %196 = load i32, i32* %sv_flags276, align 4
  %and277 = and i32 %196, 1073741824
  %tobool278 = icmp ne i32 %and277, 0
  br i1 %tobool278, label %if.then.279, label %if.end.280

if.then.279:                                      ; preds = %sw.default
  %197 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %197, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.255, i32 0, i32 0))
  br label %if.end.280

if.end.280:                                       ; preds = %if.then.279, %sw.default
  %198 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags281 = getelementptr inbounds %struct.sv, %struct.sv* %198, i32 0, i32 2
  %199 = load i32, i32* %sv_flags281, align 4
  %and282 = and i32 %199, -2147483648
  %tobool283 = icmp ne i32 %and282, 0
  br i1 %tobool283, label %if.then.284, label %if.end.285

if.then.284:                                      ; preds = %if.end.280
  %200 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %200, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.256, i32 0, i32 0))
  br label %if.end.285

if.end.285:                                       ; preds = %if.then.284, %if.end.280
  br label %sw.epilog

sw.bb.286:                                        ; preds = %if.end.92
  %201 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags287 = getelementptr inbounds %struct.sv, %struct.sv* %201, i32 0, i32 2
  %202 = load i32, i32* %sv_flags287, align 4
  %and288 = and i32 %202, 1073741824
  %tobool289 = icmp ne i32 %and288, 0
  br i1 %tobool289, label %if.then.290, label %if.end.291

if.then.290:                                      ; preds = %sw.bb.286
  %203 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %203, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.257, i32 0, i32 0))
  br label %if.end.291

if.end.291:                                       ; preds = %if.then.290, %sw.bb.286
  %204 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags292 = getelementptr inbounds %struct.sv, %struct.sv* %204, i32 0, i32 2
  %205 = load i32, i32* %sv_flags292, align 4
  %and293 = and i32 %205, -2147483648
  %tobool294 = icmp ne i32 %and293, 0
  br i1 %tobool294, label %if.then.295, label %if.end.296

if.then.295:                                      ; preds = %if.end.291
  %206 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %206, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.258, i32 0, i32 0))
  br label %if.end.296

if.end.296:                                       ; preds = %if.then.295, %if.end.291
  br label %sw.epilog

sw.bb.297:                                        ; preds = %if.end.92
  %207 = load i32, i32* %flags, align 4
  %and298 = and i32 %207, 1073741824
  %tobool299 = icmp ne i32 %and298, 0
  br i1 %tobool299, label %if.then.300, label %if.end.301

if.then.300:                                      ; preds = %sw.bb.297
  %208 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %208, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.259, i32 0, i32 0))
  br label %if.end.301

if.end.301:                                       ; preds = %if.then.300, %sw.bb.297
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.301, %if.end.296, %if.end.285, %if.end.191, %if.end.166
  %209 = load i32, i32* %type, align 4
  %cmp302 = icmp ne i32 %209, 11
  br i1 %cmp302, label %land.lhs.true.304, label %if.end.309

land.lhs.true.304:                                ; preds = %sw.epilog
  %210 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags305 = getelementptr inbounds %struct.sv, %struct.sv* %210, i32 0, i32 2
  %211 = load i32, i32* %sv_flags305, align 4
  %and306 = and i32 %211, 536870912
  %tobool307 = icmp ne i32 %and306, 0
  br i1 %tobool307, label %if.then.308, label %if.end.309

if.then.308:                                      ; preds = %land.lhs.true.304
  %212 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %212, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.260, i32 0, i32 0))
  br label %if.end.309

if.end.309:                                       ; preds = %if.then.308, %land.lhs.true.304, %sw.epilog
  %213 = load %struct.sv*, %struct.sv** %d, align 8
  %sv_any310 = getelementptr inbounds %struct.sv, %struct.sv* %213, i32 0, i32 0
  %214 = load i8*, i8** %sv_any310, align 8
  %215 = bitcast i8* %214 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %215, i32 0, i32 0
  %216 = load i8*, i8** %xpv_pv, align 8
  %217 = load %struct.sv*, %struct.sv** %d, align 8
  %sv_any311 = getelementptr inbounds %struct.sv, %struct.sv* %217, i32 0, i32 0
  %218 = load i8*, i8** %sv_any311, align 8
  %219 = bitcast i8* %218 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %219, i32 0, i32 1
  %220 = load i64, i64* %xpv_cur, align 8
  %add.ptr = getelementptr inbounds i8, i8* %216, i64 %220
  %add.ptr312 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %221 = load i8, i8* %add.ptr312, align 1
  %conv313 = sext i8 %221 to i32
  %cmp314 = icmp eq i32 %conv313, 44
  br i1 %cmp314, label %if.then.316, label %if.end.321

if.then.316:                                      ; preds = %if.end.309
  %222 = load %struct.sv*, %struct.sv** %d, align 8
  %sv_any317 = getelementptr inbounds %struct.sv, %struct.sv* %222, i32 0, i32 0
  %223 = load i8*, i8** %sv_any317, align 8
  %224 = bitcast i8* %223 to %struct.xpv*
  %xpv_cur318 = getelementptr inbounds %struct.xpv, %struct.xpv* %224, i32 0, i32 1
  %225 = load i64, i64* %xpv_cur318, align 8
  %dec = add i64 %225, -1
  store i64 %dec, i64* %xpv_cur318, align 8
  %226 = load %struct.sv*, %struct.sv** %d, align 8
  %sv_any319 = getelementptr inbounds %struct.sv, %struct.sv* %226, i32 0, i32 0
  %227 = load i8*, i8** %sv_any319, align 8
  %228 = bitcast i8* %227 to %struct.xpv*
  %xpv_pv320 = getelementptr inbounds %struct.xpv, %struct.xpv* %228, i32 0, i32 0
  %229 = load i8*, i8** %xpv_pv320, align 8
  %arrayidx = getelementptr inbounds i8, i8* %229, i64 %dec
  store i8 0, i8* %arrayidx, align 1
  br label %if.end.321

if.end.321:                                       ; preds = %if.then.316, %if.end.309
  %230 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %230, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i32 0, i32 0))
  %231 = load %struct.sv*, %struct.sv** %d, align 8
  %sv_any322 = getelementptr inbounds %struct.sv, %struct.sv* %231, i32 0, i32 0
  %232 = load i8*, i8** %sv_any322, align 8
  %233 = bitcast i8* %232 to %struct.xpv*
  %xpv_pv323 = getelementptr inbounds %struct.xpv, %struct.xpv* %233, i32 0, i32 0
  %234 = load i8*, i8** %xpv_pv323, align 8
  store i8* %234, i8** %s, align 8
  %235 = load i32, i32* %level.addr, align 4
  %236 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %235, %struct._PerlIO** %236, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.261, i32 0, i32 0))
  %237 = load i32, i32* %type, align 4
  switch i32 %237, label %sw.default.356 [
    i32 0, label %sw.bb.324
    i32 1, label %sw.bb.326
    i32 2, label %sw.bb.328
    i32 3, label %sw.bb.330
    i32 4, label %sw.bb.332
    i32 5, label %sw.bb.334
    i32 6, label %sw.bb.336
    i32 8, label %sw.bb.338
    i32 7, label %sw.bb.340
    i32 9, label %sw.bb.342
    i32 10, label %sw.bb.344
    i32 11, label %sw.bb.346
    i32 12, label %sw.bb.348
    i32 13, label %sw.bb.350
    i32 14, label %sw.bb.352
    i32 15, label %sw.bb.354
  ]

sw.bb.324:                                        ; preds = %if.end.321
  %238 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %239 = load i8*, i8** %s, align 8
  %call325 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %238, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.262, i32 0, i32 0), i8* %239)
  %240 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_free(%struct.sv* %240)
  br label %return

sw.bb.326:                                        ; preds = %if.end.321
  %241 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %242 = load i8*, i8** %s, align 8
  %call327 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %241, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.263, i32 0, i32 0), i8* %242)
  br label %sw.epilog.359

sw.bb.328:                                        ; preds = %if.end.321
  %243 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %244 = load i8*, i8** %s, align 8
  %call329 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %243, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.264, i32 0, i32 0), i8* %244)
  br label %sw.epilog.359

sw.bb.330:                                        ; preds = %if.end.321
  %245 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %246 = load i8*, i8** %s, align 8
  %call331 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %245, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.265, i32 0, i32 0), i8* %246)
  br label %sw.epilog.359

sw.bb.332:                                        ; preds = %if.end.321
  %247 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %248 = load i8*, i8** %s, align 8
  %call333 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %247, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.266, i32 0, i32 0), i8* %248)
  br label %sw.epilog.359

sw.bb.334:                                        ; preds = %if.end.321
  %249 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %250 = load i8*, i8** %s, align 8
  %call335 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %249, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.267, i32 0, i32 0), i8* %250)
  br label %sw.epilog.359

sw.bb.336:                                        ; preds = %if.end.321
  %251 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %252 = load i8*, i8** %s, align 8
  %call337 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %251, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.268, i32 0, i32 0), i8* %252)
  br label %sw.epilog.359

sw.bb.338:                                        ; preds = %if.end.321
  %253 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %254 = load i8*, i8** %s, align 8
  %call339 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %253, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.269, i32 0, i32 0), i8* %254)
  br label %sw.epilog.359

sw.bb.340:                                        ; preds = %if.end.321
  %255 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %256 = load i8*, i8** %s, align 8
  %call341 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %255, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.270, i32 0, i32 0), i8* %256)
  br label %sw.epilog.359

sw.bb.342:                                        ; preds = %if.end.321
  %257 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %258 = load i8*, i8** %s, align 8
  %call343 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %257, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.271, i32 0, i32 0), i8* %258)
  br label %sw.epilog.359

sw.bb.344:                                        ; preds = %if.end.321
  %259 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %260 = load i8*, i8** %s, align 8
  %call345 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %259, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.272, i32 0, i32 0), i8* %260)
  br label %sw.epilog.359

sw.bb.346:                                        ; preds = %if.end.321
  %261 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %262 = load i8*, i8** %s, align 8
  %call347 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %261, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.273, i32 0, i32 0), i8* %262)
  br label %sw.epilog.359

sw.bb.348:                                        ; preds = %if.end.321
  %263 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %264 = load i8*, i8** %s, align 8
  %call349 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %263, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.274, i32 0, i32 0), i8* %264)
  br label %sw.epilog.359

sw.bb.350:                                        ; preds = %if.end.321
  %265 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %266 = load i8*, i8** %s, align 8
  %call351 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %265, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.275, i32 0, i32 0), i8* %266)
  br label %sw.epilog.359

sw.bb.352:                                        ; preds = %if.end.321
  %267 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %268 = load i8*, i8** %s, align 8
  %call353 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %267, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.276, i32 0, i32 0), i8* %268)
  br label %sw.epilog.359

sw.bb.354:                                        ; preds = %if.end.321
  %269 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %270 = load i8*, i8** %s, align 8
  %call355 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %269, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.277, i32 0, i32 0), i8* %270)
  br label %sw.epilog.359

sw.default.356:                                   ; preds = %if.end.321
  %271 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %272 = load i32, i32* %type, align 4
  %conv357 = zext i32 %272 to i64
  %273 = load i8*, i8** %s, align 8
  %call358 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %271, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.278, i32 0, i32 0), i64 %conv357, i8* %273)
  %274 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_free(%struct.sv* %274)
  br label %return

sw.epilog.359:                                    ; preds = %sw.bb.354, %sw.bb.352, %sw.bb.350, %sw.bb.348, %sw.bb.346, %sw.bb.344, %sw.bb.342, %sw.bb.340, %sw.bb.338, %sw.bb.336, %sw.bb.334, %sw.bb.332, %sw.bb.330, %sw.bb.328, %sw.bb.326
  %275 = load i32, i32* %type, align 4
  %cmp360 = icmp uge i32 %275, 5
  br i1 %cmp360, label %if.then.364, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog.359
  %276 = load i32, i32* %type, align 4
  %cmp362 = icmp eq i32 %276, 1
  br i1 %cmp362, label %if.then.364, label %if.end.380

if.then.364:                                      ; preds = %lor.lhs.false, %sw.epilog.359
  %277 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags365 = getelementptr inbounds %struct.sv, %struct.sv* %277, i32 0, i32 2
  %278 = load i32, i32* %sv_flags365, align 4
  %and366 = and i32 %278, -2147483648
  %tobool367 = icmp ne i32 %and366, 0
  br i1 %tobool367, label %if.then.368, label %if.else.370

if.then.368:                                      ; preds = %if.then.364
  %279 = load i32, i32* %level.addr, align 4
  %280 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %281 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any369 = getelementptr inbounds %struct.sv, %struct.sv* %281, i32 0, i32 0
  %282 = load i8*, i8** %sv_any369, align 8
  %283 = bitcast i8* %282 to %struct.xpvuv*
  %xuv_uv = getelementptr inbounds %struct.xpvuv, %struct.xpvuv* %283, i32 0, i32 3
  %284 = load i64, i64* %xuv_uv, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %279, %struct._PerlIO** %280, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.279, i32 0, i32 0), i64 %284)
  br label %if.end.372

if.else.370:                                      ; preds = %if.then.364
  %285 = load i32, i32* %level.addr, align 4
  %286 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %287 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any371 = getelementptr inbounds %struct.sv, %struct.sv* %287, i32 0, i32 0
  %288 = load i8*, i8** %sv_any371, align 8
  %289 = bitcast i8* %288 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %289, i32 0, i32 3
  %290 = load i64, i64* %xiv_iv, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %285, %struct._PerlIO** %286, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.280, i32 0, i32 0), i64 %290)
  br label %if.end.372

if.end.372:                                       ; preds = %if.else.370, %if.then.368
  %291 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags373 = getelementptr inbounds %struct.sv, %struct.sv* %291, i32 0, i32 2
  %292 = load i32, i32* %sv_flags373, align 4
  %and374 = and i32 %292, 2097152
  %tobool375 = icmp ne i32 %and374, 0
  br i1 %tobool375, label %if.then.376, label %if.end.378

if.then.376:                                      ; preds = %if.end.372
  %293 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %call377 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %293, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.281, i32 0, i32 0))
  br label %if.end.378

if.end.378:                                       ; preds = %if.then.376, %if.end.372
  %294 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %call379 = call i32 @PerlIO_putc(%struct._PerlIO** %294, i32 10)
  br label %if.end.380

if.end.380:                                       ; preds = %if.end.378, %lor.lhs.false
  %295 = load i32, i32* %type, align 4
  %cmp381 = icmp uge i32 %295, 6
  br i1 %cmp381, label %if.then.386, label %lor.lhs.false.383

lor.lhs.false.383:                                ; preds = %if.end.380
  %296 = load i32, i32* %type, align 4
  %cmp384 = icmp eq i32 %296, 2
  br i1 %cmp384, label %if.then.386, label %if.end.388

if.then.386:                                      ; preds = %lor.lhs.false.383, %if.end.380
  %297 = load i32, i32* %level.addr, align 4
  %298 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %299 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any387 = getelementptr inbounds %struct.sv, %struct.sv* %299, i32 0, i32 0
  %300 = load i8*, i8** %sv_any387, align 8
  %301 = bitcast i8* %300 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %301, i32 0, i32 4
  %302 = load double, double* %xnv_nv, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %297, %struct._PerlIO** %298, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.282, i32 0, i32 0), i32 15, double %302)
  br label %if.end.388

if.end.388:                                       ; preds = %if.then.386, %lor.lhs.false.383
  %303 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags389 = getelementptr inbounds %struct.sv, %struct.sv* %303, i32 0, i32 2
  %304 = load i32, i32* %sv_flags389, align 4
  %and390 = and i32 %304, 524288
  %tobool391 = icmp ne i32 %and390, 0
  br i1 %tobool391, label %if.then.392, label %if.end.401

if.then.392:                                      ; preds = %if.end.388
  %305 = load i32, i32* %level.addr, align 4
  %306 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %307 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any393 = getelementptr inbounds %struct.sv, %struct.sv* %307, i32 0, i32 0
  %308 = load i8*, i8** %sv_any393, align 8
  %309 = bitcast i8* %308 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %309, i32 0, i32 0
  %310 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  %311 = ptrtoint %struct.sv* %310 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %305, %struct._PerlIO** %306, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.283, i32 0, i32 0), i64 %311)
  %312 = load i32, i32* %nest.addr, align 4
  %313 = load i32, i32* %maxnest.addr, align 4
  %cmp394 = icmp slt i32 %312, %313
  br i1 %cmp394, label %if.then.396, label %if.end.400

if.then.396:                                      ; preds = %if.then.392
  %314 = load i32, i32* %level.addr, align 4
  %add = add nsw i32 %314, 1
  %315 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %316 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any397 = getelementptr inbounds %struct.sv, %struct.sv* %316, i32 0, i32 0
  %317 = load i8*, i8** %sv_any397, align 8
  %318 = bitcast i8* %317 to %struct.xrv*
  %xrv_rv398 = getelementptr inbounds %struct.xrv, %struct.xrv* %318, i32 0, i32 0
  %319 = load %struct.sv*, %struct.sv** %xrv_rv398, align 8
  %320 = load i32, i32* %nest.addr, align 4
  %add399 = add nsw i32 %320, 1
  %321 = load i32, i32* %maxnest.addr, align 4
  %322 = load i8, i8* %dumpops.addr, align 1
  %323 = load i64, i64* %pvlim.addr, align 8
  call void @Perl_do_sv_dump(i32 %add, %struct._PerlIO** %315, %struct.sv* %319, i32 %add399, i32 %321, i8 signext %322, i64 %323)
  br label %if.end.400

if.end.400:                                       ; preds = %if.then.396, %if.then.392
  br label %if.end.401

if.end.401:                                       ; preds = %if.end.400, %if.end.388
  %324 = load i32, i32* %type, align 4
  %cmp402 = icmp ult i32 %324, 4
  br i1 %cmp402, label %if.then.404, label %if.end.405

if.then.404:                                      ; preds = %if.end.401
  %325 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_free(%struct.sv* %325)
  br label %return

if.end.405:                                       ; preds = %if.end.401
  %326 = load i32, i32* %type, align 4
  %cmp406 = icmp ule i32 %326, 9
  br i1 %cmp406, label %if.then.408, label %if.end.452

if.then.408:                                      ; preds = %if.end.405
  %327 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any409 = getelementptr inbounds %struct.sv, %struct.sv* %327, i32 0, i32 0
  %328 = load i8*, i8** %sv_any409, align 8
  %329 = bitcast i8* %328 to %struct.xpv*
  %xpv_pv410 = getelementptr inbounds %struct.xpv, %struct.xpv* %329, i32 0, i32 0
  %330 = load i8*, i8** %xpv_pv410, align 8
  %tobool411 = icmp ne i8* %330, null
  br i1 %tobool411, label %if.then.412, label %if.else.450

if.then.412:                                      ; preds = %if.then.408
  %331 = load i32, i32* %level.addr, align 4
  %332 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %333 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any413 = getelementptr inbounds %struct.sv, %struct.sv* %333, i32 0, i32 0
  %334 = load i8*, i8** %sv_any413, align 8
  %335 = bitcast i8* %334 to %struct.xpv*
  %xpv_pv414 = getelementptr inbounds %struct.xpv, %struct.xpv* %335, i32 0, i32 0
  %336 = load i8*, i8** %xpv_pv414, align 8
  %337 = ptrtoint i8* %336 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %331, %struct._PerlIO** %332, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.284, i32 0, i32 0), i64 %337)
  %338 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags415 = getelementptr inbounds %struct.sv, %struct.sv* %338, i32 0, i32 2
  %339 = load i32, i32* %sv_flags415, align 4
  %and416 = and i32 %339, 2097152
  %tobool417 = icmp ne i32 %and416, 0
  br i1 %tobool417, label %if.then.418, label %if.end.428

if.then.418:                                      ; preds = %if.then.412
  %340 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %341 = load %struct.sv*, %struct.sv** %d, align 8
  %342 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any419 = getelementptr inbounds %struct.sv, %struct.sv* %342, i32 0, i32 0
  %343 = load i8*, i8** %sv_any419, align 8
  %344 = bitcast i8* %343 to %struct.xpv*
  %xpv_pv420 = getelementptr inbounds %struct.xpv, %struct.xpv* %344, i32 0, i32 0
  %345 = load i8*, i8** %xpv_pv420, align 8
  %346 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any421 = getelementptr inbounds %struct.sv, %struct.sv* %346, i32 0, i32 0
  %347 = load i8*, i8** %sv_any421, align 8
  %348 = bitcast i8* %347 to %struct.xpviv*
  %xiv_iv422 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %348, i32 0, i32 3
  %349 = load i64, i64* %xiv_iv422, align 8
  %idx.neg = sub i64 0, %349
  %add.ptr423 = getelementptr inbounds i8, i8* %345, i64 %idx.neg
  %350 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any424 = getelementptr inbounds %struct.sv, %struct.sv* %350, i32 0, i32 0
  %351 = load i8*, i8** %sv_any424, align 8
  %352 = bitcast i8* %351 to %struct.xpviv*
  %xiv_iv425 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %352, i32 0, i32 3
  %353 = load i64, i64* %xiv_iv425, align 8
  %354 = load i64, i64* %pvlim.addr, align 8
  %call426 = call i8* @Perl_pv_display(%struct.sv* %341, i8* %add.ptr423, i64 %353, i64 0, i64 %354)
  %call427 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %340, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.285, i32 0, i32 0), i8* %call426)
  br label %if.end.428

if.end.428:                                       ; preds = %if.then.418, %if.then.412
  %355 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %356 = load %struct.sv*, %struct.sv** %d, align 8
  %357 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any429 = getelementptr inbounds %struct.sv, %struct.sv* %357, i32 0, i32 0
  %358 = load i8*, i8** %sv_any429, align 8
  %359 = bitcast i8* %358 to %struct.xpv*
  %xpv_pv430 = getelementptr inbounds %struct.xpv, %struct.xpv* %359, i32 0, i32 0
  %360 = load i8*, i8** %xpv_pv430, align 8
  %361 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any431 = getelementptr inbounds %struct.sv, %struct.sv* %361, i32 0, i32 0
  %362 = load i8*, i8** %sv_any431, align 8
  %363 = bitcast i8* %362 to %struct.xpv*
  %xpv_cur432 = getelementptr inbounds %struct.xpv, %struct.xpv* %363, i32 0, i32 1
  %364 = load i64, i64* %xpv_cur432, align 8
  %365 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any433 = getelementptr inbounds %struct.sv, %struct.sv* %365, i32 0, i32 0
  %366 = load i8*, i8** %sv_any433, align 8
  %367 = bitcast i8* %366 to %struct.xpv*
  %xpv_len = getelementptr inbounds %struct.xpv, %struct.xpv* %367, i32 0, i32 2
  %368 = load i64, i64* %xpv_len, align 8
  %369 = load i64, i64* %pvlim.addr, align 8
  %call434 = call i8* @Perl_pv_display(%struct.sv* %356, i8* %360, i64 %364, i64 %368, i64 %369)
  %call435 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %355, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.286, i32 0, i32 0), i8* %call434)
  %370 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags436 = getelementptr inbounds %struct.sv, %struct.sv* %370, i32 0, i32 2
  %371 = load i32, i32* %sv_flags436, align 4
  %and437 = and i32 %371, 536870912
  %tobool438 = icmp ne i32 %and437, 0
  br i1 %tobool438, label %if.then.439, label %if.end.444

if.then.439:                                      ; preds = %if.end.428
  %372 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %373 = load %struct.sv*, %struct.sv** %d, align 8
  %374 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %375 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call440 = call i64 @Perl_sv_len_utf8(%struct.sv* %375)
  %mul441 = mul i64 8, %call440
  %call442 = call i8* @Perl_sv_uni_display(%struct.sv* %373, %struct.sv* %374, i64 %mul441, i64 3)
  %call443 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %372, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.50, i32 0, i32 0), i8* %call442)
  br label %if.end.444

if.end.444:                                       ; preds = %if.then.439, %if.end.428
  %376 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %call445 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %376, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.287, i32 0, i32 0))
  %377 = load i32, i32* %level.addr, align 4
  %378 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %379 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any446 = getelementptr inbounds %struct.sv, %struct.sv* %379, i32 0, i32 0
  %380 = load i8*, i8** %sv_any446, align 8
  %381 = bitcast i8* %380 to %struct.xpv*
  %xpv_cur447 = getelementptr inbounds %struct.xpv, %struct.xpv* %381, i32 0, i32 1
  %382 = load i64, i64* %xpv_cur447, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %377, %struct._PerlIO** %378, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.288, i32 0, i32 0), i64 %382)
  %383 = load i32, i32* %level.addr, align 4
  %384 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %385 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any448 = getelementptr inbounds %struct.sv, %struct.sv* %385, i32 0, i32 0
  %386 = load i8*, i8** %sv_any448, align 8
  %387 = bitcast i8* %386 to %struct.xpv*
  %xpv_len449 = getelementptr inbounds %struct.xpv, %struct.xpv* %387, i32 0, i32 2
  %388 = load i64, i64* %xpv_len449, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %383, %struct._PerlIO** %384, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.289, i32 0, i32 0), i64 %388)
  br label %if.end.451

if.else.450:                                      ; preds = %if.then.408
  %389 = load i32, i32* %level.addr, align 4
  %390 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %389, %struct._PerlIO** %390, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.290, i32 0, i32 0))
  br label %if.end.451

if.end.451:                                       ; preds = %if.else.450, %if.end.444
  br label %if.end.452

if.end.452:                                       ; preds = %if.end.451, %if.end.405
  %391 = load i32, i32* %type, align 4
  %cmp453 = icmp uge i32 %391, 7
  br i1 %cmp453, label %if.then.455, label %if.end.468

if.then.455:                                      ; preds = %if.end.452
  %392 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any456 = getelementptr inbounds %struct.sv, %struct.sv* %392, i32 0, i32 0
  %393 = load i8*, i8** %sv_any456, align 8
  %394 = bitcast i8* %393 to %struct.xpvmg*
  %xmg_magic = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %394, i32 0, i32 5
  %395 = load %struct.magic*, %struct.magic** %xmg_magic, align 8
  %tobool457 = icmp ne %struct.magic* %395, null
  br i1 %tobool457, label %if.then.458, label %if.end.461

if.then.458:                                      ; preds = %if.then.455
  %396 = load i32, i32* %level.addr, align 4
  %397 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %398 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any459 = getelementptr inbounds %struct.sv, %struct.sv* %398, i32 0, i32 0
  %399 = load i8*, i8** %sv_any459, align 8
  %400 = bitcast i8* %399 to %struct.xpvmg*
  %xmg_magic460 = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %400, i32 0, i32 5
  %401 = load %struct.magic*, %struct.magic** %xmg_magic460, align 8
  %402 = load i32, i32* %nest.addr, align 4
  %403 = load i32, i32* %maxnest.addr, align 4
  %404 = load i8, i8* %dumpops.addr, align 1
  %405 = load i64, i64* %pvlim.addr, align 8
  call void @Perl_do_magic_dump(i32 %396, %struct._PerlIO** %397, %struct.magic* %401, i32 %402, i32 %403, i8 signext %404, i64 %405)
  br label %if.end.461

if.end.461:                                       ; preds = %if.then.458, %if.then.455
  %406 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any462 = getelementptr inbounds %struct.sv, %struct.sv* %406, i32 0, i32 0
  %407 = load i8*, i8** %sv_any462, align 8
  %408 = bitcast i8* %407 to %struct.xpvmg*
  %xmg_stash = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %408, i32 0, i32 6
  %409 = load %struct.hv*, %struct.hv** %xmg_stash, align 8
  %tobool463 = icmp ne %struct.hv* %409, null
  br i1 %tobool463, label %if.then.464, label %if.end.467

if.then.464:                                      ; preds = %if.end.461
  %410 = load i32, i32* %level.addr, align 4
  %411 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %412 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any465 = getelementptr inbounds %struct.sv, %struct.sv* %412, i32 0, i32 0
  %413 = load i8*, i8** %sv_any465, align 8
  %414 = bitcast i8* %413 to %struct.xpvmg*
  %xmg_stash466 = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %414, i32 0, i32 6
  %415 = load %struct.hv*, %struct.hv** %xmg_stash466, align 8
  call void @Perl_do_hv_dump(i32 %410, %struct._PerlIO** %411, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.291, i32 0, i32 0), %struct.hv* %415)
  br label %if.end.467

if.end.467:                                       ; preds = %if.then.464, %if.end.461
  br label %if.end.468

if.end.468:                                       ; preds = %if.end.467, %if.end.452
  %416 = load i32, i32* %type, align 4
  switch i32 %416, label %sw.epilog.973 [
    i32 9, label %sw.bb.469
    i32 10, label %sw.bb.492
    i32 11, label %sw.bb.554
    i32 12, label %sw.bb.747
    i32 14, label %sw.bb.764
    i32 13, label %sw.bb.871
    i32 15, label %sw.bb.915
  ]

sw.bb.469:                                        ; preds = %if.end.468
  %417 = load i32, i32* %level.addr, align 4
  %418 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %419 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any470 = getelementptr inbounds %struct.sv, %struct.sv* %419, i32 0, i32 0
  %420 = load i8*, i8** %sv_any470, align 8
  %421 = bitcast i8* %420 to %struct.xpvlv*
  %xlv_type = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %421, i32 0, i32 10
  %422 = load i8, i8* %xlv_type, align 1
  %conv471 = sext i8 %422 to i32
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %417, %struct._PerlIO** %418, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.292, i32 0, i32 0), i32 %conv471)
  %423 = load i32, i32* %level.addr, align 4
  %424 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %425 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any472 = getelementptr inbounds %struct.sv, %struct.sv* %425, i32 0, i32 0
  %426 = load i8*, i8** %sv_any472, align 8
  %427 = bitcast i8* %426 to %struct.xpvlv*
  %xlv_targoff = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %427, i32 0, i32 7
  %428 = load i64, i64* %xlv_targoff, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %423, %struct._PerlIO** %424, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.293, i32 0, i32 0), i64 %428)
  %429 = load i32, i32* %level.addr, align 4
  %430 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %431 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any473 = getelementptr inbounds %struct.sv, %struct.sv* %431, i32 0, i32 0
  %432 = load i8*, i8** %sv_any473, align 8
  %433 = bitcast i8* %432 to %struct.xpvlv*
  %xlv_targlen = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %433, i32 0, i32 8
  %434 = load i64, i64* %xlv_targlen, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %429, %struct._PerlIO** %430, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.294, i32 0, i32 0), i64 %434)
  %435 = load i32, i32* %level.addr, align 4
  %436 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %437 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any474 = getelementptr inbounds %struct.sv, %struct.sv* %437, i32 0, i32 0
  %438 = load i8*, i8** %sv_any474, align 8
  %439 = bitcast i8* %438 to %struct.xpvlv*
  %xlv_targ = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %439, i32 0, i32 9
  %440 = load %struct.sv*, %struct.sv** %xlv_targ, align 8
  %441 = ptrtoint %struct.sv* %440 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %435, %struct._PerlIO** %436, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.295, i32 0, i32 0), i64 %441)
  %442 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any475 = getelementptr inbounds %struct.sv, %struct.sv* %442, i32 0, i32 0
  %443 = load i8*, i8** %sv_any475, align 8
  %444 = bitcast i8* %443 to %struct.xpvlv*
  %xlv_type476 = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %444, i32 0, i32 10
  %445 = load i8, i8* %xlv_type476, align 1
  %conv477 = sext i8 %445 to i32
  %cmp478 = icmp ne i32 %conv477, 116
  br i1 %cmp478, label %land.lhs.true.480, label %if.end.491

land.lhs.true.480:                                ; preds = %sw.bb.469
  %446 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any481 = getelementptr inbounds %struct.sv, %struct.sv* %446, i32 0, i32 0
  %447 = load i8*, i8** %sv_any481, align 8
  %448 = bitcast i8* %447 to %struct.xpvlv*
  %xlv_type482 = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %448, i32 0, i32 10
  %449 = load i8, i8* %xlv_type482, align 1
  %conv483 = sext i8 %449 to i32
  %cmp484 = icmp ne i32 %conv483, 84
  br i1 %cmp484, label %if.then.486, label %if.end.491

if.then.486:                                      ; preds = %land.lhs.true.480
  %450 = load i32, i32* %level.addr, align 4
  %add487 = add nsw i32 %450, 1
  %451 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %452 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any488 = getelementptr inbounds %struct.sv, %struct.sv* %452, i32 0, i32 0
  %453 = load i8*, i8** %sv_any488, align 8
  %454 = bitcast i8* %453 to %struct.xpvlv*
  %xlv_targ489 = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %454, i32 0, i32 9
  %455 = load %struct.sv*, %struct.sv** %xlv_targ489, align 8
  %456 = load i32, i32* %nest.addr, align 4
  %add490 = add nsw i32 %456, 1
  %457 = load i32, i32* %maxnest.addr, align 4
  %458 = load i8, i8* %dumpops.addr, align 1
  %459 = load i64, i64* %pvlim.addr, align 8
  call void @Perl_do_sv_dump(i32 %add487, %struct._PerlIO** %451, %struct.sv* %455, i32 %add490, i32 %457, i8 signext %458, i64 %459)
  br label %if.end.491

if.end.491:                                       ; preds = %if.then.486, %land.lhs.true.480, %sw.bb.469
  br label %sw.epilog.973

sw.bb.492:                                        ; preds = %if.end.468
  %460 = load i32, i32* %level.addr, align 4
  %461 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %462 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any493 = getelementptr inbounds %struct.sv, %struct.sv* %462, i32 0, i32 0
  %463 = load i8*, i8** %sv_any493, align 8
  %464 = bitcast i8* %463 to %struct.xpvav*
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %464, i32 0, i32 0
  %465 = load i8*, i8** %xav_array, align 8
  %466 = bitcast i8* %465 to %struct.sv**
  %467 = ptrtoint %struct.sv** %466 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %460, %struct._PerlIO** %461, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.296, i32 0, i32 0), i64 %467)
  %468 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any494 = getelementptr inbounds %struct.sv, %struct.sv* %468, i32 0, i32 0
  %469 = load i8*, i8** %sv_any494, align 8
  %470 = bitcast i8* %469 to %struct.xpvav*
  %xav_array495 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %470, i32 0, i32 0
  %471 = load i8*, i8** %xav_array495, align 8
  %472 = bitcast i8* %471 to %struct.sv**
  %473 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any496 = getelementptr inbounds %struct.sv, %struct.sv* %473, i32 0, i32 0
  %474 = load i8*, i8** %sv_any496, align 8
  %475 = bitcast i8* %474 to %struct.xpvav*
  %xav_alloc = getelementptr inbounds %struct.xpvav, %struct.xpvav* %475, i32 0, i32 7
  %476 = load %struct.sv**, %struct.sv*** %xav_alloc, align 8
  %cmp497 = icmp ne %struct.sv** %472, %476
  br i1 %cmp497, label %if.then.499, label %if.else.507

if.then.499:                                      ; preds = %sw.bb.492
  %477 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %478 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any500 = getelementptr inbounds %struct.sv, %struct.sv* %478, i32 0, i32 0
  %479 = load i8*, i8** %sv_any500, align 8
  %480 = bitcast i8* %479 to %struct.xpvav*
  %xav_array501 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %480, i32 0, i32 0
  %481 = load i8*, i8** %xav_array501, align 8
  %482 = bitcast i8* %481 to %struct.sv**
  %483 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any502 = getelementptr inbounds %struct.sv, %struct.sv* %483, i32 0, i32 0
  %484 = load i8*, i8** %sv_any502, align 8
  %485 = bitcast i8* %484 to %struct.xpvav*
  %xav_alloc503 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %485, i32 0, i32 7
  %486 = load %struct.sv**, %struct.sv*** %xav_alloc503, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %482 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %486 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %call504 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %477, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.297, i32 0, i32 0), i64 %sub.ptr.div)
  %487 = load i32, i32* %level.addr, align 4
  %488 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %489 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any505 = getelementptr inbounds %struct.sv, %struct.sv* %489, i32 0, i32 0
  %490 = load i8*, i8** %sv_any505, align 8
  %491 = bitcast i8* %490 to %struct.xpvav*
  %xav_alloc506 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %491, i32 0, i32 7
  %492 = load %struct.sv**, %struct.sv*** %xav_alloc506, align 8
  %493 = ptrtoint %struct.sv** %492 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %487, %struct._PerlIO** %488, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.298, i32 0, i32 0), i64 %493)
  br label %if.end.509

if.else.507:                                      ; preds = %sw.bb.492
  %494 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %call508 = call i32 @PerlIO_putc(%struct._PerlIO** %494, i32 10)
  br label %if.end.509

if.end.509:                                       ; preds = %if.else.507, %if.then.499
  %495 = load i32, i32* %level.addr, align 4
  %496 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %497 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any510 = getelementptr inbounds %struct.sv, %struct.sv* %497, i32 0, i32 0
  %498 = load i8*, i8** %sv_any510, align 8
  %499 = bitcast i8* %498 to %struct.xpvav*
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %499, i32 0, i32 1
  %500 = load i64, i64* %xav_fill, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %495, %struct._PerlIO** %496, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.299, i32 0, i32 0), i64 %500)
  %501 = load i32, i32* %level.addr, align 4
  %502 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %503 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any511 = getelementptr inbounds %struct.sv, %struct.sv* %503, i32 0, i32 0
  %504 = load i8*, i8** %sv_any511, align 8
  %505 = bitcast i8* %504 to %struct.xpvav*
  %xav_max = getelementptr inbounds %struct.xpvav, %struct.xpvav* %505, i32 0, i32 2
  %506 = load i64, i64* %xav_max, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %501, %struct._PerlIO** %502, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.300, i32 0, i32 0), i64 %506)
  %507 = load i32, i32* %level.addr, align 4
  %508 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %509 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any512 = getelementptr inbounds %struct.sv, %struct.sv* %509, i32 0, i32 0
  %510 = load i8*, i8** %sv_any512, align 8
  %511 = bitcast i8* %510 to %struct.xpvav*
  %xav_arylen = getelementptr inbounds %struct.xpvav, %struct.xpvav* %511, i32 0, i32 8
  %512 = load %struct.sv*, %struct.sv** %xav_arylen, align 8
  %513 = ptrtoint %struct.sv* %512 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %507, %struct._PerlIO** %508, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.301, i32 0, i32 0), i64 %513)
  %514 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any513 = getelementptr inbounds %struct.sv, %struct.sv* %514, i32 0, i32 0
  %515 = load i8*, i8** %sv_any513, align 8
  %516 = bitcast i8* %515 to %struct.xpvav*
  %xav_flags = getelementptr inbounds %struct.xpvav, %struct.xpvav* %516, i32 0, i32 9
  %517 = load i8, i8* %xav_flags, align 1
  %conv514 = zext i8 %517 to i32
  store i32 %conv514, i32* %flags, align 4
  %518 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_setpv(%struct.sv* %518, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0))
  %519 = load i32, i32* %flags, align 4
  %and515 = and i32 %519, 1
  %tobool516 = icmp ne i32 %and515, 0
  br i1 %tobool516, label %if.then.517, label %if.end.518

if.then.517:                                      ; preds = %if.end.509
  %520 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %520, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.302, i32 0, i32 0))
  br label %if.end.518

if.end.518:                                       ; preds = %if.then.517, %if.end.509
  %521 = load i32, i32* %flags, align 4
  %and519 = and i32 %521, 2
  %tobool520 = icmp ne i32 %and519, 0
  br i1 %tobool520, label %if.then.521, label %if.end.522

if.then.521:                                      ; preds = %if.end.518
  %522 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %522, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.303, i32 0, i32 0))
  br label %if.end.522

if.end.522:                                       ; preds = %if.then.521, %if.end.518
  %523 = load i32, i32* %flags, align 4
  %and523 = and i32 %523, 4
  %tobool524 = icmp ne i32 %and523, 0
  br i1 %tobool524, label %if.then.525, label %if.end.526

if.then.525:                                      ; preds = %if.end.522
  %524 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_catpv(%struct.sv* %524, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.304, i32 0, i32 0))
  br label %if.end.526

if.end.526:                                       ; preds = %if.then.525, %if.end.522
  %525 = load i32, i32* %level.addr, align 4
  %526 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %527 = load %struct.sv*, %struct.sv** %d, align 8
  %sv_any527 = getelementptr inbounds %struct.sv, %struct.sv* %527, i32 0, i32 0
  %528 = load i8*, i8** %sv_any527, align 8
  %529 = bitcast i8* %528 to %struct.xpv*
  %xpv_cur528 = getelementptr inbounds %struct.xpv, %struct.xpv* %529, i32 0, i32 1
  %530 = load i64, i64* %xpv_cur528, align 8
  %tobool529 = icmp ne i64 %530, 0
  br i1 %tobool529, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.526
  %531 = load %struct.sv*, %struct.sv** %d, align 8
  %sv_any530 = getelementptr inbounds %struct.sv, %struct.sv* %531, i32 0, i32 0
  %532 = load i8*, i8** %sv_any530, align 8
  %533 = bitcast i8* %532 to %struct.xpv*
  %xpv_pv531 = getelementptr inbounds %struct.xpv, %struct.xpv* %533, i32 0, i32 0
  %534 = load i8*, i8** %xpv_pv531, align 8
  %add.ptr532 = getelementptr inbounds i8, i8* %534, i64 1
  br label %cond.end

cond.false:                                       ; preds = %if.end.526
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr532, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %cond.false ]
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %525, %struct._PerlIO** %526, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.305, i32 0, i32 0), i8* %cond)
  %535 = load i32, i32* %nest.addr, align 4
  %536 = load i32, i32* %maxnest.addr, align 4
  %cmp533 = icmp slt i32 %535, %536
  br i1 %cmp533, label %land.lhs.true.535, label %if.end.553

land.lhs.true.535:                                ; preds = %cond.end
  %537 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %538 = bitcast %struct.sv* %537 to %struct.av*
  %call536 = call i32 @Perl_av_len(%struct.av* %538)
  %cmp537 = icmp sge i32 %call536, 0
  br i1 %cmp537, label %if.then.539, label %if.end.553

if.then.539:                                      ; preds = %land.lhs.true.535
  store i32 0, i32* %count, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.539
  %539 = load i32, i32* %count, align 4
  %540 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %541 = bitcast %struct.sv* %540 to %struct.av*
  %call540 = call i32 @Perl_av_len(%struct.av* %541)
  %cmp541 = icmp sle i32 %539, %call540
  br i1 %cmp541, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %542 = load i32, i32* %count, align 4
  %543 = load i32, i32* %maxnest.addr, align 4
  %cmp543 = icmp slt i32 %542, %543
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %544 = phi i1 [ false, %for.cond ], [ %cmp543, %land.rhs ]
  br i1 %544, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %545 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %546 = bitcast %struct.sv* %545 to %struct.av*
  %547 = load i32, i32* %count, align 4
  %call545 = call %struct.sv** @Perl_av_fetch(%struct.av* %546, i32 %547, i32 0)
  store %struct.sv** %call545, %struct.sv*** %elt, align 8
  %548 = load i32, i32* %level.addr, align 4
  %add546 = add nsw i32 %548, 1
  %549 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %550 = load i32, i32* %count, align 4
  %conv547 = sext i32 %550 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %add546, %struct._PerlIO** %549, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.306, i32 0, i32 0), i64 %conv547)
  %551 = load %struct.sv**, %struct.sv*** %elt, align 8
  %tobool548 = icmp ne %struct.sv** %551, null
  br i1 %tobool548, label %if.then.549, label %if.end.552

if.then.549:                                      ; preds = %for.body
  %552 = load i32, i32* %level.addr, align 4
  %add550 = add nsw i32 %552, 1
  %553 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %554 = load %struct.sv**, %struct.sv*** %elt, align 8
  %555 = load %struct.sv*, %struct.sv** %554, align 8
  %556 = load i32, i32* %nest.addr, align 4
  %add551 = add nsw i32 %556, 1
  %557 = load i32, i32* %maxnest.addr, align 4
  %558 = load i8, i8* %dumpops.addr, align 1
  %559 = load i64, i64* %pvlim.addr, align 8
  call void @Perl_do_sv_dump(i32 %add550, %struct._PerlIO** %553, %struct.sv* %555, i32 %add551, i32 %557, i8 signext %558, i64 %559)
  br label %if.end.552

if.end.552:                                       ; preds = %if.then.549, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.552
  %560 = load i32, i32* %count, align 4
  %inc = add nsw i32 %560, 1
  store i32 %inc, i32* %count, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %if.end.553

if.end.553:                                       ; preds = %for.end, %land.lhs.true.535, %cond.end
  br label %sw.epilog.973

sw.bb.554:                                        ; preds = %if.end.468
  %561 = load i32, i32* %level.addr, align 4
  %562 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %563 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any555 = getelementptr inbounds %struct.sv, %struct.sv* %563, i32 0, i32 0
  %564 = load i8*, i8** %sv_any555, align 8
  %565 = bitcast i8* %564 to %struct.xpvhv*
  %xhv_array = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %565, i32 0, i32 0
  %566 = bitcast i8** %xhv_array to %struct.he***
  %567 = load %struct.he**, %struct.he*** %566, align 8
  %568 = ptrtoint %struct.he** %567 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %561, %struct._PerlIO** %562, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.296, i32 0, i32 0), i64 %568)
  %569 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any556 = getelementptr inbounds %struct.sv, %struct.sv* %569, i32 0, i32 0
  %570 = load i8*, i8** %sv_any556, align 8
  %571 = bitcast i8* %570 to %struct.xpvhv*
  %xhv_array557 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %571, i32 0, i32 0
  %572 = bitcast i8** %xhv_array557 to %struct.he***
  %573 = load %struct.he**, %struct.he*** %572, align 8
  %tobool558 = icmp ne %struct.he** %573, null
  br i1 %tobool558, label %land.lhs.true.559, label %if.end.658

land.lhs.true.559:                                ; preds = %sw.bb.554
  %574 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any560 = getelementptr inbounds %struct.sv, %struct.sv* %574, i32 0, i32 0
  %575 = load i8*, i8** %sv_any560, align 8
  %576 = bitcast i8* %575 to %struct.xpvhv*
  %xhv_keys = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %576, i32 0, i32 3
  %577 = load i64, i64* %xhv_keys, align 8
  %578 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any561 = getelementptr inbounds %struct.sv, %struct.sv* %578, i32 0, i32 0
  %579 = load i8*, i8** %sv_any561, align 8
  %580 = bitcast i8* %579 to %struct.xpvhv*
  %xnv_nv562 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %580, i32 0, i32 4
  %581 = load double, double* %xnv_nv562, align 8
  %conv563 = fptosi double %581 to i64
  %sub = sub nsw i64 %577, %conv563
  %tobool564 = icmp ne i64 %sub, 0
  br i1 %tobool564, label %if.then.565, label %if.end.658

if.then.565:                                      ; preds = %land.lhs.true.559
  store i32 0, i32* %max, align 4
  store i32 2, i32* %pow2, align 4
  %582 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any566 = getelementptr inbounds %struct.sv, %struct.sv* %582, i32 0, i32 0
  %583 = load i8*, i8** %sv_any566, align 8
  %584 = bitcast i8* %583 to %struct.xpvhv*
  %xhv_keys567 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %584, i32 0, i32 3
  %585 = load i64, i64* %xhv_keys567, align 8
  %586 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any568 = getelementptr inbounds %struct.sv, %struct.sv* %586, i32 0, i32 0
  %587 = load i8*, i8** %sv_any568, align 8
  %588 = bitcast i8* %587 to %struct.xpvhv*
  %xnv_nv569 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %588, i32 0, i32 4
  %589 = load double, double* %xnv_nv569, align 8
  %conv570 = fptosi double %589 to i64
  %sub571 = sub nsw i64 %585, %conv570
  %conv572 = trunc i64 %sub571 to i32
  store i32 %conv572, i32* %keys, align 4
  store double 0.000000e+00, double* %sum, align 8
  %590 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %call573 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %590, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.307, i32 0, i32 0))
  %arraydecay = getelementptr inbounds [200 x i32], [200 x i32]* %freq, i32 0, i32 0
  %591 = bitcast i32* %arraydecay to i8*
  call void @llvm.memset.p0i8.i64(i8* %591, i8 0, i64 800, i32 1, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond.574

for.cond.574:                                     ; preds = %for.inc.602, %if.then.565
  %592 = load i32, i32* %i, align 4
  %conv575 = sext i32 %592 to i64
  %593 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any576 = getelementptr inbounds %struct.sv, %struct.sv* %593, i32 0, i32 0
  %594 = load i8*, i8** %sv_any576, align 8
  %595 = bitcast i8* %594 to %struct.xpvhv*
  %xhv_max = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %595, i32 0, i32 2
  %596 = load i64, i64* %xhv_max, align 8
  %cmp577 = icmp ule i64 %conv575, %596
  br i1 %cmp577, label %for.body.579, label %for.end.604

for.body.579:                                     ; preds = %for.cond.574
  store i32 0, i32* %count580, align 4
  %597 = load i32, i32* %i, align 4
  %idxprom = sext i32 %597 to i64
  %598 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any581 = getelementptr inbounds %struct.sv, %struct.sv* %598, i32 0, i32 0
  %599 = load i8*, i8** %sv_any581, align 8
  %600 = bitcast i8* %599 to %struct.xpvhv*
  %xhv_array582 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %600, i32 0, i32 0
  %601 = bitcast i8** %xhv_array582 to %struct.he***
  %602 = load %struct.he**, %struct.he*** %601, align 8
  %arrayidx583 = getelementptr inbounds %struct.he*, %struct.he** %602, i64 %idxprom
  %603 = load %struct.he*, %struct.he** %arrayidx583, align 8
  store %struct.he* %603, %struct.he** %h, align 8
  br label %for.cond.584

for.cond.584:                                     ; preds = %for.inc.588, %for.body.579
  %604 = load %struct.he*, %struct.he** %h, align 8
  %tobool585 = icmp ne %struct.he* %604, null
  br i1 %tobool585, label %for.body.586, label %for.end.589

for.body.586:                                     ; preds = %for.cond.584
  %605 = load i32, i32* %count580, align 4
  %inc587 = add nsw i32 %605, 1
  store i32 %inc587, i32* %count580, align 4
  br label %for.inc.588

for.inc.588:                                      ; preds = %for.body.586
  %606 = load %struct.he*, %struct.he** %h, align 8
  %hent_next = getelementptr inbounds %struct.he, %struct.he* %606, i32 0, i32 0
  %607 = load %struct.he*, %struct.he** %hent_next, align 8
  store %struct.he* %607, %struct.he** %h, align 8
  br label %for.cond.584

for.end.589:                                      ; preds = %for.cond.584
  %608 = load i32, i32* %count580, align 4
  %conv590 = sext i32 %608 to i64
  %cmp591 = icmp ugt i64 %conv590, 199
  br i1 %cmp591, label %if.then.593, label %if.end.594

if.then.593:                                      ; preds = %for.end.589
  store i32 199, i32* %count580, align 4
  br label %if.end.594

if.end.594:                                       ; preds = %if.then.593, %for.end.589
  %609 = load i32, i32* %count580, align 4
  %idxprom595 = sext i32 %609 to i64
  %arrayidx596 = getelementptr inbounds [200 x i32], [200 x i32]* %freq, i32 0, i64 %idxprom595
  %610 = load i32, i32* %arrayidx596, align 4
  %inc597 = add nsw i32 %610, 1
  store i32 %inc597, i32* %arrayidx596, align 4
  %611 = load i32, i32* %max, align 4
  %612 = load i32, i32* %count580, align 4
  %cmp598 = icmp slt i32 %611, %612
  br i1 %cmp598, label %if.then.600, label %if.end.601

if.then.600:                                      ; preds = %if.end.594
  %613 = load i32, i32* %count580, align 4
  store i32 %613, i32* %max, align 4
  br label %if.end.601

if.end.601:                                       ; preds = %if.then.600, %if.end.594
  br label %for.inc.602

for.inc.602:                                      ; preds = %if.end.601
  %614 = load i32, i32* %i, align 4
  %inc603 = add nsw i32 %614, 1
  store i32 %inc603, i32* %i, align 4
  br label %for.cond.574

for.end.604:                                      ; preds = %for.cond.574
  store i32 0, i32* %i, align 4
  br label %for.cond.605

for.cond.605:                                     ; preds = %for.inc.626, %for.end.604
  %615 = load i32, i32* %i, align 4
  %616 = load i32, i32* %max, align 4
  %cmp606 = icmp sle i32 %615, %616
  br i1 %cmp606, label %for.body.608, label %for.end.628

for.body.608:                                     ; preds = %for.cond.605
  %617 = load i32, i32* %i, align 4
  %idxprom609 = sext i32 %617 to i64
  %arrayidx610 = getelementptr inbounds [200 x i32], [200 x i32]* %freq, i32 0, i64 %idxprom609
  %618 = load i32, i32* %arrayidx610, align 4
  %tobool611 = icmp ne i32 %618, 0
  br i1 %tobool611, label %if.then.612, label %if.end.625

if.then.612:                                      ; preds = %for.body.608
  %619 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %620 = load i32, i32* %i, align 4
  %621 = load i32, i32* %i, align 4
  %conv613 = sext i32 %621 to i64
  %cmp614 = icmp eq i64 %conv613, 199
  %cond616 = select i1 %cmp614, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.309, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0)
  %622 = load i32, i32* %i, align 4
  %idxprom617 = sext i32 %622 to i64
  %arrayidx618 = getelementptr inbounds [200 x i32], [200 x i32]* %freq, i32 0, i64 %idxprom617
  %623 = load i32, i32* %arrayidx618, align 4
  %call619 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %619, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.308, i32 0, i32 0), i32 %620, i8* %cond616, i32 %623)
  %624 = load i32, i32* %i, align 4
  %625 = load i32, i32* %max, align 4
  %cmp620 = icmp ne i32 %624, %625
  br i1 %cmp620, label %if.then.622, label %if.end.624

if.then.622:                                      ; preds = %if.then.612
  %626 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %call623 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %626, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.310, i32 0, i32 0))
  br label %if.end.624

if.end.624:                                       ; preds = %if.then.622, %if.then.612
  br label %if.end.625

if.end.625:                                       ; preds = %if.end.624, %for.body.608
  br label %for.inc.626

for.inc.626:                                      ; preds = %if.end.625
  %627 = load i32, i32* %i, align 4
  %inc627 = add nsw i32 %627, 1
  store i32 %inc627, i32* %i, align 4
  br label %for.cond.605

for.end.628:                                      ; preds = %for.cond.605
  %628 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %call629 = call i32 @PerlIO_putc(%struct._PerlIO** %628, i32 41)
  %629 = load i32, i32* %max, align 4
  store i32 %629, i32* %i, align 4
  br label %for.cond.630

for.cond.630:                                     ; preds = %for.inc.640, %for.end.628
  %630 = load i32, i32* %i, align 4
  %cmp631 = icmp sgt i32 %630, 0
  br i1 %cmp631, label %for.body.633, label %for.end.642

for.body.633:                                     ; preds = %for.cond.630
  %631 = load i32, i32* %i, align 4
  %idxprom634 = sext i32 %631 to i64
  %arrayidx635 = getelementptr inbounds [200 x i32], [200 x i32]* %freq, i32 0, i64 %idxprom634
  %632 = load i32, i32* %arrayidx635, align 4
  %633 = load i32, i32* %i, align 4
  %mul636 = mul nsw i32 %632, %633
  %634 = load i32, i32* %i, align 4
  %mul637 = mul nsw i32 %mul636, %634
  %conv638 = sitofp i32 %mul637 to double
  %635 = load double, double* %sum, align 8
  %add639 = fadd double %635, %conv638
  store double %add639, double* %sum, align 8
  br label %for.inc.640

for.inc.640:                                      ; preds = %for.body.633
  %636 = load i32, i32* %i, align 4
  %dec641 = add nsw i32 %636, -1
  store i32 %dec641, i32* %i, align 4
  br label %for.cond.630

for.end.642:                                      ; preds = %for.cond.630
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end.642
  %637 = load i32, i32* %keys, align 4
  %shr = lshr i32 %637, 1
  store i32 %shr, i32* %keys, align 4
  %tobool643 = icmp ne i32 %shr, 0
  br i1 %tobool643, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %638 = load i32, i32* %pow2, align 4
  %shl = shl i32 %638, 1
  store i32 %shl, i32* %pow2, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %639 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any644 = getelementptr inbounds %struct.sv, %struct.sv* %639, i32 0, i32 0
  %640 = load i8*, i8** %sv_any644, align 8
  %641 = bitcast i8* %640 to %struct.xpvhv*
  %xhv_keys645 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %641, i32 0, i32 3
  %642 = load i64, i64* %xhv_keys645, align 8
  %643 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any646 = getelementptr inbounds %struct.sv, %struct.sv* %643, i32 0, i32 0
  %644 = load i8*, i8** %sv_any646, align 8
  %645 = bitcast i8* %644 to %struct.xpvhv*
  %xnv_nv647 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %645, i32 0, i32 4
  %646 = load double, double* %xnv_nv647, align 8
  %conv648 = fptosi double %646 to i64
  %sub649 = sub nsw i64 %642, %conv648
  %conv650 = sitofp i64 %sub649 to double
  store double %conv650, double* %theoret, align 8
  %647 = load double, double* %theoret, align 8
  %648 = load double, double* %theoret, align 8
  %sub651 = fsub double %648, 1.000000e+00
  %mul652 = fmul double %647, %sub651
  %649 = load i32, i32* %pow2, align 4
  %conv653 = uitofp i32 %649 to double
  %div = fdiv double %mul652, %conv653
  %650 = load double, double* %theoret, align 8
  %add654 = fadd double %650, %div
  store double %add654, double* %theoret, align 8
  %651 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %call655 = call i32 @PerlIO_putc(%struct._PerlIO** %651, i32 10)
  %652 = load i32, i32* %level.addr, align 4
  %653 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %654 = load double, double* %theoret, align 8
  %655 = load double, double* %sum, align 8
  %div656 = fdiv double %654, %655
  %mul657 = fmul double %div656, 1.000000e+02
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %652, %struct._PerlIO** %653, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.311, i32 0, i32 0), double %mul657)
  br label %if.end.658

if.end.658:                                       ; preds = %while.end, %land.lhs.true.559, %sw.bb.554
  %656 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %call659 = call i32 @PerlIO_putc(%struct._PerlIO** %656, i32 10)
  %657 = load i32, i32* %level.addr, align 4
  %658 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %659 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any660 = getelementptr inbounds %struct.sv, %struct.sv* %659, i32 0, i32 0
  %660 = load i8*, i8** %sv_any660, align 8
  %661 = bitcast i8* %660 to %struct.xpvhv*
  %xhv_keys661 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %661, i32 0, i32 3
  %662 = load i64, i64* %xhv_keys661, align 8
  %663 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any662 = getelementptr inbounds %struct.sv, %struct.sv* %663, i32 0, i32 0
  %664 = load i8*, i8** %sv_any662, align 8
  %665 = bitcast i8* %664 to %struct.xpvhv*
  %xnv_nv663 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %665, i32 0, i32 4
  %666 = load double, double* %xnv_nv663, align 8
  %conv664 = fptosi double %666 to i64
  %sub665 = sub nsw i64 %662, %conv664
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %657, %struct._PerlIO** %658, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.312, i32 0, i32 0), i64 %sub665)
  %667 = load i32, i32* %level.addr, align 4
  %668 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %669 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any666 = getelementptr inbounds %struct.sv, %struct.sv* %669, i32 0, i32 0
  %670 = load i8*, i8** %sv_any666, align 8
  %671 = bitcast i8* %670 to %struct.xpvhv*
  %xhv_fill = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %671, i32 0, i32 1
  %672 = load i64, i64* %xhv_fill, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %667, %struct._PerlIO** %668, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.299, i32 0, i32 0), i64 %672)
  %673 = load i32, i32* %level.addr, align 4
  %674 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %675 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any667 = getelementptr inbounds %struct.sv, %struct.sv* %675, i32 0, i32 0
  %676 = load i8*, i8** %sv_any667, align 8
  %677 = bitcast i8* %676 to %struct.xpvhv*
  %xhv_max668 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %677, i32 0, i32 2
  %678 = load i64, i64* %xhv_max668, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %673, %struct._PerlIO** %674, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.300, i32 0, i32 0), i64 %678)
  %679 = load i32, i32* %level.addr, align 4
  %680 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %681 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any669 = getelementptr inbounds %struct.sv, %struct.sv* %681, i32 0, i32 0
  %682 = load i8*, i8** %sv_any669, align 8
  %683 = bitcast i8* %682 to %struct.xpvhv*
  %xhv_riter = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %683, i32 0, i32 7
  %684 = load i32, i32* %xhv_riter, align 4
  %conv670 = sext i32 %684 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %679, %struct._PerlIO** %680, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.313, i32 0, i32 0), i64 %conv670)
  %685 = load i32, i32* %level.addr, align 4
  %686 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %687 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any671 = getelementptr inbounds %struct.sv, %struct.sv* %687, i32 0, i32 0
  %688 = load i8*, i8** %sv_any671, align 8
  %689 = bitcast i8* %688 to %struct.xpvhv*
  %xhv_eiter = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %689, i32 0, i32 8
  %690 = load %struct.he*, %struct.he** %xhv_eiter, align 8
  %691 = ptrtoint %struct.he* %690 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %685, %struct._PerlIO** %686, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.314, i32 0, i32 0), i64 %691)
  %692 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any672 = getelementptr inbounds %struct.sv, %struct.sv* %692, i32 0, i32 0
  %693 = load i8*, i8** %sv_any672, align 8
  %694 = bitcast i8* %693 to %struct.xpvhv*
  %xhv_pmroot = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %694, i32 0, i32 9
  %695 = load %struct.pmop*, %struct.pmop** %xhv_pmroot, align 8
  %tobool673 = icmp ne %struct.pmop* %695, null
  br i1 %tobool673, label %if.then.674, label %if.end.677

if.then.674:                                      ; preds = %if.end.658
  %696 = load i32, i32* %level.addr, align 4
  %697 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %698 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any675 = getelementptr inbounds %struct.sv, %struct.sv* %698, i32 0, i32 0
  %699 = load i8*, i8** %sv_any675, align 8
  %700 = bitcast i8* %699 to %struct.xpvhv*
  %xhv_pmroot676 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %700, i32 0, i32 9
  %701 = load %struct.pmop*, %struct.pmop** %xhv_pmroot676, align 8
  %702 = ptrtoint %struct.pmop* %701 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %696, %struct._PerlIO** %697, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.315, i32 0, i32 0), i64 %702)
  br label %if.end.677

if.end.677:                                       ; preds = %if.then.674, %if.end.658
  %703 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any678 = getelementptr inbounds %struct.sv, %struct.sv* %703, i32 0, i32 0
  %704 = load i8*, i8** %sv_any678, align 8
  %705 = bitcast i8* %704 to %struct.xpvhv*
  %xhv_name = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %705, i32 0, i32 10
  %706 = load i8*, i8** %xhv_name, align 8
  %tobool679 = icmp ne i8* %706, null
  br i1 %tobool679, label %if.then.680, label %if.end.683

if.then.680:                                      ; preds = %if.end.677
  %707 = load i32, i32* %level.addr, align 4
  %708 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %709 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any681 = getelementptr inbounds %struct.sv, %struct.sv* %709, i32 0, i32 0
  %710 = load i8*, i8** %sv_any681, align 8
  %711 = bitcast i8* %710 to %struct.xpvhv*
  %xhv_name682 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %711, i32 0, i32 10
  %712 = load i8*, i8** %xhv_name682, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %707, %struct._PerlIO** %708, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.316, i32 0, i32 0), i8* %712)
  br label %if.end.683

if.end.683:                                       ; preds = %if.then.680, %if.end.677
  %713 = load i32, i32* %nest.addr, align 4
  %714 = load i32, i32* %maxnest.addr, align 4
  %cmp684 = icmp slt i32 %713, %714
  br i1 %cmp684, label %land.lhs.true.686, label %if.end.746

land.lhs.true.686:                                ; preds = %if.end.683
  %715 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any687 = getelementptr inbounds %struct.sv, %struct.sv* %715, i32 0, i32 0
  %716 = load i8*, i8** %sv_any687, align 8
  %717 = bitcast i8* %716 to %struct.xpvhv*
  %xhv_eiter688 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %717, i32 0, i32 8
  %718 = load %struct.he*, %struct.he** %xhv_eiter688, align 8
  %tobool689 = icmp ne %struct.he* %718, null
  br i1 %tobool689, label %if.end.746, label %if.then.690

if.then.690:                                      ; preds = %land.lhs.true.686
  %719 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %720 = bitcast %struct.sv* %719 to %struct.hv*
  store %struct.hv* %720, %struct.hv** %hv, align 8
  %721 = load i32, i32* %maxnest.addr, align 4
  %722 = load i32, i32* %nest.addr, align 4
  %sub692 = sub nsw i32 %721, %722
  store i32 %sub692, i32* %count691, align 4
  %723 = load %struct.hv*, %struct.hv** %hv, align 8
  %call693 = call i32 @Perl_hv_iterinit(%struct.hv* %723)
  br label %while.cond.694

while.cond.694:                                   ; preds = %if.end.739, %if.then.690
  %724 = load %struct.hv*, %struct.hv** %hv, align 8
  %call695 = call %struct.he* @Perl_hv_iternext_flags(%struct.hv* %724, i32 1)
  store %struct.he* %call695, %struct.he** %he, align 8
  %tobool696 = icmp ne %struct.he* %call695, null
  br i1 %tobool696, label %land.rhs.697, label %land.end.700

land.rhs.697:                                     ; preds = %while.cond.694
  %725 = load i32, i32* %count691, align 4
  %dec698 = add nsw i32 %725, -1
  store i32 %dec698, i32* %count691, align 4
  %tobool699 = icmp ne i32 %725, 0
  br label %land.end.700

land.end.700:                                     ; preds = %land.rhs.697, %while.cond.694
  %726 = phi i1 [ false, %while.cond.694 ], [ %tobool699, %land.rhs.697 ]
  br i1 %726, label %while.body.701, label %while.end.744

while.body.701:                                   ; preds = %land.end.700
  %727 = load %struct.he*, %struct.he** %he, align 8
  %hent_hek = getelementptr inbounds %struct.he, %struct.he* %727, i32 0, i32 1
  %728 = load %struct.hek*, %struct.hek** %hent_hek, align 8
  %hek_hash = getelementptr inbounds %struct.hek, %struct.hek* %728, i32 0, i32 0
  %729 = load i32, i32* %hek_hash, align 4
  store i32 %729, i32* %hash, align 4
  %730 = load %struct.he*, %struct.he** %he, align 8
  %call703 = call %struct.sv* @Perl_hv_iterkeysv(%struct.he* %730)
  store %struct.sv* %call703, %struct.sv** %keysv, align 8
  %731 = load %struct.sv*, %struct.sv** %keysv, align 8
  %sv_flags704 = getelementptr inbounds %struct.sv, %struct.sv* %731, i32 0, i32 2
  %732 = load i32, i32* %sv_flags704, align 4
  %and705 = and i32 %732, 262144
  %cmp706 = icmp eq i32 %and705, 262144
  br i1 %cmp706, label %cond.true.708, label %cond.false.713

cond.true.708:                                    ; preds = %while.body.701
  %733 = load %struct.sv*, %struct.sv** %keysv, align 8
  %sv_any709 = getelementptr inbounds %struct.sv, %struct.sv* %733, i32 0, i32 0
  %734 = load i8*, i8** %sv_any709, align 8
  %735 = bitcast i8* %734 to %struct.xpv*
  %xpv_cur710 = getelementptr inbounds %struct.xpv, %struct.xpv* %735, i32 0, i32 1
  %736 = load i64, i64* %xpv_cur710, align 8
  store i64 %736, i64* %len, align 8
  %737 = load %struct.sv*, %struct.sv** %keysv, align 8
  %sv_any711 = getelementptr inbounds %struct.sv, %struct.sv* %737, i32 0, i32 0
  %738 = load i8*, i8** %sv_any711, align 8
  %739 = bitcast i8* %738 to %struct.xpv*
  %xpv_pv712 = getelementptr inbounds %struct.xpv, %struct.xpv* %739, i32 0, i32 0
  %740 = load i8*, i8** %xpv_pv712, align 8
  br label %cond.end.715

cond.false.713:                                   ; preds = %while.body.701
  %741 = load %struct.sv*, %struct.sv** %keysv, align 8
  %call714 = call i8* @Perl_sv_2pv_flags(%struct.sv* %741, i64* %len, i32 2)
  br label %cond.end.715

cond.end.715:                                     ; preds = %cond.false.713, %cond.true.708
  %cond716 = phi i8* [ %740, %cond.true.708 ], [ %call714, %cond.false.713 ]
  store i8* %cond716, i8** %keypv, align 8
  %742 = load %struct.hv*, %struct.hv** %hv, align 8
  %743 = load %struct.he*, %struct.he** %he, align 8
  %call717 = call %struct.sv* @Perl_hv_iterval(%struct.hv* %742, %struct.he* %743)
  store %struct.sv* %call717, %struct.sv** %elt702, align 8
  %744 = load i32, i32* %level.addr, align 4
  %add718 = add nsw i32 %744, 1
  %745 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %746 = load %struct.sv*, %struct.sv** %d, align 8
  %747 = load i8*, i8** %keypv, align 8
  %748 = load i64, i64* %len, align 8
  %749 = load i64, i64* %pvlim.addr, align 8
  %call719 = call i8* @Perl_pv_display(%struct.sv* %746, i8* %747, i64 %748, i64 0, i64 %749)
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %add718, %struct._PerlIO** %745, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.317, i32 0, i32 0), i8* %call719)
  %750 = load %struct.sv*, %struct.sv** %keysv, align 8
  %sv_flags720 = getelementptr inbounds %struct.sv, %struct.sv* %750, i32 0, i32 2
  %751 = load i32, i32* %sv_flags720, align 4
  %and721 = and i32 %751, 536870912
  %tobool722 = icmp ne i32 %and721, 0
  br i1 %tobool722, label %if.then.723, label %if.end.728

if.then.723:                                      ; preds = %cond.end.715
  %752 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %753 = load %struct.sv*, %struct.sv** %d, align 8
  %754 = load %struct.sv*, %struct.sv** %keysv, align 8
  %755 = load %struct.sv*, %struct.sv** %keysv, align 8
  %call724 = call i64 @Perl_sv_len_utf8(%struct.sv* %755)
  %mul725 = mul i64 8, %call724
  %call726 = call i8* @Perl_sv_uni_display(%struct.sv* %753, %struct.sv* %754, i64 %mul725, i64 3)
  %call727 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %752, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.318, i32 0, i32 0), i8* %call726)
  br label %if.end.728

if.end.728:                                       ; preds = %if.then.723, %cond.end.715
  %756 = load %struct.he*, %struct.he** %he, align 8
  %hent_hek729 = getelementptr inbounds %struct.he, %struct.he* %756, i32 0, i32 1
  %757 = load %struct.hek*, %struct.hek** %hent_hek729, align 8
  %hek_key = getelementptr inbounds %struct.hek, %struct.hek* %757, i32 0, i32 2
  %arraydecay730 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key, i32 0, i32 0
  %758 = load %struct.he*, %struct.he** %he, align 8
  %hent_hek731 = getelementptr inbounds %struct.he, %struct.he* %758, i32 0, i32 1
  %759 = load %struct.hek*, %struct.hek** %hent_hek731, align 8
  %hek_len = getelementptr inbounds %struct.hek, %struct.hek* %759, i32 0, i32 1
  %760 = load i32, i32* %hek_len, align 4
  %idx.ext = sext i32 %760 to i64
  %add.ptr732 = getelementptr inbounds i8, i8* %arraydecay730, i64 %idx.ext
  %add.ptr733 = getelementptr inbounds i8, i8* %add.ptr732, i64 1
  %761 = load i8, i8* %add.ptr733, align 1
  %conv734 = zext i8 %761 to i32
  %and735 = and i32 %conv734, 4
  %tobool736 = icmp ne i32 %and735, 0
  br i1 %tobool736, label %if.then.737, label %if.end.739

if.then.737:                                      ; preds = %if.end.728
  %762 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %call738 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %762, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.319, i32 0, i32 0))
  br label %if.end.739

if.end.739:                                       ; preds = %if.then.737, %if.end.728
  %763 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %764 = load i32, i32* %hash, align 4
  %conv740 = zext i32 %764 to i64
  %call741 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %763, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.320, i32 0, i32 0), i64 %conv740)
  %765 = load i32, i32* %level.addr, align 4
  %add742 = add nsw i32 %765, 1
  %766 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %767 = load %struct.sv*, %struct.sv** %elt702, align 8
  %768 = load i32, i32* %nest.addr, align 4
  %add743 = add nsw i32 %768, 1
  %769 = load i32, i32* %maxnest.addr, align 4
  %770 = load i8, i8* %dumpops.addr, align 1
  %771 = load i64, i64* %pvlim.addr, align 8
  call void @Perl_do_sv_dump(i32 %add742, %struct._PerlIO** %766, %struct.sv* %767, i32 %add743, i32 %769, i8 signext %770, i64 %771)
  br label %while.cond.694

while.end.744:                                    ; preds = %land.end.700
  %772 = load %struct.hv*, %struct.hv** %hv, align 8
  %call745 = call i32 @Perl_hv_iterinit(%struct.hv* %772)
  br label %if.end.746

if.end.746:                                       ; preds = %while.end.744, %land.lhs.true.686, %if.end.683
  br label %sw.epilog.973

sw.bb.747:                                        ; preds = %if.end.468
  %773 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags748 = getelementptr inbounds %struct.sv, %struct.sv* %773, i32 0, i32 2
  %774 = load i32, i32* %sv_flags748, align 4
  %and749 = and i32 %774, 262144
  %tobool750 = icmp ne i32 %and749, 0
  br i1 %tobool750, label %if.then.751, label %if.end.763

if.then.751:                                      ; preds = %sw.bb.747
  %775 = load i32, i32* %level.addr, align 4
  %776 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %777 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags752 = getelementptr inbounds %struct.sv, %struct.sv* %777, i32 0, i32 2
  %778 = load i32, i32* %sv_flags752, align 4
  %and753 = and i32 %778, 262144
  %cmp754 = icmp eq i32 %and753, 262144
  br i1 %cmp754, label %cond.true.756, label %cond.false.759

cond.true.756:                                    ; preds = %if.then.751
  %779 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any757 = getelementptr inbounds %struct.sv, %struct.sv* %779, i32 0, i32 0
  %780 = load i8*, i8** %sv_any757, align 8
  %781 = bitcast i8* %780 to %struct.xpv*
  %xpv_pv758 = getelementptr inbounds %struct.xpv, %struct.xpv* %781, i32 0, i32 0
  %782 = load i8*, i8** %xpv_pv758, align 8
  br label %cond.end.761

cond.false.759:                                   ; preds = %if.then.751
  %783 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call760 = call i8* @Perl_sv_2pv_nolen(%struct.sv* %783)
  br label %cond.end.761

cond.end.761:                                     ; preds = %cond.false.759, %cond.true.756
  %cond762 = phi i8* [ %782, %cond.true.756 ], [ %call760, %cond.false.759 ]
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %775, %struct._PerlIO** %776, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.321, i32 0, i32 0), i8* %cond762)
  br label %if.end.763

if.end.763:                                       ; preds = %cond.end.761, %sw.bb.747
  br label %sw.bb.764

sw.bb.764:                                        ; preds = %if.end.468, %if.end.763
  %784 = load i32, i32* %level.addr, align 4
  %785 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %786 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any765 = getelementptr inbounds %struct.sv, %struct.sv* %786, i32 0, i32 0
  %787 = load i8*, i8** %sv_any765, align 8
  %788 = bitcast i8* %787 to %struct.xpvcv*
  %xcv_stash = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %788, i32 0, i32 7
  %789 = load %struct.hv*, %struct.hv** %xcv_stash, align 8
  call void @Perl_do_hv_dump(i32 %784, %struct._PerlIO** %785, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.322, i32 0, i32 0), %struct.hv* %789)
  %790 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any766 = getelementptr inbounds %struct.sv, %struct.sv* %790, i32 0, i32 0
  %791 = load i8*, i8** %sv_any766, align 8
  %792 = bitcast i8* %791 to %struct.xpvcv*
  %xcv_start = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %792, i32 0, i32 8
  %793 = load %struct.op*, %struct.op** %xcv_start, align 8
  %tobool767 = icmp ne %struct.op* %793, null
  br i1 %tobool767, label %if.then.768, label %if.end.774

if.then.768:                                      ; preds = %sw.bb.764
  %794 = load i32, i32* %level.addr, align 4
  %795 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %796 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any769 = getelementptr inbounds %struct.sv, %struct.sv* %796, i32 0, i32 0
  %797 = load i8*, i8** %sv_any769, align 8
  %798 = bitcast i8* %797 to %struct.xpvcv*
  %xcv_start770 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %798, i32 0, i32 8
  %799 = load %struct.op*, %struct.op** %xcv_start770, align 8
  %800 = ptrtoint %struct.op* %799 to i64
  %801 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any771 = getelementptr inbounds %struct.sv, %struct.sv* %801, i32 0, i32 0
  %802 = load i8*, i8** %sv_any771, align 8
  %803 = bitcast i8* %802 to %struct.xpvcv*
  %xcv_start772 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %803, i32 0, i32 8
  %804 = load %struct.op*, %struct.op** %xcv_start772, align 8
  %op_seq = getelementptr inbounds %struct.op, %struct.op* %804, i32 0, i32 5
  %805 = load i16, i16* %op_seq, align 2
  %conv773 = zext i16 %805 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %794, %struct._PerlIO** %795, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.323, i32 0, i32 0), i64 %800, i64 %conv773)
  br label %if.end.774

if.end.774:                                       ; preds = %if.then.768, %sw.bb.764
  %806 = load i32, i32* %level.addr, align 4
  %807 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %808 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any775 = getelementptr inbounds %struct.sv, %struct.sv* %808, i32 0, i32 0
  %809 = load i8*, i8** %sv_any775, align 8
  %810 = bitcast i8* %809 to %struct.xpvcv*
  %xcv_root = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %810, i32 0, i32 9
  %811 = load %struct.op*, %struct.op** %xcv_root, align 8
  %812 = ptrtoint %struct.op* %811 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %806, %struct._PerlIO** %807, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.324, i32 0, i32 0), i64 %812)
  %813 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any776 = getelementptr inbounds %struct.sv, %struct.sv* %813, i32 0, i32 0
  %814 = load i8*, i8** %sv_any776, align 8
  %815 = bitcast i8* %814 to %struct.xpvcv*
  %xcv_root777 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %815, i32 0, i32 9
  %816 = load %struct.op*, %struct.op** %xcv_root777, align 8
  %tobool778 = icmp ne %struct.op* %816, null
  br i1 %tobool778, label %land.lhs.true.779, label %if.end.786

land.lhs.true.779:                                ; preds = %if.end.774
  %817 = load i8, i8* %dumpops.addr, align 1
  %conv780 = sext i8 %817 to i32
  %tobool781 = icmp ne i32 %conv780, 0
  br i1 %tobool781, label %if.then.782, label %if.end.786

if.then.782:                                      ; preds = %land.lhs.true.779
  %818 = load i32, i32* %level.addr, align 4
  %add783 = add nsw i32 %818, 1
  %819 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %820 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any784 = getelementptr inbounds %struct.sv, %struct.sv* %820, i32 0, i32 0
  %821 = load i8*, i8** %sv_any784, align 8
  %822 = bitcast i8* %821 to %struct.xpvcv*
  %xcv_root785 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %822, i32 0, i32 9
  %823 = load %struct.op*, %struct.op** %xcv_root785, align 8
  call void @Perl_do_op_dump(i32 %add783, %struct._PerlIO** %819, %struct.op* %823)
  br label %if.end.786

if.end.786:                                       ; preds = %if.then.782, %land.lhs.true.779, %if.end.774
  %824 = load i32, i32* %level.addr, align 4
  %825 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %826 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any787 = getelementptr inbounds %struct.sv, %struct.sv* %826, i32 0, i32 0
  %827 = load i8*, i8** %sv_any787, align 8
  %828 = bitcast i8* %827 to %struct.xpvcv*
  %xcv_xsub = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %828, i32 0, i32 10
  %829 = load void (%struct.cv*)*, void (%struct.cv*)** %xcv_xsub, align 8
  %830 = ptrtoint void (%struct.cv*)* %829 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %824, %struct._PerlIO** %825, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.325, i32 0, i32 0), i64 %830)
  %831 = load i32, i32* %level.addr, align 4
  %832 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %833 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any788 = getelementptr inbounds %struct.sv, %struct.sv* %833, i32 0, i32 0
  %834 = load i8*, i8** %sv_any788, align 8
  %835 = bitcast i8* %834 to %struct.xpvcv*
  %xcv_xsubany = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %835, i32 0, i32 11
  %any_i32 = bitcast %union.any* %xcv_xsubany to i32*
  %836 = load i32, i32* %any_i32, align 4
  %conv789 = sext i32 %836 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %831, %struct._PerlIO** %832, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.326, i32 0, i32 0), i64 %conv789)
  %837 = load i32, i32* %level.addr, align 4
  %838 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %839 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any790 = getelementptr inbounds %struct.sv, %struct.sv* %839, i32 0, i32 0
  %840 = load i8*, i8** %sv_any790, align 8
  %841 = bitcast i8* %840 to %struct.xpvcv*
  %xcv_gv = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %841, i32 0, i32 12
  %842 = load %struct.gv*, %struct.gv** %xcv_gv, align 8
  call void @Perl_do_gvgv_dump(i32 %837, %struct._PerlIO** %838, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.327, i32 0, i32 0), %struct.gv* %842)
  %843 = load i32, i32* %level.addr, align 4
  %844 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %845 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any791 = getelementptr inbounds %struct.sv, %struct.sv* %845, i32 0, i32 0
  %846 = load i8*, i8** %sv_any791, align 8
  %847 = bitcast i8* %846 to %struct.xpvcv*
  %xcv_file = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %847, i32 0, i32 13
  %848 = load i8*, i8** %xcv_file, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %843, %struct._PerlIO** %844, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.328, i32 0, i32 0), i8* %848)
  %849 = load i32, i32* %level.addr, align 4
  %850 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %851 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any792 = getelementptr inbounds %struct.sv, %struct.sv* %851, i32 0, i32 0
  %852 = load i8*, i8** %sv_any792, align 8
  %853 = bitcast i8* %852 to %struct.xpvcv*
  %xcv_depth = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %853, i32 0, i32 14
  %854 = load i64, i64* %xcv_depth, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %849, %struct._PerlIO** %850, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.329, i32 0, i32 0), i64 %854)
  %855 = load i32, i32* %level.addr, align 4
  %856 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %857 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any793 = getelementptr inbounds %struct.sv, %struct.sv* %857, i32 0, i32 0
  %858 = load i8*, i8** %sv_any793, align 8
  %859 = bitcast i8* %858 to %struct.xpvcv*
  %xcv_flags794 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %859, i32 0, i32 17
  %860 = load i16, i16* %xcv_flags794, align 2
  %conv795 = zext i16 %860 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %855, %struct._PerlIO** %856, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.330, i32 0, i32 0), i64 %conv795)
  %861 = load i32, i32* %level.addr, align 4
  %862 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %863 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any796 = getelementptr inbounds %struct.sv, %struct.sv* %863, i32 0, i32 0
  %864 = load i8*, i8** %sv_any796, align 8
  %865 = bitcast i8* %864 to %struct.xpvcv*
  %xcv_outside_seq = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %865, i32 0, i32 18
  %866 = load i32, i32* %xcv_outside_seq, align 4
  %conv797 = zext i32 %866 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %861, %struct._PerlIO** %862, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.331, i32 0, i32 0), i64 %conv797)
  %867 = load i32, i32* %type, align 4
  %cmp798 = icmp eq i32 %867, 14
  br i1 %cmp798, label %if.then.800, label %if.end.802

if.then.800:                                      ; preds = %if.end.786
  %868 = load i32, i32* %level.addr, align 4
  %869 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %870 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any801 = getelementptr inbounds %struct.sv, %struct.sv* %870, i32 0, i32 0
  %871 = load i8*, i8** %sv_any801, align 8
  %872 = bitcast i8* %871 to %struct.xpvfm*
  %xfm_lines = getelementptr inbounds %struct.xpvfm, %struct.xpvfm* %872, i32 0, i32 19
  %873 = load i64, i64* %xfm_lines, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %868, %struct._PerlIO** %869, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.332, i32 0, i32 0), i64 %873)
  br label %if.end.802

if.end.802:                                       ; preds = %if.then.800, %if.end.786
  %874 = load i32, i32* %level.addr, align 4
  %875 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %876 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any803 = getelementptr inbounds %struct.sv, %struct.sv* %876, i32 0, i32 0
  %877 = load i8*, i8** %sv_any803, align 8
  %878 = bitcast i8* %877 to %struct.xpvcv*
  %xcv_padlist = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %878, i32 0, i32 15
  %879 = load %struct.av*, %struct.av** %xcv_padlist, align 8
  %880 = ptrtoint %struct.av* %879 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %874, %struct._PerlIO** %875, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.333, i32 0, i32 0), i64 %880)
  %881 = load i32, i32* %nest.addr, align 4
  %882 = load i32, i32* %maxnest.addr, align 4
  %cmp804 = icmp slt i32 %881, %882
  br i1 %cmp804, label %if.then.806, label %if.end.810

if.then.806:                                      ; preds = %if.end.802
  %883 = load i32, i32* %level.addr, align 4
  %add807 = add nsw i32 %883, 1
  %884 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %885 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any808 = getelementptr inbounds %struct.sv, %struct.sv* %885, i32 0, i32 0
  %886 = load i8*, i8** %sv_any808, align 8
  %887 = bitcast i8* %886 to %struct.xpvcv*
  %xcv_padlist809 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %887, i32 0, i32 15
  %888 = load %struct.av*, %struct.av** %xcv_padlist809, align 8
  call void @Perl_do_dump_pad(i32 %add807, %struct._PerlIO** %884, %struct.av* %888, i32 0)
  br label %if.end.810

if.end.810:                                       ; preds = %if.then.806, %if.end.802
  %889 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any811 = getelementptr inbounds %struct.sv, %struct.sv* %889, i32 0, i32 0
  %890 = load i8*, i8** %sv_any811, align 8
  %891 = bitcast i8* %890 to %struct.xpvcv*
  %xcv_outside = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %891, i32 0, i32 16
  %892 = load %struct.cv*, %struct.cv** %xcv_outside, align 8
  store %struct.cv* %892, %struct.cv** %outside, align 8
  %893 = load i32, i32* %level.addr, align 4
  %894 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %895 = load %struct.cv*, %struct.cv** %outside, align 8
  %896 = ptrtoint %struct.cv* %895 to i64
  %897 = load %struct.cv*, %struct.cv** %outside, align 8
  %tobool812 = icmp ne %struct.cv* %897, null
  br i1 %tobool812, label %cond.false.814, label %cond.true.813

cond.true.813:                                    ; preds = %if.end.810
  br label %cond.end.849

cond.false.814:                                   ; preds = %if.end.810
  %898 = load %struct.cv*, %struct.cv** %outside, align 8
  %sv_any815 = getelementptr inbounds %struct.cv, %struct.cv* %898, i32 0, i32 0
  %899 = load %struct.xpvcv*, %struct.xpvcv** %sv_any815, align 8
  %xcv_flags816 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %899, i32 0, i32 17
  %900 = load i16, i16* %xcv_flags816, align 2
  %conv817 = zext i16 %900 to i32
  %and818 = and i32 %conv817, 4
  %tobool819 = icmp ne i32 %and818, 0
  br i1 %tobool819, label %cond.true.820, label %cond.false.821

cond.true.820:                                    ; preds = %cond.false.814
  br label %cond.end.847

cond.false.821:                                   ; preds = %cond.false.814
  %901 = load %struct.cv*, %struct.cv** %outside, align 8
  %902 = load %struct.cv*, %struct.cv** @PL_main_cv, align 8
  %cmp822 = icmp eq %struct.cv* %901, %902
  br i1 %cmp822, label %cond.true.824, label %cond.false.825

cond.true.824:                                    ; preds = %cond.false.821
  br label %cond.end.845

cond.false.825:                                   ; preds = %cond.false.821
  %903 = load %struct.cv*, %struct.cv** %outside, align 8
  %sv_any826 = getelementptr inbounds %struct.cv, %struct.cv* %903, i32 0, i32 0
  %904 = load %struct.xpvcv*, %struct.xpvcv** %sv_any826, align 8
  %xcv_flags827 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %904, i32 0, i32 17
  %905 = load i16, i16* %xcv_flags827, align 2
  %conv828 = zext i16 %905 to i32
  %and829 = and i32 %conv828, 16
  %tobool830 = icmp ne i32 %and829, 0
  br i1 %tobool830, label %cond.true.831, label %cond.false.832

cond.true.831:                                    ; preds = %cond.false.825
  br label %cond.end.843

cond.false.832:                                   ; preds = %cond.false.825
  %906 = load %struct.cv*, %struct.cv** %outside, align 8
  %sv_any833 = getelementptr inbounds %struct.cv, %struct.cv* %906, i32 0, i32 0
  %907 = load %struct.xpvcv*, %struct.xpvcv** %sv_any833, align 8
  %xcv_gv834 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %907, i32 0, i32 12
  %908 = load %struct.gv*, %struct.gv** %xcv_gv834, align 8
  %tobool835 = icmp ne %struct.gv* %908, null
  br i1 %tobool835, label %cond.true.836, label %cond.false.840

cond.true.836:                                    ; preds = %cond.false.832
  %909 = load %struct.cv*, %struct.cv** %outside, align 8
  %sv_any837 = getelementptr inbounds %struct.cv, %struct.cv* %909, i32 0, i32 0
  %910 = load %struct.xpvcv*, %struct.xpvcv** %sv_any837, align 8
  %xcv_gv838 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %910, i32 0, i32 12
  %911 = load %struct.gv*, %struct.gv** %xcv_gv838, align 8
  %sv_any839 = getelementptr inbounds %struct.gv, %struct.gv* %911, i32 0, i32 0
  %912 = load %struct.xpvgv*, %struct.xpvgv** %sv_any839, align 8
  %xgv_name = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %912, i32 0, i32 8
  %913 = load i8*, i8** %xgv_name, align 8
  br label %cond.end.841

cond.false.840:                                   ; preds = %cond.false.832
  br label %cond.end.841

cond.end.841:                                     ; preds = %cond.false.840, %cond.true.836
  %cond842 = phi i8* [ %913, %cond.true.836 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.339, i32 0, i32 0), %cond.false.840 ]
  br label %cond.end.843

cond.end.843:                                     ; preds = %cond.end.841, %cond.true.831
  %cond844 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.338, i32 0, i32 0), %cond.true.831 ], [ %cond842, %cond.end.841 ]
  br label %cond.end.845

cond.end.845:                                     ; preds = %cond.end.843, %cond.true.824
  %cond846 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.337, i32 0, i32 0), %cond.true.824 ], [ %cond844, %cond.end.843 ]
  br label %cond.end.847

cond.end.847:                                     ; preds = %cond.end.845, %cond.true.820
  %cond848 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.336, i32 0, i32 0), %cond.true.820 ], [ %cond846, %cond.end.845 ]
  br label %cond.end.849

cond.end.849:                                     ; preds = %cond.end.847, %cond.true.813
  %cond850 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.335, i32 0, i32 0), %cond.true.813 ], [ %cond848, %cond.end.847 ]
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %893, %struct._PerlIO** %894, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.334, i32 0, i32 0), i64 %896, i8* %cond850)
  %914 = load i32, i32* %nest.addr, align 4
  %915 = load i32, i32* %maxnest.addr, align 4
  %cmp851 = icmp slt i32 %914, %915
  br i1 %cmp851, label %land.lhs.true.853, label %if.end.870

land.lhs.true.853:                                ; preds = %cond.end.849
  %916 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any854 = getelementptr inbounds %struct.sv, %struct.sv* %916, i32 0, i32 0
  %917 = load i8*, i8** %sv_any854, align 8
  %918 = bitcast i8* %917 to %struct.xpvcv*
  %xcv_flags855 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %918, i32 0, i32 17
  %919 = load i16, i16* %xcv_flags855, align 2
  %conv856 = zext i16 %919 to i32
  %and857 = and i32 %conv856, 1
  %tobool858 = icmp ne i32 %and857, 0
  br i1 %tobool858, label %if.then.865, label %lor.lhs.false.859

lor.lhs.false.859:                                ; preds = %land.lhs.true.853
  %920 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any860 = getelementptr inbounds %struct.sv, %struct.sv* %920, i32 0, i32 0
  %921 = load i8*, i8** %sv_any860, align 8
  %922 = bitcast i8* %921 to %struct.xpvcv*
  %xcv_flags861 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %922, i32 0, i32 17
  %923 = load i16, i16* %xcv_flags861, align 2
  %conv862 = zext i16 %923 to i32
  %and863 = and i32 %conv862, 2
  %tobool864 = icmp ne i32 %and863, 0
  br i1 %tobool864, label %if.then.865, label %if.end.870

if.then.865:                                      ; preds = %lor.lhs.false.859, %land.lhs.true.853
  %924 = load i32, i32* %level.addr, align 4
  %add866 = add nsw i32 %924, 1
  %925 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %926 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any867 = getelementptr inbounds %struct.sv, %struct.sv* %926, i32 0, i32 0
  %927 = load i8*, i8** %sv_any867, align 8
  %928 = bitcast i8* %927 to %struct.xpvcv*
  %xcv_outside868 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %928, i32 0, i32 16
  %929 = load %struct.cv*, %struct.cv** %xcv_outside868, align 8
  %930 = bitcast %struct.cv* %929 to %struct.sv*
  %931 = load i32, i32* %nest.addr, align 4
  %add869 = add nsw i32 %931, 1
  %932 = load i32, i32* %maxnest.addr, align 4
  %933 = load i8, i8* %dumpops.addr, align 1
  %934 = load i64, i64* %pvlim.addr, align 8
  call void @Perl_do_sv_dump(i32 %add866, %struct._PerlIO** %925, %struct.sv* %930, i32 %add869, i32 %932, i8 signext %933, i64 %934)
  br label %if.end.870

if.end.870:                                       ; preds = %if.then.865, %lor.lhs.false.859, %cond.end.849
  br label %sw.epilog.973

sw.bb.871:                                        ; preds = %if.end.468
  %935 = load i32, i32* %level.addr, align 4
  %936 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %937 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any872 = getelementptr inbounds %struct.sv, %struct.sv* %937, i32 0, i32 0
  %938 = load i8*, i8** %sv_any872, align 8
  %939 = bitcast i8* %938 to %struct.xpvgv*
  %xgv_name873 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %939, i32 0, i32 8
  %940 = load i8*, i8** %xgv_name873, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %935, %struct._PerlIO** %936, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.316, i32 0, i32 0), i8* %940)
  %941 = load i32, i32* %level.addr, align 4
  %942 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %943 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any874 = getelementptr inbounds %struct.sv, %struct.sv* %943, i32 0, i32 0
  %944 = load i8*, i8** %sv_any874, align 8
  %945 = bitcast i8* %944 to %struct.xpvgv*
  %xgv_namelen = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %945, i32 0, i32 9
  %946 = load i64, i64* %xgv_namelen, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %941, %struct._PerlIO** %942, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.340, i32 0, i32 0), i64 %946)
  %947 = load i32, i32* %level.addr, align 4
  %948 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %949 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any875 = getelementptr inbounds %struct.sv, %struct.sv* %949, i32 0, i32 0
  %950 = load i8*, i8** %sv_any875, align 8
  %951 = bitcast i8* %950 to %struct.xpvgv*
  %xgv_stash = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %951, i32 0, i32 10
  %952 = load %struct.hv*, %struct.hv** %xgv_stash, align 8
  call void @Perl_do_hv_dump(i32 %947, %struct._PerlIO** %948, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.341, i32 0, i32 0), %struct.hv* %952)
  %953 = load i32, i32* %level.addr, align 4
  %954 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %955 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any876 = getelementptr inbounds %struct.sv, %struct.sv* %955, i32 0, i32 0
  %956 = load i8*, i8** %sv_any876, align 8
  %957 = bitcast i8* %956 to %struct.xpvgv*
  %xgv_gp877 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %957, i32 0, i32 7
  %958 = load %struct.gp*, %struct.gp** %xgv_gp877, align 8
  %959 = ptrtoint %struct.gp* %958 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %953, %struct._PerlIO** %954, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.342, i32 0, i32 0), i64 %959)
  %960 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any878 = getelementptr inbounds %struct.sv, %struct.sv* %960, i32 0, i32 0
  %961 = load i8*, i8** %sv_any878, align 8
  %962 = bitcast i8* %961 to %struct.xpvgv*
  %xgv_gp879 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %962, i32 0, i32 7
  %963 = load %struct.gp*, %struct.gp** %xgv_gp879, align 8
  %tobool880 = icmp ne %struct.gp* %963, null
  br i1 %tobool880, label %if.end.882, label %if.then.881

if.then.881:                                      ; preds = %sw.bb.871
  br label %sw.epilog.973

if.end.882:                                       ; preds = %sw.bb.871
  %964 = load i32, i32* %level.addr, align 4
  %965 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %966 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any883 = getelementptr inbounds %struct.sv, %struct.sv* %966, i32 0, i32 0
  %967 = load i8*, i8** %sv_any883, align 8
  %968 = bitcast i8* %967 to %struct.xpvgv*
  %xgv_gp884 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %968, i32 0, i32 7
  %969 = load %struct.gp*, %struct.gp** %xgv_gp884, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %969, i32 0, i32 0
  %970 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  %971 = ptrtoint %struct.sv* %970 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %964, %struct._PerlIO** %965, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.343, i32 0, i32 0), i64 %971)
  %972 = load i32, i32* %level.addr, align 4
  %973 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %974 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any885 = getelementptr inbounds %struct.sv, %struct.sv* %974, i32 0, i32 0
  %975 = load i8*, i8** %sv_any885, align 8
  %976 = bitcast i8* %975 to %struct.xpvgv*
  %xgv_gp886 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %976, i32 0, i32 7
  %977 = load %struct.gp*, %struct.gp** %xgv_gp886, align 8
  %gp_refcnt = getelementptr inbounds %struct.gp, %struct.gp* %977, i32 0, i32 1
  %978 = load i32, i32* %gp_refcnt, align 4
  %conv887 = zext i32 %978 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %972, %struct._PerlIO** %973, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.344, i32 0, i32 0), i64 %conv887)
  %979 = load i32, i32* %level.addr, align 4
  %980 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %981 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any888 = getelementptr inbounds %struct.sv, %struct.sv* %981, i32 0, i32 0
  %982 = load i8*, i8** %sv_any888, align 8
  %983 = bitcast i8* %982 to %struct.xpvgv*
  %xgv_gp889 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %983, i32 0, i32 7
  %984 = load %struct.gp*, %struct.gp** %xgv_gp889, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %984, i32 0, i32 2
  %985 = load %struct.io*, %struct.io** %gp_io, align 8
  %986 = ptrtoint %struct.io* %985 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %979, %struct._PerlIO** %980, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.345, i32 0, i32 0), i64 %986)
  %987 = load i32, i32* %level.addr, align 4
  %988 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %989 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any890 = getelementptr inbounds %struct.sv, %struct.sv* %989, i32 0, i32 0
  %990 = load i8*, i8** %sv_any890, align 8
  %991 = bitcast i8* %990 to %struct.xpvgv*
  %xgv_gp891 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %991, i32 0, i32 7
  %992 = load %struct.gp*, %struct.gp** %xgv_gp891, align 8
  %gp_form = getelementptr inbounds %struct.gp, %struct.gp* %992, i32 0, i32 3
  %993 = load %struct.cv*, %struct.cv** %gp_form, align 8
  %994 = ptrtoint %struct.cv* %993 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %987, %struct._PerlIO** %988, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.346, i32 0, i32 0), i64 %994)
  %995 = load i32, i32* %level.addr, align 4
  %996 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %997 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any892 = getelementptr inbounds %struct.sv, %struct.sv* %997, i32 0, i32 0
  %998 = load i8*, i8** %sv_any892, align 8
  %999 = bitcast i8* %998 to %struct.xpvgv*
  %xgv_gp893 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %999, i32 0, i32 7
  %1000 = load %struct.gp*, %struct.gp** %xgv_gp893, align 8
  %gp_av = getelementptr inbounds %struct.gp, %struct.gp* %1000, i32 0, i32 4
  %1001 = load %struct.av*, %struct.av** %gp_av, align 8
  %1002 = ptrtoint %struct.av* %1001 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %995, %struct._PerlIO** %996, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.347, i32 0, i32 0), i64 %1002)
  %1003 = load i32, i32* %level.addr, align 4
  %1004 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %1005 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any894 = getelementptr inbounds %struct.sv, %struct.sv* %1005, i32 0, i32 0
  %1006 = load i8*, i8** %sv_any894, align 8
  %1007 = bitcast i8* %1006 to %struct.xpvgv*
  %xgv_gp895 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %1007, i32 0, i32 7
  %1008 = load %struct.gp*, %struct.gp** %xgv_gp895, align 8
  %gp_hv = getelementptr inbounds %struct.gp, %struct.gp* %1008, i32 0, i32 5
  %1009 = load %struct.hv*, %struct.hv** %gp_hv, align 8
  %1010 = ptrtoint %struct.hv* %1009 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %1003, %struct._PerlIO** %1004, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.348, i32 0, i32 0), i64 %1010)
  %1011 = load i32, i32* %level.addr, align 4
  %1012 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %1013 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any896 = getelementptr inbounds %struct.sv, %struct.sv* %1013, i32 0, i32 0
  %1014 = load i8*, i8** %sv_any896, align 8
  %1015 = bitcast i8* %1014 to %struct.xpvgv*
  %xgv_gp897 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %1015, i32 0, i32 7
  %1016 = load %struct.gp*, %struct.gp** %xgv_gp897, align 8
  %gp_cv = getelementptr inbounds %struct.gp, %struct.gp* %1016, i32 0, i32 7
  %1017 = load %struct.cv*, %struct.cv** %gp_cv, align 8
  %1018 = ptrtoint %struct.cv* %1017 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %1011, %struct._PerlIO** %1012, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.349, i32 0, i32 0), i64 %1018)
  %1019 = load i32, i32* %level.addr, align 4
  %1020 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %1021 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any898 = getelementptr inbounds %struct.sv, %struct.sv* %1021, i32 0, i32 0
  %1022 = load i8*, i8** %sv_any898, align 8
  %1023 = bitcast i8* %1022 to %struct.xpvgv*
  %xgv_gp899 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %1023, i32 0, i32 7
  %1024 = load %struct.gp*, %struct.gp** %xgv_gp899, align 8
  %gp_cvgen = getelementptr inbounds %struct.gp, %struct.gp* %1024, i32 0, i32 8
  %1025 = load i32, i32* %gp_cvgen, align 4
  %conv900 = zext i32 %1025 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %1019, %struct._PerlIO** %1020, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.350, i32 0, i32 0), i64 %conv900)
  %1026 = load i32, i32* %level.addr, align 4
  %1027 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %1028 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any901 = getelementptr inbounds %struct.sv, %struct.sv* %1028, i32 0, i32 0
  %1029 = load i8*, i8** %sv_any901, align 8
  %1030 = bitcast i8* %1029 to %struct.xpvgv*
  %xgv_gp902 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %1030, i32 0, i32 7
  %1031 = load %struct.gp*, %struct.gp** %xgv_gp902, align 8
  %gp_flags903 = getelementptr inbounds %struct.gp, %struct.gp* %1031, i32 0, i32 9
  %1032 = load i32, i32* %gp_flags903, align 4
  %conv904 = zext i32 %1032 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %1026, %struct._PerlIO** %1027, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.351, i32 0, i32 0), i64 %conv904)
  %1033 = load i32, i32* %level.addr, align 4
  %1034 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %1035 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any905 = getelementptr inbounds %struct.sv, %struct.sv* %1035, i32 0, i32 0
  %1036 = load i8*, i8** %sv_any905, align 8
  %1037 = bitcast i8* %1036 to %struct.xpvgv*
  %xgv_gp906 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %1037, i32 0, i32 7
  %1038 = load %struct.gp*, %struct.gp** %xgv_gp906, align 8
  %gp_line = getelementptr inbounds %struct.gp, %struct.gp* %1038, i32 0, i32 10
  %1039 = load i32, i32* %gp_line, align 4
  %conv907 = zext i32 %1039 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %1033, %struct._PerlIO** %1034, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.352, i32 0, i32 0), i64 %conv907)
  %1040 = load i32, i32* %level.addr, align 4
  %1041 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %1042 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any908 = getelementptr inbounds %struct.sv, %struct.sv* %1042, i32 0, i32 0
  %1043 = load i8*, i8** %sv_any908, align 8
  %1044 = bitcast i8* %1043 to %struct.xpvgv*
  %xgv_gp909 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %1044, i32 0, i32 7
  %1045 = load %struct.gp*, %struct.gp** %xgv_gp909, align 8
  %gp_file = getelementptr inbounds %struct.gp, %struct.gp* %1045, i32 0, i32 11
  %1046 = load i8*, i8** %gp_file, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %1040, %struct._PerlIO** %1041, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.353, i32 0, i32 0), i8* %1046)
  %1047 = load i32, i32* %level.addr, align 4
  %1048 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %1049 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any910 = getelementptr inbounds %struct.sv, %struct.sv* %1049, i32 0, i32 0
  %1050 = load i8*, i8** %sv_any910, align 8
  %1051 = bitcast i8* %1050 to %struct.xpvgv*
  %xgv_flags911 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %1051, i32 0, i32 11
  %1052 = load i8, i8* %xgv_flags911, align 1
  %conv912 = zext i8 %1052 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %1047, %struct._PerlIO** %1048, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.354, i32 0, i32 0), i64 %conv912)
  %1053 = load i32, i32* %level.addr, align 4
  %1054 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %1055 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any913 = getelementptr inbounds %struct.sv, %struct.sv* %1055, i32 0, i32 0
  %1056 = load i8*, i8** %sv_any913, align 8
  %1057 = bitcast i8* %1056 to %struct.xpvgv*
  %xgv_gp914 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %1057, i32 0, i32 7
  %1058 = load %struct.gp*, %struct.gp** %xgv_gp914, align 8
  %gp_egv = getelementptr inbounds %struct.gp, %struct.gp* %1058, i32 0, i32 6
  %1059 = load %struct.gv*, %struct.gv** %gp_egv, align 8
  call void @Perl_do_gv_dump(i32 %1053, %struct._PerlIO** %1054, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.355, i32 0, i32 0), %struct.gv* %1059)
  br label %sw.epilog.973

sw.bb.915:                                        ; preds = %if.end.468
  %1060 = load i32, i32* %level.addr, align 4
  %1061 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %1062 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any916 = getelementptr inbounds %struct.sv, %struct.sv* %1062, i32 0, i32 0
  %1063 = load i8*, i8** %sv_any916, align 8
  %1064 = bitcast i8* %1063 to %struct.xpvio*
  %xio_ifp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %1064, i32 0, i32 7
  %1065 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp, align 8
  %1066 = ptrtoint %struct._PerlIO** %1065 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %1060, %struct._PerlIO** %1061, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.356, i32 0, i32 0), i64 %1066)
  %1067 = load i32, i32* %level.addr, align 4
  %1068 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %1069 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any917 = getelementptr inbounds %struct.sv, %struct.sv* %1069, i32 0, i32 0
  %1070 = load i8*, i8** %sv_any917, align 8
  %1071 = bitcast i8* %1070 to %struct.xpvio*
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %1071, i32 0, i32 8
  %1072 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  %1073 = ptrtoint %struct._PerlIO** %1072 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %1067, %struct._PerlIO** %1068, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.357, i32 0, i32 0), i64 %1073)
  %1074 = load i32, i32* %level.addr, align 4
  %1075 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %1076 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any918 = getelementptr inbounds %struct.sv, %struct.sv* %1076, i32 0, i32 0
  %1077 = load i8*, i8** %sv_any918, align 8
  %1078 = bitcast i8* %1077 to %struct.xpvio*
  %xio_dirpu = getelementptr inbounds %struct.xpvio, %struct.xpvio* %1078, i32 0, i32 9
  %xiou_dirp = bitcast %union.anon* %xio_dirpu to %struct.__dirstream**
  %1079 = load %struct.__dirstream*, %struct.__dirstream** %xiou_dirp, align 8
  %1080 = ptrtoint %struct.__dirstream* %1079 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %1074, %struct._PerlIO** %1075, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.358, i32 0, i32 0), i64 %1080)
  %1081 = load i32, i32* %level.addr, align 4
  %1082 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %1083 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any919 = getelementptr inbounds %struct.sv, %struct.sv* %1083, i32 0, i32 0
  %1084 = load i8*, i8** %sv_any919, align 8
  %1085 = bitcast i8* %1084 to %struct.xpvio*
  %xio_lines = getelementptr inbounds %struct.xpvio, %struct.xpvio* %1085, i32 0, i32 10
  %1086 = load i64, i64* %xio_lines, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %1081, %struct._PerlIO** %1082, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.332, i32 0, i32 0), i64 %1086)
  %1087 = load i32, i32* %level.addr, align 4
  %1088 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %1089 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any920 = getelementptr inbounds %struct.sv, %struct.sv* %1089, i32 0, i32 0
  %1090 = load i8*, i8** %sv_any920, align 8
  %1091 = bitcast i8* %1090 to %struct.xpvio*
  %xio_page = getelementptr inbounds %struct.xpvio, %struct.xpvio* %1091, i32 0, i32 11
  %1092 = load i64, i64* %xio_page, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %1087, %struct._PerlIO** %1088, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.359, i32 0, i32 0), i64 %1092)
  %1093 = load i32, i32* %level.addr, align 4
  %1094 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %1095 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any921 = getelementptr inbounds %struct.sv, %struct.sv* %1095, i32 0, i32 0
  %1096 = load i8*, i8** %sv_any921, align 8
  %1097 = bitcast i8* %1096 to %struct.xpvio*
  %xio_page_len = getelementptr inbounds %struct.xpvio, %struct.xpvio* %1097, i32 0, i32 12
  %1098 = load i64, i64* %xio_page_len, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %1093, %struct._PerlIO** %1094, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.360, i32 0, i32 0), i64 %1098)
  %1099 = load i32, i32* %level.addr, align 4
  %1100 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %1101 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any922 = getelementptr inbounds %struct.sv, %struct.sv* %1101, i32 0, i32 0
  %1102 = load i8*, i8** %sv_any922, align 8
  %1103 = bitcast i8* %1102 to %struct.xpvio*
  %xio_lines_left = getelementptr inbounds %struct.xpvio, %struct.xpvio* %1103, i32 0, i32 13
  %1104 = load i64, i64* %xio_lines_left, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %1099, %struct._PerlIO** %1100, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.361, i32 0, i32 0), i64 %1104)
  %1105 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any923 = getelementptr inbounds %struct.sv, %struct.sv* %1105, i32 0, i32 0
  %1106 = load i8*, i8** %sv_any923, align 8
  %1107 = bitcast i8* %1106 to %struct.xpvio*
  %xio_top_name = getelementptr inbounds %struct.xpvio, %struct.xpvio* %1107, i32 0, i32 14
  %1108 = load i8*, i8** %xio_top_name, align 8
  %tobool924 = icmp ne i8* %1108, null
  br i1 %tobool924, label %if.then.925, label %if.end.928

if.then.925:                                      ; preds = %sw.bb.915
  %1109 = load i32, i32* %level.addr, align 4
  %1110 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %1111 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any926 = getelementptr inbounds %struct.sv, %struct.sv* %1111, i32 0, i32 0
  %1112 = load i8*, i8** %sv_any926, align 8
  %1113 = bitcast i8* %1112 to %struct.xpvio*
  %xio_top_name927 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %1113, i32 0, i32 14
  %1114 = load i8*, i8** %xio_top_name927, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %1109, %struct._PerlIO** %1110, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.362, i32 0, i32 0), i8* %1114)
  br label %if.end.928

if.end.928:                                       ; preds = %if.then.925, %sw.bb.915
  %1115 = load i32, i32* %level.addr, align 4
  %1116 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %1117 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any929 = getelementptr inbounds %struct.sv, %struct.sv* %1117, i32 0, i32 0
  %1118 = load i8*, i8** %sv_any929, align 8
  %1119 = bitcast i8* %1118 to %struct.xpvio*
  %xio_top_gv = getelementptr inbounds %struct.xpvio, %struct.xpvio* %1119, i32 0, i32 15
  %1120 = load %struct.gv*, %struct.gv** %xio_top_gv, align 8
  call void @Perl_do_gv_dump(i32 %1115, %struct._PerlIO** %1116, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.363, i32 0, i32 0), %struct.gv* %1120)
  %1121 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any930 = getelementptr inbounds %struct.sv, %struct.sv* %1121, i32 0, i32 0
  %1122 = load i8*, i8** %sv_any930, align 8
  %1123 = bitcast i8* %1122 to %struct.xpvio*
  %xio_fmt_name = getelementptr inbounds %struct.xpvio, %struct.xpvio* %1123, i32 0, i32 16
  %1124 = load i8*, i8** %xio_fmt_name, align 8
  %tobool931 = icmp ne i8* %1124, null
  br i1 %tobool931, label %if.then.932, label %if.end.935

if.then.932:                                      ; preds = %if.end.928
  %1125 = load i32, i32* %level.addr, align 4
  %1126 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %1127 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any933 = getelementptr inbounds %struct.sv, %struct.sv* %1127, i32 0, i32 0
  %1128 = load i8*, i8** %sv_any933, align 8
  %1129 = bitcast i8* %1128 to %struct.xpvio*
  %xio_fmt_name934 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %1129, i32 0, i32 16
  %1130 = load i8*, i8** %xio_fmt_name934, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %1125, %struct._PerlIO** %1126, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.364, i32 0, i32 0), i8* %1130)
  br label %if.end.935

if.end.935:                                       ; preds = %if.then.932, %if.end.928
  %1131 = load i32, i32* %level.addr, align 4
  %1132 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %1133 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any936 = getelementptr inbounds %struct.sv, %struct.sv* %1133, i32 0, i32 0
  %1134 = load i8*, i8** %sv_any936, align 8
  %1135 = bitcast i8* %1134 to %struct.xpvio*
  %xio_fmt_gv = getelementptr inbounds %struct.xpvio, %struct.xpvio* %1135, i32 0, i32 17
  %1136 = load %struct.gv*, %struct.gv** %xio_fmt_gv, align 8
  call void @Perl_do_gv_dump(i32 %1131, %struct._PerlIO** %1132, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.365, i32 0, i32 0), %struct.gv* %1136)
  %1137 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any937 = getelementptr inbounds %struct.sv, %struct.sv* %1137, i32 0, i32 0
  %1138 = load i8*, i8** %sv_any937, align 8
  %1139 = bitcast i8* %1138 to %struct.xpvio*
  %xio_bottom_name = getelementptr inbounds %struct.xpvio, %struct.xpvio* %1139, i32 0, i32 18
  %1140 = load i8*, i8** %xio_bottom_name, align 8
  %tobool938 = icmp ne i8* %1140, null
  br i1 %tobool938, label %if.then.939, label %if.end.942

if.then.939:                                      ; preds = %if.end.935
  %1141 = load i32, i32* %level.addr, align 4
  %1142 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %1143 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any940 = getelementptr inbounds %struct.sv, %struct.sv* %1143, i32 0, i32 0
  %1144 = load i8*, i8** %sv_any940, align 8
  %1145 = bitcast i8* %1144 to %struct.xpvio*
  %xio_bottom_name941 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %1145, i32 0, i32 18
  %1146 = load i8*, i8** %xio_bottom_name941, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %1141, %struct._PerlIO** %1142, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.366, i32 0, i32 0), i8* %1146)
  br label %if.end.942

if.end.942:                                       ; preds = %if.then.939, %if.end.935
  %1147 = load i32, i32* %level.addr, align 4
  %1148 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %1149 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any943 = getelementptr inbounds %struct.sv, %struct.sv* %1149, i32 0, i32 0
  %1150 = load i8*, i8** %sv_any943, align 8
  %1151 = bitcast i8* %1150 to %struct.xpvio*
  %xio_bottom_gv = getelementptr inbounds %struct.xpvio, %struct.xpvio* %1151, i32 0, i32 19
  %1152 = load %struct.gv*, %struct.gv** %xio_bottom_gv, align 8
  call void @Perl_do_gv_dump(i32 %1147, %struct._PerlIO** %1148, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.367, i32 0, i32 0), %struct.gv* %1152)
  %1153 = load i32, i32* %level.addr, align 4
  %1154 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %1155 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any944 = getelementptr inbounds %struct.sv, %struct.sv* %1155, i32 0, i32 0
  %1156 = load i8*, i8** %sv_any944, align 8
  %1157 = bitcast i8* %1156 to %struct.xpvio*
  %xio_subprocess = getelementptr inbounds %struct.xpvio, %struct.xpvio* %1157, i32 0, i32 20
  %1158 = load i16, i16* %xio_subprocess, align 2
  %conv945 = sext i16 %1158 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %1153, %struct._PerlIO** %1154, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.368, i32 0, i32 0), i64 %conv945)
  %1159 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any946 = getelementptr inbounds %struct.sv, %struct.sv* %1159, i32 0, i32 0
  %1160 = load i8*, i8** %sv_any946, align 8
  %1161 = bitcast i8* %1160 to %struct.xpvio*
  %xio_type = getelementptr inbounds %struct.xpvio, %struct.xpvio* %1161, i32 0, i32 21
  %1162 = load i8, i8* %xio_type, align 1
  %conv947 = sext i8 %1162 to i32
  %cmp948 = icmp sgt i32 %conv947, 32
  br i1 %cmp948, label %land.lhs.true.950, label %lor.lhs.false.956

land.lhs.true.950:                                ; preds = %if.end.942
  %1163 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any951 = getelementptr inbounds %struct.sv, %struct.sv* %1163, i32 0, i32 0
  %1164 = load i8*, i8** %sv_any951, align 8
  %1165 = bitcast i8* %1164 to %struct.xpvio*
  %xio_type952 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %1165, i32 0, i32 21
  %1166 = load i8, i8* %xio_type952, align 1
  %conv953 = sext i8 %1166 to i32
  %cmp954 = icmp slt i32 %conv953, 127
  br i1 %cmp954, label %if.then.962, label %lor.lhs.false.956

lor.lhs.false.956:                                ; preds = %land.lhs.true.950, %if.end.942
  %1167 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any957 = getelementptr inbounds %struct.sv, %struct.sv* %1167, i32 0, i32 0
  %1168 = load i8*, i8** %sv_any957, align 8
  %1169 = bitcast i8* %1168 to %struct.xpvio*
  %xio_type958 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %1169, i32 0, i32 21
  %1170 = load i8, i8* %xio_type958, align 1
  %conv959 = sext i8 %1170 to i32
  %cmp960 = icmp eq i32 %conv959, 32
  br i1 %cmp960, label %if.then.962, label %if.else.966

if.then.962:                                      ; preds = %lor.lhs.false.956, %land.lhs.true.950
  %1171 = load i32, i32* %level.addr, align 4
  %1172 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %1173 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any963 = getelementptr inbounds %struct.sv, %struct.sv* %1173, i32 0, i32 0
  %1174 = load i8*, i8** %sv_any963, align 8
  %1175 = bitcast i8* %1174 to %struct.xpvio*
  %xio_type964 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %1175, i32 0, i32 21
  %1176 = load i8, i8* %xio_type964, align 1
  %conv965 = sext i8 %1176 to i32
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %1171, %struct._PerlIO** %1172, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.369, i32 0, i32 0), i32 %conv965)
  br label %if.end.970

if.else.966:                                      ; preds = %lor.lhs.false.956
  %1177 = load i32, i32* %level.addr, align 4
  %1178 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %1179 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any967 = getelementptr inbounds %struct.sv, %struct.sv* %1179, i32 0, i32 0
  %1180 = load i8*, i8** %sv_any967, align 8
  %1181 = bitcast i8* %1180 to %struct.xpvio*
  %xio_type968 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %1181, i32 0, i32 21
  %1182 = load i8, i8* %xio_type968, align 1
  %conv969 = sext i8 %1182 to i32
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %1177, %struct._PerlIO** %1178, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.370, i32 0, i32 0), i32 %conv969)
  br label %if.end.970

if.end.970:                                       ; preds = %if.else.966, %if.then.962
  %1183 = load i32, i32* %level.addr, align 4
  %1184 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %1185 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any971 = getelementptr inbounds %struct.sv, %struct.sv* %1185, i32 0, i32 0
  %1186 = load i8*, i8** %sv_any971, align 8
  %1187 = bitcast i8* %1186 to %struct.xpvio*
  %xio_flags = getelementptr inbounds %struct.xpvio, %struct.xpvio* %1187, i32 0, i32 22
  %1188 = load i8, i8* %xio_flags, align 1
  %conv972 = sext i8 %1188 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %1183, %struct._PerlIO** %1184, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.330, i32 0, i32 0), i64 %conv972)
  br label %sw.epilog.973

sw.epilog.973:                                    ; preds = %if.end.468, %if.end.970, %if.end.882, %if.then.881, %if.end.870, %if.end.746, %if.end.553, %if.end.491
  %1189 = load %struct.sv*, %struct.sv** %d, align 8
  call void @Perl_sv_free(%struct.sv* %1189)
  br label %return

return:                                           ; preds = %sw.epilog.973, %if.then.404, %sw.default.356, %sw.bb.324, %if.then
  ret void
}

declare i32 @PerlIO_puts(%struct._PerlIO**, i8*) #2

; Function Attrs: nounwind uwtable
define void @Perl_magic_dump(%struct.magic* %mg) #0 {
entry:
  %mg.addr = alloca %struct.magic*, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %call = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %0 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  call void @Perl_do_magic_dump(i32 0, %struct._PerlIO** %call, %struct.magic* %0, i32 0, i32 0, i8 signext 0, i64 0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_do_hv_dump(i32 %level, %struct._PerlIO** %file, i8* %name, %struct.hv* %sv) #0 {
entry:
  %level.addr = alloca i32, align 4
  %file.addr = alloca %struct._PerlIO**, align 8
  %name.addr = alloca i8*, align 8
  %sv.addr = alloca %struct.hv*, align 8
  store i32 %level, i32* %level.addr, align 4
  store %struct._PerlIO** %file, %struct._PerlIO*** %file.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.hv* %sv, %struct.hv** %sv.addr, align 8
  %0 = load i32, i32* %level.addr, align 4
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %2 = load i8*, i8** %name.addr, align 8
  %3 = load %struct.hv*, %struct.hv** %sv.addr, align 8
  %4 = ptrtoint %struct.hv* %3 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %0, %struct._PerlIO** %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.199, i32 0, i32 0), i8* %2, i64 %4)
  %5 = load %struct.hv*, %struct.hv** %sv.addr, align 8
  %tobool = icmp ne %struct.hv* %5, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.hv*, %struct.hv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.hv, %struct.hv* %6, i32 0, i32 0
  %7 = load %struct.xpvhv*, %struct.xpvhv** %sv_any, align 8
  %xhv_name = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %7, i32 0, i32 10
  %8 = load i8*, i8** %xhv_name, align 8
  %tobool1 = icmp ne i8* %8, null
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %10 = load %struct.hv*, %struct.hv** %sv.addr, align 8
  %sv_any2 = getelementptr inbounds %struct.hv, %struct.hv* %10, i32 0, i32 0
  %11 = load %struct.xpvhv*, %struct.xpvhv** %sv_any2, align 8
  %xhv_name3 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %11, i32 0, i32 10
  %12 = load i8*, i8** %xhv_name3, align 8
  %call = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.200, i32 0, i32 0), i8* %12)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %13 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %call4 = call i32 @PerlIO_putc(%struct._PerlIO** %13, i32 10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_do_gv_dump(i32 %level, %struct._PerlIO** %file, i8* %name, %struct.gv* %sv) #0 {
entry:
  %level.addr = alloca i32, align 4
  %file.addr = alloca %struct._PerlIO**, align 8
  %name.addr = alloca i8*, align 8
  %sv.addr = alloca %struct.gv*, align 8
  store i32 %level, i32* %level.addr, align 4
  store %struct._PerlIO** %file, %struct._PerlIO*** %file.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.gv* %sv, %struct.gv** %sv.addr, align 8
  %0 = load i32, i32* %level.addr, align 4
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %2 = load i8*, i8** %name.addr, align 8
  %3 = load %struct.gv*, %struct.gv** %sv.addr, align 8
  %4 = ptrtoint %struct.gv* %3 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %0, %struct._PerlIO** %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.199, i32 0, i32 0), i8* %2, i64 %4)
  %5 = load %struct.gv*, %struct.gv** %sv.addr, align 8
  %tobool = icmp ne %struct.gv* %5, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.gv*, %struct.gv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %6, i32 0, i32 0
  %7 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_name = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %7, i32 0, i32 8
  %8 = load i8*, i8** %xgv_name, align 8
  %tobool1 = icmp ne i8* %8, null
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %10 = load %struct.gv*, %struct.gv** %sv.addr, align 8
  %sv_any2 = getelementptr inbounds %struct.gv, %struct.gv* %10, i32 0, i32 0
  %11 = load %struct.xpvgv*, %struct.xpvgv** %sv_any2, align 8
  %xgv_name3 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %11, i32 0, i32 8
  %12 = load i8*, i8** %xgv_name3, align 8
  %call = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.200, i32 0, i32 0), i8* %12)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %13 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %call4 = call i32 @PerlIO_putc(%struct._PerlIO** %13, i32 10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_do_gvgv_dump(i32 %level, %struct._PerlIO** %file, i8* %name, %struct.gv* %sv) #0 {
entry:
  %level.addr = alloca i32, align 4
  %file.addr = alloca %struct._PerlIO**, align 8
  %name.addr = alloca i8*, align 8
  %sv.addr = alloca %struct.gv*, align 8
  store i32 %level, i32* %level.addr, align 4
  store %struct._PerlIO** %file, %struct._PerlIO*** %file.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.gv* %sv, %struct.gv** %sv.addr, align 8
  %0 = load i32, i32* %level.addr, align 4
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %2 = load i8*, i8** %name.addr, align 8
  %3 = load %struct.gv*, %struct.gv** %sv.addr, align 8
  %4 = ptrtoint %struct.gv* %3 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %0, %struct._PerlIO** %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.199, i32 0, i32 0), i8* %2, i64 %4)
  %5 = load %struct.gv*, %struct.gv** %sv.addr, align 8
  %tobool = icmp ne %struct.gv* %5, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.gv*, %struct.gv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %6, i32 0, i32 0
  %7 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_name = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %7, i32 0, i32 8
  %8 = load i8*, i8** %xgv_name, align 8
  %tobool1 = icmp ne i8* %8, null
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %call = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.201, i32 0, i32 0))
  %10 = load %struct.gv*, %struct.gv** %sv.addr, align 8
  %sv_any2 = getelementptr inbounds %struct.gv, %struct.gv* %10, i32 0, i32 0
  %11 = load %struct.xpvgv*, %struct.xpvgv** %sv_any2, align 8
  %xgv_stash = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %11, i32 0, i32 10
  %12 = load %struct.hv*, %struct.hv** %xgv_stash, align 8
  %tobool3 = icmp ne %struct.hv* %12, null
  br i1 %tobool3, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %if.then
  %13 = load %struct.gv*, %struct.gv** %sv.addr, align 8
  %sv_any5 = getelementptr inbounds %struct.gv, %struct.gv* %13, i32 0, i32 0
  %14 = load %struct.xpvgv*, %struct.xpvgv** %sv_any5, align 8
  %xgv_stash6 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %14, i32 0, i32 10
  %15 = load %struct.hv*, %struct.hv** %xgv_stash6, align 8
  %sv_any7 = getelementptr inbounds %struct.hv, %struct.hv* %15, i32 0, i32 0
  %16 = load %struct.xpvhv*, %struct.xpvhv** %sv_any7, align 8
  %xhv_name = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %16, i32 0, i32 10
  %17 = load i8*, i8** %xhv_name, align 8
  %tobool8 = icmp ne i8* %17, null
  br i1 %tobool8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %land.lhs.true.4
  %18 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %19 = load %struct.gv*, %struct.gv** %sv.addr, align 8
  %sv_any10 = getelementptr inbounds %struct.gv, %struct.gv* %19, i32 0, i32 0
  %20 = load %struct.xpvgv*, %struct.xpvgv** %sv_any10, align 8
  %xgv_stash11 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %20, i32 0, i32 10
  %21 = load %struct.hv*, %struct.hv** %xgv_stash11, align 8
  %sv_any12 = getelementptr inbounds %struct.hv, %struct.hv* %21, i32 0, i32 0
  %22 = load %struct.xpvhv*, %struct.xpvhv** %sv_any12, align 8
  %xhv_name13 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %22, i32 0, i32 10
  %23 = load i8*, i8** %xhv_name13, align 8
  %call14 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.202, i32 0, i32 0), i8* %23)
  br label %if.end

if.end:                                           ; preds = %if.then.9, %land.lhs.true.4, %if.then
  %24 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %25 = load %struct.gv*, %struct.gv** %sv.addr, align 8
  %sv_any15 = getelementptr inbounds %struct.gv, %struct.gv* %25, i32 0, i32 0
  %26 = load %struct.xpvgv*, %struct.xpvgv** %sv_any15, align 8
  %xgv_name16 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %26, i32 0, i32 8
  %27 = load i8*, i8** %xgv_name16, align 8
  %call17 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.203, i32 0, i32 0), i8* %27)
  br label %if.end.19

if.else:                                          ; preds = %land.lhs.true, %entry
  %28 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %call18 = call i32 @PerlIO_putc(%struct._PerlIO** %28, i32 10)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.end
  ret void
}

declare %struct.sv* @Perl_newSVpvf(i8*, ...) #2

declare void @Perl_sv_setpv(%struct.sv*, i8*) #2

declare i32 @Perl_av_len(%struct.av*) #2

declare %struct.sv** @Perl_av_fetch(%struct.av*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare i32 @Perl_hv_iterinit(%struct.hv*) #2

declare %struct.he* @Perl_hv_iternext_flags(%struct.hv*, i32) #2

declare %struct.sv* @Perl_hv_iterkeysv(%struct.he*) #2

declare %struct.sv* @Perl_hv_iterval(%struct.hv*, %struct.he*) #2

declare i8* @Perl_sv_2pv_nolen(%struct.sv*) #2

declare void @Perl_do_dump_pad(i32, %struct._PerlIO**, %struct.av*, i32) #2

; Function Attrs: nounwind uwtable
define void @Perl_sv_dump(%struct.sv* %sv) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  %call = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_do_sv_dump(i32 0, %struct._PerlIO** %call, %struct.sv* %0, i32 0, i32 0, i8 signext 0, i64 0)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Perl_runops_debug() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load %struct.op*, %struct.op** @PL_op, align 8
  %tobool = icmp ne %struct.op* %0, null
  br i1 %tobool, label %if.end.9, label %if.then

if.then:                                          ; preds = %entry
  %1 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %1, i32 0, i32 14
  %2 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp = icmp eq %struct.sv* %2, null
  br i1 %cmp, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %3 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings1 = getelementptr inbounds %struct.cop, %struct.cop* %3, i32 0, i32 14
  %4 = load %struct.sv*, %struct.sv** %cop_warnings1, align 8
  %cmp2 = icmp eq %struct.sv* %4, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp2, label %if.then.8, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %5 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings4 = getelementptr inbounds %struct.cop, %struct.cop* %5, i32 0, i32 14
  %6 = load %struct.sv*, %struct.sv** %cop_warnings4, align 8
  %cmp5 = icmp ne %struct.sv* %6, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false.3
  %7 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings6 = getelementptr inbounds %struct.cop, %struct.cop* %7, i32 0, i32 14
  %8 = load %struct.sv*, %struct.sv** %cop_warnings6, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %8, i32 0, i32 0
  %9 = load i8*, i8** %sv_any, align 8
  %10 = bitcast i8* %9 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %10, i32 0, i32 0
  %11 = load i8*, i8** %xpv_pv, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 5
  %12 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %12 to i32
  %and = and i32 %conv, 16
  %tobool7 = icmp ne i32 %and, 0
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %land.lhs.true, %lor.lhs.false, %if.then
  call void (i32, i8*, ...) @Perl_warner(i32 22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.371, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.8, %land.lhs.true, %lor.lhs.false.3
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.9
  %13 = load i32, i32* @PL_sig_pending, align 4
  %tobool10 = icmp ne i32 %13, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %do.body
  call void @Perl_despatch_signals()
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %do.body
  %14 = load volatile i32, i32* @PL_debug, align 4
  %tobool13 = icmp ne i32 %14, 0
  br i1 %tobool13, label %if.then.14, label %if.end.43

if.then.14:                                       ; preds = %if.end.12
  %15 = load i8**, i8*** @PL_watchaddr, align 8
  %cmp15 = icmp ne i8** %15, null
  br i1 %cmp15, label %land.lhs.true.17, label %if.end.22

land.lhs.true.17:                                 ; preds = %if.then.14
  %16 = load i8**, i8*** @PL_watchaddr, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = load i8*, i8** @PL_watchok, align 8
  %cmp18 = icmp ne i8* %17, %18
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %land.lhs.true.17
  %call = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %19 = load i8**, i8*** @PL_watchaddr, align 8
  %20 = ptrtoint i8** %19 to i64
  %21 = load i8*, i8** @PL_watchok, align 8
  %22 = ptrtoint i8* %21 to i64
  %23 = load i8**, i8*** @PL_watchaddr, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = ptrtoint i8* %24 to i64
  %call21 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %call, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.372, i32 0, i32 0), i64 %20, i64 %22, i64 %25)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %land.lhs.true.17, %if.then.14
  %26 = load volatile i32, i32* @PL_debug, align 4
  %and23 = and i32 %26, 2
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.33

if.then.25:                                       ; preds = %if.end.22
  %27 = load volatile i32, i32* @PL_debug, align 4
  %and26 = and i32 %27, 1048576
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %if.then.25
  %call29 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %call30 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %call29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.287, i32 0, i32 0))
  call void @Perl_deb_stack_all()
  br label %if.end.32

if.else:                                          ; preds = %if.then.25
  %call31 = call i32 @Perl_debstack()
  br label %if.end.32

if.end.32:                                        ; preds = %if.else, %if.then.28
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.22
  %28 = load volatile i32, i32* @PL_debug, align 4
  %and34 = and i32 %28, 8
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.end.33
  %29 = load %struct.op*, %struct.op** @PL_op, align 8
  %call37 = call i32 @Perl_debop(%struct.op* %29)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.end.33
  %30 = load volatile i32, i32* @PL_debug, align 4
  %and39 = and i32 %30, 64
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.38
  %31 = load %struct.op*, %struct.op** @PL_op, align 8
  call void @S_debprof(%struct.op* %31)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.end.38
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end.12
  br label %do.cond

do.cond:                                          ; preds = %if.end.43
  %32 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_ppaddr = getelementptr inbounds %struct.op, %struct.op* %32, i32 0, i32 2
  %33 = load %struct.op* ()*, %struct.op* ()** %op_ppaddr, align 8
  %call44 = call %struct.op* %33()
  store %struct.op* %call44, %struct.op** @PL_op, align 8
  %tobool45 = icmp ne %struct.op* %call44, null
  br i1 %tobool45, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i8 0, i8* @PL_tainted, align 1
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.end
  %34 = load i32, i32* %retval
  ret i32 %34
}

declare void @Perl_warner(i32, i8*, ...) #2

declare void @Perl_despatch_signals() #2

declare void @Perl_deb_stack_all() #2

declare i32 @Perl_debstack() #2

; Function Attrs: nounwind uwtable
define i32 @Perl_debop(%struct.op* %o) #0 {
entry:
  %retval = alloca i32, align 4
  %o.addr = alloca %struct.op*, align 8
  %padlist = alloca %struct.av*, align 8
  %comppad = alloca %struct.av*, align 8
  %cv = alloca %struct.cv*, align 8
  %sv = alloca %struct.sv*, align 8
  store %struct.op* %o, %struct.op** %o.addr, align 8
  %0 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_stash = getelementptr inbounds %struct.cop, %struct.cop* %0, i32 0, i32 9
  %1 = load %struct.hv*, %struct.hv** %cop_stash, align 8
  %2 = load %struct.hv*, %struct.hv** @PL_debstash, align 8
  %cmp = icmp eq %struct.hv* %1, %2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load volatile i32, i32* @PL_debug, align 4
  %and = and i32 %3, 524288
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type = getelementptr inbounds %struct.op, %struct.op* %4, i32 0, i32 4
  %5 = load i16, i16* %op_type, align 2
  %conv = zext i16 %5 to i32
  %cmp1 = icmp eq i32 %conv, 351
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %6 = load %struct.op*, %struct.op** %o.addr, align 8
  %call = call i8* @Perl_custom_op_name(%struct.op* %6)
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %7 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type3 = getelementptr inbounds %struct.op, %struct.op* %7, i32 0, i32 4
  %8 = load i16, i16* %op_type3, align 2
  %idxprom = zext i16 %8 to i64
  %arrayidx = getelementptr inbounds [0 x i8*], [0 x i8*]* @PL_op_name, i32 0, i64 %idxprom
  %9 = load i8*, i8** %arrayidx, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ %9, %cond.false ]
  call void (i8*, ...) @Perl_deb(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.286, i32 0, i32 0), i8* %cond)
  %10 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type4 = getelementptr inbounds %struct.op, %struct.op* %10, i32 0, i32 4
  %11 = load i16, i16* %op_type4, align 2
  %conv5 = zext i16 %11 to i32
  switch i32 %conv5, label %sw.default [
    i32 5, label %sw.bb
    i32 6, label %sw.bb.9
    i32 7, label %sw.bb.9
    i32 9, label %sw.bb.28
    i32 10, label %sw.bb.28
    i32 11, label %sw.bb.28
  ]

sw.bb:                                            ; preds = %cond.end
  %call6 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %12 = load %struct.op*, %struct.op** %o.addr, align 8
  %13 = bitcast %struct.op* %12 to %struct.svop*
  %op_sv = getelementptr inbounds %struct.svop, %struct.svop* %13, i32 0, i32 8
  %14 = load %struct.sv*, %struct.sv** %op_sv, align 8
  %call7 = call i8* @Perl_sv_peek(%struct.sv* %14)
  %call8 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %call6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.373, i32 0, i32 0), i8* %call7)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %cond.end, %cond.end
  %15 = load %struct.op*, %struct.op** %o.addr, align 8
  %16 = bitcast %struct.op* %15 to %struct.svop*
  %op_sv10 = getelementptr inbounds %struct.svop, %struct.svop* %16, i32 0, i32 8
  %17 = load %struct.sv*, %struct.sv** %op_sv10, align 8
  %18 = bitcast %struct.sv* %17 to %struct.gv*
  %tobool11 = icmp ne %struct.gv* %18, null
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %sw.bb.9
  %call13 = call %struct.sv* @Perl_newSV(i64 0)
  store %struct.sv* %call13, %struct.sv** %sv, align 8
  %19 = load %struct.sv*, %struct.sv** %sv, align 8
  %20 = load %struct.op*, %struct.op** %o.addr, align 8
  %21 = bitcast %struct.op* %20 to %struct.svop*
  %op_sv14 = getelementptr inbounds %struct.svop, %struct.svop* %21, i32 0, i32 8
  %22 = load %struct.sv*, %struct.sv** %op_sv14, align 8
  %23 = bitcast %struct.sv* %22 to %struct.gv*
  call void @Perl_gv_fullname4(%struct.sv* %19, %struct.gv* %23, i8* null, i8 signext 1)
  %call15 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %24 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %24, i32 0, i32 2
  %25 = load i32, i32* %sv_flags, align 4
  %and16 = and i32 %25, 262144
  %cmp17 = icmp eq i32 %and16, 262144
  br i1 %cmp17, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %if.then.12
  %26 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %26, i32 0, i32 0
  %27 = load i8*, i8** %sv_any, align 8
  %28 = bitcast i8* %27 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %28, i32 0, i32 0
  %29 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end.22

cond.false.20:                                    ; preds = %if.then.12
  %30 = load %struct.sv*, %struct.sv** %sv, align 8
  %call21 = call i8* @Perl_sv_2pv_nolen(%struct.sv* %30)
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.20, %cond.true.19
  %cond23 = phi i8* [ %29, %cond.true.19 ], [ %call21, %cond.false.20 ]
  %call24 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %call15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.373, i32 0, i32 0), i8* %cond23)
  %31 = load %struct.sv*, %struct.sv** %sv, align 8
  call void @Perl_sv_free(%struct.sv* %31)
  br label %if.end.27

if.else:                                          ; preds = %sw.bb.9
  %call25 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %call26 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %call25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.374, i32 0, i32 0))
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %cond.end.22
  br label %sw.epilog

sw.bb.28:                                         ; preds = %cond.end, %cond.end, %cond.end
  %32 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxix = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %32, i32 0, i32 2
  %33 = load i32, i32* %si_cxix, align 4
  %call29 = call %struct.cv* @S_deb_curcv(i32 %33)
  store %struct.cv* %call29, %struct.cv** %cv, align 8
  %34 = load %struct.cv*, %struct.cv** %cv, align 8
  %tobool30 = icmp ne %struct.cv* %34, null
  br i1 %tobool30, label %if.then.31, label %if.else.36

if.then.31:                                       ; preds = %sw.bb.28
  %35 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any32 = getelementptr inbounds %struct.cv, %struct.cv* %35, i32 0, i32 0
  %36 = load %struct.xpvcv*, %struct.xpvcv** %sv_any32, align 8
  %xcv_padlist = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %36, i32 0, i32 15
  %37 = load %struct.av*, %struct.av** %xcv_padlist, align 8
  store %struct.av* %37, %struct.av** %padlist, align 8
  %38 = load %struct.av*, %struct.av** %padlist, align 8
  %call33 = call %struct.sv** @Perl_av_fetch(%struct.av* %38, i32 0, i32 0)
  %39 = load %struct.sv*, %struct.sv** %call33, align 8
  %40 = bitcast %struct.sv* %39 to %struct.av*
  store %struct.av* %40, %struct.av** %comppad, align 8
  %41 = load %struct.av*, %struct.av** %comppad, align 8
  %42 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %42, i32 0, i32 3
  %43 = load i64, i64* %op_targ, align 8
  %conv34 = trunc i64 %43 to i32
  %call35 = call %struct.sv** @Perl_av_fetch(%struct.av* %41, i32 %conv34, i32 0)
  %44 = load %struct.sv*, %struct.sv** %call35, align 8
  store %struct.sv* %44, %struct.sv** %sv, align 8
  br label %if.end.37

if.else.36:                                       ; preds = %sw.bb.28
  store %struct.sv* null, %struct.sv** %sv, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.36, %if.then.31
  %45 = load %struct.sv*, %struct.sv** %sv, align 8
  %tobool38 = icmp ne %struct.sv* %45, null
  br i1 %tobool38, label %if.then.39, label %if.else.53

if.then.39:                                       ; preds = %if.end.37
  %call40 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %46 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags41 = getelementptr inbounds %struct.sv, %struct.sv* %46, i32 0, i32 2
  %47 = load i32, i32* %sv_flags41, align 4
  %and42 = and i32 %47, 262144
  %cmp43 = icmp eq i32 %and42, 262144
  br i1 %cmp43, label %cond.true.45, label %cond.false.48

cond.true.45:                                     ; preds = %if.then.39
  %48 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any46 = getelementptr inbounds %struct.sv, %struct.sv* %48, i32 0, i32 0
  %49 = load i8*, i8** %sv_any46, align 8
  %50 = bitcast i8* %49 to %struct.xpv*
  %xpv_pv47 = getelementptr inbounds %struct.xpv, %struct.xpv* %50, i32 0, i32 0
  %51 = load i8*, i8** %xpv_pv47, align 8
  br label %cond.end.50

cond.false.48:                                    ; preds = %if.then.39
  %52 = load %struct.sv*, %struct.sv** %sv, align 8
  %call49 = call i8* @Perl_sv_2pv_nolen(%struct.sv* %52)
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.48, %cond.true.45
  %cond51 = phi i8* [ %51, %cond.true.45 ], [ %call49, %cond.false.48 ]
  %call52 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %call40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.373, i32 0, i32 0), i8* %cond51)
  br label %if.end.57

if.else.53:                                       ; preds = %if.end.37
  %call54 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %53 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_targ55 = getelementptr inbounds %struct.op, %struct.op* %53, i32 0, i32 3
  %54 = load i64, i64* %op_targ55, align 8
  %call56 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %call54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.375, i32 0, i32 0), i64 %54)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.53, %cond.end.50
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.57, %if.end.27, %sw.bb
  %call58 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %call59 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %call58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.287, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then
  %55 = load i32, i32* %retval
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define internal void @S_debprof(%struct.op* %o) #0 {
entry:
  %o.addr = alloca %struct.op*, align 8
  store %struct.op* %o, %struct.op** %o.addr, align 8
  %0 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_stash = getelementptr inbounds %struct.cop, %struct.cop* %0, i32 0, i32 9
  %1 = load %struct.hv*, %struct.hv** %cop_stash, align 8
  %2 = load %struct.hv*, %struct.hv** @PL_debstash, align 8
  %cmp = icmp eq %struct.hv* %1, %2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load volatile i32, i32* @PL_debug, align 4
  %and = and i32 %3, 524288
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i32*, i32** @PL_profiledata, align 8
  %tobool1 = icmp ne i32* %4, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %call = call i8* @Perl_safesysmalloc(i64 1408)
  %5 = bitcast i8* %call to i32*
  store i32* %5, i32** @PL_profiledata, align 8
  %6 = load i32*, i32** @PL_profiledata, align 8
  %7 = bitcast i32* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 1408, i32 1, i1 false)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %8 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_type = getelementptr inbounds %struct.op, %struct.op* %8, i32 0, i32 4
  %9 = load i16, i16* %op_type, align 2
  %idxprom = zext i16 %9 to i64
  %10 = load i32*, i32** @PL_profiledata, align 8
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.end.3, %if.then
  ret void
}

declare void @Perl_deb(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal %struct.cv* @S_deb_curcv(i32 %ix) #0 {
entry:
  %retval = alloca %struct.cv*, align 8
  %ix.addr = alloca i32, align 4
  %cx = alloca %struct.context*, align 8
  store i32 %ix, i32* %ix.addr, align 4
  %0 = load i32, i32* %ix.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxstack = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %1, i32 0, i32 1
  %2 = load %struct.context*, %struct.context** %si_cxstack, align 8
  %arrayidx = getelementptr inbounds %struct.context, %struct.context* %2, i64 %idxprom
  store %struct.context* %arrayidx, %struct.context** %cx, align 8
  %3 = load %struct.context*, %struct.context** %cx, align 8
  %cx_type = getelementptr inbounds %struct.context, %struct.context* %3, i32 0, i32 0
  %4 = load i32, i32* %cx_type, align 4
  %and = and i32 %4, 255
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.context*, %struct.context** %cx, align 8
  %cx_type1 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 0
  %6 = load i32, i32* %cx_type1, align 4
  %and2 = and i32 %6, 255
  %cmp3 = icmp eq i32 %and2, 6
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u = getelementptr inbounds %struct.context, %struct.context* %7, i32 0, i32 1
  %cx_blk = bitcast %union.anon.0* %cx_u to %struct.block*
  %blk_u = getelementptr inbounds %struct.block, %struct.block* %cx_blk, i32 0, i32 7
  %blku_sub = bitcast %union.anon.1* %blk_u to %struct.block_sub*
  %cv = getelementptr inbounds %struct.block_sub, %struct.block_sub* %blku_sub, i32 0, i32 0
  %8 = load %struct.cv*, %struct.cv** %cv, align 8
  store %struct.cv* %8, %struct.cv** %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %9 = load %struct.context*, %struct.context** %cx, align 8
  %cx_type4 = getelementptr inbounds %struct.context, %struct.context* %9, i32 0, i32 0
  %10 = load i32, i32* %cx_type4, align 4
  %and5 = and i32 %10, 255
  %cmp6 = icmp eq i32 %and5, 2
  br i1 %cmp6, label %land.lhs.true, label %if.else.11

land.lhs.true:                                    ; preds = %if.else
  %11 = load %struct.context*, %struct.context** %cx, align 8
  %cx_type7 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 0
  %12 = load i32, i32* %cx_type7, align 4
  %and8 = and i32 %12, 514
  %cmp9 = icmp eq i32 %and8, 514
  br i1 %cmp9, label %if.else.11, label %if.then.10

if.then.10:                                       ; preds = %land.lhs.true
  %13 = load %struct.cv*, %struct.cv** @PL_compcv, align 8
  store %struct.cv* %13, %struct.cv** %retval
  br label %return

if.else.11:                                       ; preds = %land.lhs.true, %if.else
  %14 = load i32, i32* %ix.addr, align 4
  %cmp12 = icmp eq i32 %14, 0
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %if.else.11
  %15 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_type = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %15, i32 0, i32 4
  %16 = load i32, i32* %si_type, align 4
  %cmp14 = icmp eq i32 %16, 1
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  %17 = load %struct.cv*, %struct.cv** @PL_main_cv, align 8
  store %struct.cv* %17, %struct.cv** %retval
  br label %return

if.else.16:                                       ; preds = %land.lhs.true.13, %if.else.11
  %18 = load i32, i32* %ix.addr, align 4
  %cmp17 = icmp sle i32 %18, 0
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.else.16
  store %struct.cv* null, %struct.cv** %retval
  br label %return

if.else.19:                                       ; preds = %if.else.16
  %19 = load i32, i32* %ix.addr, align 4
  %sub = sub nsw i32 %19, 1
  %call = call %struct.cv* @S_deb_curcv(i32 %sub)
  store %struct.cv* %call, %struct.cv** %retval
  br label %return

return:                                           ; preds = %if.else.19, %if.then.18, %if.then.15, %if.then.10, %if.then
  %20 = load %struct.cv*, %struct.cv** %retval
  ret %struct.cv* %20
}

; Function Attrs: nounwind uwtable
define void @Perl_watch(i8** %addr) #0 {
entry:
  %addr.addr = alloca i8**, align 8
  store i8** %addr, i8*** %addr.addr, align 8
  %0 = load i8**, i8*** %addr.addr, align 8
  store i8** %0, i8*** @PL_watchaddr, align 8
  %1 = load i8**, i8*** %addr.addr, align 8
  %2 = load i8*, i8** %1, align 8
  store i8* %2, i8** @PL_watchok, align 8
  %call = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %3 = load i8**, i8*** @PL_watchaddr, align 8
  %4 = ptrtoint i8** %3 to i64
  %5 = load i8*, i8** @PL_watchok, align 8
  %6 = ptrtoint i8* %5 to i64
  %call1 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %call, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.376, i32 0, i32 0), i64 %4, i64 %6)
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_debprofdump() #0 {
entry:
  %i = alloca i32, align 4
  %0 = load i32*, i32** @PL_profiledata, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %1, 352
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load i32*, i32** @PL_profiledata, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %for.body
  %call = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %5 = load i32, i32* %i, align 4
  %idxprom3 = zext i32 %5 to i64
  %6 = load i32*, i32** @PL_profiledata, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %6, i64 %idxprom3
  %7 = load i32, i32* %arrayidx4, align 4
  %conv = zext i32 %7 to i64
  %8 = load i32, i32* %i, align 4
  %idxprom5 = zext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds [0 x i8*], [0 x i8*]* @PL_op_name, i32 0, i64 %idxprom5
  %9 = load i8*, i8** %arrayidx6, align 8
  %call7 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %call, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.377, i32 0, i32 0), i64 %conv, i8* %9)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.2, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %10 = load i32, i32* %i, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

declare i8* @Perl_safesysmalloc(i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
