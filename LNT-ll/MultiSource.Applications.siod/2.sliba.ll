; ModuleID = './MultiSource.Applications.siod/2.sliba.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obj = type { i16, i16, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.obj*, %struct.obj* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.user_type_hooks = type { %struct.obj* (%struct.obj*)*, void (%struct.obj*)*, %struct.obj* (%struct.obj*)*, void (%struct.obj*)*, void (%struct.obj*, %struct.gen_printio*)*, %struct.obj* (%struct.obj*, %struct.obj**, %struct.obj**)*, i64 (%struct.obj*, i64)*, %struct.obj* (%struct.obj*, %struct.obj*)*, %struct.obj* (i32, %struct.obj*)*, %struct.obj* (%struct.obj*, %struct.obj*)* }
%struct.gen_printio = type { i32 (i32, i8*)*, i32 (i8*, i8*)*, i8* }
%struct.anon.16 = type { i64, %struct.obj** }
%struct.anon.13 = type { i64, i8* }
%struct.anon.12 = type { i64, double* }
%struct.anon.11 = type { i64, i64* }
%struct.anon.0 = type { double }
%struct.gen_readio = type { i32 (i8*)*, void (i32, i8*)*, i8* }
%struct.anon.14 = type { i64, i8* }
%struct.anon.1 = type { i8*, %struct.obj* }
%struct.anon.9 = type { i8*, %struct.obj* (i8*, ...)* }
%struct.anon.3 = type { i8*, {}* }
%struct.anon.10 = type { %struct.obj*, %struct.obj* }
%struct.anon.4 = type { i8*, %struct.obj* (%struct.obj*, %struct.obj*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@bashnum = internal global %struct.obj* null, align 8
@heap = external global %struct.obj*, align 8
@heap_end = external global %struct.obj*, align 8
@.str = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"\22\5C\0A\0D\09\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\5Cn\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\5Cr\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\5Ct\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"#(\00", align 1
@tkbuffer = external global i8*, align 8
@.str.6 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"#%ld\22\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"print to string overflow\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"not a string\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"bad index to aref\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"negative index to aref\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"index too large\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"invalid argument to aref\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"index to aset too large\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"bad value to store in array\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"bad index to aset\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"negative index to aset\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"invalid argument to aset\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"bad dimension to cons-array\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"byte\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"lisp\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"bad type of array\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"bad start index\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"bad end index\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c" \09\0D\0A\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"eof after \5C\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"eof after \5C0\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"read string overflow\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"readsharp syntax not handled\00", align 1
@stack_limit_ptr = external global i8*, align 8
@sym_t = external global %struct.obj*, align 8
@.str.37 = private unnamed_addr constant [17 x i8] c"not a hash table\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"sxhash inconsistency\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"improper list to assoc\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"improper list to assv\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"symbol name too long\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"cannot fast-print\00", align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"unknown fast-read opcode\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"not a number\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@stdout = external global %struct._IO_FILE*, align 8
@.str.45 = private unnamed_addr constant [22 x i8] c"write length too long\00", align 1
@.str.46 = private unnamed_addr constant [24 x i8] c"improper list to length\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"wta to length\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"wta\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"width too long\00", align 1
@.str.50 = private unnamed_addr constant [20 x i8] c"precision too large\00", align 1
@sym_e = internal global %struct.obj* null, align 8
@sym_f = internal global %struct.obj* null, align 8
@.str.51 = private unnamed_addr constant [7 x i8] c"% *.*g\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"% *.*e\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"% *.*f\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"% *g\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"% *e\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"% *f\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"%.*g\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"%.*e\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"%.*f\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"%e\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"%0*ld\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"%0*lo\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"%0*lX\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"%lo\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"%lX\00", align 1
@.str.67 = private unnamed_addr constant [24 x i8] c"number base not handled\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"string too long\00", align 1
@base64_encode_table = internal global i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.232, i32 0, i32 0), align 8
@base64_decode_table = internal global i8* null, align 8
@.str.70 = private unnamed_addr constant [27 x i8] c"illegal base64 data length\00", align 1
@.str.71 = private unnamed_addr constant [22 x i8] c"improper list to memq\00", align 1
@.str.72 = private unnamed_addr constant [24 x i8] c"improper list to member\00", align 1
@.str.73 = private unnamed_addr constant [22 x i8] c"improper list to memv\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"bad arg to nth\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"-:\00", align 1
@.str.76 = private unnamed_addr constant [16 x i8] c"bad arg to last\00", align 1
@.str.77 = private unnamed_addr constant [14 x i8] c"list is empty\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"not a list\00", align 1
@.str.79 = private unnamed_addr constant [18 x i8] c"bad list to qsort\00", align 1
@.str.80 = private unnamed_addr constant [24 x i8] c"mapcar case not handled\00", align 1
@.str.81 = private unnamed_addr constant [17 x i8] c"wta(1st) to fmod\00", align 1
@.str.82 = private unnamed_addr constant [17 x i8] c"wta(2nd) to fmod\00", align 1
@.str.83 = private unnamed_addr constant [21 x i8] c"improper list to ass\00", align 1
@siod_verbose_level = external global i64, align 8
@.str.84 = private unnamed_addr constant [14 x i8] c"fast loading \00", align 1
@.str.85 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.87 = private unnamed_addr constant [7 x i8] c"done.\0A\00", align 1
@.str.88 = private unnamed_addr constant [22 x i8] c"fast saving forms to \00", align 1
@.str.89 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.90 = private unnamed_addr constant [32 x i8] c"# Siod Binary Object Save File\0A\00", align 1
@.str.91 = private unnamed_addr constant [43 x i8] c"# sizeof(long) = %d\0A# sizeof(double) = %d\0A\00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"# 1 = %s\0A\00", align 1
@.str.93 = private unnamed_addr constant [12 x i8] c"# 1.0 = %s\0A\00", align 1
@.str.94 = private unnamed_addr constant [23 x i8] c"no object repeat count\00", align 1
@.str.95 = private unnamed_addr constant [16 x i8] c"wta(1st) to pow\00", align 1
@.str.96 = private unnamed_addr constant [16 x i8] c"wta(2nd) to pow\00", align 1
@.str.97 = private unnamed_addr constant [16 x i8] c"not implemented\00", align 1
@.str.98 = private unnamed_addr constant [7 x i8] c"tc_nil\00", align 1
@.str.99 = private unnamed_addr constant [8 x i8] c"tc_cons\00", align 1
@.str.100 = private unnamed_addr constant [10 x i8] c"tc_flonum\00", align 1
@.str.101 = private unnamed_addr constant [10 x i8] c"tc_symbol\00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c"tc_subr_0\00", align 1
@.str.103 = private unnamed_addr constant [10 x i8] c"tc_subr_1\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"tc_subr_2\00", align 1
@.str.105 = private unnamed_addr constant [11 x i8] c"tc_subr_2n\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"tc_subr_3\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"tc_subr_4\00", align 1
@.str.108 = private unnamed_addr constant [10 x i8] c"tc_subr_5\00", align 1
@.str.109 = private unnamed_addr constant [9 x i8] c"tc_lsubr\00", align 1
@.str.110 = private unnamed_addr constant [9 x i8] c"tc_fsubr\00", align 1
@.str.111 = private unnamed_addr constant [9 x i8] c"tc_msubr\00", align 1
@.str.112 = private unnamed_addr constant [11 x i8] c"tc_closure\00", align 1
@.str.113 = private unnamed_addr constant [13 x i8] c"tc_free_cell\00", align 1
@.str.114 = private unnamed_addr constant [10 x i8] c"tc_string\00", align 1
@.str.115 = private unnamed_addr constant [14 x i8] c"tc_byte_array\00", align 1
@.str.116 = private unnamed_addr constant [16 x i8] c"tc_double_array\00", align 1
@.str.117 = private unnamed_addr constant [14 x i8] c"tc_long_array\00", align 1
@.str.118 = private unnamed_addr constant [14 x i8] c"tc_lisp_array\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"tc_c_file\00", align 1
@.str.120 = private unnamed_addr constant [19 x i8] c"*eval-history-ptr*\00", align 1
@.str.121 = private unnamed_addr constant [15 x i8] c"*eval-history*\00", align 1
@.str.122 = private unnamed_addr constant [5 x i8] c"aref\00", align 1
@.str.123 = private unnamed_addr constant [5 x i8] c"aset\00", align 1
@.str.124 = private unnamed_addr constant [14 x i8] c"string-append\00", align 1
@.str.125 = private unnamed_addr constant [13 x i8] c"bytes-append\00", align 1
@.str.126 = private unnamed_addr constant [14 x i8] c"string-length\00", align 1
@.str.127 = private unnamed_addr constant [17 x i8] c"string-dimension\00", align 1
@.str.128 = private unnamed_addr constant [17 x i8] c"read-from-string\00", align 1
@.str.129 = private unnamed_addr constant [16 x i8] c"print-to-string\00", align 1
@.str.130 = private unnamed_addr constant [11 x i8] c"cons-array\00", align 1
@.str.131 = private unnamed_addr constant [7 x i8] c"sxhash\00", align 1
@.str.132 = private unnamed_addr constant [7 x i8] c"equal?\00", align 1
@.str.133 = private unnamed_addr constant [5 x i8] c"href\00", align 1
@.str.134 = private unnamed_addr constant [5 x i8] c"hset\00", align 1
@.str.135 = private unnamed_addr constant [6 x i8] c"assoc\00", align 1
@.str.136 = private unnamed_addr constant [5 x i8] c"assv\00", align 1
@.str.137 = private unnamed_addr constant [10 x i8] c"fast-read\00", align 1
@.str.138 = private unnamed_addr constant [11 x i8] c"fast-print\00", align 1
@.str.139 = private unnamed_addr constant [10 x i8] c"make-list\00", align 1
@.str.140 = private unnamed_addr constant [6 x i8] c"fread\00", align 1
@.str.141 = private unnamed_addr constant [7 x i8] c"fwrite\00", align 1
@.str.142 = private unnamed_addr constant [7 x i8] c"fflush\00", align 1
@.str.143 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.144 = private unnamed_addr constant [15 x i8] c"number->string\00", align 1
@.str.145 = private unnamed_addr constant [15 x i8] c"string->number\00", align 1
@.str.146 = private unnamed_addr constant [10 x i8] c"substring\00", align 1
@.str.147 = private unnamed_addr constant [14 x i8] c"string-search\00", align 1
@.str.148 = private unnamed_addr constant [12 x i8] c"string-trim\00", align 1
@.str.149 = private unnamed_addr constant [17 x i8] c"string-trim-left\00", align 1
@.str.150 = private unnamed_addr constant [18 x i8] c"string-trim-right\00", align 1
@.str.151 = private unnamed_addr constant [14 x i8] c"string-upcase\00", align 1
@.str.152 = private unnamed_addr constant [16 x i8] c"string-downcase\00", align 1
@.str.153 = private unnamed_addr constant [7 x i8] c"strcmp\00", align 1
@.str.154 = private unnamed_addr constant [7 x i8] c"strcat\00", align 1
@.str.155 = private unnamed_addr constant [7 x i8] c"strcpy\00", align 1
@.str.156 = private unnamed_addr constant [11 x i8] c"strbreakup\00", align 1
@.str.157 = private unnamed_addr constant [13 x i8] c"unbreakupstr\00", align 1
@.str.158 = private unnamed_addr constant [8 x i8] c"string?\00", align 1
@.str.159 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.160 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@sym_plists = internal global %struct.obj* null, align 8
@.str.161 = private unnamed_addr constant [9 x i8] c"*plists*\00", align 1
@.str.162 = private unnamed_addr constant [13 x i8] c"lref-default\00", align 1
@.str.163 = private unnamed_addr constant [13 x i8] c"larg-default\00", align 1
@.str.164 = private unnamed_addr constant [13 x i8] c"lkey-default\00", align 1
@.str.165 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.166 = private unnamed_addr constant [7 x i8] c"writes\00", align 1
@.str.167 = private unnamed_addr constant [6 x i8] c"qsort\00", align 1
@.str.168 = private unnamed_addr constant [13 x i8] c"string-lessp\00", align 1
@.str.169 = private unnamed_addr constant [7 x i8] c"mapcar\00", align 1
@.str.170 = private unnamed_addr constant [8 x i8] c"mapcar2\00", align 1
@.str.171 = private unnamed_addr constant [8 x i8] c"mapcar1\00", align 1
@.str.172 = private unnamed_addr constant [19 x i8] c"benchmark-funcall1\00", align 1
@.str.173 = private unnamed_addr constant [19 x i8] c"benchmark-funcall2\00", align 1
@.str.174 = private unnamed_addr constant [15 x i8] c"benchmark-eval\00", align 1
@.str.175 = private unnamed_addr constant [5 x i8] c"fmod\00", align 1
@.str.176 = private unnamed_addr constant [7 x i8] c"subset\00", align 1
@.str.177 = private unnamed_addr constant [13 x i8] c"base64encode\00", align 1
@.str.178 = private unnamed_addr constant [13 x i8] c"base64decode\00", align 1
@.str.179 = private unnamed_addr constant [4 x i8] c"ass\00", align 1
@.str.180 = private unnamed_addr constant [8 x i8] c"append2\00", align 1
@.str.181 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@.str.182 = private unnamed_addr constant [10 x i8] c"fast-save\00", align 1
@.str.183 = private unnamed_addr constant [10 x i8] c"fast-load\00", align 1
@.str.184 = private unnamed_addr constant [7 x i8] c"swrite\00", align 1
@.str.185 = private unnamed_addr constant [4 x i8] c"pow\00", align 1
@.str.186 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@.str.187 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.188 = private unnamed_addr constant [4 x i8] c"sin\00", align 1
@.str.189 = private unnamed_addr constant [4 x i8] c"cos\00", align 1
@.str.190 = private unnamed_addr constant [4 x i8] c"tan\00", align 1
@.str.191 = private unnamed_addr constant [5 x i8] c"asin\00", align 1
@.str.192 = private unnamed_addr constant [5 x i8] c"acos\00", align 1
@.str.193 = private unnamed_addr constant [5 x i8] c"atan\00", align 1
@.str.194 = private unnamed_addr constant [6 x i8] c"atan2\00", align 1
@.str.195 = private unnamed_addr constant [7 x i8] c"typeof\00", align 1
@.str.196 = private unnamed_addr constant [6 x i8] c"caaar\00", align 1
@.str.197 = private unnamed_addr constant [6 x i8] c"caadr\00", align 1
@.str.198 = private unnamed_addr constant [6 x i8] c"cadar\00", align 1
@.str.199 = private unnamed_addr constant [6 x i8] c"caddr\00", align 1
@.str.200 = private unnamed_addr constant [6 x i8] c"cdaar\00", align 1
@.str.201 = private unnamed_addr constant [6 x i8] c"cdadr\00", align 1
@.str.202 = private unnamed_addr constant [6 x i8] c"cddar\00", align 1
@.str.203 = private unnamed_addr constant [6 x i8] c"cdddr\00", align 1
@.str.204 = private unnamed_addr constant [5 x i8] c"*pi*\00", align 1
@.str.205 = private unnamed_addr constant [14 x i8] c"array->hexstr\00", align 1
@.str.206 = private unnamed_addr constant [14 x i8] c"hexstr->bytes\00", align 1
@.str.207 = private unnamed_addr constant [8 x i8] c"bit-and\00", align 1
@.str.208 = private unnamed_addr constant [7 x i8] c"bit-or\00", align 1
@.str.209 = private unnamed_addr constant [8 x i8] c"bit-xor\00", align 1
@.str.210 = private unnamed_addr constant [8 x i8] c"bit-not\00", align 1
@.str.211 = private unnamed_addr constant [5 x i8] c"cond\00", align 1
@.str.212 = private unnamed_addr constant [6 x i8] c"prog1\00", align 1
@.str.213 = private unnamed_addr constant [7 x i8] c"strspn\00", align 1
@.str.214 = private unnamed_addr constant [8 x i8] c"strcspn\00", align 1
@.str.215 = private unnamed_addr constant [17 x i8] c"substring-equal?\00", align 1
@.str.216 = private unnamed_addr constant [21 x i8] c"substring-equalcase?\00", align 1
@.str.217 = private unnamed_addr constant [8 x i8] c"butlast\00", align 1
@.str.218 = private unnamed_addr constant [4 x i8] c"ash\00", align 1
@.str.219 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.220 = private unnamed_addr constant [8 x i8] c"setprop\00", align 1
@.str.221 = private unnamed_addr constant [8 x i8] c"putprop\00", align 1
@.str.222 = private unnamed_addr constant [5 x i8] c"last\00", align 1
@.str.223 = private unnamed_addr constant [5 x i8] c"memq\00", align 1
@.str.224 = private unnamed_addr constant [5 x i8] c"memv\00", align 1
@.str.225 = private unnamed_addr constant [7 x i8] c"member\00", align 1
@.str.226 = private unnamed_addr constant [4 x i8] c"nth\00", align 1
@.str.227 = private unnamed_addr constant [6 x i8] c"nconc\00", align 1
@.str.228 = private unnamed_addr constant [17 x i8] c"set-eval-history\00", align 1
@.str.229 = private unnamed_addr constant [12 x i8] c"parser_fasl\00", align 1
@.str.230 = private unnamed_addr constant [25 x i8] c"*parser_fasl.scm-loaded*\00", align 1
@.str.231 = private unnamed_addr constant [17 x i8] c"parser_fasl_hook\00", align 1
@.str.232 = private unnamed_addr constant [66 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=\00", align 1
@.str.233 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.234 = private unnamed_addr constant [16 x i8] c"*sliba-version*\00", align 1
@.str.235 = private unnamed_addr constant [47 x i8] c"$Id: sliba.c 9206 2003-10-17 18:48:45Z gaeke $\00", align 1

; Function Attrs: nounwind uwtable
define void @init_storage_a1(i64 %type) #0 {
entry:
  %type.addr = alloca i64, align 8
  %j = alloca i64, align 8
  %p = alloca %struct.user_type_hooks*, align 8
  store i64 %type, i64* %type.addr, align 8
  %0 = load i64, i64* %type.addr, align 8
  call void @set_gc_hooks(i64 %0, %struct.obj* (%struct.obj*)* @array_gc_relocate, %struct.obj* (%struct.obj*)* @array_gc_mark, void (%struct.obj*)* @array_gc_scan, void (%struct.obj*)* @array_gc_free, i64* %j)
  %1 = load i64, i64* %type.addr, align 8
  call void @set_print_hooks(i64 %1, void (%struct.obj*, %struct.gen_printio*)* @array_prin1)
  %2 = load i64, i64* %type.addr, align 8
  %call = call %struct.user_type_hooks* @get_user_type_hooks(i64 %2)
  store %struct.user_type_hooks* %call, %struct.user_type_hooks** %p, align 8
  %3 = load %struct.user_type_hooks*, %struct.user_type_hooks** %p, align 8
  %fast_print = getelementptr inbounds %struct.user_type_hooks, %struct.user_type_hooks* %3, i32 0, i32 7
  store %struct.obj* (%struct.obj*, %struct.obj*)* @array_fast_print, %struct.obj* (%struct.obj*, %struct.obj*)** %fast_print, align 8
  %4 = load %struct.user_type_hooks*, %struct.user_type_hooks** %p, align 8
  %fast_read = getelementptr inbounds %struct.user_type_hooks, %struct.user_type_hooks* %4, i32 0, i32 8
  store %struct.obj* (i32, %struct.obj*)* @array_fast_read, %struct.obj* (i32, %struct.obj*)** %fast_read, align 8
  %5 = load %struct.user_type_hooks*, %struct.user_type_hooks** %p, align 8
  %equal = getelementptr inbounds %struct.user_type_hooks, %struct.user_type_hooks* %5, i32 0, i32 9
  store %struct.obj* (%struct.obj*, %struct.obj*)* @array_equal, %struct.obj* (%struct.obj*, %struct.obj*)** %equal, align 8
  %6 = load %struct.user_type_hooks*, %struct.user_type_hooks** %p, align 8
  %c_sxhash = getelementptr inbounds %struct.user_type_hooks, %struct.user_type_hooks* %6, i32 0, i32 6
  store i64 (%struct.obj*, i64)* @array_sxhash, i64 (%struct.obj*, i64)** %c_sxhash, align 8
  ret void
}

declare void @set_gc_hooks(i64, %struct.obj* (%struct.obj*)*, %struct.obj* (%struct.obj*)*, void (%struct.obj*)*, void (%struct.obj*)*, i64*) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @array_gc_relocate(%struct.obj* %ptr) #0 {
entry:
  %ptr.addr = alloca %struct.obj*, align 8
  %nw = alloca %struct.obj*, align 8
  store %struct.obj* %ptr, %struct.obj** %ptr.addr, align 8
  %0 = load %struct.obj*, %struct.obj** @heap, align 8
  store %struct.obj* %0, %struct.obj** %nw, align 8
  %1 = load %struct.obj*, %struct.obj** @heap_end, align 8
  %cmp = icmp uge %struct.obj* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @gc_fatal_error()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.obj*, %struct.obj** %nw, align 8
  %add.ptr = getelementptr inbounds %struct.obj, %struct.obj* %2, i64 1
  store %struct.obj* %add.ptr, %struct.obj** @heap, align 8
  %3 = load %struct.obj*, %struct.obj** %nw, align 8
  %4 = bitcast %struct.obj* %3 to i8*
  %5 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %6 = bitcast %struct.obj* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %6, i64 24, i32 8, i1 false)
  %7 = load %struct.obj*, %struct.obj** %nw, align 8
  ret %struct.obj* %7
}

; Function Attrs: nounwind uwtable
define %struct.obj* @array_gc_mark(%struct.obj* %ptr) #0 {
entry:
  %ptr.addr = alloca %struct.obj*, align 8
  %j = alloca i64, align 8
  store %struct.obj* %ptr, %struct.obj** %ptr.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp eq i32 %cond, 16
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i64, i64* %j, align 8
  %4 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 2
  %lisp_array = bitcast %union.anon* %storage_as to %struct.anon.16*
  %dim = getelementptr inbounds %struct.anon.16, %struct.anon.16* %lisp_array, i32 0, i32 0
  %5 = load i64, i64* %dim, align 8
  %cmp3 = icmp slt i64 %3, %5
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %j, align 8
  %7 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as5 = getelementptr inbounds %struct.obj, %struct.obj* %7, i32 0, i32 2
  %lisp_array6 = bitcast %union.anon* %storage_as5 to %struct.anon.16*
  %data = getelementptr inbounds %struct.anon.16, %struct.anon.16* %lisp_array6, i32 0, i32 1
  %8 = load %struct.obj**, %struct.obj*** %data, align 8
  %arrayidx = getelementptr inbounds %struct.obj*, %struct.obj** %8, i64 %6
  %9 = load %struct.obj*, %struct.obj** %arrayidx, align 8
  call void @gc_mark(%struct.obj* %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i64, i64* %j, align 8
  %inc = add nsw i64 %10, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %cond.end
  ret %struct.obj* null
}

; Function Attrs: nounwind uwtable
define void @array_gc_scan(%struct.obj* %ptr) #0 {
entry:
  %ptr.addr = alloca %struct.obj*, align 8
  %j = alloca i64, align 8
  store %struct.obj* %ptr, %struct.obj** %ptr.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp eq i32 %cond, 16
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i64, i64* %j, align 8
  %4 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 2
  %lisp_array = bitcast %union.anon* %storage_as to %struct.anon.16*
  %dim = getelementptr inbounds %struct.anon.16, %struct.anon.16* %lisp_array, i32 0, i32 0
  %5 = load i64, i64* %dim, align 8
  %cmp3 = icmp slt i64 %3, %5
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %j, align 8
  %7 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as5 = getelementptr inbounds %struct.obj, %struct.obj* %7, i32 0, i32 2
  %lisp_array6 = bitcast %union.anon* %storage_as5 to %struct.anon.16*
  %data = getelementptr inbounds %struct.anon.16, %struct.anon.16* %lisp_array6, i32 0, i32 1
  %8 = load %struct.obj**, %struct.obj*** %data, align 8
  %arrayidx = getelementptr inbounds %struct.obj*, %struct.obj** %8, i64 %6
  %9 = load %struct.obj*, %struct.obj** %arrayidx, align 8
  %call = call %struct.obj* @gc_relocate(%struct.obj* %9)
  %10 = load i64, i64* %j, align 8
  %11 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as7 = getelementptr inbounds %struct.obj, %struct.obj* %11, i32 0, i32 2
  %lisp_array8 = bitcast %union.anon* %storage_as7 to %struct.anon.16*
  %data9 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %lisp_array8, i32 0, i32 1
  %12 = load %struct.obj**, %struct.obj*** %data9, align 8
  %arrayidx10 = getelementptr inbounds %struct.obj*, %struct.obj** %12, i64 %10
  store %struct.obj* %call, %struct.obj** %arrayidx10, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i64, i64* %j, align 8
  %inc = add nsw i64 %13, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %cond.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @array_gc_free(%struct.obj* %ptr) #0 {
entry:
  %ptr.addr = alloca %struct.obj*, align 8
  store %struct.obj* %ptr, %struct.obj** %ptr.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %0, i32 0, i32 1
  %1 = load i16, i16* %type, align 2
  %conv = sext i16 %1 to i32
  switch i32 %conv, label %sw.epilog [
    i32 13, label %sw.bb
    i32 18, label %sw.bb
    i32 14, label %sw.bb.1
    i32 15, label %sw.bb.4
    i32 16, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry, %entry
  %2 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %2, i32 0, i32 2
  %string = bitcast %union.anon* %storage_as to %struct.anon.13*
  %data = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string, i32 0, i32 1
  %3 = load i8*, i8** %data, align 8
  call void @free(i8* %3) #2
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %4 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as2 = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 2
  %double_array = bitcast %union.anon* %storage_as2 to %struct.anon.12*
  %data3 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %double_array, i32 0, i32 1
  %5 = load double*, double** %data3, align 8
  %6 = bitcast double* %5 to i8*
  call void @free(i8* %6) #2
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %7 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as5 = getelementptr inbounds %struct.obj, %struct.obj* %7, i32 0, i32 2
  %long_array = bitcast %union.anon* %storage_as5 to %struct.anon.11*
  %data6 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %long_array, i32 0, i32 1
  %8 = load i64*, i64** %data6, align 8
  %9 = bitcast i64* %8 to i8*
  call void @free(i8* %9) #2
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %10 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as8 = getelementptr inbounds %struct.obj, %struct.obj* %10, i32 0, i32 2
  %lisp_array = bitcast %union.anon* %storage_as8 to %struct.anon.16*
  %data9 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %lisp_array, i32 0, i32 1
  %11 = load %struct.obj**, %struct.obj*** %data9, align 8
  %12 = bitcast %struct.obj** %11 to i8*
  call void @free(i8* %12) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.7, %sw.bb.4, %sw.bb.1, %sw.bb
  ret void
}

declare void @set_print_hooks(i64, void (%struct.obj*, %struct.gen_printio*)*) #1

; Function Attrs: nounwind uwtable
define void @array_prin1(%struct.obj* %ptr, %struct.gen_printio* %f) #0 {
entry:
  %ptr.addr = alloca %struct.obj*, align 8
  %f.addr = alloca %struct.gen_printio*, align 8
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %c = alloca i32, align 4
  %cbuff = alloca [3 x i8], align 1
  store %struct.obj* %ptr, %struct.obj** %ptr.addr, align 8
  store %struct.gen_printio* %f, %struct.gen_printio** %f.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %0, i32 0, i32 1
  %1 = load i16, i16* %type, align 2
  %conv = sext i16 %1 to i32
  switch i32 %conv, label %sw.epilog.131 [
    i32 13, label %sw.bb
    i32 14, label %sw.bb.32
    i32 15, label %sw.bb.56
    i32 18, label %sw.bb.82
    i32 16, label %sw.bb.105
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  call void @gput_st(%struct.gen_printio* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %3, i32 0, i32 2
  %string = bitcast %union.anon* %storage_as to %struct.anon.13*
  %data = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string, i32 0, i32 1
  %4 = load i8*, i8** %data, align 8
  %call = call i64 @strcspn(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)) #6
  %5 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as1 = getelementptr inbounds %struct.obj, %struct.obj* %5, i32 0, i32 2
  %string2 = bitcast %union.anon* %storage_as1 to %struct.anon.13*
  %data3 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string2, i32 0, i32 1
  %6 = load i8*, i8** %data3, align 8
  %call4 = call i64 @strlen(i8* %6) #6
  %cmp = icmp eq i64 %call, %call4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %7 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  %8 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as6 = getelementptr inbounds %struct.obj, %struct.obj* %8, i32 0, i32 2
  %string7 = bitcast %union.anon* %storage_as6 to %struct.anon.13*
  %data8 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string7, i32 0, i32 1
  %9 = load i8*, i8** %data8, align 8
  call void @gput_st(%struct.gen_printio* %7, i8* %9)
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %10 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as9 = getelementptr inbounds %struct.obj, %struct.obj* %10, i32 0, i32 2
  %string10 = bitcast %union.anon* %storage_as9 to %struct.anon.13*
  %data11 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string10, i32 0, i32 1
  %11 = load i8*, i8** %data11, align 8
  %call12 = call i64 @strlen(i8* %11) #6
  %conv13 = trunc i64 %call12 to i32
  store i32 %conv13, i32* %n, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %n, align 4
  %cmp14 = icmp slt i32 %12, %13
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %j, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as16 = getelementptr inbounds %struct.obj, %struct.obj* %15, i32 0, i32 2
  %string17 = bitcast %union.anon* %storage_as16 to %struct.anon.13*
  %data18 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string17, i32 0, i32 1
  %16 = load i8*, i8** %data18, align 8
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 %idxprom
  %17 = load i8, i8* %arrayidx, align 1
  %conv19 = sext i8 %17 to i32
  store i32 %conv19, i32* %c, align 4
  switch i32 %conv19, label %sw.default [
    i32 92, label %sw.bb.20
    i32 34, label %sw.bb.20
    i32 10, label %sw.bb.25
    i32 13, label %sw.bb.26
    i32 9, label %sw.bb.27
  ]

sw.bb.20:                                         ; preds = %for.body, %for.body
  %arrayidx21 = getelementptr inbounds [3 x i8], [3 x i8]* %cbuff, i32 0, i64 0
  store i8 92, i8* %arrayidx21, align 1
  %18 = load i32, i32* %c, align 4
  %conv22 = trunc i32 %18 to i8
  %arrayidx23 = getelementptr inbounds [3 x i8], [3 x i8]* %cbuff, i32 0, i64 1
  store i8 %conv22, i8* %arrayidx23, align 1
  %arrayidx24 = getelementptr inbounds [3 x i8], [3 x i8]* %cbuff, i32 0, i64 2
  store i8 0, i8* %arrayidx24, align 1
  %19 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %cbuff, i32 0, i32 0
  call void @gput_st(%struct.gen_printio* %19, i8* %arraydecay)
  br label %sw.epilog

sw.bb.25:                                         ; preds = %for.body
  %20 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  call void @gput_st(%struct.gen_printio* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  br label %sw.epilog

sw.bb.26:                                         ; preds = %for.body
  %21 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  call void @gput_st(%struct.gen_printio* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %sw.epilog

sw.bb.27:                                         ; preds = %for.body
  %22 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  call void @gput_st(%struct.gen_printio* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %23 = load i32, i32* %c, align 4
  %conv28 = trunc i32 %23 to i8
  %arrayidx29 = getelementptr inbounds [3 x i8], [3 x i8]* %cbuff, i32 0, i64 0
  store i8 %conv28, i8* %arrayidx29, align 1
  %arrayidx30 = getelementptr inbounds [3 x i8], [3 x i8]* %cbuff, i32 0, i64 1
  store i8 0, i8* %arrayidx30, align 1
  %24 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  %arraydecay31 = getelementptr inbounds [3 x i8], [3 x i8]* %cbuff, i32 0, i32 0
  call void @gput_st(%struct.gen_printio* %24, i8* %arraydecay31)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.27, %sw.bb.26, %sw.bb.25, %sw.bb.20
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %25 = load i32, i32* %j, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %26 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  call void @gput_st(%struct.gen_printio* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  br label %sw.epilog.131

sw.bb.32:                                         ; preds = %entry
  %27 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  call void @gput_st(%struct.gen_printio* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.53, %sw.bb.32
  %28 = load i32, i32* %j, align 4
  %conv34 = sext i32 %28 to i64
  %29 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as35 = getelementptr inbounds %struct.obj, %struct.obj* %29, i32 0, i32 2
  %double_array = bitcast %union.anon* %storage_as35 to %struct.anon.12*
  %dim = getelementptr inbounds %struct.anon.12, %struct.anon.12* %double_array, i32 0, i32 0
  %30 = load i64, i64* %dim, align 8
  %cmp36 = icmp slt i64 %conv34, %30
  br i1 %cmp36, label %for.body.38, label %for.end.55

for.body.38:                                      ; preds = %for.cond.33
  %31 = load i8*, i8** @tkbuffer, align 8
  %32 = load i32, i32* %j, align 4
  %idxprom39 = sext i32 %32 to i64
  %33 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as40 = getelementptr inbounds %struct.obj, %struct.obj* %33, i32 0, i32 2
  %double_array41 = bitcast %union.anon* %storage_as40 to %struct.anon.12*
  %data42 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %double_array41, i32 0, i32 1
  %34 = load double*, double** %data42, align 8
  %arrayidx43 = getelementptr inbounds double, double* %34, i64 %idxprom39
  %35 = load double, double* %arrayidx43, align 8
  %call44 = call i32 (i8*, i8*, ...) @sprintf(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), double %35) #2
  %36 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  %37 = load i8*, i8** @tkbuffer, align 8
  call void @gput_st(%struct.gen_printio* %36, i8* %37)
  %38 = load i32, i32* %j, align 4
  %add = add nsw i32 %38, 1
  %conv45 = sext i32 %add to i64
  %39 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as46 = getelementptr inbounds %struct.obj, %struct.obj* %39, i32 0, i32 2
  %double_array47 = bitcast %union.anon* %storage_as46 to %struct.anon.12*
  %dim48 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %double_array47, i32 0, i32 0
  %40 = load i64, i64* %dim48, align 8
  %cmp49 = icmp slt i64 %conv45, %40
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %for.body.38
  %41 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  call void @gput_st(%struct.gen_printio* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %for.body.38
  br label %for.inc.53

for.inc.53:                                       ; preds = %if.end.52
  %42 = load i32, i32* %j, align 4
  %inc54 = add nsw i32 %42, 1
  store i32 %inc54, i32* %j, align 4
  br label %for.cond.33

for.end.55:                                       ; preds = %for.cond.33
  %43 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  call void @gput_st(%struct.gen_printio* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  br label %sw.epilog.131

sw.bb.56:                                         ; preds = %entry
  %44 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  call void @gput_st(%struct.gen_printio* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.79, %sw.bb.56
  %45 = load i32, i32* %j, align 4
  %conv58 = sext i32 %45 to i64
  %46 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as59 = getelementptr inbounds %struct.obj, %struct.obj* %46, i32 0, i32 2
  %long_array = bitcast %union.anon* %storage_as59 to %struct.anon.11*
  %dim60 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %long_array, i32 0, i32 0
  %47 = load i64, i64* %dim60, align 8
  %cmp61 = icmp slt i64 %conv58, %47
  br i1 %cmp61, label %for.body.63, label %for.end.81

for.body.63:                                      ; preds = %for.cond.57
  %48 = load i8*, i8** @tkbuffer, align 8
  %49 = load i32, i32* %j, align 4
  %idxprom64 = sext i32 %49 to i64
  %50 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as65 = getelementptr inbounds %struct.obj, %struct.obj* %50, i32 0, i32 2
  %long_array66 = bitcast %union.anon* %storage_as65 to %struct.anon.11*
  %data67 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %long_array66, i32 0, i32 1
  %51 = load i64*, i64** %data67, align 8
  %arrayidx68 = getelementptr inbounds i64, i64* %51, i64 %idxprom64
  %52 = load i64, i64* %arrayidx68, align 8
  %call69 = call i32 (i8*, i8*, ...) @sprintf(i8* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i64 %52) #2
  %53 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  %54 = load i8*, i8** @tkbuffer, align 8
  call void @gput_st(%struct.gen_printio* %53, i8* %54)
  %55 = load i32, i32* %j, align 4
  %add70 = add nsw i32 %55, 1
  %conv71 = sext i32 %add70 to i64
  %56 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as72 = getelementptr inbounds %struct.obj, %struct.obj* %56, i32 0, i32 2
  %long_array73 = bitcast %union.anon* %storage_as72 to %struct.anon.11*
  %dim74 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %long_array73, i32 0, i32 0
  %57 = load i64, i64* %dim74, align 8
  %cmp75 = icmp slt i64 %conv71, %57
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %for.body.63
  %58 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  call void @gput_st(%struct.gen_printio* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %for.body.63
  br label %for.inc.79

for.inc.79:                                       ; preds = %if.end.78
  %59 = load i32, i32* %j, align 4
  %inc80 = add nsw i32 %59, 1
  store i32 %inc80, i32* %j, align 4
  br label %for.cond.57

for.end.81:                                       ; preds = %for.cond.57
  %60 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  call void @gput_st(%struct.gen_printio* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  br label %sw.bb.82

sw.bb.82:                                         ; preds = %entry, %for.end.81
  %61 = load i8*, i8** @tkbuffer, align 8
  %62 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as83 = getelementptr inbounds %struct.obj, %struct.obj* %62, i32 0, i32 2
  %string84 = bitcast %union.anon* %storage_as83 to %struct.anon.13*
  %dim85 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string84, i32 0, i32 0
  %63 = load i64, i64* %dim85, align 8
  %call86 = call i32 (i8*, i8*, ...) @sprintf(i8* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i64 %63) #2
  %64 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  %65 = load i8*, i8** @tkbuffer, align 8
  call void @gput_st(%struct.gen_printio* %64, i8* %65)
  store i32 0, i32* %j, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.102, %sw.bb.82
  %66 = load i32, i32* %j, align 4
  %conv88 = sext i32 %66 to i64
  %67 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as89 = getelementptr inbounds %struct.obj, %struct.obj* %67, i32 0, i32 2
  %string90 = bitcast %union.anon* %storage_as89 to %struct.anon.13*
  %dim91 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string90, i32 0, i32 0
  %68 = load i64, i64* %dim91, align 8
  %cmp92 = icmp slt i64 %conv88, %68
  br i1 %cmp92, label %for.body.94, label %for.end.104

for.body.94:                                      ; preds = %for.cond.87
  %69 = load i8*, i8** @tkbuffer, align 8
  %70 = load i32, i32* %j, align 4
  %idxprom95 = sext i32 %70 to i64
  %71 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as96 = getelementptr inbounds %struct.obj, %struct.obj* %71, i32 0, i32 2
  %string97 = bitcast %union.anon* %storage_as96 to %struct.anon.13*
  %data98 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string97, i32 0, i32 1
  %72 = load i8*, i8** %data98, align 8
  %arrayidx99 = getelementptr inbounds i8, i8* %72, i64 %idxprom95
  %73 = load i8, i8* %arrayidx99, align 1
  %conv100 = sext i8 %73 to i32
  %and = and i32 %conv100, 255
  %call101 = call i32 (i8*, i8*, ...) @sprintf(i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 %and) #2
  %74 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  %75 = load i8*, i8** @tkbuffer, align 8
  call void @gput_st(%struct.gen_printio* %74, i8* %75)
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.body.94
  %76 = load i32, i32* %j, align 4
  %inc103 = add nsw i32 %76, 1
  store i32 %inc103, i32* %j, align 4
  br label %for.cond.87

for.end.104:                                      ; preds = %for.cond.87
  %77 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  call void @gput_st(%struct.gen_printio* %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  br label %sw.epilog.131

sw.bb.105:                                        ; preds = %entry
  %78 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  call void @gput_st(%struct.gen_printio* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.128, %sw.bb.105
  %79 = load i32, i32* %j, align 4
  %conv107 = sext i32 %79 to i64
  %80 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as108 = getelementptr inbounds %struct.obj, %struct.obj* %80, i32 0, i32 2
  %lisp_array = bitcast %union.anon* %storage_as108 to %struct.anon.16*
  %dim109 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %lisp_array, i32 0, i32 0
  %81 = load i64, i64* %dim109, align 8
  %cmp110 = icmp slt i64 %conv107, %81
  br i1 %cmp110, label %for.body.112, label %for.end.130

for.body.112:                                     ; preds = %for.cond.106
  %82 = load i32, i32* %j, align 4
  %idxprom113 = sext i32 %82 to i64
  %83 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as114 = getelementptr inbounds %struct.obj, %struct.obj* %83, i32 0, i32 2
  %lisp_array115 = bitcast %union.anon* %storage_as114 to %struct.anon.16*
  %data116 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %lisp_array115, i32 0, i32 1
  %84 = load %struct.obj**, %struct.obj*** %data116, align 8
  %arrayidx117 = getelementptr inbounds %struct.obj*, %struct.obj** %84, i64 %idxprom113
  %85 = load %struct.obj*, %struct.obj** %arrayidx117, align 8
  %86 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  %call118 = call %struct.obj* @lprin1g(%struct.obj* %85, %struct.gen_printio* %86)
  %87 = load i32, i32* %j, align 4
  %add119 = add nsw i32 %87, 1
  %conv120 = sext i32 %add119 to i64
  %88 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as121 = getelementptr inbounds %struct.obj, %struct.obj* %88, i32 0, i32 2
  %lisp_array122 = bitcast %union.anon* %storage_as121 to %struct.anon.16*
  %dim123 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %lisp_array122, i32 0, i32 0
  %89 = load i64, i64* %dim123, align 8
  %cmp124 = icmp slt i64 %conv120, %89
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %for.body.112
  %90 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  call void @gput_st(%struct.gen_printio* %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.126, %for.body.112
  br label %for.inc.128

for.inc.128:                                      ; preds = %if.end.127
  %91 = load i32, i32* %j, align 4
  %inc129 = add nsw i32 %91, 1
  store i32 %inc129, i32* %j, align 4
  br label %for.cond.106

for.end.130:                                      ; preds = %for.cond.106
  %92 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  call void @gput_st(%struct.gen_printio* %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  br label %sw.epilog.131

sw.epilog.131:                                    ; preds = %entry, %for.end.130, %for.end.104, %for.end.55, %if.end
  ret void
}

declare %struct.user_type_hooks* @get_user_type_hooks(i64) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @array_fast_print(%struct.obj* %ptr, %struct.obj* %table) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %ptr.addr = alloca %struct.obj*, align 8
  %table.addr = alloca %struct.obj*, align 8
  %j = alloca i32, align 4
  %len = alloca i32, align 4
  %f = alloca %struct._IO_FILE*, align 8
  store %struct.obj* %ptr, %struct.obj** %ptr.addr, align 8
  store %struct.obj* %table, %struct.obj** %table.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %call = call %struct.obj* @car(%struct.obj* %0)
  %call1 = call %struct._IO_FILE* @get_c_file(%struct.obj* %call, %struct._IO_FILE* null)
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %f, align 8
  %1 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  switch i32 %conv, label %sw.default [
    i32 13, label %sw.bb
    i32 18, label %sw.bb
    i32 14, label %sw.bb.11
    i32 15, label %sw.bb.22
    i32 16, label %sw.bb.34
  ]

sw.bb:                                            ; preds = %entry, %entry
  %3 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %type2 = getelementptr inbounds %struct.obj, %struct.obj* %3, i32 0, i32 1
  %4 = load i16, i16* %type2, align 2
  %conv3 = sext i16 %4 to i32
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call4 = call i32 @_IO_putc(i32 %conv3, %struct._IO_FILE* %5)
  %6 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %6, i32 0, i32 2
  %string = bitcast %union.anon* %storage_as to %struct.anon.13*
  %dim = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string, i32 0, i32 0
  %7 = load i64, i64* %dim, align 8
  %conv5 = trunc i64 %7 to i32
  store i32 %conv5, i32* %len, align 4
  %8 = load i32, i32* %len, align 4
  %conv6 = sext i32 %8 to i64
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  call void @put_long(i64 %conv6, %struct._IO_FILE* %9)
  %10 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as7 = getelementptr inbounds %struct.obj, %struct.obj* %10, i32 0, i32 2
  %string8 = bitcast %union.anon* %storage_as7 to %struct.anon.13*
  %data = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string8, i32 0, i32 1
  %11 = load i8*, i8** %data, align 8
  %12 = load i32, i32* %len, align 4
  %conv9 = sext i32 %12 to i64
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call10 = call i64 @fwrite(i8* %11, i64 %conv9, i64 1, %struct._IO_FILE* %13)
  store %struct.obj* null, %struct.obj** %retval
  br label %return

sw.bb.11:                                         ; preds = %entry
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call12 = call i32 @_IO_putc(i32 14, %struct._IO_FILE* %14)
  %15 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as13 = getelementptr inbounds %struct.obj, %struct.obj* %15, i32 0, i32 2
  %double_array = bitcast %union.anon* %storage_as13 to %struct.anon.12*
  %dim14 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %double_array, i32 0, i32 0
  %16 = load i64, i64* %dim14, align 8
  %mul = mul i64 %16, 8
  %conv15 = trunc i64 %mul to i32
  store i32 %conv15, i32* %len, align 4
  %17 = load i32, i32* %len, align 4
  %conv16 = sext i32 %17 to i64
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  call void @put_long(i64 %conv16, %struct._IO_FILE* %18)
  %19 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as17 = getelementptr inbounds %struct.obj, %struct.obj* %19, i32 0, i32 2
  %double_array18 = bitcast %union.anon* %storage_as17 to %struct.anon.12*
  %data19 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %double_array18, i32 0, i32 1
  %20 = load double*, double** %data19, align 8
  %21 = bitcast double* %20 to i8*
  %22 = load i32, i32* %len, align 4
  %conv20 = sext i32 %22 to i64
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call21 = call i64 @fwrite(i8* %21, i64 %conv20, i64 1, %struct._IO_FILE* %23)
  store %struct.obj* null, %struct.obj** %retval
  br label %return

sw.bb.22:                                         ; preds = %entry
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call23 = call i32 @_IO_putc(i32 15, %struct._IO_FILE* %24)
  %25 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as24 = getelementptr inbounds %struct.obj, %struct.obj* %25, i32 0, i32 2
  %long_array = bitcast %union.anon* %storage_as24 to %struct.anon.11*
  %dim25 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %long_array, i32 0, i32 0
  %26 = load i64, i64* %dim25, align 8
  %mul26 = mul i64 %26, 8
  %conv27 = trunc i64 %mul26 to i32
  store i32 %conv27, i32* %len, align 4
  %27 = load i32, i32* %len, align 4
  %conv28 = sext i32 %27 to i64
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  call void @put_long(i64 %conv28, %struct._IO_FILE* %28)
  %29 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as29 = getelementptr inbounds %struct.obj, %struct.obj* %29, i32 0, i32 2
  %long_array30 = bitcast %union.anon* %storage_as29 to %struct.anon.11*
  %data31 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %long_array30, i32 0, i32 1
  %30 = load i64*, i64** %data31, align 8
  %31 = bitcast i64* %30 to i8*
  %32 = load i32, i32* %len, align 4
  %conv32 = sext i32 %32 to i64
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call33 = call i64 @fwrite(i8* %31, i64 %conv32, i64 1, %struct._IO_FILE* %33)
  store %struct.obj* null, %struct.obj** %retval
  br label %return

sw.bb.34:                                         ; preds = %entry
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call35 = call i32 @_IO_putc(i32 16, %struct._IO_FILE* %34)
  %35 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as36 = getelementptr inbounds %struct.obj, %struct.obj* %35, i32 0, i32 2
  %lisp_array = bitcast %union.anon* %storage_as36 to %struct.anon.16*
  %dim37 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %lisp_array, i32 0, i32 0
  %36 = load i64, i64* %dim37, align 8
  %conv38 = trunc i64 %36 to i32
  store i32 %conv38, i32* %len, align 4
  %37 = load i32, i32* %len, align 4
  %conv39 = sext i32 %37 to i64
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  call void @put_long(i64 %conv39, %struct._IO_FILE* %38)
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.34
  %39 = load i32, i32* %j, align 4
  %40 = load i32, i32* %len, align 4
  %cmp = icmp slt i32 %39, %40
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = load i32, i32* %j, align 4
  %idxprom = sext i32 %41 to i64
  %42 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as41 = getelementptr inbounds %struct.obj, %struct.obj* %42, i32 0, i32 2
  %lisp_array42 = bitcast %union.anon* %storage_as41 to %struct.anon.16*
  %data43 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %lisp_array42, i32 0, i32 1
  %43 = load %struct.obj**, %struct.obj*** %data43, align 8
  %arrayidx = getelementptr inbounds %struct.obj*, %struct.obj** %43, i64 %idxprom
  %44 = load %struct.obj*, %struct.obj** %arrayidx, align 8
  %45 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %call44 = call %struct.obj* @fast_print(%struct.obj* %44, %struct.obj* %45)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %46 = load i32, i32* %j, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.obj* null, %struct.obj** %retval
  br label %return

sw.default:                                       ; preds = %entry
  %call45 = call %struct.obj* @errswitch()
  store %struct.obj* %call45, %struct.obj** %retval
  br label %return

return:                                           ; preds = %sw.default, %for.end, %sw.bb.22, %sw.bb.11, %sw.bb
  %47 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %47
}

; Function Attrs: nounwind uwtable
define %struct.obj* @array_fast_read(i32 %code, %struct.obj* %table) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %code.addr = alloca i32, align 4
  %table.addr = alloca %struct.obj*, align 8
  %j = alloca i64, align 8
  %len = alloca i64, align 8
  %iflag = alloca i64, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %ptr = alloca %struct.obj*, align 8
  store i32 %code, i32* %code.addr, align 4
  store %struct.obj* %table, %struct.obj** %table.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %call = call %struct.obj* @car(%struct.obj* %0)
  %call1 = call %struct._IO_FILE* @get_c_file(%struct.obj* %call, %struct._IO_FILE* null)
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %f, align 8
  %1 = load i32, i32* %code.addr, align 4
  switch i32 %1, label %sw.default [
    i32 13, label %sw.bb
    i32 18, label %sw.bb.8
    i32 14, label %sw.bb.23
    i32 15, label %sw.bb.38
    i32 16, label %sw.bb.54
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call2 = call i64 @get_long(%struct._IO_FILE* %2)
  store i64 %call2, i64* %len, align 8
  %3 = load i64, i64* %len, align 8
  %call3 = call %struct.obj* @strcons(i64 %3, i8* null)
  store %struct.obj* %call3, %struct.obj** %ptr, align 8
  %4 = load %struct.obj*, %struct.obj** %ptr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 2
  %string = bitcast %union.anon* %storage_as to %struct.anon.13*
  %data = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string, i32 0, i32 1
  %5 = load i8*, i8** %data, align 8
  %6 = load i64, i64* %len, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call4 = call i64 @fread(i8* %5, i64 %6, i64 1, %struct._IO_FILE* %7)
  %8 = load i64, i64* %len, align 8
  %9 = load %struct.obj*, %struct.obj** %ptr, align 8
  %storage_as5 = getelementptr inbounds %struct.obj, %struct.obj* %9, i32 0, i32 2
  %string6 = bitcast %union.anon* %storage_as5 to %struct.anon.13*
  %data7 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string6, i32 0, i32 1
  %10 = load i8*, i8** %data7, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %8
  store i8 0, i8* %arrayidx, align 1
  %11 = load %struct.obj*, %struct.obj** %ptr, align 8
  store %struct.obj* %11, %struct.obj** %retval
  br label %return

sw.bb.8:                                          ; preds = %entry
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call9 = call i64 @get_long(%struct._IO_FILE* %12)
  store i64 %call9, i64* %len, align 8
  %call10 = call i64 @no_interrupt(i64 1)
  store i64 %call10, i64* %iflag, align 8
  %call11 = call %struct.obj* @newcell(i64 18)
  store %struct.obj* %call11, %struct.obj** %ptr, align 8
  %13 = load i64, i64* %len, align 8
  %14 = load %struct.obj*, %struct.obj** %ptr, align 8
  %storage_as12 = getelementptr inbounds %struct.obj, %struct.obj* %14, i32 0, i32 2
  %string13 = bitcast %union.anon* %storage_as12 to %struct.anon.13*
  %dim = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string13, i32 0, i32 0
  store i64 %13, i64* %dim, align 8
  %15 = load i64, i64* %len, align 8
  %call14 = call i8* @must_malloc(i64 %15)
  %16 = load %struct.obj*, %struct.obj** %ptr, align 8
  %storage_as15 = getelementptr inbounds %struct.obj, %struct.obj* %16, i32 0, i32 2
  %string16 = bitcast %union.anon* %storage_as15 to %struct.anon.13*
  %data17 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string16, i32 0, i32 1
  store i8* %call14, i8** %data17, align 8
  %17 = load %struct.obj*, %struct.obj** %ptr, align 8
  %storage_as18 = getelementptr inbounds %struct.obj, %struct.obj* %17, i32 0, i32 2
  %string19 = bitcast %union.anon* %storage_as18 to %struct.anon.13*
  %data20 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string19, i32 0, i32 1
  %18 = load i8*, i8** %data20, align 8
  %19 = load i64, i64* %len, align 8
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call21 = call i64 @fread(i8* %18, i64 %19, i64 1, %struct._IO_FILE* %20)
  %21 = load i64, i64* %iflag, align 8
  %call22 = call i64 @no_interrupt(i64 %21)
  %22 = load %struct.obj*, %struct.obj** %ptr, align 8
  store %struct.obj* %22, %struct.obj** %retval
  br label %return

sw.bb.23:                                         ; preds = %entry
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call24 = call i64 @get_long(%struct._IO_FILE* %23)
  store i64 %call24, i64* %len, align 8
  %call25 = call i64 @no_interrupt(i64 1)
  store i64 %call25, i64* %iflag, align 8
  %call26 = call %struct.obj* @newcell(i64 14)
  store %struct.obj* %call26, %struct.obj** %ptr, align 8
  %24 = load i64, i64* %len, align 8
  %25 = load %struct.obj*, %struct.obj** %ptr, align 8
  %storage_as27 = getelementptr inbounds %struct.obj, %struct.obj* %25, i32 0, i32 2
  %double_array = bitcast %union.anon* %storage_as27 to %struct.anon.12*
  %dim28 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %double_array, i32 0, i32 0
  store i64 %24, i64* %dim28, align 8
  %26 = load i64, i64* %len, align 8
  %mul = mul i64 %26, 8
  %call29 = call i8* @must_malloc(i64 %mul)
  %27 = bitcast i8* %call29 to double*
  %28 = load %struct.obj*, %struct.obj** %ptr, align 8
  %storage_as30 = getelementptr inbounds %struct.obj, %struct.obj* %28, i32 0, i32 2
  %double_array31 = bitcast %union.anon* %storage_as30 to %struct.anon.12*
  %data32 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %double_array31, i32 0, i32 1
  store double* %27, double** %data32, align 8
  %29 = load %struct.obj*, %struct.obj** %ptr, align 8
  %storage_as33 = getelementptr inbounds %struct.obj, %struct.obj* %29, i32 0, i32 2
  %double_array34 = bitcast %union.anon* %storage_as33 to %struct.anon.12*
  %data35 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %double_array34, i32 0, i32 1
  %30 = load double*, double** %data35, align 8
  %31 = bitcast double* %30 to i8*
  %32 = load i64, i64* %len, align 8
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call36 = call i64 @fread(i8* %31, i64 8, i64 %32, %struct._IO_FILE* %33)
  %34 = load i64, i64* %iflag, align 8
  %call37 = call i64 @no_interrupt(i64 %34)
  %35 = load %struct.obj*, %struct.obj** %ptr, align 8
  store %struct.obj* %35, %struct.obj** %retval
  br label %return

sw.bb.38:                                         ; preds = %entry
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call39 = call i64 @get_long(%struct._IO_FILE* %36)
  store i64 %call39, i64* %len, align 8
  %call40 = call i64 @no_interrupt(i64 1)
  store i64 %call40, i64* %iflag, align 8
  %call41 = call %struct.obj* @newcell(i64 15)
  store %struct.obj* %call41, %struct.obj** %ptr, align 8
  %37 = load i64, i64* %len, align 8
  %38 = load %struct.obj*, %struct.obj** %ptr, align 8
  %storage_as42 = getelementptr inbounds %struct.obj, %struct.obj* %38, i32 0, i32 2
  %long_array = bitcast %union.anon* %storage_as42 to %struct.anon.11*
  %dim43 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %long_array, i32 0, i32 0
  store i64 %37, i64* %dim43, align 8
  %39 = load i64, i64* %len, align 8
  %mul44 = mul i64 %39, 8
  %call45 = call i8* @must_malloc(i64 %mul44)
  %40 = bitcast i8* %call45 to i64*
  %41 = load %struct.obj*, %struct.obj** %ptr, align 8
  %storage_as46 = getelementptr inbounds %struct.obj, %struct.obj* %41, i32 0, i32 2
  %long_array47 = bitcast %union.anon* %storage_as46 to %struct.anon.11*
  %data48 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %long_array47, i32 0, i32 1
  store i64* %40, i64** %data48, align 8
  %42 = load %struct.obj*, %struct.obj** %ptr, align 8
  %storage_as49 = getelementptr inbounds %struct.obj, %struct.obj* %42, i32 0, i32 2
  %long_array50 = bitcast %union.anon* %storage_as49 to %struct.anon.11*
  %data51 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %long_array50, i32 0, i32 1
  %43 = load i64*, i64** %data51, align 8
  %44 = bitcast i64* %43 to i8*
  %45 = load i64, i64* %len, align 8
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call52 = call i64 @fread(i8* %44, i64 8, i64 %45, %struct._IO_FILE* %46)
  %47 = load i64, i64* %iflag, align 8
  %call53 = call i64 @no_interrupt(i64 %47)
  %48 = load %struct.obj*, %struct.obj** %ptr, align 8
  store %struct.obj* %48, %struct.obj** %retval
  br label %return

sw.bb.54:                                         ; preds = %entry
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call55 = call i64 @get_long(%struct._IO_FILE* %49)
  store i64 %call55, i64* %len, align 8
  %50 = load i64, i64* %len, align 8
  %conv = sitofp i64 %50 to double
  %51 = load %struct.obj*, %struct.obj** @bashnum, align 8
  %storage_as56 = getelementptr inbounds %struct.obj, %struct.obj* %51, i32 0, i32 2
  %flonum = bitcast %union.anon* %storage_as56 to %struct.anon.0*
  %data57 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum, i32 0, i32 0
  store double %conv, double* %data57, align 8
  %52 = load %struct.obj*, %struct.obj** @bashnum, align 8
  %call58 = call %struct.obj* @cons_array(%struct.obj* %52, %struct.obj* null)
  store %struct.obj* %call58, %struct.obj** %ptr, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.54
  %53 = load i64, i64* %j, align 8
  %54 = load i64, i64* %len, align 8
  %cmp = icmp slt i64 %53, %54
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %55 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %call60 = call %struct.obj* @fast_read(%struct.obj* %55)
  %56 = load i64, i64* %j, align 8
  %57 = load %struct.obj*, %struct.obj** %ptr, align 8
  %storage_as61 = getelementptr inbounds %struct.obj, %struct.obj* %57, i32 0, i32 2
  %lisp_array = bitcast %union.anon* %storage_as61 to %struct.anon.16*
  %data62 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %lisp_array, i32 0, i32 1
  %58 = load %struct.obj**, %struct.obj*** %data62, align 8
  %arrayidx63 = getelementptr inbounds %struct.obj*, %struct.obj** %58, i64 %56
  store %struct.obj* %call60, %struct.obj** %arrayidx63, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %59 = load i64, i64* %j, align 8
  %inc = add nsw i64 %59, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %60 = load %struct.obj*, %struct.obj** %ptr, align 8
  store %struct.obj* %60, %struct.obj** %retval
  br label %return

sw.default:                                       ; preds = %entry
  %call64 = call %struct.obj* @errswitch()
  store %struct.obj* %call64, %struct.obj** %retval
  br label %return

return:                                           ; preds = %sw.default, %for.end, %sw.bb.38, %sw.bb.23, %sw.bb.8, %sw.bb
  %61 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %61
}

; Function Attrs: nounwind uwtable
define %struct.obj* @array_equal(%struct.obj* %a, %struct.obj* %b) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %a.addr = alloca %struct.obj*, align 8
  %b.addr = alloca %struct.obj*, align 8
  %j = alloca i64, align 8
  %len = alloca i64, align 8
  store %struct.obj* %a, %struct.obj** %a.addr, align 8
  store %struct.obj* %b, %struct.obj** %b.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  switch i32 %cond, label %sw.default [
    i32 13, label %sw.bb
    i32 18, label %sw.bb
    i32 15, label %sw.bb.14
    i32 14, label %sw.bb.35
    i32 16, label %sw.bb.58
  ]

sw.bb:                                            ; preds = %cond.end, %cond.end
  %3 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %3, i32 0, i32 2
  %string = bitcast %union.anon* %storage_as to %struct.anon.13*
  %dim = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string, i32 0, i32 0
  %4 = load i64, i64* %dim, align 8
  store i64 %4, i64* %len, align 8
  %5 = load i64, i64* %len, align 8
  %6 = load %struct.obj*, %struct.obj** %b.addr, align 8
  %storage_as1 = getelementptr inbounds %struct.obj, %struct.obj* %6, i32 0, i32 2
  %string2 = bitcast %union.anon* %storage_as1 to %struct.anon.13*
  %dim3 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string2, i32 0, i32 0
  %7 = load i64, i64* %dim3, align 8
  %cmp4 = icmp ne i64 %5, %7
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  %8 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %storage_as6 = getelementptr inbounds %struct.obj, %struct.obj* %8, i32 0, i32 2
  %string7 = bitcast %union.anon* %storage_as6 to %struct.anon.13*
  %data = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string7, i32 0, i32 1
  %9 = load i8*, i8** %data, align 8
  %10 = load %struct.obj*, %struct.obj** %b.addr, align 8
  %storage_as8 = getelementptr inbounds %struct.obj, %struct.obj* %10, i32 0, i32 2
  %string9 = bitcast %union.anon* %storage_as8 to %struct.anon.13*
  %data10 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string9, i32 0, i32 1
  %11 = load i8*, i8** %data10, align 8
  %12 = load i64, i64* %len, align 8
  %call = call i32 @memcmp(i8* %9, i8* %11, i64 %12) #6
  %cmp11 = icmp eq i32 %call, 0
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end
  %13 = load %struct.obj*, %struct.obj** @sym_t, align 8
  store %struct.obj* %13, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %if.end
  store %struct.obj* null, %struct.obj** %retval
  br label %return

sw.bb.14:                                         ; preds = %cond.end
  %14 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %storage_as15 = getelementptr inbounds %struct.obj, %struct.obj* %14, i32 0, i32 2
  %long_array = bitcast %union.anon* %storage_as15 to %struct.anon.11*
  %dim16 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %long_array, i32 0, i32 0
  %15 = load i64, i64* %dim16, align 8
  store i64 %15, i64* %len, align 8
  %16 = load i64, i64* %len, align 8
  %17 = load %struct.obj*, %struct.obj** %b.addr, align 8
  %storage_as17 = getelementptr inbounds %struct.obj, %struct.obj* %17, i32 0, i32 2
  %long_array18 = bitcast %union.anon* %storage_as17 to %struct.anon.11*
  %dim19 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %long_array18, i32 0, i32 0
  %18 = load i64, i64* %dim19, align 8
  %cmp20 = icmp ne i64 %16, %18
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %sw.bb.14
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end.23:                                        ; preds = %sw.bb.14
  %19 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %storage_as24 = getelementptr inbounds %struct.obj, %struct.obj* %19, i32 0, i32 2
  %long_array25 = bitcast %union.anon* %storage_as24 to %struct.anon.11*
  %data26 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %long_array25, i32 0, i32 1
  %20 = load i64*, i64** %data26, align 8
  %21 = bitcast i64* %20 to i8*
  %22 = load %struct.obj*, %struct.obj** %b.addr, align 8
  %storage_as27 = getelementptr inbounds %struct.obj, %struct.obj* %22, i32 0, i32 2
  %long_array28 = bitcast %union.anon* %storage_as27 to %struct.anon.11*
  %data29 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %long_array28, i32 0, i32 1
  %23 = load i64*, i64** %data29, align 8
  %24 = bitcast i64* %23 to i8*
  %25 = load i64, i64* %len, align 8
  %mul = mul i64 %25, 8
  %call30 = call i32 @memcmp(i8* %21, i8* %24, i64 %mul) #6
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %if.end.23
  %26 = load %struct.obj*, %struct.obj** @sym_t, align 8
  store %struct.obj* %26, %struct.obj** %retval
  br label %return

if.else.34:                                       ; preds = %if.end.23
  store %struct.obj* null, %struct.obj** %retval
  br label %return

sw.bb.35:                                         ; preds = %cond.end
  %27 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %storage_as36 = getelementptr inbounds %struct.obj, %struct.obj* %27, i32 0, i32 2
  %double_array = bitcast %union.anon* %storage_as36 to %struct.anon.12*
  %dim37 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %double_array, i32 0, i32 0
  %28 = load i64, i64* %dim37, align 8
  store i64 %28, i64* %len, align 8
  %29 = load i64, i64* %len, align 8
  %30 = load %struct.obj*, %struct.obj** %b.addr, align 8
  %storage_as38 = getelementptr inbounds %struct.obj, %struct.obj* %30, i32 0, i32 2
  %double_array39 = bitcast %union.anon* %storage_as38 to %struct.anon.12*
  %dim40 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %double_array39, i32 0, i32 0
  %31 = load i64, i64* %dim40, align 8
  %cmp41 = icmp ne i64 %29, %31
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %sw.bb.35
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end.44:                                        ; preds = %sw.bb.35
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.44
  %32 = load i64, i64* %j, align 8
  %33 = load i64, i64* %len, align 8
  %cmp45 = icmp slt i64 %32, %33
  br i1 %cmp45, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load i64, i64* %j, align 8
  %35 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %storage_as47 = getelementptr inbounds %struct.obj, %struct.obj* %35, i32 0, i32 2
  %double_array48 = bitcast %union.anon* %storage_as47 to %struct.anon.12*
  %data49 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %double_array48, i32 0, i32 1
  %36 = load double*, double** %data49, align 8
  %arrayidx = getelementptr inbounds double, double* %36, i64 %34
  %37 = load double, double* %arrayidx, align 8
  %38 = load i64, i64* %j, align 8
  %39 = load %struct.obj*, %struct.obj** %b.addr, align 8
  %storage_as50 = getelementptr inbounds %struct.obj, %struct.obj* %39, i32 0, i32 2
  %double_array51 = bitcast %union.anon* %storage_as50 to %struct.anon.12*
  %data52 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %double_array51, i32 0, i32 1
  %40 = load double*, double** %data52, align 8
  %arrayidx53 = getelementptr inbounds double, double* %40, i64 %38
  %41 = load double, double* %arrayidx53, align 8
  %cmp54 = fcmp une double %37, %41
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %for.body
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end.57:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.57
  %42 = load i64, i64* %j, align 8
  %inc = add nsw i64 %42, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load %struct.obj*, %struct.obj** @sym_t, align 8
  store %struct.obj* %43, %struct.obj** %retval
  br label %return

sw.bb.58:                                         ; preds = %cond.end
  %44 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %storage_as59 = getelementptr inbounds %struct.obj, %struct.obj* %44, i32 0, i32 2
  %lisp_array = bitcast %union.anon* %storage_as59 to %struct.anon.16*
  %dim60 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %lisp_array, i32 0, i32 0
  %45 = load i64, i64* %dim60, align 8
  store i64 %45, i64* %len, align 8
  %46 = load i64, i64* %len, align 8
  %47 = load %struct.obj*, %struct.obj** %b.addr, align 8
  %storage_as61 = getelementptr inbounds %struct.obj, %struct.obj* %47, i32 0, i32 2
  %lisp_array62 = bitcast %union.anon* %storage_as61 to %struct.anon.16*
  %dim63 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %lisp_array62, i32 0, i32 0
  %48 = load i64, i64* %dim63, align 8
  %cmp64 = icmp ne i64 %46, %48
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %sw.bb.58
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end.67:                                        ; preds = %sw.bb.58
  store i64 0, i64* %j, align 8
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.85, %if.end.67
  %49 = load i64, i64* %j, align 8
  %50 = load i64, i64* %len, align 8
  %cmp69 = icmp slt i64 %49, %50
  br i1 %cmp69, label %for.body.71, label %for.end.87

for.body.71:                                      ; preds = %for.cond.68
  %51 = load i64, i64* %j, align 8
  %52 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %storage_as72 = getelementptr inbounds %struct.obj, %struct.obj* %52, i32 0, i32 2
  %lisp_array73 = bitcast %union.anon* %storage_as72 to %struct.anon.16*
  %data74 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %lisp_array73, i32 0, i32 1
  %53 = load %struct.obj**, %struct.obj*** %data74, align 8
  %arrayidx75 = getelementptr inbounds %struct.obj*, %struct.obj** %53, i64 %51
  %54 = load %struct.obj*, %struct.obj** %arrayidx75, align 8
  %55 = load i64, i64* %j, align 8
  %56 = load %struct.obj*, %struct.obj** %b.addr, align 8
  %storage_as76 = getelementptr inbounds %struct.obj, %struct.obj* %56, i32 0, i32 2
  %lisp_array77 = bitcast %union.anon* %storage_as76 to %struct.anon.16*
  %data78 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %lisp_array77, i32 0, i32 1
  %57 = load %struct.obj**, %struct.obj*** %data78, align 8
  %arrayidx79 = getelementptr inbounds %struct.obj*, %struct.obj** %57, i64 %55
  %58 = load %struct.obj*, %struct.obj** %arrayidx79, align 8
  %call80 = call %struct.obj* @equal(%struct.obj* %54, %struct.obj* %58)
  %cmp81 = icmp eq %struct.obj* %call80, null
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %for.body.71
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end.84:                                        ; preds = %for.body.71
  br label %for.inc.85

for.inc.85:                                       ; preds = %if.end.84
  %59 = load i64, i64* %j, align 8
  %inc86 = add nsw i64 %59, 1
  store i64 %inc86, i64* %j, align 8
  br label %for.cond.68

for.end.87:                                       ; preds = %for.cond.68
  %60 = load %struct.obj*, %struct.obj** @sym_t, align 8
  store %struct.obj* %60, %struct.obj** %retval
  br label %return

sw.default:                                       ; preds = %cond.end
  %call88 = call %struct.obj* @errswitch()
  store %struct.obj* %call88, %struct.obj** %retval
  br label %return

return:                                           ; preds = %sw.default, %for.end.87, %if.then.83, %if.then.66, %for.end, %if.then.56, %if.then.43, %if.else.34, %if.then.33, %if.then.22, %if.else, %if.then.13, %if.then
  %61 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %61
}

; Function Attrs: nounwind uwtable
define i64 @array_sxhash(%struct.obj* %a, i64 %n) #0 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca %struct.obj*, align 8
  %n.addr = alloca i64, align 8
  %j = alloca i64, align 8
  %len = alloca i64, align 8
  %hash = alloca i64, align 8
  %char_data = alloca i8*, align 8
  %long_data = alloca i64*, align 8
  %double_data = alloca double*, align 8
  store %struct.obj* %a, %struct.obj** %a.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  switch i32 %cond, label %sw.default [
    i32 13, label %sw.bb
    i32 18, label %sw.bb
    i32 15, label %sw.bb.6
    i32 14, label %sw.bb.25
    i32 16, label %sw.bb.45
  ]

sw.bb:                                            ; preds = %cond.end, %cond.end
  %3 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %3, i32 0, i32 2
  %string = bitcast %union.anon* %storage_as to %struct.anon.13*
  %dim = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string, i32 0, i32 0
  %4 = load i64, i64* %dim, align 8
  store i64 %4, i64* %len, align 8
  store i64 0, i64* %j, align 8
  store i64 0, i64* %hash, align 8
  %5 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %storage_as1 = getelementptr inbounds %struct.obj, %struct.obj* %5, i32 0, i32 2
  %string2 = bitcast %union.anon* %storage_as1 to %struct.anon.13*
  %data = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string2, i32 0, i32 1
  %6 = load i8*, i8** %data, align 8
  store i8* %6, i8** %char_data, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %7 = load i64, i64* %j, align 8
  %8 = load i64, i64* %len, align 8
  %cmp3 = icmp slt i64 %7, %8
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i64, i64* %hash, align 8
  %mul = mul nsw i64 %9, 17
  %add = add nsw i64 %mul, 1
  %10 = load i8*, i8** %char_data, align 8
  %11 = load i8, i8* %10, align 1
  %conv5 = zext i8 %11 to i64
  %xor = xor i64 %add, %conv5
  %12 = load i64, i64* %n.addr, align 8
  %rem = srem i64 %xor, %12
  store i64 %rem, i64* %hash, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i64, i64* %j, align 8
  %inc = add nsw i64 %13, 1
  store i64 %inc, i64* %j, align 8
  %14 = load i8*, i8** %char_data, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %char_data, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i64, i64* %hash, align 8
  store i64 %15, i64* %retval
  br label %return

sw.bb.6:                                          ; preds = %cond.end
  %16 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %storage_as7 = getelementptr inbounds %struct.obj, %struct.obj* %16, i32 0, i32 2
  %long_array = bitcast %union.anon* %storage_as7 to %struct.anon.11*
  %dim8 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %long_array, i32 0, i32 0
  %17 = load i64, i64* %dim8, align 8
  store i64 %17, i64* %len, align 8
  store i64 0, i64* %j, align 8
  store i64 0, i64* %hash, align 8
  %18 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %storage_as9 = getelementptr inbounds %struct.obj, %struct.obj* %18, i32 0, i32 2
  %long_array10 = bitcast %union.anon* %storage_as9 to %struct.anon.11*
  %data11 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %long_array10, i32 0, i32 1
  %19 = load i64*, i64** %data11, align 8
  store i64* %19, i64** %long_data, align 8
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.21, %sw.bb.6
  %20 = load i64, i64* %j, align 8
  %21 = load i64, i64* %len, align 8
  %cmp13 = icmp slt i64 %20, %21
  br i1 %cmp13, label %for.body.15, label %for.end.24

for.body.15:                                      ; preds = %for.cond.12
  %22 = load i64, i64* %hash, align 8
  %mul16 = mul nsw i64 %22, 17
  %add17 = add nsw i64 %mul16, 1
  %23 = load i64*, i64** %long_data, align 8
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %n.addr, align 8
  %rem18 = urem i64 %24, %25
  %xor19 = xor i64 %add17, %rem18
  %26 = load i64, i64* %n.addr, align 8
  %rem20 = urem i64 %xor19, %26
  store i64 %rem20, i64* %hash, align 8
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.body.15
  %27 = load i64, i64* %j, align 8
  %inc22 = add nsw i64 %27, 1
  store i64 %inc22, i64* %j, align 8
  %28 = load i64*, i64** %long_data, align 8
  %incdec.ptr23 = getelementptr inbounds i64, i64* %28, i32 1
  store i64* %incdec.ptr23, i64** %long_data, align 8
  br label %for.cond.12

for.end.24:                                       ; preds = %for.cond.12
  %29 = load i64, i64* %hash, align 8
  store i64 %29, i64* %retval
  br label %return

sw.bb.25:                                         ; preds = %cond.end
  %30 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %storage_as26 = getelementptr inbounds %struct.obj, %struct.obj* %30, i32 0, i32 2
  %double_array = bitcast %union.anon* %storage_as26 to %struct.anon.12*
  %dim27 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %double_array, i32 0, i32 0
  %31 = load i64, i64* %dim27, align 8
  store i64 %31, i64* %len, align 8
  store i64 0, i64* %j, align 8
  store i64 0, i64* %hash, align 8
  %32 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %storage_as28 = getelementptr inbounds %struct.obj, %struct.obj* %32, i32 0, i32 2
  %double_array29 = bitcast %union.anon* %storage_as28 to %struct.anon.12*
  %data30 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %double_array29, i32 0, i32 1
  %33 = load double*, double** %data30, align 8
  store double* %33, double** %double_data, align 8
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.41, %sw.bb.25
  %34 = load i64, i64* %j, align 8
  %35 = load i64, i64* %len, align 8
  %cmp32 = icmp slt i64 %34, %35
  br i1 %cmp32, label %for.body.34, label %for.end.44

for.body.34:                                      ; preds = %for.cond.31
  %36 = load i64, i64* %hash, align 8
  %mul35 = mul nsw i64 %36, 17
  %add36 = add nsw i64 %mul35, 1
  %37 = load double*, double** %double_data, align 8
  %38 = load double, double* %37, align 8
  %conv37 = fptoui double %38 to i64
  %39 = load i64, i64* %n.addr, align 8
  %rem38 = urem i64 %conv37, %39
  %xor39 = xor i64 %add36, %rem38
  %40 = load i64, i64* %n.addr, align 8
  %rem40 = urem i64 %xor39, %40
  store i64 %rem40, i64* %hash, align 8
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.34
  %41 = load i64, i64* %j, align 8
  %inc42 = add nsw i64 %41, 1
  store i64 %inc42, i64* %j, align 8
  %42 = load double*, double** %double_data, align 8
  %incdec.ptr43 = getelementptr inbounds double, double* %42, i32 1
  store double* %incdec.ptr43, double** %double_data, align 8
  br label %for.cond.31

for.end.44:                                       ; preds = %for.cond.31
  %43 = load i64, i64* %hash, align 8
  store i64 %43, i64* %retval
  br label %return

sw.bb.45:                                         ; preds = %cond.end
  %44 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %storage_as46 = getelementptr inbounds %struct.obj, %struct.obj* %44, i32 0, i32 2
  %lisp_array = bitcast %union.anon* %storage_as46 to %struct.anon.16*
  %dim47 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %lisp_array, i32 0, i32 0
  %45 = load i64, i64* %dim47, align 8
  store i64 %45, i64* %len, align 8
  store i64 0, i64* %j, align 8
  store i64 0, i64* %hash, align 8
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.59, %sw.bb.45
  %46 = load i64, i64* %j, align 8
  %47 = load i64, i64* %len, align 8
  %cmp49 = icmp slt i64 %46, %47
  br i1 %cmp49, label %for.body.51, label %for.end.61

for.body.51:                                      ; preds = %for.cond.48
  %48 = load i64, i64* %hash, align 8
  %mul52 = mul nsw i64 %48, 17
  %add53 = add nsw i64 %mul52, 1
  %49 = load i64, i64* %j, align 8
  %50 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %storage_as54 = getelementptr inbounds %struct.obj, %struct.obj* %50, i32 0, i32 2
  %lisp_array55 = bitcast %union.anon* %storage_as54 to %struct.anon.16*
  %data56 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %lisp_array55, i32 0, i32 1
  %51 = load %struct.obj**, %struct.obj*** %data56, align 8
  %arrayidx = getelementptr inbounds %struct.obj*, %struct.obj** %51, i64 %49
  %52 = load %struct.obj*, %struct.obj** %arrayidx, align 8
  %53 = load i64, i64* %n.addr, align 8
  %call = call i64 @c_sxhash(%struct.obj* %52, i64 %53)
  %xor57 = xor i64 %add53, %call
  %54 = load i64, i64* %n.addr, align 8
  %rem58 = srem i64 %xor57, %54
  store i64 %rem58, i64* %hash, align 8
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.body.51
  %55 = load i64, i64* %j, align 8
  %inc60 = add nsw i64 %55, 1
  store i64 %inc60, i64* %j, align 8
  br label %for.cond.48

for.end.61:                                       ; preds = %for.cond.48
  %56 = load i64, i64* %hash, align 8
  store i64 %56, i64* %retval
  br label %return

sw.default:                                       ; preds = %cond.end
  %call62 = call %struct.obj* @errswitch()
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %sw.default, %for.end.61, %for.end.44, %for.end.24, %for.end
  %57 = load i64, i64* %retval
  ret i64 %57
}

; Function Attrs: nounwind uwtable
define void @init_storage_a() #0 {
entry:
  call void @gc_protect(%struct.obj** @bashnum)
  %call = call %struct.obj* @newcell(i64 2)
  store %struct.obj* %call, %struct.obj** @bashnum, align 8
  call void @init_storage_a1(i64 13)
  call void @init_storage_a1(i64 14)
  call void @init_storage_a1(i64 15)
  call void @init_storage_a1(i64 16)
  call void @init_storage_a1(i64 18)
  ret void
}

declare void @gc_protect(%struct.obj**) #1

declare %struct.obj* @newcell(i64) #1

declare void @gc_fatal_error() #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare %struct.obj* @gc_relocate(%struct.obj*) #1

declare void @gc_mark(%struct.obj*) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

declare void @gput_st(%struct.gen_printio*, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strcspn(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

declare %struct.obj* @lprin1g(%struct.obj*, %struct.gen_printio*) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @strcons(i64 %length, i8* %data) #0 {
entry:
  %length.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %flag = alloca i64, align 8
  %s = alloca %struct.obj*, align 8
  store i64 %length, i64* %length.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %call = call i64 @no_interrupt(i64 1)
  store i64 %call, i64* %flag, align 8
  %call1 = call %struct.obj* @cons(%struct.obj* null, %struct.obj* null)
  store %struct.obj* %call1, %struct.obj** %s, align 8
  %0 = load %struct.obj*, %struct.obj** %s, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %0, i32 0, i32 1
  store i16 13, i16* %type, align 2
  %1 = load i64, i64* %length.addr, align 8
  %cmp = icmp eq i64 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8
  %call2 = call i64 @strlen(i8* %2) #6
  store i64 %call2, i64* %length.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* %length.addr, align 8
  %add = add nsw i64 %3, 1
  %call3 = call i8* @must_malloc(i64 %add)
  %4 = load %struct.obj*, %struct.obj** %s, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 2
  %string = bitcast %union.anon* %storage_as to %struct.anon.13*
  %data4 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string, i32 0, i32 1
  store i8* %call3, i8** %data4, align 8
  %5 = load i64, i64* %length.addr, align 8
  %6 = load %struct.obj*, %struct.obj** %s, align 8
  %storage_as5 = getelementptr inbounds %struct.obj, %struct.obj* %6, i32 0, i32 2
  %string6 = bitcast %union.anon* %storage_as5 to %struct.anon.13*
  %dim = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string6, i32 0, i32 0
  store i64 %5, i64* %dim, align 8
  %7 = load i8*, i8** %data.addr, align 8
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %if.end
  %8 = load %struct.obj*, %struct.obj** %s, align 8
  %storage_as8 = getelementptr inbounds %struct.obj, %struct.obj* %8, i32 0, i32 2
  %string9 = bitcast %union.anon* %storage_as8 to %struct.anon.13*
  %data10 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string9, i32 0, i32 1
  %9 = load i8*, i8** %data10, align 8
  %10 = load i8*, i8** %data.addr, align 8
  %11 = load i64, i64* %length.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 %11, i32 1, i1 false)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.7, %if.end
  %12 = load i64, i64* %length.addr, align 8
  %13 = load %struct.obj*, %struct.obj** %s, align 8
  %storage_as12 = getelementptr inbounds %struct.obj, %struct.obj* %13, i32 0, i32 2
  %string13 = bitcast %union.anon* %storage_as12 to %struct.anon.13*
  %data14 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string13, i32 0, i32 1
  %14 = load i8*, i8** %data14, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %12
  store i8 0, i8* %arrayidx, align 1
  %15 = load i64, i64* %flag, align 8
  %call15 = call i64 @no_interrupt(i64 %15)
  %16 = load %struct.obj*, %struct.obj** %s, align 8
  ret %struct.obj* %16
}

declare i64 @no_interrupt(i64) #1

declare %struct.obj* @cons(%struct.obj*, %struct.obj*) #1

declare i8* @must_malloc(i64) #1

; Function Attrs: nounwind uwtable
define i32 @rfs_getc(i8** %p) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  store i8** %p, i8*** %p.addr, align 8
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  store i32 %conv, i32* %i, align 4
  %3 = load i32, i32* %i, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8**, i8*** %p.addr, align 8
  %5 = load i8*, i8** %4, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8**, i8*** %p.addr, align 8
  store i8* %add.ptr, i8** %6, align 8
  %7 = load i32, i32* %i, align 4
  store i32 %7, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define void @rfs_ungetc(i8 zeroext %c, i8** %p) #0 {
entry:
  %c.addr = alloca i8, align 1
  %p.addr = alloca i8**, align 8
  store i8 %c, i8* %c.addr, align 1
  store i8** %p, i8*** %p.addr, align 8
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 -1
  %2 = load i8**, i8*** %p.addr, align 8
  store i8* %add.ptr, i8** %2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.obj* @read_from_string(%struct.obj* %x) #0 {
entry:
  %x.addr = alloca %struct.obj*, align 8
  %p = alloca i8*, align 8
  %s = alloca %struct.gen_readio, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call i8* @get_c_string(%struct.obj* %0)
  store i8* %call, i8** %p, align 8
  %getc_fcn = getelementptr inbounds %struct.gen_readio, %struct.gen_readio* %s, i32 0, i32 0
  store i32 (i8*)* bitcast (i32 (i8**)* @rfs_getc to i32 (i8*)*), i32 (i8*)** %getc_fcn, align 8
  %ungetc_fcn = getelementptr inbounds %struct.gen_readio, %struct.gen_readio* %s, i32 0, i32 1
  store void (i32, i8*)* bitcast (void (i8, i8**)* @rfs_ungetc to void (i32, i8*)*), void (i32, i8*)** %ungetc_fcn, align 8
  %1 = bitcast i8** %p to i8*
  %cb_argument = getelementptr inbounds %struct.gen_readio, %struct.gen_readio* %s, i32 0, i32 2
  store i8* %1, i8** %cb_argument, align 8
  %call1 = call %struct.obj* @readtl(%struct.gen_readio* %s)
  ret %struct.obj* %call1
}

declare i8* @get_c_string(%struct.obj*) #1

declare %struct.obj* @readtl(%struct.gen_readio*) #1

; Function Attrs: nounwind uwtable
define i32 @pts_puts(i8* %from, i8* %cb) #0 {
entry:
  %from.addr = alloca i8*, align 8
  %cb.addr = alloca i8*, align 8
  %into = alloca %struct.obj*, align 8
  %fromlen = alloca i64, align 8
  %intolen = alloca i64, align 8
  %intosize = alloca i64, align 8
  %fitsize = alloca i64, align 8
  store i8* %from, i8** %from.addr, align 8
  store i8* %cb, i8** %cb.addr, align 8
  %0 = load i8*, i8** %cb.addr, align 8
  %1 = bitcast i8* %0 to %struct.obj*
  store %struct.obj* %1, %struct.obj** %into, align 8
  %2 = load i8*, i8** %from.addr, align 8
  %call = call i64 @strlen(i8* %2) #6
  store i64 %call, i64* %fromlen, align 8
  %3 = load %struct.obj*, %struct.obj** %into, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %3, i32 0, i32 2
  %string = bitcast %union.anon* %storage_as to %struct.anon.13*
  %data = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string, i32 0, i32 1
  %4 = load i8*, i8** %data, align 8
  %call1 = call i64 @strlen(i8* %4) #6
  store i64 %call1, i64* %intolen, align 8
  %5 = load %struct.obj*, %struct.obj** %into, align 8
  %storage_as2 = getelementptr inbounds %struct.obj, %struct.obj* %5, i32 0, i32 2
  %string3 = bitcast %union.anon* %storage_as2 to %struct.anon.13*
  %dim = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string3, i32 0, i32 0
  %6 = load i64, i64* %dim, align 8
  %7 = load i64, i64* %intolen, align 8
  %sub = sub i64 %6, %7
  store i64 %sub, i64* %intosize, align 8
  %8 = load i64, i64* %fromlen, align 8
  %9 = load i64, i64* %intosize, align 8
  %cmp = icmp ult i64 %8, %9
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %10 = load i64, i64* %fromlen, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %11 = load i64, i64* %intosize, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %10, %cond.true ], [ %11, %cond.false ]
  store i64 %cond, i64* %fitsize, align 8
  %12 = load i64, i64* %intolen, align 8
  %13 = load %struct.obj*, %struct.obj** %into, align 8
  %storage_as4 = getelementptr inbounds %struct.obj, %struct.obj* %13, i32 0, i32 2
  %string5 = bitcast %union.anon* %storage_as4 to %struct.anon.13*
  %data6 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string5, i32 0, i32 1
  %14 = load i8*, i8** %data6, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %12
  %15 = load i8*, i8** %from.addr, align 8
  %16 = load i64, i64* %fitsize, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx, i8* %15, i64 %16, i32 1, i1 false)
  %17 = load i64, i64* %intolen, align 8
  %18 = load i64, i64* %fitsize, align 8
  %add = add i64 %17, %18
  %19 = load %struct.obj*, %struct.obj** %into, align 8
  %storage_as7 = getelementptr inbounds %struct.obj, %struct.obj* %19, i32 0, i32 2
  %string8 = bitcast %union.anon* %storage_as7 to %struct.anon.13*
  %data9 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string8, i32 0, i32 1
  %20 = load i8*, i8** %data9, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %20, i64 %add
  store i8 0, i8* %arrayidx10, align 1
  %21 = load i64, i64* %fitsize, align 8
  %22 = load i64, i64* %fromlen, align 8
  %cmp11 = icmp ult i64 %21, %22
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %call12 = call %struct.obj* @err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0), %struct.obj* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 1
}

declare %struct.obj* @err(i8*, %struct.obj*) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @err_wta_str(%struct.obj* %exp) #0 {
entry:
  %exp.addr = alloca %struct.obj*, align 8
  store %struct.obj* %exp, %struct.obj** %exp.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %exp.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), %struct.obj* %0)
  ret %struct.obj* %call
}

; Function Attrs: nounwind uwtable
define %struct.obj* @print_to_string(%struct.obj* %exp, %struct.obj* %str, %struct.obj* %nostart) #0 {
entry:
  %exp.addr = alloca %struct.obj*, align 8
  %str.addr = alloca %struct.obj*, align 8
  %nostart.addr = alloca %struct.obj*, align 8
  %s = alloca %struct.gen_printio, align 8
  store %struct.obj* %exp, %struct.obj** %exp.addr, align 8
  store %struct.obj* %str, %struct.obj** %str.addr, align 8
  store %struct.obj* %nostart, %struct.obj** %nostart.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %str.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %str.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp ne i32 %cond, 13
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %str.addr, align 8
  %call = call %struct.obj* @err_wta_str(%struct.obj* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %putc_fcn = getelementptr inbounds %struct.gen_printio, %struct.gen_printio* %s, i32 0, i32 0
  store i32 (i32, i8*)* null, i32 (i32, i8*)** %putc_fcn, align 8
  %puts_fcn = getelementptr inbounds %struct.gen_printio, %struct.gen_printio* %s, i32 0, i32 1
  store i32 (i8*, i8*)* @pts_puts, i32 (i8*, i8*)** %puts_fcn, align 8
  %4 = load %struct.obj*, %struct.obj** %str.addr, align 8
  %5 = bitcast %struct.obj* %4 to i8*
  %cb_argument = getelementptr inbounds %struct.gen_printio, %struct.gen_printio* %s, i32 0, i32 2
  store i8* %5, i8** %cb_argument, align 8
  %6 = load %struct.obj*, %struct.obj** %nostart.addr, align 8
  %cmp3 = icmp eq %struct.obj* %6, null
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %7 = load %struct.obj*, %struct.obj** %str.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %7, i32 0, i32 2
  %string = bitcast %union.anon* %storage_as to %struct.anon.13*
  %data = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string, i32 0, i32 1
  %8 = load i8*, i8** %data, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %9 = load %struct.obj*, %struct.obj** %exp.addr, align 8
  %call7 = call %struct.obj* @lprin1g(%struct.obj* %9, %struct.gen_printio* %s)
  %10 = load %struct.obj*, %struct.obj** %str.addr, align 8
  ret %struct.obj* %10
}

; Function Attrs: nounwind uwtable
define %struct.obj* @aref1(%struct.obj* %a, %struct.obj* %i) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %a.addr = alloca %struct.obj*, align 8
  %i.addr = alloca %struct.obj*, align 8
  %k = alloca i64, align 8
  store %struct.obj* %a, %struct.obj** %a.addr, align 8
  store %struct.obj* %i, %struct.obj** %i.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %i.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %i.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp ne i32 %cond, 2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %i.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), %struct.obj* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %4 = load %struct.obj*, %struct.obj** %i.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 2
  %flonum = bitcast %union.anon* %storage_as to %struct.anon.0*
  %data = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum, i32 0, i32 0
  %5 = load double, double* %data, align 8
  %conv3 = fptosi double %5 to i64
  store i64 %conv3, i64* %k, align 8
  %6 = load i64, i64* %k, align 8
  %cmp4 = icmp slt i64 %6, 0
  br i1 %cmp4, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %7 = load %struct.obj*, %struct.obj** %i.addr, align 8
  %call7 = call %struct.obj* @err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0), %struct.obj* %7)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %8 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %cmp9 = icmp eq %struct.obj* %8, null
  br i1 %cmp9, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %if.end.8
  br label %cond.end.15

cond.false.12:                                    ; preds = %if.end.8
  %9 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %type13 = getelementptr inbounds %struct.obj, %struct.obj* %9, i32 0, i32 1
  %10 = load i16, i16* %type13, align 2
  %conv14 = sext i16 %10 to i32
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.12, %cond.true.11
  %cond16 = phi i32 [ 0, %cond.true.11 ], [ %conv14, %cond.false.12 ]
  switch i32 %cond16, label %sw.default [
    i32 13, label %sw.bb
    i32 18, label %sw.bb.27
    i32 14, label %sw.bb.42
    i32 15, label %sw.bb.55
    i32 16, label %sw.bb.69
  ]

sw.bb:                                            ; preds = %cond.end.15
  %11 = load i64, i64* %k, align 8
  %12 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %storage_as17 = getelementptr inbounds %struct.obj, %struct.obj* %12, i32 0, i32 2
  %string = bitcast %union.anon* %storage_as17 to %struct.anon.13*
  %dim = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string, i32 0, i32 0
  %13 = load i64, i64* %dim, align 8
  %cmp18 = icmp sge i64 %11, %13
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %sw.bb
  %14 = load %struct.obj*, %struct.obj** %i.addr, align 8
  %call21 = call %struct.obj* @err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), %struct.obj* %14)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %sw.bb
  %15 = load i64, i64* %k, align 8
  %16 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %storage_as23 = getelementptr inbounds %struct.obj, %struct.obj* %16, i32 0, i32 2
  %u_string = bitcast %union.anon* %storage_as23 to %struct.anon.14*
  %data24 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %u_string, i32 0, i32 1
  %17 = load i8*, i8** %data24, align 8
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 %15
  %18 = load i8, i8* %arrayidx, align 1
  %conv25 = uitofp i8 %18 to double
  %call26 = call %struct.obj* @flocons(double %conv25)
  store %struct.obj* %call26, %struct.obj** %retval
  br label %return

sw.bb.27:                                         ; preds = %cond.end.15
  %19 = load i64, i64* %k, align 8
  %20 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %storage_as28 = getelementptr inbounds %struct.obj, %struct.obj* %20, i32 0, i32 2
  %string29 = bitcast %union.anon* %storage_as28 to %struct.anon.13*
  %dim30 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string29, i32 0, i32 0
  %21 = load i64, i64* %dim30, align 8
  %cmp31 = icmp sge i64 %19, %21
  br i1 %cmp31, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %sw.bb.27
  %22 = load %struct.obj*, %struct.obj** %i.addr, align 8
  %call34 = call %struct.obj* @err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), %struct.obj* %22)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %sw.bb.27
  %23 = load i64, i64* %k, align 8
  %24 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %storage_as36 = getelementptr inbounds %struct.obj, %struct.obj* %24, i32 0, i32 2
  %string37 = bitcast %union.anon* %storage_as36 to %struct.anon.13*
  %data38 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string37, i32 0, i32 1
  %25 = load i8*, i8** %data38, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %25, i64 %23
  %26 = load i8, i8* %arrayidx39, align 1
  %conv40 = sitofp i8 %26 to double
  %call41 = call %struct.obj* @flocons(double %conv40)
  store %struct.obj* %call41, %struct.obj** %retval
  br label %return

sw.bb.42:                                         ; preds = %cond.end.15
  %27 = load i64, i64* %k, align 8
  %28 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %storage_as43 = getelementptr inbounds %struct.obj, %struct.obj* %28, i32 0, i32 2
  %double_array = bitcast %union.anon* %storage_as43 to %struct.anon.12*
  %dim44 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %double_array, i32 0, i32 0
  %29 = load i64, i64* %dim44, align 8
  %cmp45 = icmp sge i64 %27, %29
  br i1 %cmp45, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %sw.bb.42
  %30 = load %struct.obj*, %struct.obj** %i.addr, align 8
  %call48 = call %struct.obj* @err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), %struct.obj* %30)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %sw.bb.42
  %31 = load i64, i64* %k, align 8
  %32 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %storage_as50 = getelementptr inbounds %struct.obj, %struct.obj* %32, i32 0, i32 2
  %double_array51 = bitcast %union.anon* %storage_as50 to %struct.anon.12*
  %data52 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %double_array51, i32 0, i32 1
  %33 = load double*, double** %data52, align 8
  %arrayidx53 = getelementptr inbounds double, double* %33, i64 %31
  %34 = load double, double* %arrayidx53, align 8
  %call54 = call %struct.obj* @flocons(double %34)
  store %struct.obj* %call54, %struct.obj** %retval
  br label %return

sw.bb.55:                                         ; preds = %cond.end.15
  %35 = load i64, i64* %k, align 8
  %36 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %storage_as56 = getelementptr inbounds %struct.obj, %struct.obj* %36, i32 0, i32 2
  %long_array = bitcast %union.anon* %storage_as56 to %struct.anon.11*
  %dim57 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %long_array, i32 0, i32 0
  %37 = load i64, i64* %dim57, align 8
  %cmp58 = icmp sge i64 %35, %37
  br i1 %cmp58, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %sw.bb.55
  %38 = load %struct.obj*, %struct.obj** %i.addr, align 8
  %call61 = call %struct.obj* @err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), %struct.obj* %38)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %sw.bb.55
  %39 = load i64, i64* %k, align 8
  %40 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %storage_as63 = getelementptr inbounds %struct.obj, %struct.obj* %40, i32 0, i32 2
  %long_array64 = bitcast %union.anon* %storage_as63 to %struct.anon.11*
  %data65 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %long_array64, i32 0, i32 1
  %41 = load i64*, i64** %data65, align 8
  %arrayidx66 = getelementptr inbounds i64, i64* %41, i64 %39
  %42 = load i64, i64* %arrayidx66, align 8
  %conv67 = sitofp i64 %42 to double
  %call68 = call %struct.obj* @flocons(double %conv67)
  store %struct.obj* %call68, %struct.obj** %retval
  br label %return

sw.bb.69:                                         ; preds = %cond.end.15
  %43 = load i64, i64* %k, align 8
  %44 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %storage_as70 = getelementptr inbounds %struct.obj, %struct.obj* %44, i32 0, i32 2
  %lisp_array = bitcast %union.anon* %storage_as70 to %struct.anon.16*
  %dim71 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %lisp_array, i32 0, i32 0
  %45 = load i64, i64* %dim71, align 8
  %cmp72 = icmp sge i64 %43, %45
  br i1 %cmp72, label %if.then.74, label %if.end.76

if.then.74:                                       ; preds = %sw.bb.69
  %46 = load %struct.obj*, %struct.obj** %i.addr, align 8
  %call75 = call %struct.obj* @err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), %struct.obj* %46)
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.74, %sw.bb.69
  %47 = load i64, i64* %k, align 8
  %48 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %storage_as77 = getelementptr inbounds %struct.obj, %struct.obj* %48, i32 0, i32 2
  %lisp_array78 = bitcast %union.anon* %storage_as77 to %struct.anon.16*
  %data79 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %lisp_array78, i32 0, i32 1
  %49 = load %struct.obj**, %struct.obj*** %data79, align 8
  %arrayidx80 = getelementptr inbounds %struct.obj*, %struct.obj** %49, i64 %47
  %50 = load %struct.obj*, %struct.obj** %arrayidx80, align 8
  store %struct.obj* %50, %struct.obj** %retval
  br label %return

sw.default:                                       ; preds = %cond.end.15
  %51 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %call81 = call %struct.obj* @err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0), %struct.obj* %51)
  store %struct.obj* %call81, %struct.obj** %retval
  br label %return

return:                                           ; preds = %sw.default, %if.end.76, %if.end.62, %if.end.49, %if.end.35, %if.end.22
  %52 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %52
}

declare %struct.obj* @flocons(double) #1

; Function Attrs: nounwind uwtable
define void @err1_aset1(%struct.obj* %i) #0 {
entry:
  %i.addr = alloca %struct.obj*, align 8
  store %struct.obj* %i, %struct.obj** %i.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %i.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i32 0, i32 0), %struct.obj* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @err2_aset1(%struct.obj* %v) #0 {
entry:
  %v.addr = alloca %struct.obj*, align 8
  store %struct.obj* %v, %struct.obj** %v.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %v.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i32 0, i32 0), %struct.obj* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.obj* @aset1(%struct.obj* %a, %struct.obj* %i, %struct.obj* %v) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %a.addr = alloca %struct.obj*, align 8
  %i.addr = alloca %struct.obj*, align 8
  %v.addr = alloca %struct.obj*, align 8
  %k = alloca i64, align 8
  store %struct.obj* %a, %struct.obj** %a.addr, align 8
  store %struct.obj* %i, %struct.obj** %i.addr, align 8
  store %struct.obj* %v, %struct.obj** %v.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %i.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %i.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp ne i32 %cond, 2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %i.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), %struct.obj* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %4 = load %struct.obj*, %struct.obj** %i.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 2
  %flonum = bitcast %union.anon* %storage_as to %struct.anon.0*
  %data = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum, i32 0, i32 0
  %5 = load double, double* %data, align 8
  %conv3 = fptosi double %5 to i64
  store i64 %conv3, i64* %k, align 8
  %6 = load i64, i64* %k, align 8
  %cmp4 = icmp slt i64 %6, 0
  br i1 %cmp4, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %7 = load %struct.obj*, %struct.obj** %i.addr, align 8
  %call7 = call %struct.obj* @err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0), %struct.obj* %7)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %8 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %cmp9 = icmp eq %struct.obj* %8, null
  br i1 %cmp9, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %if.end.8
  br label %cond.end.15

cond.false.12:                                    ; preds = %if.end.8
  %9 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %type13 = getelementptr inbounds %struct.obj, %struct.obj* %9, i32 0, i32 1
  %10 = load i16, i16* %type13, align 2
  %conv14 = sext i16 %10 to i32
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.12, %cond.true.11
  %cond16 = phi i32 [ 0, %cond.true.11 ], [ %conv14, %cond.false.12 ]
  switch i32 %cond16, label %sw.default [
    i32 13, label %sw.bb
    i32 18, label %sw.bb
    i32 14, label %sw.bb.41
    i32 15, label %sw.bb.67
    i32 16, label %sw.bb.94
  ]

sw.bb:                                            ; preds = %cond.end.15, %cond.end.15
  %11 = load %struct.obj*, %struct.obj** %v.addr, align 8
  %cmp17 = icmp eq %struct.obj* %11, null
  br i1 %cmp17, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %sw.bb
  br label %cond.end.23

cond.false.20:                                    ; preds = %sw.bb
  %12 = load %struct.obj*, %struct.obj** %v.addr, align 8
  %type21 = getelementptr inbounds %struct.obj, %struct.obj* %12, i32 0, i32 1
  %13 = load i16, i16* %type21, align 2
  %conv22 = sext i16 %13 to i32
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.20, %cond.true.19
  %cond24 = phi i32 [ 0, %cond.true.19 ], [ %conv22, %cond.false.20 ]
  %cmp25 = icmp ne i32 %cond24, 2
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %cond.end.23
  %14 = load %struct.obj*, %struct.obj** %v.addr, align 8
  call void @err2_aset1(%struct.obj* %14)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %cond.end.23
  %15 = load i64, i64* %k, align 8
  %16 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %storage_as29 = getelementptr inbounds %struct.obj, %struct.obj* %16, i32 0, i32 2
  %string = bitcast %union.anon* %storage_as29 to %struct.anon.13*
  %dim = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string, i32 0, i32 0
  %17 = load i64, i64* %dim, align 8
  %cmp30 = icmp sge i64 %15, %17
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.28
  %18 = load %struct.obj*, %struct.obj** %i.addr, align 8
  call void @err1_aset1(%struct.obj* %18)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end.28
  %19 = load %struct.obj*, %struct.obj** %v.addr, align 8
  %storage_as34 = getelementptr inbounds %struct.obj, %struct.obj* %19, i32 0, i32 2
  %flonum35 = bitcast %union.anon* %storage_as34 to %struct.anon.0*
  %data36 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum35, i32 0, i32 0
  %20 = load double, double* %data36, align 8
  %conv37 = fptosi double %20 to i8
  %21 = load i64, i64* %k, align 8
  %22 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %storage_as38 = getelementptr inbounds %struct.obj, %struct.obj* %22, i32 0, i32 2
  %string39 = bitcast %union.anon* %storage_as38 to %struct.anon.13*
  %data40 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string39, i32 0, i32 1
  %23 = load i8*, i8** %data40, align 8
  %arrayidx = getelementptr inbounds i8, i8* %23, i64 %21
  store i8 %conv37, i8* %arrayidx, align 1
  %24 = load %struct.obj*, %struct.obj** %v.addr, align 8
  store %struct.obj* %24, %struct.obj** %retval
  br label %return

sw.bb.41:                                         ; preds = %cond.end.15
  %25 = load %struct.obj*, %struct.obj** %v.addr, align 8
  %cmp42 = icmp eq %struct.obj* %25, null
  br i1 %cmp42, label %cond.true.44, label %cond.false.45

cond.true.44:                                     ; preds = %sw.bb.41
  br label %cond.end.48

cond.false.45:                                    ; preds = %sw.bb.41
  %26 = load %struct.obj*, %struct.obj** %v.addr, align 8
  %type46 = getelementptr inbounds %struct.obj, %struct.obj* %26, i32 0, i32 1
  %27 = load i16, i16* %type46, align 2
  %conv47 = sext i16 %27 to i32
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.45, %cond.true.44
  %cond49 = phi i32 [ 0, %cond.true.44 ], [ %conv47, %cond.false.45 ]
  %cmp50 = icmp ne i32 %cond49, 2
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %cond.end.48
  %28 = load %struct.obj*, %struct.obj** %v.addr, align 8
  call void @err2_aset1(%struct.obj* %28)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %cond.end.48
  %29 = load i64, i64* %k, align 8
  %30 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %storage_as54 = getelementptr inbounds %struct.obj, %struct.obj* %30, i32 0, i32 2
  %double_array = bitcast %union.anon* %storage_as54 to %struct.anon.12*
  %dim55 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %double_array, i32 0, i32 0
  %31 = load i64, i64* %dim55, align 8
  %cmp56 = icmp sge i64 %29, %31
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.53
  %32 = load %struct.obj*, %struct.obj** %i.addr, align 8
  call void @err1_aset1(%struct.obj* %32)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %if.end.53
  %33 = load %struct.obj*, %struct.obj** %v.addr, align 8
  %storage_as60 = getelementptr inbounds %struct.obj, %struct.obj* %33, i32 0, i32 2
  %flonum61 = bitcast %union.anon* %storage_as60 to %struct.anon.0*
  %data62 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum61, i32 0, i32 0
  %34 = load double, double* %data62, align 8
  %35 = load i64, i64* %k, align 8
  %36 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %storage_as63 = getelementptr inbounds %struct.obj, %struct.obj* %36, i32 0, i32 2
  %double_array64 = bitcast %union.anon* %storage_as63 to %struct.anon.12*
  %data65 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %double_array64, i32 0, i32 1
  %37 = load double*, double** %data65, align 8
  %arrayidx66 = getelementptr inbounds double, double* %37, i64 %35
  store double %34, double* %arrayidx66, align 8
  %38 = load %struct.obj*, %struct.obj** %v.addr, align 8
  store %struct.obj* %38, %struct.obj** %retval
  br label %return

sw.bb.67:                                         ; preds = %cond.end.15
  %39 = load %struct.obj*, %struct.obj** %v.addr, align 8
  %cmp68 = icmp eq %struct.obj* %39, null
  br i1 %cmp68, label %cond.true.70, label %cond.false.71

cond.true.70:                                     ; preds = %sw.bb.67
  br label %cond.end.74

cond.false.71:                                    ; preds = %sw.bb.67
  %40 = load %struct.obj*, %struct.obj** %v.addr, align 8
  %type72 = getelementptr inbounds %struct.obj, %struct.obj* %40, i32 0, i32 1
  %41 = load i16, i16* %type72, align 2
  %conv73 = sext i16 %41 to i32
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.false.71, %cond.true.70
  %cond75 = phi i32 [ 0, %cond.true.70 ], [ %conv73, %cond.false.71 ]
  %cmp76 = icmp ne i32 %cond75, 2
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %cond.end.74
  %42 = load %struct.obj*, %struct.obj** %v.addr, align 8
  call void @err2_aset1(%struct.obj* %42)
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.78, %cond.end.74
  %43 = load i64, i64* %k, align 8
  %44 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %storage_as80 = getelementptr inbounds %struct.obj, %struct.obj* %44, i32 0, i32 2
  %long_array = bitcast %union.anon* %storage_as80 to %struct.anon.11*
  %dim81 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %long_array, i32 0, i32 0
  %45 = load i64, i64* %dim81, align 8
  %cmp82 = icmp sge i64 %43, %45
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.end.79
  %46 = load %struct.obj*, %struct.obj** %i.addr, align 8
  call void @err1_aset1(%struct.obj* %46)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %if.end.79
  %47 = load %struct.obj*, %struct.obj** %v.addr, align 8
  %storage_as86 = getelementptr inbounds %struct.obj, %struct.obj* %47, i32 0, i32 2
  %flonum87 = bitcast %union.anon* %storage_as86 to %struct.anon.0*
  %data88 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum87, i32 0, i32 0
  %48 = load double, double* %data88, align 8
  %conv89 = fptosi double %48 to i64
  %49 = load i64, i64* %k, align 8
  %50 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %storage_as90 = getelementptr inbounds %struct.obj, %struct.obj* %50, i32 0, i32 2
  %long_array91 = bitcast %union.anon* %storage_as90 to %struct.anon.11*
  %data92 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %long_array91, i32 0, i32 1
  %51 = load i64*, i64** %data92, align 8
  %arrayidx93 = getelementptr inbounds i64, i64* %51, i64 %49
  store i64 %conv89, i64* %arrayidx93, align 8
  %52 = load %struct.obj*, %struct.obj** %v.addr, align 8
  store %struct.obj* %52, %struct.obj** %retval
  br label %return

sw.bb.94:                                         ; preds = %cond.end.15
  %53 = load i64, i64* %k, align 8
  %54 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %storage_as95 = getelementptr inbounds %struct.obj, %struct.obj* %54, i32 0, i32 2
  %lisp_array = bitcast %union.anon* %storage_as95 to %struct.anon.16*
  %dim96 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %lisp_array, i32 0, i32 0
  %55 = load i64, i64* %dim96, align 8
  %cmp97 = icmp sge i64 %53, %55
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %sw.bb.94
  %56 = load %struct.obj*, %struct.obj** %i.addr, align 8
  call void @err1_aset1(%struct.obj* %56)
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.99, %sw.bb.94
  %57 = load %struct.obj*, %struct.obj** %v.addr, align 8
  %58 = load i64, i64* %k, align 8
  %59 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %storage_as101 = getelementptr inbounds %struct.obj, %struct.obj* %59, i32 0, i32 2
  %lisp_array102 = bitcast %union.anon* %storage_as101 to %struct.anon.16*
  %data103 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %lisp_array102, i32 0, i32 1
  %60 = load %struct.obj**, %struct.obj*** %data103, align 8
  %arrayidx104 = getelementptr inbounds %struct.obj*, %struct.obj** %60, i64 %58
  store %struct.obj* %57, %struct.obj** %arrayidx104, align 8
  %61 = load %struct.obj*, %struct.obj** %v.addr, align 8
  store %struct.obj* %61, %struct.obj** %retval
  br label %return

sw.default:                                       ; preds = %cond.end.15
  %62 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %call105 = call %struct.obj* @err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i32 0, i32 0), %struct.obj* %62)
  store %struct.obj* %call105, %struct.obj** %retval
  br label %return

return:                                           ; preds = %sw.default, %if.end.100, %if.end.85, %if.end.59, %if.end.33
  %63 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %63
}

; Function Attrs: nounwind uwtable
define %struct.obj* @arcons(i64 %typecode, i64 %n, i64 %initp) #0 {
entry:
  %typecode.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %initp.addr = alloca i64, align 8
  %a = alloca %struct.obj*, align 8
  %flag = alloca i64, align 8
  %j = alloca i64, align 8
  store i64 %typecode, i64* %typecode.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64 %initp, i64* %initp.addr, align 8
  %call = call i64 @no_interrupt(i64 1)
  store i64 %call, i64* %flag, align 8
  %call1 = call %struct.obj* @cons(%struct.obj* null, %struct.obj* null)
  store %struct.obj* %call1, %struct.obj** %a, align 8
  %0 = load i64, i64* %typecode.addr, align 8
  switch i64 %0, label %sw.default [
    i64 14, label %sw.bb
    i64 15, label %sw.bb.8
    i64 13, label %sw.bb.29
    i64 18, label %sw.bb.53
    i64 16, label %sw.bb.74
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i64, i64* %n.addr, align 8
  %2 = load %struct.obj*, %struct.obj** %a, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %2, i32 0, i32 2
  %double_array = bitcast %union.anon* %storage_as to %struct.anon.12*
  %dim = getelementptr inbounds %struct.anon.12, %struct.anon.12* %double_array, i32 0, i32 0
  store i64 %1, i64* %dim, align 8
  %3 = load i64, i64* %n.addr, align 8
  %mul = mul i64 %3, 8
  %call2 = call i8* @must_malloc(i64 %mul)
  %4 = bitcast i8* %call2 to double*
  %5 = load %struct.obj*, %struct.obj** %a, align 8
  %storage_as3 = getelementptr inbounds %struct.obj, %struct.obj* %5, i32 0, i32 2
  %double_array4 = bitcast %union.anon* %storage_as3 to %struct.anon.12*
  %data = getelementptr inbounds %struct.anon.12, %struct.anon.12* %double_array4, i32 0, i32 1
  store double* %4, double** %data, align 8
  %6 = load i64, i64* %initp.addr, align 8
  %tobool = icmp ne i64 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i64, i64* %j, align 8
  %8 = load i64, i64* %n.addr, align 8
  %cmp = icmp slt i64 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i64, i64* %j, align 8
  %10 = load %struct.obj*, %struct.obj** %a, align 8
  %storage_as5 = getelementptr inbounds %struct.obj, %struct.obj* %10, i32 0, i32 2
  %double_array6 = bitcast %union.anon* %storage_as5 to %struct.anon.12*
  %data7 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %double_array6, i32 0, i32 1
  %11 = load double*, double** %data7, align 8
  %arrayidx = getelementptr inbounds double, double* %11, i64 %9
  store double 0.000000e+00, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i64, i64* %j, align 8
  %inc = add nsw i64 %12, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %sw.bb
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %13 = load i64, i64* %n.addr, align 8
  %14 = load %struct.obj*, %struct.obj** %a, align 8
  %storage_as9 = getelementptr inbounds %struct.obj, %struct.obj* %14, i32 0, i32 2
  %long_array = bitcast %union.anon* %storage_as9 to %struct.anon.11*
  %dim10 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %long_array, i32 0, i32 0
  store i64 %13, i64* %dim10, align 8
  %15 = load i64, i64* %n.addr, align 8
  %mul11 = mul i64 %15, 8
  %call12 = call i8* @must_malloc(i64 %mul11)
  %16 = bitcast i8* %call12 to i64*
  %17 = load %struct.obj*, %struct.obj** %a, align 8
  %storage_as13 = getelementptr inbounds %struct.obj, %struct.obj* %17, i32 0, i32 2
  %long_array14 = bitcast %union.anon* %storage_as13 to %struct.anon.11*
  %data15 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %long_array14, i32 0, i32 1
  store i64* %16, i64** %data15, align 8
  %18 = load i64, i64* %initp.addr, align 8
  %tobool16 = icmp ne i64 %18, 0
  br i1 %tobool16, label %if.then.17, label %if.end.28

if.then.17:                                       ; preds = %sw.bb.8
  store i64 0, i64* %j, align 8
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.25, %if.then.17
  %19 = load i64, i64* %j, align 8
  %20 = load i64, i64* %n.addr, align 8
  %cmp19 = icmp slt i64 %19, %20
  br i1 %cmp19, label %for.body.20, label %for.end.27

for.body.20:                                      ; preds = %for.cond.18
  %21 = load i64, i64* %j, align 8
  %22 = load %struct.obj*, %struct.obj** %a, align 8
  %storage_as21 = getelementptr inbounds %struct.obj, %struct.obj* %22, i32 0, i32 2
  %long_array22 = bitcast %union.anon* %storage_as21 to %struct.anon.11*
  %data23 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %long_array22, i32 0, i32 1
  %23 = load i64*, i64** %data23, align 8
  %arrayidx24 = getelementptr inbounds i64, i64* %23, i64 %21
  store i64 0, i64* %arrayidx24, align 8
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.body.20
  %24 = load i64, i64* %j, align 8
  %inc26 = add nsw i64 %24, 1
  store i64 %inc26, i64* %j, align 8
  br label %for.cond.18

for.end.27:                                       ; preds = %for.cond.18
  br label %if.end.28

if.end.28:                                        ; preds = %for.end.27, %sw.bb.8
  br label %sw.epilog

sw.bb.29:                                         ; preds = %entry
  %25 = load i64, i64* %n.addr, align 8
  %26 = load %struct.obj*, %struct.obj** %a, align 8
  %storage_as30 = getelementptr inbounds %struct.obj, %struct.obj* %26, i32 0, i32 2
  %string = bitcast %union.anon* %storage_as30 to %struct.anon.13*
  %dim31 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string, i32 0, i32 0
  store i64 %25, i64* %dim31, align 8
  %27 = load i64, i64* %n.addr, align 8
  %add = add nsw i64 %27, 1
  %call32 = call i8* @must_malloc(i64 %add)
  %28 = load %struct.obj*, %struct.obj** %a, align 8
  %storage_as33 = getelementptr inbounds %struct.obj, %struct.obj* %28, i32 0, i32 2
  %string34 = bitcast %union.anon* %storage_as33 to %struct.anon.13*
  %data35 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string34, i32 0, i32 1
  store i8* %call32, i8** %data35, align 8
  %29 = load i64, i64* %n.addr, align 8
  %30 = load %struct.obj*, %struct.obj** %a, align 8
  %storage_as36 = getelementptr inbounds %struct.obj, %struct.obj* %30, i32 0, i32 2
  %string37 = bitcast %union.anon* %storage_as36 to %struct.anon.13*
  %data38 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string37, i32 0, i32 1
  %31 = load i8*, i8** %data38, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %31, i64 %29
  store i8 0, i8* %arrayidx39, align 1
  %32 = load i64, i64* %initp.addr, align 8
  %tobool40 = icmp ne i64 %32, 0
  br i1 %tobool40, label %if.then.41, label %if.end.52

if.then.41:                                       ; preds = %sw.bb.29
  store i64 0, i64* %j, align 8
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.49, %if.then.41
  %33 = load i64, i64* %j, align 8
  %34 = load i64, i64* %n.addr, align 8
  %cmp43 = icmp slt i64 %33, %34
  br i1 %cmp43, label %for.body.44, label %for.end.51

for.body.44:                                      ; preds = %for.cond.42
  %35 = load i64, i64* %j, align 8
  %36 = load %struct.obj*, %struct.obj** %a, align 8
  %storage_as45 = getelementptr inbounds %struct.obj, %struct.obj* %36, i32 0, i32 2
  %string46 = bitcast %union.anon* %storage_as45 to %struct.anon.13*
  %data47 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string46, i32 0, i32 1
  %37 = load i8*, i8** %data47, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %37, i64 %35
  store i8 32, i8* %arrayidx48, align 1
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.body.44
  %38 = load i64, i64* %j, align 8
  %inc50 = add nsw i64 %38, 1
  store i64 %inc50, i64* %j, align 8
  br label %for.cond.42

for.end.51:                                       ; preds = %for.cond.42
  br label %if.end.52

if.end.52:                                        ; preds = %for.end.51, %sw.bb.29
  br label %sw.bb.53

sw.bb.53:                                         ; preds = %entry, %if.end.52
  %39 = load i64, i64* %n.addr, align 8
  %40 = load %struct.obj*, %struct.obj** %a, align 8
  %storage_as54 = getelementptr inbounds %struct.obj, %struct.obj* %40, i32 0, i32 2
  %string55 = bitcast %union.anon* %storage_as54 to %struct.anon.13*
  %dim56 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string55, i32 0, i32 0
  store i64 %39, i64* %dim56, align 8
  %41 = load i64, i64* %n.addr, align 8
  %call57 = call i8* @must_malloc(i64 %41)
  %42 = load %struct.obj*, %struct.obj** %a, align 8
  %storage_as58 = getelementptr inbounds %struct.obj, %struct.obj* %42, i32 0, i32 2
  %string59 = bitcast %union.anon* %storage_as58 to %struct.anon.13*
  %data60 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string59, i32 0, i32 1
  store i8* %call57, i8** %data60, align 8
  %43 = load i64, i64* %initp.addr, align 8
  %tobool61 = icmp ne i64 %43, 0
  br i1 %tobool61, label %if.then.62, label %if.end.73

if.then.62:                                       ; preds = %sw.bb.53
  store i64 0, i64* %j, align 8
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.70, %if.then.62
  %44 = load i64, i64* %j, align 8
  %45 = load i64, i64* %n.addr, align 8
  %cmp64 = icmp slt i64 %44, %45
  br i1 %cmp64, label %for.body.65, label %for.end.72

for.body.65:                                      ; preds = %for.cond.63
  %46 = load i64, i64* %j, align 8
  %47 = load %struct.obj*, %struct.obj** %a, align 8
  %storage_as66 = getelementptr inbounds %struct.obj, %struct.obj* %47, i32 0, i32 2
  %string67 = bitcast %union.anon* %storage_as66 to %struct.anon.13*
  %data68 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string67, i32 0, i32 1
  %48 = load i8*, i8** %data68, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %48, i64 %46
  store i8 0, i8* %arrayidx69, align 1
  br label %for.inc.70

for.inc.70:                                       ; preds = %for.body.65
  %49 = load i64, i64* %j, align 8
  %inc71 = add nsw i64 %49, 1
  store i64 %inc71, i64* %j, align 8
  br label %for.cond.63

for.end.72:                                       ; preds = %for.cond.63
  br label %if.end.73

if.end.73:                                        ; preds = %for.end.72, %sw.bb.53
  br label %sw.epilog

sw.bb.74:                                         ; preds = %entry
  %50 = load i64, i64* %n.addr, align 8
  %51 = load %struct.obj*, %struct.obj** %a, align 8
  %storage_as75 = getelementptr inbounds %struct.obj, %struct.obj* %51, i32 0, i32 2
  %lisp_array = bitcast %union.anon* %storage_as75 to %struct.anon.16*
  %dim76 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %lisp_array, i32 0, i32 0
  store i64 %50, i64* %dim76, align 8
  %52 = load i64, i64* %n.addr, align 8
  %mul77 = mul i64 %52, 8
  %call78 = call i8* @must_malloc(i64 %mul77)
  %53 = bitcast i8* %call78 to %struct.obj**
  %54 = load %struct.obj*, %struct.obj** %a, align 8
  %storage_as79 = getelementptr inbounds %struct.obj, %struct.obj* %54, i32 0, i32 2
  %lisp_array80 = bitcast %union.anon* %storage_as79 to %struct.anon.16*
  %data81 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %lisp_array80, i32 0, i32 1
  store %struct.obj** %53, %struct.obj*** %data81, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.89, %sw.bb.74
  %55 = load i64, i64* %j, align 8
  %56 = load i64, i64* %n.addr, align 8
  %cmp83 = icmp slt i64 %55, %56
  br i1 %cmp83, label %for.body.84, label %for.end.91

for.body.84:                                      ; preds = %for.cond.82
  %57 = load i64, i64* %j, align 8
  %58 = load %struct.obj*, %struct.obj** %a, align 8
  %storage_as85 = getelementptr inbounds %struct.obj, %struct.obj* %58, i32 0, i32 2
  %lisp_array86 = bitcast %union.anon* %storage_as85 to %struct.anon.16*
  %data87 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %lisp_array86, i32 0, i32 1
  %59 = load %struct.obj**, %struct.obj*** %data87, align 8
  %arrayidx88 = getelementptr inbounds %struct.obj*, %struct.obj** %59, i64 %57
  store %struct.obj* null, %struct.obj** %arrayidx88, align 8
  br label %for.inc.89

for.inc.89:                                       ; preds = %for.body.84
  %60 = load i64, i64* %j, align 8
  %inc90 = add nsw i64 %60, 1
  store i64 %inc90, i64* %j, align 8
  br label %for.cond.82

for.end.91:                                       ; preds = %for.cond.82
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %call92 = call %struct.obj* @errswitch()
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end.91, %if.end.73, %if.end.28, %if.end
  %61 = load i64, i64* %typecode.addr, align 8
  %conv = trunc i64 %61 to i16
  %62 = load %struct.obj*, %struct.obj** %a, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %62, i32 0, i32 1
  store i16 %conv, i16* %type, align 2
  %63 = load i64, i64* %flag, align 8
  %call93 = call i64 @no_interrupt(i64 %63)
  %64 = load %struct.obj*, %struct.obj** %a, align 8
  ret %struct.obj* %64
}

declare %struct.obj* @errswitch() #1

; Function Attrs: nounwind uwtable
define %struct.obj* @mallocl(i8* %place, i64 %size) #0 {
entry:
  %place.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %n = alloca i64, align 8
  %r = alloca i64, align 8
  %retval1 = alloca %struct.obj*, align 8
  store i8* %place, i8** %place.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %div = udiv i64 %0, 8
  store i64 %div, i64* %n, align 8
  %1 = load i64, i64* %size.addr, align 8
  %rem = urem i64 %1, 8
  store i64 %rem, i64* %r, align 8
  %2 = load i64, i64* %r, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %n, align 8
  %inc = add nsw i64 %3, 1
  store i64 %inc, i64* %n, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* %n, align 8
  %call = call %struct.obj* @arcons(i64 15, i64 %4, i64 0)
  store %struct.obj* %call, %struct.obj** %retval1, align 8
  %5 = load %struct.obj*, %struct.obj** %retval1, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %5, i32 0, i32 2
  %long_array = bitcast %union.anon* %storage_as to %struct.anon.11*
  %data = getelementptr inbounds %struct.anon.11, %struct.anon.11* %long_array, i32 0, i32 1
  %6 = load i64*, i64** %data, align 8
  %7 = load i8*, i8** %place.addr, align 8
  %8 = bitcast i8* %7 to i64**
  store i64* %6, i64** %8, align 8
  %9 = load %struct.obj*, %struct.obj** %retval1, align 8
  ret %struct.obj* %9
}

; Function Attrs: nounwind uwtable
define %struct.obj* @cons_array(%struct.obj* %dim, %struct.obj* %kind) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %dim.addr = alloca %struct.obj*, align 8
  %kind.addr = alloca %struct.obj*, align 8
  %a = alloca %struct.obj*, align 8
  %flag = alloca i64, align 8
  %n = alloca i64, align 8
  %j = alloca i64, align 8
  store %struct.obj* %dim, %struct.obj** %dim.addr, align 8
  store %struct.obj* %kind, %struct.obj** %kind.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %dim.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %dim.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp ne i32 %cond, 2
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %dim.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %3, i32 0, i32 2
  %flonum = bitcast %union.anon* %storage_as to %struct.anon.0*
  %data = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum, i32 0, i32 0
  %4 = load double, double* %data, align 8
  %cmp3 = fcmp olt double %4, 0.000000e+00
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  %5 = load %struct.obj*, %struct.obj** %dim.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i32 0, i32 0), %struct.obj* %5)
  store %struct.obj* %call, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %6 = load %struct.obj*, %struct.obj** %dim.addr, align 8
  %storage_as5 = getelementptr inbounds %struct.obj, %struct.obj* %6, i32 0, i32 2
  %flonum6 = bitcast %union.anon* %storage_as5 to %struct.anon.0*
  %data7 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum6, i32 0, i32 0
  %7 = load double, double* %data7, align 8
  %conv8 = fptosi double %7 to i64
  store i64 %conv8, i64* %n, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  %call9 = call i64 @no_interrupt(i64 1)
  store i64 %call9, i64* %flag, align 8
  %call10 = call %struct.obj* @cons(%struct.obj* null, %struct.obj* null)
  store %struct.obj* %call10, %struct.obj** %a, align 8
  %call11 = call %struct.obj* @cintern(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0))
  %8 = load %struct.obj*, %struct.obj** %kind.addr, align 8
  %cmp12 = icmp eq %struct.obj* %call11, %8
  br i1 %cmp12, label %if.then.14, label %if.else.27

if.then.14:                                       ; preds = %if.end
  %9 = load %struct.obj*, %struct.obj** %a, align 8
  %type15 = getelementptr inbounds %struct.obj, %struct.obj* %9, i32 0, i32 1
  store i16 14, i16* %type15, align 2
  %10 = load i64, i64* %n, align 8
  %11 = load %struct.obj*, %struct.obj** %a, align 8
  %storage_as16 = getelementptr inbounds %struct.obj, %struct.obj* %11, i32 0, i32 2
  %double_array = bitcast %union.anon* %storage_as16 to %struct.anon.12*
  %dim17 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %double_array, i32 0, i32 0
  store i64 %10, i64* %dim17, align 8
  %12 = load i64, i64* %n, align 8
  %mul = mul i64 %12, 8
  %call18 = call i8* @must_malloc(i64 %mul)
  %13 = bitcast i8* %call18 to double*
  %14 = load %struct.obj*, %struct.obj** %a, align 8
  %storage_as19 = getelementptr inbounds %struct.obj, %struct.obj* %14, i32 0, i32 2
  %double_array20 = bitcast %union.anon* %storage_as19 to %struct.anon.12*
  %data21 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %double_array20, i32 0, i32 1
  store double* %13, double** %data21, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.14
  %15 = load i64, i64* %j, align 8
  %16 = load i64, i64* %n, align 8
  %cmp22 = icmp slt i64 %15, %16
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i64, i64* %j, align 8
  %18 = load %struct.obj*, %struct.obj** %a, align 8
  %storage_as24 = getelementptr inbounds %struct.obj, %struct.obj* %18, i32 0, i32 2
  %double_array25 = bitcast %union.anon* %storage_as24 to %struct.anon.12*
  %data26 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %double_array25, i32 0, i32 1
  %19 = load double*, double** %data26, align 8
  %arrayidx = getelementptr inbounds double, double* %19, i64 %17
  store double 0.000000e+00, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i64, i64* %j, align 8
  %inc = add nsw i64 %20, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.135

if.else.27:                                       ; preds = %if.end
  %call28 = call %struct.obj* @cintern(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0))
  %21 = load %struct.obj*, %struct.obj** %kind.addr, align 8
  %cmp29 = icmp eq %struct.obj* %call28, %21
  br i1 %cmp29, label %if.then.31, label %if.else.51

if.then.31:                                       ; preds = %if.else.27
  %22 = load %struct.obj*, %struct.obj** %a, align 8
  %type32 = getelementptr inbounds %struct.obj, %struct.obj* %22, i32 0, i32 1
  store i16 15, i16* %type32, align 2
  %23 = load i64, i64* %n, align 8
  %24 = load %struct.obj*, %struct.obj** %a, align 8
  %storage_as33 = getelementptr inbounds %struct.obj, %struct.obj* %24, i32 0, i32 2
  %long_array = bitcast %union.anon* %storage_as33 to %struct.anon.11*
  %dim34 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %long_array, i32 0, i32 0
  store i64 %23, i64* %dim34, align 8
  %25 = load i64, i64* %n, align 8
  %mul35 = mul i64 %25, 8
  %call36 = call i8* @must_malloc(i64 %mul35)
  %26 = bitcast i8* %call36 to i64*
  %27 = load %struct.obj*, %struct.obj** %a, align 8
  %storage_as37 = getelementptr inbounds %struct.obj, %struct.obj* %27, i32 0, i32 2
  %long_array38 = bitcast %union.anon* %storage_as37 to %struct.anon.11*
  %data39 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %long_array38, i32 0, i32 1
  store i64* %26, i64** %data39, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.48, %if.then.31
  %28 = load i64, i64* %j, align 8
  %29 = load i64, i64* %n, align 8
  %cmp41 = icmp slt i64 %28, %29
  br i1 %cmp41, label %for.body.43, label %for.end.50

for.body.43:                                      ; preds = %for.cond.40
  %30 = load i64, i64* %j, align 8
  %31 = load %struct.obj*, %struct.obj** %a, align 8
  %storage_as44 = getelementptr inbounds %struct.obj, %struct.obj* %31, i32 0, i32 2
  %long_array45 = bitcast %union.anon* %storage_as44 to %struct.anon.11*
  %data46 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %long_array45, i32 0, i32 1
  %32 = load i64*, i64** %data46, align 8
  %arrayidx47 = getelementptr inbounds i64, i64* %32, i64 %30
  store i64 0, i64* %arrayidx47, align 8
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.body.43
  %33 = load i64, i64* %j, align 8
  %inc49 = add nsw i64 %33, 1
  store i64 %inc49, i64* %j, align 8
  br label %for.cond.40

for.end.50:                                       ; preds = %for.cond.40
  br label %if.end.134

if.else.51:                                       ; preds = %if.else.27
  %call52 = call %struct.obj* @cintern(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0))
  %34 = load %struct.obj*, %struct.obj** %kind.addr, align 8
  %cmp53 = icmp eq %struct.obj* %call52, %34
  br i1 %cmp53, label %if.then.55, label %if.else.78

if.then.55:                                       ; preds = %if.else.51
  %35 = load %struct.obj*, %struct.obj** %a, align 8
  %type56 = getelementptr inbounds %struct.obj, %struct.obj* %35, i32 0, i32 1
  store i16 13, i16* %type56, align 2
  %36 = load i64, i64* %n, align 8
  %37 = load %struct.obj*, %struct.obj** %a, align 8
  %storage_as57 = getelementptr inbounds %struct.obj, %struct.obj* %37, i32 0, i32 2
  %string = bitcast %union.anon* %storage_as57 to %struct.anon.13*
  %dim58 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string, i32 0, i32 0
  store i64 %36, i64* %dim58, align 8
  %38 = load i64, i64* %n, align 8
  %add = add nsw i64 %38, 1
  %call59 = call i8* @must_malloc(i64 %add)
  %39 = load %struct.obj*, %struct.obj** %a, align 8
  %storage_as60 = getelementptr inbounds %struct.obj, %struct.obj* %39, i32 0, i32 2
  %string61 = bitcast %union.anon* %storage_as60 to %struct.anon.13*
  %data62 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string61, i32 0, i32 1
  store i8* %call59, i8** %data62, align 8
  %40 = load i64, i64* %n, align 8
  %41 = load %struct.obj*, %struct.obj** %a, align 8
  %storage_as63 = getelementptr inbounds %struct.obj, %struct.obj* %41, i32 0, i32 2
  %string64 = bitcast %union.anon* %storage_as63 to %struct.anon.13*
  %data65 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string64, i32 0, i32 1
  %42 = load i8*, i8** %data65, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %42, i64 %40
  store i8 0, i8* %arrayidx66, align 1
  store i64 0, i64* %j, align 8
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.75, %if.then.55
  %43 = load i64, i64* %j, align 8
  %44 = load i64, i64* %n, align 8
  %cmp68 = icmp slt i64 %43, %44
  br i1 %cmp68, label %for.body.70, label %for.end.77

for.body.70:                                      ; preds = %for.cond.67
  %45 = load i64, i64* %j, align 8
  %46 = load %struct.obj*, %struct.obj** %a, align 8
  %storage_as71 = getelementptr inbounds %struct.obj, %struct.obj* %46, i32 0, i32 2
  %string72 = bitcast %union.anon* %storage_as71 to %struct.anon.13*
  %data73 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string72, i32 0, i32 1
  %47 = load i8*, i8** %data73, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %47, i64 %45
  store i8 32, i8* %arrayidx74, align 1
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.body.70
  %48 = load i64, i64* %j, align 8
  %inc76 = add nsw i64 %48, 1
  store i64 %inc76, i64* %j, align 8
  br label %for.cond.67

for.end.77:                                       ; preds = %for.cond.67
  br label %if.end.133

if.else.78:                                       ; preds = %if.else.51
  %call79 = call %struct.obj* @cintern(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0))
  %49 = load %struct.obj*, %struct.obj** %kind.addr, align 8
  %cmp80 = icmp eq %struct.obj* %call79, %49
  br i1 %cmp80, label %if.then.82, label %if.else.102

if.then.82:                                       ; preds = %if.else.78
  %50 = load %struct.obj*, %struct.obj** %a, align 8
  %type83 = getelementptr inbounds %struct.obj, %struct.obj* %50, i32 0, i32 1
  store i16 18, i16* %type83, align 2
  %51 = load i64, i64* %n, align 8
  %52 = load %struct.obj*, %struct.obj** %a, align 8
  %storage_as84 = getelementptr inbounds %struct.obj, %struct.obj* %52, i32 0, i32 2
  %string85 = bitcast %union.anon* %storage_as84 to %struct.anon.13*
  %dim86 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string85, i32 0, i32 0
  store i64 %51, i64* %dim86, align 8
  %53 = load i64, i64* %n, align 8
  %call87 = call i8* @must_malloc(i64 %53)
  %54 = load %struct.obj*, %struct.obj** %a, align 8
  %storage_as88 = getelementptr inbounds %struct.obj, %struct.obj* %54, i32 0, i32 2
  %string89 = bitcast %union.anon* %storage_as88 to %struct.anon.13*
  %data90 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string89, i32 0, i32 1
  store i8* %call87, i8** %data90, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.99, %if.then.82
  %55 = load i64, i64* %j, align 8
  %56 = load i64, i64* %n, align 8
  %cmp92 = icmp slt i64 %55, %56
  br i1 %cmp92, label %for.body.94, label %for.end.101

for.body.94:                                      ; preds = %for.cond.91
  %57 = load i64, i64* %j, align 8
  %58 = load %struct.obj*, %struct.obj** %a, align 8
  %storage_as95 = getelementptr inbounds %struct.obj, %struct.obj* %58, i32 0, i32 2
  %string96 = bitcast %union.anon* %storage_as95 to %struct.anon.13*
  %data97 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string96, i32 0, i32 1
  %59 = load i8*, i8** %data97, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %59, i64 %57
  store i8 0, i8* %arrayidx98, align 1
  br label %for.inc.99

for.inc.99:                                       ; preds = %for.body.94
  %60 = load i64, i64* %j, align 8
  %inc100 = add nsw i64 %60, 1
  store i64 %inc100, i64* %j, align 8
  br label %for.cond.91

for.end.101:                                      ; preds = %for.cond.91
  br label %if.end.132

if.else.102:                                      ; preds = %if.else.78
  %call103 = call %struct.obj* @cintern(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0))
  %61 = load %struct.obj*, %struct.obj** %kind.addr, align 8
  %cmp104 = icmp eq %struct.obj* %call103, %61
  br i1 %cmp104, label %if.then.109, label %lor.lhs.false.106

lor.lhs.false.106:                                ; preds = %if.else.102
  %62 = load %struct.obj*, %struct.obj** %kind.addr, align 8
  %cmp107 = icmp eq %struct.obj* %62, null
  br i1 %cmp107, label %if.then.109, label %if.else.129

if.then.109:                                      ; preds = %lor.lhs.false.106, %if.else.102
  %63 = load %struct.obj*, %struct.obj** %a, align 8
  %type110 = getelementptr inbounds %struct.obj, %struct.obj* %63, i32 0, i32 1
  store i16 16, i16* %type110, align 2
  %64 = load i64, i64* %n, align 8
  %65 = load %struct.obj*, %struct.obj** %a, align 8
  %storage_as111 = getelementptr inbounds %struct.obj, %struct.obj* %65, i32 0, i32 2
  %lisp_array = bitcast %union.anon* %storage_as111 to %struct.anon.16*
  %dim112 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %lisp_array, i32 0, i32 0
  store i64 %64, i64* %dim112, align 8
  %66 = load i64, i64* %n, align 8
  %mul113 = mul i64 %66, 8
  %call114 = call i8* @must_malloc(i64 %mul113)
  %67 = bitcast i8* %call114 to %struct.obj**
  %68 = load %struct.obj*, %struct.obj** %a, align 8
  %storage_as115 = getelementptr inbounds %struct.obj, %struct.obj* %68, i32 0, i32 2
  %lisp_array116 = bitcast %union.anon* %storage_as115 to %struct.anon.16*
  %data117 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %lisp_array116, i32 0, i32 1
  store %struct.obj** %67, %struct.obj*** %data117, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond.118

for.cond.118:                                     ; preds = %for.inc.126, %if.then.109
  %69 = load i64, i64* %j, align 8
  %70 = load i64, i64* %n, align 8
  %cmp119 = icmp slt i64 %69, %70
  br i1 %cmp119, label %for.body.121, label %for.end.128

for.body.121:                                     ; preds = %for.cond.118
  %71 = load i64, i64* %j, align 8
  %72 = load %struct.obj*, %struct.obj** %a, align 8
  %storage_as122 = getelementptr inbounds %struct.obj, %struct.obj* %72, i32 0, i32 2
  %lisp_array123 = bitcast %union.anon* %storage_as122 to %struct.anon.16*
  %data124 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %lisp_array123, i32 0, i32 1
  %73 = load %struct.obj**, %struct.obj*** %data124, align 8
  %arrayidx125 = getelementptr inbounds %struct.obj*, %struct.obj** %73, i64 %71
  store %struct.obj* null, %struct.obj** %arrayidx125, align 8
  br label %for.inc.126

for.inc.126:                                      ; preds = %for.body.121
  %74 = load i64, i64* %j, align 8
  %inc127 = add nsw i64 %74, 1
  store i64 %inc127, i64* %j, align 8
  br label %for.cond.118

for.end.128:                                      ; preds = %for.cond.118
  br label %if.end.131

if.else.129:                                      ; preds = %lor.lhs.false.106
  %75 = load %struct.obj*, %struct.obj** %kind.addr, align 8
  %call130 = call %struct.obj* @err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0), %struct.obj* %75)
  br label %if.end.131

if.end.131:                                       ; preds = %if.else.129, %for.end.128
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %for.end.101
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %for.end.77
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %for.end.50
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %for.end
  %76 = load i64, i64* %flag, align 8
  %call136 = call i64 @no_interrupt(i64 %76)
  %77 = load %struct.obj*, %struct.obj** %a, align 8
  store %struct.obj* %77, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end.135, %if.then
  %78 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %78
}

declare %struct.obj* @cintern(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @string_append(%struct.obj* %args) #0 {
entry:
  %args.addr = alloca %struct.obj*, align 8
  %size = alloca i64, align 8
  %l = alloca %struct.obj*, align 8
  %s = alloca %struct.obj*, align 8
  %data = alloca i8*, align 8
  store %struct.obj* %args, %struct.obj** %args.addr, align 8
  store i64 0, i64* %size, align 8
  %0 = load %struct.obj*, %struct.obj** %args.addr, align 8
  store %struct.obj* %0, %struct.obj** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp = icmp ne %struct.obj* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.obj*, %struct.obj** %l, align 8
  %call = call %struct.obj* @car(%struct.obj* %2)
  %call1 = call i8* @get_c_string(%struct.obj* %call)
  %call2 = call i64 @strlen(i8* %call1) #6
  %3 = load i64, i64* %size, align 8
  %add = add i64 %3, %call2
  store i64 %add, i64* %size, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load %struct.obj*, %struct.obj** %l, align 8
  %call3 = call %struct.obj* @cdr(%struct.obj* %4)
  store %struct.obj* %call3, %struct.obj** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i64, i64* %size, align 8
  %call4 = call %struct.obj* @strcons(i64 %5, i8* null)
  store %struct.obj* %call4, %struct.obj** %s, align 8
  %6 = load %struct.obj*, %struct.obj** %s, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %6, i32 0, i32 2
  %string = bitcast %union.anon* %storage_as to %struct.anon.13*
  %data5 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string, i32 0, i32 1
  %7 = load i8*, i8** %data5, align 8
  store i8* %7, i8** %data, align 8
  %8 = load i8*, i8** %data, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 0
  store i8 0, i8* %arrayidx, align 1
  %9 = load %struct.obj*, %struct.obj** %args.addr, align 8
  store %struct.obj* %9, %struct.obj** %l, align 8
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.12, %for.end
  %10 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp7 = icmp ne %struct.obj* %10, null
  br i1 %cmp7, label %for.body.8, label %for.end.14

for.body.8:                                       ; preds = %for.cond.6
  %11 = load i8*, i8** %data, align 8
  %12 = load %struct.obj*, %struct.obj** %l, align 8
  %call9 = call %struct.obj* @car(%struct.obj* %12)
  %call10 = call i8* @get_c_string(%struct.obj* %call9)
  %call11 = call i8* @strcat(i8* %11, i8* %call10) #2
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.body.8
  %13 = load %struct.obj*, %struct.obj** %l, align 8
  %call13 = call %struct.obj* @cdr(%struct.obj* %13)
  store %struct.obj* %call13, %struct.obj** %l, align 8
  br label %for.cond.6

for.end.14:                                       ; preds = %for.cond.6
  %14 = load %struct.obj*, %struct.obj** %s, align 8
  ret %struct.obj* %14
}

declare %struct.obj* @car(%struct.obj*) #1

declare %struct.obj* @cdr(%struct.obj*) #1

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define %struct.obj* @bytes_append(%struct.obj* %args) #0 {
entry:
  %args.addr = alloca %struct.obj*, align 8
  %size = alloca i64, align 8
  %n = alloca i64, align 8
  %j = alloca i64, align 8
  %l = alloca %struct.obj*, align 8
  %s = alloca %struct.obj*, align 8
  %data = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  store %struct.obj* %args, %struct.obj** %args.addr, align 8
  store i64 0, i64* %size, align 8
  %0 = load %struct.obj*, %struct.obj** %args.addr, align 8
  store %struct.obj* %0, %struct.obj** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp = icmp ne %struct.obj* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.obj*, %struct.obj** %l, align 8
  %call = call %struct.obj* @car(%struct.obj* %2)
  %call1 = call i8* @get_c_string_dim(%struct.obj* %call, i64* %n)
  %3 = load i64, i64* %n, align 8
  %4 = load i64, i64* %size, align 8
  %add = add nsw i64 %4, %3
  store i64 %add, i64* %size, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct.obj*, %struct.obj** %l, align 8
  %call2 = call %struct.obj* @cdr(%struct.obj* %5)
  store %struct.obj* %call2, %struct.obj** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i64, i64* %size, align 8
  %call3 = call %struct.obj* @arcons(i64 18, i64 %6, i64 0)
  store %struct.obj* %call3, %struct.obj** %s, align 8
  %7 = load %struct.obj*, %struct.obj** %s, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %7, i32 0, i32 2
  %string = bitcast %union.anon* %storage_as to %struct.anon.13*
  %data4 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string, i32 0, i32 1
  %8 = load i8*, i8** %data4, align 8
  store i8* %8, i8** %data, align 8
  store i64 0, i64* %j, align 8
  %9 = load %struct.obj*, %struct.obj** %args.addr, align 8
  store %struct.obj* %9, %struct.obj** %l, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.11, %for.end
  %10 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp6 = icmp ne %struct.obj* %10, null
  br i1 %cmp6, label %for.body.7, label %for.end.13

for.body.7:                                       ; preds = %for.cond.5
  %11 = load %struct.obj*, %struct.obj** %l, align 8
  %call8 = call %struct.obj* @car(%struct.obj* %11)
  %call9 = call i8* @get_c_string_dim(%struct.obj* %call8, i64* %n)
  store i8* %call9, i8** %ptr, align 8
  %12 = load i64, i64* %j, align 8
  %13 = load i8*, i8** %data, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %12
  %14 = load i8*, i8** %ptr, align 8
  %15 = load i64, i64* %n, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx, i8* %14, i64 %15, i32 1, i1 false)
  %16 = load i64, i64* %n, align 8
  %17 = load i64, i64* %j, align 8
  %add10 = add nsw i64 %17, %16
  store i64 %add10, i64* %j, align 8
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.body.7
  %18 = load %struct.obj*, %struct.obj** %l, align 8
  %call12 = call %struct.obj* @cdr(%struct.obj* %18)
  store %struct.obj* %call12, %struct.obj** %l, align 8
  br label %for.cond.5

for.end.13:                                       ; preds = %for.cond.5
  %19 = load %struct.obj*, %struct.obj** %s, align 8
  ret %struct.obj* %19
}

declare i8* @get_c_string_dim(%struct.obj*, i64*) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @substring(%struct.obj* %str, %struct.obj* %start, %struct.obj* %end) #0 {
entry:
  %str.addr = alloca %struct.obj*, align 8
  %start.addr = alloca %struct.obj*, align 8
  %end.addr = alloca %struct.obj*, align 8
  %s = alloca i64, align 8
  %e = alloca i64, align 8
  %n = alloca i64, align 8
  %data = alloca i8*, align 8
  store %struct.obj* %str, %struct.obj** %str.addr, align 8
  store %struct.obj* %start, %struct.obj** %start.addr, align 8
  store %struct.obj* %end, %struct.obj** %end.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %str.addr, align 8
  %call = call i8* @get_c_string_dim(%struct.obj* %0, i64* %n)
  store i8* %call, i8** %data, align 8
  %1 = load %struct.obj*, %struct.obj** %start.addr, align 8
  %call1 = call i64 @get_c_long(%struct.obj* %1)
  store i64 %call1, i64* %s, align 8
  %2 = load %struct.obj*, %struct.obj** %end.addr, align 8
  %cmp = icmp eq %struct.obj* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %n, align 8
  store i64 %3, i64* %e, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.obj*, %struct.obj** %end.addr, align 8
  %call2 = call i64 @get_c_long(%struct.obj* %4)
  store i64 %call2, i64* %e, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i64, i64* %s, align 8
  %cmp3 = icmp slt i64 %5, 0
  br i1 %cmp3, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i64, i64* %s, align 8
  %7 = load i64, i64* %e, align 8
  %cmp4 = icmp sgt i64 %6, %7
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  %8 = load %struct.obj*, %struct.obj** %start.addr, align 8
  %call6 = call %struct.obj* @err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0), %struct.obj* %8)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %lor.lhs.false
  %9 = load i64, i64* %e, align 8
  %cmp8 = icmp slt i64 %9, 0
  br i1 %cmp8, label %if.then.11, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end.7
  %10 = load i64, i64* %e, align 8
  %11 = load i64, i64* %n, align 8
  %cmp10 = icmp sgt i64 %10, %11
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %lor.lhs.false.9, %if.end.7
  %12 = load %struct.obj*, %struct.obj** %end.addr, align 8
  %call12 = call %struct.obj* @err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0), %struct.obj* %12)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %lor.lhs.false.9
  %13 = load i64, i64* %e, align 8
  %14 = load i64, i64* %s, align 8
  %sub = sub nsw i64 %13, %14
  %15 = load i64, i64* %s, align 8
  %16 = load i8*, i8** %data, align 8
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 %15
  %call14 = call %struct.obj* @strcons(i64 %sub, i8* %arrayidx)
  ret %struct.obj* %call14
}

; Function Attrs: nounwind uwtable
define i64 @get_c_long(%struct.obj* %x) #0 {
entry:
  %x.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp ne i32 %cond, 2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i32 0, i32 0), %struct.obj* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %4 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 2
  %flonum = bitcast %union.anon* %storage_as to %struct.anon.0*
  %data = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum, i32 0, i32 0
  %5 = load double, double* %data, align 8
  %conv3 = fptosi double %5 to i64
  ret i64 %conv3
}

; Function Attrs: nounwind uwtable
define %struct.obj* @string_search(%struct.obj* %token, %struct.obj* %str) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %token.addr = alloca %struct.obj*, align 8
  %str.addr = alloca %struct.obj*, align 8
  %s1 = alloca i8*, align 8
  %s2 = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  store %struct.obj* %token, %struct.obj** %token.addr, align 8
  store %struct.obj* %str, %struct.obj** %str.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %str.addr, align 8
  %call = call i8* @get_c_string(%struct.obj* %0)
  store i8* %call, i8** %s1, align 8
  %1 = load %struct.obj*, %struct.obj** %token.addr, align 8
  %call1 = call i8* @get_c_string(%struct.obj* %1)
  store i8* %call1, i8** %s2, align 8
  %2 = load i8*, i8** %s1, align 8
  %3 = load i8*, i8** %s2, align 8
  %call2 = call i8* @strstr(i8* %2, i8* %3) #6
  store i8* %call2, i8** %ptr, align 8
  %4 = load i8*, i8** %ptr, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %ptr, align 8
  %6 = load i8*, i8** %s1, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = sitofp i64 %sub.ptr.sub to double
  %call3 = call %struct.obj* @flocons(double %conv)
  store %struct.obj* %call3, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %entry
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %7
}

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define %struct.obj* @string_trim(%struct.obj* %str) #0 {
entry:
  %str.addr = alloca %struct.obj*, align 8
  %start = alloca i8*, align 8
  %end = alloca i8*, align 8
  store %struct.obj* %str, %struct.obj** %str.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %str.addr, align 8
  %call = call i8* @get_c_string(%struct.obj* %0)
  store i8* %call, i8** %start, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8*, i8** %start, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i8*, i8** %start, align 8
  %4 = load i8, i8* %3, align 1
  %conv1 = sext i8 %4 to i32
  %call2 = call i8* @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i32 %conv1) #6
  %tobool3 = icmp ne i8* %call2, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %tobool3, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i8*, i8** %start, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %start, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %7 = load i8*, i8** %start, align 8
  %call4 = call i64 @strlen(i8* %7) #6
  %8 = load i8*, i8** %start, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %call4
  store i8* %arrayidx, i8** %end, align 8
  br label %while.cond.5

while.cond.5:                                     ; preds = %while.body.12, %while.end
  %9 = load i8*, i8** %end, align 8
  %10 = load i8*, i8** %start, align 8
  %cmp = icmp ugt i8* %9, %10
  br i1 %cmp, label %land.rhs.7, label %land.end.11

land.rhs.7:                                       ; preds = %while.cond.5
  %11 = load i8*, i8** %end, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 -1
  %12 = load i8, i8* %add.ptr, align 1
  %conv8 = sext i8 %12 to i32
  %call9 = call i8* @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i32 %conv8) #6
  %tobool10 = icmp ne i8* %call9, null
  br label %land.end.11

land.end.11:                                      ; preds = %land.rhs.7, %while.cond.5
  %13 = phi i1 [ false, %while.cond.5 ], [ %tobool10, %land.rhs.7 ]
  br i1 %13, label %while.body.12, label %while.end.14

while.body.12:                                    ; preds = %land.end.11
  %14 = load i8*, i8** %end, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %14, i32 -1
  store i8* %incdec.ptr13, i8** %end, align 8
  br label %while.cond.5

while.end.14:                                     ; preds = %land.end.11
  %15 = load i8*, i8** %end, align 8
  %16 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %15 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %17 = load i8*, i8** %start, align 8
  %call15 = call %struct.obj* @strcons(i64 %sub.ptr.sub, i8* %17)
  ret %struct.obj* %call15
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind uwtable
define %struct.obj* @string_trim_left(%struct.obj* %str) #0 {
entry:
  %str.addr = alloca %struct.obj*, align 8
  %start = alloca i8*, align 8
  %end = alloca i8*, align 8
  store %struct.obj* %str, %struct.obj** %str.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %str.addr, align 8
  %call = call i8* @get_c_string(%struct.obj* %0)
  store i8* %call, i8** %start, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8*, i8** %start, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i8*, i8** %start, align 8
  %4 = load i8, i8* %3, align 1
  %conv1 = sext i8 %4 to i32
  %call2 = call i8* @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i32 %conv1) #6
  %tobool3 = icmp ne i8* %call2, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %tobool3, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i8*, i8** %start, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %start, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %7 = load i8*, i8** %start, align 8
  %call4 = call i64 @strlen(i8* %7) #6
  %8 = load i8*, i8** %start, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %call4
  store i8* %arrayidx, i8** %end, align 8
  %9 = load i8*, i8** %end, align 8
  %10 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %11 = load i8*, i8** %start, align 8
  %call5 = call %struct.obj* @strcons(i64 %sub.ptr.sub, i8* %11)
  ret %struct.obj* %call5
}

; Function Attrs: nounwind uwtable
define %struct.obj* @string_trim_right(%struct.obj* %str) #0 {
entry:
  %str.addr = alloca %struct.obj*, align 8
  %start = alloca i8*, align 8
  %end = alloca i8*, align 8
  store %struct.obj* %str, %struct.obj** %str.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %str.addr, align 8
  %call = call i8* @get_c_string(%struct.obj* %0)
  store i8* %call, i8** %start, align 8
  %1 = load i8*, i8** %start, align 8
  %call1 = call i64 @strlen(i8* %1) #6
  %2 = load i8*, i8** %start, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %call1
  store i8* %arrayidx, i8** %end, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i8*, i8** %end, align 8
  %4 = load i8*, i8** %start, align 8
  %cmp = icmp ugt i8* %3, %4
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i8*, i8** %end, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 -1
  %6 = load i8, i8* %add.ptr, align 1
  %conv = sext i8 %6 to i32
  %call2 = call i8* @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i32 %conv) #6
  %tobool = icmp ne i8* %call2, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i8*, i8** %end, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 -1
  store i8* %incdec.ptr, i8** %end, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load i8*, i8** %end, align 8
  %10 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %11 = load i8*, i8** %start, align 8
  %call3 = call %struct.obj* @strcons(i64 %sub.ptr.sub, i8* %11)
  ret %struct.obj* %call3
}

; Function Attrs: nounwind uwtable
define %struct.obj* @string_upcase(%struct.obj* %str) #0 {
entry:
  %str.addr = alloca %struct.obj*, align 8
  %result = alloca %struct.obj*, align 8
  %s1 = alloca i8*, align 8
  %s2 = alloca i8*, align 8
  %j = alloca i64, align 8
  %n = alloca i64, align 8
  store %struct.obj* %str, %struct.obj** %str.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %str.addr, align 8
  %call = call i8* @get_c_string(%struct.obj* %0)
  store i8* %call, i8** %s1, align 8
  %1 = load i8*, i8** %s1, align 8
  %call1 = call i64 @strlen(i8* %1) #6
  store i64 %call1, i64* %n, align 8
  %2 = load i64, i64* %n, align 8
  %3 = load i8*, i8** %s1, align 8
  %call2 = call %struct.obj* @strcons(i64 %2, i8* %3)
  store %struct.obj* %call2, %struct.obj** %result, align 8
  %4 = load %struct.obj*, %struct.obj** %result, align 8
  %call3 = call i8* @get_c_string(%struct.obj* %4)
  store i8* %call3, i8** %s2, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i64, i64* %j, align 8
  %6 = load i64, i64* %n, align 8
  %cmp = icmp slt i64 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i64, i64* %j, align 8
  %8 = load i8*, i8** %s2, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %7
  %9 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %9 to i32
  %call4 = call i32 @toupper(i32 %conv) #2
  %conv5 = trunc i32 %call4 to i8
  %10 = load i64, i64* %j, align 8
  %11 = load i8*, i8** %s2, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %11, i64 %10
  store i8 %conv5, i8* %arrayidx6, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i64, i64* %j, align 8
  %inc = add nsw i64 %12, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.obj*, %struct.obj** %result, align 8
  ret %struct.obj* %13
}

; Function Attrs: nounwind
declare i32 @toupper(i32) #3

; Function Attrs: nounwind uwtable
define %struct.obj* @string_downcase(%struct.obj* %str) #0 {
entry:
  %str.addr = alloca %struct.obj*, align 8
  %result = alloca %struct.obj*, align 8
  %s1 = alloca i8*, align 8
  %s2 = alloca i8*, align 8
  %j = alloca i64, align 8
  %n = alloca i64, align 8
  store %struct.obj* %str, %struct.obj** %str.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %str.addr, align 8
  %call = call i8* @get_c_string(%struct.obj* %0)
  store i8* %call, i8** %s1, align 8
  %1 = load i8*, i8** %s1, align 8
  %call1 = call i64 @strlen(i8* %1) #6
  store i64 %call1, i64* %n, align 8
  %2 = load i64, i64* %n, align 8
  %3 = load i8*, i8** %s1, align 8
  %call2 = call %struct.obj* @strcons(i64 %2, i8* %3)
  store %struct.obj* %call2, %struct.obj** %result, align 8
  %4 = load %struct.obj*, %struct.obj** %result, align 8
  %call3 = call i8* @get_c_string(%struct.obj* %4)
  store i8* %call3, i8** %s2, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i64, i64* %j, align 8
  %6 = load i64, i64* %n, align 8
  %cmp = icmp slt i64 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i64, i64* %j, align 8
  %8 = load i8*, i8** %s2, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %7
  %9 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %9 to i32
  %call4 = call i32 @tolower(i32 %conv) #2
  %conv5 = trunc i32 %call4 to i8
  %10 = load i64, i64* %j, align 8
  %11 = load i8*, i8** %s2, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %11, i64 %10
  store i8 %conv5, i8* %arrayidx6, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i64, i64* %j, align 8
  %inc = add nsw i64 %12, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.obj*, %struct.obj** %result, align 8
  ret %struct.obj* %13
}

; Function Attrs: nounwind
declare i32 @tolower(i32) #3

; Function Attrs: nounwind uwtable
define %struct.obj* @lreadstring(%struct.gen_readio* %f) #0 {
entry:
  %f.addr = alloca %struct.gen_readio*, align 8
  %j = alloca i32, align 4
  %c = alloca i32, align 4
  %n = alloca i32, align 4
  %p = alloca i8*, align 8
  store %struct.gen_readio* %f, %struct.gen_readio** %f.addr, align 8
  store i32 0, i32* %j, align 4
  %0 = load i8*, i8** @tkbuffer, align 8
  store i8* %0, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.34, %entry
  %1 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %getc_fcn = getelementptr inbounds %struct.gen_readio, %struct.gen_readio* %1, i32 0, i32 0
  %2 = load i32 (i8*)*, i32 (i8*)** %getc_fcn, align 8
  %3 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %cb_argument = getelementptr inbounds %struct.gen_readio, %struct.gen_readio* %3, i32 0, i32 2
  %4 = load i8*, i8** %cb_argument, align 8
  %call = call i32 %2(i8* %4)
  store i32 %call, i32* %c, align 4
  %cmp = icmp ne i32 %call, 34
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i32, i32* %c, align 4
  %cmp1 = icmp ne i32 %5, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %6, label %while.body, label %while.end.36

while.body:                                       ; preds = %land.end
  %7 = load i32, i32* %c, align 4
  %cmp2 = icmp eq i32 %7, 92
  br i1 %cmp2, label %if.then, label %if.end.28

if.then:                                          ; preds = %while.body
  %8 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %getc_fcn3 = getelementptr inbounds %struct.gen_readio, %struct.gen_readio* %8, i32 0, i32 0
  %9 = load i32 (i8*)*, i32 (i8*)** %getc_fcn3, align 8
  %10 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %cb_argument4 = getelementptr inbounds %struct.gen_readio, %struct.gen_readio* %10, i32 0, i32 2
  %11 = load i8*, i8** %cb_argument4, align 8
  %call5 = call i32 %9(i8* %11)
  store i32 %call5, i32* %c, align 4
  %12 = load i32, i32* %c, align 4
  %cmp6 = icmp eq i32 %12, -1
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %call8 = call %struct.obj* @err(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), %struct.obj* null)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  %13 = load i32, i32* %c, align 4
  switch i32 %13, label %sw.epilog [
    i32 110, label %sw.bb
    i32 116, label %sw.bb.9
    i32 114, label %sw.bb.10
    i32 100, label %sw.bb.11
    i32 78, label %sw.bb.12
    i32 115, label %sw.bb.13
    i32 48, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %if.end
  store i32 10, i32* %c, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.end
  store i32 9, i32* %c, align 4
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.end
  store i32 13, i32* %c, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.end
  store i32 4, i32* %c, align 4
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.end
  store i32 0, i32* %c, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.end
  store i32 32, i32* %c, align 4
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.end
  store i32 0, i32* %n, align 4
  br label %while.body.16

while.body.16:                                    ; preds = %sw.bb.14, %if.end.27
  %14 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %getc_fcn17 = getelementptr inbounds %struct.gen_readio, %struct.gen_readio* %14, i32 0, i32 0
  %15 = load i32 (i8*)*, i32 (i8*)** %getc_fcn17, align 8
  %16 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %cb_argument18 = getelementptr inbounds %struct.gen_readio, %struct.gen_readio* %16, i32 0, i32 2
  %17 = load i8*, i8** %cb_argument18, align 8
  %call19 = call i32 %15(i8* %17)
  store i32 %call19, i32* %c, align 4
  %18 = load i32, i32* %c, align 4
  %cmp20 = icmp eq i32 %18, -1
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %while.body.16
  %call22 = call %struct.obj* @err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0), %struct.obj* null)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %while.body.16
  %19 = load i32, i32* %c, align 4
  %idxprom = sext i32 %19 to i64
  %call24 = call i16** @__ctype_b_loc() #7
  %20 = load i16*, i16** %call24, align 8
  %arrayidx = getelementptr inbounds i16, i16* %20, i64 %idxprom
  %21 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %21 to i32
  %and = and i32 %conv, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %if.end.23
  %22 = load i32, i32* %n, align 4
  %mul = mul nsw i32 %22, 8
  %23 = load i32, i32* %c, align 4
  %add = add nsw i32 %mul, %23
  %sub = sub nsw i32 %add, 48
  store i32 %sub, i32* %n, align 4
  br label %if.end.27

if.else:                                          ; preds = %if.end.23
  %24 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %ungetc_fcn = getelementptr inbounds %struct.gen_readio, %struct.gen_readio* %24, i32 0, i32 1
  %25 = load void (i32, i8*)*, void (i32, i8*)** %ungetc_fcn, align 8
  %26 = load i32, i32* %c, align 4
  %27 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %cb_argument26 = getelementptr inbounds %struct.gen_readio, %struct.gen_readio* %27, i32 0, i32 2
  %28 = load i8*, i8** %cb_argument26, align 8
  call void %25(i32 %26, i8* %28)
  br label %while.end

if.end.27:                                        ; preds = %if.then.25
  br label %while.body.16

while.end:                                        ; preds = %if.else
  %29 = load i32, i32* %n, align 4
  store i32 %29, i32* %c, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.end, %if.end, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb
  br label %if.end.28

if.end.28:                                        ; preds = %sw.epilog, %while.body
  %30 = load i32, i32* %j, align 4
  %add29 = add nsw i32 %30, 1
  %cmp30 = icmp sge i32 %add29, 5120
  br i1 %cmp30, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.end.28
  %call33 = call %struct.obj* @err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i32 0, i32 0), %struct.obj* null)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.end.28
  %31 = load i32, i32* %j, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %j, align 4
  %32 = load i32, i32* %c, align 4
  %conv35 = trunc i32 %32 to i8
  %33 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %conv35, i8* %33, align 1
  br label %while.cond

while.end.36:                                     ; preds = %land.end
  %34 = load i8*, i8** %p, align 8
  store i8 0, i8* %34, align 1
  %35 = load i32, i32* %j, align 4
  %conv37 = sext i32 %35 to i64
  %36 = load i8*, i8** @tkbuffer, align 8
  %call38 = call %struct.obj* @strcons(i64 %conv37, i8* %36)
  ret %struct.obj* %call38
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind uwtable
define %struct.obj* @lreadsharp(%struct.gen_readio* %f) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %f.addr = alloca %struct.gen_readio*, align 8
  %obj = alloca %struct.obj*, align 8
  %l = alloca %struct.obj*, align 8
  %result = alloca %struct.obj*, align 8
  %j = alloca i64, align 8
  %n = alloca i64, align 8
  %c = alloca i32, align 4
  store %struct.gen_readio* %f, %struct.gen_readio** %f.addr, align 8
  %0 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %getc_fcn = getelementptr inbounds %struct.gen_readio, %struct.gen_readio* %0, i32 0, i32 0
  %1 = load i32 (i8*)*, i32 (i8*)** %getc_fcn, align 8
  %2 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %cb_argument = getelementptr inbounds %struct.gen_readio, %struct.gen_readio* %2, i32 0, i32 2
  %3 = load i8*, i8** %cb_argument, align 8
  %call = call i32 %1(i8* %3)
  store i32 %call, i32* %c, align 4
  %4 = load i32, i32* %c, align 4
  switch i32 %4, label %sw.default [
    i32 40, label %sw.bb
    i32 46, label %sw.bb.7
    i32 102, label %sw.bb.10
    i32 116, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %ungetc_fcn = getelementptr inbounds %struct.gen_readio, %struct.gen_readio* %5, i32 0, i32 1
  %6 = load void (i32, i8*)*, void (i32, i8*)** %ungetc_fcn, align 8
  %7 = load i32, i32* %c, align 4
  %8 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %cb_argument1 = getelementptr inbounds %struct.gen_readio, %struct.gen_readio* %8, i32 0, i32 2
  %9 = load i8*, i8** %cb_argument1, align 8
  call void %6(i32 %7, i8* %9)
  %10 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %call2 = call %struct.obj* @lreadr(%struct.gen_readio* %10)
  store %struct.obj* %call2, %struct.obj** %obj, align 8
  %11 = load %struct.obj*, %struct.obj** %obj, align 8
  %call3 = call i64 @nlength(%struct.obj* %11)
  store i64 %call3, i64* %n, align 8
  %12 = load i64, i64* %n, align 8
  %call4 = call %struct.obj* @arcons(i64 16, i64 %12, i64 1)
  store %struct.obj* %call4, %struct.obj** %result, align 8
  %13 = load %struct.obj*, %struct.obj** %obj, align 8
  store %struct.obj* %13, %struct.obj** %l, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %14 = load i64, i64* %j, align 8
  %15 = load i64, i64* %n, align 8
  %cmp = icmp slt i64 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct.obj*, %struct.obj** %l, align 8
  %call5 = call %struct.obj* @car(%struct.obj* %16)
  %17 = load i64, i64* %j, align 8
  %18 = load %struct.obj*, %struct.obj** %result, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %18, i32 0, i32 2
  %lisp_array = bitcast %union.anon* %storage_as to %struct.anon.16*
  %data = getelementptr inbounds %struct.anon.16, %struct.anon.16* %lisp_array, i32 0, i32 1
  %19 = load %struct.obj**, %struct.obj*** %data, align 8
  %arrayidx = getelementptr inbounds %struct.obj*, %struct.obj** %19, i64 %17
  store %struct.obj* %call5, %struct.obj** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load %struct.obj*, %struct.obj** %l, align 8
  %call6 = call %struct.obj* @cdr(%struct.obj* %20)
  store %struct.obj* %call6, %struct.obj** %l, align 8
  %21 = load i64, i64* %j, align 8
  %inc = add nsw i64 %21, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.obj*, %struct.obj** %result, align 8
  store %struct.obj* %22, %struct.obj** %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  %23 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %call8 = call %struct.obj* @lreadr(%struct.gen_readio* %23)
  store %struct.obj* %call8, %struct.obj** %obj, align 8
  %24 = load %struct.obj*, %struct.obj** %obj, align 8
  %call9 = call %struct.obj* @leval(%struct.obj* %24, %struct.obj* null)
  store %struct.obj* %call9, %struct.obj** %retval
  br label %return

sw.bb.10:                                         ; preds = %entry
  store %struct.obj* null, %struct.obj** %retval
  br label %return

sw.bb.11:                                         ; preds = %entry
  %call12 = call %struct.obj* @flocons(double 1.000000e+00)
  store %struct.obj* %call12, %struct.obj** %retval
  br label %return

sw.default:                                       ; preds = %entry
  %call13 = call %struct.obj* @err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.36, i32 0, i32 0), %struct.obj* null)
  store %struct.obj* %call13, %struct.obj** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.11, %sw.bb.10, %sw.bb.7, %for.end
  %25 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %25
}

declare %struct.obj* @lreadr(%struct.gen_readio*) #1

; Function Attrs: nounwind uwtable
define i64 @nlength(%struct.obj* %obj) #0 {
entry:
  %retval = alloca i64, align 8
  %obj.addr = alloca %struct.obj*, align 8
  %l = alloca %struct.obj*, align 8
  %n = alloca i64, align 8
  store %struct.obj* %obj, %struct.obj** %obj.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  switch i32 %cond, label %sw.default [
    i32 13, label %sw.bb
    i32 18, label %sw.bb.1
    i32 14, label %sw.bb.4
    i32 15, label %sw.bb.7
    i32 16, label %sw.bb.10
    i32 0, label %sw.bb.13
    i32 1, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %3, i32 0, i32 2
  %string = bitcast %union.anon* %storage_as to %struct.anon.13*
  %data = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string, i32 0, i32 1
  %4 = load i8*, i8** %data, align 8
  %call = call i64 @strlen(i8* %4) #6
  store i64 %call, i64* %retval
  br label %return

sw.bb.1:                                          ; preds = %cond.end
  %5 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  %storage_as2 = getelementptr inbounds %struct.obj, %struct.obj* %5, i32 0, i32 2
  %string3 = bitcast %union.anon* %storage_as2 to %struct.anon.13*
  %dim = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string3, i32 0, i32 0
  %6 = load i64, i64* %dim, align 8
  store i64 %6, i64* %retval
  br label %return

sw.bb.4:                                          ; preds = %cond.end
  %7 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  %storage_as5 = getelementptr inbounds %struct.obj, %struct.obj* %7, i32 0, i32 2
  %double_array = bitcast %union.anon* %storage_as5 to %struct.anon.12*
  %dim6 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %double_array, i32 0, i32 0
  %8 = load i64, i64* %dim6, align 8
  store i64 %8, i64* %retval
  br label %return

sw.bb.7:                                          ; preds = %cond.end
  %9 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  %storage_as8 = getelementptr inbounds %struct.obj, %struct.obj* %9, i32 0, i32 2
  %long_array = bitcast %union.anon* %storage_as8 to %struct.anon.11*
  %dim9 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %long_array, i32 0, i32 0
  %10 = load i64, i64* %dim9, align 8
  store i64 %10, i64* %retval
  br label %return

sw.bb.10:                                         ; preds = %cond.end
  %11 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  %storage_as11 = getelementptr inbounds %struct.obj, %struct.obj* %11, i32 0, i32 2
  %lisp_array = bitcast %union.anon* %storage_as11 to %struct.anon.16*
  %dim12 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %lisp_array, i32 0, i32 0
  %12 = load i64, i64* %dim12, align 8
  store i64 %12, i64* %retval
  br label %return

sw.bb.13:                                         ; preds = %cond.end
  store i64 0, i64* %retval
  br label %return

sw.bb.14:                                         ; preds = %cond.end
  %13 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  store %struct.obj* %13, %struct.obj** %l, align 8
  store i64 0, i64* %n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.14
  %14 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp15 = icmp eq %struct.obj* %14, null
  br i1 %cmp15, label %cond.true.17, label %cond.false.18

cond.true.17:                                     ; preds = %for.cond
  br label %cond.end.21

cond.false.18:                                    ; preds = %for.cond
  %15 = load %struct.obj*, %struct.obj** %l, align 8
  %type19 = getelementptr inbounds %struct.obj, %struct.obj* %15, i32 0, i32 1
  %16 = load i16, i16* %type19, align 2
  %conv20 = sext i16 %16 to i32
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.18, %cond.true.17
  %cond22 = phi i32 [ 0, %cond.true.17 ], [ %conv20, %cond.false.18 ]
  %cmp23 = icmp eq i32 %cond22, 1
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end.21
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load %struct.obj*, %struct.obj** %l, align 8
  %storage_as25 = getelementptr inbounds %struct.obj, %struct.obj* %17, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as25 to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 1
  %18 = load %struct.obj*, %struct.obj** %cdr, align 8
  store %struct.obj* %18, %struct.obj** %l, align 8
  %19 = load i64, i64* %n, align 8
  %inc = add nsw i64 %19, 1
  store i64 %inc, i64* %n, align 8
  br label %for.cond

for.end:                                          ; preds = %cond.end.21
  %20 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp26 = icmp ne %struct.obj* %20, null
  br i1 %cmp26, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %21 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  %call28 = call %struct.obj* @err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.46, i32 0, i32 0), %struct.obj* %21)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %22 = load i64, i64* %n, align 8
  store i64 %22, i64* %retval
  br label %return

sw.default:                                       ; preds = %cond.end
  %23 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  %call29 = call %struct.obj* @err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0), %struct.obj* %23)
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %sw.default, %if.end, %sw.bb.13, %sw.bb.10, %sw.bb.7, %sw.bb.4, %sw.bb.1, %sw.bb
  %24 = load i64, i64* %retval
  ret i64 %24
}

declare %struct.obj* @leval(%struct.obj*, %struct.obj*) #1

; Function Attrs: nounwind uwtable
define i64 @c_sxhash(%struct.obj* %obj, i64 %n) #0 {
entry:
  %retval = alloca i64, align 8
  %obj.addr = alloca %struct.obj*, align 8
  %n.addr = alloca i64, align 8
  %hash = alloca i64, align 8
  %s = alloca i8*, align 8
  %tmp = alloca %struct.obj*, align 8
  %p = alloca %struct.user_type_hooks*, align 8
  store %struct.obj* %obj, %struct.obj** %obj.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = bitcast %struct.obj** %obj.addr to i8*
  %1 = load i8*, i8** @stack_limit_ptr, align 8
  %cmp = icmp ult i8* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.obj** %obj.addr to i8*
  call void @err_stack(i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  %cmp2 = icmp eq %struct.obj* %3, null
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %4 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 1
  %5 = load i16, i16* %type, align 2
  %conv = sext i16 %5 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  switch i32 %cond, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.3
    i32 3, label %sw.bb.28
    i32 4, label %sw.bb.39
    i32 5, label %sw.bb.39
    i32 6, label %sw.bb.39
    i32 7, label %sw.bb.39
    i32 19, label %sw.bb.39
    i32 20, label %sw.bb.39
    i32 8, label %sw.bb.39
    i32 9, label %sw.bb.39
    i32 10, label %sw.bb.39
    i32 2, label %sw.bb.52
  ]

sw.bb:                                            ; preds = %cond.end
  store i64 0, i64* %retval
  br label %return

sw.bb.3:                                          ; preds = %cond.end
  %6 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %6, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 0
  %7 = load %struct.obj*, %struct.obj** %car, align 8
  %8 = load i64, i64* %n.addr, align 8
  %call = call i64 @c_sxhash(%struct.obj* %7, i64 %8)
  store i64 %call, i64* %hash, align 8
  %9 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  %storage_as4 = getelementptr inbounds %struct.obj, %struct.obj* %9, i32 0, i32 2
  %cons5 = bitcast %union.anon* %storage_as4 to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons5, i32 0, i32 1
  %10 = load %struct.obj*, %struct.obj** %cdr, align 8
  store %struct.obj* %10, %struct.obj** %tmp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.3
  %11 = load %struct.obj*, %struct.obj** %tmp, align 8
  %cmp6 = icmp eq %struct.obj* %11, null
  br i1 %cmp6, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %for.cond
  br label %cond.end.12

cond.false.9:                                     ; preds = %for.cond
  %12 = load %struct.obj*, %struct.obj** %tmp, align 8
  %type10 = getelementptr inbounds %struct.obj, %struct.obj* %12, i32 0, i32 1
  %13 = load i16, i16* %type10, align 2
  %conv11 = sext i16 %13 to i32
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.9, %cond.true.8
  %cond13 = phi i32 [ 0, %cond.true.8 ], [ %conv11, %cond.false.9 ]
  %cmp14 = icmp eq i32 %cond13, 1
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end.12
  %14 = load i64, i64* %hash, align 8
  %mul = mul nsw i64 %14, 17
  %add = add nsw i64 %mul, 1
  %15 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as16 = getelementptr inbounds %struct.obj, %struct.obj* %15, i32 0, i32 2
  %cons17 = bitcast %union.anon* %storage_as16 to %struct.anon*
  %car18 = getelementptr inbounds %struct.anon, %struct.anon* %cons17, i32 0, i32 0
  %16 = load %struct.obj*, %struct.obj** %car18, align 8
  %17 = load i64, i64* %n.addr, align 8
  %call19 = call i64 @c_sxhash(%struct.obj* %16, i64 %17)
  %xor = xor i64 %add, %call19
  %18 = load i64, i64* %n.addr, align 8
  %rem = srem i64 %xor, %18
  store i64 %rem, i64* %hash, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as20 = getelementptr inbounds %struct.obj, %struct.obj* %19, i32 0, i32 2
  %cons21 = bitcast %union.anon* %storage_as20 to %struct.anon*
  %cdr22 = getelementptr inbounds %struct.anon, %struct.anon* %cons21, i32 0, i32 1
  %20 = load %struct.obj*, %struct.obj** %cdr22, align 8
  store %struct.obj* %20, %struct.obj** %tmp, align 8
  br label %for.cond

for.end:                                          ; preds = %cond.end.12
  %21 = load i64, i64* %hash, align 8
  %mul23 = mul nsw i64 %21, 17
  %add24 = add nsw i64 %mul23, 1
  %22 = load %struct.obj*, %struct.obj** %tmp, align 8
  %23 = load i64, i64* %n.addr, align 8
  %call25 = call i64 @c_sxhash(%struct.obj* %22, i64 %23)
  %xor26 = xor i64 %add24, %call25
  %24 = load i64, i64* %n.addr, align 8
  %rem27 = srem i64 %xor26, %24
  store i64 %rem27, i64* %hash, align 8
  %25 = load i64, i64* %hash, align 8
  store i64 %25, i64* %retval
  br label %return

sw.bb.28:                                         ; preds = %cond.end
  store i64 0, i64* %hash, align 8
  %26 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  %storage_as29 = getelementptr inbounds %struct.obj, %struct.obj* %26, i32 0, i32 2
  %symbol = bitcast %union.anon* %storage_as29 to %struct.anon.1*
  %pname = getelementptr inbounds %struct.anon.1, %struct.anon.1* %symbol, i32 0, i32 0
  %27 = load i8*, i8** %pname, align 8
  store i8* %27, i8** %s, align 8
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.37, %sw.bb.28
  %28 = load i8*, i8** %s, align 8
  %29 = load i8, i8* %28, align 1
  %tobool = icmp ne i8 %29, 0
  br i1 %tobool, label %for.body.31, label %for.end.38

for.body.31:                                      ; preds = %for.cond.30
  %30 = load i64, i64* %hash, align 8
  %mul32 = mul nsw i64 %30, 17
  %add33 = add nsw i64 %mul32, 1
  %31 = load i8*, i8** %s, align 8
  %32 = load i8, i8* %31, align 1
  %conv34 = zext i8 %32 to i64
  %xor35 = xor i64 %add33, %conv34
  %33 = load i64, i64* %n.addr, align 8
  %rem36 = srem i64 %xor35, %33
  store i64 %rem36, i64* %hash, align 8
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.31
  %34 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %for.cond.30

for.end.38:                                       ; preds = %for.cond.30
  %35 = load i64, i64* %hash, align 8
  store i64 %35, i64* %retval
  br label %return

sw.bb.39:                                         ; preds = %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end
  store i64 0, i64* %hash, align 8
  %36 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  %storage_as40 = getelementptr inbounds %struct.obj, %struct.obj* %36, i32 0, i32 2
  %subr = bitcast %union.anon* %storage_as40 to %struct.anon.9*
  %name = getelementptr inbounds %struct.anon.9, %struct.anon.9* %subr, i32 0, i32 0
  %37 = load i8*, i8** %name, align 8
  store i8* %37, i8** %s, align 8
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.49, %sw.bb.39
  %38 = load i8*, i8** %s, align 8
  %39 = load i8, i8* %38, align 1
  %tobool42 = icmp ne i8 %39, 0
  br i1 %tobool42, label %for.body.43, label %for.end.51

for.body.43:                                      ; preds = %for.cond.41
  %40 = load i64, i64* %hash, align 8
  %mul44 = mul nsw i64 %40, 17
  %add45 = add nsw i64 %mul44, 1
  %41 = load i8*, i8** %s, align 8
  %42 = load i8, i8* %41, align 1
  %conv46 = zext i8 %42 to i64
  %xor47 = xor i64 %add45, %conv46
  %43 = load i64, i64* %n.addr, align 8
  %rem48 = srem i64 %xor47, %43
  store i64 %rem48, i64* %hash, align 8
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.body.43
  %44 = load i8*, i8** %s, align 8
  %incdec.ptr50 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr50, i8** %s, align 8
  br label %for.cond.41

for.end.51:                                       ; preds = %for.cond.41
  %45 = load i64, i64* %hash, align 8
  store i64 %45, i64* %retval
  br label %return

sw.bb.52:                                         ; preds = %cond.end
  %46 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  %storage_as53 = getelementptr inbounds %struct.obj, %struct.obj* %46, i32 0, i32 2
  %flonum = bitcast %union.anon* %storage_as53 to %struct.anon.0*
  %data = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum, i32 0, i32 0
  %47 = load double, double* %data, align 8
  %conv54 = fptoui double %47 to i64
  %48 = load i64, i64* %n.addr, align 8
  %rem55 = urem i64 %conv54, %48
  store i64 %rem55, i64* %retval
  br label %return

sw.default:                                       ; preds = %cond.end
  %49 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  %cmp56 = icmp eq %struct.obj* %49, null
  br i1 %cmp56, label %cond.true.58, label %cond.false.59

cond.true.58:                                     ; preds = %sw.default
  br label %cond.end.62

cond.false.59:                                    ; preds = %sw.default
  %50 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  %type60 = getelementptr inbounds %struct.obj, %struct.obj* %50, i32 0, i32 1
  %51 = load i16, i16* %type60, align 2
  %conv61 = sext i16 %51 to i32
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.59, %cond.true.58
  %cond63 = phi i32 [ 0, %cond.true.58 ], [ %conv61, %cond.false.59 ]
  %conv64 = sext i32 %cond63 to i64
  %call65 = call %struct.user_type_hooks* @get_user_type_hooks(i64 %conv64)
  store %struct.user_type_hooks* %call65, %struct.user_type_hooks** %p, align 8
  %52 = load %struct.user_type_hooks*, %struct.user_type_hooks** %p, align 8
  %c_sxhash = getelementptr inbounds %struct.user_type_hooks, %struct.user_type_hooks* %52, i32 0, i32 6
  %53 = load i64 (%struct.obj*, i64)*, i64 (%struct.obj*, i64)** %c_sxhash, align 8
  %tobool66 = icmp ne i64 (%struct.obj*, i64)* %53, null
  br i1 %tobool66, label %if.then.67, label %if.else

if.then.67:                                       ; preds = %cond.end.62
  %54 = load %struct.user_type_hooks*, %struct.user_type_hooks** %p, align 8
  %c_sxhash68 = getelementptr inbounds %struct.user_type_hooks, %struct.user_type_hooks* %54, i32 0, i32 6
  %55 = load i64 (%struct.obj*, i64)*, i64 (%struct.obj*, i64)** %c_sxhash68, align 8
  %56 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  %57 = load i64, i64* %n.addr, align 8
  %call69 = call i64 %55(%struct.obj* %56, i64 %57)
  store i64 %call69, i64* %retval
  br label %return

if.else:                                          ; preds = %cond.end.62
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.67, %sw.bb.52, %for.end.51, %for.end.38, %for.end, %sw.bb
  %58 = load i64, i64* %retval
  ret i64 %58
}

declare void @err_stack(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @sxhash(%struct.obj* %obj, %struct.obj* %n) #0 {
entry:
  %obj.addr = alloca %struct.obj*, align 8
  %n.addr = alloca %struct.obj*, align 8
  store %struct.obj* %obj, %struct.obj** %obj.addr, align 8
  store %struct.obj* %n, %struct.obj** %n.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  %1 = load %struct.obj*, %struct.obj** %n.addr, align 8
  %cmp = icmp eq %struct.obj* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct.obj*, %struct.obj** %n.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %2, i32 0, i32 1
  %3 = load i16, i16* %type, align 2
  %conv = sext i16 %3 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp eq i32 %cond, 2
  br i1 %cmp1, label %cond.true.3, label %cond.false.5

cond.true.3:                                      ; preds = %cond.end
  %4 = load %struct.obj*, %struct.obj** %n.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 2
  %flonum = bitcast %union.anon* %storage_as to %struct.anon.0*
  %data = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum, i32 0, i32 0
  %5 = load double, double* %data, align 8
  %conv4 = fptosi double %5 to i64
  br label %cond.end.6

cond.false.5:                                     ; preds = %cond.end
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.false.5, %cond.true.3
  %cond7 = phi i64 [ %conv4, %cond.true.3 ], [ 10000, %cond.false.5 ]
  %call = call i64 @c_sxhash(%struct.obj* %0, i64 %cond7)
  %conv8 = sitofp i64 %call to double
  %call9 = call %struct.obj* @flocons(double %conv8)
  ret %struct.obj* %call9
}

; Function Attrs: nounwind uwtable
define %struct.obj* @equal(%struct.obj* %a, %struct.obj* %b) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %a.addr = alloca %struct.obj*, align 8
  %b.addr = alloca %struct.obj*, align 8
  %p = alloca %struct.user_type_hooks*, align 8
  %atype = alloca i64, align 8
  store %struct.obj* %a, %struct.obj** %a.addr, align 8
  store %struct.obj* %b, %struct.obj** %b.addr, align 8
  %0 = bitcast %struct.obj** %a.addr to i8*
  %1 = load i8*, i8** @stack_limit_ptr, align 8
  %cmp = icmp ult i8* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.obj** %a.addr to i8*
  call void @err_stack(i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %loop

loop:                                             ; preds = %if.end.24, %if.end
  %3 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %4 = load %struct.obj*, %struct.obj** %b.addr, align 8
  %cmp1 = icmp eq %struct.obj* %3, %4
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %loop
  %5 = load %struct.obj*, %struct.obj** @sym_t, align 8
  store %struct.obj* %5, %struct.obj** %retval
  br label %return

if.end.3:                                         ; preds = %loop
  %6 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %cmp4 = icmp eq %struct.obj* %6, null
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.3
  br label %cond.end

cond.false:                                       ; preds = %if.end.3
  %7 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %7, i32 0, i32 1
  %8 = load i16, i16* %type, align 2
  %conv = sext i16 %8 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %conv5 = sext i32 %cond to i64
  store i64 %conv5, i64* %atype, align 8
  %9 = load i64, i64* %atype, align 8
  %10 = load %struct.obj*, %struct.obj** %b.addr, align 8
  %cmp6 = icmp eq %struct.obj* %10, null
  br i1 %cmp6, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.end
  br label %cond.end.12

cond.false.9:                                     ; preds = %cond.end
  %11 = load %struct.obj*, %struct.obj** %b.addr, align 8
  %type10 = getelementptr inbounds %struct.obj, %struct.obj* %11, i32 0, i32 1
  %12 = load i16, i16* %type10, align 2
  %conv11 = sext i16 %12 to i32
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.9, %cond.true.8
  %cond13 = phi i32 [ 0, %cond.true.8 ], [ %conv11, %cond.false.9 ]
  %conv14 = sext i32 %cond13 to i64
  %cmp15 = icmp ne i64 %9, %conv14
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %cond.end.12
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end.18:                                        ; preds = %cond.end.12
  %13 = load i64, i64* %atype, align 8
  switch i64 %13, label %sw.default [
    i64 1, label %sw.bb
    i64 2, label %sw.bb.27
    i64 3, label %sw.bb.37
  ]

sw.bb:                                            ; preds = %if.end.18
  %14 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %call = call %struct.obj* @car(%struct.obj* %14)
  %15 = load %struct.obj*, %struct.obj** %b.addr, align 8
  %call19 = call %struct.obj* @car(%struct.obj* %15)
  %call20 = call %struct.obj* @equal(%struct.obj* %call, %struct.obj* %call19)
  %cmp21 = icmp eq %struct.obj* %call20, null
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %sw.bb
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end.24:                                        ; preds = %sw.bb
  %16 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %call25 = call %struct.obj* @cdr(%struct.obj* %16)
  store %struct.obj* %call25, %struct.obj** %a.addr, align 8
  %17 = load %struct.obj*, %struct.obj** %b.addr, align 8
  %call26 = call %struct.obj* @cdr(%struct.obj* %17)
  store %struct.obj* %call26, %struct.obj** %b.addr, align 8
  br label %loop

sw.bb.27:                                         ; preds = %if.end.18
  %18 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %18, i32 0, i32 2
  %flonum = bitcast %union.anon* %storage_as to %struct.anon.0*
  %data = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum, i32 0, i32 0
  %19 = load double, double* %data, align 8
  %20 = load %struct.obj*, %struct.obj** %b.addr, align 8
  %storage_as28 = getelementptr inbounds %struct.obj, %struct.obj* %20, i32 0, i32 2
  %flonum29 = bitcast %union.anon* %storage_as28 to %struct.anon.0*
  %data30 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum29, i32 0, i32 0
  %21 = load double, double* %data30, align 8
  %cmp31 = fcmp oeq double %19, %21
  br i1 %cmp31, label %cond.true.33, label %cond.false.34

cond.true.33:                                     ; preds = %sw.bb.27
  %22 = load %struct.obj*, %struct.obj** @sym_t, align 8
  br label %cond.end.35

cond.false.34:                                    ; preds = %sw.bb.27
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.34, %cond.true.33
  %cond36 = phi %struct.obj* [ %22, %cond.true.33 ], [ null, %cond.false.34 ]
  store %struct.obj* %cond36, %struct.obj** %retval
  br label %return

sw.bb.37:                                         ; preds = %if.end.18
  store %struct.obj* null, %struct.obj** %retval
  br label %return

sw.default:                                       ; preds = %if.end.18
  %23 = load i64, i64* %atype, align 8
  %call38 = call %struct.user_type_hooks* @get_user_type_hooks(i64 %23)
  store %struct.user_type_hooks* %call38, %struct.user_type_hooks** %p, align 8
  %24 = load %struct.user_type_hooks*, %struct.user_type_hooks** %p, align 8
  %equal = getelementptr inbounds %struct.user_type_hooks, %struct.user_type_hooks* %24, i32 0, i32 9
  %25 = load %struct.obj* (%struct.obj*, %struct.obj*)*, %struct.obj* (%struct.obj*, %struct.obj*)** %equal, align 8
  %tobool = icmp ne %struct.obj* (%struct.obj*, %struct.obj*)* %25, null
  br i1 %tobool, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %sw.default
  %26 = load %struct.user_type_hooks*, %struct.user_type_hooks** %p, align 8
  %equal40 = getelementptr inbounds %struct.user_type_hooks, %struct.user_type_hooks* %26, i32 0, i32 9
  %27 = load %struct.obj* (%struct.obj*, %struct.obj*)*, %struct.obj* (%struct.obj*, %struct.obj*)** %equal40, align 8
  %28 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %29 = load %struct.obj*, %struct.obj** %b.addr, align 8
  %call41 = call %struct.obj* %27(%struct.obj* %28, %struct.obj* %29)
  store %struct.obj* %call41, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %sw.default
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.39, %sw.bb.37, %cond.end.35, %if.then.23, %if.then.17, %if.then.2
  %30 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %30
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define i64 @href_index(%struct.obj* %table, %struct.obj* %key) #0 {
entry:
  %retval = alloca i64, align 8
  %table.addr = alloca %struct.obj*, align 8
  %key.addr = alloca %struct.obj*, align 8
  %index = alloca i64, align 8
  store %struct.obj* %table, %struct.obj** %table.addr, align 8
  store %struct.obj* %key, %struct.obj** %key.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp ne i32 %cond, 16
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i32 0, i32 0), %struct.obj* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %4 = load %struct.obj*, %struct.obj** %key.addr, align 8
  %5 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %5, i32 0, i32 2
  %lisp_array = bitcast %union.anon* %storage_as to %struct.anon.16*
  %dim = getelementptr inbounds %struct.anon.16, %struct.anon.16* %lisp_array, i32 0, i32 0
  %6 = load i64, i64* %dim, align 8
  %call3 = call i64 @c_sxhash(%struct.obj* %4, i64 %6)
  store i64 %call3, i64* %index, align 8
  %7 = load i64, i64* %index, align 8
  %cmp4 = icmp slt i64 %7, 0
  br i1 %cmp4, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %8 = load i64, i64* %index, align 8
  %9 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %storage_as6 = getelementptr inbounds %struct.obj, %struct.obj* %9, i32 0, i32 2
  %lisp_array7 = bitcast %union.anon* %storage_as6 to %struct.anon.16*
  %dim8 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %lisp_array7, i32 0, i32 0
  %10 = load i64, i64* %dim8, align 8
  %cmp9 = icmp sge i64 %8, %10
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %lor.lhs.false, %if.end
  %11 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %call12 = call %struct.obj* @err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i32 0, i32 0), %struct.obj* %11)
  store i64 0, i64* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %12 = load i64, i64* %index, align 8
  store i64 %12, i64* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.11
  %13 = load i64, i64* %retval
  ret i64 %13
}

; Function Attrs: nounwind uwtable
define %struct.obj* @href(%struct.obj* %table, %struct.obj* %key) #0 {
entry:
  %table.addr = alloca %struct.obj*, align 8
  %key.addr = alloca %struct.obj*, align 8
  store %struct.obj* %table, %struct.obj** %table.addr, align 8
  store %struct.obj* %key, %struct.obj** %key.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %key.addr, align 8
  %1 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %2 = load %struct.obj*, %struct.obj** %key.addr, align 8
  %call = call i64 @href_index(%struct.obj* %1, %struct.obj* %2)
  %3 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %3, i32 0, i32 2
  %lisp_array = bitcast %union.anon* %storage_as to %struct.anon.16*
  %data = getelementptr inbounds %struct.anon.16, %struct.anon.16* %lisp_array, i32 0, i32 1
  %4 = load %struct.obj**, %struct.obj*** %data, align 8
  %arrayidx = getelementptr inbounds %struct.obj*, %struct.obj** %4, i64 %call
  %5 = load %struct.obj*, %struct.obj** %arrayidx, align 8
  %call1 = call %struct.obj* @assoc(%struct.obj* %0, %struct.obj* %5)
  %call2 = call %struct.obj* @cdr(%struct.obj* %call1)
  ret %struct.obj* %call2
}

; Function Attrs: nounwind uwtable
define %struct.obj* @assoc(%struct.obj* %x, %struct.obj* %alist) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %x.addr = alloca %struct.obj*, align 8
  %alist.addr = alloca %struct.obj*, align 8
  %l = alloca %struct.obj*, align 8
  %tmp = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  store %struct.obj* %alist, %struct.obj** %alist.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %alist.addr, align 8
  store %struct.obj* %0, %struct.obj** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp = icmp eq %struct.obj* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %2 = load %struct.obj*, %struct.obj** %l, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %2, i32 0, i32 1
  %3 = load i16, i16* %type, align 2
  %conv = sext i16 %3 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp eq i32 %cond, 1
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %4 = load %struct.obj*, %struct.obj** %l, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 0
  %5 = load %struct.obj*, %struct.obj** %car, align 8
  store %struct.obj* %5, %struct.obj** %tmp, align 8
  %6 = load %struct.obj*, %struct.obj** %tmp, align 8
  %cmp3 = icmp eq %struct.obj* %6, null
  br i1 %cmp3, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %for.body
  br label %cond.end.9

cond.false.6:                                     ; preds = %for.body
  %7 = load %struct.obj*, %struct.obj** %tmp, align 8
  %type7 = getelementptr inbounds %struct.obj, %struct.obj* %7, i32 0, i32 1
  %8 = load i16, i16* %type7, align 2
  %conv8 = sext i16 %8 to i32
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.6, %cond.true.5
  %cond10 = phi i32 [ 0, %cond.true.5 ], [ %conv8, %cond.false.6 ]
  %cmp11 = icmp eq i32 %cond10, 1
  br i1 %cmp11, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end.9
  %9 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as13 = getelementptr inbounds %struct.obj, %struct.obj* %9, i32 0, i32 2
  %cons14 = bitcast %union.anon* %storage_as13 to %struct.anon*
  %car15 = getelementptr inbounds %struct.anon, %struct.anon* %cons14, i32 0, i32 0
  %10 = load %struct.obj*, %struct.obj** %car15, align 8
  %11 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call %struct.obj* @equal(%struct.obj* %10, %struct.obj* %11)
  %tobool = icmp ne %struct.obj* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct.obj*, %struct.obj** %tmp, align 8
  store %struct.obj* %12, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %cond.end.9
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load %struct.obj*, %struct.obj** %l, align 8
  %storage_as16 = getelementptr inbounds %struct.obj, %struct.obj* %13, i32 0, i32 2
  %cons17 = bitcast %union.anon* %storage_as16 to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons17, i32 0, i32 1
  %14 = load %struct.obj*, %struct.obj** %cdr, align 8
  store %struct.obj* %14, %struct.obj** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %cond.end
  %15 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp18 = icmp eq %struct.obj* %15, null
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %for.end
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end.21:                                        ; preds = %for.end
  %16 = load %struct.obj*, %struct.obj** %alist.addr, align 8
  %call22 = call %struct.obj* @err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i32 0, i32 0), %struct.obj* %16)
  store %struct.obj* %call22, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.20, %if.then
  %17 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %17
}

; Function Attrs: nounwind uwtable
define %struct.obj* @hset(%struct.obj* %table, %struct.obj* %key, %struct.obj* %value) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %table.addr = alloca %struct.obj*, align 8
  %key.addr = alloca %struct.obj*, align 8
  %value.addr = alloca %struct.obj*, align 8
  %index = alloca i64, align 8
  %cell = alloca %struct.obj*, align 8
  %l = alloca %struct.obj*, align 8
  store %struct.obj* %table, %struct.obj** %table.addr, align 8
  store %struct.obj* %key, %struct.obj** %key.addr, align 8
  store %struct.obj* %value, %struct.obj** %value.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %1 = load %struct.obj*, %struct.obj** %key.addr, align 8
  %call = call i64 @href_index(%struct.obj* %0, %struct.obj* %1)
  store i64 %call, i64* %index, align 8
  %2 = load i64, i64* %index, align 8
  %3 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %3, i32 0, i32 2
  %lisp_array = bitcast %union.anon* %storage_as to %struct.anon.16*
  %data = getelementptr inbounds %struct.anon.16, %struct.anon.16* %lisp_array, i32 0, i32 1
  %4 = load %struct.obj**, %struct.obj*** %data, align 8
  %arrayidx = getelementptr inbounds %struct.obj*, %struct.obj** %4, i64 %2
  %5 = load %struct.obj*, %struct.obj** %arrayidx, align 8
  store %struct.obj* %5, %struct.obj** %l, align 8
  %6 = load %struct.obj*, %struct.obj** %key.addr, align 8
  %7 = load %struct.obj*, %struct.obj** %l, align 8
  %call1 = call %struct.obj* @assoc(%struct.obj* %6, %struct.obj* %7)
  store %struct.obj* %call1, %struct.obj** %cell, align 8
  %cmp = icmp ne %struct.obj* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.obj*, %struct.obj** %cell, align 8
  %9 = load %struct.obj*, %struct.obj** %value.addr, align 8
  %call2 = call %struct.obj* @setcdr(%struct.obj* %8, %struct.obj* %9)
  store %struct.obj* %call2, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct.obj*, %struct.obj** %key.addr, align 8
  %11 = load %struct.obj*, %struct.obj** %value.addr, align 8
  %call3 = call %struct.obj* @cons(%struct.obj* %10, %struct.obj* %11)
  store %struct.obj* %call3, %struct.obj** %cell, align 8
  %12 = load %struct.obj*, %struct.obj** %cell, align 8
  %13 = load %struct.obj*, %struct.obj** %l, align 8
  %call4 = call %struct.obj* @cons(%struct.obj* %12, %struct.obj* %13)
  %14 = load i64, i64* %index, align 8
  %15 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %storage_as5 = getelementptr inbounds %struct.obj, %struct.obj* %15, i32 0, i32 2
  %lisp_array6 = bitcast %union.anon* %storage_as5 to %struct.anon.16*
  %data7 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %lisp_array6, i32 0, i32 1
  %16 = load %struct.obj**, %struct.obj*** %data7, align 8
  %arrayidx8 = getelementptr inbounds %struct.obj*, %struct.obj** %16, i64 %14
  store %struct.obj* %call4, %struct.obj** %arrayidx8, align 8
  %17 = load %struct.obj*, %struct.obj** %value.addr, align 8
  store %struct.obj* %17, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %18 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %18
}

declare %struct.obj* @setcdr(%struct.obj*, %struct.obj*) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @assv(%struct.obj* %x, %struct.obj* %alist) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %x.addr = alloca %struct.obj*, align 8
  %alist.addr = alloca %struct.obj*, align 8
  %l = alloca %struct.obj*, align 8
  %tmp = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  store %struct.obj* %alist, %struct.obj** %alist.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %alist.addr, align 8
  store %struct.obj* %0, %struct.obj** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp = icmp eq %struct.obj* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %2 = load %struct.obj*, %struct.obj** %l, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %2, i32 0, i32 1
  %3 = load i16, i16* %type, align 2
  %conv = sext i16 %3 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp eq i32 %cond, 1
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %4 = load %struct.obj*, %struct.obj** %l, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 0
  %5 = load %struct.obj*, %struct.obj** %car, align 8
  store %struct.obj* %5, %struct.obj** %tmp, align 8
  %6 = load %struct.obj*, %struct.obj** %tmp, align 8
  %cmp3 = icmp eq %struct.obj* %6, null
  br i1 %cmp3, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %for.body
  br label %cond.end.9

cond.false.6:                                     ; preds = %for.body
  %7 = load %struct.obj*, %struct.obj** %tmp, align 8
  %type7 = getelementptr inbounds %struct.obj, %struct.obj* %7, i32 0, i32 1
  %8 = load i16, i16* %type7, align 2
  %conv8 = sext i16 %8 to i32
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.6, %cond.true.5
  %cond10 = phi i32 [ 0, %cond.true.5 ], [ %conv8, %cond.false.6 ]
  %cmp11 = icmp eq i32 %cond10, 1
  br i1 %cmp11, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end.9
  %9 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as13 = getelementptr inbounds %struct.obj, %struct.obj* %9, i32 0, i32 2
  %cons14 = bitcast %union.anon* %storage_as13 to %struct.anon*
  %car15 = getelementptr inbounds %struct.anon, %struct.anon* %cons14, i32 0, i32 0
  %10 = load %struct.obj*, %struct.obj** %car15, align 8
  %11 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call %struct.obj* @eql(%struct.obj* %10, %struct.obj* %11)
  %cmp16 = icmp ne %struct.obj* %call, null
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct.obj*, %struct.obj** %tmp, align 8
  store %struct.obj* %12, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %cond.end.9
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load %struct.obj*, %struct.obj** %l, align 8
  %storage_as18 = getelementptr inbounds %struct.obj, %struct.obj* %13, i32 0, i32 2
  %cons19 = bitcast %union.anon* %storage_as18 to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons19, i32 0, i32 1
  %14 = load %struct.obj*, %struct.obj** %cdr, align 8
  store %struct.obj* %14, %struct.obj** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %cond.end
  %15 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp20 = icmp eq %struct.obj* %15, null
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %for.end
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end.23:                                        ; preds = %for.end
  %16 = load %struct.obj*, %struct.obj** %alist.addr, align 8
  %call24 = call %struct.obj* @err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i32 0, i32 0), %struct.obj* %16)
  store %struct.obj* %call24, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.22, %if.then
  %17 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %17
}

declare %struct.obj* @eql(%struct.obj*, %struct.obj*) #1

; Function Attrs: nounwind uwtable
define void @put_long(i64 %i, %struct._IO_FILE* %f) #0 {
entry:
  %i.addr = alloca i64, align 8
  %f.addr = alloca %struct._IO_FILE*, align 8
  store i64 %i, i64* %i.addr, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  %0 = bitcast i64* %i.addr to i8*
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i64 @fwrite(i8* %0, i64 8, i64 1, %struct._IO_FILE* %1)
  ret void
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i64 @get_long(%struct._IO_FILE* %f) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i64, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  %0 = bitcast i64* %i to i8*
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i64 @fread(i8* %0, i64 8, i64 1, %struct._IO_FILE* %1)
  %2 = load i64, i64* %i, align 8
  ret i64 %2
}

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i64 @fast_print_table(%struct.obj* %obj, %struct.obj* %table) #0 {
entry:
  %retval = alloca i64, align 8
  %obj.addr = alloca %struct.obj*, align 8
  %table.addr = alloca %struct.obj*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %ht = alloca %struct.obj*, align 8
  %index = alloca %struct.obj*, align 8
  store %struct.obj* %obj, %struct.obj** %obj.addr, align 8
  store %struct.obj* %table, %struct.obj** %table.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %call = call %struct.obj* @car(%struct.obj* %0)
  %call1 = call %struct._IO_FILE* @get_c_file(%struct.obj* %call, %struct._IO_FILE* null)
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %f, align 8
  %1 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %call2 = call %struct.obj* @cdr(%struct.obj* %1)
  %call3 = call %struct.obj* @car(%struct.obj* %call2)
  store %struct.obj* %call3, %struct.obj** %ht, align 8
  %cmp = icmp eq %struct.obj* %call3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.obj*, %struct.obj** %ht, align 8
  %3 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  %call4 = call %struct.obj* @href(%struct.obj* %2, %struct.obj* %3)
  store %struct.obj* %call4, %struct.obj** %index, align 8
  %4 = load %struct.obj*, %struct.obj** %index, align 8
  %cmp5 = icmp ne %struct.obj* %4, null
  br i1 %cmp5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call7 = call i32 @_IO_putc(i32 127, %struct._IO_FILE* %5)
  %6 = load %struct.obj*, %struct.obj** %index, align 8
  %call8 = call i64 @get_c_long(%struct.obj* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  call void @put_long(i64 %call8, %struct._IO_FILE* %7)
  store i64 0, i64* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %8 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %call10 = call %struct.obj* @cdr(%struct.obj* %8)
  %call11 = call %struct.obj* @cdr(%struct.obj* %call10)
  %call12 = call %struct.obj* @car(%struct.obj* %call11)
  store %struct.obj* %call12, %struct.obj** %index, align 8
  %cmp13 = icmp eq %struct.obj* %call12, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.9
  store i64 1, i64* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.9
  %9 = load %struct.obj*, %struct.obj** %ht, align 8
  %10 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  %11 = load %struct.obj*, %struct.obj** %index, align 8
  %call16 = call %struct.obj* @hset(%struct.obj* %9, %struct.obj* %10, %struct.obj* %11)
  %12 = load %struct.obj*, %struct.obj** @bashnum, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %12, i32 0, i32 2
  %flonum = bitcast %union.anon* %storage_as to %struct.anon.0*
  %data = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum, i32 0, i32 0
  store double 1.000000e+00, double* %data, align 8
  %13 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %call17 = call %struct.obj* @cdr(%struct.obj* %13)
  %call18 = call %struct.obj* @cdr(%struct.obj* %call17)
  %14 = load %struct.obj*, %struct.obj** %index, align 8
  %15 = load %struct.obj*, %struct.obj** @bashnum, align 8
  %call19 = call %struct.obj* @plus(%struct.obj* %14, %struct.obj* %15)
  %call20 = call %struct.obj* @setcar(%struct.obj* %call18, %struct.obj* %call19)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call21 = call i32 @_IO_putc(i32 126, %struct._IO_FILE* %16)
  %17 = load %struct.obj*, %struct.obj** %index, align 8
  %call22 = call i64 @get_c_long(%struct.obj* %17)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  call void @put_long(i64 %call22, %struct._IO_FILE* %18)
  store i64 1, i64* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.14, %if.then.6, %if.then
  %19 = load i64, i64* %retval
  ret i64 %19
}

declare %struct._IO_FILE* @get_c_file(%struct.obj*, %struct._IO_FILE*) #1

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

declare %struct.obj* @setcar(%struct.obj*, %struct.obj*) #1

declare %struct.obj* @plus(%struct.obj*, %struct.obj*) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @fast_print(%struct.obj* %obj, %struct.obj* %table) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %obj.addr = alloca %struct.obj*, align 8
  %table.addr = alloca %struct.obj*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %len = alloca i64, align 8
  %tmp = alloca %struct.obj*, align 8
  %p = alloca %struct.user_type_hooks*, align 8
  store %struct.obj* %obj, %struct.obj** %obj.addr, align 8
  store %struct.obj* %table, %struct.obj** %table.addr, align 8
  %0 = bitcast %struct.obj** %obj.addr to i8*
  %1 = load i8*, i8** @stack_limit_ptr, align 8
  %cmp = icmp ult i8* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.obj** %obj.addr to i8*
  call void @err_stack(i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %call = call %struct.obj* @car(%struct.obj* %3)
  %call2 = call %struct._IO_FILE* @get_c_file(%struct.obj* %call, %struct._IO_FILE* null)
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %f, align 8
  %4 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  %cmp3 = icmp eq %struct.obj* %4, null
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %5 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %5, i32 0, i32 1
  %6 = load i16, i16* %type, align 2
  %conv = sext i16 %6 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  switch i32 %cond, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.5
    i32 2, label %sw.bb.74
    i32 3, label %sw.bb.78
  ]

sw.bb:                                            ; preds = %cond.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call4 = call i32 @_IO_putc(i32 0, %struct._IO_FILE* %7)
  store %struct.obj* null, %struct.obj** %retval
  br label %return

sw.bb.5:                                          ; preds = %cond.end
  store i64 0, i64* %len, align 8
  %8 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  store %struct.obj* %8, %struct.obj** %tmp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.5
  %9 = load %struct.obj*, %struct.obj** %tmp, align 8
  %cmp6 = icmp eq %struct.obj* %9, null
  br i1 %cmp6, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %for.cond
  br label %cond.end.12

cond.false.9:                                     ; preds = %for.cond
  %10 = load %struct.obj*, %struct.obj** %tmp, align 8
  %type10 = getelementptr inbounds %struct.obj, %struct.obj* %10, i32 0, i32 1
  %11 = load i16, i16* %type10, align 2
  %conv11 = sext i16 %11 to i32
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.9, %cond.true.8
  %cond13 = phi i32 [ 0, %cond.true.8 ], [ %conv11, %cond.false.9 ]
  %cmp14 = icmp eq i32 %cond13, 1
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end.12
  %12 = load i64, i64* %len, align 8
  %inc = add nsw i64 %12, 1
  store i64 %inc, i64* %len, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %13, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 1
  %14 = load %struct.obj*, %struct.obj** %cdr, align 8
  store %struct.obj* %14, %struct.obj** %tmp, align 8
  br label %for.cond

for.end:                                          ; preds = %cond.end.12
  %15 = load i64, i64* %len, align 8
  %cmp16 = icmp eq i64 %15, 1
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %for.end
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call19 = call i32 @_IO_putc(i32 1, %struct._IO_FILE* %16)
  %17 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  %call20 = call %struct.obj* @car(%struct.obj* %17)
  %18 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %call21 = call %struct.obj* @fast_print(%struct.obj* %call20, %struct.obj* %18)
  %19 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  %call22 = call %struct.obj* @cdr(%struct.obj* %19)
  %20 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %call23 = call %struct.obj* @fast_print(%struct.obj* %call22, %struct.obj* %20)
  br label %if.end.73

if.else:                                          ; preds = %for.end
  %21 = load %struct.obj*, %struct.obj** %tmp, align 8
  %cmp24 = icmp eq %struct.obj* %21, null
  br i1 %cmp24, label %if.then.26, label %if.else.48

if.then.26:                                       ; preds = %if.else
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call27 = call i32 @_IO_putc(i32 125, %struct._IO_FILE* %22)
  %23 = load i64, i64* %len, align 8
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  call void @put_long(i64 %23, %struct._IO_FILE* %24)
  %25 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  store %struct.obj* %25, %struct.obj** %tmp, align 8
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.43, %if.then.26
  %26 = load %struct.obj*, %struct.obj** %tmp, align 8
  %cmp29 = icmp eq %struct.obj* %26, null
  br i1 %cmp29, label %cond.true.31, label %cond.false.32

cond.true.31:                                     ; preds = %for.cond.28
  br label %cond.end.35

cond.false.32:                                    ; preds = %for.cond.28
  %27 = load %struct.obj*, %struct.obj** %tmp, align 8
  %type33 = getelementptr inbounds %struct.obj, %struct.obj* %27, i32 0, i32 1
  %28 = load i16, i16* %type33, align 2
  %conv34 = sext i16 %28 to i32
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.32, %cond.true.31
  %cond36 = phi i32 [ 0, %cond.true.31 ], [ %conv34, %cond.false.32 ]
  %cmp37 = icmp eq i32 %cond36, 1
  br i1 %cmp37, label %for.body.39, label %for.end.47

for.body.39:                                      ; preds = %cond.end.35
  %29 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as40 = getelementptr inbounds %struct.obj, %struct.obj* %29, i32 0, i32 2
  %cons41 = bitcast %union.anon* %storage_as40 to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons41, i32 0, i32 0
  %30 = load %struct.obj*, %struct.obj** %car, align 8
  %31 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %call42 = call %struct.obj* @fast_print(%struct.obj* %30, %struct.obj* %31)
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.39
  %32 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as44 = getelementptr inbounds %struct.obj, %struct.obj* %32, i32 0, i32 2
  %cons45 = bitcast %union.anon* %storage_as44 to %struct.anon*
  %cdr46 = getelementptr inbounds %struct.anon, %struct.anon* %cons45, i32 0, i32 1
  %33 = load %struct.obj*, %struct.obj** %cdr46, align 8
  store %struct.obj* %33, %struct.obj** %tmp, align 8
  br label %for.cond.28

for.end.47:                                       ; preds = %cond.end.35
  br label %if.end.72

if.else.48:                                       ; preds = %if.else
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call49 = call i32 @_IO_putc(i32 124, %struct._IO_FILE* %34)
  %35 = load i64, i64* %len, align 8
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  call void @put_long(i64 %35, %struct._IO_FILE* %36)
  %37 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  store %struct.obj* %37, %struct.obj** %tmp, align 8
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.66, %if.else.48
  %38 = load %struct.obj*, %struct.obj** %tmp, align 8
  %cmp51 = icmp eq %struct.obj* %38, null
  br i1 %cmp51, label %cond.true.53, label %cond.false.54

cond.true.53:                                     ; preds = %for.cond.50
  br label %cond.end.57

cond.false.54:                                    ; preds = %for.cond.50
  %39 = load %struct.obj*, %struct.obj** %tmp, align 8
  %type55 = getelementptr inbounds %struct.obj, %struct.obj* %39, i32 0, i32 1
  %40 = load i16, i16* %type55, align 2
  %conv56 = sext i16 %40 to i32
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.54, %cond.true.53
  %cond58 = phi i32 [ 0, %cond.true.53 ], [ %conv56, %cond.false.54 ]
  %cmp59 = icmp eq i32 %cond58, 1
  br i1 %cmp59, label %for.body.61, label %for.end.70

for.body.61:                                      ; preds = %cond.end.57
  %41 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as62 = getelementptr inbounds %struct.obj, %struct.obj* %41, i32 0, i32 2
  %cons63 = bitcast %union.anon* %storage_as62 to %struct.anon*
  %car64 = getelementptr inbounds %struct.anon, %struct.anon* %cons63, i32 0, i32 0
  %42 = load %struct.obj*, %struct.obj** %car64, align 8
  %43 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %call65 = call %struct.obj* @fast_print(%struct.obj* %42, %struct.obj* %43)
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.body.61
  %44 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as67 = getelementptr inbounds %struct.obj, %struct.obj* %44, i32 0, i32 2
  %cons68 = bitcast %union.anon* %storage_as67 to %struct.anon*
  %cdr69 = getelementptr inbounds %struct.anon, %struct.anon* %cons68, i32 0, i32 1
  %45 = load %struct.obj*, %struct.obj** %cdr69, align 8
  store %struct.obj* %45, %struct.obj** %tmp, align 8
  br label %for.cond.50

for.end.70:                                       ; preds = %cond.end.57
  %46 = load %struct.obj*, %struct.obj** %tmp, align 8
  %47 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %call71 = call %struct.obj* @fast_print(%struct.obj* %46, %struct.obj* %47)
  br label %if.end.72

if.end.72:                                        ; preds = %for.end.70, %for.end.47
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.then.18
  store %struct.obj* null, %struct.obj** %retval
  br label %return

sw.bb.74:                                         ; preds = %cond.end
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call75 = call i32 @_IO_putc(i32 2, %struct._IO_FILE* %48)
  %49 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  %storage_as76 = getelementptr inbounds %struct.obj, %struct.obj* %49, i32 0, i32 2
  %flonum = bitcast %union.anon* %storage_as76 to %struct.anon.0*
  %data = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum, i32 0, i32 0
  %50 = bitcast double* %data to i8*
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call77 = call i64 @fwrite(i8* %50, i64 8, i64 1, %struct._IO_FILE* %51)
  store %struct.obj* null, %struct.obj** %retval
  br label %return

sw.bb.78:                                         ; preds = %cond.end
  %52 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  %53 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %call79 = call i64 @fast_print_table(%struct.obj* %52, %struct.obj* %53)
  %tobool = icmp ne i64 %call79, 0
  br i1 %tobool, label %if.then.80, label %if.else.93

if.then.80:                                       ; preds = %sw.bb.78
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call81 = call i32 @_IO_putc(i32 3, %struct._IO_FILE* %54)
  %55 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  %storage_as82 = getelementptr inbounds %struct.obj, %struct.obj* %55, i32 0, i32 2
  %symbol = bitcast %union.anon* %storage_as82 to %struct.anon.1*
  %pname = getelementptr inbounds %struct.anon.1, %struct.anon.1* %symbol, i32 0, i32 0
  %56 = load i8*, i8** %pname, align 8
  %call83 = call i64 @strlen(i8* %56) #6
  store i64 %call83, i64* %len, align 8
  %57 = load i64, i64* %len, align 8
  %cmp84 = icmp sge i64 %57, 5120
  br i1 %cmp84, label %if.then.86, label %if.end.88

if.then.86:                                       ; preds = %if.then.80
  %58 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  %call87 = call %struct.obj* @err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i32 0, i32 0), %struct.obj* %58)
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.86, %if.then.80
  %59 = load i64, i64* %len, align 8
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  call void @put_long(i64 %59, %struct._IO_FILE* %60)
  %61 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  %storage_as89 = getelementptr inbounds %struct.obj, %struct.obj* %61, i32 0, i32 2
  %symbol90 = bitcast %union.anon* %storage_as89 to %struct.anon.1*
  %pname91 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %symbol90, i32 0, i32 0
  %62 = load i8*, i8** %pname91, align 8
  %63 = load i64, i64* %len, align 8
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call92 = call i64 @fwrite(i8* %62, i64 %63, i64 1, %struct._IO_FILE* %64)
  %65 = load %struct.obj*, %struct.obj** @sym_t, align 8
  store %struct.obj* %65, %struct.obj** %retval
  br label %return

if.else.93:                                       ; preds = %sw.bb.78
  store %struct.obj* null, %struct.obj** %retval
  br label %return

sw.default:                                       ; preds = %cond.end
  %66 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  %cmp94 = icmp eq %struct.obj* %66, null
  br i1 %cmp94, label %cond.true.96, label %cond.false.97

cond.true.96:                                     ; preds = %sw.default
  br label %cond.end.100

cond.false.97:                                    ; preds = %sw.default
  %67 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  %type98 = getelementptr inbounds %struct.obj, %struct.obj* %67, i32 0, i32 1
  %68 = load i16, i16* %type98, align 2
  %conv99 = sext i16 %68 to i32
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.97, %cond.true.96
  %cond101 = phi i32 [ 0, %cond.true.96 ], [ %conv99, %cond.false.97 ]
  %conv102 = sext i32 %cond101 to i64
  %call103 = call %struct.user_type_hooks* @get_user_type_hooks(i64 %conv102)
  store %struct.user_type_hooks* %call103, %struct.user_type_hooks** %p, align 8
  %69 = load %struct.user_type_hooks*, %struct.user_type_hooks** %p, align 8
  %fast_print = getelementptr inbounds %struct.user_type_hooks, %struct.user_type_hooks* %69, i32 0, i32 7
  %70 = load %struct.obj* (%struct.obj*, %struct.obj*)*, %struct.obj* (%struct.obj*, %struct.obj*)** %fast_print, align 8
  %tobool104 = icmp ne %struct.obj* (%struct.obj*, %struct.obj*)* %70, null
  br i1 %tobool104, label %if.then.105, label %if.else.108

if.then.105:                                      ; preds = %cond.end.100
  %71 = load %struct.user_type_hooks*, %struct.user_type_hooks** %p, align 8
  %fast_print106 = getelementptr inbounds %struct.user_type_hooks, %struct.user_type_hooks* %71, i32 0, i32 7
  %72 = load %struct.obj* (%struct.obj*, %struct.obj*)*, %struct.obj* (%struct.obj*, %struct.obj*)** %fast_print106, align 8
  %73 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  %74 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %call107 = call %struct.obj* %72(%struct.obj* %73, %struct.obj* %74)
  store %struct.obj* %call107, %struct.obj** %retval
  br label %return

if.else.108:                                      ; preds = %cond.end.100
  %75 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  %call109 = call %struct.obj* @err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i32 0, i32 0), %struct.obj* %75)
  store %struct.obj* %call109, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else.108, %if.then.105, %if.else.93, %if.end.88, %sw.bb.74, %if.end.73, %sw.bb
  %76 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %76
}

; Function Attrs: nounwind uwtable
define %struct.obj* @fast_read(%struct.obj* %table) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %table.addr = alloca %struct.obj*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %tmp = alloca %struct.obj*, align 8
  %l = alloca %struct.obj*, align 8
  %p = alloca %struct.user_type_hooks*, align 8
  %c = alloca i32, align 4
  %len = alloca i64, align 8
  store %struct.obj* %table, %struct.obj** %table.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %call = call %struct.obj* @car(%struct.obj* %0)
  %call5 = call %struct._IO_FILE* @get_c_file(%struct.obj* %call, %struct._IO_FILE* null)
  store %struct._IO_FILE* %call5, %struct._IO_FILE** %f, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call6 = call i32 @_IO_getc(%struct._IO_FILE* %1)
  store i32 %call6, i32* %c, align 4
  %2 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.obj*, %struct.obj** %table.addr, align 8
  store %struct.obj* %3, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %c, align 4
  switch i32 %4, label %sw.default [
    i32 35, label %sw.bb
    i32 127, label %sw.bb.11
    i32 126, label %sw.bb.16
    i32 0, label %sw.bb.24
    i32 1, label %sw.bb.25
    i32 125, label %sw.bb.29
    i32 124, label %sw.bb.29
    i32 2, label %sw.bb.57
    i32 3, label %sw.bb.63
  ]

sw.bb:                                            ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %sw.bb
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call7 = call i32 @_IO_getc(%struct._IO_FILE* %5)
  store i32 %call7, i32* %c, align 4
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %c, align 4
  switch i32 %6, label %sw.epilog [
    i32 -1, label %sw.bb.8
    i32 10, label %sw.bb.9
  ]

sw.bb.8:                                          ; preds = %while.body
  %7 = load %struct.obj*, %struct.obj** %table.addr, align 8
  store %struct.obj* %7, %struct.obj** %retval
  br label %return

sw.bb.9:                                          ; preds = %while.body
  %8 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %call10 = call %struct.obj* @fast_read(%struct.obj* %8)
  store %struct.obj* %call10, %struct.obj** %retval
  br label %return

sw.epilog:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %sw.bb.11

sw.bb.11:                                         ; preds = %if.end, %while.end
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call12 = call i64 @get_long(%struct._IO_FILE* %9)
  store i64 %call12, i64* %len, align 8
  %10 = load i64, i64* %len, align 8
  %conv = sitofp i64 %10 to double
  %11 = load %struct.obj*, %struct.obj** @bashnum, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %11, i32 0, i32 2
  %flonum = bitcast %union.anon* %storage_as to %struct.anon.0*
  %data = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum, i32 0, i32 0
  store double %conv, double* %data, align 8
  %12 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %call13 = call %struct.obj* @cdr(%struct.obj* %12)
  %call14 = call %struct.obj* @car(%struct.obj* %call13)
  %13 = load %struct.obj*, %struct.obj** @bashnum, align 8
  %call15 = call %struct.obj* @href(%struct.obj* %call14, %struct.obj* %13)
  store %struct.obj* %call15, %struct.obj** %retval
  br label %return

sw.bb.16:                                         ; preds = %if.end
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call17 = call i64 @get_long(%struct._IO_FILE* %14)
  store i64 %call17, i64* %len, align 8
  %15 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %call18 = call %struct.obj* @fast_read(%struct.obj* %15)
  store %struct.obj* %call18, %struct.obj** %tmp, align 8
  %16 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %call19 = call %struct.obj* @cdr(%struct.obj* %16)
  %call20 = call %struct.obj* @car(%struct.obj* %call19)
  %17 = load i64, i64* %len, align 8
  %conv21 = sitofp i64 %17 to double
  %call22 = call %struct.obj* @flocons(double %conv21)
  %18 = load %struct.obj*, %struct.obj** %tmp, align 8
  %call23 = call %struct.obj* @hset(%struct.obj* %call20, %struct.obj* %call22, %struct.obj* %18)
  %19 = load %struct.obj*, %struct.obj** %tmp, align 8
  store %struct.obj* %19, %struct.obj** %retval
  br label %return

sw.bb.24:                                         ; preds = %if.end
  store %struct.obj* null, %struct.obj** %retval
  br label %return

sw.bb.25:                                         ; preds = %if.end
  %20 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %call26 = call %struct.obj* @fast_read(%struct.obj* %20)
  store %struct.obj* %call26, %struct.obj** %tmp, align 8
  %21 = load %struct.obj*, %struct.obj** %tmp, align 8
  %22 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %call27 = call %struct.obj* @fast_read(%struct.obj* %22)
  %call28 = call %struct.obj* @cons(%struct.obj* %21, %struct.obj* %call27)
  store %struct.obj* %call28, %struct.obj** %retval
  br label %return

sw.bb.29:                                         ; preds = %if.end, %if.end
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call30 = call i64 @get_long(%struct._IO_FILE* %23)
  store i64 %call30, i64* %len, align 8
  %24 = load i64, i64* %len, align 8
  %conv31 = sitofp i64 %24 to double
  %25 = load %struct.obj*, %struct.obj** @bashnum, align 8
  %storage_as32 = getelementptr inbounds %struct.obj, %struct.obj* %25, i32 0, i32 2
  %flonum33 = bitcast %union.anon* %storage_as32 to %struct.anon.0*
  %data34 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum33, i32 0, i32 0
  store double %conv31, double* %data34, align 8
  %26 = load %struct.obj*, %struct.obj** @bashnum, align 8
  %call35 = call %struct.obj* @make_list(%struct.obj* %26, %struct.obj* null)
  store %struct.obj* %call35, %struct.obj** %l, align 8
  %27 = load %struct.obj*, %struct.obj** %l, align 8
  store %struct.obj* %27, %struct.obj** %tmp, align 8
  br label %while.cond.36

while.cond.36:                                    ; preds = %while.body.39, %sw.bb.29
  %28 = load i64, i64* %len, align 8
  %cmp37 = icmp sgt i64 %28, 1
  br i1 %cmp37, label %while.body.39, label %while.end.44

while.body.39:                                    ; preds = %while.cond.36
  %29 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %call40 = call %struct.obj* @fast_read(%struct.obj* %29)
  %30 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as41 = getelementptr inbounds %struct.obj, %struct.obj* %30, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as41 to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 0
  store %struct.obj* %call40, %struct.obj** %car, align 8
  %31 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as42 = getelementptr inbounds %struct.obj, %struct.obj* %31, i32 0, i32 2
  %cons43 = bitcast %union.anon* %storage_as42 to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons43, i32 0, i32 1
  %32 = load %struct.obj*, %struct.obj** %cdr, align 8
  store %struct.obj* %32, %struct.obj** %tmp, align 8
  %33 = load i64, i64* %len, align 8
  %dec = add nsw i64 %33, -1
  store i64 %dec, i64* %len, align 8
  br label %while.cond.36

while.end.44:                                     ; preds = %while.cond.36
  %34 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %call45 = call %struct.obj* @fast_read(%struct.obj* %34)
  %35 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as46 = getelementptr inbounds %struct.obj, %struct.obj* %35, i32 0, i32 2
  %cons47 = bitcast %union.anon* %storage_as46 to %struct.anon*
  %car48 = getelementptr inbounds %struct.anon, %struct.anon* %cons47, i32 0, i32 0
  store %struct.obj* %call45, %struct.obj** %car48, align 8
  %36 = load i32, i32* %c, align 4
  %cmp49 = icmp eq i32 %36, 124
  br i1 %cmp49, label %if.then.51, label %if.end.56

if.then.51:                                       ; preds = %while.end.44
  %37 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %call52 = call %struct.obj* @fast_read(%struct.obj* %37)
  %38 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as53 = getelementptr inbounds %struct.obj, %struct.obj* %38, i32 0, i32 2
  %cons54 = bitcast %union.anon* %storage_as53 to %struct.anon*
  %cdr55 = getelementptr inbounds %struct.anon, %struct.anon* %cons54, i32 0, i32 1
  store %struct.obj* %call52, %struct.obj** %cdr55, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.51, %while.end.44
  %39 = load %struct.obj*, %struct.obj** %l, align 8
  store %struct.obj* %39, %struct.obj** %retval
  br label %return

sw.bb.57:                                         ; preds = %if.end
  %call58 = call %struct.obj* @newcell(i64 2)
  store %struct.obj* %call58, %struct.obj** %tmp, align 8
  %40 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as59 = getelementptr inbounds %struct.obj, %struct.obj* %40, i32 0, i32 2
  %flonum60 = bitcast %union.anon* %storage_as59 to %struct.anon.0*
  %data61 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum60, i32 0, i32 0
  %41 = bitcast double* %data61 to i8*
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call62 = call i64 @fread(i8* %41, i64 8, i64 1, %struct._IO_FILE* %42)
  %43 = load %struct.obj*, %struct.obj** %tmp, align 8
  store %struct.obj* %43, %struct.obj** %retval
  br label %return

sw.bb.63:                                         ; preds = %if.end
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call64 = call i64 @get_long(%struct._IO_FILE* %44)
  store i64 %call64, i64* %len, align 8
  %45 = load i64, i64* %len, align 8
  %cmp65 = icmp sge i64 %45, 5120
  br i1 %cmp65, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %sw.bb.63
  %call68 = call %struct.obj* @err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i32 0, i32 0), %struct.obj* null)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %sw.bb.63
  %46 = load i8*, i8** @tkbuffer, align 8
  %47 = load i64, i64* %len, align 8
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call70 = call i64 @fread(i8* %46, i64 %47, i64 1, %struct._IO_FILE* %48)
  %49 = load i64, i64* %len, align 8
  %50 = load i8*, i8** @tkbuffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %50, i64 %49
  store i8 0, i8* %arrayidx, align 1
  %51 = load i8*, i8** @tkbuffer, align 8
  %call71 = call %struct.obj* @rintern(i8* %51)
  store %struct.obj* %call71, %struct.obj** %retval
  br label %return

sw.default:                                       ; preds = %if.end
  %52 = load i32, i32* %c, align 4
  %conv72 = sext i32 %52 to i64
  %call73 = call %struct.user_type_hooks* @get_user_type_hooks(i64 %conv72)
  store %struct.user_type_hooks* %call73, %struct.user_type_hooks** %p, align 8
  %53 = load %struct.user_type_hooks*, %struct.user_type_hooks** %p, align 8
  %fast_read = getelementptr inbounds %struct.user_type_hooks, %struct.user_type_hooks* %53, i32 0, i32 8
  %54 = load %struct.obj* (i32, %struct.obj*)*, %struct.obj* (i32, %struct.obj*)** %fast_read, align 8
  %tobool74 = icmp ne %struct.obj* (i32, %struct.obj*)* %54, null
  br i1 %tobool74, label %if.then.75, label %if.else

if.then.75:                                       ; preds = %sw.default
  %55 = load %struct.user_type_hooks*, %struct.user_type_hooks** %p, align 8
  %fast_read76 = getelementptr inbounds %struct.user_type_hooks, %struct.user_type_hooks* %55, i32 0, i32 8
  %56 = load %struct.obj* (i32, %struct.obj*)*, %struct.obj* (i32, %struct.obj*)** %fast_read76, align 8
  %57 = load i32, i32* %c, align 4
  %58 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %call77 = call %struct.obj* %56(i32 %57, %struct.obj* %58)
  store %struct.obj* %call77, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %sw.default
  %59 = load i32, i32* %c, align 4
  %conv78 = sitofp i32 %59 to double
  %call79 = call %struct.obj* @flocons(double %conv78)
  %call80 = call %struct.obj* @err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.43, i32 0, i32 0), %struct.obj* %call79)
  store %struct.obj* %call80, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.75, %if.end.69, %sw.bb.57, %if.end.56, %sw.bb.25, %sw.bb.24, %sw.bb.16, %sw.bb.11, %sw.bb.9, %sw.bb.8, %if.then
  %60 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %60
}

declare i32 @_IO_getc(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @make_list(%struct.obj* %x, %struct.obj* %v) #0 {
entry:
  %x.addr = alloca %struct.obj*, align 8
  %v.addr = alloca %struct.obj*, align 8
  %n = alloca i64, align 8
  %l = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  store %struct.obj* %v, %struct.obj** %v.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call i64 @get_c_long(%struct.obj* %0)
  store i64 %call, i64* %n, align 8
  store %struct.obj* null, %struct.obj** %l, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64, i64* %n, align 8
  %cmp = icmp sgt i64 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.obj*, %struct.obj** %v.addr, align 8
  %3 = load %struct.obj*, %struct.obj** %l, align 8
  %call1 = call %struct.obj* @cons(%struct.obj* %2, %struct.obj* %3)
  store %struct.obj* %call1, %struct.obj** %l, align 8
  %4 = load i64, i64* %n, align 8
  %dec = add nsw i64 %4, -1
  store i64 %dec, i64* %n, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load %struct.obj*, %struct.obj** %l, align 8
  ret %struct.obj* %5
}

declare %struct.obj* @rintern(i8*) #1

; Function Attrs: nounwind uwtable
define double @get_c_double(%struct.obj* %x) #0 {
entry:
  %x.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp ne i32 %cond, 2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i32 0, i32 0), %struct.obj* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %4 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 2
  %flonum = bitcast %union.anon* %storage_as to %struct.anon.0*
  %data = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum, i32 0, i32 0
  %5 = load double, double* %data, align 8
  ret double %5
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lfread(%struct.obj* %size, %struct.obj* %file) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %size.addr = alloca %struct.obj*, align 8
  %file.addr = alloca %struct.obj*, align 8
  %flag = alloca i64, align 8
  %n = alloca i64, align 8
  %ret = alloca i64, align 8
  %m = alloca i64, align 8
  %buffer = alloca i8*, align 8
  %s = alloca %struct.obj*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  store %struct.obj* %size, %struct.obj** %size.addr, align 8
  store %struct.obj* %file, %struct.obj** %file.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %file.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call = call %struct._IO_FILE* @get_c_file(%struct.obj* %0, %struct._IO_FILE* %1)
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %call1 = call i64 @no_interrupt(i64 1)
  store i64 %call1, i64* %flag, align 8
  %2 = load %struct.obj*, %struct.obj** %size.addr, align 8
  %cmp = icmp eq %struct.obj* %2, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct.obj*, %struct.obj** %size.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %3, i32 0, i32 1
  %4 = load i16, i16* %type, align 2
  %conv = sext i16 %4 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  switch i32 %cond, label %sw.default [
    i32 13, label %sw.bb
    i32 18, label %sw.bb
  ]

sw.bb:                                            ; preds = %cond.end, %cond.end
  %5 = load %struct.obj*, %struct.obj** %size.addr, align 8
  store %struct.obj* %5, %struct.obj** %s, align 8
  %6 = load %struct.obj*, %struct.obj** %s, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %6, i32 0, i32 2
  %string = bitcast %union.anon* %storage_as to %struct.anon.13*
  %data = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string, i32 0, i32 1
  %7 = load i8*, i8** %data, align 8
  store i8* %7, i8** %buffer, align 8
  %8 = load %struct.obj*, %struct.obj** %s, align 8
  %storage_as2 = getelementptr inbounds %struct.obj, %struct.obj* %8, i32 0, i32 2
  %string3 = bitcast %union.anon* %storage_as2 to %struct.anon.13*
  %dim = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string3, i32 0, i32 0
  %9 = load i64, i64* %dim, align 8
  store i64 %9, i64* %n, align 8
  store i64 0, i64* %m, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  %10 = load %struct.obj*, %struct.obj** %size.addr, align 8
  %call4 = call i64 @get_c_long(%struct.obj* %10)
  store i64 %call4, i64* %n, align 8
  %11 = load i64, i64* %n, align 8
  %add = add nsw i64 %11, 1
  %call5 = call i8* @must_malloc(i64 %add)
  store i8* %call5, i8** %buffer, align 8
  %12 = load i64, i64* %n, align 8
  %13 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %12
  store i8 0, i8* %arrayidx, align 1
  store i64 1, i64* %m, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %14 = load i8*, i8** %buffer, align 8
  %15 = load i64, i64* %n, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call6 = call i64 @fread(i8* %14, i64 1, i64 %15, %struct._IO_FILE* %16)
  store i64 %call6, i64* %ret, align 8
  %17 = load i64, i64* %ret, align 8
  %cmp7 = icmp eq i64 %17, 0
  br i1 %cmp7, label %if.then, label %if.end.11

if.then:                                          ; preds = %sw.epilog
  %18 = load i64, i64* %m, align 8
  %tobool = icmp ne i64 %18, 0
  br i1 %tobool, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %19 = load i8*, i8** %buffer, align 8
  call void @free(i8* %19) #2
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  %20 = load i64, i64* %flag, align 8
  %call10 = call i64 @no_interrupt(i64 %20)
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end.11:                                        ; preds = %sw.epilog
  %21 = load i64, i64* %m, align 8
  %tobool12 = icmp ne i64 %21, 0
  br i1 %tobool12, label %if.then.13, label %if.end.31

if.then.13:                                       ; preds = %if.end.11
  %22 = load i64, i64* %ret, align 8
  %23 = load i64, i64* %n, align 8
  %cmp14 = icmp eq i64 %22, %23
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.then.13
  %call17 = call %struct.obj* @cons(%struct.obj* null, %struct.obj* null)
  store %struct.obj* %call17, %struct.obj** %s, align 8
  %24 = load %struct.obj*, %struct.obj** %s, align 8
  %type18 = getelementptr inbounds %struct.obj, %struct.obj* %24, i32 0, i32 1
  store i16 13, i16* %type18, align 2
  %25 = load i8*, i8** %buffer, align 8
  %26 = load %struct.obj*, %struct.obj** %s, align 8
  %storage_as19 = getelementptr inbounds %struct.obj, %struct.obj* %26, i32 0, i32 2
  %string20 = bitcast %union.anon* %storage_as19 to %struct.anon.13*
  %data21 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string20, i32 0, i32 1
  store i8* %25, i8** %data21, align 8
  %27 = load i64, i64* %n, align 8
  %28 = load %struct.obj*, %struct.obj** %s, align 8
  %storage_as22 = getelementptr inbounds %struct.obj, %struct.obj* %28, i32 0, i32 2
  %string23 = bitcast %union.anon* %storage_as22 to %struct.anon.13*
  %dim24 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string23, i32 0, i32 0
  store i64 %27, i64* %dim24, align 8
  br label %if.end.29

if.else:                                          ; preds = %if.then.13
  %29 = load i64, i64* %ret, align 8
  %call25 = call %struct.obj* @strcons(i64 %29, i8* null)
  store %struct.obj* %call25, %struct.obj** %s, align 8
  %30 = load %struct.obj*, %struct.obj** %s, align 8
  %storage_as26 = getelementptr inbounds %struct.obj, %struct.obj* %30, i32 0, i32 2
  %string27 = bitcast %union.anon* %storage_as26 to %struct.anon.13*
  %data28 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string27, i32 0, i32 1
  %31 = load i8*, i8** %data28, align 8
  %32 = load i8*, i8** %buffer, align 8
  %33 = load i64, i64* %ret, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 %33, i32 1, i1 false)
  %34 = load i8*, i8** %buffer, align 8
  call void @free(i8* %34) #2
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.16
  %35 = load i64, i64* %flag, align 8
  %call30 = call i64 @no_interrupt(i64 %35)
  %36 = load %struct.obj*, %struct.obj** %s, align 8
  store %struct.obj* %36, %struct.obj** %retval
  br label %return

if.end.31:                                        ; preds = %if.end.11
  %37 = load i64, i64* %flag, align 8
  %call32 = call i64 @no_interrupt(i64 %37)
  %38 = load i64, i64* %ret, align 8
  %conv33 = sitofp i64 %38 to double
  %call34 = call %struct.obj* @flocons(double %conv33)
  store %struct.obj* %call34, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.end.29, %if.end
  %39 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %39
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lfwrite(%struct.obj* %string, %struct.obj* %file) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %string.addr = alloca %struct.obj*, align 8
  %file.addr = alloca %struct.obj*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %flag = alloca i64, align 8
  %data = alloca i8*, align 8
  %dim = alloca i64, align 8
  %len = alloca i64, align 8
  store %struct.obj* %string, %struct.obj** %string.addr, align 8
  store %struct.obj* %file, %struct.obj** %file.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %file.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call %struct._IO_FILE* @get_c_file(%struct.obj* %0, %struct._IO_FILE* %1)
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %2 = load %struct.obj*, %struct.obj** %string.addr, align 8
  %cmp = icmp eq %struct.obj* %2, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct.obj*, %struct.obj** %string.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %3, i32 0, i32 1
  %4 = load i16, i16* %type, align 2
  %conv = sext i16 %4 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp eq i32 %cond, 1
  br i1 %cmp1, label %cond.true.3, label %cond.false.5

cond.true.3:                                      ; preds = %cond.end
  %5 = load %struct.obj*, %struct.obj** %string.addr, align 8
  %call4 = call %struct.obj* @car(%struct.obj* %5)
  br label %cond.end.6

cond.false.5:                                     ; preds = %cond.end
  %6 = load %struct.obj*, %struct.obj** %string.addr, align 8
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.false.5, %cond.true.3
  %cond7 = phi %struct.obj* [ %call4, %cond.true.3 ], [ %6, %cond.false.5 ]
  %call8 = call i8* @get_c_string_dim(%struct.obj* %cond7, i64* %dim)
  store i8* %call8, i8** %data, align 8
  %7 = load %struct.obj*, %struct.obj** %string.addr, align 8
  %cmp9 = icmp eq %struct.obj* %7, null
  br i1 %cmp9, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %cond.end.6
  br label %cond.end.15

cond.false.12:                                    ; preds = %cond.end.6
  %8 = load %struct.obj*, %struct.obj** %string.addr, align 8
  %type13 = getelementptr inbounds %struct.obj, %struct.obj* %8, i32 0, i32 1
  %9 = load i16, i16* %type13, align 2
  %conv14 = sext i16 %9 to i32
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.12, %cond.true.11
  %cond16 = phi i32 [ 0, %cond.true.11 ], [ %conv14, %cond.false.12 ]
  %cmp17 = icmp eq i32 %cond16, 1
  br i1 %cmp17, label %cond.true.19, label %cond.false.22

cond.true.19:                                     ; preds = %cond.end.15
  %10 = load %struct.obj*, %struct.obj** %string.addr, align 8
  %call20 = call %struct.obj* @cadr(%struct.obj* %10)
  %call21 = call i64 @get_c_long(%struct.obj* %call20)
  br label %cond.end.23

cond.false.22:                                    ; preds = %cond.end.15
  %11 = load i64, i64* %dim, align 8
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.19
  %cond24 = phi i64 [ %call21, %cond.true.19 ], [ %11, %cond.false.22 ]
  store i64 %cond24, i64* %len, align 8
  %12 = load i64, i64* %len, align 8
  %cmp25 = icmp sle i64 %12, 0
  br i1 %cmp25, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.23
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %cond.end.23
  %13 = load i64, i64* %len, align 8
  %14 = load i64, i64* %dim, align 8
  %cmp27 = icmp sgt i64 %13, %14
  br i1 %cmp27, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.end
  %15 = load %struct.obj*, %struct.obj** %string.addr, align 8
  %call30 = call %struct.obj* @err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.45, i32 0, i32 0), %struct.obj* %15)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %if.end
  %call32 = call i64 @no_interrupt(i64 1)
  store i64 %call32, i64* %flag, align 8
  %16 = load i8*, i8** %data, align 8
  %17 = load i64, i64* %len, align 8
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call33 = call i64 @fwrite(i8* %16, i64 1, i64 %17, %struct._IO_FILE* %18)
  %19 = load i64, i64* %flag, align 8
  %call34 = call i64 @no_interrupt(i64 %19)
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.then
  %20 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %20
}

declare %struct.obj* @cadr(%struct.obj*) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @lfflush(%struct.obj* %file) #0 {
entry:
  %file.addr = alloca %struct.obj*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %flag = alloca i64, align 8
  store %struct.obj* %file, %struct.obj** %file.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %file.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call %struct._IO_FILE* @get_c_file(%struct.obj* %0, %struct._IO_FILE* %1)
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %call1 = call i64 @no_interrupt(i64 1)
  store i64 %call1, i64* %flag, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* %2)
  %3 = load i64, i64* %flag, align 8
  %call3 = call i64 @no_interrupt(i64 %3)
  ret %struct.obj* null
}

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @string_length(%struct.obj* %string) #0 {
entry:
  %string.addr = alloca %struct.obj*, align 8
  store %struct.obj* %string, %struct.obj** %string.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %string.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %string.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp ne i32 %cond, 13
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %string.addr, align 8
  %call = call %struct.obj* @err_wta_str(%struct.obj* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %4 = load %struct.obj*, %struct.obj** %string.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 2
  %string3 = bitcast %union.anon* %storage_as to %struct.anon.13*
  %data = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string3, i32 0, i32 1
  %5 = load i8*, i8** %data, align 8
  %call4 = call i64 @strlen(i8* %5) #6
  %conv5 = uitofp i64 %call4 to double
  %call6 = call %struct.obj* @flocons(double %conv5)
  ret %struct.obj* %call6
}

; Function Attrs: nounwind uwtable
define %struct.obj* @string_dim(%struct.obj* %string) #0 {
entry:
  %string.addr = alloca %struct.obj*, align 8
  store %struct.obj* %string, %struct.obj** %string.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %string.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %string.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp ne i32 %cond, 13
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %string.addr, align 8
  %call = call %struct.obj* @err_wta_str(%struct.obj* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %4 = load %struct.obj*, %struct.obj** %string.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 2
  %string3 = bitcast %union.anon* %storage_as to %struct.anon.13*
  %dim = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string3, i32 0, i32 0
  %5 = load i64, i64* %dim, align 8
  %conv4 = sitofp i64 %5 to double
  %call5 = call %struct.obj* @flocons(double %conv4)
  ret %struct.obj* %call5
}

; Function Attrs: nounwind uwtable
define %struct.obj* @llength(%struct.obj* %obj) #0 {
entry:
  %obj.addr = alloca %struct.obj*, align 8
  store %struct.obj* %obj, %struct.obj** %obj.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  %call = call i64 @nlength(%struct.obj* %0)
  %conv = sitofp i64 %call to double
  %call1 = call %struct.obj* @flocons(double %conv)
  ret %struct.obj* %call1
}

; Function Attrs: nounwind uwtable
define %struct.obj* @number2string(%struct.obj* %x, %struct.obj* %b, %struct.obj* %w, %struct.obj* %p) #0 {
entry:
  %x.addr = alloca %struct.obj*, align 8
  %b.addr = alloca %struct.obj*, align 8
  %w.addr = alloca %struct.obj*, align 8
  %p.addr = alloca %struct.obj*, align 8
  %buffer = alloca [1000 x i8], align 16
  %y = alloca double, align 8
  %base = alloca i64, align 8
  %width = alloca i64, align 8
  %prec = alloca i64, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  store %struct.obj* %b, %struct.obj** %b.addr, align 8
  store %struct.obj* %w, %struct.obj** %w.addr, align 8
  store %struct.obj* %p, %struct.obj** %p.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp ne i32 %cond, 2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i32 0, i32 0), %struct.obj* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %4 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 2
  %flonum = bitcast %union.anon* %storage_as to %struct.anon.0*
  %data = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum, i32 0, i32 0
  %5 = load double, double* %data, align 8
  store double %5, double* %y, align 8
  %6 = load %struct.obj*, %struct.obj** %w.addr, align 8
  %cmp3 = icmp ne %struct.obj* %6, null
  br i1 %cmp3, label %cond.true.5, label %cond.false.7

cond.true.5:                                      ; preds = %if.end
  %7 = load %struct.obj*, %struct.obj** %w.addr, align 8
  %call6 = call i64 @get_c_long(%struct.obj* %7)
  br label %cond.end.8

cond.false.7:                                     ; preds = %if.end
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.7, %cond.true.5
  %cond9 = phi i64 [ %call6, %cond.true.5 ], [ -1, %cond.false.7 ]
  store i64 %cond9, i64* %width, align 8
  %8 = load i64, i64* %width, align 8
  %cmp10 = icmp sgt i64 %8, 100
  br i1 %cmp10, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %cond.end.8
  %9 = load %struct.obj*, %struct.obj** %w.addr, align 8
  %call13 = call %struct.obj* @err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0), %struct.obj* %9)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %cond.end.8
  %10 = load %struct.obj*, %struct.obj** %p.addr, align 8
  %cmp15 = icmp ne %struct.obj* %10, null
  br i1 %cmp15, label %cond.true.17, label %cond.false.19

cond.true.17:                                     ; preds = %if.end.14
  %11 = load %struct.obj*, %struct.obj** %p.addr, align 8
  %call18 = call i64 @get_c_long(%struct.obj* %11)
  br label %cond.end.20

cond.false.19:                                    ; preds = %if.end.14
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.19, %cond.true.17
  %cond21 = phi i64 [ %call18, %cond.true.17 ], [ -1, %cond.false.19 ]
  store i64 %cond21, i64* %prec, align 8
  %12 = load i64, i64* %prec, align 8
  %cmp22 = icmp sgt i64 %12, 100
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %cond.end.20
  %13 = load %struct.obj*, %struct.obj** %p.addr, align 8
  %call25 = call %struct.obj* @err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.50, i32 0, i32 0), %struct.obj* %13)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %cond.end.20
  %14 = load %struct.obj*, %struct.obj** %b.addr, align 8
  %cmp27 = icmp eq %struct.obj* %14, null
  br i1 %cmp27, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.26
  %15 = load %struct.obj*, %struct.obj** @sym_e, align 8
  %16 = load %struct.obj*, %struct.obj** %b.addr, align 8
  %cmp29 = icmp eq %struct.obj* %15, %16
  br i1 %cmp29, label %if.then.34, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %lor.lhs.false
  %17 = load %struct.obj*, %struct.obj** @sym_f, align 8
  %18 = load %struct.obj*, %struct.obj** %b.addr, align 8
  %cmp32 = icmp eq %struct.obj* %17, %18
  br i1 %cmp32, label %if.then.34, label %if.else.94

if.then.34:                                       ; preds = %lor.lhs.false.31, %lor.lhs.false, %if.end.26
  %19 = load i64, i64* %width, align 8
  %cmp35 = icmp sge i64 %19, 0
  br i1 %cmp35, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.34
  %20 = load i64, i64* %prec, align 8
  %cmp37 = icmp sge i64 %20, 0
  br i1 %cmp37, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %land.lhs.true
  %arraydecay = getelementptr inbounds [1000 x i8], [1000 x i8]* %buffer, i32 0, i32 0
  %21 = load %struct.obj*, %struct.obj** %b.addr, align 8
  %cmp40 = icmp eq %struct.obj* %21, null
  br i1 %cmp40, label %cond.true.42, label %cond.false.43

cond.true.42:                                     ; preds = %if.then.39
  br label %cond.end.47

cond.false.43:                                    ; preds = %if.then.39
  %22 = load %struct.obj*, %struct.obj** @sym_e, align 8
  %23 = load %struct.obj*, %struct.obj** %b.addr, align 8
  %cmp44 = icmp eq %struct.obj* %22, %23
  %cond46 = select i1 %cmp44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0)
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.43, %cond.true.42
  %cond48 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), %cond.true.42 ], [ %cond46, %cond.false.43 ]
  %24 = load i64, i64* %width, align 8
  %25 = load i64, i64* %prec, align 8
  %26 = load double, double* %y, align 8
  %call49 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* %cond48, i64 %24, i64 %25, double %26) #2
  br label %if.end.93

if.else:                                          ; preds = %land.lhs.true, %if.then.34
  %27 = load i64, i64* %width, align 8
  %cmp50 = icmp sge i64 %27, 0
  br i1 %cmp50, label %if.then.52, label %if.else.64

if.then.52:                                       ; preds = %if.else
  %arraydecay53 = getelementptr inbounds [1000 x i8], [1000 x i8]* %buffer, i32 0, i32 0
  %28 = load %struct.obj*, %struct.obj** %b.addr, align 8
  %cmp54 = icmp eq %struct.obj* %28, null
  br i1 %cmp54, label %cond.true.56, label %cond.false.57

cond.true.56:                                     ; preds = %if.then.52
  br label %cond.end.61

cond.false.57:                                    ; preds = %if.then.52
  %29 = load %struct.obj*, %struct.obj** @sym_e, align 8
  %30 = load %struct.obj*, %struct.obj** %b.addr, align 8
  %cmp58 = icmp eq %struct.obj* %29, %30
  %cond60 = select i1 %cmp58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0)
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.57, %cond.true.56
  %cond62 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), %cond.true.56 ], [ %cond60, %cond.false.57 ]
  %31 = load i64, i64* %width, align 8
  %32 = load double, double* %y, align 8
  %call63 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay53, i8* %cond62, i64 %31, double %32) #2
  br label %if.end.92

if.else.64:                                       ; preds = %if.else
  %33 = load i64, i64* %prec, align 8
  %cmp65 = icmp sge i64 %33, 0
  br i1 %cmp65, label %if.then.67, label %if.else.79

if.then.67:                                       ; preds = %if.else.64
  %arraydecay68 = getelementptr inbounds [1000 x i8], [1000 x i8]* %buffer, i32 0, i32 0
  %34 = load %struct.obj*, %struct.obj** %b.addr, align 8
  %cmp69 = icmp eq %struct.obj* %34, null
  br i1 %cmp69, label %cond.true.71, label %cond.false.72

cond.true.71:                                     ; preds = %if.then.67
  br label %cond.end.76

cond.false.72:                                    ; preds = %if.then.67
  %35 = load %struct.obj*, %struct.obj** @sym_e, align 8
  %36 = load %struct.obj*, %struct.obj** %b.addr, align 8
  %cmp73 = icmp eq %struct.obj* %35, %36
  %cond75 = select i1 %cmp73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0)
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.false.72, %cond.true.71
  %cond77 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), %cond.true.71 ], [ %cond75, %cond.false.72 ]
  %37 = load i64, i64* %prec, align 8
  %38 = load double, double* %y, align 8
  %call78 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay68, i8* %cond77, i64 %37, double %38) #2
  br label %if.end.91

if.else.79:                                       ; preds = %if.else.64
  %arraydecay80 = getelementptr inbounds [1000 x i8], [1000 x i8]* %buffer, i32 0, i32 0
  %39 = load %struct.obj*, %struct.obj** %b.addr, align 8
  %cmp81 = icmp eq %struct.obj* %39, null
  br i1 %cmp81, label %cond.true.83, label %cond.false.84

cond.true.83:                                     ; preds = %if.else.79
  br label %cond.end.88

cond.false.84:                                    ; preds = %if.else.79
  %40 = load %struct.obj*, %struct.obj** @sym_e, align 8
  %41 = load %struct.obj*, %struct.obj** %b.addr, align 8
  %cmp85 = icmp eq %struct.obj* %40, %41
  %cond87 = select i1 %cmp85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0)
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.false.84, %cond.true.83
  %cond89 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), %cond.true.83 ], [ %cond87, %cond.false.84 ]
  %42 = load double, double* %y, align 8
  %call90 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay80, i8* %cond89, double %42) #2
  br label %if.end.91

if.end.91:                                        ; preds = %cond.end.88, %cond.end.76
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %cond.end.61
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %cond.end.47
  br label %if.end.137

if.else.94:                                       ; preds = %lor.lhs.false.31
  %43 = load %struct.obj*, %struct.obj** %b.addr, align 8
  %call95 = call i64 @get_c_long(%struct.obj* %43)
  store i64 %call95, i64* %base, align 8
  %cmp96 = icmp eq i64 %call95, 10
  br i1 %cmp96, label %if.then.104, label %lor.lhs.false.98

lor.lhs.false.98:                                 ; preds = %if.else.94
  %44 = load i64, i64* %base, align 8
  %cmp99 = icmp eq i64 %44, 8
  br i1 %cmp99, label %if.then.104, label %lor.lhs.false.101

lor.lhs.false.101:                                ; preds = %lor.lhs.false.98
  %45 = load i64, i64* %base, align 8
  %cmp102 = icmp eq i64 %45, 16
  br i1 %cmp102, label %if.then.104, label %if.else.134

if.then.104:                                      ; preds = %lor.lhs.false.101, %lor.lhs.false.98, %if.else.94
  %46 = load i64, i64* %width, align 8
  %cmp105 = icmp sge i64 %46, 0
  br i1 %cmp105, label %if.then.107, label %if.else.120

if.then.107:                                      ; preds = %if.then.104
  %arraydecay108 = getelementptr inbounds [1000 x i8], [1000 x i8]* %buffer, i32 0, i32 0
  %47 = load i64, i64* %base, align 8
  %cmp109 = icmp eq i64 %47, 10
  br i1 %cmp109, label %cond.true.111, label %cond.false.112

cond.true.111:                                    ; preds = %if.then.107
  br label %cond.end.116

cond.false.112:                                   ; preds = %if.then.107
  %48 = load i64, i64* %base, align 8
  %cmp113 = icmp eq i64 %48, 8
  %cond115 = select i1 %cmp113, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i32 0, i32 0)
  br label %cond.end.116

cond.end.116:                                     ; preds = %cond.false.112, %cond.true.111
  %cond117 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), %cond.true.111 ], [ %cond115, %cond.false.112 ]
  %49 = load i64, i64* %width, align 8
  %50 = load double, double* %y, align 8
  %conv118 = fptosi double %50 to i64
  %call119 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay108, i8* %cond117, i64 %49, i64 %conv118) #2
  br label %if.end.133

if.else.120:                                      ; preds = %if.then.104
  %arraydecay121 = getelementptr inbounds [1000 x i8], [1000 x i8]* %buffer, i32 0, i32 0
  %51 = load i64, i64* %base, align 8
  %cmp122 = icmp eq i64 %51, 10
  br i1 %cmp122, label %cond.true.124, label %cond.false.125

cond.true.124:                                    ; preds = %if.else.120
  br label %cond.end.129

cond.false.125:                                   ; preds = %if.else.120
  %52 = load i64, i64* %base, align 8
  %cmp126 = icmp eq i64 %52, 8
  %cond128 = select i1 %cmp126, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i32 0, i32 0)
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.false.125, %cond.true.124
  %cond130 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), %cond.true.124 ], [ %cond128, %cond.false.125 ]
  %53 = load double, double* %y, align 8
  %conv131 = fptosi double %53 to i64
  %call132 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay121, i8* %cond130, i64 %conv131) #2
  br label %if.end.133

if.end.133:                                       ; preds = %cond.end.129, %cond.end.116
  br label %if.end.136

if.else.134:                                      ; preds = %lor.lhs.false.101
  %54 = load %struct.obj*, %struct.obj** %b.addr, align 8
  %call135 = call %struct.obj* @err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.67, i32 0, i32 0), %struct.obj* %54)
  br label %if.end.136

if.end.136:                                       ; preds = %if.else.134, %if.end.133
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %if.end.93
  %arraydecay138 = getelementptr inbounds [1000 x i8], [1000 x i8]* %buffer, i32 0, i32 0
  %call139 = call i64 @strlen(i8* %arraydecay138) #6
  %arraydecay140 = getelementptr inbounds [1000 x i8], [1000 x i8]* %buffer, i32 0, i32 0
  %call141 = call %struct.obj* @strcons(i64 %call139, i8* %arraydecay140)
  ret %struct.obj* %call141
}

; Function Attrs: nounwind uwtable
define %struct.obj* @string2number(%struct.obj* %x, %struct.obj* %b) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %x.addr = alloca %struct.obj*, align 8
  %b.addr = alloca %struct.obj*, align 8
  %str = alloca i8*, align 8
  %base = alloca i64, align 8
  %value = alloca i64, align 8
  %result = alloca double, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  store %struct.obj* %b, %struct.obj** %b.addr, align 8
  store i64 0, i64* %value, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call i8* @get_c_string(%struct.obj* %0)
  store i8* %call, i8** %str, align 8
  %1 = load %struct.obj*, %struct.obj** %b.addr, align 8
  %cmp = icmp eq %struct.obj* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %str, align 8
  %call1 = call double @atof(i8* %2) #6
  store double %call1, double* %result, align 8
  br label %if.end.56

if.else:                                          ; preds = %entry
  %3 = load %struct.obj*, %struct.obj** %b.addr, align 8
  %call2 = call i64 @get_c_long(%struct.obj* %3)
  store i64 %call2, i64* %base, align 8
  %cmp3 = icmp eq i64 %call2, 10
  br i1 %cmp3, label %if.then.4, label %if.else.6

if.then.4:                                        ; preds = %if.else
  %4 = load i8*, i8** %str, align 8
  %call5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i64* %value) #2
  %5 = load i64, i64* %value, align 8
  %conv = sitofp i64 %5 to double
  store double %conv, double* %result, align 8
  br label %if.end.55

if.else.6:                                        ; preds = %if.else
  %6 = load i64, i64* %base, align 8
  %cmp7 = icmp eq i64 %6, 8
  br i1 %cmp7, label %if.then.9, label %if.else.12

if.then.9:                                        ; preds = %if.else.6
  %7 = load i8*, i8** %str, align 8
  %call10 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i32 0, i32 0), i64* %value) #2
  %8 = load i64, i64* %value, align 8
  %conv11 = sitofp i64 %8 to double
  store double %conv11, double* %result, align 8
  br label %if.end.54

if.else.12:                                       ; preds = %if.else.6
  %9 = load i64, i64* %base, align 8
  %cmp13 = icmp eq i64 %9, 16
  br i1 %cmp13, label %if.then.15, label %if.else.18

if.then.15:                                       ; preds = %if.else.12
  %10 = load i8*, i8** %str, align 8
  %call16 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i64* %value) #2
  %11 = load i64, i64* %value, align 8
  %conv17 = sitofp i64 %11 to double
  store double %conv17, double* %result, align 8
  br label %if.end.53

if.else.18:                                       ; preds = %if.else.12
  %12 = load i64, i64* %base, align 8
  %cmp19 = icmp sge i64 %12, 1
  br i1 %cmp19, label %land.lhs.true, label %if.else.50

land.lhs.true:                                    ; preds = %if.else.18
  %13 = load i64, i64* %base, align 8
  %cmp21 = icmp sle i64 %13, 16
  br i1 %cmp21, label %if.then.23, label %if.else.50

if.then.23:                                       ; preds = %land.lhs.true
  store double 0.000000e+00, double* %result, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.23
  %14 = load i8*, i8** %str, align 8
  %15 = load i8, i8* %14, align 1
  %tobool = icmp ne i8 %15, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i8*, i8** %str, align 8
  %17 = load i8, i8* %16, align 1
  %conv24 = sext i8 %17 to i32
  %idxprom = sext i32 %conv24 to i64
  %call25 = call i16** @__ctype_b_loc() #7
  %18 = load i16*, i16** %call25, align 8
  %arrayidx = getelementptr inbounds i16, i16* %18, i64 %idxprom
  %19 = load i16, i16* %arrayidx, align 2
  %conv26 = zext i16 %19 to i32
  %and = and i32 %conv26, 2048
  %tobool27 = icmp ne i32 %and, 0
  br i1 %tobool27, label %if.then.28, label %if.else.32

if.then.28:                                       ; preds = %for.body
  %20 = load double, double* %result, align 8
  %21 = load i64, i64* %base, align 8
  %conv29 = sitofp i64 %21 to double
  %mul = fmul double %20, %conv29
  %22 = load i8*, i8** %str, align 8
  %23 = load i8, i8* %22, align 1
  %conv30 = sext i8 %23 to i32
  %conv31 = sitofp i32 %conv30 to double
  %add = fadd double %mul, %conv31
  %sub = fsub double %add, 4.800000e+01
  store double %sub, double* %result, align 8
  br label %if.end.49

if.else.32:                                       ; preds = %for.body
  %24 = load i8*, i8** %str, align 8
  %25 = load i8, i8* %24, align 1
  %conv33 = sext i8 %25 to i32
  %idxprom34 = sext i32 %conv33 to i64
  %call35 = call i16** @__ctype_b_loc() #7
  %26 = load i16*, i16** %call35, align 8
  %arrayidx36 = getelementptr inbounds i16, i16* %26, i64 %idxprom34
  %27 = load i16, i16* %arrayidx36, align 2
  %conv37 = zext i16 %27 to i32
  %and38 = and i32 %conv37, 4096
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %if.then.40, label %if.end

if.then.40:                                       ; preds = %if.else.32
  %28 = load double, double* %result, align 8
  %29 = load i64, i64* %base, align 8
  %conv41 = sitofp i64 %29 to double
  %mul42 = fmul double %28, %conv41
  %30 = load i8*, i8** %str, align 8
  %31 = load i8, i8* %30, align 1
  %conv43 = sext i8 %31 to i32
  %call44 = call i32 @toupper(i32 %conv43) #2
  %conv45 = sitofp i32 %call44 to double
  %add46 = fadd double %mul42, %conv45
  %sub47 = fsub double %add46, 6.500000e+01
  %add48 = fadd double %sub47, 1.000000e+01
  store double %add48, double* %result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.40, %if.else.32
  br label %if.end.49

if.end.49:                                        ; preds = %if.end, %if.then.28
  br label %for.inc

for.inc:                                          ; preds = %if.end.49
  %32 = load i8*, i8** %str, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr, i8** %str, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.52

if.else.50:                                       ; preds = %land.lhs.true, %if.else.18
  %33 = load %struct.obj*, %struct.obj** %b.addr, align 8
  %call51 = call %struct.obj* @err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.67, i32 0, i32 0), %struct.obj* %33)
  store %struct.obj* %call51, %struct.obj** %retval
  br label %return

if.end.52:                                        ; preds = %for.end
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then.15
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.9
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then.4
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then
  %34 = load double, double* %result, align 8
  %call57 = call %struct.obj* @flocons(double %34)
  store %struct.obj* %call57, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end.56, %if.else.50
  %35 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %35
}

; Function Attrs: nounwind readonly
declare double @atof(i8*) #4

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define %struct.obj* @lstrcmp(%struct.obj* %s1, %struct.obj* %s2) #0 {
entry:
  %s1.addr = alloca %struct.obj*, align 8
  %s2.addr = alloca %struct.obj*, align 8
  store %struct.obj* %s1, %struct.obj** %s1.addr, align 8
  store %struct.obj* %s2, %struct.obj** %s2.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %s1.addr, align 8
  %call = call i8* @get_c_string(%struct.obj* %0)
  %1 = load %struct.obj*, %struct.obj** %s2.addr, align 8
  %call1 = call i8* @get_c_string(%struct.obj* %1)
  %call2 = call i32 @strcmp(i8* %call, i8* %call1) #6
  %conv = sitofp i32 %call2 to double
  %call3 = call %struct.obj* @flocons(double %conv)
  ret %struct.obj* %call3
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define void @chk_string(%struct.obj* %s, i8** %data, i64* %dim) #0 {
entry:
  %s.addr = alloca %struct.obj*, align 8
  %data.addr = alloca i8**, align 8
  %dim.addr = alloca i64*, align 8
  store %struct.obj* %s, %struct.obj** %s.addr, align 8
  store i8** %data, i8*** %data.addr, align 8
  store i64* %dim, i64** %dim.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %s.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %s.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp eq i32 %cond, 13
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %s.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %3, i32 0, i32 2
  %string = bitcast %union.anon* %storage_as to %struct.anon.13*
  %data3 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string, i32 0, i32 1
  %4 = load i8*, i8** %data3, align 8
  %5 = load i8**, i8*** %data.addr, align 8
  store i8* %4, i8** %5, align 8
  %6 = load %struct.obj*, %struct.obj** %s.addr, align 8
  %storage_as4 = getelementptr inbounds %struct.obj, %struct.obj* %6, i32 0, i32 2
  %string5 = bitcast %union.anon* %storage_as4 to %struct.anon.13*
  %dim6 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string5, i32 0, i32 0
  %7 = load i64, i64* %dim6, align 8
  %8 = load i64*, i64** %dim.addr, align 8
  store i64 %7, i64* %8, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end
  %9 = load %struct.obj*, %struct.obj** %s.addr, align 8
  %call = call %struct.obj* @err_wta_str(%struct.obj* %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lstrcpy(%struct.obj* %dest, %struct.obj* %src) #0 {
entry:
  %dest.addr = alloca %struct.obj*, align 8
  %src.addr = alloca %struct.obj*, align 8
  %ddim = alloca i64, align 8
  %slen = alloca i64, align 8
  %d = alloca i8*, align 8
  %s = alloca i8*, align 8
  store %struct.obj* %dest, %struct.obj** %dest.addr, align 8
  store %struct.obj* %src, %struct.obj** %src.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %dest.addr, align 8
  call void @chk_string(%struct.obj* %0, i8** %d, i64* %ddim)
  %1 = load %struct.obj*, %struct.obj** %src.addr, align 8
  %call = call i8* @get_c_string(%struct.obj* %1)
  store i8* %call, i8** %s, align 8
  %2 = load i8*, i8** %s, align 8
  %call1 = call i64 @strlen(i8* %2) #6
  store i64 %call1, i64* %slen, align 8
  %3 = load i64, i64* %slen, align 8
  %4 = load i64, i64* %ddim, align 8
  %cmp = icmp sgt i64 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.obj*, %struct.obj** %src.addr, align 8
  %call2 = call %struct.obj* @err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.69, i32 0, i32 0), %struct.obj* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8*, i8** %d, align 8
  %7 = load i8*, i8** %s, align 8
  %8 = load i64, i64* %slen, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 %8, i32 1, i1 false)
  %9 = load i64, i64* %slen, align 8
  %10 = load i8*, i8** %d, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %9
  store i8 0, i8* %arrayidx, align 1
  ret %struct.obj* null
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lstrcat(%struct.obj* %dest, %struct.obj* %src) #0 {
entry:
  %dest.addr = alloca %struct.obj*, align 8
  %src.addr = alloca %struct.obj*, align 8
  %ddim = alloca i64, align 8
  %dlen = alloca i64, align 8
  %slen = alloca i64, align 8
  %d = alloca i8*, align 8
  %s = alloca i8*, align 8
  store %struct.obj* %dest, %struct.obj** %dest.addr, align 8
  store %struct.obj* %src, %struct.obj** %src.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %dest.addr, align 8
  call void @chk_string(%struct.obj* %0, i8** %d, i64* %ddim)
  %1 = load %struct.obj*, %struct.obj** %src.addr, align 8
  %call = call i8* @get_c_string(%struct.obj* %1)
  store i8* %call, i8** %s, align 8
  %2 = load i8*, i8** %s, align 8
  %call1 = call i64 @strlen(i8* %2) #6
  store i64 %call1, i64* %slen, align 8
  %3 = load i8*, i8** %d, align 8
  %call2 = call i64 @strlen(i8* %3) #6
  store i64 %call2, i64* %dlen, align 8
  %4 = load i64, i64* %slen, align 8
  %5 = load i64, i64* %dlen, align 8
  %add = add nsw i64 %4, %5
  %6 = load i64, i64* %ddim, align 8
  %cmp = icmp sgt i64 %add, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.obj*, %struct.obj** %src.addr, align 8
  %call3 = call %struct.obj* @err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.69, i32 0, i32 0), %struct.obj* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i64, i64* %dlen, align 8
  %9 = load i8*, i8** %d, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %8
  %10 = load i8*, i8** %s, align 8
  %11 = load i64, i64* %slen, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx, i8* %10, i64 %11, i32 1, i1 false)
  %12 = load i64, i64* %dlen, align 8
  %13 = load i64, i64* %slen, align 8
  %add4 = add nsw i64 %12, %13
  %14 = load i8*, i8** %d, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %14, i64 %add4
  store i8 0, i8* %arrayidx5, align 1
  ret %struct.obj* null
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lstrbreakup(%struct.obj* %str, %struct.obj* %lmarker) #0 {
entry:
  %str.addr = alloca %struct.obj*, align 8
  %lmarker.addr = alloca %struct.obj*, align 8
  %start = alloca i8*, align 8
  %end = alloca i8*, align 8
  %marker = alloca i8*, align 8
  %k = alloca i64, align 8
  %result = alloca %struct.obj*, align 8
  store %struct.obj* %str, %struct.obj** %str.addr, align 8
  store %struct.obj* %lmarker, %struct.obj** %lmarker.addr, align 8
  store %struct.obj* null, %struct.obj** %result, align 8
  %0 = load %struct.obj*, %struct.obj** %str.addr, align 8
  %call = call i8* @get_c_string(%struct.obj* %0)
  store i8* %call, i8** %start, align 8
  %1 = load %struct.obj*, %struct.obj** %lmarker.addr, align 8
  %call1 = call i8* @get_c_string(%struct.obj* %1)
  store i8* %call1, i8** %marker, align 8
  %2 = load i8*, i8** %marker, align 8
  %call2 = call i64 @strlen(i8* %2) #6
  store i64 %call2, i64* %k, align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %entry
  %3 = load i8*, i8** %start, align 8
  %4 = load i8, i8* %3, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %start, align 8
  %6 = load i8*, i8** %marker, align 8
  %call3 = call i8* @strstr(i8* %5, i8* %6) #6
  store i8* %call3, i8** %end, align 8
  %tobool4 = icmp ne i8* %call3, null
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %7 = load i8*, i8** %start, align 8
  %call5 = call i64 @strlen(i8* %7) #6
  %8 = load i8*, i8** %start, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %call5
  store i8* %arrayidx, i8** %end, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %9 = load i8*, i8** %end, align 8
  %10 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %11 = load i8*, i8** %start, align 8
  %call6 = call %struct.obj* @strcons(i64 %sub.ptr.sub, i8* %11)
  %12 = load %struct.obj*, %struct.obj** %result, align 8
  %call7 = call %struct.obj* @cons(%struct.obj* %call6, %struct.obj* %12)
  store %struct.obj* %call7, %struct.obj** %result, align 8
  %13 = load i8*, i8** %end, align 8
  %14 = load i8, i8* %13, align 1
  %conv = sext i8 %14 to i32
  %tobool8 = icmp ne i32 %conv, 0
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %15 = load i8*, i8** %end, align 8
  %16 = load i64, i64* %k, align 8
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %16
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %17 = load i8*, i8** %end, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %17, %cond.false ]
  store i8* %cond, i8** %start, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load %struct.obj*, %struct.obj** %result, align 8
  %call9 = call %struct.obj* @nreverse(%struct.obj* %18)
  ret %struct.obj* %call9
}

declare %struct.obj* @nreverse(%struct.obj*) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @lstrunbreakup(%struct.obj* %elems, %struct.obj* %lmarker) #0 {
entry:
  %elems.addr = alloca %struct.obj*, align 8
  %lmarker.addr = alloca %struct.obj*, align 8
  %result = alloca %struct.obj*, align 8
  %l = alloca %struct.obj*, align 8
  store %struct.obj* %elems, %struct.obj** %elems.addr, align 8
  store %struct.obj* %lmarker, %struct.obj** %lmarker.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %elems.addr, align 8
  store %struct.obj* %0, %struct.obj** %l, align 8
  store %struct.obj* null, %struct.obj** %result, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp = icmp ne %struct.obj* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.obj*, %struct.obj** %l, align 8
  %3 = load %struct.obj*, %struct.obj** %elems.addr, align 8
  %cmp1 = icmp eq %struct.obj* %2, %3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %4 = load %struct.obj*, %struct.obj** %l, align 8
  %call = call %struct.obj* @car(%struct.obj* %4)
  %5 = load %struct.obj*, %struct.obj** %result, align 8
  %call2 = call %struct.obj* @cons(%struct.obj* %call, %struct.obj* %5)
  store %struct.obj* %call2, %struct.obj** %result, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %6 = load %struct.obj*, %struct.obj** %l, align 8
  %call3 = call %struct.obj* @car(%struct.obj* %6)
  %7 = load %struct.obj*, %struct.obj** %lmarker.addr, align 8
  %8 = load %struct.obj*, %struct.obj** %result, align 8
  %call4 = call %struct.obj* @cons(%struct.obj* %7, %struct.obj* %8)
  %call5 = call %struct.obj* @cons(%struct.obj* %call3, %struct.obj* %call4)
  store %struct.obj* %call5, %struct.obj** %result, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct.obj*, %struct.obj** %l, align 8
  %call6 = call %struct.obj* @cdr(%struct.obj* %9)
  store %struct.obj* %call6, %struct.obj** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.obj*, %struct.obj** %result, align 8
  %call7 = call %struct.obj* @nreverse(%struct.obj* %10)
  %call8 = call %struct.obj* @string_append(%struct.obj* %call7)
  ret %struct.obj* %call8
}

; Function Attrs: nounwind uwtable
define %struct.obj* @stringp(%struct.obj* %x) #0 {
entry:
  %x.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp eq i32 %cond, 13
  br i1 %cmp1, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** @sym_t, align 8
  br label %cond.end.5

cond.false.4:                                     ; preds = %cond.end
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.false.4, %cond.true.3
  %cond6 = phi %struct.obj* [ %3, %cond.true.3 ], [ null, %cond.false.4 ]
  ret %struct.obj* %cond6
}

; Function Attrs: nounwind uwtable
define %struct.obj* @base64encode(%struct.obj* %in) #0 {
entry:
  %in.addr = alloca %struct.obj*, align 8
  %s = alloca i8*, align 8
  %t = alloca i8*, align 8
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  %out = alloca %struct.obj*, align 8
  %j = alloca i64, align 8
  %m = alloca i64, align 8
  %n = alloca i64, align 8
  %chunks = alloca i64, align 8
  %leftover = alloca i64, align 8
  store %struct.obj* %in, %struct.obj** %in.addr, align 8
  %0 = load i8*, i8** @base64_encode_table, align 8
  store i8* %0, i8** %t, align 8
  %1 = load %struct.obj*, %struct.obj** %in.addr, align 8
  %call = call i8* @get_c_string_dim(%struct.obj* %1, i64* %n)
  store i8* %call, i8** %s, align 8
  %2 = load i64, i64* %n, align 8
  %div = sdiv i64 %2, 3
  store i64 %div, i64* %chunks, align 8
  %3 = load i64, i64* %n, align 8
  %rem = srem i64 %3, 3
  store i64 %rem, i64* %leftover, align 8
  %4 = load i64, i64* %chunks, align 8
  %5 = load i64, i64* %leftover, align 8
  %tobool = icmp ne i64 %5, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %conv = sext i32 %cond to i64
  %add = add nsw i64 %4, %conv
  %mul = mul nsw i64 %add, 4
  store i64 %mul, i64* %m, align 8
  %6 = load i64, i64* %m, align 8
  %call1 = call %struct.obj* @strcons(i64 %6, i8* null)
  store %struct.obj* %call1, %struct.obj** %out, align 8
  %7 = load %struct.obj*, %struct.obj** %out, align 8
  %call2 = call i8* @get_c_string(%struct.obj* %7)
  store i8* %call2, i8** %p2, align 8
  store i64 0, i64* %j, align 8
  %8 = load i8*, i8** %s, align 8
  store i8* %8, i8** %p1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i64, i64* %j, align 8
  %10 = load i64, i64* %chunks, align 8
  %cmp = icmp slt i64 %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i8*, i8** %p1, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 0
  %12 = load i8, i8* %arrayidx, align 1
  %conv4 = zext i8 %12 to i32
  %shr = ashr i32 %conv4, 2
  %and = and i32 %shr, 63
  %idxprom = sext i32 %and to i64
  %13 = load i8*, i8** %t, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %13, i64 %idxprom
  %14 = load i8, i8* %arrayidx5, align 1
  %15 = load i8*, i8** %p2, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %p2, align 8
  store i8 %14, i8* %15, align 1
  %16 = load i8*, i8** %p1, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %16, i64 0
  %17 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %17 to i32
  %and8 = and i32 %conv7, 3
  %shl = shl i32 %and8, 4
  %18 = load i8*, i8** %p1, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %18, i64 1
  %19 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %19 to i32
  %shr11 = ashr i32 %conv10, 4
  %and12 = and i32 %shr11, 15
  %or = or i32 %shl, %and12
  %idxprom13 = sext i32 %or to i64
  %20 = load i8*, i8** %t, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %20, i64 %idxprom13
  %21 = load i8, i8* %arrayidx14, align 1
  %22 = load i8*, i8** %p2, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr15, i8** %p2, align 8
  store i8 %21, i8* %22, align 1
  %23 = load i8*, i8** %p1, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %23, i64 1
  %24 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %24 to i32
  %and18 = and i32 %conv17, 15
  %shl19 = shl i32 %and18, 2
  %25 = load i8*, i8** %p1, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %25, i64 2
  %26 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %26 to i32
  %shr22 = ashr i32 %conv21, 6
  %and23 = and i32 %shr22, 3
  %or24 = or i32 %shl19, %and23
  %idxprom25 = sext i32 %or24 to i64
  %27 = load i8*, i8** %t, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %27, i64 %idxprom25
  %28 = load i8, i8* %arrayidx26, align 1
  %29 = load i8*, i8** %p2, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr27, i8** %p2, align 8
  store i8 %28, i8* %29, align 1
  %30 = load i8*, i8** %p1, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %30, i64 2
  %31 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %31 to i32
  %and30 = and i32 %conv29, 63
  %idxprom31 = sext i32 %and30 to i64
  %32 = load i8*, i8** %t, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %32, i64 %idxprom31
  %33 = load i8, i8* %arrayidx32, align 1
  %34 = load i8*, i8** %p2, align 8
  %incdec.ptr33 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr33, i8** %p2, align 8
  store i8 %33, i8* %34, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i64, i64* %j, align 8
  %inc = add nsw i64 %35, 1
  store i64 %inc, i64* %j, align 8
  %36 = load i8*, i8** %p1, align 8
  %add.ptr = getelementptr inbounds i8, i8* %36, i64 3
  store i8* %add.ptr, i8** %p1, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load i64, i64* %leftover, align 8
  switch i64 %37, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb.34
    i64 2, label %sw.bb.53
  ]

sw.bb:                                            ; preds = %for.end
  br label %sw.epilog

sw.bb.34:                                         ; preds = %for.end
  %38 = load i8*, i8** %p1, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %38, i64 0
  %39 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %39 to i32
  %shr37 = ashr i32 %conv36, 2
  %and38 = and i32 %shr37, 63
  %idxprom39 = sext i32 %and38 to i64
  %40 = load i8*, i8** %t, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %40, i64 %idxprom39
  %41 = load i8, i8* %arrayidx40, align 1
  %42 = load i8*, i8** %p2, align 8
  %incdec.ptr41 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr41, i8** %p2, align 8
  store i8 %41, i8* %42, align 1
  %43 = load i8*, i8** %p1, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %43, i64 0
  %44 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %44 to i32
  %and44 = and i32 %conv43, 3
  %shl45 = shl i32 %and44, 4
  %idxprom46 = sext i32 %shl45 to i64
  %45 = load i8*, i8** %t, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %45, i64 %idxprom46
  %46 = load i8, i8* %arrayidx47, align 1
  %47 = load i8*, i8** %p2, align 8
  %incdec.ptr48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr48, i8** %p2, align 8
  store i8 %46, i8* %47, align 1
  %48 = load i8*, i8** @base64_encode_table, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %48, i64 64
  %49 = load i8, i8* %arrayidx49, align 1
  %50 = load i8*, i8** %p2, align 8
  %incdec.ptr50 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr50, i8** %p2, align 8
  store i8 %49, i8* %50, align 1
  %51 = load i8*, i8** @base64_encode_table, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %51, i64 64
  %52 = load i8, i8* %arrayidx51, align 1
  %53 = load i8*, i8** %p2, align 8
  %incdec.ptr52 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr52, i8** %p2, align 8
  store i8 %52, i8* %53, align 1
  br label %sw.epilog

sw.bb.53:                                         ; preds = %for.end
  %54 = load i8*, i8** %p1, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %54, i64 0
  %55 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %55 to i32
  %shr56 = ashr i32 %conv55, 2
  %and57 = and i32 %shr56, 63
  %idxprom58 = sext i32 %and57 to i64
  %56 = load i8*, i8** %t, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %56, i64 %idxprom58
  %57 = load i8, i8* %arrayidx59, align 1
  %58 = load i8*, i8** %p2, align 8
  %incdec.ptr60 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr60, i8** %p2, align 8
  store i8 %57, i8* %58, align 1
  %59 = load i8*, i8** %p1, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %59, i64 0
  %60 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %60 to i32
  %and63 = and i32 %conv62, 3
  %shl64 = shl i32 %and63, 4
  %61 = load i8*, i8** %p1, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %61, i64 1
  %62 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %62 to i32
  %shr67 = ashr i32 %conv66, 4
  %and68 = and i32 %shr67, 15
  %or69 = or i32 %shl64, %and68
  %idxprom70 = sext i32 %or69 to i64
  %63 = load i8*, i8** %t, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %63, i64 %idxprom70
  %64 = load i8, i8* %arrayidx71, align 1
  %65 = load i8*, i8** %p2, align 8
  %incdec.ptr72 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr72, i8** %p2, align 8
  store i8 %64, i8* %65, align 1
  %66 = load i8*, i8** %p1, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %66, i64 1
  %67 = load i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %67 to i32
  %and75 = and i32 %conv74, 15
  %shl76 = shl i32 %and75, 2
  %idxprom77 = sext i32 %shl76 to i64
  %68 = load i8*, i8** %t, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %68, i64 %idxprom77
  %69 = load i8, i8* %arrayidx78, align 1
  %70 = load i8*, i8** %p2, align 8
  %incdec.ptr79 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr79, i8** %p2, align 8
  store i8 %69, i8* %70, align 1
  %71 = load i8*, i8** @base64_encode_table, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %71, i64 64
  %72 = load i8, i8* %arrayidx80, align 1
  %73 = load i8*, i8** %p2, align 8
  %incdec.ptr81 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %incdec.ptr81, i8** %p2, align 8
  store i8 %72, i8* %73, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  %call82 = call %struct.obj* @errswitch()
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.53, %sw.bb.34, %sw.bb
  %74 = load %struct.obj*, %struct.obj** %out, align 8
  ret %struct.obj* %74
}

; Function Attrs: nounwind uwtable
define %struct.obj* @base64decode(%struct.obj* %in) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %in.addr = alloca %struct.obj*, align 8
  %s = alloca i8*, align 8
  %t = alloca i8*, align 8
  %out = alloca %struct.obj*, align 8
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  %j = alloca i64, align 8
  %m = alloca i64, align 8
  %n = alloca i64, align 8
  %chunks = alloca i64, align 8
  %leftover = alloca i64, align 8
  %item1 = alloca i64, align 8
  %item2 = alloca i64, align 8
  %item3 = alloca i64, align 8
  %item4 = alloca i64, align 8
  store %struct.obj* %in, %struct.obj** %in.addr, align 8
  %0 = load i8*, i8** @base64_decode_table, align 8
  store i8* %0, i8** %t, align 8
  %1 = load %struct.obj*, %struct.obj** %in.addr, align 8
  %call = call i8* @get_c_string(%struct.obj* %1)
  store i8* %call, i8** %s, align 8
  %2 = load i8*, i8** %s, align 8
  %call1 = call i64 @strlen(i8* %2) #6
  store i64 %call1, i64* %n, align 8
  %3 = load i64, i64* %n, align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call %struct.obj* @strcons(i64 0, i8* null)
  store %struct.obj* %call2, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %n, align 8
  %rem = srem i64 %4, 4
  %tobool = icmp ne i64 %rem, 0
  br i1 %tobool, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %5 = load %struct.obj*, %struct.obj** %in.addr, align 8
  %call4 = call %struct.obj* @err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.70, i32 0, i32 0), %struct.obj* %5)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %6 = load i64, i64* %n, align 8
  %sub = sub nsw i64 %6, 1
  %7 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %sub
  %8 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %8 to i32
  %9 = load i8*, i8** @base64_encode_table, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %9, i64 64
  %10 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %10 to i32
  %cmp8 = icmp eq i32 %conv, %conv7
  br i1 %cmp8, label %if.then.10, label %if.else.20

if.then.10:                                       ; preds = %if.end.5
  %11 = load i64, i64* %n, align 8
  %sub11 = sub nsw i64 %11, 2
  %12 = load i8*, i8** %s, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %12, i64 %sub11
  %13 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %13 to i32
  %14 = load i8*, i8** @base64_encode_table, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %14, i64 64
  %15 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %15 to i32
  %cmp16 = icmp eq i32 %conv13, %conv15
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.then.10
  store i64 1, i64* %leftover, align 8
  br label %if.end.19

if.else:                                          ; preds = %if.then.10
  store i64 2, i64* %leftover, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.18
  br label %if.end.21

if.else.20:                                       ; preds = %if.end.5
  store i64 0, i64* %leftover, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.20, %if.end.19
  %16 = load i64, i64* %n, align 8
  %div = sdiv i64 %16, 4
  %17 = load i64, i64* %leftover, align 8
  %tobool22 = icmp ne i64 %17, 0
  %cond = select i1 %tobool22, i32 1, i32 0
  %conv23 = sext i32 %cond to i64
  %sub24 = sub nsw i64 %div, %conv23
  store i64 %sub24, i64* %chunks, align 8
  %18 = load i64, i64* %chunks, align 8
  %mul = mul nsw i64 %18, 3
  %19 = load i64, i64* %leftover, align 8
  %add = add nsw i64 %mul, %19
  store i64 %add, i64* %m, align 8
  %20 = load i64, i64* %m, align 8
  %call25 = call %struct.obj* @strcons(i64 %20, i8* null)
  store %struct.obj* %call25, %struct.obj** %out, align 8
  %21 = load %struct.obj*, %struct.obj** %out, align 8
  %call26 = call i8* @get_c_string(%struct.obj* %21)
  store i8* %call26, i8** %p2, align 8
  store i64 0, i64* %j, align 8
  %22 = load i8*, i8** %s, align 8
  store i8* %22, i8** %p1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.21
  %23 = load i64, i64* %j, align 8
  %24 = load i64, i64* %chunks, align 8
  %cmp27 = icmp slt i64 %23, %24
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i8*, i8** %p1, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %25, i64 0
  %26 = load i8, i8* %arrayidx29, align 1
  %idxprom = zext i8 %26 to i64
  %27 = load i8*, i8** %t, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %27, i64 %idxprom
  %28 = load i8, i8* %arrayidx30, align 1
  %conv31 = sext i8 %28 to i64
  store i64 %conv31, i64* %item1, align 8
  %and = and i64 %conv31, -64
  %tobool32 = icmp ne i64 %and, 0
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %for.body
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end.34:                                        ; preds = %for.body
  %29 = load i8*, i8** %p1, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %29, i64 1
  %30 = load i8, i8* %arrayidx35, align 1
  %idxprom36 = zext i8 %30 to i64
  %31 = load i8*, i8** %t, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %31, i64 %idxprom36
  %32 = load i8, i8* %arrayidx37, align 1
  %conv38 = sext i8 %32 to i64
  store i64 %conv38, i64* %item2, align 8
  %and39 = and i64 %conv38, -64
  %tobool40 = icmp ne i64 %and39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.34
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end.42:                                        ; preds = %if.end.34
  %33 = load i8*, i8** %p1, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %33, i64 2
  %34 = load i8, i8* %arrayidx43, align 1
  %idxprom44 = zext i8 %34 to i64
  %35 = load i8*, i8** %t, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %35, i64 %idxprom44
  %36 = load i8, i8* %arrayidx45, align 1
  %conv46 = sext i8 %36 to i64
  store i64 %conv46, i64* %item3, align 8
  %and47 = and i64 %conv46, -64
  %tobool48 = icmp ne i64 %and47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.42
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end.50:                                        ; preds = %if.end.42
  %37 = load i8*, i8** %p1, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %37, i64 3
  %38 = load i8, i8* %arrayidx51, align 1
  %idxprom52 = zext i8 %38 to i64
  %39 = load i8*, i8** %t, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %39, i64 %idxprom52
  %40 = load i8, i8* %arrayidx53, align 1
  %conv54 = sext i8 %40 to i64
  store i64 %conv54, i64* %item4, align 8
  %and55 = and i64 %conv54, -64
  %tobool56 = icmp ne i64 %and55, 0
  br i1 %tobool56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.50
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end.58:                                        ; preds = %if.end.50
  %41 = load i64, i64* %item1, align 8
  %shl = shl i64 %41, 2
  %42 = load i64, i64* %item2, align 8
  %shr = ashr i64 %42, 4
  %or = or i64 %shl, %shr
  %conv59 = trunc i64 %or to i8
  %43 = load i8*, i8** %p2, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr, i8** %p2, align 8
  store i8 %conv59, i8* %43, align 1
  %44 = load i64, i64* %item2, align 8
  %shl60 = shl i64 %44, 4
  %45 = load i64, i64* %item3, align 8
  %shr61 = ashr i64 %45, 2
  %or62 = or i64 %shl60, %shr61
  %conv63 = trunc i64 %or62 to i8
  %46 = load i8*, i8** %p2, align 8
  %incdec.ptr64 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr64, i8** %p2, align 8
  store i8 %conv63, i8* %46, align 1
  %47 = load i64, i64* %item3, align 8
  %shl65 = shl i64 %47, 6
  %48 = load i64, i64* %item4, align 8
  %or66 = or i64 %shl65, %48
  %conv67 = trunc i64 %or66 to i8
  %49 = load i8*, i8** %p2, align 8
  %incdec.ptr68 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr68, i8** %p2, align 8
  store i8 %conv67, i8* %49, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.58
  %50 = load i64, i64* %j, align 8
  %inc = add nsw i64 %50, 1
  store i64 %inc, i64* %j, align 8
  %51 = load i8*, i8** %p1, align 8
  %add.ptr = getelementptr inbounds i8, i8* %51, i64 4
  store i8* %add.ptr, i8** %p1, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %52 = load i64, i64* %leftover, align 8
  switch i64 %52, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb.69
    i64 2, label %sw.bb.91
  ]

sw.bb:                                            ; preds = %for.end
  br label %sw.epilog

sw.bb.69:                                         ; preds = %for.end
  %53 = load i8*, i8** %p1, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %53, i64 0
  %54 = load i8, i8* %arrayidx70, align 1
  %idxprom71 = zext i8 %54 to i64
  %55 = load i8*, i8** %t, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %55, i64 %idxprom71
  %56 = load i8, i8* %arrayidx72, align 1
  %conv73 = sext i8 %56 to i64
  store i64 %conv73, i64* %item1, align 8
  %and74 = and i64 %conv73, -64
  %tobool75 = icmp ne i64 %and74, 0
  br i1 %tobool75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %sw.bb.69
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end.77:                                        ; preds = %sw.bb.69
  %57 = load i8*, i8** %p1, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %57, i64 1
  %58 = load i8, i8* %arrayidx78, align 1
  %idxprom79 = zext i8 %58 to i64
  %59 = load i8*, i8** %t, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %59, i64 %idxprom79
  %60 = load i8, i8* %arrayidx80, align 1
  %conv81 = sext i8 %60 to i64
  store i64 %conv81, i64* %item2, align 8
  %and82 = and i64 %conv81, -64
  %tobool83 = icmp ne i64 %and82, 0
  br i1 %tobool83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.end.77
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end.85:                                        ; preds = %if.end.77
  %61 = load i64, i64* %item1, align 8
  %shl86 = shl i64 %61, 2
  %62 = load i64, i64* %item2, align 8
  %shr87 = ashr i64 %62, 4
  %or88 = or i64 %shl86, %shr87
  %conv89 = trunc i64 %or88 to i8
  %63 = load i8*, i8** %p2, align 8
  %incdec.ptr90 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr90, i8** %p2, align 8
  store i8 %conv89, i8* %63, align 1
  br label %sw.epilog

sw.bb.91:                                         ; preds = %for.end
  %64 = load i8*, i8** %p1, align 8
  %arrayidx92 = getelementptr inbounds i8, i8* %64, i64 0
  %65 = load i8, i8* %arrayidx92, align 1
  %idxprom93 = zext i8 %65 to i64
  %66 = load i8*, i8** %t, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %66, i64 %idxprom93
  %67 = load i8, i8* %arrayidx94, align 1
  %conv95 = sext i8 %67 to i64
  store i64 %conv95, i64* %item1, align 8
  %and96 = and i64 %conv95, -64
  %tobool97 = icmp ne i64 %and96, 0
  br i1 %tobool97, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %sw.bb.91
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end.99:                                        ; preds = %sw.bb.91
  %68 = load i8*, i8** %p1, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %68, i64 1
  %69 = load i8, i8* %arrayidx100, align 1
  %idxprom101 = zext i8 %69 to i64
  %70 = load i8*, i8** %t, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %70, i64 %idxprom101
  %71 = load i8, i8* %arrayidx102, align 1
  %conv103 = sext i8 %71 to i64
  store i64 %conv103, i64* %item2, align 8
  %and104 = and i64 %conv103, -64
  %tobool105 = icmp ne i64 %and104, 0
  br i1 %tobool105, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.end.99
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end.107:                                       ; preds = %if.end.99
  %72 = load i8*, i8** %p1, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %72, i64 2
  %73 = load i8, i8* %arrayidx108, align 1
  %idxprom109 = zext i8 %73 to i64
  %74 = load i8*, i8** %t, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %74, i64 %idxprom109
  %75 = load i8, i8* %arrayidx110, align 1
  %conv111 = sext i8 %75 to i64
  store i64 %conv111, i64* %item3, align 8
  %and112 = and i64 %conv111, -64
  %tobool113 = icmp ne i64 %and112, 0
  br i1 %tobool113, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %if.end.107
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end.115:                                       ; preds = %if.end.107
  %76 = load i64, i64* %item1, align 8
  %shl116 = shl i64 %76, 2
  %77 = load i64, i64* %item2, align 8
  %shr117 = ashr i64 %77, 4
  %or118 = or i64 %shl116, %shr117
  %conv119 = trunc i64 %or118 to i8
  %78 = load i8*, i8** %p2, align 8
  %incdec.ptr120 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr120, i8** %p2, align 8
  store i8 %conv119, i8* %78, align 1
  %79 = load i64, i64* %item2, align 8
  %shl121 = shl i64 %79, 4
  %80 = load i64, i64* %item3, align 8
  %shr122 = ashr i64 %80, 2
  %or123 = or i64 %shl121, %shr122
  %conv124 = trunc i64 %or123 to i8
  %81 = load i8*, i8** %p2, align 8
  %incdec.ptr125 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %incdec.ptr125, i8** %p2, align 8
  store i8 %conv124, i8* %81, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  %call126 = call %struct.obj* @errswitch()
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.115, %if.end.85, %sw.bb
  %82 = load %struct.obj*, %struct.obj** %out, align 8
  store %struct.obj* %82, %struct.obj** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.114, %if.then.106, %if.then.98, %if.then.84, %if.then.76, %if.then.57, %if.then.49, %if.then.41, %if.then.33, %if.then
  %83 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %83
}

; Function Attrs: nounwind uwtable
define %struct.obj* @memq(%struct.obj* %x, %struct.obj* %il) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %x.addr = alloca %struct.obj*, align 8
  %il.addr = alloca %struct.obj*, align 8
  %l = alloca %struct.obj*, align 8
  %tmp = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  store %struct.obj* %il, %struct.obj** %il.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %il.addr, align 8
  store %struct.obj* %0, %struct.obj** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp = icmp eq %struct.obj* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %2 = load %struct.obj*, %struct.obj** %l, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %2, i32 0, i32 1
  %3 = load i16, i16* %type, align 2
  %conv = sext i16 %3 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp eq i32 %cond, 1
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %4 = load %struct.obj*, %struct.obj** %l, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 0
  %5 = load %struct.obj*, %struct.obj** %car, align 8
  store %struct.obj* %5, %struct.obj** %tmp, align 8
  %6 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %7 = load %struct.obj*, %struct.obj** %tmp, align 8
  %cmp3 = icmp eq %struct.obj* %6, %7
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load %struct.obj*, %struct.obj** %l, align 8
  store %struct.obj* %8, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct.obj*, %struct.obj** %l, align 8
  %storage_as5 = getelementptr inbounds %struct.obj, %struct.obj* %9, i32 0, i32 2
  %cons6 = bitcast %union.anon* %storage_as5 to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons6, i32 0, i32 1
  %10 = load %struct.obj*, %struct.obj** %cdr, align 8
  store %struct.obj* %10, %struct.obj** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %cond.end
  %11 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp7 = icmp eq %struct.obj* %11, null
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.end
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end.10:                                        ; preds = %for.end
  %12 = load %struct.obj*, %struct.obj** %il.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.71, i32 0, i32 0), %struct.obj* %12)
  store %struct.obj* %call, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9, %if.then
  %13 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %13
}

; Function Attrs: nounwind uwtable
define %struct.obj* @member(%struct.obj* %x, %struct.obj* %il) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %x.addr = alloca %struct.obj*, align 8
  %il.addr = alloca %struct.obj*, align 8
  %l = alloca %struct.obj*, align 8
  %tmp = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  store %struct.obj* %il, %struct.obj** %il.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %il.addr, align 8
  store %struct.obj* %0, %struct.obj** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp = icmp eq %struct.obj* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %2 = load %struct.obj*, %struct.obj** %l, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %2, i32 0, i32 1
  %3 = load i16, i16* %type, align 2
  %conv = sext i16 %3 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp eq i32 %cond, 1
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %4 = load %struct.obj*, %struct.obj** %l, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 0
  %5 = load %struct.obj*, %struct.obj** %car, align 8
  store %struct.obj* %5, %struct.obj** %tmp, align 8
  %6 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %7 = load %struct.obj*, %struct.obj** %tmp, align 8
  %call = call %struct.obj* @equal(%struct.obj* %6, %struct.obj* %7)
  %cmp3 = icmp ne %struct.obj* %call, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load %struct.obj*, %struct.obj** %l, align 8
  store %struct.obj* %8, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct.obj*, %struct.obj** %l, align 8
  %storage_as5 = getelementptr inbounds %struct.obj, %struct.obj* %9, i32 0, i32 2
  %cons6 = bitcast %union.anon* %storage_as5 to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons6, i32 0, i32 1
  %10 = load %struct.obj*, %struct.obj** %cdr, align 8
  store %struct.obj* %10, %struct.obj** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %cond.end
  %11 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp7 = icmp eq %struct.obj* %11, null
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.end
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end.10:                                        ; preds = %for.end
  %12 = load %struct.obj*, %struct.obj** %il.addr, align 8
  %call11 = call %struct.obj* @err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.72, i32 0, i32 0), %struct.obj* %12)
  store %struct.obj* %call11, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9, %if.then
  %13 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %13
}

; Function Attrs: nounwind uwtable
define %struct.obj* @memv(%struct.obj* %x, %struct.obj* %il) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %x.addr = alloca %struct.obj*, align 8
  %il.addr = alloca %struct.obj*, align 8
  %l = alloca %struct.obj*, align 8
  %tmp = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  store %struct.obj* %il, %struct.obj** %il.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %il.addr, align 8
  store %struct.obj* %0, %struct.obj** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp = icmp eq %struct.obj* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %2 = load %struct.obj*, %struct.obj** %l, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %2, i32 0, i32 1
  %3 = load i16, i16* %type, align 2
  %conv = sext i16 %3 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp eq i32 %cond, 1
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %4 = load %struct.obj*, %struct.obj** %l, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 0
  %5 = load %struct.obj*, %struct.obj** %car, align 8
  store %struct.obj* %5, %struct.obj** %tmp, align 8
  %6 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %7 = load %struct.obj*, %struct.obj** %tmp, align 8
  %call = call %struct.obj* @eql(%struct.obj* %6, %struct.obj* %7)
  %cmp3 = icmp ne %struct.obj* %call, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load %struct.obj*, %struct.obj** %l, align 8
  store %struct.obj* %8, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct.obj*, %struct.obj** %l, align 8
  %storage_as5 = getelementptr inbounds %struct.obj, %struct.obj* %9, i32 0, i32 2
  %cons6 = bitcast %union.anon* %storage_as5 to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons6, i32 0, i32 1
  %10 = load %struct.obj*, %struct.obj** %cdr, align 8
  store %struct.obj* %10, %struct.obj** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %cond.end
  %11 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp7 = icmp eq %struct.obj* %11, null
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.end
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end.10:                                        ; preds = %for.end
  %12 = load %struct.obj*, %struct.obj** %il.addr, align 8
  %call11 = call %struct.obj* @err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.73, i32 0, i32 0), %struct.obj* %12)
  store %struct.obj* %call11, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9, %if.then
  %13 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %13
}

; Function Attrs: nounwind uwtable
define %struct.obj* @nth(%struct.obj* %x, %struct.obj* %li) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %x.addr = alloca %struct.obj*, align 8
  %li.addr = alloca %struct.obj*, align 8
  %l = alloca %struct.obj*, align 8
  %j = alloca i64, align 8
  %n = alloca i64, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  store %struct.obj* %li, %struct.obj** %li.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call i64 @get_c_long(%struct.obj* %0)
  store i64 %call, i64* %n, align 8
  store i64 0, i64* %j, align 8
  %1 = load %struct.obj*, %struct.obj** %li.addr, align 8
  store %struct.obj* %1, %struct.obj** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %j, align 8
  %3 = load i64, i64* %n, align 8
  %cmp = icmp slt i64 %2, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %4 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp1 = icmp eq %struct.obj* %4, null
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.rhs
  br label %cond.end

cond.false:                                       ; preds = %land.rhs
  %5 = load %struct.obj*, %struct.obj** %l, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %5, i32 0, i32 1
  %6 = load i16, i16* %type, align 2
  %conv = sext i16 %6 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp2 = icmp eq i32 %cond, 1
  br label %land.end

land.end:                                         ; preds = %cond.end, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %cmp2, %cond.end ]
  br i1 %7, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %8 = load %struct.obj*, %struct.obj** %l, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %8, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 1
  %9 = load %struct.obj*, %struct.obj** %cdr, align 8
  store %struct.obj* %9, %struct.obj** %l, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i64, i64* %j, align 8
  %inc = add nsw i64 %10, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %11 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp4 = icmp eq %struct.obj* %11, null
  br i1 %cmp4, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %for.end
  br label %cond.end.10

cond.false.7:                                     ; preds = %for.end
  %12 = load %struct.obj*, %struct.obj** %l, align 8
  %type8 = getelementptr inbounds %struct.obj, %struct.obj* %12, i32 0, i32 1
  %13 = load i16, i16* %type8, align 2
  %conv9 = sext i16 %13 to i32
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.7, %cond.true.6
  %cond11 = phi i32 [ 0, %cond.true.6 ], [ %conv9, %cond.false.7 ]
  %cmp12 = icmp eq i32 %cond11, 1
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.10
  %14 = load %struct.obj*, %struct.obj** %l, align 8
  %storage_as14 = getelementptr inbounds %struct.obj, %struct.obj* %14, i32 0, i32 2
  %cons15 = bitcast %union.anon* %storage_as14 to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons15, i32 0, i32 0
  %15 = load %struct.obj*, %struct.obj** %car, align 8
  store %struct.obj* %15, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %cond.end.10
  %16 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call16 = call %struct.obj* @err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.74, i32 0, i32 0), %struct.obj* %16)
  store %struct.obj* %call16, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %17 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %17
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lref_default(%struct.obj* %li, %struct.obj* %x, %struct.obj* %fcn) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %li.addr = alloca %struct.obj*, align 8
  %x.addr = alloca %struct.obj*, align 8
  %fcn.addr = alloca %struct.obj*, align 8
  %l = alloca %struct.obj*, align 8
  %j = alloca i64, align 8
  %n = alloca i64, align 8
  store %struct.obj* %li, %struct.obj** %li.addr, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  store %struct.obj* %fcn, %struct.obj** %fcn.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call i64 @get_c_long(%struct.obj* %0)
  store i64 %call, i64* %n, align 8
  store i64 0, i64* %j, align 8
  %1 = load %struct.obj*, %struct.obj** %li.addr, align 8
  store %struct.obj* %1, %struct.obj** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %j, align 8
  %3 = load i64, i64* %n, align 8
  %cmp = icmp slt i64 %2, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %4 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp1 = icmp eq %struct.obj* %4, null
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.rhs
  br label %cond.end

cond.false:                                       ; preds = %land.rhs
  %5 = load %struct.obj*, %struct.obj** %l, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %5, i32 0, i32 1
  %6 = load i16, i16* %type, align 2
  %conv = sext i16 %6 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp2 = icmp eq i32 %cond, 1
  br label %land.end

land.end:                                         ; preds = %cond.end, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %cmp2, %cond.end ]
  br i1 %7, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %8 = load %struct.obj*, %struct.obj** %l, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %8, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 1
  %9 = load %struct.obj*, %struct.obj** %cdr, align 8
  store %struct.obj* %9, %struct.obj** %l, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i64, i64* %j, align 8
  %inc = add nsw i64 %10, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %11 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp4 = icmp eq %struct.obj* %11, null
  br i1 %cmp4, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %for.end
  br label %cond.end.10

cond.false.7:                                     ; preds = %for.end
  %12 = load %struct.obj*, %struct.obj** %l, align 8
  %type8 = getelementptr inbounds %struct.obj, %struct.obj* %12, i32 0, i32 1
  %13 = load i16, i16* %type8, align 2
  %conv9 = sext i16 %13 to i32
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.7, %cond.true.6
  %cond11 = phi i32 [ 0, %cond.true.6 ], [ %conv9, %cond.false.7 ]
  %cmp12 = icmp eq i32 %cond11, 1
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.10
  %14 = load %struct.obj*, %struct.obj** %l, align 8
  %storage_as14 = getelementptr inbounds %struct.obj, %struct.obj* %14, i32 0, i32 2
  %cons15 = bitcast %union.anon* %storage_as14 to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons15, i32 0, i32 0
  %15 = load %struct.obj*, %struct.obj** %car, align 8
  store %struct.obj* %15, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %cond.end.10
  %16 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %cmp16 = icmp ne %struct.obj* %16, null
  br i1 %cmp16, label %if.then.18, label %if.else.20

if.then.18:                                       ; preds = %if.else
  %17 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %call19 = call %struct.obj* @lapply(%struct.obj* %17, %struct.obj* null)
  store %struct.obj* %call19, %struct.obj** %retval
  br label %return

if.else.20:                                       ; preds = %if.else
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else.20, %if.then.18, %if.then
  %18 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %18
}

declare %struct.obj* @lapply(%struct.obj*, %struct.obj*) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @larg_default(%struct.obj* %li, %struct.obj* %x, %struct.obj* %dval) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %li.addr = alloca %struct.obj*, align 8
  %x.addr = alloca %struct.obj*, align 8
  %dval.addr = alloca %struct.obj*, align 8
  %l = alloca %struct.obj*, align 8
  %elem = alloca %struct.obj*, align 8
  %j = alloca i64, align 8
  %n = alloca i64, align 8
  store %struct.obj* %li, %struct.obj** %li.addr, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  store %struct.obj* %dval, %struct.obj** %dval.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %li.addr, align 8
  store %struct.obj* %0, %struct.obj** %l, align 8
  store i64 0, i64* %j, align 8
  %1 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call i64 @get_c_long(%struct.obj* %1)
  store i64 %call, i64* %n, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.14, %entry
  %2 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp = icmp ne %struct.obj* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.obj*, %struct.obj** %l, align 8
  %call1 = call %struct.obj* @car(%struct.obj* %3)
  store %struct.obj* %call1, %struct.obj** %elem, align 8
  %4 = load %struct.obj*, %struct.obj** %elem, align 8
  %cmp2 = icmp eq %struct.obj* %4, null
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %5 = load %struct.obj*, %struct.obj** %elem, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %5, i32 0, i32 1
  %6 = load i16, i16* %type, align 2
  %conv = sext i16 %6 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp3 = icmp eq i32 %cond, 13
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end
  %7 = load %struct.obj*, %struct.obj** %elem, align 8
  %call5 = call i8* @get_c_string(%struct.obj* %7)
  %8 = load i8, i8* %call5, align 1
  %conv6 = sext i8 %8 to i32
  %call7 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i32 0, i32 0), i32 %conv6) #6
  %tobool = icmp ne i8* %call7, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct.obj*, %struct.obj** %l, align 8
  %call8 = call %struct.obj* @cdr(%struct.obj* %9)
  store %struct.obj* %call8, %struct.obj** %l, align 8
  br label %if.end.14

if.else:                                          ; preds = %land.lhs.true, %cond.end
  %10 = load i64, i64* %j, align 8
  %11 = load i64, i64* %n, align 8
  %cmp9 = icmp eq i64 %10, %11
  br i1 %cmp9, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else
  %12 = load %struct.obj*, %struct.obj** %elem, align 8
  store %struct.obj* %12, %struct.obj** %retval
  br label %return

if.else.12:                                       ; preds = %if.else
  %13 = load %struct.obj*, %struct.obj** %l, align 8
  %call13 = call %struct.obj* @cdr(%struct.obj* %13)
  store %struct.obj* %call13, %struct.obj** %l, align 8
  %14 = load i64, i64* %j, align 8
  %inc = add nsw i64 %14, 1
  store i64 %inc, i64* %j, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.12
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load %struct.obj*, %struct.obj** %dval.addr, align 8
  store %struct.obj* %15, %struct.obj** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.11
  %16 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %16
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lkey_default(%struct.obj* %li, %struct.obj* %key, %struct.obj* %dval) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %li.addr = alloca %struct.obj*, align 8
  %key.addr = alloca %struct.obj*, align 8
  %dval.addr = alloca %struct.obj*, align 8
  %l = alloca %struct.obj*, align 8
  %elem = alloca %struct.obj*, align 8
  %ckey = alloca i8*, align 8
  %celem = alloca i8*, align 8
  %n = alloca i64, align 8
  store %struct.obj* %li, %struct.obj** %li.addr, align 8
  store %struct.obj* %key, %struct.obj** %key.addr, align 8
  store %struct.obj* %dval, %struct.obj** %dval.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %li.addr, align 8
  store %struct.obj* %0, %struct.obj** %l, align 8
  %1 = load %struct.obj*, %struct.obj** %key.addr, align 8
  %call = call i8* @get_c_string(%struct.obj* %1)
  store i8* %call, i8** %ckey, align 8
  %2 = load i8*, i8** %ckey, align 8
  %call1 = call i64 @strlen(i8* %2) #6
  store i64 %call1, i64* %n, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp = icmp ne %struct.obj* %3, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.obj*, %struct.obj** %l, align 8
  %call2 = call %struct.obj* @car(%struct.obj* %4)
  store %struct.obj* %call2, %struct.obj** %elem, align 8
  %5 = load %struct.obj*, %struct.obj** %elem, align 8
  %cmp3 = icmp eq %struct.obj* %5, null
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %6 = load %struct.obj*, %struct.obj** %elem, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %6, i32 0, i32 1
  %7 = load i16, i16* %type, align 2
  %conv = sext i16 %7 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp4 = icmp eq i32 %cond, 13
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %8 = load %struct.obj*, %struct.obj** %elem, align 8
  %call6 = call i8* @get_c_string(%struct.obj* %8)
  store i8* %call6, i8** %celem, align 8
  %9 = load i8, i8* %call6, align 1
  %conv7 = sext i8 %9 to i32
  %cmp8 = icmp eq i32 %conv7, 58
  br i1 %cmp8, label %land.lhs.true.10, label %if.end

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %10 = load i8*, i8** %celem, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8*, i8** %ckey, align 8
  %12 = load i64, i64* %n, align 8
  %call11 = call i32 @strncmp(i8* %arrayidx, i8* %11, i64 %12) #6
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %land.lhs.true.14, label %if.end

land.lhs.true.14:                                 ; preds = %land.lhs.true.10
  %13 = load i64, i64* %n, align 8
  %add = add nsw i64 %13, 1
  %14 = load i8*, i8** %celem, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %14, i64 %add
  %15 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %15 to i32
  %cmp17 = icmp eq i32 %conv16, 61
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.14
  %16 = load i64, i64* %n, align 8
  %add19 = add nsw i64 %16, 2
  %17 = load i8*, i8** %celem, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %17, i64 %add19
  %call21 = call i64 @strlen(i8* %arrayidx20) #6
  %18 = load i64, i64* %n, align 8
  %add22 = add nsw i64 %18, 2
  %19 = load i8*, i8** %celem, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %19, i64 %add22
  %call24 = call %struct.obj* @strcons(i64 %call21, i8* %arrayidx23)
  store %struct.obj* %call24, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.14, %land.lhs.true.10, %land.lhs.true, %cond.end
  %20 = load %struct.obj*, %struct.obj** %l, align 8
  %call25 = call %struct.obj* @cdr(%struct.obj* %20)
  store %struct.obj* %call25, %struct.obj** %l, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %21 = load %struct.obj*, %struct.obj** %dval.addr, align 8
  store %struct.obj* %21, %struct.obj** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %22 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %22
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define %struct.obj* @llist(%struct.obj* %l) #0 {
entry:
  %l.addr = alloca %struct.obj*, align 8
  store %struct.obj* %l, %struct.obj** %l.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %l.addr, align 8
  ret %struct.obj* %0
}

; Function Attrs: nounwind uwtable
define %struct.obj* @writes1(%struct._IO_FILE* %f, %struct.obj* %l) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %l.addr = alloca %struct.obj*, align 8
  %v = alloca %struct.obj*, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store %struct.obj* %l, %struct.obj** %l.addr, align 8
  %0 = bitcast %struct.obj** %v to i8*
  %1 = load i8*, i8** @stack_limit_ptr, align 8
  %cmp = icmp ult i8* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.obj** %v to i8*
  call void @err_stack(i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.obj*, %struct.obj** %l.addr, align 8
  store %struct.obj* %3, %struct.obj** %v, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load %struct.obj*, %struct.obj** %v, align 8
  %cmp1 = icmp eq %struct.obj* %4, null
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %5 = load %struct.obj*, %struct.obj** %v, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %5, i32 0, i32 1
  %6 = load i16, i16* %type, align 2
  %conv = sext i16 %6 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp2 = icmp eq i32 %cond, 1
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %8 = load %struct.obj*, %struct.obj** %v, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %8, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 0
  %9 = load %struct.obj*, %struct.obj** %car, align 8
  %call = call %struct.obj* @writes1(%struct._IO_FILE* %7, %struct.obj* %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load %struct.obj*, %struct.obj** %v, align 8
  %storage_as4 = getelementptr inbounds %struct.obj, %struct.obj* %10, i32 0, i32 2
  %cons5 = bitcast %union.anon* %storage_as4 to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons5, i32 0, i32 1
  %11 = load %struct.obj*, %struct.obj** %cdr, align 8
  store %struct.obj* %11, %struct.obj** %v, align 8
  br label %for.cond

for.end:                                          ; preds = %cond.end
  %12 = load %struct.obj*, %struct.obj** %v, align 8
  %cmp6 = icmp eq %struct.obj* %12, null
  br i1 %cmp6, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %for.end
  br label %cond.end.12

cond.false.9:                                     ; preds = %for.end
  %13 = load %struct.obj*, %struct.obj** %v, align 8
  %type10 = getelementptr inbounds %struct.obj, %struct.obj* %13, i32 0, i32 1
  %14 = load i16, i16* %type10, align 2
  %conv11 = sext i16 %14 to i32
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.9, %cond.true.8
  %cond13 = phi i32 [ 0, %cond.true.8 ], [ %conv11, %cond.false.9 ]
  switch i32 %cond13, label %sw.default [
    i32 0, label %sw.bb
    i32 3, label %sw.bb.14
    i32 13, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %cond.end.12
  br label %sw.epilog

sw.bb.14:                                         ; preds = %cond.end.12, %cond.end.12
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %16 = load %struct.obj*, %struct.obj** %v, align 8
  %call15 = call i8* @get_c_string(%struct.obj* %16)
  call void @fput_st(%struct._IO_FILE* %15, i8* %call15)
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end.12
  %17 = load %struct.obj*, %struct.obj** %v, align 8
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call16 = call %struct.obj* @lprin1f(%struct.obj* %17, %struct._IO_FILE* %18)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.14, %sw.bb
  ret %struct.obj* null
}

declare void @fput_st(%struct._IO_FILE*, i8*) #1

declare %struct.obj* @lprin1f(%struct.obj*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @writes(%struct.obj* %args) #0 {
entry:
  %args.addr = alloca %struct.obj*, align 8
  store %struct.obj* %args, %struct.obj** %args.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call = call %struct.obj* @car(%struct.obj* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call %struct._IO_FILE* @get_c_file(%struct.obj* %call, %struct._IO_FILE* %1)
  %2 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call2 = call %struct.obj* @cdr(%struct.obj* %2)
  %call3 = call %struct.obj* @writes1(%struct._IO_FILE* %call1, %struct.obj* %call2)
  ret %struct.obj* %call3
}

; Function Attrs: nounwind uwtable
define %struct.obj* @last(%struct.obj* %l) #0 {
entry:
  %l.addr = alloca %struct.obj*, align 8
  %v1 = alloca %struct.obj*, align 8
  %v2 = alloca %struct.obj*, align 8
  store %struct.obj* %l, %struct.obj** %l.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %l.addr, align 8
  store %struct.obj* %0, %struct.obj** %v1, align 8
  %1 = load %struct.obj*, %struct.obj** %v1, align 8
  %cmp = icmp eq %struct.obj* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct.obj*, %struct.obj** %v1, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %2, i32 0, i32 1
  %3 = load i16, i16* %type, align 2
  %conv = sext i16 %3 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp eq i32 %cond, 1
  br i1 %cmp1, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.end
  %4 = load %struct.obj*, %struct.obj** %v1, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 1
  %5 = load %struct.obj*, %struct.obj** %cdr, align 8
  br label %cond.end.5

cond.false.4:                                     ; preds = %cond.end
  %6 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.76, i32 0, i32 0), %struct.obj* %6)
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.false.4, %cond.true.3
  %cond6 = phi %struct.obj* [ %5, %cond.true.3 ], [ %call, %cond.false.4 ]
  store %struct.obj* %cond6, %struct.obj** %v2, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end.5
  %7 = load %struct.obj*, %struct.obj** %v2, align 8
  %cmp7 = icmp eq %struct.obj* %7, null
  br i1 %cmp7, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %while.cond
  br label %cond.end.13

cond.false.10:                                    ; preds = %while.cond
  %8 = load %struct.obj*, %struct.obj** %v2, align 8
  %type11 = getelementptr inbounds %struct.obj, %struct.obj* %8, i32 0, i32 1
  %9 = load i16, i16* %type11, align 2
  %conv12 = sext i16 %9 to i32
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.10, %cond.true.9
  %cond14 = phi i32 [ 0, %cond.true.9 ], [ %conv12, %cond.false.10 ]
  %cmp15 = icmp eq i32 %cond14, 1
  br i1 %cmp15, label %while.body, label %while.end

while.body:                                       ; preds = %cond.end.13
  %10 = load %struct.obj*, %struct.obj** %v2, align 8
  store %struct.obj* %10, %struct.obj** %v1, align 8
  %11 = load %struct.obj*, %struct.obj** %v2, align 8
  %storage_as17 = getelementptr inbounds %struct.obj, %struct.obj* %11, i32 0, i32 2
  %cons18 = bitcast %union.anon* %storage_as17 to %struct.anon*
  %cdr19 = getelementptr inbounds %struct.anon, %struct.anon* %cons18, i32 0, i32 1
  %12 = load %struct.obj*, %struct.obj** %cdr19, align 8
  store %struct.obj* %12, %struct.obj** %v2, align 8
  br label %while.cond

while.end:                                        ; preds = %cond.end.13
  %13 = load %struct.obj*, %struct.obj** %v1, align 8
  ret %struct.obj* %13
}

; Function Attrs: nounwind uwtable
define %struct.obj* @butlast(%struct.obj* %l) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %l.addr = alloca %struct.obj*, align 8
  store %struct.obj* %l, %struct.obj** %l.addr, align 8
  %0 = bitcast %struct.obj** %l.addr to i8*
  %1 = load i8*, i8** @stack_limit_ptr, align 8
  %cmp = icmp ult i8* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.obj** %l.addr to i8*
  call void @err_stack(i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %cmp1 = icmp eq %struct.obj* %3, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.77, i32 0, i32 0), %struct.obj* %4)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %5 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %cmp4 = icmp eq %struct.obj* %5, null
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.3
  br label %cond.end

cond.false:                                       ; preds = %if.end.3
  %6 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %6, i32 0, i32 1
  %7 = load i16, i16* %type, align 2
  %conv = sext i16 %7 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp5 = icmp eq i32 %cond, 1
  br i1 %cmp5, label %if.then.7, label %if.end.18

if.then.7:                                        ; preds = %cond.end
  %8 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %8, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 1
  %9 = load %struct.obj*, %struct.obj** %cdr, align 8
  %cmp8 = icmp eq %struct.obj* %9, null
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then.7
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %if.then.7
  %10 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %storage_as11 = getelementptr inbounds %struct.obj, %struct.obj* %10, i32 0, i32 2
  %cons12 = bitcast %union.anon* %storage_as11 to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons12, i32 0, i32 0
  %11 = load %struct.obj*, %struct.obj** %car, align 8
  %12 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %storage_as13 = getelementptr inbounds %struct.obj, %struct.obj* %12, i32 0, i32 2
  %cons14 = bitcast %union.anon* %storage_as13 to %struct.anon*
  %cdr15 = getelementptr inbounds %struct.anon, %struct.anon* %cons14, i32 0, i32 1
  %13 = load %struct.obj*, %struct.obj** %cdr15, align 8
  %call16 = call %struct.obj* @butlast(%struct.obj* %13)
  %call17 = call %struct.obj* @cons(%struct.obj* %11, %struct.obj* %call16)
  store %struct.obj* %call17, %struct.obj** %retval
  br label %return

if.end.18:                                        ; preds = %cond.end
  %14 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %call19 = call %struct.obj* @err(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i32 0, i32 0), %struct.obj* %14)
  store %struct.obj* %call19, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.else, %if.then.10
  %15 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %15
}

; Function Attrs: nounwind uwtable
define %struct.obj* @nconc(%struct.obj* %a, %struct.obj* %b) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %a.addr = alloca %struct.obj*, align 8
  %b.addr = alloca %struct.obj*, align 8
  store %struct.obj* %a, %struct.obj** %a.addr, align 8
  store %struct.obj* %b, %struct.obj** %b.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %b.addr, align 8
  store %struct.obj* %1, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %call = call %struct.obj* @last(%struct.obj* %2)
  %3 = load %struct.obj*, %struct.obj** %b.addr, align 8
  %call1 = call %struct.obj* @setcdr(%struct.obj* %call, %struct.obj* %3)
  %4 = load %struct.obj*, %struct.obj** %a.addr, align 8
  store %struct.obj* %4, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %5
}

; Function Attrs: nounwind uwtable
define %struct.obj* @funcall1(%struct.obj* %fcn, %struct.obj* %a1) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %fcn.addr = alloca %struct.obj*, align 8
  %a1.addr = alloca %struct.obj*, align 8
  store %struct.obj* %fcn, %struct.obj** %fcn.addr, align 8
  store %struct.obj* %a1, %struct.obj** %a1.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  switch i32 %cond, label %sw.default [
    i32 5, label %sw.bb
    i32 11, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %cond.end
  %3 = bitcast %struct.obj** %fcn.addr to i8*
  %4 = load i8*, i8** @stack_limit_ptr, align 8
  %cmp1 = icmp ult i8* %3, %4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %5 = bitcast %struct.obj** %fcn.addr to i8*
  call void @err_stack(i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %6 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %6, i32 0, i32 2
  %subr1 = bitcast %union.anon* %storage_as to %struct.anon.3*
  %f = getelementptr inbounds %struct.anon.3, %struct.anon.3* %subr1, i32 0, i32 1
  %f3 = bitcast {}** %f to %struct.obj* (%struct.obj*)**
  %7 = load %struct.obj* (%struct.obj*)*, %struct.obj* (%struct.obj*)** %f3, align 8
  %8 = load %struct.obj*, %struct.obj** %a1.addr, align 8
  %call = call %struct.obj* %7(%struct.obj* %8)
  store %struct.obj* %call, %struct.obj** %retval
  br label %return

sw.bb.4:                                          ; preds = %cond.end
  %9 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %storage_as5 = getelementptr inbounds %struct.obj, %struct.obj* %9, i32 0, i32 2
  %closure = bitcast %union.anon* %storage_as5 to %struct.anon.10*
  %code = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure, i32 0, i32 1
  %10 = load %struct.obj*, %struct.obj** %code, align 8
  %cmp6 = icmp eq %struct.obj* %10, null
  br i1 %cmp6, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %sw.bb.4
  br label %cond.end.15

cond.false.9:                                     ; preds = %sw.bb.4
  %11 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %storage_as10 = getelementptr inbounds %struct.obj, %struct.obj* %11, i32 0, i32 2
  %closure11 = bitcast %union.anon* %storage_as10 to %struct.anon.10*
  %code12 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure11, i32 0, i32 1
  %12 = load %struct.obj*, %struct.obj** %code12, align 8
  %type13 = getelementptr inbounds %struct.obj, %struct.obj* %12, i32 0, i32 1
  %13 = load i16, i16* %type13, align 2
  %conv14 = sext i16 %13 to i32
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.9, %cond.true.8
  %cond16 = phi i32 [ 0, %cond.true.8 ], [ %conv14, %cond.false.9 ]
  %cmp17 = icmp eq i32 %cond16, 6
  br i1 %cmp17, label %if.then.19, label %if.end.32

if.then.19:                                       ; preds = %cond.end.15
  %14 = bitcast %struct.obj** %fcn.addr to i8*
  %15 = load i8*, i8** @stack_limit_ptr, align 8
  %cmp20 = icmp ult i8* %14, %15
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.19
  %16 = bitcast %struct.obj** %fcn.addr to i8*
  call void @err_stack(i8* %16)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.then.19
  %17 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %storage_as24 = getelementptr inbounds %struct.obj, %struct.obj* %17, i32 0, i32 2
  %closure25 = bitcast %union.anon* %storage_as24 to %struct.anon.10*
  %code26 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure25, i32 0, i32 1
  %18 = load %struct.obj*, %struct.obj** %code26, align 8
  %storage_as27 = getelementptr inbounds %struct.obj, %struct.obj* %18, i32 0, i32 2
  %subr2 = bitcast %union.anon* %storage_as27 to %struct.anon.4*
  %f28 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %subr2, i32 0, i32 1
  %19 = load %struct.obj* (%struct.obj*, %struct.obj*)*, %struct.obj* (%struct.obj*, %struct.obj*)** %f28, align 8
  %20 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %storage_as29 = getelementptr inbounds %struct.obj, %struct.obj* %20, i32 0, i32 2
  %closure30 = bitcast %union.anon* %storage_as29 to %struct.anon.10*
  %env = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure30, i32 0, i32 0
  %21 = load %struct.obj*, %struct.obj** %env, align 8
  %22 = load %struct.obj*, %struct.obj** %a1.addr, align 8
  %call31 = call %struct.obj* %19(%struct.obj* %21, %struct.obj* %22)
  store %struct.obj* %call31, %struct.obj** %retval
  br label %return

if.end.32:                                        ; preds = %cond.end.15
  br label %sw.default

sw.default:                                       ; preds = %cond.end, %if.end.32
  %23 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %24 = load %struct.obj*, %struct.obj** %a1.addr, align 8
  %call33 = call %struct.obj* @cons(%struct.obj* %24, %struct.obj* null)
  %call34 = call %struct.obj* @lapply(%struct.obj* %23, %struct.obj* %call33)
  store %struct.obj* %call34, %struct.obj** %retval
  br label %return

return:                                           ; preds = %sw.default, %if.end.23, %if.end
  %25 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %25
}

; Function Attrs: nounwind uwtable
define %struct.obj* @funcall2(%struct.obj* %fcn, %struct.obj* %a1, %struct.obj* %a2) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %fcn.addr = alloca %struct.obj*, align 8
  %a1.addr = alloca %struct.obj*, align 8
  %a2.addr = alloca %struct.obj*, align 8
  store %struct.obj* %fcn, %struct.obj** %fcn.addr, align 8
  store %struct.obj* %a1, %struct.obj** %a1.addr, align 8
  store %struct.obj* %a2, %struct.obj** %a2.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  switch i32 %cond, label %sw.default [
    i32 6, label %sw.bb
    i32 21, label %sw.bb
  ]

sw.bb:                                            ; preds = %cond.end, %cond.end
  %3 = bitcast %struct.obj** %fcn.addr to i8*
  %4 = load i8*, i8** @stack_limit_ptr, align 8
  %cmp1 = icmp ult i8* %3, %4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %5 = bitcast %struct.obj** %fcn.addr to i8*
  call void @err_stack(i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %6 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %6, i32 0, i32 2
  %subr2 = bitcast %union.anon* %storage_as to %struct.anon.4*
  %f = getelementptr inbounds %struct.anon.4, %struct.anon.4* %subr2, i32 0, i32 1
  %7 = load %struct.obj* (%struct.obj*, %struct.obj*)*, %struct.obj* (%struct.obj*, %struct.obj*)** %f, align 8
  %8 = load %struct.obj*, %struct.obj** %a1.addr, align 8
  %9 = load %struct.obj*, %struct.obj** %a2.addr, align 8
  %call = call %struct.obj* %7(%struct.obj* %8, %struct.obj* %9)
  store %struct.obj* %call, %struct.obj** %retval
  br label %return

sw.default:                                       ; preds = %cond.end
  %10 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %11 = load %struct.obj*, %struct.obj** %a1.addr, align 8
  %12 = load %struct.obj*, %struct.obj** %a2.addr, align 8
  %call3 = call %struct.obj* @cons(%struct.obj* %12, %struct.obj* null)
  %call4 = call %struct.obj* @cons(%struct.obj* %11, %struct.obj* %call3)
  %call5 = call %struct.obj* @lapply(%struct.obj* %10, %struct.obj* %call4)
  store %struct.obj* %call5, %struct.obj** %retval
  br label %return

return:                                           ; preds = %sw.default, %if.end
  %13 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %13
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lqsort(%struct.obj* %l, %struct.obj* %f, %struct.obj* %g) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %l.addr = alloca %struct.obj*, align 8
  %f.addr = alloca %struct.obj*, align 8
  %g.addr = alloca %struct.obj*, align 8
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %v = alloca %struct.obj*, align 8
  %mark = alloca %struct.obj*, align 8
  %less = alloca %struct.obj*, align 8
  %notless = alloca %struct.obj*, align 8
  store %struct.obj* %l, %struct.obj** %l.addr, align 8
  store %struct.obj* %f, %struct.obj** %f.addr, align 8
  store %struct.obj* %g, %struct.obj** %g.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %l.addr, align 8
  store %struct.obj* %0, %struct.obj** %v, align 8
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.obj*, %struct.obj** %v, align 8
  %cmp = icmp eq %struct.obj* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %2 = load %struct.obj*, %struct.obj** %v, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %2, i32 0, i32 1
  %3 = load i16, i16* %type, align 2
  %conv = sext i16 %3 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp eq i32 %cond, 1
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load %struct.obj*, %struct.obj** %v, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 1
  %5 = load %struct.obj*, %struct.obj** %cdr, align 8
  store %struct.obj* %5, %struct.obj** %v, align 8
  %6 = load i32, i32* %n, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %cond.end
  %7 = load %struct.obj*, %struct.obj** %v, align 8
  %cmp3 = icmp ne %struct.obj* %7, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %8 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.79, i32 0, i32 0), %struct.obj* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %9 = load i32, i32* %n, align 4
  %cmp5 = icmp eq i32 %9, 0
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %call9 = call i32 @rand() #2
  %10 = load i32, i32* %n, align 4
  %rem = srem i32 %call9, %10
  store i32 %rem, i32* %j, align 4
  %11 = load %struct.obj*, %struct.obj** %l.addr, align 8
  store %struct.obj* %11, %struct.obj** %v, align 8
  store i32 0, i32* %n, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.17, %if.end.8
  %12 = load i32, i32* %n, align 4
  %13 = load i32, i32* %j, align 4
  %cmp11 = icmp slt i32 %12, %13
  br i1 %cmp11, label %for.body.13, label %for.end.19

for.body.13:                                      ; preds = %for.cond.10
  %14 = load %struct.obj*, %struct.obj** %v, align 8
  %storage_as14 = getelementptr inbounds %struct.obj, %struct.obj* %14, i32 0, i32 2
  %cons15 = bitcast %union.anon* %storage_as14 to %struct.anon*
  %cdr16 = getelementptr inbounds %struct.anon, %struct.anon* %cons15, i32 0, i32 1
  %15 = load %struct.obj*, %struct.obj** %cdr16, align 8
  store %struct.obj* %15, %struct.obj** %v, align 8
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.body.13
  %16 = load i32, i32* %n, align 4
  %inc18 = add nsw i32 %16, 1
  store i32 %inc18, i32* %n, align 4
  br label %for.cond.10

for.end.19:                                       ; preds = %for.cond.10
  %17 = load %struct.obj*, %struct.obj** %v, align 8
  %storage_as20 = getelementptr inbounds %struct.obj, %struct.obj* %17, i32 0, i32 2
  %cons21 = bitcast %union.anon* %storage_as20 to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons21, i32 0, i32 0
  %18 = load %struct.obj*, %struct.obj** %car, align 8
  store %struct.obj* %18, %struct.obj** %mark, align 8
  store %struct.obj* null, %struct.obj** %less, align 8
  store %struct.obj* null, %struct.obj** %notless, align 8
  %19 = load %struct.obj*, %struct.obj** %l.addr, align 8
  store %struct.obj* %19, %struct.obj** %v, align 8
  store i32 0, i32* %n, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.63, %for.end.19
  %20 = load %struct.obj*, %struct.obj** %v, align 8
  %cmp23 = icmp ne %struct.obj* %20, null
  br i1 %cmp23, label %for.body.25, label %for.end.68

for.body.25:                                      ; preds = %for.cond.22
  %21 = load i32, i32* %j, align 4
  %22 = load i32, i32* %n, align 4
  %cmp26 = icmp ne i32 %21, %22
  br i1 %cmp26, label %if.then.28, label %if.end.62

if.then.28:                                       ; preds = %for.body.25
  %23 = load %struct.obj*, %struct.obj** %f.addr, align 8
  %24 = load %struct.obj*, %struct.obj** %g.addr, align 8
  %cmp29 = icmp eq %struct.obj* %24, null
  br i1 %cmp29, label %cond.true.31, label %cond.false.35

cond.true.31:                                     ; preds = %if.then.28
  %25 = load %struct.obj*, %struct.obj** %v, align 8
  %storage_as32 = getelementptr inbounds %struct.obj, %struct.obj* %25, i32 0, i32 2
  %cons33 = bitcast %union.anon* %storage_as32 to %struct.anon*
  %car34 = getelementptr inbounds %struct.anon, %struct.anon* %cons33, i32 0, i32 0
  %26 = load %struct.obj*, %struct.obj** %car34, align 8
  br label %cond.end.40

cond.false.35:                                    ; preds = %if.then.28
  %27 = load %struct.obj*, %struct.obj** %g.addr, align 8
  %28 = load %struct.obj*, %struct.obj** %v, align 8
  %storage_as36 = getelementptr inbounds %struct.obj, %struct.obj* %28, i32 0, i32 2
  %cons37 = bitcast %union.anon* %storage_as36 to %struct.anon*
  %car38 = getelementptr inbounds %struct.anon, %struct.anon* %cons37, i32 0, i32 0
  %29 = load %struct.obj*, %struct.obj** %car38, align 8
  %call39 = call %struct.obj* @funcall1(%struct.obj* %27, %struct.obj* %29)
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.35, %cond.true.31
  %cond41 = phi %struct.obj* [ %26, %cond.true.31 ], [ %call39, %cond.false.35 ]
  %30 = load %struct.obj*, %struct.obj** %g.addr, align 8
  %cmp42 = icmp eq %struct.obj* %30, null
  br i1 %cmp42, label %cond.true.44, label %cond.false.45

cond.true.44:                                     ; preds = %cond.end.40
  %31 = load %struct.obj*, %struct.obj** %mark, align 8
  br label %cond.end.47

cond.false.45:                                    ; preds = %cond.end.40
  %32 = load %struct.obj*, %struct.obj** %g.addr, align 8
  %33 = load %struct.obj*, %struct.obj** %mark, align 8
  %call46 = call %struct.obj* @funcall1(%struct.obj* %32, %struct.obj* %33)
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.45, %cond.true.44
  %cond48 = phi %struct.obj* [ %31, %cond.true.44 ], [ %call46, %cond.false.45 ]
  %call49 = call %struct.obj* @funcall2(%struct.obj* %23, %struct.obj* %cond41, %struct.obj* %cond48)
  %cmp50 = icmp ne %struct.obj* %call49, null
  br i1 %cmp50, label %if.then.52, label %if.else

if.then.52:                                       ; preds = %cond.end.47
  %34 = load %struct.obj*, %struct.obj** %v, align 8
  %storage_as53 = getelementptr inbounds %struct.obj, %struct.obj* %34, i32 0, i32 2
  %cons54 = bitcast %union.anon* %storage_as53 to %struct.anon*
  %car55 = getelementptr inbounds %struct.anon, %struct.anon* %cons54, i32 0, i32 0
  %35 = load %struct.obj*, %struct.obj** %car55, align 8
  %36 = load %struct.obj*, %struct.obj** %less, align 8
  %call56 = call %struct.obj* @cons(%struct.obj* %35, %struct.obj* %36)
  store %struct.obj* %call56, %struct.obj** %less, align 8
  br label %if.end.61

if.else:                                          ; preds = %cond.end.47
  %37 = load %struct.obj*, %struct.obj** %v, align 8
  %storage_as57 = getelementptr inbounds %struct.obj, %struct.obj* %37, i32 0, i32 2
  %cons58 = bitcast %union.anon* %storage_as57 to %struct.anon*
  %car59 = getelementptr inbounds %struct.anon, %struct.anon* %cons58, i32 0, i32 0
  %38 = load %struct.obj*, %struct.obj** %car59, align 8
  %39 = load %struct.obj*, %struct.obj** %notless, align 8
  %call60 = call %struct.obj* @cons(%struct.obj* %38, %struct.obj* %39)
  store %struct.obj* %call60, %struct.obj** %notless, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.else, %if.then.52
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %for.body.25
  br label %for.inc.63

for.inc.63:                                       ; preds = %if.end.62
  %40 = load %struct.obj*, %struct.obj** %v, align 8
  %storage_as64 = getelementptr inbounds %struct.obj, %struct.obj* %40, i32 0, i32 2
  %cons65 = bitcast %union.anon* %storage_as64 to %struct.anon*
  %cdr66 = getelementptr inbounds %struct.anon, %struct.anon* %cons65, i32 0, i32 1
  %41 = load %struct.obj*, %struct.obj** %cdr66, align 8
  store %struct.obj* %41, %struct.obj** %v, align 8
  %42 = load i32, i32* %n, align 4
  %inc67 = add nsw i32 %42, 1
  store i32 %inc67, i32* %n, align 4
  br label %for.cond.22

for.end.68:                                       ; preds = %for.cond.22
  %43 = load %struct.obj*, %struct.obj** %less, align 8
  %44 = load %struct.obj*, %struct.obj** %f.addr, align 8
  %45 = load %struct.obj*, %struct.obj** %g.addr, align 8
  %call69 = call %struct.obj* @lqsort(%struct.obj* %43, %struct.obj* %44, %struct.obj* %45)
  %46 = load %struct.obj*, %struct.obj** %mark, align 8
  %47 = load %struct.obj*, %struct.obj** %notless, align 8
  %48 = load %struct.obj*, %struct.obj** %f.addr, align 8
  %49 = load %struct.obj*, %struct.obj** %g.addr, align 8
  %call70 = call %struct.obj* @lqsort(%struct.obj* %47, %struct.obj* %48, %struct.obj* %49)
  %call71 = call %struct.obj* @cons(%struct.obj* %46, %struct.obj* %call70)
  %call72 = call %struct.obj* @nconc(%struct.obj* %call69, %struct.obj* %call71)
  store %struct.obj* %call72, %struct.obj** %retval
  br label %return

return:                                           ; preds = %for.end.68, %if.then.7
  %50 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %50
}

; Function Attrs: nounwind
declare i32 @rand() #3

; Function Attrs: nounwind uwtable
define %struct.obj* @string_lessp(%struct.obj* %s1, %struct.obj* %s2) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %s1.addr = alloca %struct.obj*, align 8
  %s2.addr = alloca %struct.obj*, align 8
  store %struct.obj* %s1, %struct.obj** %s1.addr, align 8
  store %struct.obj* %s2, %struct.obj** %s2.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %s1.addr, align 8
  %call = call i8* @get_c_string(%struct.obj* %0)
  %1 = load %struct.obj*, %struct.obj** %s2.addr, align 8
  %call1 = call i8* @get_c_string(%struct.obj* %1)
  %call2 = call i32 @strcmp(i8* %call, i8* %call1) #6
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.obj*, %struct.obj** @sym_t, align 8
  store %struct.obj* %2, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %entry
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %3
}

; Function Attrs: nounwind uwtable
define %struct.obj* @benchmark_funcall1(%struct.obj* %ln, %struct.obj* %f, %struct.obj* %a1) #0 {
entry:
  %ln.addr = alloca %struct.obj*, align 8
  %f.addr = alloca %struct.obj*, align 8
  %a1.addr = alloca %struct.obj*, align 8
  %j = alloca i64, align 8
  %n = alloca i64, align 8
  %value = alloca %struct.obj*, align 8
  store %struct.obj* %ln, %struct.obj** %ln.addr, align 8
  store %struct.obj* %f, %struct.obj** %f.addr, align 8
  store %struct.obj* %a1, %struct.obj** %a1.addr, align 8
  store %struct.obj* null, %struct.obj** %value, align 8
  %0 = load %struct.obj*, %struct.obj** %ln.addr, align 8
  %call = call i64 @get_c_long(%struct.obj* %0)
  store i64 %call, i64* %n, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %j, align 8
  %2 = load i64, i64* %n, align 8
  %cmp = icmp slt i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.obj*, %struct.obj** %f.addr, align 8
  %4 = load %struct.obj*, %struct.obj** %a1.addr, align 8
  %call1 = call %struct.obj* @funcall1(%struct.obj* %3, %struct.obj* %4)
  store %struct.obj* %call1, %struct.obj** %value, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %j, align 8
  %inc = add nsw i64 %5, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load %struct.obj*, %struct.obj** %value, align 8
  ret %struct.obj* %6
}

; Function Attrs: nounwind uwtable
define %struct.obj* @benchmark_funcall2(%struct.obj* %l) #0 {
entry:
  %l.addr = alloca %struct.obj*, align 8
  %j = alloca i64, align 8
  %n = alloca i64, align 8
  %ln = alloca %struct.obj*, align 8
  %f = alloca %struct.obj*, align 8
  %a1 = alloca %struct.obj*, align 8
  %a2 = alloca %struct.obj*, align 8
  %value = alloca %struct.obj*, align 8
  store %struct.obj* %l, %struct.obj** %l.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %call = call %struct.obj* @car(%struct.obj* %0)
  store %struct.obj* %call, %struct.obj** %ln, align 8
  %1 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %call1 = call %struct.obj* @cdr(%struct.obj* %1)
  %call2 = call %struct.obj* @car(%struct.obj* %call1)
  store %struct.obj* %call2, %struct.obj** %f, align 8
  %2 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %call3 = call %struct.obj* @cdr(%struct.obj* %2)
  %call4 = call %struct.obj* @cdr(%struct.obj* %call3)
  %call5 = call %struct.obj* @car(%struct.obj* %call4)
  store %struct.obj* %call5, %struct.obj** %a1, align 8
  %3 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %call6 = call %struct.obj* @cdr(%struct.obj* %3)
  %call7 = call %struct.obj* @cdr(%struct.obj* %call6)
  %call8 = call %struct.obj* @cdr(%struct.obj* %call7)
  %call9 = call %struct.obj* @car(%struct.obj* %call8)
  store %struct.obj* %call9, %struct.obj** %a2, align 8
  store %struct.obj* null, %struct.obj** %value, align 8
  %4 = load %struct.obj*, %struct.obj** %ln, align 8
  %call10 = call i64 @get_c_long(%struct.obj* %4)
  store i64 %call10, i64* %n, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i64, i64* %j, align 8
  %6 = load i64, i64* %n, align 8
  %cmp = icmp slt i64 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.obj*, %struct.obj** %f, align 8
  %8 = load %struct.obj*, %struct.obj** %a1, align 8
  %9 = load %struct.obj*, %struct.obj** %a2, align 8
  %call11 = call %struct.obj* @funcall2(%struct.obj* %7, %struct.obj* %8, %struct.obj* %9)
  store %struct.obj* %call11, %struct.obj** %value, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i64, i64* %j, align 8
  %inc = add nsw i64 %10, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.obj*, %struct.obj** %value, align 8
  ret %struct.obj* %11
}

; Function Attrs: nounwind uwtable
define %struct.obj* @benchmark_eval(%struct.obj* %ln, %struct.obj* %exp, %struct.obj* %env) #0 {
entry:
  %ln.addr = alloca %struct.obj*, align 8
  %exp.addr = alloca %struct.obj*, align 8
  %env.addr = alloca %struct.obj*, align 8
  %j = alloca i64, align 8
  %n = alloca i64, align 8
  %value = alloca %struct.obj*, align 8
  store %struct.obj* %ln, %struct.obj** %ln.addr, align 8
  store %struct.obj* %exp, %struct.obj** %exp.addr, align 8
  store %struct.obj* %env, %struct.obj** %env.addr, align 8
  store %struct.obj* null, %struct.obj** %value, align 8
  %0 = load %struct.obj*, %struct.obj** %ln.addr, align 8
  %call = call i64 @get_c_long(%struct.obj* %0)
  store i64 %call, i64* %n, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %j, align 8
  %2 = load i64, i64* %n, align 8
  %cmp = icmp slt i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.obj*, %struct.obj** %exp.addr, align 8
  %4 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call1 = call %struct.obj* @leval(%struct.obj* %3, %struct.obj* %4)
  store %struct.obj* %call1, %struct.obj** %value, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %j, align 8
  %inc = add nsw i64 %5, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load %struct.obj*, %struct.obj** %value, align 8
  ret %struct.obj* %6
}

; Function Attrs: nounwind uwtable
define %struct.obj* @mapcar1(%struct.obj* %fcn, %struct.obj* %in) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %fcn.addr = alloca %struct.obj*, align 8
  %in.addr = alloca %struct.obj*, align 8
  %res = alloca %struct.obj*, align 8
  %ptr = alloca %struct.obj*, align 8
  %l = alloca %struct.obj*, align 8
  store %struct.obj* %fcn, %struct.obj** %fcn.addr, align 8
  store %struct.obj* %in, %struct.obj** %in.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %in.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %2 = load %struct.obj*, %struct.obj** %in.addr, align 8
  %call = call %struct.obj* @car(%struct.obj* %2)
  %call1 = call %struct.obj* @funcall1(%struct.obj* %1, %struct.obj* %call)
  %call2 = call %struct.obj* @cons(%struct.obj* %call1, %struct.obj* null)
  store %struct.obj* %call2, %struct.obj** %ptr, align 8
  store %struct.obj* %call2, %struct.obj** %res, align 8
  %3 = load %struct.obj*, %struct.obj** %in.addr, align 8
  %call3 = call %struct.obj* @cdr(%struct.obj* %3)
  store %struct.obj* %call3, %struct.obj** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp4 = icmp eq %struct.obj* %4, null
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %5 = load %struct.obj*, %struct.obj** %l, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %5, i32 0, i32 1
  %6 = load i16, i16* %type, align 2
  %conv = sext i16 %6 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp5 = icmp eq i32 %cond, 1
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %7 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %8 = load %struct.obj*, %struct.obj** %l, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %8, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 0
  %9 = load %struct.obj*, %struct.obj** %car, align 8
  %call7 = call %struct.obj* @funcall1(%struct.obj* %7, %struct.obj* %9)
  %10 = load %struct.obj*, %struct.obj** %ptr, align 8
  %storage_as8 = getelementptr inbounds %struct.obj, %struct.obj* %10, i32 0, i32 2
  %cons9 = bitcast %union.anon* %storage_as8 to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons9, i32 0, i32 1
  %11 = load %struct.obj*, %struct.obj** %cdr, align 8
  %call10 = call %struct.obj* @cons(%struct.obj* %call7, %struct.obj* %11)
  %12 = load %struct.obj*, %struct.obj** %ptr, align 8
  %storage_as11 = getelementptr inbounds %struct.obj, %struct.obj* %12, i32 0, i32 2
  %cons12 = bitcast %union.anon* %storage_as11 to %struct.anon*
  %cdr13 = getelementptr inbounds %struct.anon, %struct.anon* %cons12, i32 0, i32 1
  store %struct.obj* %call10, %struct.obj** %cdr13, align 8
  store %struct.obj* %call10, %struct.obj** %ptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load %struct.obj*, %struct.obj** %l, align 8
  %storage_as14 = getelementptr inbounds %struct.obj, %struct.obj* %13, i32 0, i32 2
  %cons15 = bitcast %union.anon* %storage_as14 to %struct.anon*
  %cdr16 = getelementptr inbounds %struct.anon, %struct.anon* %cons15, i32 0, i32 1
  %14 = load %struct.obj*, %struct.obj** %cdr16, align 8
  store %struct.obj* %14, %struct.obj** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %cond.end
  %15 = load %struct.obj*, %struct.obj** %res, align 8
  store %struct.obj* %15, %struct.obj** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %16 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %16
}

; Function Attrs: nounwind uwtable
define %struct.obj* @mapcar2(%struct.obj* %fcn, %struct.obj* %in1, %struct.obj* %in2) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %fcn.addr = alloca %struct.obj*, align 8
  %in1.addr = alloca %struct.obj*, align 8
  %in2.addr = alloca %struct.obj*, align 8
  %res = alloca %struct.obj*, align 8
  %ptr = alloca %struct.obj*, align 8
  %l1 = alloca %struct.obj*, align 8
  %l2 = alloca %struct.obj*, align 8
  store %struct.obj* %fcn, %struct.obj** %fcn.addr, align 8
  store %struct.obj* %in1, %struct.obj** %in1.addr, align 8
  store %struct.obj* %in2, %struct.obj** %in2.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %in1.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %in2.addr, align 8
  %cmp1 = icmp eq %struct.obj* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %3 = load %struct.obj*, %struct.obj** %in1.addr, align 8
  %call = call %struct.obj* @car(%struct.obj* %3)
  %4 = load %struct.obj*, %struct.obj** %in2.addr, align 8
  %call2 = call %struct.obj* @car(%struct.obj* %4)
  %call3 = call %struct.obj* @funcall2(%struct.obj* %2, %struct.obj* %call, %struct.obj* %call2)
  %call4 = call %struct.obj* @cons(%struct.obj* %call3, %struct.obj* null)
  store %struct.obj* %call4, %struct.obj** %ptr, align 8
  store %struct.obj* %call4, %struct.obj** %res, align 8
  %5 = load %struct.obj*, %struct.obj** %in1.addr, align 8
  %call5 = call %struct.obj* @cdr(%struct.obj* %5)
  store %struct.obj* %call5, %struct.obj** %l1, align 8
  %6 = load %struct.obj*, %struct.obj** %in2.addr, align 8
  %call6 = call %struct.obj* @cdr(%struct.obj* %6)
  store %struct.obj* %call6, %struct.obj** %l2, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load %struct.obj*, %struct.obj** %l1, align 8
  %cmp7 = icmp eq %struct.obj* %7, null
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %8 = load %struct.obj*, %struct.obj** %l1, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %8, i32 0, i32 1
  %9 = load i16, i16* %type, align 2
  %conv = sext i16 %9 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp8 = icmp eq i32 %cond, 1
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end
  %10 = load %struct.obj*, %struct.obj** %l2, align 8
  %cmp10 = icmp eq %struct.obj* %10, null
  br i1 %cmp10, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %land.rhs
  br label %cond.end.16

cond.false.13:                                    ; preds = %land.rhs
  %11 = load %struct.obj*, %struct.obj** %l2, align 8
  %type14 = getelementptr inbounds %struct.obj, %struct.obj* %11, i32 0, i32 1
  %12 = load i16, i16* %type14, align 2
  %conv15 = sext i16 %12 to i32
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.13, %cond.true.12
  %cond17 = phi i32 [ 0, %cond.true.12 ], [ %conv15, %cond.false.13 ]
  %cmp18 = icmp eq i32 %cond17, 1
  br label %land.end

land.end:                                         ; preds = %cond.end.16, %cond.end
  %13 = phi i1 [ false, %cond.end ], [ %cmp18, %cond.end.16 ]
  br i1 %13, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %14 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %15 = load %struct.obj*, %struct.obj** %l1, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %15, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 0
  %16 = load %struct.obj*, %struct.obj** %car, align 8
  %17 = load %struct.obj*, %struct.obj** %l2, align 8
  %storage_as20 = getelementptr inbounds %struct.obj, %struct.obj* %17, i32 0, i32 2
  %cons21 = bitcast %union.anon* %storage_as20 to %struct.anon*
  %car22 = getelementptr inbounds %struct.anon, %struct.anon* %cons21, i32 0, i32 0
  %18 = load %struct.obj*, %struct.obj** %car22, align 8
  %call23 = call %struct.obj* @funcall2(%struct.obj* %14, %struct.obj* %16, %struct.obj* %18)
  %19 = load %struct.obj*, %struct.obj** %ptr, align 8
  %storage_as24 = getelementptr inbounds %struct.obj, %struct.obj* %19, i32 0, i32 2
  %cons25 = bitcast %union.anon* %storage_as24 to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons25, i32 0, i32 1
  %20 = load %struct.obj*, %struct.obj** %cdr, align 8
  %call26 = call %struct.obj* @cons(%struct.obj* %call23, %struct.obj* %20)
  %21 = load %struct.obj*, %struct.obj** %ptr, align 8
  %storage_as27 = getelementptr inbounds %struct.obj, %struct.obj* %21, i32 0, i32 2
  %cons28 = bitcast %union.anon* %storage_as27 to %struct.anon*
  %cdr29 = getelementptr inbounds %struct.anon, %struct.anon* %cons28, i32 0, i32 1
  store %struct.obj* %call26, %struct.obj** %cdr29, align 8
  store %struct.obj* %call26, %struct.obj** %ptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load %struct.obj*, %struct.obj** %l1, align 8
  %storage_as30 = getelementptr inbounds %struct.obj, %struct.obj* %22, i32 0, i32 2
  %cons31 = bitcast %union.anon* %storage_as30 to %struct.anon*
  %cdr32 = getelementptr inbounds %struct.anon, %struct.anon* %cons31, i32 0, i32 1
  %23 = load %struct.obj*, %struct.obj** %cdr32, align 8
  store %struct.obj* %23, %struct.obj** %l1, align 8
  %24 = load %struct.obj*, %struct.obj** %l2, align 8
  %storage_as33 = getelementptr inbounds %struct.obj, %struct.obj* %24, i32 0, i32 2
  %cons34 = bitcast %union.anon* %storage_as33 to %struct.anon*
  %cdr35 = getelementptr inbounds %struct.anon, %struct.anon* %cons34, i32 0, i32 1
  %25 = load %struct.obj*, %struct.obj** %cdr35, align 8
  store %struct.obj* %25, %struct.obj** %l2, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %26 = load %struct.obj*, %struct.obj** %res, align 8
  store %struct.obj* %26, %struct.obj** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %27 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %27
}

; Function Attrs: nounwind uwtable
define %struct.obj* @mapcar(%struct.obj* %l) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %l.addr = alloca %struct.obj*, align 8
  %fcn = alloca %struct.obj*, align 8
  store %struct.obj* %l, %struct.obj** %l.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %call = call %struct.obj* @car(%struct.obj* %0)
  store %struct.obj* %call, %struct.obj** %fcn, align 8
  %1 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %call1 = call %struct.obj* @llength(%struct.obj* %1)
  %call2 = call i64 @get_c_long(%struct.obj* %call1)
  switch i64 %call2, label %sw.default [
    i64 2, label %sw.bb
    i64 3, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.obj*, %struct.obj** %fcn, align 8
  %3 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %call3 = call %struct.obj* @cdr(%struct.obj* %3)
  %call4 = call %struct.obj* @car(%struct.obj* %call3)
  %call5 = call %struct.obj* @mapcar1(%struct.obj* %2, %struct.obj* %call4)
  store %struct.obj* %call5, %struct.obj** %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  %4 = load %struct.obj*, %struct.obj** %fcn, align 8
  %5 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %call7 = call %struct.obj* @cdr(%struct.obj* %5)
  %call8 = call %struct.obj* @car(%struct.obj* %call7)
  %6 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %call9 = call %struct.obj* @cdr(%struct.obj* %6)
  %call10 = call %struct.obj* @cdr(%struct.obj* %call9)
  %call11 = call %struct.obj* @car(%struct.obj* %call10)
  %call12 = call %struct.obj* @mapcar2(%struct.obj* %4, %struct.obj* %call8, %struct.obj* %call11)
  store %struct.obj* %call12, %struct.obj** %retval
  br label %return

sw.default:                                       ; preds = %entry
  %7 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %call13 = call %struct.obj* @err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.80, i32 0, i32 0), %struct.obj* %7)
  store %struct.obj* %call13, %struct.obj** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.6, %sw.bb
  %8 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %8
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lfmod(%struct.obj* %x, %struct.obj* %y) #0 {
entry:
  %x.addr = alloca %struct.obj*, align 8
  %y.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  store %struct.obj* %y, %struct.obj** %y.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp ne i32 %cond, 2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.81, i32 0, i32 0), %struct.obj* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %4 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %cmp3 = icmp eq %struct.obj* %4, null
  br i1 %cmp3, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %if.end
  br label %cond.end.9

cond.false.6:                                     ; preds = %if.end
  %5 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %type7 = getelementptr inbounds %struct.obj, %struct.obj* %5, i32 0, i32 1
  %6 = load i16, i16* %type7, align 2
  %conv8 = sext i16 %6 to i32
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.6, %cond.true.5
  %cond10 = phi i32 [ 0, %cond.true.5 ], [ %conv8, %cond.false.6 ]
  %cmp11 = icmp ne i32 %cond10, 2
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %cond.end.9
  %7 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %call14 = call %struct.obj* @err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.82, i32 0, i32 0), %struct.obj* %7)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %cond.end.9
  %8 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %8, i32 0, i32 2
  %flonum = bitcast %union.anon* %storage_as to %struct.anon.0*
  %data = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum, i32 0, i32 0
  %9 = load double, double* %data, align 8
  %10 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %storage_as16 = getelementptr inbounds %struct.obj, %struct.obj* %10, i32 0, i32 2
  %flonum17 = bitcast %union.anon* %storage_as16 to %struct.anon.0*
  %data18 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum17, i32 0, i32 0
  %11 = load double, double* %data18, align 8
  %call19 = call double @fmod(double %9, double %11) #2
  %call20 = call %struct.obj* @flocons(double %call19)
  ret %struct.obj* %call20
}

; Function Attrs: nounwind
declare double @fmod(double, double) #3

; Function Attrs: nounwind uwtable
define %struct.obj* @lsubset(%struct.obj* %fcn, %struct.obj* %l) #0 {
entry:
  %fcn.addr = alloca %struct.obj*, align 8
  %l.addr = alloca %struct.obj*, align 8
  %result = alloca %struct.obj*, align 8
  %v = alloca %struct.obj*, align 8
  store %struct.obj* %fcn, %struct.obj** %fcn.addr, align 8
  store %struct.obj* %l, %struct.obj** %l.addr, align 8
  store %struct.obj* null, %struct.obj** %result, align 8
  %0 = load %struct.obj*, %struct.obj** %l.addr, align 8
  store %struct.obj* %0, %struct.obj** %v, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.obj*, %struct.obj** %v, align 8
  %cmp = icmp eq %struct.obj* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %2 = load %struct.obj*, %struct.obj** %v, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %2, i32 0, i32 1
  %3 = load i16, i16* %type, align 2
  %conv = sext i16 %3 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp eq i32 %cond, 1
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %4 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %5 = load %struct.obj*, %struct.obj** %v, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %5, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 0
  %6 = load %struct.obj*, %struct.obj** %car, align 8
  %call = call %struct.obj* @funcall1(%struct.obj* %4, %struct.obj* %6)
  %cmp3 = icmp ne %struct.obj* %call, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load %struct.obj*, %struct.obj** %v, align 8
  %storage_as5 = getelementptr inbounds %struct.obj, %struct.obj* %7, i32 0, i32 2
  %cons6 = bitcast %union.anon* %storage_as5 to %struct.anon*
  %car7 = getelementptr inbounds %struct.anon, %struct.anon* %cons6, i32 0, i32 0
  %8 = load %struct.obj*, %struct.obj** %car7, align 8
  %9 = load %struct.obj*, %struct.obj** %result, align 8
  %call8 = call %struct.obj* @cons(%struct.obj* %8, %struct.obj* %9)
  store %struct.obj* %call8, %struct.obj** %result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load %struct.obj*, %struct.obj** %v, align 8
  %storage_as9 = getelementptr inbounds %struct.obj, %struct.obj* %10, i32 0, i32 2
  %cons10 = bitcast %union.anon* %storage_as9 to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons10, i32 0, i32 1
  %11 = load %struct.obj*, %struct.obj** %cdr, align 8
  store %struct.obj* %11, %struct.obj** %v, align 8
  br label %for.cond

for.end:                                          ; preds = %cond.end
  %12 = load %struct.obj*, %struct.obj** %result, align 8
  %call11 = call %struct.obj* @nreverse(%struct.obj* %12)
  ret %struct.obj* %call11
}

; Function Attrs: nounwind uwtable
define %struct.obj* @ass(%struct.obj* %x, %struct.obj* %alist, %struct.obj* %fcn) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %x.addr = alloca %struct.obj*, align 8
  %alist.addr = alloca %struct.obj*, align 8
  %fcn.addr = alloca %struct.obj*, align 8
  %l = alloca %struct.obj*, align 8
  %tmp = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  store %struct.obj* %alist, %struct.obj** %alist.addr, align 8
  store %struct.obj* %fcn, %struct.obj** %fcn.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %alist.addr, align 8
  store %struct.obj* %0, %struct.obj** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp = icmp eq %struct.obj* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %2 = load %struct.obj*, %struct.obj** %l, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %2, i32 0, i32 1
  %3 = load i16, i16* %type, align 2
  %conv = sext i16 %3 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp eq i32 %cond, 1
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %4 = load %struct.obj*, %struct.obj** %l, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 0
  %5 = load %struct.obj*, %struct.obj** %car, align 8
  store %struct.obj* %5, %struct.obj** %tmp, align 8
  %6 = load %struct.obj*, %struct.obj** %tmp, align 8
  %cmp3 = icmp eq %struct.obj* %6, null
  br i1 %cmp3, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %for.body
  br label %cond.end.9

cond.false.6:                                     ; preds = %for.body
  %7 = load %struct.obj*, %struct.obj** %tmp, align 8
  %type7 = getelementptr inbounds %struct.obj, %struct.obj* %7, i32 0, i32 1
  %8 = load i16, i16* %type7, align 2
  %conv8 = sext i16 %8 to i32
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.6, %cond.true.5
  %cond10 = phi i32 [ 0, %cond.true.5 ], [ %conv8, %cond.false.6 ]
  %cmp11 = icmp eq i32 %cond10, 1
  br i1 %cmp11, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end.9
  %9 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %10 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as13 = getelementptr inbounds %struct.obj, %struct.obj* %10, i32 0, i32 2
  %cons14 = bitcast %union.anon* %storage_as13 to %struct.anon*
  %car15 = getelementptr inbounds %struct.anon, %struct.anon* %cons14, i32 0, i32 0
  %11 = load %struct.obj*, %struct.obj** %car15, align 8
  %12 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call %struct.obj* @funcall2(%struct.obj* %9, %struct.obj* %11, %struct.obj* %12)
  %cmp16 = icmp ne %struct.obj* %call, null
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %13 = load %struct.obj*, %struct.obj** %tmp, align 8
  store %struct.obj* %13, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %cond.end.9
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load %struct.obj*, %struct.obj** %l, align 8
  %storage_as18 = getelementptr inbounds %struct.obj, %struct.obj* %14, i32 0, i32 2
  %cons19 = bitcast %union.anon* %storage_as18 to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons19, i32 0, i32 1
  %15 = load %struct.obj*, %struct.obj** %cdr, align 8
  store %struct.obj* %15, %struct.obj** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %cond.end
  %16 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp20 = icmp eq %struct.obj* %16, null
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %for.end
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end.23:                                        ; preds = %for.end
  %17 = load %struct.obj*, %struct.obj** %alist.addr, align 8
  %call24 = call %struct.obj* @err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.83, i32 0, i32 0), %struct.obj* %17)
  store %struct.obj* %call24, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.22, %if.then
  %18 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %18
}

; Function Attrs: nounwind uwtable
define %struct.obj* @append2(%struct.obj* %l1, %struct.obj* %l2) #0 {
entry:
  %l1.addr = alloca %struct.obj*, align 8
  %l2.addr = alloca %struct.obj*, align 8
  %n = alloca i64, align 8
  %result = alloca %struct.obj*, align 8
  %p1 = alloca %struct.obj*, align 8
  %p2 = alloca %struct.obj*, align 8
  store %struct.obj* %l1, %struct.obj** %l1.addr, align 8
  store %struct.obj* %l2, %struct.obj** %l2.addr, align 8
  store %struct.obj* null, %struct.obj** %result, align 8
  %0 = load %struct.obj*, %struct.obj** %l1.addr, align 8
  %call = call i64 @nlength(%struct.obj* %0)
  %1 = load %struct.obj*, %struct.obj** %l2.addr, align 8
  %call1 = call i64 @nlength(%struct.obj* %1)
  %add = add nsw i64 %call, %call1
  store i64 %add, i64* %n, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64, i64* %n, align 8
  %cmp = icmp sgt i64 %2, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.obj*, %struct.obj** %result, align 8
  %call2 = call %struct.obj* @cons(%struct.obj* null, %struct.obj* %3)
  store %struct.obj* %call2, %struct.obj** %result, align 8
  %4 = load i64, i64* %n, align 8
  %dec = add nsw i64 %4, -1
  store i64 %dec, i64* %n, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load %struct.obj*, %struct.obj** %result, align 8
  store %struct.obj* %5, %struct.obj** %p1, align 8
  %6 = load %struct.obj*, %struct.obj** %l1.addr, align 8
  store %struct.obj* %6, %struct.obj** %p2, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %7 = load %struct.obj*, %struct.obj** %p2, align 8
  %cmp3 = icmp ne %struct.obj* %7, null
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.obj*, %struct.obj** %p1, align 8
  %9 = load %struct.obj*, %struct.obj** %p2, align 8
  %call4 = call %struct.obj* @car(%struct.obj* %9)
  %call5 = call %struct.obj* @setcar(%struct.obj* %8, %struct.obj* %call4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load %struct.obj*, %struct.obj** %p1, align 8
  %call6 = call %struct.obj* @cdr(%struct.obj* %10)
  store %struct.obj* %call6, %struct.obj** %p1, align 8
  %11 = load %struct.obj*, %struct.obj** %p2, align 8
  %call7 = call %struct.obj* @cdr(%struct.obj* %11)
  store %struct.obj* %call7, %struct.obj** %p2, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.obj*, %struct.obj** %l2.addr, align 8
  store %struct.obj* %12, %struct.obj** %p2, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.13, %for.end
  %13 = load %struct.obj*, %struct.obj** %p2, align 8
  %cmp9 = icmp ne %struct.obj* %13, null
  br i1 %cmp9, label %for.body.10, label %for.end.16

for.body.10:                                      ; preds = %for.cond.8
  %14 = load %struct.obj*, %struct.obj** %p1, align 8
  %15 = load %struct.obj*, %struct.obj** %p2, align 8
  %call11 = call %struct.obj* @car(%struct.obj* %15)
  %call12 = call %struct.obj* @setcar(%struct.obj* %14, %struct.obj* %call11)
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.10
  %16 = load %struct.obj*, %struct.obj** %p1, align 8
  %call14 = call %struct.obj* @cdr(%struct.obj* %16)
  store %struct.obj* %call14, %struct.obj** %p1, align 8
  %17 = load %struct.obj*, %struct.obj** %p2, align 8
  %call15 = call %struct.obj* @cdr(%struct.obj* %17)
  store %struct.obj* %call15, %struct.obj** %p2, align 8
  br label %for.cond.8

for.end.16:                                       ; preds = %for.cond.8
  %18 = load %struct.obj*, %struct.obj** %result, align 8
  ret %struct.obj* %18
}

; Function Attrs: nounwind uwtable
define %struct.obj* @append(%struct.obj* %l) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %l.addr = alloca %struct.obj*, align 8
  store %struct.obj* %l, %struct.obj** %l.addr, align 8
  %0 = bitcast %struct.obj** %l.addr to i8*
  %1 = load i8*, i8** @stack_limit_ptr, align 8
  %cmp = icmp ult i8* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.obj** %l.addr to i8*
  call void @err_stack(i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %cmp1 = icmp eq %struct.obj* %3, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %4 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %call = call %struct.obj* @cdr(%struct.obj* %4)
  %cmp3 = icmp eq %struct.obj* %call, null
  br i1 %cmp3, label %if.then.4, label %if.else.6

if.then.4:                                        ; preds = %if.else
  %5 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %call5 = call %struct.obj* @car(%struct.obj* %5)
  store %struct.obj* %call5, %struct.obj** %retval
  br label %return

if.else.6:                                        ; preds = %if.else
  %6 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %call7 = call %struct.obj* @cddr(%struct.obj* %6)
  %cmp8 = icmp eq %struct.obj* %call7, null
  br i1 %cmp8, label %if.then.9, label %if.else.13

if.then.9:                                        ; preds = %if.else.6
  %7 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %call10 = call %struct.obj* @car(%struct.obj* %7)
  %8 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %call11 = call %struct.obj* @cadr(%struct.obj* %8)
  %call12 = call %struct.obj* @append2(%struct.obj* %call10, %struct.obj* %call11)
  store %struct.obj* %call12, %struct.obj** %retval
  br label %return

if.else.13:                                       ; preds = %if.else.6
  %9 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %call14 = call %struct.obj* @car(%struct.obj* %9)
  %10 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %call15 = call %struct.obj* @cdr(%struct.obj* %10)
  %call16 = call %struct.obj* @append(%struct.obj* %call15)
  %call17 = call %struct.obj* @append2(%struct.obj* %call14, %struct.obj* %call16)
  store %struct.obj* %call17, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else.13, %if.then.9, %if.then.4, %if.then.2
  %11 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %11
}

declare %struct.obj* @cddr(%struct.obj*) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @listn(i64 %n, ...) #0 {
entry:
  %n.addr = alloca i64, align 8
  %result = alloca %struct.obj*, align 8
  %ptr = alloca %struct.obj*, align 8
  %j = alloca i64, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i64 %n, i64* %n.addr, align 8
  store i64 0, i64* %j, align 8
  store %struct.obj* null, %struct.obj** %result, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %j, align 8
  %1 = load i64, i64* %n.addr, align 8
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.obj*, %struct.obj** %result, align 8
  %call = call %struct.obj* @cons(%struct.obj* null, %struct.obj* %2)
  store %struct.obj* %call, %struct.obj** %result, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i64, i64* %j, align 8
  %inc = add nsw i64 %3, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  store i64 0, i64* %j, align 8
  %4 = load %struct.obj*, %struct.obj** %result, align 8
  store %struct.obj* %4, %struct.obj** %ptr, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.7, %for.end
  %5 = load i64, i64* %j, align 8
  %6 = load i64, i64* %n.addr, align 8
  %cmp3 = icmp slt i64 %5, %6
  br i1 %cmp3, label %for.body.4, label %for.end.10

for.body.4:                                       ; preds = %for.cond.2
  %7 = load %struct.obj*, %struct.obj** %ptr, align 8
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay5, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %for.body.4
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay5, i32 0, i32 3
  %reg_save_area = load i8*, i8** %8
  %9 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %10 = bitcast i8* %9 to %struct.obj**
  %11 = add i32 %gp_offset, 8
  store i32 %11, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %for.body.4
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay5, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %12 = bitcast i8* %overflow_arg_area to %struct.obj**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi %struct.obj** [ %10, %vaarg.in_reg ], [ %12, %vaarg.in_mem ]
  %13 = load %struct.obj*, %struct.obj** %vaarg.addr
  %call6 = call %struct.obj* @setcar(%struct.obj* %7, %struct.obj* %13)
  br label %for.inc.7

for.inc.7:                                        ; preds = %vaarg.end
  %14 = load %struct.obj*, %struct.obj** %ptr, align 8
  %call8 = call %struct.obj* @cdr(%struct.obj* %14)
  store %struct.obj* %call8, %struct.obj** %ptr, align 8
  %15 = load i64, i64* %j, align 8
  %inc9 = add nsw i64 %15, 1
  store i64 %inc9, i64* %j, align 8
  br label %for.cond.2

for.end.10:                                       ; preds = %for.cond.2
  %arraydecay11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1112 = bitcast %struct.__va_list_tag* %arraydecay11 to i8*
  call void @llvm.va_end(i8* %arraydecay1112)
  %16 = load %struct.obj*, %struct.obj** %result, align 8
  ret %struct.obj* %16
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.obj* @fast_load(%struct.obj* %lfname, %struct.obj* %noeval) #0 {
entry:
  %lfname.addr = alloca %struct.obj*, align 8
  %noeval.addr = alloca %struct.obj*, align 8
  %fname = alloca i8*, align 8
  %stream = alloca %struct.obj*, align 8
  %result = alloca %struct.obj*, align 8
  %form = alloca %struct.obj*, align 8
  store %struct.obj* %lfname, %struct.obj** %lfname.addr, align 8
  store %struct.obj* %noeval, %struct.obj** %noeval.addr, align 8
  store %struct.obj* null, %struct.obj** %result, align 8
  %0 = load %struct.obj*, %struct.obj** %lfname.addr, align 8
  %call = call i8* @get_c_string(%struct.obj* %0)
  store i8* %call, i8** %fname, align 8
  %1 = load i64, i64* @siod_verbose_level, align 8
  %cmp = icmp sge i64 %1, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @put_st(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.84, i32 0, i32 0))
  %2 = load i8*, i8** %fname, align 8
  call void @put_st(i8* %2)
  call void @put_st(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %fname, align 8
  %call1 = call %struct.obj* @fopen_c(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i32 0, i32 0))
  %call2 = call %struct.obj* @flocons(double 1.000000e+02)
  %call3 = call %struct.obj* @cons_array(%struct.obj* %call2, %struct.obj* null)
  %call4 = call %struct.obj* @flocons(double 0.000000e+00)
  %call5 = call %struct.obj* (i64, ...) @listn(i64 3, %struct.obj* %call1, %struct.obj* %call3, %struct.obj* %call4)
  store %struct.obj* %call5, %struct.obj** %stream, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.16, %if.end
  %4 = load %struct.obj*, %struct.obj** %stream, align 8
  %5 = load %struct.obj*, %struct.obj** %stream, align 8
  %call6 = call %struct.obj* @fast_read(%struct.obj* %5)
  store %struct.obj* %call6, %struct.obj** %form, align 8
  %cmp7 = icmp ne %struct.obj* %4, %call6
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i64, i64* @siod_verbose_level, align 8
  %cmp8 = icmp sge i64 %6, 5
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %while.body
  %7 = load %struct.obj*, %struct.obj** %form, align 8
  %call10 = call %struct.obj* @lprint(%struct.obj* %7, %struct.obj* null)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %while.body
  %8 = load %struct.obj*, %struct.obj** %noeval.addr, align 8
  %cmp12 = icmp eq %struct.obj* %8, null
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end.11
  %9 = load %struct.obj*, %struct.obj** %form, align 8
  %call14 = call %struct.obj* @leval(%struct.obj* %9, %struct.obj* null)
  br label %if.end.16

if.else:                                          ; preds = %if.end.11
  %10 = load %struct.obj*, %struct.obj** %form, align 8
  %11 = load %struct.obj*, %struct.obj** %result, align 8
  %call15 = call %struct.obj* @cons(%struct.obj* %10, %struct.obj* %11)
  store %struct.obj* %call15, %struct.obj** %result, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.13
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load %struct.obj*, %struct.obj** %stream, align 8
  %call17 = call %struct.obj* @car(%struct.obj* %12)
  %call18 = call %struct.obj* @fclose_l(%struct.obj* %call17)
  %13 = load i64, i64* @siod_verbose_level, align 8
  %cmp19 = icmp sge i64 %13, 3
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %while.end
  call void @put_st(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.87, i32 0, i32 0))
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %while.end
  %14 = load %struct.obj*, %struct.obj** %result, align 8
  %call22 = call %struct.obj* @nreverse(%struct.obj* %14)
  ret %struct.obj* %call22
}

declare void @put_st(i8*) #1

declare %struct.obj* @fopen_c(i8*, i8*) #1

declare %struct.obj* @lprint(%struct.obj*, %struct.obj*) #1

declare %struct.obj* @fclose_l(%struct.obj*) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @fast_save(%struct.obj* %fname, %struct.obj* %forms, %struct.obj* %nohash, %struct.obj* %comment, %struct.obj* %fmode) #0 {
entry:
  %fname.addr = alloca %struct.obj*, align 8
  %forms.addr = alloca %struct.obj*, align 8
  %nohash.addr = alloca %struct.obj*, align 8
  %comment.addr = alloca %struct.obj*, align 8
  %fmode.addr = alloca %struct.obj*, align 8
  %cname = alloca i8*, align 8
  %msgbuff = alloca [100 x i8], align 16
  %databuff = alloca [50 x i8], align 16
  %stream = alloca %struct.obj*, align 8
  %l = alloca %struct.obj*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %l_one = alloca i64, align 8
  %d_one = alloca double, align 8
  store %struct.obj* %fname, %struct.obj** %fname.addr, align 8
  store %struct.obj* %forms, %struct.obj** %forms.addr, align 8
  store %struct.obj* %nohash, %struct.obj** %nohash.addr, align 8
  store %struct.obj* %comment, %struct.obj** %comment.addr, align 8
  store %struct.obj* %fmode, %struct.obj** %fmode.addr, align 8
  store i64 1, i64* %l_one, align 8
  store double 1.000000e+00, double* %d_one, align 8
  %0 = load %struct.obj*, %struct.obj** %fname.addr, align 8
  %call = call i8* @get_c_string(%struct.obj* %0)
  store i8* %call, i8** %cname, align 8
  %1 = load i64, i64* @siod_verbose_level, align 8
  %cmp = icmp sge i64 %1, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @put_st(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.88, i32 0, i32 0))
  %2 = load i8*, i8** %cname, align 8
  call void @put_st(i8* %2)
  call void @put_st(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %cname, align 8
  %4 = load %struct.obj*, %struct.obj** %fmode.addr, align 8
  %cmp1 = icmp ne %struct.obj* %4, null
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %5 = load %struct.obj*, %struct.obj** %fmode.addr, align 8
  %call2 = call i8* @get_c_string(%struct.obj* %5)
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call2, %cond.true ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.89, i32 0, i32 0), %cond.false ]
  %call3 = call %struct.obj* @fopen_c(i8* %3, i8* %cond)
  %6 = load %struct.obj*, %struct.obj** %nohash.addr, align 8
  %cmp4 = icmp ne %struct.obj* %6, null
  br i1 %cmp4, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.end
  br label %cond.end.9

cond.false.6:                                     ; preds = %cond.end
  %call7 = call %struct.obj* @flocons(double 1.000000e+02)
  %call8 = call %struct.obj* @cons_array(%struct.obj* %call7, %struct.obj* null)
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.6, %cond.true.5
  %cond10 = phi %struct.obj* [ null, %cond.true.5 ], [ %call8, %cond.false.6 ]
  %call11 = call %struct.obj* @flocons(double 0.000000e+00)
  %call12 = call %struct.obj* (i64, ...) @listn(i64 3, %struct.obj* %call3, %struct.obj* %cond10, %struct.obj* %call11)
  store %struct.obj* %call12, %struct.obj** %stream, align 8
  %7 = load %struct.obj*, %struct.obj** %stream, align 8
  %call13 = call %struct.obj* @car(%struct.obj* %7)
  %call14 = call %struct._IO_FILE* @get_c_file(%struct.obj* %call13, %struct._IO_FILE* null)
  store %struct._IO_FILE* %call14, %struct._IO_FILE** %f, align 8
  %8 = load %struct.obj*, %struct.obj** %comment.addr, align 8
  %cmp15 = icmp ne %struct.obj* %8, null
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %cond.end.9
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %10 = load %struct.obj*, %struct.obj** %comment.addr, align 8
  %call17 = call i8* @get_c_string(%struct.obj* %10)
  call void @fput_st(%struct._IO_FILE* %9, i8* %call17)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %cond.end.9
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %msgbuff, i32 0, i32 0
  %call19 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.90, i32 0, i32 0)) #2
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay20 = getelementptr inbounds [100 x i8], [100 x i8]* %msgbuff, i32 0, i32 0
  call void @fput_st(%struct._IO_FILE* %11, i8* %arraydecay20)
  %arraydecay21 = getelementptr inbounds [100 x i8], [100 x i8]* %msgbuff, i32 0, i32 0
  %call22 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay21, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.91, i32 0, i32 0), i64 8, i64 8) #2
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay23 = getelementptr inbounds [100 x i8], [100 x i8]* %msgbuff, i32 0, i32 0
  call void @fput_st(%struct._IO_FILE* %12, i8* %arraydecay23)
  %arraydecay24 = getelementptr inbounds [50 x i8], [50 x i8]* %databuff, i32 0, i32 0
  %13 = bitcast i64* %l_one to i8*
  call void @shexstr(i8* %arraydecay24, i8* %13, i64 8)
  %arraydecay25 = getelementptr inbounds [100 x i8], [100 x i8]* %msgbuff, i32 0, i32 0
  %arraydecay26 = getelementptr inbounds [50 x i8], [50 x i8]* %databuff, i32 0, i32 0
  %call27 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i32 0, i32 0), i8* %arraydecay26) #2
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay28 = getelementptr inbounds [100 x i8], [100 x i8]* %msgbuff, i32 0, i32 0
  call void @fput_st(%struct._IO_FILE* %14, i8* %arraydecay28)
  %arraydecay29 = getelementptr inbounds [50 x i8], [50 x i8]* %databuff, i32 0, i32 0
  %15 = bitcast double* %d_one to i8*
  call void @shexstr(i8* %arraydecay29, i8* %15, i64 8)
  %arraydecay30 = getelementptr inbounds [100 x i8], [100 x i8]* %msgbuff, i32 0, i32 0
  %arraydecay31 = getelementptr inbounds [50 x i8], [50 x i8]* %databuff, i32 0, i32 0
  %call32 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i32 0, i32 0), i8* %arraydecay31) #2
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay33 = getelementptr inbounds [100 x i8], [100 x i8]* %msgbuff, i32 0, i32 0
  call void @fput_st(%struct._IO_FILE* %16, i8* %arraydecay33)
  %17 = load %struct.obj*, %struct.obj** %forms.addr, align 8
  store %struct.obj* %17, %struct.obj** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.18
  %18 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp34 = icmp ne %struct.obj* %18, null
  br i1 %cmp34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct.obj*, %struct.obj** %l, align 8
  %call35 = call %struct.obj* @car(%struct.obj* %19)
  %20 = load %struct.obj*, %struct.obj** %stream, align 8
  %call36 = call %struct.obj* @fast_print(%struct.obj* %call35, %struct.obj* %20)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load %struct.obj*, %struct.obj** %l, align 8
  %call37 = call %struct.obj* @cdr(%struct.obj* %21)
  store %struct.obj* %call37, %struct.obj** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.obj*, %struct.obj** %stream, align 8
  %call38 = call %struct.obj* @car(%struct.obj* %22)
  %call39 = call %struct.obj* @fclose_l(%struct.obj* %call38)
  %23 = load i64, i64* @siod_verbose_level, align 8
  %cmp40 = icmp sge i64 %23, 3
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %for.end
  call void @put_st(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.87, i32 0, i32 0))
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %for.end
  ret %struct.obj* null
}

; Function Attrs: nounwind uwtable
define internal void @shexstr(i8* %outstr, i8* %buff, i64 %len) #0 {
entry:
  %outstr.addr = alloca i8*, align 8
  %buff.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %data = alloca i8*, align 8
  %j = alloca i64, align 8
  store i8* %outstr, i8** %outstr.addr, align 8
  store i8* %buff, i8** %buff.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %buff.addr, align 8
  store i8* %0, i8** %data, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %j, align 8
  %2 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %j, align 8
  %mul = mul i64 %3, 2
  %4 = load i8*, i8** %outstr.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %mul
  %5 = load i64, i64* %j, align 8
  %6 = load i8*, i8** %data, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %6, i64 %5
  %7 = load i8, i8* %arrayidx1, align 1
  %conv = zext i8 %7 to i32
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arrayidx, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.233, i32 0, i32 0), i32 %conv) #2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i64, i64* %j, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @swrite1(%struct.obj* %stream, %struct.obj* %data) #0 {
entry:
  %stream.addr = alloca %struct.obj*, align 8
  %data.addr = alloca %struct.obj*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  store %struct.obj* %stream, %struct.obj** %stream.addr, align 8
  store %struct.obj* %data, %struct.obj** %data.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %stream.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call %struct._IO_FILE* @get_c_file(%struct.obj* %0, %struct._IO_FILE* %1)
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %2 = load %struct.obj*, %struct.obj** %data.addr, align 8
  %cmp = icmp eq %struct.obj* %2, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct.obj*, %struct.obj** %data.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %3, i32 0, i32 1
  %4 = load i16, i16* %type, align 2
  %conv = sext i16 %4 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  switch i32 %cond, label %sw.default [
    i32 3, label %sw.bb
    i32 13, label %sw.bb
  ]

sw.bb:                                            ; preds = %cond.end, %cond.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %6 = load %struct.obj*, %struct.obj** %data.addr, align 8
  %call1 = call i8* @get_c_string(%struct.obj* %6)
  call void @fput_st(%struct._IO_FILE* %5, i8* %call1)
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  %7 = load %struct.obj*, %struct.obj** %data.addr, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call2 = call %struct.obj* @lprin1f(%struct.obj* %7, %struct._IO_FILE* %8)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.obj* @swrite(%struct.obj* %stream, %struct.obj* %table, %struct.obj* %data) #0 {
entry:
  %stream.addr = alloca %struct.obj*, align 8
  %table.addr = alloca %struct.obj*, align 8
  %data.addr = alloca %struct.obj*, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %m = alloca i64, align 8
  %n = alloca i64, align 8
  store %struct.obj* %stream, %struct.obj** %stream.addr, align 8
  store %struct.obj* %table, %struct.obj** %table.addr, align 8
  store %struct.obj* %data, %struct.obj** %data.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %data.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %data.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  switch i32 %cond, label %sw.default [
    i32 3, label %sw.bb
    i32 16, label %sw.bb.1
    i32 1, label %sw.bb.24
  ]

sw.bb:                                            ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %stream.addr, align 8
  %4 = load %struct.obj*, %struct.obj** %data.addr, align 8
  %5 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %call = call %struct.obj* @swrite2(%struct.obj* %4, %struct.obj* %5)
  call void @swrite1(%struct.obj* %3, %struct.obj* %call)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %cond.end
  %6 = load %struct.obj*, %struct.obj** %data.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %6, i32 0, i32 2
  %lisp_array = bitcast %union.anon* %storage_as to %struct.anon.16*
  %dim = getelementptr inbounds %struct.anon.16, %struct.anon.16* %lisp_array, i32 0, i32 0
  %7 = load i64, i64* %dim, align 8
  store i64 %7, i64* %n, align 8
  %8 = load i64, i64* %n, align 8
  %cmp2 = icmp slt i64 %8, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.1
  %9 = load %struct.obj*, %struct.obj** %data.addr, align 8
  %call4 = call %struct.obj* @err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.94, i32 0, i32 0), %struct.obj* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.1
  %10 = load %struct.obj*, %struct.obj** %data.addr, align 8
  %storage_as5 = getelementptr inbounds %struct.obj, %struct.obj* %10, i32 0, i32 2
  %lisp_array6 = bitcast %union.anon* %storage_as5 to %struct.anon.16*
  %data7 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %lisp_array6, i32 0, i32 1
  %11 = load %struct.obj**, %struct.obj*** %data7, align 8
  %arrayidx = getelementptr inbounds %struct.obj*, %struct.obj** %11, i64 0
  %12 = load %struct.obj*, %struct.obj** %arrayidx, align 8
  %13 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %call8 = call %struct.obj* @swrite2(%struct.obj* %12, %struct.obj* %13)
  %call9 = call i64 @get_c_long(%struct.obj* %call8)
  store i64 %call9, i64* %m, align 8
  store i64 0, i64* %k, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.21, %if.end
  %14 = load i64, i64* %k, align 8
  %15 = load i64, i64* %m, align 8
  %cmp10 = icmp slt i64 %14, %15
  br i1 %cmp10, label %for.body, label %for.end.23

for.body:                                         ; preds = %for.cond
  store i64 1, i64* %j, align 8
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %for.body
  %16 = load i64, i64* %j, align 8
  %17 = load i64, i64* %n, align 8
  %cmp13 = icmp slt i64 %16, %17
  br i1 %cmp13, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.12
  %18 = load %struct.obj*, %struct.obj** %stream.addr, align 8
  %19 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %20 = load i64, i64* %j, align 8
  %21 = load %struct.obj*, %struct.obj** %data.addr, align 8
  %storage_as16 = getelementptr inbounds %struct.obj, %struct.obj* %21, i32 0, i32 2
  %lisp_array17 = bitcast %union.anon* %storage_as16 to %struct.anon.16*
  %data18 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %lisp_array17, i32 0, i32 1
  %22 = load %struct.obj**, %struct.obj*** %data18, align 8
  %arrayidx19 = getelementptr inbounds %struct.obj*, %struct.obj** %22, i64 %20
  %23 = load %struct.obj*, %struct.obj** %arrayidx19, align 8
  %call20 = call %struct.obj* @swrite(%struct.obj* %18, %struct.obj* %19, %struct.obj* %23)
  br label %for.inc

for.inc:                                          ; preds = %for.body.15
  %24 = load i64, i64* %j, align 8
  %inc = add nsw i64 %24, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond.12

for.end:                                          ; preds = %for.cond.12
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.end
  %25 = load i64, i64* %k, align 8
  %inc22 = add nsw i64 %25, 1
  store i64 %inc22, i64* %k, align 8
  br label %for.cond

for.end.23:                                       ; preds = %for.cond
  br label %sw.epilog

sw.bb.24:                                         ; preds = %cond.end
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  %26 = load %struct.obj*, %struct.obj** %stream.addr, align 8
  %27 = load %struct.obj*, %struct.obj** %data.addr, align 8
  call void @swrite1(%struct.obj* %26, %struct.obj* %27)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.24, %for.end.23, %sw.bb
  ret %struct.obj* null
}

; Function Attrs: nounwind uwtable
define internal %struct.obj* @swrite2(%struct.obj* %name, %struct.obj* %table) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %name.addr = alloca %struct.obj*, align 8
  %table.addr = alloca %struct.obj*, align 8
  %value = alloca %struct.obj*, align 8
  %key = alloca %struct.obj*, align 8
  store %struct.obj* %name, %struct.obj** %name.addr, align 8
  store %struct.obj* %table, %struct.obj** %table.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %name.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %name.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp eq i32 %cond, 3
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %name.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %3, i32 0, i32 2
  %symbol = bitcast %union.anon* %storage_as to %struct.anon.1*
  %pname = getelementptr inbounds %struct.anon.1, %struct.anon.1* %symbol, i32 0, i32 0
  %4 = load i8*, i8** %pname, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv3 = sext i8 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 46
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.obj*, %struct.obj** %name.addr, align 8
  %storage_as6 = getelementptr inbounds %struct.obj, %struct.obj* %6, i32 0, i32 2
  %symbol7 = bitcast %union.anon* %storage_as6 to %struct.anon.1*
  %pname8 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %symbol7, i32 0, i32 0
  %7 = load i8*, i8** %pname8, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %7, i64 1
  %call = call %struct.obj* @rintern(i8* %arrayidx9)
  store %struct.obj* %call, %struct.obj** %key, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %cond.end
  %8 = load %struct.obj*, %struct.obj** %name.addr, align 8
  store %struct.obj* %8, %struct.obj** %key, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %10 = load %struct.obj*, %struct.obj** %key, align 8
  %call10 = call %struct.obj* @href(%struct.obj* %9, %struct.obj* %10)
  store %struct.obj* %call10, %struct.obj** %value, align 8
  %11 = load %struct.obj*, %struct.obj** %value, align 8
  %cmp11 = icmp eq %struct.obj* %11, null
  br i1 %cmp11, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %if.end
  br label %cond.end.17

cond.false.14:                                    ; preds = %if.end
  %12 = load %struct.obj*, %struct.obj** %value, align 8
  %type15 = getelementptr inbounds %struct.obj, %struct.obj* %12, i32 0, i32 1
  %13 = load i16, i16* %type15, align 2
  %conv16 = sext i16 %13 to i32
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.14, %cond.true.13
  %cond18 = phi i32 [ 0, %cond.true.13 ], [ %conv16, %cond.false.14 ]
  %cmp19 = icmp eq i32 %cond18, 1
  br i1 %cmp19, label %if.then.21, label %if.else.47

if.then.21:                                       ; preds = %cond.end.17
  %14 = load %struct.obj*, %struct.obj** %value, align 8
  %storage_as22 = getelementptr inbounds %struct.obj, %struct.obj* %14, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as22 to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 1
  %15 = load %struct.obj*, %struct.obj** %cdr, align 8
  %cmp23 = icmp eq %struct.obj* %15, null
  br i1 %cmp23, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %if.then.21
  br label %cond.end.32

cond.false.26:                                    ; preds = %if.then.21
  %16 = load %struct.obj*, %struct.obj** %value, align 8
  %storage_as27 = getelementptr inbounds %struct.obj, %struct.obj* %16, i32 0, i32 2
  %cons28 = bitcast %union.anon* %storage_as27 to %struct.anon*
  %cdr29 = getelementptr inbounds %struct.anon, %struct.anon* %cons28, i32 0, i32 1
  %17 = load %struct.obj*, %struct.obj** %cdr29, align 8
  %type30 = getelementptr inbounds %struct.obj, %struct.obj* %17, i32 0, i32 1
  %18 = load i16, i16* %type30, align 2
  %conv31 = sext i16 %18 to i32
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.26, %cond.true.25
  %cond33 = phi i32 [ 0, %cond.true.25 ], [ %conv31, %cond.false.26 ]
  %cmp34 = icmp eq i32 %cond33, 1
  br i1 %cmp34, label %land.lhs.true.36, label %if.end.44

land.lhs.true.36:                                 ; preds = %cond.end.32
  %19 = load %struct.obj*, %struct.obj** %name.addr, align 8
  %20 = load %struct.obj*, %struct.obj** %key, align 8
  %cmp37 = icmp eq %struct.obj* %19, %20
  br i1 %cmp37, label %if.then.39, label %if.end.44

if.then.39:                                       ; preds = %land.lhs.true.36
  %21 = load %struct.obj*, %struct.obj** %table.addr, align 8
  %22 = load %struct.obj*, %struct.obj** %key, align 8
  %23 = load %struct.obj*, %struct.obj** %value, align 8
  %storage_as40 = getelementptr inbounds %struct.obj, %struct.obj* %23, i32 0, i32 2
  %cons41 = bitcast %union.anon* %storage_as40 to %struct.anon*
  %cdr42 = getelementptr inbounds %struct.anon, %struct.anon* %cons41, i32 0, i32 1
  %24 = load %struct.obj*, %struct.obj** %cdr42, align 8
  %call43 = call %struct.obj* @hset(%struct.obj* %21, %struct.obj* %22, %struct.obj* %24)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.39, %land.lhs.true.36, %cond.end.32
  %25 = load %struct.obj*, %struct.obj** %value, align 8
  %storage_as45 = getelementptr inbounds %struct.obj, %struct.obj* %25, i32 0, i32 2
  %cons46 = bitcast %union.anon* %storage_as45 to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons46, i32 0, i32 0
  %26 = load %struct.obj*, %struct.obj** %car, align 8
  store %struct.obj* %26, %struct.obj** %retval
  br label %return

if.else.47:                                       ; preds = %cond.end.17
  %27 = load %struct.obj*, %struct.obj** %value, align 8
  %cmp48 = icmp eq %struct.obj* %27, null
  br i1 %cmp48, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %if.else.47
  %28 = load %struct.obj*, %struct.obj** %name.addr, align 8
  store %struct.obj* %28, %struct.obj** %retval
  br label %return

if.else.51:                                       ; preds = %if.else.47
  %29 = load %struct.obj*, %struct.obj** %value, align 8
  store %struct.obj* %29, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else.51, %if.then.50, %if.end.44
  %30 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %30
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lpow(%struct.obj* %x, %struct.obj* %y) #0 {
entry:
  %x.addr = alloca %struct.obj*, align 8
  %y.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  store %struct.obj* %y, %struct.obj** %y.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp ne i32 %cond, 2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.95, i32 0, i32 0), %struct.obj* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %4 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %cmp3 = icmp eq %struct.obj* %4, null
  br i1 %cmp3, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %if.end
  br label %cond.end.9

cond.false.6:                                     ; preds = %if.end
  %5 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %type7 = getelementptr inbounds %struct.obj, %struct.obj* %5, i32 0, i32 1
  %6 = load i16, i16* %type7, align 2
  %conv8 = sext i16 %6 to i32
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.6, %cond.true.5
  %cond10 = phi i32 [ 0, %cond.true.5 ], [ %conv8, %cond.false.6 ]
  %cmp11 = icmp ne i32 %cond10, 2
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %cond.end.9
  %7 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %call14 = call %struct.obj* @err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.96, i32 0, i32 0), %struct.obj* %7)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %cond.end.9
  %8 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %8, i32 0, i32 2
  %flonum = bitcast %union.anon* %storage_as to %struct.anon.0*
  %data = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum, i32 0, i32 0
  %9 = load double, double* %data, align 8
  %10 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %storage_as16 = getelementptr inbounds %struct.obj, %struct.obj* %10, i32 0, i32 2
  %flonum17 = bitcast %union.anon* %storage_as16 to %struct.anon.0*
  %data18 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum17, i32 0, i32 0
  %11 = load double, double* %data18, align 8
  %call19 = call double @pow(double %9, double %11) #2
  %call20 = call %struct.obj* @flocons(double %call19)
  ret %struct.obj* %call20
}

; Function Attrs: nounwind
declare double @pow(double, double) #3

; Function Attrs: nounwind uwtable
define %struct.obj* @lexp(%struct.obj* %x) #0 {
entry:
  %x.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call double @get_c_double(%struct.obj* %0)
  %call1 = call double @exp(double %call) #2
  %call2 = call %struct.obj* @flocons(double %call1)
  ret %struct.obj* %call2
}

; Function Attrs: nounwind
declare double @exp(double) #3

; Function Attrs: nounwind uwtable
define %struct.obj* @llog(%struct.obj* %x) #0 {
entry:
  %x.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call double @get_c_double(%struct.obj* %0)
  %call1 = call double @log(double %call) #2
  %call2 = call %struct.obj* @flocons(double %call1)
  ret %struct.obj* %call2
}

; Function Attrs: nounwind
declare double @log(double) #3

; Function Attrs: nounwind uwtable
define %struct.obj* @lsin(%struct.obj* %x) #0 {
entry:
  %x.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call double @get_c_double(%struct.obj* %0)
  %call1 = call double @sin(double %call) #2
  %call2 = call %struct.obj* @flocons(double %call1)
  ret %struct.obj* %call2
}

; Function Attrs: nounwind
declare double @sin(double) #3

; Function Attrs: nounwind uwtable
define %struct.obj* @lcos(%struct.obj* %x) #0 {
entry:
  %x.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call double @get_c_double(%struct.obj* %0)
  %call1 = call double @cos(double %call) #2
  %call2 = call %struct.obj* @flocons(double %call1)
  ret %struct.obj* %call2
}

; Function Attrs: nounwind
declare double @cos(double) #3

; Function Attrs: nounwind uwtable
define %struct.obj* @ltan(%struct.obj* %x) #0 {
entry:
  %x.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call double @get_c_double(%struct.obj* %0)
  %call1 = call double @tan(double %call) #2
  %call2 = call %struct.obj* @flocons(double %call1)
  ret %struct.obj* %call2
}

; Function Attrs: nounwind
declare double @tan(double) #3

; Function Attrs: nounwind uwtable
define %struct.obj* @lasin(%struct.obj* %x) #0 {
entry:
  %x.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call double @get_c_double(%struct.obj* %0)
  %call1 = call double @asin(double %call) #2
  %call2 = call %struct.obj* @flocons(double %call1)
  ret %struct.obj* %call2
}

; Function Attrs: nounwind
declare double @asin(double) #3

; Function Attrs: nounwind uwtable
define %struct.obj* @lacos(%struct.obj* %x) #0 {
entry:
  %x.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call double @get_c_double(%struct.obj* %0)
  %call1 = call double @acos(double %call) #2
  %call2 = call %struct.obj* @flocons(double %call1)
  ret %struct.obj* %call2
}

; Function Attrs: nounwind
declare double @acos(double) #3

; Function Attrs: nounwind uwtable
define %struct.obj* @latan(%struct.obj* %x) #0 {
entry:
  %x.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call double @get_c_double(%struct.obj* %0)
  %call1 = call double @atan(double %call) #2
  %call2 = call %struct.obj* @flocons(double %call1)
  ret %struct.obj* %call2
}

; Function Attrs: nounwind
declare double @atan(double) #3

; Function Attrs: nounwind uwtable
define %struct.obj* @latan2(%struct.obj* %x, %struct.obj* %y) #0 {
entry:
  %x.addr = alloca %struct.obj*, align 8
  %y.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  store %struct.obj* %y, %struct.obj** %y.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call double @get_c_double(%struct.obj* %0)
  %1 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %call1 = call double @get_c_double(%struct.obj* %1)
  %call2 = call double @atan2(double %call, double %call1) #2
  %call3 = call %struct.obj* @flocons(double %call2)
  ret %struct.obj* %call3
}

; Function Attrs: nounwind
declare double @atan2(double, double) #3

; Function Attrs: nounwind uwtable
define %struct.obj* @hexstr(%struct.obj* %a) #0 {
entry:
  %a.addr = alloca %struct.obj*, align 8
  %in = alloca i8*, align 8
  %out = alloca i8*, align 8
  %result = alloca %struct.obj*, align 8
  %j = alloca i64, align 8
  %dim = alloca i64, align 8
  store %struct.obj* %a, %struct.obj** %a.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %call = call i8* @get_c_string_dim(%struct.obj* %0, i64* %dim)
  store i8* %call, i8** %in, align 8
  %1 = load i64, i64* %dim, align 8
  %mul = mul nsw i64 %1, 2
  %call1 = call %struct.obj* @strcons(i64 %mul, i8* null)
  store %struct.obj* %call1, %struct.obj** %result, align 8
  %2 = load %struct.obj*, %struct.obj** %result, align 8
  %call2 = call i8* @get_c_string(%struct.obj* %2)
  store i8* %call2, i8** %out, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, i64* %j, align 8
  %4 = load i64, i64* %dim, align 8
  %cmp = icmp slt i64 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %out, align 8
  %6 = load i64, i64* %j, align 8
  %7 = load i8*, i8** %in, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %6
  %8 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %call3 = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 %conv) #2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i64, i64* %j, align 8
  %inc = add nsw i64 %9, 1
  store i64 %inc, i64* %j, align 8
  %10 = load i8*, i8** %out, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 2
  store i8* %add.ptr, i8** %out, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.obj*, %struct.obj** %result, align 8
  ret %struct.obj* %11
}

; Function Attrs: nounwind uwtable
define %struct.obj* @hexstr2bytes(%struct.obj* %a) #0 {
entry:
  %a.addr = alloca %struct.obj*, align 8
  %in = alloca i8*, align 8
  %out = alloca i8*, align 8
  %result = alloca %struct.obj*, align 8
  %j = alloca i64, align 8
  %dim = alloca i64, align 8
  store %struct.obj* %a, %struct.obj** %a.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %call = call i8* @get_c_string(%struct.obj* %0)
  store i8* %call, i8** %in, align 8
  %1 = load i8*, i8** %in, align 8
  %call1 = call i64 @strlen(i8* %1) #6
  %div = udiv i64 %call1, 2
  store i64 %div, i64* %dim, align 8
  %2 = load i64, i64* %dim, align 8
  %call2 = call %struct.obj* @arcons(i64 18, i64 %2, i64 0)
  store %struct.obj* %call2, %struct.obj** %result, align 8
  %3 = load %struct.obj*, %struct.obj** %result, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %3, i32 0, i32 2
  %string = bitcast %union.anon* %storage_as to %struct.anon.13*
  %data = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string, i32 0, i32 1
  %4 = load i8*, i8** %data, align 8
  store i8* %4, i8** %out, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i64, i64* %j, align 8
  %6 = load i64, i64* %dim, align 8
  %cmp = icmp slt i64 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i64, i64* %j, align 8
  %mul = mul nsw i64 %7, 2
  %8 = load i8*, i8** %in, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %mul
  %9 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %9 to i32
  %call3 = call i32 @xdigitvalue(i32 %conv)
  %mul4 = mul nsw i32 %call3, 16
  %10 = load i64, i64* %j, align 8
  %mul5 = mul nsw i64 %10, 2
  %add = add nsw i64 %mul5, 1
  %11 = load i8*, i8** %in, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %11, i64 %add
  %12 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %12 to i32
  %call8 = call i32 @xdigitvalue(i32 %conv7)
  %add9 = add nsw i32 %mul4, %call8
  %conv10 = trunc i32 %add9 to i8
  %13 = load i64, i64* %j, align 8
  %14 = load i8*, i8** %out, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %14, i64 %13
  store i8 %conv10, i8* %arrayidx11, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i64, i64* %j, align 8
  %inc = add nsw i64 %15, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.obj*, %struct.obj** %result, align 8
  ret %struct.obj* %16
}

; Function Attrs: nounwind uwtable
define internal i32 @xdigitvalue(i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %idxprom = sext i32 %0 to i64
  %call = call i16** @__ctype_b_loc() #7
  %1 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %c.addr, align 4
  %sub = sub nsw i32 %3, 48
  store i32 %sub, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %c.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %call2 = call i16** @__ctype_b_loc() #7
  %5 = load i16*, i16** %call2, align 8
  %arrayidx3 = getelementptr inbounds i16, i16* %5, i64 %idxprom1
  %6 = load i16, i16* %arrayidx3, align 2
  %conv4 = zext i16 %6 to i32
  %and5 = and i32 %conv4, 4096
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %7 = load i32, i32* %c.addr, align 4
  %call8 = call i32 @toupper(i32 %7) #2
  %sub9 = sub nsw i32 %call8, 65
  %add = add nsw i32 %sub9, 10
  store i32 %add, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.7, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define %struct.obj* @getprop(%struct.obj* %plist, %struct.obj* %key) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %plist.addr = alloca %struct.obj*, align 8
  %key.addr = alloca %struct.obj*, align 8
  %l = alloca %struct.obj*, align 8
  store %struct.obj* %plist, %struct.obj** %plist.addr, align 8
  store %struct.obj* %key, %struct.obj** %key.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %plist.addr, align 8
  %call = call %struct.obj* @cdr(%struct.obj* %0)
  store %struct.obj* %call, %struct.obj** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp = icmp ne %struct.obj* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.obj*, %struct.obj** %l, align 8
  %call1 = call %struct.obj* @car(%struct.obj* %2)
  %3 = load %struct.obj*, %struct.obj** %key.addr, align 8
  %cmp2 = icmp eq %struct.obj* %call1, %3
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %4 = load %struct.obj*, %struct.obj** %l, align 8
  %call3 = call %struct.obj* @cadr(%struct.obj* %4)
  store %struct.obj* %call3, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %for.body
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load %struct.obj*, %struct.obj** %l, align 8
  %call4 = call %struct.obj* @cddr(%struct.obj* %5)
  store %struct.obj* %call4, %struct.obj** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %6 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %6
}

; Function Attrs: nounwind uwtable
define %struct.obj* @setprop(%struct.obj* %plist, %struct.obj* %key, %struct.obj* %value) #0 {
entry:
  %plist.addr = alloca %struct.obj*, align 8
  %key.addr = alloca %struct.obj*, align 8
  %value.addr = alloca %struct.obj*, align 8
  store %struct.obj* %plist, %struct.obj** %plist.addr, align 8
  store %struct.obj* %key, %struct.obj** %key.addr, align 8
  store %struct.obj* %value, %struct.obj** %value.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.97, i32 0, i32 0), %struct.obj* null)
  ret %struct.obj* null
}

; Function Attrs: nounwind uwtable
define %struct.obj* @putprop(%struct.obj* %plist, %struct.obj* %value, %struct.obj* %key) #0 {
entry:
  %plist.addr = alloca %struct.obj*, align 8
  %value.addr = alloca %struct.obj*, align 8
  %key.addr = alloca %struct.obj*, align 8
  store %struct.obj* %plist, %struct.obj** %plist.addr, align 8
  store %struct.obj* %value, %struct.obj** %value.addr, align 8
  store %struct.obj* %key, %struct.obj** %key.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %plist.addr, align 8
  %1 = load %struct.obj*, %struct.obj** %key.addr, align 8
  %2 = load %struct.obj*, %struct.obj** %value.addr, align 8
  %call = call %struct.obj* @setprop(%struct.obj* %0, %struct.obj* %1, %struct.obj* %2)
  ret %struct.obj* %call
}

; Function Attrs: nounwind uwtable
define %struct.obj* @ltypeof(%struct.obj* %obj) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %obj.addr = alloca %struct.obj*, align 8
  %x = alloca i64, align 8
  store %struct.obj* %obj, %struct.obj** %obj.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %obj.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %conv1 = sext i32 %cond to i64
  store i64 %conv1, i64* %x, align 8
  %3 = load i64, i64* %x, align 8
  switch i64 %3, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb.2
    i64 2, label %sw.bb.4
    i64 3, label %sw.bb.6
    i64 4, label %sw.bb.8
    i64 5, label %sw.bb.10
    i64 6, label %sw.bb.12
    i64 21, label %sw.bb.14
    i64 7, label %sw.bb.16
    i64 19, label %sw.bb.18
    i64 20, label %sw.bb.20
    i64 8, label %sw.bb.22
    i64 9, label %sw.bb.24
    i64 10, label %sw.bb.26
    i64 11, label %sw.bb.28
    i64 12, label %sw.bb.30
    i64 13, label %sw.bb.32
    i64 18, label %sw.bb.34
    i64 14, label %sw.bb.36
    i64 15, label %sw.bb.38
    i64 16, label %sw.bb.40
    i64 17, label %sw.bb.42
  ]

sw.bb:                                            ; preds = %cond.end
  %call = call %struct.obj* @cintern(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.98, i32 0, i32 0))
  store %struct.obj* %call, %struct.obj** %retval
  br label %return

sw.bb.2:                                          ; preds = %cond.end
  %call3 = call %struct.obj* @cintern(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.99, i32 0, i32 0))
  store %struct.obj* %call3, %struct.obj** %retval
  br label %return

sw.bb.4:                                          ; preds = %cond.end
  %call5 = call %struct.obj* @cintern(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.100, i32 0, i32 0))
  store %struct.obj* %call5, %struct.obj** %retval
  br label %return

sw.bb.6:                                          ; preds = %cond.end
  %call7 = call %struct.obj* @cintern(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.101, i32 0, i32 0))
  store %struct.obj* %call7, %struct.obj** %retval
  br label %return

sw.bb.8:                                          ; preds = %cond.end
  %call9 = call %struct.obj* @cintern(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.102, i32 0, i32 0))
  store %struct.obj* %call9, %struct.obj** %retval
  br label %return

sw.bb.10:                                         ; preds = %cond.end
  %call11 = call %struct.obj* @cintern(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0))
  store %struct.obj* %call11, %struct.obj** %retval
  br label %return

sw.bb.12:                                         ; preds = %cond.end
  %call13 = call %struct.obj* @cintern(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.104, i32 0, i32 0))
  store %struct.obj* %call13, %struct.obj** %retval
  br label %return

sw.bb.14:                                         ; preds = %cond.end
  %call15 = call %struct.obj* @cintern(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0))
  store %struct.obj* %call15, %struct.obj** %retval
  br label %return

sw.bb.16:                                         ; preds = %cond.end
  %call17 = call %struct.obj* @cintern(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.106, i32 0, i32 0))
  store %struct.obj* %call17, %struct.obj** %retval
  br label %return

sw.bb.18:                                         ; preds = %cond.end
  %call19 = call %struct.obj* @cintern(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.107, i32 0, i32 0))
  store %struct.obj* %call19, %struct.obj** %retval
  br label %return

sw.bb.20:                                         ; preds = %cond.end
  %call21 = call %struct.obj* @cintern(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.108, i32 0, i32 0))
  store %struct.obj* %call21, %struct.obj** %retval
  br label %return

sw.bb.22:                                         ; preds = %cond.end
  %call23 = call %struct.obj* @cintern(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.109, i32 0, i32 0))
  store %struct.obj* %call23, %struct.obj** %retval
  br label %return

sw.bb.24:                                         ; preds = %cond.end
  %call25 = call %struct.obj* @cintern(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.110, i32 0, i32 0))
  store %struct.obj* %call25, %struct.obj** %retval
  br label %return

sw.bb.26:                                         ; preds = %cond.end
  %call27 = call %struct.obj* @cintern(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.111, i32 0, i32 0))
  store %struct.obj* %call27, %struct.obj** %retval
  br label %return

sw.bb.28:                                         ; preds = %cond.end
  %call29 = call %struct.obj* @cintern(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.112, i32 0, i32 0))
  store %struct.obj* %call29, %struct.obj** %retval
  br label %return

sw.bb.30:                                         ; preds = %cond.end
  %call31 = call %struct.obj* @cintern(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.113, i32 0, i32 0))
  store %struct.obj* %call31, %struct.obj** %retval
  br label %return

sw.bb.32:                                         ; preds = %cond.end
  %call33 = call %struct.obj* @cintern(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.114, i32 0, i32 0))
  store %struct.obj* %call33, %struct.obj** %retval
  br label %return

sw.bb.34:                                         ; preds = %cond.end
  %call35 = call %struct.obj* @cintern(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.115, i32 0, i32 0))
  store %struct.obj* %call35, %struct.obj** %retval
  br label %return

sw.bb.36:                                         ; preds = %cond.end
  %call37 = call %struct.obj* @cintern(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.116, i32 0, i32 0))
  store %struct.obj* %call37, %struct.obj** %retval
  br label %return

sw.bb.38:                                         ; preds = %cond.end
  %call39 = call %struct.obj* @cintern(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.117, i32 0, i32 0))
  store %struct.obj* %call39, %struct.obj** %retval
  br label %return

sw.bb.40:                                         ; preds = %cond.end
  %call41 = call %struct.obj* @cintern(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.118, i32 0, i32 0))
  store %struct.obj* %call41, %struct.obj** %retval
  br label %return

sw.bb.42:                                         ; preds = %cond.end
  %call43 = call %struct.obj* @cintern(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.119, i32 0, i32 0))
  store %struct.obj* %call43, %struct.obj** %retval
  br label %return

sw.default:                                       ; preds = %cond.end
  %4 = load i64, i64* %x, align 8
  %conv44 = sitofp i64 %4 to double
  %call45 = call %struct.obj* @flocons(double %conv44)
  store %struct.obj* %call45, %struct.obj** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.42, %sw.bb.40, %sw.bb.38, %sw.bb.36, %sw.bb.34, %sw.bb.32, %sw.bb.30, %sw.bb.28, %sw.bb.26, %sw.bb.24, %sw.bb.22, %sw.bb.20, %sw.bb.18, %sw.bb.16, %sw.bb.14, %sw.bb.12, %sw.bb.10, %sw.bb.8, %sw.bb.6, %sw.bb.4, %sw.bb.2, %sw.bb
  %5 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %5
}

; Function Attrs: nounwind uwtable
define %struct.obj* @caaar(%struct.obj* %x) #0 {
entry:
  %x.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call %struct.obj* @car(%struct.obj* %0)
  %call1 = call %struct.obj* @car(%struct.obj* %call)
  %call2 = call %struct.obj* @car(%struct.obj* %call1)
  ret %struct.obj* %call2
}

; Function Attrs: nounwind uwtable
define %struct.obj* @caadr(%struct.obj* %x) #0 {
entry:
  %x.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call %struct.obj* @cdr(%struct.obj* %0)
  %call1 = call %struct.obj* @car(%struct.obj* %call)
  %call2 = call %struct.obj* @car(%struct.obj* %call1)
  ret %struct.obj* %call2
}

; Function Attrs: nounwind uwtable
define %struct.obj* @cadar(%struct.obj* %x) #0 {
entry:
  %x.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call %struct.obj* @car(%struct.obj* %0)
  %call1 = call %struct.obj* @cdr(%struct.obj* %call)
  %call2 = call %struct.obj* @car(%struct.obj* %call1)
  ret %struct.obj* %call2
}

; Function Attrs: nounwind uwtable
define %struct.obj* @caddr(%struct.obj* %x) #0 {
entry:
  %x.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call %struct.obj* @cdr(%struct.obj* %0)
  %call1 = call %struct.obj* @cdr(%struct.obj* %call)
  %call2 = call %struct.obj* @car(%struct.obj* %call1)
  ret %struct.obj* %call2
}

; Function Attrs: nounwind uwtable
define %struct.obj* @cdaar(%struct.obj* %x) #0 {
entry:
  %x.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call %struct.obj* @car(%struct.obj* %0)
  %call1 = call %struct.obj* @car(%struct.obj* %call)
  %call2 = call %struct.obj* @cdr(%struct.obj* %call1)
  ret %struct.obj* %call2
}

; Function Attrs: nounwind uwtable
define %struct.obj* @cdadr(%struct.obj* %x) #0 {
entry:
  %x.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call %struct.obj* @cdr(%struct.obj* %0)
  %call1 = call %struct.obj* @car(%struct.obj* %call)
  %call2 = call %struct.obj* @cdr(%struct.obj* %call1)
  ret %struct.obj* %call2
}

; Function Attrs: nounwind uwtable
define %struct.obj* @cddar(%struct.obj* %x) #0 {
entry:
  %x.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call %struct.obj* @car(%struct.obj* %0)
  %call1 = call %struct.obj* @cdr(%struct.obj* %call)
  %call2 = call %struct.obj* @cdr(%struct.obj* %call1)
  ret %struct.obj* %call2
}

; Function Attrs: nounwind uwtable
define %struct.obj* @cdddr(%struct.obj* %x) #0 {
entry:
  %x.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call %struct.obj* @cdr(%struct.obj* %0)
  %call1 = call %struct.obj* @cdr(%struct.obj* %call)
  %call2 = call %struct.obj* @cdr(%struct.obj* %call1)
  ret %struct.obj* %call2
}

; Function Attrs: nounwind uwtable
define %struct.obj* @ash(%struct.obj* %value, %struct.obj* %n) #0 {
entry:
  %value.addr = alloca %struct.obj*, align 8
  %n.addr = alloca %struct.obj*, align 8
  %m = alloca i64, align 8
  %k = alloca i64, align 8
  store %struct.obj* %value, %struct.obj** %value.addr, align 8
  store %struct.obj* %n, %struct.obj** %n.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %value.addr, align 8
  %call = call i64 @get_c_long(%struct.obj* %0)
  store i64 %call, i64* %m, align 8
  %1 = load %struct.obj*, %struct.obj** %n.addr, align 8
  %call1 = call i64 @get_c_long(%struct.obj* %1)
  store i64 %call1, i64* %k, align 8
  %2 = load i64, i64* %k, align 8
  %cmp = icmp sgt i64 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %m, align 8
  %4 = load i64, i64* %k, align 8
  %shl = shl i64 %3, %4
  store i64 %shl, i64* %m, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i64, i64* %m, align 8
  %6 = load i64, i64* %k, align 8
  %sub = sub nsw i64 0, %6
  %shr = ashr i64 %5, %sub
  store i64 %shr, i64* %m, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i64, i64* %m, align 8
  %conv = sitofp i64 %7 to double
  %call2 = call %struct.obj* @flocons(double %conv)
  ret %struct.obj* %call2
}

; Function Attrs: nounwind uwtable
define %struct.obj* @bitand(%struct.obj* %a, %struct.obj* %b) #0 {
entry:
  %a.addr = alloca %struct.obj*, align 8
  %b.addr = alloca %struct.obj*, align 8
  store %struct.obj* %a, %struct.obj** %a.addr, align 8
  store %struct.obj* %b, %struct.obj** %b.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %call = call i64 @get_c_long(%struct.obj* %0)
  %1 = load %struct.obj*, %struct.obj** %b.addr, align 8
  %call1 = call i64 @get_c_long(%struct.obj* %1)
  %and = and i64 %call, %call1
  %conv = sitofp i64 %and to double
  %call2 = call %struct.obj* @flocons(double %conv)
  ret %struct.obj* %call2
}

; Function Attrs: nounwind uwtable
define %struct.obj* @bitor(%struct.obj* %a, %struct.obj* %b) #0 {
entry:
  %a.addr = alloca %struct.obj*, align 8
  %b.addr = alloca %struct.obj*, align 8
  store %struct.obj* %a, %struct.obj** %a.addr, align 8
  store %struct.obj* %b, %struct.obj** %b.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %call = call i64 @get_c_long(%struct.obj* %0)
  %1 = load %struct.obj*, %struct.obj** %b.addr, align 8
  %call1 = call i64 @get_c_long(%struct.obj* %1)
  %or = or i64 %call, %call1
  %conv = sitofp i64 %or to double
  %call2 = call %struct.obj* @flocons(double %conv)
  ret %struct.obj* %call2
}

; Function Attrs: nounwind uwtable
define %struct.obj* @bitxor(%struct.obj* %a, %struct.obj* %b) #0 {
entry:
  %a.addr = alloca %struct.obj*, align 8
  %b.addr = alloca %struct.obj*, align 8
  store %struct.obj* %a, %struct.obj** %a.addr, align 8
  store %struct.obj* %b, %struct.obj** %b.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %call = call i64 @get_c_long(%struct.obj* %0)
  %1 = load %struct.obj*, %struct.obj** %b.addr, align 8
  %call1 = call i64 @get_c_long(%struct.obj* %1)
  %xor = xor i64 %call, %call1
  %conv = sitofp i64 %xor to double
  %call2 = call %struct.obj* @flocons(double %conv)
  ret %struct.obj* %call2
}

; Function Attrs: nounwind uwtable
define %struct.obj* @bitnot(%struct.obj* %a) #0 {
entry:
  %a.addr = alloca %struct.obj*, align 8
  store %struct.obj* %a, %struct.obj** %a.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %a.addr, align 8
  %call = call i64 @get_c_long(%struct.obj* %0)
  %neg = xor i64 %call, -1
  %conv = sitofp i64 %neg to double
  %call1 = call %struct.obj* @flocons(double %conv)
  ret %struct.obj* %call1
}

; Function Attrs: nounwind uwtable
define %struct.obj* @leval_prog1(%struct.obj* %args, %struct.obj* %env) #0 {
entry:
  %args.addr = alloca %struct.obj*, align 8
  %env.addr = alloca %struct.obj*, align 8
  %retval1 = alloca %struct.obj*, align 8
  %l = alloca %struct.obj*, align 8
  store %struct.obj* %args, %struct.obj** %args.addr, align 8
  store %struct.obj* %env, %struct.obj** %env.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call = call %struct.obj* @car(%struct.obj* %0)
  %1 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call2 = call %struct.obj* @leval(%struct.obj* %call, %struct.obj* %1)
  store %struct.obj* %call2, %struct.obj** %retval1, align 8
  %2 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call3 = call %struct.obj* @cdr(%struct.obj* %2)
  store %struct.obj* %call3, %struct.obj** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp = icmp ne %struct.obj* %3, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.obj*, %struct.obj** %l, align 8
  %call4 = call %struct.obj* @car(%struct.obj* %4)
  %5 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call5 = call %struct.obj* @leval(%struct.obj* %call4, %struct.obj* %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %struct.obj*, %struct.obj** %l, align 8
  %call6 = call %struct.obj* @cdr(%struct.obj* %6)
  store %struct.obj* %call6, %struct.obj** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.obj*, %struct.obj** %retval1, align 8
  ret %struct.obj* %7
}

; Function Attrs: nounwind uwtable
define %struct.obj* @leval_cond(%struct.obj** %pform, %struct.obj** %penv) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %pform.addr = alloca %struct.obj**, align 8
  %penv.addr = alloca %struct.obj**, align 8
  %args = alloca %struct.obj*, align 8
  %env = alloca %struct.obj*, align 8
  %clause = alloca %struct.obj*, align 8
  %value = alloca %struct.obj*, align 8
  %next = alloca %struct.obj*, align 8
  store %struct.obj** %pform, %struct.obj*** %pform.addr, align 8
  store %struct.obj** %penv, %struct.obj*** %penv.addr, align 8
  %0 = load %struct.obj**, %struct.obj*** %pform.addr, align 8
  %1 = load %struct.obj*, %struct.obj** %0, align 8
  %call = call %struct.obj* @cdr(%struct.obj* %1)
  store %struct.obj* %call, %struct.obj** %args, align 8
  %2 = load %struct.obj**, %struct.obj*** %penv.addr, align 8
  %3 = load %struct.obj*, %struct.obj** %2, align 8
  store %struct.obj* %3, %struct.obj** %env, align 8
  %4 = load %struct.obj*, %struct.obj** %args, align 8
  %cmp = icmp eq %struct.obj* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.obj**, %struct.obj*** %pform.addr, align 8
  store %struct.obj* null, %struct.obj** %5, align 8
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.obj*, %struct.obj** %args, align 8
  %call1 = call %struct.obj* @cdr(%struct.obj* %6)
  store %struct.obj* %call1, %struct.obj** %next, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.19, %if.end
  %7 = load %struct.obj*, %struct.obj** %next, align 8
  %cmp2 = icmp ne %struct.obj* %7, null
  br i1 %cmp2, label %while.body, label %while.end.21

while.body:                                       ; preds = %while.cond
  %8 = load %struct.obj*, %struct.obj** %args, align 8
  %call3 = call %struct.obj* @car(%struct.obj* %8)
  store %struct.obj* %call3, %struct.obj** %clause, align 8
  %9 = load %struct.obj*, %struct.obj** %clause, align 8
  %call4 = call %struct.obj* @car(%struct.obj* %9)
  %10 = load %struct.obj*, %struct.obj** %env, align 8
  %call5 = call %struct.obj* @leval(%struct.obj* %call4, %struct.obj* %10)
  store %struct.obj* %call5, %struct.obj** %value, align 8
  %11 = load %struct.obj*, %struct.obj** %value, align 8
  %cmp6 = icmp ne %struct.obj* %11, null
  br i1 %cmp6, label %if.then.7, label %if.end.19

if.then.7:                                        ; preds = %while.body
  %12 = load %struct.obj*, %struct.obj** %clause, align 8
  %call8 = call %struct.obj* @cdr(%struct.obj* %12)
  store %struct.obj* %call8, %struct.obj** %clause, align 8
  %13 = load %struct.obj*, %struct.obj** %clause, align 8
  %cmp9 = icmp eq %struct.obj* %13, null
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then.7
  %14 = load %struct.obj*, %struct.obj** %value, align 8
  %15 = load %struct.obj**, %struct.obj*** %pform.addr, align 8
  store %struct.obj* %14, %struct.obj** %15, align 8
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %if.then.7
  %16 = load %struct.obj*, %struct.obj** %clause, align 8
  %call11 = call %struct.obj* @cdr(%struct.obj* %16)
  store %struct.obj* %call11, %struct.obj** %next, align 8
  br label %while.cond.12

while.cond.12:                                    ; preds = %while.body.14, %if.else
  %17 = load %struct.obj*, %struct.obj** %next, align 8
  %cmp13 = icmp ne %struct.obj* %17, null
  br i1 %cmp13, label %while.body.14, label %while.end

while.body.14:                                    ; preds = %while.cond.12
  %18 = load %struct.obj*, %struct.obj** %clause, align 8
  %call15 = call %struct.obj* @car(%struct.obj* %18)
  %19 = load %struct.obj*, %struct.obj** %env, align 8
  %call16 = call %struct.obj* @leval(%struct.obj* %call15, %struct.obj* %19)
  %20 = load %struct.obj*, %struct.obj** %next, align 8
  store %struct.obj* %20, %struct.obj** %clause, align 8
  %21 = load %struct.obj*, %struct.obj** %next, align 8
  %call17 = call %struct.obj* @cdr(%struct.obj* %21)
  store %struct.obj* %call17, %struct.obj** %next, align 8
  br label %while.cond.12

while.end:                                        ; preds = %while.cond.12
  %22 = load %struct.obj*, %struct.obj** %clause, align 8
  %call18 = call %struct.obj* @car(%struct.obj* %22)
  %23 = load %struct.obj**, %struct.obj*** %pform.addr, align 8
  store %struct.obj* %call18, %struct.obj** %23, align 8
  %24 = load %struct.obj*, %struct.obj** @sym_t, align 8
  store %struct.obj* %24, %struct.obj** %retval
  br label %return

if.end.19:                                        ; preds = %while.body
  %25 = load %struct.obj*, %struct.obj** %next, align 8
  store %struct.obj* %25, %struct.obj** %args, align 8
  %26 = load %struct.obj*, %struct.obj** %next, align 8
  %call20 = call %struct.obj* @cdr(%struct.obj* %26)
  store %struct.obj* %call20, %struct.obj** %next, align 8
  br label %while.cond

while.end.21:                                     ; preds = %while.cond
  %27 = load %struct.obj*, %struct.obj** %args, align 8
  %call22 = call %struct.obj* @car(%struct.obj* %27)
  store %struct.obj* %call22, %struct.obj** %clause, align 8
  %28 = load %struct.obj*, %struct.obj** %clause, align 8
  %call23 = call %struct.obj* @cdr(%struct.obj* %28)
  store %struct.obj* %call23, %struct.obj** %next, align 8
  %29 = load %struct.obj*, %struct.obj** %next, align 8
  %cmp24 = icmp eq %struct.obj* %29, null
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %while.end.21
  %30 = load %struct.obj*, %struct.obj** %clause, align 8
  %call26 = call %struct.obj* @car(%struct.obj* %30)
  %31 = load %struct.obj**, %struct.obj*** %pform.addr, align 8
  store %struct.obj* %call26, %struct.obj** %31, align 8
  %32 = load %struct.obj*, %struct.obj** @sym_t, align 8
  store %struct.obj* %32, %struct.obj** %retval
  br label %return

if.end.27:                                        ; preds = %while.end.21
  %33 = load %struct.obj*, %struct.obj** %clause, align 8
  %call28 = call %struct.obj* @car(%struct.obj* %33)
  %34 = load %struct.obj*, %struct.obj** %env, align 8
  %call29 = call %struct.obj* @leval(%struct.obj* %call28, %struct.obj* %34)
  store %struct.obj* %call29, %struct.obj** %value, align 8
  %35 = load %struct.obj*, %struct.obj** %value, align 8
  %cmp30 = icmp eq %struct.obj* %35, null
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.27
  %36 = load %struct.obj**, %struct.obj*** %pform.addr, align 8
  store %struct.obj* null, %struct.obj** %36, align 8
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end.32:                                        ; preds = %if.end.27
  %37 = load %struct.obj*, %struct.obj** %next, align 8
  store %struct.obj* %37, %struct.obj** %clause, align 8
  %38 = load %struct.obj*, %struct.obj** %next, align 8
  %call33 = call %struct.obj* @cdr(%struct.obj* %38)
  store %struct.obj* %call33, %struct.obj** %next, align 8
  br label %while.cond.34

while.cond.34:                                    ; preds = %while.body.36, %if.end.32
  %39 = load %struct.obj*, %struct.obj** %next, align 8
  %cmp35 = icmp ne %struct.obj* %39, null
  br i1 %cmp35, label %while.body.36, label %while.end.40

while.body.36:                                    ; preds = %while.cond.34
  %40 = load %struct.obj*, %struct.obj** %clause, align 8
  %call37 = call %struct.obj* @car(%struct.obj* %40)
  %41 = load %struct.obj*, %struct.obj** %env, align 8
  %call38 = call %struct.obj* @leval(%struct.obj* %call37, %struct.obj* %41)
  %42 = load %struct.obj*, %struct.obj** %next, align 8
  store %struct.obj* %42, %struct.obj** %clause, align 8
  %43 = load %struct.obj*, %struct.obj** %next, align 8
  %call39 = call %struct.obj* @cdr(%struct.obj* %43)
  store %struct.obj* %call39, %struct.obj** %next, align 8
  br label %while.cond.34

while.end.40:                                     ; preds = %while.cond.34
  %44 = load %struct.obj*, %struct.obj** %clause, align 8
  %call41 = call %struct.obj* @car(%struct.obj* %44)
  %45 = load %struct.obj**, %struct.obj*** %pform.addr, align 8
  store %struct.obj* %call41, %struct.obj** %45, align 8
  %46 = load %struct.obj*, %struct.obj** @sym_t, align 8
  store %struct.obj* %46, %struct.obj** %retval
  br label %return

return:                                           ; preds = %while.end.40, %if.then.31, %if.then.25, %while.end, %if.then.10, %if.then
  %47 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %47
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lstrspn(%struct.obj* %str1, %struct.obj* %str2) #0 {
entry:
  %str1.addr = alloca %struct.obj*, align 8
  %str2.addr = alloca %struct.obj*, align 8
  store %struct.obj* %str1, %struct.obj** %str1.addr, align 8
  store %struct.obj* %str2, %struct.obj** %str2.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %str1.addr, align 8
  %call = call i8* @get_c_string(%struct.obj* %0)
  %1 = load %struct.obj*, %struct.obj** %str2.addr, align 8
  %call1 = call i8* @get_c_string(%struct.obj* %1)
  %call2 = call i64 @strspn(i8* %call, i8* %call1) #6
  %conv = uitofp i64 %call2 to double
  %call3 = call %struct.obj* @flocons(double %conv)
  ret %struct.obj* %call3
}

; Function Attrs: nounwind readonly
declare i64 @strspn(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define %struct.obj* @lstrcspn(%struct.obj* %str1, %struct.obj* %str2) #0 {
entry:
  %str1.addr = alloca %struct.obj*, align 8
  %str2.addr = alloca %struct.obj*, align 8
  store %struct.obj* %str1, %struct.obj** %str1.addr, align 8
  store %struct.obj* %str2, %struct.obj** %str2.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %str1.addr, align 8
  %call = call i8* @get_c_string(%struct.obj* %0)
  %1 = load %struct.obj*, %struct.obj** %str2.addr, align 8
  %call1 = call i8* @get_c_string(%struct.obj* %1)
  %call2 = call i64 @strcspn(i8* %call, i8* %call1) #6
  %conv = uitofp i64 %call2 to double
  %call3 = call %struct.obj* @flocons(double %conv)
  ret %struct.obj* %call3
}

; Function Attrs: nounwind uwtable
define %struct.obj* @substring_equal(%struct.obj* %str1, %struct.obj* %str2, %struct.obj* %start, %struct.obj* %end) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %str1.addr = alloca %struct.obj*, align 8
  %str2.addr = alloca %struct.obj*, align 8
  %start.addr = alloca %struct.obj*, align 8
  %end.addr = alloca %struct.obj*, align 8
  %cstr1 = alloca i8*, align 8
  %cstr2 = alloca i8*, align 8
  %len1 = alloca i64, align 8
  %n = alloca i64, align 8
  %s = alloca i64, align 8
  %e = alloca i64, align 8
  store %struct.obj* %str1, %struct.obj** %str1.addr, align 8
  store %struct.obj* %str2, %struct.obj** %str2.addr, align 8
  store %struct.obj* %start, %struct.obj** %start.addr, align 8
  store %struct.obj* %end, %struct.obj** %end.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %str1.addr, align 8
  %call = call i8* @get_c_string_dim(%struct.obj* %0, i64* %len1)
  store i8* %call, i8** %cstr1, align 8
  %1 = load %struct.obj*, %struct.obj** %str2.addr, align 8
  %call1 = call i8* @get_c_string_dim(%struct.obj* %1, i64* %n)
  store i8* %call1, i8** %cstr2, align 8
  %2 = load %struct.obj*, %struct.obj** %start.addr, align 8
  %cmp = icmp eq %struct.obj* %2, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct.obj*, %struct.obj** %start.addr, align 8
  %call2 = call i64 @get_c_long(%struct.obj* %3)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %call2, %cond.false ]
  store i64 %cond, i64* %s, align 8
  %4 = load %struct.obj*, %struct.obj** %end.addr, align 8
  %cmp3 = icmp eq %struct.obj* %4, null
  br i1 %cmp3, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %cond.end
  %5 = load i64, i64* %len1, align 8
  br label %cond.end.7

cond.false.5:                                     ; preds = %cond.end
  %6 = load %struct.obj*, %struct.obj** %end.addr, align 8
  %call6 = call i64 @get_c_long(%struct.obj* %6)
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.5, %cond.true.4
  %cond8 = phi i64 [ %5, %cond.true.4 ], [ %call6, %cond.false.5 ]
  store i64 %cond8, i64* %e, align 8
  %7 = load i64, i64* %s, align 8
  %cmp9 = icmp slt i64 %7, 0
  br i1 %cmp9, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.7
  %8 = load i64, i64* %s, align 8
  %9 = load i64, i64* %e, align 8
  %cmp10 = icmp sgt i64 %8, %9
  br i1 %cmp10, label %if.then, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false
  %10 = load i64, i64* %e, align 8
  %cmp12 = icmp slt i64 %10, 0
  br i1 %cmp12, label %if.then, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.11
  %11 = load i64, i64* %e, align 8
  %12 = load i64, i64* %n, align 8
  %cmp14 = icmp sgt i64 %11, %12
  br i1 %cmp14, label %if.then, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.13
  %13 = load i64, i64* %e, align 8
  %14 = load i64, i64* %s, align 8
  %sub = sub nsw i64 %13, %14
  %15 = load i64, i64* %len1, align 8
  %cmp16 = icmp ne i64 %sub, %15
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.15, %lor.lhs.false.13, %lor.lhs.false.11, %lor.lhs.false, %cond.end.7
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.15
  %16 = load i8*, i8** %cstr1, align 8
  %17 = load i64, i64* %s, align 8
  %18 = load i8*, i8** %cstr2, align 8
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 %17
  %19 = load i64, i64* %e, align 8
  %20 = load i64, i64* %s, align 8
  %sub17 = sub nsw i64 %19, %20
  %call18 = call i32 @memcmp(i8* %16, i8* %arrayidx, i64 %sub17) #6
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %if.end
  %call21 = call %struct.obj* @a_true_value()
  br label %cond.end.23

cond.false.22:                                    ; preds = %if.end
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct.obj* [ %call21, %cond.true.20 ], [ null, %cond.false.22 ]
  store %struct.obj* %cond24, %struct.obj** %retval
  br label %return

return:                                           ; preds = %cond.end.23, %if.then
  %21 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %21
}

declare %struct.obj* @a_true_value() #1

; Function Attrs: nounwind uwtable
define %struct.obj* @substring_equalcase(%struct.obj* %str1, %struct.obj* %str2, %struct.obj* %start, %struct.obj* %end) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %str1.addr = alloca %struct.obj*, align 8
  %str2.addr = alloca %struct.obj*, align 8
  %start.addr = alloca %struct.obj*, align 8
  %end.addr = alloca %struct.obj*, align 8
  %cstr1 = alloca i8*, align 8
  %cstr2 = alloca i8*, align 8
  %len1 = alloca i64, align 8
  %n = alloca i64, align 8
  %s = alloca i64, align 8
  %e = alloca i64, align 8
  store %struct.obj* %str1, %struct.obj** %str1.addr, align 8
  store %struct.obj* %str2, %struct.obj** %str2.addr, align 8
  store %struct.obj* %start, %struct.obj** %start.addr, align 8
  store %struct.obj* %end, %struct.obj** %end.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %str1.addr, align 8
  %call = call i8* @get_c_string_dim(%struct.obj* %0, i64* %len1)
  store i8* %call, i8** %cstr1, align 8
  %1 = load %struct.obj*, %struct.obj** %str2.addr, align 8
  %call1 = call i8* @get_c_string_dim(%struct.obj* %1, i64* %n)
  store i8* %call1, i8** %cstr2, align 8
  %2 = load %struct.obj*, %struct.obj** %start.addr, align 8
  %cmp = icmp eq %struct.obj* %2, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct.obj*, %struct.obj** %start.addr, align 8
  %call2 = call i64 @get_c_long(%struct.obj* %3)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %call2, %cond.false ]
  store i64 %cond, i64* %s, align 8
  %4 = load %struct.obj*, %struct.obj** %end.addr, align 8
  %cmp3 = icmp eq %struct.obj* %4, null
  br i1 %cmp3, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %cond.end
  %5 = load i64, i64* %len1, align 8
  br label %cond.end.7

cond.false.5:                                     ; preds = %cond.end
  %6 = load %struct.obj*, %struct.obj** %end.addr, align 8
  %call6 = call i64 @get_c_long(%struct.obj* %6)
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.5, %cond.true.4
  %cond8 = phi i64 [ %5, %cond.true.4 ], [ %call6, %cond.false.5 ]
  store i64 %cond8, i64* %e, align 8
  %7 = load i64, i64* %s, align 8
  %cmp9 = icmp slt i64 %7, 0
  br i1 %cmp9, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.7
  %8 = load i64, i64* %s, align 8
  %9 = load i64, i64* %e, align 8
  %cmp10 = icmp sgt i64 %8, %9
  br i1 %cmp10, label %if.then, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false
  %10 = load i64, i64* %e, align 8
  %cmp12 = icmp slt i64 %10, 0
  br i1 %cmp12, label %if.then, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.11
  %11 = load i64, i64* %e, align 8
  %12 = load i64, i64* %n, align 8
  %cmp14 = icmp sgt i64 %11, %12
  br i1 %cmp14, label %if.then, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.13
  %13 = load i64, i64* %e, align 8
  %14 = load i64, i64* %s, align 8
  %sub = sub nsw i64 %13, %14
  %15 = load i64, i64* %len1, align 8
  %cmp16 = icmp ne i64 %sub, %15
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.15, %lor.lhs.false.13, %lor.lhs.false.11, %lor.lhs.false, %cond.end.7
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.15
  %16 = load i8*, i8** %cstr1, align 8
  %17 = load i64, i64* %s, align 8
  %18 = load i8*, i8** %cstr2, align 8
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 %17
  %19 = load i64, i64* %e, align 8
  %20 = load i64, i64* %s, align 8
  %sub17 = sub nsw i64 %19, %20
  %call18 = call i32 @strncasecmp(i8* %16, i8* %arrayidx, i64 %sub17) #6
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %if.end
  %call21 = call %struct.obj* @a_true_value()
  br label %cond.end.23

cond.false.22:                                    ; preds = %if.end
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct.obj* [ %call21, %cond.true.20 ], [ null, %cond.false.22 ]
  store %struct.obj* %cond24, %struct.obj** %retval
  br label %return

return:                                           ; preds = %cond.end.23, %if.then
  %21 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %21
}

; Function Attrs: nounwind readonly
declare i32 @strncasecmp(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define %struct.obj* @set_eval_history(%struct.obj* %len, %struct.obj* %circ) #0 {
entry:
  %len.addr = alloca %struct.obj*, align 8
  %circ.addr = alloca %struct.obj*, align 8
  %data = alloca %struct.obj*, align 8
  store %struct.obj* %len, %struct.obj** %len.addr, align 8
  store %struct.obj* %circ, %struct.obj** %circ.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %len.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %len.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct.obj*, %struct.obj** %len.addr, align 8
  %call = call %struct.obj* @make_list(%struct.obj* %2, %struct.obj* null)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.obj* [ %1, %cond.true ], [ %call, %cond.false ]
  store %struct.obj* %cond, %struct.obj** %data, align 8
  %3 = load %struct.obj*, %struct.obj** %circ.addr, align 8
  %cmp1 = icmp ne %struct.obj* %3, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %4 = load %struct.obj*, %struct.obj** %data, align 8
  %5 = load %struct.obj*, %struct.obj** %data, align 8
  %call2 = call %struct.obj* @nconc(%struct.obj* %4, %struct.obj* %5)
  store %struct.obj* %call2, %struct.obj** %data, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %call3 = call %struct.obj* @cintern(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.120, i32 0, i32 0))
  %6 = load %struct.obj*, %struct.obj** %data, align 8
  %call4 = call %struct.obj* @setvar(%struct.obj* %call3, %struct.obj* %6, %struct.obj* null)
  %call5 = call %struct.obj* @cintern(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.121, i32 0, i32 0))
  %7 = load %struct.obj*, %struct.obj** %data, align 8
  %call6 = call %struct.obj* @setvar(%struct.obj* %call5, %struct.obj* %7, %struct.obj* null)
  %8 = load %struct.obj*, %struct.obj** %len.addr, align 8
  ret %struct.obj* %8
}

declare %struct.obj* @setvar(%struct.obj*, %struct.obj*, %struct.obj*) #1

; Function Attrs: nounwind uwtable
define void @init_subrs_a() #0 {
entry:
  call void @init_subr_2(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.122, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @aref1)
  call void @init_subr_3(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.123, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)* @aset1)
  call void @init_lsubr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.124, i32 0, i32 0), %struct.obj* (%struct.obj*)* @string_append)
  call void @init_lsubr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.125, i32 0, i32 0), %struct.obj* (%struct.obj*)* @bytes_append)
  call void @init_subr_1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.126, i32 0, i32 0), %struct.obj* (%struct.obj*)* @string_length)
  call void @init_subr_1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.127, i32 0, i32 0), %struct.obj* (%struct.obj*)* @string_dim)
  call void @init_subr_1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.128, i32 0, i32 0), %struct.obj* (%struct.obj*)* @read_from_string)
  call void @init_subr_3(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.129, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)* @print_to_string)
  call void @init_subr_2(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.130, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @cons_array)
  call void @init_subr_2(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.131, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @sxhash)
  call void @init_subr_2(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.132, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @equal)
  call void @init_subr_2(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.133, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @href)
  call void @init_subr_3(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.134, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)* @hset)
  call void @init_subr_2(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.135, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @assoc)
  call void @init_subr_2(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.136, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @assv)
  call void @init_subr_1(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.137, i32 0, i32 0), %struct.obj* (%struct.obj*)* @fast_read)
  call void @init_subr_2(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.138, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @fast_print)
  call void @init_subr_2(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.139, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @make_list)
  call void @init_subr_2(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.140, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @lfread)
  call void @init_subr_2(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.141, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @lfwrite)
  call void @init_subr_1(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.142, i32 0, i32 0), %struct.obj* (%struct.obj*)* @lfflush)
  call void @init_subr_1(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.143, i32 0, i32 0), %struct.obj* (%struct.obj*)* @llength)
  call void @init_subr_4(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.144, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)* @number2string)
  call void @init_subr_2(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.145, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @string2number)
  call void @init_subr_3(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.146, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)* @substring)
  call void @init_subr_2(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.147, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @string_search)
  call void @init_subr_1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.148, i32 0, i32 0), %struct.obj* (%struct.obj*)* @string_trim)
  call void @init_subr_1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.149, i32 0, i32 0), %struct.obj* (%struct.obj*)* @string_trim_left)
  call void @init_subr_1(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.150, i32 0, i32 0), %struct.obj* (%struct.obj*)* @string_trim_right)
  call void @init_subr_1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.151, i32 0, i32 0), %struct.obj* (%struct.obj*)* @string_upcase)
  call void @init_subr_1(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.152, i32 0, i32 0), %struct.obj* (%struct.obj*)* @string_downcase)
  call void @init_subr_2(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.153, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @lstrcmp)
  call void @init_subr_2(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.154, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @lstrcat)
  call void @init_subr_2(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.155, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @lstrcpy)
  call void @init_subr_2(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.156, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @lstrbreakup)
  call void @init_subr_2(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.157, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @lstrunbreakup)
  call void @init_subr_1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.158, i32 0, i32 0), %struct.obj* (%struct.obj*)* @stringp)
  call void @gc_protect_sym(%struct.obj** @sym_e, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.159, i32 0, i32 0))
  call void @gc_protect_sym(%struct.obj** @sym_f, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.160, i32 0, i32 0))
  call void @gc_protect_sym(%struct.obj** @sym_plists, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.161, i32 0, i32 0))
  %0 = load %struct.obj*, %struct.obj** @sym_plists, align 8
  %call = call %struct.obj* @arcons(i64 16, i64 100, i64 1)
  %call1 = call %struct.obj* @setvar(%struct.obj* %0, %struct.obj* %call, %struct.obj* null)
  call void @init_subr_3(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.162, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)* @lref_default)
  call void @init_subr_3(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.163, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)* @larg_default)
  call void @init_subr_3(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.164, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)* @lkey_default)
  call void @init_lsubr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.165, i32 0, i32 0), %struct.obj* (%struct.obj*)* @llist)
  call void @init_lsubr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.166, i32 0, i32 0), %struct.obj* (%struct.obj*)* @writes)
  call void @init_subr_3(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.167, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)* @lqsort)
  call void @init_subr_2(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.168, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @string_lessp)
  call void @init_lsubr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.169, i32 0, i32 0), %struct.obj* (%struct.obj*)* @mapcar)
  call void @init_subr_3(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.170, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)* @mapcar2)
  call void @init_subr_2(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.171, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @mapcar1)
  call void @init_subr_3(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.172, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)* @benchmark_funcall1)
  call void @init_lsubr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.173, i32 0, i32 0), %struct.obj* (%struct.obj*)* @benchmark_funcall2)
  call void @init_subr_3(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.174, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)* @benchmark_eval)
  call void @init_subr_2(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.175, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @lfmod)
  call void @init_subr_2(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.176, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @lsubset)
  call void @init_subr_1(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.177, i32 0, i32 0), %struct.obj* (%struct.obj*)* @base64encode)
  call void @init_subr_1(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.178, i32 0, i32 0), %struct.obj* (%struct.obj*)* @base64decode)
  call void @init_subr_3(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.179, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)* @ass)
  call void @init_subr_2(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.180, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @append2)
  call void @init_lsubr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.181, i32 0, i32 0), %struct.obj* (%struct.obj*)* @append)
  call void @init_subr_5(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.182, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)* @fast_save)
  call void @init_subr_2(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.183, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @fast_load)
  call void @init_subr_3(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.184, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)* @swrite)
  call void @init_subr_2(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.185, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @lpow)
  call void @init_subr_1(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.186, i32 0, i32 0), %struct.obj* (%struct.obj*)* @lexp)
  call void @init_subr_1(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.187, i32 0, i32 0), %struct.obj* (%struct.obj*)* @llog)
  call void @init_subr_1(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.188, i32 0, i32 0), %struct.obj* (%struct.obj*)* @lsin)
  call void @init_subr_1(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.189, i32 0, i32 0), %struct.obj* (%struct.obj*)* @lcos)
  call void @init_subr_1(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.190, i32 0, i32 0), %struct.obj* (%struct.obj*)* @ltan)
  call void @init_subr_1(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.191, i32 0, i32 0), %struct.obj* (%struct.obj*)* @lasin)
  call void @init_subr_1(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.192, i32 0, i32 0), %struct.obj* (%struct.obj*)* @lacos)
  call void @init_subr_1(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.193, i32 0, i32 0), %struct.obj* (%struct.obj*)* @latan)
  call void @init_subr_2(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.194, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @latan2)
  call void @init_subr_1(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.195, i32 0, i32 0), %struct.obj* (%struct.obj*)* @ltypeof)
  call void @init_subr_1(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.196, i32 0, i32 0), %struct.obj* (%struct.obj*)* @caaar)
  call void @init_subr_1(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.197, i32 0, i32 0), %struct.obj* (%struct.obj*)* @caadr)
  call void @init_subr_1(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.198, i32 0, i32 0), %struct.obj* (%struct.obj*)* @cadar)
  call void @init_subr_1(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.199, i32 0, i32 0), %struct.obj* (%struct.obj*)* @caddr)
  call void @init_subr_1(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.200, i32 0, i32 0), %struct.obj* (%struct.obj*)* @cdaar)
  call void @init_subr_1(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.201, i32 0, i32 0), %struct.obj* (%struct.obj*)* @cdadr)
  call void @init_subr_1(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.202, i32 0, i32 0), %struct.obj* (%struct.obj*)* @cddar)
  call void @init_subr_1(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.203, i32 0, i32 0), %struct.obj* (%struct.obj*)* @cdddr)
  %call2 = call %struct.obj* @cintern(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.204, i32 0, i32 0))
  %call3 = call double @atan(double 1.000000e+00) #2
  %mul = fmul double %call3, 4.000000e+00
  %call4 = call %struct.obj* @flocons(double %mul)
  %call5 = call %struct.obj* @setvar(%struct.obj* %call2, %struct.obj* %call4, %struct.obj* null)
  call void @init_base64_table()
  call void @init_subr_1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.205, i32 0, i32 0), %struct.obj* (%struct.obj*)* @hexstr)
  call void @init_subr_1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.206, i32 0, i32 0), %struct.obj* (%struct.obj*)* @hexstr2bytes)
  call void @init_subr_3(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.179, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)* @ass)
  call void @init_subr_2(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.207, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @bitand)
  call void @init_subr_2(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.208, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @bitor)
  call void @init_subr_2(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.209, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @bitxor)
  call void @init_subr_1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.210, i32 0, i32 0), %struct.obj* (%struct.obj*)* @bitnot)
  call void @init_msubr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.211, i32 0, i32 0), %struct.obj* (%struct.obj**, %struct.obj**)* @leval_cond)
  call void @init_fsubr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.212, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @leval_prog1)
  call void @init_subr_2(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.213, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @lstrspn)
  call void @init_subr_2(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.214, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @lstrcspn)
  call void @init_subr_4(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.215, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)* @substring_equal)
  call void @init_subr_4(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.216, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)* @substring_equalcase)
  call void @init_subr_1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.217, i32 0, i32 0), %struct.obj* (%struct.obj*)* @butlast)
  call void @init_subr_2(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.218, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @ash)
  call void @init_subr_2(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.219, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @getprop)
  call void @init_subr_3(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.220, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)* @setprop)
  call void @init_subr_3(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.221, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)* @putprop)
  call void @init_subr_1(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.222, i32 0, i32 0), %struct.obj* (%struct.obj*)* @last)
  call void @init_subr_2(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.223, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @memq)
  call void @init_subr_2(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.224, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @memv)
  call void @init_subr_2(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.225, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @member)
  call void @init_subr_2(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.226, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @nth)
  call void @init_subr_2(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.227, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @nconc)
  call void @init_subr_2(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.228, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @set_eval_history)
  call void @init_subr_1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.229, i32 0, i32 0), %struct.obj* (%struct.obj*)* @parser_fasl)
  %call6 = call %struct.obj* @cintern(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.230, i32 0, i32 0))
  %call7 = call %struct.obj* @a_true_value()
  %call8 = call %struct.obj* @setvar(%struct.obj* %call6, %struct.obj* %call7, %struct.obj* null)
  call void @init_subr_2(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.231, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @parser_fasl_hook)
  call void @init_sliba_version()
  ret void
}

declare void @init_subr_2(i8*, %struct.obj* (%struct.obj*, %struct.obj*)*) #1

declare void @init_subr_3(i8*, %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)*) #1

declare void @init_lsubr(i8*, %struct.obj* (%struct.obj*)*) #1

declare void @init_subr_1(i8*, %struct.obj* (%struct.obj*)*) #1

declare void @init_subr_4(i8*, %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)*) #1

declare void @gc_protect_sym(%struct.obj**, i8*) #1

declare void @init_subr_5(i8*, %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)*) #1

; Function Attrs: nounwind uwtable
define internal void @init_base64_table() #0 {
entry:
  %j = alloca i32, align 4
  %call = call noalias i8* @malloc(i64 256) #2
  store i8* %call, i8** @base64_decode_table, align 8
  %0 = load i8*, i8** @base64_decode_table, align 8
  call void @llvm.memset.p0i8.i64(i8* %0, i8 -1, i64 256, i32 1, i1 false)
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %1, 65
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %j, align 4
  %conv = trunc i32 %2 to i8
  %3 = load i32, i32* %j, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** @base64_encode_table, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %idxprom1 = sext i8 %5 to i64
  %6 = load i8*, i8** @base64_decode_table, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %6, i64 %idxprom1
  store i8 %conv, i8* %arrayidx2, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %j, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @init_msubr(i8*, %struct.obj* (%struct.obj**, %struct.obj**)*) #1

declare void @init_fsubr(i8*, %struct.obj* (%struct.obj*, %struct.obj*)*) #1

; Function Attrs: nounwind uwtable
define internal %struct.obj* @parser_fasl(%struct.obj* %ignore) #0 {
entry:
  %ignore.addr = alloca %struct.obj*, align 8
  store %struct.obj* %ignore, %struct.obj** %ignore.addr, align 8
  %call = call %struct.obj* @flocons(double 1.000000e+02)
  %call1 = call %struct.obj* @cons_array(%struct.obj* %call, %struct.obj* null)
  %call2 = call %struct.obj* @flocons(double 0.000000e+00)
  %call3 = call %struct.obj* (i64, ...) @listn(i64 3, %struct.obj* null, %struct.obj* %call1, %struct.obj* %call2)
  %call4 = call %struct.obj* @cintern(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.231, i32 0, i32 0))
  %call5 = call %struct.obj* @leval(%struct.obj* %call4, %struct.obj* null)
  %call6 = call %struct.obj* @closure(%struct.obj* %call3, %struct.obj* %call5)
  ret %struct.obj* %call6
}

; Function Attrs: nounwind uwtable
define internal %struct.obj* @parser_fasl_hook(%struct.obj* %env, %struct.obj* %f) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %env.addr = alloca %struct.obj*, align 8
  %f.addr = alloca %struct.obj*, align 8
  %result = alloca %struct.obj*, align 8
  store %struct.obj* %env, %struct.obj** %env.addr, align 8
  store %struct.obj* %f, %struct.obj** %f.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %1 = load %struct.obj*, %struct.obj** %f.addr, align 8
  %call = call %struct.obj* @setcar(%struct.obj* %0, %struct.obj* %1)
  %2 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call1 = call %struct.obj* @fast_read(%struct.obj* %2)
  store %struct.obj* %call1, %struct.obj** %result, align 8
  %3 = load %struct.obj*, %struct.obj** %result, align 8
  %4 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %cmp = icmp eq %struct.obj* %3, %4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call %struct.obj* @get_eof_val()
  store %struct.obj* %call2, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %entry
  %5 = load %struct.obj*, %struct.obj** %result, align 8
  store %struct.obj* %5, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %6
}

; Function Attrs: nounwind uwtable
define internal void @init_sliba_version() #0 {
entry:
  %call = call %struct.obj* @cintern(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.234, i32 0, i32 0))
  %call1 = call %struct.obj* @cintern(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.235, i32 0, i32 0))
  %call2 = call %struct.obj* @setvar(%struct.obj* %call, %struct.obj* %call1, %struct.obj* null)
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare %struct.obj* @closure(%struct.obj*, %struct.obj*) #1

declare %struct.obj* @get_eof_val() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
