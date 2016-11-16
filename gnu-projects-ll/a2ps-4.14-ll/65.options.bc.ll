; ModuleID = './lib/options.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.a2ps_job = type { i8**, i64, %struct.a2ps_common_s, i8*, %struct.hash_table_s*, %struct.pair_htable*, %struct.tm, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.pair_htable*, %struct.output*, i32, [10 x i8*], i8*, %struct.a2ps_printers_s*, i32, %struct.stream*, i8, i32, i32, i32, i32, i32, i32, i8, i8*, %struct.medium*, i8*, i32, i32, i32, float, %struct.encoding*, i8*, %struct.encoding*, %struct.encoding*, %struct.hash_table_s*, %struct.pair_htable*, %struct.hash_table_s*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, [256 x i8], [256 x i8], [256 x i8], [256 x i8], %struct.pair_htable*, %struct.ps_status*, %struct.output*, [10 x i8*], %struct.page_range*, %struct.darray* }
%struct.a2ps_common_s = type { i8** }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.a2ps_printers_s = type opaque
%struct.stream = type opaque
%struct.medium = type { i8*, i32, i32, i32, i32, i32, i32 }
%struct.encoding = type opaque
%struct.hash_table_s = type { i8**, i64, i64, i64, i64, i64, i32, i64 (i8*)*, i64 (i8*)*, i32 (i8*, i8*)* }
%struct.pair_htable = type opaque
%struct.ps_status = type { i32, i64, i32, float, i32, i8*, i8*, %struct.encoding*, i32, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.output*, i8**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.output = type opaque
%struct.page_range = type opaque
%struct.darray = type { i8*, i64, i64, i32, i64, i64, i8**, void (i8*, %struct._IO_FILE*)*, i32 (i8*, i8*)* }
%struct.opt_optarg = type { i32, i8*, %struct.opt_optarg* }

@handle_option_hook = global i32 (i32, i8*)* null, align 8
@bool_args = internal constant [7 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i32 0, i32 0), i8* null], align 16
@bool_types = internal constant [6 x i8] c"\01\01\01\00\00\00", align 1
@argmatch_die = external global void ()*, align 8
@optind = external global i32, align 4
@.str = private unnamed_addr constant [72 x i8] c"123456789=:A:a:b::BcCdD:E::f:gGhijkKl:L:mM:n:o:P:qrRs:S:t::T:u::v::VX:Z\00", align 1
@long_options = internal constant [75 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 138 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 1, i32* null, i32 145 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 86 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 139 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 161 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 162 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0), i32 0, i32* null, i32 162 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 162 }, %struct.option { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i32 0, i32 0), i32 1, i32* null, i32 68 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), i32 1, i32* null, i32 68 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i32 1, i32* null, i32 68 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i32 1, i32* null, i32 61 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.50, i32 0, i32 0), i32 2, i32* null, i32 69 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i32 0, i32 0), i32 2, i32* null, i32 163 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), i32 1, i32* null, i32 134 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i32 1, i32* null, i32 134 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0), i32 1, i32* null, i32 164 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i32 0, i32 0), i32 1, i32* null, i32 83 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), i32 1, i32* null, i32 132 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i32 1, i32* null, i32 133 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i32 1, i32* null, i32 65 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i32 0, i32 0), i32 1, i32* null, i32 65 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i32 2, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0), i32 0, i32* null, i32 66 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i32 0, i32 0), i32 1, i32* null, i32 151 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.64, i32 0, i32 0), i32 1, i32* null, i32 152 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i32 0, i32 0), i32 1, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.66, i32 0, i32 0), i32 1, i32* null, i32 154 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i32 0, i32 0), i32 1, i32* null, i32 173 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i32 0, i32 0), i32 1, i32* null, i32 155 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.69, i32 0, i32 0), i32 1, i32* null, i32 169 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), i32 1, i32* null, i32 156 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.71, i32 0, i32 0), i32 0, i32* null, i32 107 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.72, i32 0, i32 0), i32 0, i32* null, i32 75 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.73, i32 0, i32 0), i32 1, i32* null, i32 76 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.74, i32 0, i32 0), i32 1, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i32 0, i32 0), i32 0, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0), i32 1, i32* null, i32 77 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0), i32 1, i32* null, i32 77 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), i32 1, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i32 0, i32 0), i32 1, i32* null, i32 111 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0), i32 2, i32* null, i32 80 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i32 0, i32 0), i32 0, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0), i32 0, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.83, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.84, i32 0, i32 0), i32 0, i32* null, i32 82 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i32 0, i32 0), i32 2, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i32 0, i32 0), i32 1, i32* null, i32 84 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.87, i32 0, i32 0), i32 1, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.88, i32 0, i32 0), i32 2, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.89, i32 0, i32 0), i32 1, i32* null, i32 88 }, %struct.option { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.90, i32 0, i32 0), i32 1, i32* null, i32 135 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.91, i32 0, i32 0), i32 1, i32* null, i32 136 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.92, i32 0, i32 0), i32 2, i32* null, i32 149 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.93, i32 0, i32 0), i32 2, i32* null, i32 140 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i32 0, i32 0), i32 2, i32* null, i32 141 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.95, i32 0, i32 0), i32 2, i32* null, i32 142 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.96, i32 0, i32 0), i32 2, i32* null, i32 143 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.97, i32 0, i32 0), i32 2, i32* null, i32 144 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.98, i32 0, i32 0), i32 1, i32* null, i32 166 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.99, i32 0, i32 0), i32 2, i32* null, i32 147 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.100, i32 0, i32 0), i32 1, i32* null, i32 148 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.101, i32 0, i32 0), i32 1, i32* null, i32 157 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.102, i32 0, i32 0), i32 1, i32* null, i32 158 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.103, i32 0, i32 0), i32 1, i32* null, i32 159 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.104, i32 0, i32 0), i32 0, i32* null, i32 146 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.105, i32 0, i32 0), i32 1, i32* null, i32 160 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.106, i32 0, i32 0), i32 1, i32* null, i32 160 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i32 0, i32 0), i32 2, i32* null, i32 167 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i32 0, i32 0), i32 2, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.109, i32 0, i32 0), i32 0, i32* null, i32 137 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.110, i32 0, i32 0), i32 0, i32* null, i32 150 }, %struct.option zeroinitializer], align 16
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Try `%s --help' for more information.\0A\00", align 1
@program_invocation_name = external global i8*, align 8
@optarg = external global i8*, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"--file-align\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"--truncate-lines\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"--line-numbers\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c" \09:=\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"--font-size\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"pt\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"--interpret\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"--border\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"--chars-per-line\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"--lines-per-page\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"--copies\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"A2PS_VERBOSITY\00", align 1
@msg_verbosity = external global i32, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"--sides\00", align 1
@duplex_args = internal constant [7 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.115, i32 0, i32 0), i8* null], align 16
@duplex_types = internal constant [6 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 2], align 16
@.str.15 = private unnamed_addr constant [7 x i8] c"Duplex\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"Tumble\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"--tabsize\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"--verbose\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"--columns\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"--rows\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"--non-printable\00", align 1
@non_printable_args = internal constant [9 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.123, i32 0, i32 0), i8* null], align 16
@non_printable_types = internal constant [8 x i32] [i32 3, i32 4, i32 5, i32 2, i32 1, i32 1, i32 1, i32 0], align 16
@.str.24 = private unnamed_addr constant [15 x i8] c"--print-anyway\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"invalid variable identifier `%s'\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"--margin\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"--major\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"--version-control\00", align 1
@simple_backup_suffix = external global i8*, align 8
@.str.29 = private unnamed_addr constant [26 x i8] c"handle_string_options(%s)\00", align 1
@program_name = external global i8*, align 8
@.str.30 = private unnamed_addr constant [15 x i8] c"   %3d = `%s'\0A\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"guess\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"list-options\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"list-media\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"list-style-sheets\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"help-languages\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"help-pretty-print\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"macro-meta-sequence\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"variable\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"define\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"user-option\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"pretty-print\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"ppd\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"prologue\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"sides\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"statusdict\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"setpagedevice\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"columns\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"rows\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"compact\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"file-align\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"header\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"no-header\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"truncate-lines\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"line-numbers\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"font-size\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"graphic-symbols\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"highlight-level\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"interpret\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"end-of-line\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"borders\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"page-prefeed\00", align 1
@.str.72 = private unnamed_addr constant [16 x i8] c"no-page-prefeed\00", align 1
@.str.73 = private unnamed_addr constant [15 x i8] c"lines-per-page\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"chars-per-line\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"catman\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"medium\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"media\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"copies\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"printer\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"silent\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"landscape\00", align 1
@.str.84 = private unnamed_addr constant [9 x i8] c"portrait\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"tabsize\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"underlay\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.89 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.90 = private unnamed_addr constant [21 x i8] c"non-printable-format\00", align 1
@.str.91 = private unnamed_addr constant [13 x i8] c"print-anyway\00", align 1
@.str.92 = private unnamed_addr constant [13 x i8] c"center-title\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"left-title\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"right-title\00", align 1
@.str.95 = private unnamed_addr constant [12 x i8] c"left-footer\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c"footer\00", align 1
@.str.97 = private unnamed_addr constant [13 x i8] c"right-footer\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"margin\00", align 1
@.str.100 = private unnamed_addr constant [12 x i8] c"strip-level\00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c"major\00", align 1
@.str.102 = private unnamed_addr constant [16 x i8] c"version-control\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"suffix\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.105 = private unnamed_addr constant [9 x i8] c"delegate\00", align 1
@.str.106 = private unnamed_addr constant [13 x i8] c"pass-through\00", align 1
@.str.107 = private unnamed_addr constant [4 x i8] c"toc\00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"pages\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"which\00", align 1
@.str.110 = private unnamed_addr constant [5 x i8] c"glob\00", align 1
@.str.111 = private unnamed_addr constant [8 x i8] c"simplex\00", align 1
@.str.112 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c"duplex\00", align 1
@.str.114 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"tumble\00", align 1
@.str.116 = private unnamed_addr constant [6 x i8] c"octal\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c"hexa\00", align 1
@.str.118 = private unnamed_addr constant [6 x i8] c"emacs\00", align 1
@.str.119 = private unnamed_addr constant [13 x i8] c"questionmark\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@.str.121 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str.122 = private unnamed_addr constant [6 x i8] c"blank\00", align 1
@.str.123 = private unnamed_addr constant [6 x i8] c"caret\00", align 1

; Function Attrs: nounwind uwtable
define zeroext i1 @a2ps_get_bool(i8* %option, i8* %arg) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %option.addr, align 8
  %1 = load i8*, i8** %arg.addr, align 8
  %2 = load void ()*, void ()** @argmatch_die, align 8
  %call = call i32 @__xargmatch_internal(i8* %0, i8* %1, i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @bool_args, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @bool_types, i32 0, i32 0), i64 1, i32 0, void ()* %2)
  %idxprom = sext i32 %call to i64
  %arrayidx = getelementptr inbounds [6 x i8], [6 x i8]* @bool_types, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %tobool = trunc i8 %3 to i1
  ret i1 %tobool
}

declare i32 @__xargmatch_internal(i8*, i8*, i8**, i8*, i64, i32, void ()*) #1

; Function Attrs: nounwind uwtable
define i32 @a2ps_handle_options(%struct.a2ps_job* %job, i32 %argc, i8** %argv) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %opt_optarg_head = alloca %struct.opt_optarg*, align 8
  %opt_optarg = alloca %struct.opt_optarg*, align 8
  %res = alloca i32, align 4
  %option_index = alloca i32, align 4
  %option = alloca i32, align 4
  %new = alloca %struct.opt_optarg*, align 8
  %my_s2 = alloca i8*, align 8
  %value = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %my_s2215 = alloca i8*, align 8
  %value257 = alloca i8*, align 8
  %my_s2278 = alloca i8*, align 8
  %my_s2302 = alloca i8*, align 8
  %my_s2355 = alloca i8*, align 8
  %value383 = alloca i8*, align 8
  %my_s2402 = alloca i8*, align 8
  %my_s2425 = alloca i8*, align 8
  %my_s2448 = alloca i8*, align 8
  %my_s2471 = alloca i8*, align 8
  %my_s2494 = alloca i8*, align 8
  %my_s2517 = alloca i8*, align 8
  %my_s2557 = alloca i8*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store %struct.opt_optarg* null, %struct.opt_optarg** %opt_optarg_head, align 8
  store %struct.opt_optarg* null, %struct.opt_optarg** %opt_optarg, align 8
  store i32 0, i32* @optind, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.10
  store i32 0, i32* %option_index, align 4
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %call = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i32 0, i32 0), %struct.option* getelementptr inbounds ([75 x %struct.option], [75 x %struct.option]* @long_options, i32 0, i32 0), i32* %option_index)
  store i32 %call, i32* %option, align 4
  %2 = load i32, i32* %option, align 4
  %cmp = icmp eq i32 %2, 63
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i32 0, i32 0)) #5
  %4 = load i8*, i8** @program_invocation_name, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* %call1, i8* %4)
  call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %while.body
  %5 = alloca i8, i64 24
  %6 = bitcast i8* %5 to %struct.opt_optarg*
  store %struct.opt_optarg* %6, %struct.opt_optarg** %new, align 8
  %7 = load i32, i32* %option, align 4
  %8 = load %struct.opt_optarg*, %struct.opt_optarg** %new, align 8
  %option3 = getelementptr inbounds %struct.opt_optarg, %struct.opt_optarg* %8, i32 0, i32 0
  store i32 %7, i32* %option3, align 4
  %9 = load i8*, i8** @optarg, align 8
  %10 = load %struct.opt_optarg*, %struct.opt_optarg** %new, align 8
  %optarg = getelementptr inbounds %struct.opt_optarg, %struct.opt_optarg* %10, i32 0, i32 1
  store i8* %9, i8** %optarg, align 8
  %11 = load %struct.opt_optarg*, %struct.opt_optarg** %new, align 8
  %next = getelementptr inbounds %struct.opt_optarg, %struct.opt_optarg* %11, i32 0, i32 2
  store %struct.opt_optarg* null, %struct.opt_optarg** %next, align 8
  %12 = load %struct.opt_optarg*, %struct.opt_optarg** %opt_optarg, align 8
  %tobool = icmp ne %struct.opt_optarg* %12, null
  br i1 %tobool, label %if.else, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %13 = load %struct.opt_optarg*, %struct.opt_optarg** %new, align 8
  store %struct.opt_optarg* %13, %struct.opt_optarg** %opt_optarg_head, align 8
  %14 = load %struct.opt_optarg*, %struct.opt_optarg** %opt_optarg_head, align 8
  store %struct.opt_optarg* %14, %struct.opt_optarg** %opt_optarg, align 8
  br label %if.end.7

if.else:                                          ; preds = %if.end
  %15 = load %struct.opt_optarg*, %struct.opt_optarg** %new, align 8
  %16 = load %struct.opt_optarg*, %struct.opt_optarg** %opt_optarg, align 8
  %next5 = getelementptr inbounds %struct.opt_optarg, %struct.opt_optarg* %16, i32 0, i32 2
  store %struct.opt_optarg* %15, %struct.opt_optarg** %next5, align 8
  %17 = load %struct.opt_optarg*, %struct.opt_optarg** %opt_optarg, align 8
  %next6 = getelementptr inbounds %struct.opt_optarg, %struct.opt_optarg* %17, i32 0, i32 2
  %18 = load %struct.opt_optarg*, %struct.opt_optarg** %next6, align 8
  store %struct.opt_optarg* %18, %struct.opt_optarg** %opt_optarg, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.4
  %19 = load i32, i32* %option, align 4
  %cmp8 = icmp eq i32 %19, -1
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  br label %while.end

if.end.10:                                        ; preds = %if.end.7
  br label %while.body

while.end:                                        ; preds = %if.then.9
  %20 = load i32, i32* @optind, align 4
  store i32 %20, i32* %res, align 4
  %21 = load %struct.opt_optarg*, %struct.opt_optarg** %opt_optarg_head, align 8
  store %struct.opt_optarg* %21, %struct.opt_optarg** %opt_optarg, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %22 = load %struct.opt_optarg*, %struct.opt_optarg** %opt_optarg, align 8
  %option11 = getelementptr inbounds %struct.opt_optarg, %struct.opt_optarg* %22, i32 0, i32 0
  %23 = load i32, i32* %option11, align 4
  %cmp12 = icmp ne i32 %23, -1
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load %struct.opt_optarg*, %struct.opt_optarg** %opt_optarg, align 8
  %optarg13 = getelementptr inbounds %struct.opt_optarg, %struct.opt_optarg* %24, i32 0, i32 1
  %25 = load i8*, i8** %optarg13, align 8
  store i8* %25, i8** @optarg, align 8
  %26 = load i32 (i32, i8*)*, i32 (i32, i8*)** @handle_option_hook, align 8
  %tobool14 = icmp ne i32 (i32, i8*)* %26, null
  br i1 %tobool14, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %for.body
  %27 = load i32 (i32, i8*)*, i32 (i32, i8*)** @handle_option_hook, align 8
  %28 = load %struct.opt_optarg*, %struct.opt_optarg** %opt_optarg, align 8
  %option15 = getelementptr inbounds %struct.opt_optarg, %struct.opt_optarg* %28, i32 0, i32 0
  %29 = load i32, i32* %option15, align 4
  %30 = load i8*, i8** @optarg, align 8
  %call16 = call i32 %27(i32 %29, i8* %30)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %land.lhs.true
  br label %for.inc

if.end.19:                                        ; preds = %land.lhs.true, %for.body
  %31 = load %struct.opt_optarg*, %struct.opt_optarg** %opt_optarg, align 8
  %option20 = getelementptr inbounds %struct.opt_optarg, %struct.opt_optarg* %31, i32 0, i32 0
  %32 = load i32, i32* %option20, align 4
  switch i32 %32, label %sw.epilog.578 [
    i32 49, label %sw.bb
    i32 50, label %sw.bb.21
    i32 51, label %sw.bb.28
    i32 52, label %sw.bb.35
    i32 53, label %sw.bb.42
    i32 54, label %sw.bb.49
    i32 55, label %sw.bb.56
    i32 56, label %sw.bb.63
    i32 57, label %sw.bb.70
    i32 61, label %sw.bb.77
    i32 97, label %sw.bb.80
    i32 65, label %sw.bb.81
    i32 98, label %sw.bb.83
    i32 66, label %sw.bb.95
    i32 99, label %sw.bb.153
    i32 151, label %sw.bb.154
    i32 67, label %sw.bb.160
    i32 152, label %sw.bb.161
    i32 100, label %sw.bb.169
    i32 83, label %sw.bb.170
    i32 102, label %sw.bb.179
    i32 105, label %sw.bb.189
    i32 155, label %sw.bb.190
    i32 106, label %sw.bb.194
    i32 156, label %sw.bb.195
    i32 107, label %sw.bb.199
    i32 75, label %sw.bb.200
    i32 108, label %sw.bb.202
    i32 76, label %sw.bb.206
    i32 109, label %sw.bb.210
    i32 77, label %sw.bb.213
    i32 110, label %sw.bb.235
    i32 111, label %sw.bb.237
    i32 80, label %sw.bb.239
    i32 113, label %sw.bb.241
    i32 114, label %sw.bb.246
    i32 82, label %sw.bb.248
    i32 115, label %sw.bb.250
    i32 164, label %sw.bb.256
    i32 116, label %sw.bb.276
    i32 84, label %sw.bb.298
    i32 117, label %sw.bb.300
    i32 118, label %sw.bb.323
    i32 88, label %sw.bb.338
    i32 132, label %sw.bb.347
    i32 133, label %sw.bb.350
    i32 134, label %sw.bb.353
    i32 135, label %sw.bb.375
    i32 136, label %sw.bb.379
    i32 68, label %sw.bb.382
    i32 140, label %sw.bb.400
    i32 141, label %sw.bb.423
    i32 149, label %sw.bb.446
    i32 142, label %sw.bb.469
    i32 143, label %sw.bb.492
    i32 144, label %sw.bb.515
    i32 146, label %sw.bb.538
    i32 147, label %sw.bb.539
    i32 157, label %sw.bb.546
    i32 158, label %sw.bb.549
    i32 159, label %sw.bb.551
    i32 163, label %sw.bb.553
    i32 166, label %sw.bb.555
    i32 63, label %sw.bb.577
  ]

sw.bb:                                            ; preds = %if.end.19
  %33 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %33, i32 0, i32 14
  store i32 1, i32* %columns, align 4
  %34 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %rows = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %34, i32 0, i32 15
  store i32 1, i32* %rows, align 4
  %35 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %orientation = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %35, i32 0, i32 12
  store i32 0, i32* %orientation, align 4
  %36 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns_requested = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %36, i32 0, i32 41
  store i32 80, i32* %columns_requested, align 4
  %37 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %lines_requested = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %37, i32 0, i32 40
  store i32 0, i32* %lines_requested, align 4
  %38 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %madir = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %38, i32 0, i32 16
  store i32 0, i32* %madir, align 4
  br label %sw.epilog.578

sw.bb.21:                                         ; preds = %if.end.19
  %39 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns22 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %39, i32 0, i32 14
  store i32 2, i32* %columns22, align 4
  %40 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %rows23 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %40, i32 0, i32 15
  store i32 1, i32* %rows23, align 4
  %41 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %orientation24 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %41, i32 0, i32 12
  store i32 1, i32* %orientation24, align 4
  %42 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns_requested25 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %42, i32 0, i32 41
  store i32 80, i32* %columns_requested25, align 4
  %43 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %lines_requested26 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %43, i32 0, i32 40
  store i32 0, i32* %lines_requested26, align 4
  %44 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %madir27 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %44, i32 0, i32 16
  store i32 0, i32* %madir27, align 4
  br label %sw.epilog.578

sw.bb.28:                                         ; preds = %if.end.19
  %45 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns29 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %45, i32 0, i32 14
  store i32 3, i32* %columns29, align 4
  %46 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %rows30 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %46, i32 0, i32 15
  store i32 1, i32* %rows30, align 4
  %47 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %orientation31 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %47, i32 0, i32 12
  store i32 1, i32* %orientation31, align 4
  %48 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns_requested32 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %48, i32 0, i32 41
  store i32 80, i32* %columns_requested32, align 4
  %49 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %lines_requested33 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %49, i32 0, i32 40
  store i32 0, i32* %lines_requested33, align 4
  %50 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %madir34 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %50, i32 0, i32 16
  store i32 0, i32* %madir34, align 4
  br label %sw.epilog.578

sw.bb.35:                                         ; preds = %if.end.19
  %51 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns36 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %51, i32 0, i32 14
  store i32 2, i32* %columns36, align 4
  %52 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %rows37 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %52, i32 0, i32 15
  store i32 2, i32* %rows37, align 4
  %53 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %orientation38 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %53, i32 0, i32 12
  store i32 0, i32* %orientation38, align 4
  %54 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns_requested39 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %54, i32 0, i32 41
  store i32 80, i32* %columns_requested39, align 4
  %55 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %lines_requested40 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %55, i32 0, i32 40
  store i32 0, i32* %lines_requested40, align 4
  %56 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %madir41 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %56, i32 0, i32 16
  store i32 0, i32* %madir41, align 4
  br label %sw.epilog.578

sw.bb.42:                                         ; preds = %if.end.19
  %57 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns43 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %57, i32 0, i32 14
  store i32 5, i32* %columns43, align 4
  %58 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %rows44 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %58, i32 0, i32 15
  store i32 1, i32* %rows44, align 4
  %59 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %orientation45 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %59, i32 0, i32 12
  store i32 1, i32* %orientation45, align 4
  %60 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns_requested46 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %60, i32 0, i32 41
  store i32 80, i32* %columns_requested46, align 4
  %61 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %lines_requested47 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %61, i32 0, i32 40
  store i32 0, i32* %lines_requested47, align 4
  %62 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %madir48 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %62, i32 0, i32 16
  store i32 0, i32* %madir48, align 4
  br label %sw.epilog.578

sw.bb.49:                                         ; preds = %if.end.19
  %63 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns50 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %63, i32 0, i32 14
  store i32 3, i32* %columns50, align 4
  %64 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %rows51 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %64, i32 0, i32 15
  store i32 2, i32* %rows51, align 4
  %65 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %orientation52 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %65, i32 0, i32 12
  store i32 1, i32* %orientation52, align 4
  %66 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns_requested53 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %66, i32 0, i32 41
  store i32 80, i32* %columns_requested53, align 4
  %67 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %lines_requested54 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %67, i32 0, i32 40
  store i32 0, i32* %lines_requested54, align 4
  %68 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %madir55 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %68, i32 0, i32 16
  store i32 0, i32* %madir55, align 4
  br label %sw.epilog.578

sw.bb.56:                                         ; preds = %if.end.19
  %69 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns57 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %69, i32 0, i32 14
  store i32 7, i32* %columns57, align 4
  %70 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %rows58 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %70, i32 0, i32 15
  store i32 1, i32* %rows58, align 4
  %71 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %orientation59 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %71, i32 0, i32 12
  store i32 1, i32* %orientation59, align 4
  %72 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns_requested60 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %72, i32 0, i32 41
  store i32 80, i32* %columns_requested60, align 4
  %73 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %lines_requested61 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %73, i32 0, i32 40
  store i32 0, i32* %lines_requested61, align 4
  %74 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %madir62 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %74, i32 0, i32 16
  store i32 0, i32* %madir62, align 4
  br label %sw.epilog.578

sw.bb.63:                                         ; preds = %if.end.19
  %75 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns64 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %75, i32 0, i32 14
  store i32 4, i32* %columns64, align 4
  %76 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %rows65 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %76, i32 0, i32 15
  store i32 2, i32* %rows65, align 4
  %77 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %orientation66 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %77, i32 0, i32 12
  store i32 1, i32* %orientation66, align 4
  %78 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns_requested67 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %78, i32 0, i32 41
  store i32 80, i32* %columns_requested67, align 4
  %79 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %lines_requested68 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %79, i32 0, i32 40
  store i32 0, i32* %lines_requested68, align 4
  %80 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %madir69 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %80, i32 0, i32 16
  store i32 0, i32* %madir69, align 4
  br label %sw.epilog.578

sw.bb.70:                                         ; preds = %if.end.19
  %81 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns71 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %81, i32 0, i32 14
  store i32 3, i32* %columns71, align 4
  %82 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %rows72 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %82, i32 0, i32 15
  store i32 3, i32* %rows72, align 4
  %83 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %orientation73 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %83, i32 0, i32 12
  store i32 0, i32* %orientation73, align 4
  %84 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns_requested74 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %84, i32 0, i32 41
  store i32 80, i32* %columns_requested74, align 4
  %85 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %lines_requested75 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %85, i32 0, i32 40
  store i32 0, i32* %lines_requested75, align 4
  %86 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %madir76 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %86, i32 0, i32 16
  store i32 0, i32* %madir76, align 4
  br label %sw.epilog.578

sw.bb.77:                                         ; preds = %if.end.19
  %87 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %88 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %89 = load i8*, i8** @optarg, align 8
  %call78 = call i8* @user_option_get(%struct.a2ps_job* %88, i8* %89)
  %call79 = call i32 @a2ps_handle_string_options(%struct.a2ps_job* %87, i8* %call78)
  br label %sw.epilog.578

sw.bb.80:                                         ; preds = %if.end.19
  %90 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %91 = load i8*, i8** @optarg, align 8
  call void @a2ps_page_range_set_string(%struct.a2ps_job* %90, i8* %91)
  br label %sw.epilog.578

sw.bb.81:                                         ; preds = %if.end.19
  %92 = load i8*, i8** @optarg, align 8
  %call82 = call i32 @file_align_argmatch(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* %92)
  %93 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %file_align = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %93, i32 0, i32 33
  store i32 %call82, i32* %file_align, align 4
  br label %sw.epilog.578

sw.bb.83:                                         ; preds = %if.end.19
  br label %do.body

do.body:                                          ; preds = %sw.bb.83
  %94 = load i8*, i8** @optarg, align 8
  store i8* %94, i8** %my_s2, align 8
  br label %do.body.84

do.body.84:                                       ; preds = %do.body
  %95 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %header = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %95, i32 0, i32 51
  %96 = load i8*, i8** %header, align 8
  %tobool85 = icmp ne i8* %96, null
  br i1 %tobool85, label %if.then.86, label %if.end.88

if.then.86:                                       ; preds = %do.body.84
  %97 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %header87 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %97, i32 0, i32 51
  %98 = load i8*, i8** %header87, align 8
  call void @free(i8* %98) #5
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.86, %do.body.84
  br label %do.end

do.end:                                           ; preds = %if.end.88
  %99 = load i8*, i8** %my_s2, align 8
  %cmp89 = icmp eq i8* %99, null
  br i1 %cmp89, label %cond.false, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %100 = load i8*, i8** %my_s2, align 8
  %101 = load i8, i8* %100, align 1
  %conv = zext i8 %101 to i32
  %cmp90 = icmp eq i32 %conv, 0
  br i1 %cmp90, label %cond.false, label %cond.true

cond.true:                                        ; preds = %lor.lhs.false
  %102 = load i8*, i8** %my_s2, align 8
  %call92 = call i8* @xstrdup(i8* %102)
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false, %do.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call92, %cond.true ], [ null, %cond.false ]
  %103 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %header93 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %103, i32 0, i32 51
  store i8* %cond, i8** %header93, align 8
  br label %do.end.94

do.end.94:                                        ; preds = %cond.end
  br label %sw.epilog.578

sw.bb.95:                                         ; preds = %if.end.19
  br label %do.body.96

do.body.96:                                       ; preds = %sw.bb.95
  %104 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %header97 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %104, i32 0, i32 51
  %105 = load i8*, i8** %header97, align 8
  %tobool98 = icmp ne i8* %105, null
  br i1 %tobool98, label %if.then.99, label %if.end.101

if.then.99:                                       ; preds = %do.body.96
  %106 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %header100 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %106, i32 0, i32 51
  %107 = load i8*, i8** %header100, align 8
  call void @free(i8* %107) #5
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.99, %do.body.96
  br label %do.end.102

do.end.102:                                       ; preds = %if.end.101
  br label %do.body.103

do.body.103:                                      ; preds = %do.end.102
  %108 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %left_footer = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %108, i32 0, i32 55
  %109 = load i8*, i8** %left_footer, align 8
  %tobool104 = icmp ne i8* %109, null
  br i1 %tobool104, label %if.then.105, label %if.end.107

if.then.105:                                      ; preds = %do.body.103
  %110 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %left_footer106 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %110, i32 0, i32 55
  %111 = load i8*, i8** %left_footer106, align 8
  call void @free(i8* %111) #5
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.105, %do.body.103
  br label %do.end.108

do.end.108:                                       ; preds = %if.end.107
  br label %do.body.109

do.body.109:                                      ; preds = %do.end.108
  %112 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %footer = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %112, i32 0, i32 56
  %113 = load i8*, i8** %footer, align 8
  %tobool110 = icmp ne i8* %113, null
  br i1 %tobool110, label %if.then.111, label %if.end.113

if.then.111:                                      ; preds = %do.body.109
  %114 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %footer112 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %114, i32 0, i32 56
  %115 = load i8*, i8** %footer112, align 8
  call void @free(i8* %115) #5
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.111, %do.body.109
  br label %do.end.114

do.end.114:                                       ; preds = %if.end.113
  br label %do.body.115

do.body.115:                                      ; preds = %do.end.114
  %116 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %right_footer = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %116, i32 0, i32 57
  %117 = load i8*, i8** %right_footer, align 8
  %tobool116 = icmp ne i8* %117, null
  br i1 %tobool116, label %if.then.117, label %if.end.119

if.then.117:                                      ; preds = %do.body.115
  %118 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %right_footer118 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %118, i32 0, i32 57
  %119 = load i8*, i8** %right_footer118, align 8
  call void @free(i8* %119) #5
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.117, %do.body.115
  br label %do.end.120

do.end.120:                                       ; preds = %if.end.119
  br label %do.body.121

do.body.121:                                      ; preds = %do.end.120
  %120 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %left_title = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %120, i32 0, i32 53
  %121 = load i8*, i8** %left_title, align 8
  %tobool122 = icmp ne i8* %121, null
  br i1 %tobool122, label %if.then.123, label %if.end.125

if.then.123:                                      ; preds = %do.body.121
  %122 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %left_title124 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %122, i32 0, i32 53
  %123 = load i8*, i8** %left_title124, align 8
  call void @free(i8* %123) #5
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.123, %do.body.121
  br label %do.end.126

do.end.126:                                       ; preds = %if.end.125
  br label %do.body.127

do.body.127:                                      ; preds = %do.end.126
  %124 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %center_title = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %124, i32 0, i32 52
  %125 = load i8*, i8** %center_title, align 8
  %tobool128 = icmp ne i8* %125, null
  br i1 %tobool128, label %if.then.129, label %if.end.131

if.then.129:                                      ; preds = %do.body.127
  %126 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %center_title130 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %126, i32 0, i32 52
  %127 = load i8*, i8** %center_title130, align 8
  call void @free(i8* %127) #5
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.129, %do.body.127
  br label %do.end.132

do.end.132:                                       ; preds = %if.end.131
  br label %do.body.133

do.body.133:                                      ; preds = %do.end.132
  %128 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %right_title = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %128, i32 0, i32 54
  %129 = load i8*, i8** %right_title, align 8
  %tobool134 = icmp ne i8* %129, null
  br i1 %tobool134, label %if.then.135, label %if.end.137

if.then.135:                                      ; preds = %do.body.133
  %130 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %right_title136 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %130, i32 0, i32 54
  %131 = load i8*, i8** %right_title136, align 8
  call void @free(i8* %131) #5
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.135, %do.body.133
  br label %do.end.138

do.end.138:                                       ; preds = %if.end.137
  br label %do.body.139

do.body.139:                                      ; preds = %do.end.138
  %132 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %water = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %132, i32 0, i32 58
  %133 = load i8*, i8** %water, align 8
  %tobool140 = icmp ne i8* %133, null
  br i1 %tobool140, label %if.then.141, label %if.end.143

if.then.141:                                      ; preds = %do.body.139
  %134 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %water142 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %134, i32 0, i32 58
  %135 = load i8*, i8** %water142, align 8
  call void @free(i8* %135) #5
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.141, %do.body.139
  br label %do.end.144

do.end.144:                                       ; preds = %if.end.143
  %136 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %header145 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %136, i32 0, i32 51
  store i8* null, i8** %header145, align 8
  %137 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %left_footer146 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %137, i32 0, i32 55
  store i8* null, i8** %left_footer146, align 8
  %138 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %footer147 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %138, i32 0, i32 56
  store i8* null, i8** %footer147, align 8
  %139 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %right_footer148 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %139, i32 0, i32 57
  store i8* null, i8** %right_footer148, align 8
  %140 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %left_title149 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %140, i32 0, i32 53
  store i8* null, i8** %left_title149, align 8
  %141 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %center_title150 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %141, i32 0, i32 52
  store i8* null, i8** %center_title150, align 8
  %142 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %right_title151 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %142, i32 0, i32 54
  store i8* null, i8** %right_title151, align 8
  %143 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %water152 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %143, i32 0, i32 58
  store i8* null, i8** %water152, align 8
  br label %sw.epilog.578

sw.bb.153:                                        ; preds = %if.end.19
  %144 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %folding = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %144, i32 0, i32 28
  store i8 0, i8* %folding, align 1
  br label %sw.epilog.578

sw.bb.154:                                        ; preds = %if.end.19
  %145 = load i8*, i8** @optarg, align 8
  %call155 = call zeroext i1 @a2ps_get_bool(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* %145)
  %cond157 = select i1 %call155, i32 0, i32 1
  %tobool158 = icmp ne i32 %cond157, 0
  %146 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %folding159 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %146, i32 0, i32 28
  %frombool = zext i1 %tobool158 to i8
  store i8 %frombool, i8* %folding159, align 1
  br label %sw.epilog.578

sw.bb.160:                                        ; preds = %if.end.19
  %147 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %numbering = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %147, i32 0, i32 29
  store i32 5, i32* %numbering, align 4
  br label %sw.epilog.578

sw.bb.161:                                        ; preds = %if.end.19
  %148 = load i8*, i8** @optarg, align 8
  %tobool162 = icmp ne i8* %148, null
  br i1 %tobool162, label %cond.true.163, label %cond.false.165

cond.true.163:                                    ; preds = %sw.bb.161
  %149 = load i8*, i8** @optarg, align 8
  %call164 = call i32 @get_integer_in_range(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* %149, i32 0, i32 0, i32 1)
  br label %cond.end.166

cond.false.165:                                   ; preds = %sw.bb.161
  br label %cond.end.166

cond.end.166:                                     ; preds = %cond.false.165, %cond.true.163
  %cond167 = phi i32 [ %call164, %cond.true.163 ], [ 1, %cond.false.165 ]
  %150 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %numbering168 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %150, i32 0, i32 29
  store i32 %cond167, i32* %numbering168, align 4
  br label %sw.epilog.578

sw.bb.169:                                        ; preds = %if.end.19
  %151 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %printers = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %151, i32 0, i32 25
  %152 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers, align 8
  call void @a2ps_printers_flag_output_set(%struct.a2ps_printers_s* %152, i8* null, i1 zeroext true)
  br label %sw.epilog.578

sw.bb.170:                                        ; preds = %if.end.19
  %153 = load i8*, i8** @optarg, align 8
  %154 = load i8*, i8** @optarg, align 8
  %call171 = call i64 @strcspn(i8* %154, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)) #7
  %add.ptr = getelementptr inbounds i8, i8* %153, i64 %call171
  store i8* %add.ptr, i8** %value, align 8
  %155 = load i8*, i8** %value, align 8
  %156 = load i8, i8* %155, align 1
  %tobool172 = icmp ne i8 %156, 0
  br i1 %tobool172, label %if.then.173, label %if.end.174

if.then.173:                                      ; preds = %sw.bb.170
  %157 = load i8*, i8** %value, align 8
  store i8 0, i8* %157, align 1
  %158 = load i8*, i8** %value, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %incdec.ptr, i8** %value, align 8
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.173, %sw.bb.170
  %159 = load i8*, i8** %value, align 8
  %160 = load i8, i8* %159, align 1
  %tobool175 = icmp ne i8 %160, 0
  br i1 %tobool175, label %if.then.176, label %if.else.177

if.then.176:                                      ; preds = %if.end.174
  %161 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %162 = load i8*, i8** @optarg, align 8
  %163 = load i8*, i8** %value, align 8
  call void @setpagedevice(%struct.a2ps_job* %161, i8* %162, i8* %163)
  br label %if.end.178

if.else.177:                                      ; preds = %if.end.174
  %164 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %165 = load i8*, i8** @optarg, align 8
  call void @delpagedevice(%struct.a2ps_job* %164, i8* %165)
  br label %if.end.178

if.end.178:                                       ; preds = %if.else.177, %if.then.176
  br label %sw.epilog.578

sw.bb.179:                                        ; preds = %if.end.19
  %166 = load i8*, i8** @optarg, align 8
  %call180 = call i8* @strchr(i8* %166, i32 64) #7
  store i8* %call180, i8** %cp, align 8
  %167 = load i8*, i8** %cp, align 8
  %tobool181 = icmp ne i8* %167, null
  br i1 %tobool181, label %if.then.182, label %if.else.184

if.then.182:                                      ; preds = %sw.bb.179
  %168 = load i8*, i8** %cp, align 8
  %incdec.ptr183 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %incdec.ptr183, i8** %cp, align 8
  br label %if.end.185

if.else.184:                                      ; preds = %sw.bb.179
  %169 = load i8*, i8** @optarg, align 8
  store i8* %169, i8** %cp, align 8
  br label %if.end.185

if.end.185:                                       ; preds = %if.else.184, %if.then.182
  %170 = load i8*, i8** %cp, align 8
  %call186 = call float @get_length(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* %170, float 0.000000e+00, float 0.000000e+00, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32 2)
  %171 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %fontsize = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %171, i32 0, i32 42
  store float %call186, float* %fontsize, align 4
  %172 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns_requested187 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %172, i32 0, i32 41
  store i32 0, i32* %columns_requested187, align 4
  %173 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %lines_requested188 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %173, i32 0, i32 40
  store i32 0, i32* %lines_requested188, align 4
  br label %sw.epilog.578

sw.bb.189:                                        ; preds = %if.end.19
  %174 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %interpret = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %174, i32 0, i32 31
  store i32 1, i32* %interpret, align 4
  br label %sw.epilog.578

sw.bb.190:                                        ; preds = %if.end.19
  %175 = load i8*, i8** @optarg, align 8
  %call191 = call zeroext i1 @a2ps_get_bool(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* %175)
  %conv192 = zext i1 %call191 to i32
  %176 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %interpret193 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %176, i32 0, i32 31
  store i32 %conv192, i32* %interpret193, align 4
  br label %sw.epilog.578

sw.bb.194:                                        ; preds = %if.end.19
  %177 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %border = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %177, i32 0, i32 34
  store i32 1, i32* %border, align 4
  br label %sw.epilog.578

sw.bb.195:                                        ; preds = %if.end.19
  %178 = load i8*, i8** @optarg, align 8
  %call196 = call zeroext i1 @a2ps_get_bool(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* %178)
  %conv197 = zext i1 %call196 to i32
  %179 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %border198 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %179, i32 0, i32 34
  store i32 %conv197, i32* %border198, align 4
  br label %sw.epilog.578

sw.bb.199:                                        ; preds = %if.end.19
  %180 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %page_prefeed = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %180, i32 0, i32 22
  store i32 1, i32* %page_prefeed, align 4
  br label %sw.epilog.578

sw.bb.200:                                        ; preds = %if.end.19
  %181 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %page_prefeed201 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %181, i32 0, i32 22
  store i32 0, i32* %page_prefeed201, align 4
  br label %sw.epilog.578

sw.bb.202:                                        ; preds = %if.end.19
  %182 = load i8*, i8** @optarg, align 8
  %call203 = call i32 @get_integer_in_range(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* %182, i32 1, i32 0, i32 1)
  %183 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns_requested204 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %183, i32 0, i32 41
  store i32 %call203, i32* %columns_requested204, align 4
  %184 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %lines_requested205 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %184, i32 0, i32 40
  store i32 0, i32* %lines_requested205, align 4
  br label %sw.epilog.578

sw.bb.206:                                        ; preds = %if.end.19
  %185 = load i8*, i8** @optarg, align 8
  %call207 = call i32 @get_integer_in_range(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* %185, i32 1, i32 0, i32 1)
  %186 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %lines_requested208 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %186, i32 0, i32 40
  store i32 %call207, i32* %lines_requested208, align 4
  %187 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns_requested209 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %187, i32 0, i32 41
  store i32 0, i32* %columns_requested209, align 4
  br label %sw.epilog.578

sw.bb.210:                                        ; preds = %if.end.19
  %188 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %lines_requested211 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %188, i32 0, i32 40
  store i32 66, i32* %lines_requested211, align 4
  %189 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns_requested212 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %189, i32 0, i32 41
  store i32 0, i32* %columns_requested212, align 4
  br label %sw.epilog.578

sw.bb.213:                                        ; preds = %if.end.19
  br label %do.body.214

do.body.214:                                      ; preds = %sw.bb.213
  %190 = load i8*, i8** @optarg, align 8
  store i8* %190, i8** %my_s2215, align 8
  br label %do.body.216

do.body.216:                                      ; preds = %do.body.214
  %191 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %medium_request = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %191, i32 0, i32 38
  %192 = load i8*, i8** %medium_request, align 8
  %tobool217 = icmp ne i8* %192, null
  br i1 %tobool217, label %if.then.218, label %if.end.220

if.then.218:                                      ; preds = %do.body.216
  %193 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %medium_request219 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %193, i32 0, i32 38
  %194 = load i8*, i8** %medium_request219, align 8
  call void @free(i8* %194) #5
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.218, %do.body.216
  br label %do.end.221

do.end.221:                                       ; preds = %if.end.220
  %195 = load i8*, i8** %my_s2215, align 8
  %cmp222 = icmp eq i8* %195, null
  br i1 %cmp222, label %cond.false.230, label %lor.lhs.false.224

lor.lhs.false.224:                                ; preds = %do.end.221
  %196 = load i8*, i8** %my_s2215, align 8
  %197 = load i8, i8* %196, align 1
  %conv225 = sext i8 %197 to i32
  %cmp226 = icmp eq i32 %conv225, 0
  br i1 %cmp226, label %cond.false.230, label %cond.true.228

cond.true.228:                                    ; preds = %lor.lhs.false.224
  %198 = load i8*, i8** %my_s2215, align 8
  %call229 = call i8* @xstrdup(i8* %198)
  br label %cond.end.231

cond.false.230:                                   ; preds = %lor.lhs.false.224, %do.end.221
  br label %cond.end.231

cond.end.231:                                     ; preds = %cond.false.230, %cond.true.228
  %cond232 = phi i8* [ %call229, %cond.true.228 ], [ null, %cond.false.230 ]
  %199 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %medium_request233 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %199, i32 0, i32 38
  store i8* %cond232, i8** %medium_request233, align 8
  br label %do.end.234

do.end.234:                                       ; preds = %cond.end.231
  br label %sw.epilog.578

sw.bb.235:                                        ; preds = %if.end.19
  %200 = load i8*, i8** @optarg, align 8
  %call236 = call i32 @get_integer_in_range(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* %200, i32 1, i32 0, i32 1)
  %201 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %copies = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %201, i32 0, i32 18
  store i32 %call236, i32* %copies, align 4
  br label %sw.epilog.578

sw.bb.237:                                        ; preds = %if.end.19
  %202 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %printers238 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %202, i32 0, i32 25
  %203 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers238, align 8
  %204 = load i8*, i8** @optarg, align 8
  call void @a2ps_printers_flag_output_set(%struct.a2ps_printers_s* %203, i8* %204, i1 zeroext false)
  br label %sw.epilog.578

sw.bb.239:                                        ; preds = %if.end.19
  %205 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %printers240 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %205, i32 0, i32 25
  %206 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers240, align 8
  %207 = load i8*, i8** @optarg, align 8
  call void @a2ps_printers_flag_output_set(%struct.a2ps_printers_s* %206, i8* %207, i1 zeroext true)
  br label %sw.epilog.578

sw.bb.241:                                        ; preds = %if.end.19
  %call242 = call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0)) #5
  %tobool243 = icmp ne i8* %call242, null
  br i1 %tobool243, label %if.end.245, label %if.then.244

if.then.244:                                      ; preds = %sw.bb.241
  store i32 0, i32* @msg_verbosity, align 4
  br label %if.end.245

if.end.245:                                       ; preds = %if.then.244, %sw.bb.241
  br label %sw.epilog.578

sw.bb.246:                                        ; preds = %if.end.19
  %208 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %orientation247 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %208, i32 0, i32 12
  store i32 1, i32* %orientation247, align 4
  br label %sw.epilog.578

sw.bb.248:                                        ; preds = %if.end.19
  %209 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %orientation249 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %209, i32 0, i32 12
  store i32 0, i32* %orientation249, align 4
  br label %sw.epilog.578

sw.bb.250:                                        ; preds = %if.end.19
  %210 = load i8*, i8** @optarg, align 8
  %211 = load void ()*, void ()** @argmatch_die, align 8
  %call251 = call i32 @__xargmatch_internal(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* %210, i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @duplex_args, i32 0, i32 0), i8* bitcast ([6 x i32]* @duplex_types to i8*), i64 4, i32 0, void ()* %211)
  %idxprom = sext i32 %call251 to i64
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* @duplex_types, i32 0, i64 %idxprom
  %212 = load i32, i32* %arrayidx, align 4
  %213 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %duplex = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %213, i32 0, i32 13
  store i32 %212, i32* %duplex, align 4
  %214 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %duplex252 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %214, i32 0, i32 13
  %215 = load i32, i32* %duplex252, align 4
  switch i32 %215, label %sw.epilog [
    i32 0, label %sw.bb.253
    i32 1, label %sw.bb.254
    i32 2, label %sw.bb.255
  ]

sw.bb.253:                                        ; preds = %sw.bb.250
  %216 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @delpagedevice(%struct.a2ps_job* %216, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0))
  br label %sw.epilog

sw.bb.254:                                        ; preds = %sw.bb.250
  %217 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @setpagedevice(%struct.a2ps_job* %217, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0))
  %218 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @setpagedevice(%struct.a2ps_job* %218, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0))
  br label %sw.epilog

sw.bb.255:                                        ; preds = %sw.bb.250
  %219 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @setpagedevice(%struct.a2ps_job* %219, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0))
  %220 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @setpagedevice(%struct.a2ps_job* %220, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.250, %sw.bb.255, %sw.bb.254, %sw.bb.253
  br label %sw.epilog.578

sw.bb.256:                                        ; preds = %if.end.19
  %221 = load i8*, i8** @optarg, align 8
  %call258 = call i8* @strchr(i8* %221, i32 58) #7
  store i8* %call258, i8** %value257, align 8
  %222 = load i8*, i8** %value257, align 8
  %cmp259 = icmp eq i8* %222, null
  br i1 %cmp259, label %if.then.265, label %lor.lhs.false.261

lor.lhs.false.261:                                ; preds = %sw.bb.256
  %223 = load i8*, i8** %value257, align 8
  %224 = load i8, i8* %223, align 1
  %conv262 = sext i8 %224 to i32
  %cmp263 = icmp eq i32 %conv262, 0
  br i1 %cmp263, label %if.then.265, label %if.else.266

if.then.265:                                      ; preds = %lor.lhs.false.261, %sw.bb.256
  %225 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %226 = load i8*, i8** @optarg, align 8
  call void @delstatusdict(%struct.a2ps_job* %225, i8* %226)
  br label %if.end.275

if.else.266:                                      ; preds = %lor.lhs.false.261
  %227 = load i8*, i8** %value257, align 8
  store i8 0, i8* %227, align 1
  %228 = load i8*, i8** %value257, align 8
  %incdec.ptr267 = getelementptr inbounds i8, i8* %228, i32 1
  store i8* %incdec.ptr267, i8** %value257, align 8
  %229 = load i8*, i8** %value257, align 8
  %230 = load i8, i8* %229, align 1
  %conv268 = sext i8 %230 to i32
  %cmp269 = icmp eq i32 %conv268, 58
  br i1 %cmp269, label %if.then.271, label %if.else.273

if.then.271:                                      ; preds = %if.else.266
  %231 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %232 = load i8*, i8** @optarg, align 8
  %233 = load i8*, i8** %value257, align 8
  %add.ptr272 = getelementptr inbounds i8, i8* %233, i64 1
  call void @setstatusdict(%struct.a2ps_job* %231, i8* %232, i8* %add.ptr272, i32 1)
  br label %if.end.274

if.else.273:                                      ; preds = %if.else.266
  %234 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %235 = load i8*, i8** @optarg, align 8
  %236 = load i8*, i8** %value257, align 8
  call void @setstatusdict(%struct.a2ps_job* %234, i8* %235, i8* %236, i32 0)
  br label %if.end.274

if.end.274:                                       ; preds = %if.else.273, %if.then.271
  br label %if.end.275

if.end.275:                                       ; preds = %if.end.274, %if.then.265
  br label %sw.epilog.578

sw.bb.276:                                        ; preds = %if.end.19
  br label %do.body.277

do.body.277:                                      ; preds = %sw.bb.276
  %237 = load i8*, i8** @optarg, align 8
  store i8* %237, i8** %my_s2278, align 8
  br label %do.body.279

do.body.279:                                      ; preds = %do.body.277
  %238 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %title = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %238, i32 0, i32 50
  %239 = load i8*, i8** %title, align 8
  %tobool280 = icmp ne i8* %239, null
  br i1 %tobool280, label %if.then.281, label %if.end.283

if.then.281:                                      ; preds = %do.body.279
  %240 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %title282 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %240, i32 0, i32 50
  %241 = load i8*, i8** %title282, align 8
  call void @free(i8* %241) #5
  br label %if.end.283

if.end.283:                                       ; preds = %if.then.281, %do.body.279
  br label %do.end.284

do.end.284:                                       ; preds = %if.end.283
  %242 = load i8*, i8** %my_s2278, align 8
  %cmp285 = icmp eq i8* %242, null
  br i1 %cmp285, label %cond.false.293, label %lor.lhs.false.287

lor.lhs.false.287:                                ; preds = %do.end.284
  %243 = load i8*, i8** %my_s2278, align 8
  %244 = load i8, i8* %243, align 1
  %conv288 = zext i8 %244 to i32
  %cmp289 = icmp eq i32 %conv288, 0
  br i1 %cmp289, label %cond.false.293, label %cond.true.291

cond.true.291:                                    ; preds = %lor.lhs.false.287
  %245 = load i8*, i8** %my_s2278, align 8
  %call292 = call i8* @xstrdup(i8* %245)
  br label %cond.end.294

cond.false.293:                                   ; preds = %lor.lhs.false.287, %do.end.284
  br label %cond.end.294

cond.end.294:                                     ; preds = %cond.false.293, %cond.true.291
  %cond295 = phi i8* [ %call292, %cond.true.291 ], [ null, %cond.false.293 ]
  %246 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %title296 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %246, i32 0, i32 50
  store i8* %cond295, i8** %title296, align 8
  br label %do.end.297

do.end.297:                                       ; preds = %cond.end.294
  br label %sw.epilog.578

sw.bb.298:                                        ; preds = %if.end.19
  %247 = load i8*, i8** @optarg, align 8
  %call299 = call i32 @get_integer_in_range(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* %247, i32 1, i32 0, i32 1)
  %248 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %tabsize = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %248, i32 0, i32 39
  store i32 %call299, i32* %tabsize, align 4
  br label %sw.epilog.578

sw.bb.300:                                        ; preds = %if.end.19
  br label %do.body.301

do.body.301:                                      ; preds = %sw.bb.300
  %249 = load i8*, i8** @optarg, align 8
  store i8* %249, i8** %my_s2302, align 8
  br label %do.body.303

do.body.303:                                      ; preds = %do.body.301
  %250 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %water304 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %250, i32 0, i32 58
  %251 = load i8*, i8** %water304, align 8
  %tobool305 = icmp ne i8* %251, null
  br i1 %tobool305, label %if.then.306, label %if.end.308

if.then.306:                                      ; preds = %do.body.303
  %252 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %water307 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %252, i32 0, i32 58
  %253 = load i8*, i8** %water307, align 8
  call void @free(i8* %253) #5
  br label %if.end.308

if.end.308:                                       ; preds = %if.then.306, %do.body.303
  br label %do.end.309

do.end.309:                                       ; preds = %if.end.308
  %254 = load i8*, i8** %my_s2302, align 8
  %cmp310 = icmp eq i8* %254, null
  br i1 %cmp310, label %cond.false.318, label %lor.lhs.false.312

lor.lhs.false.312:                                ; preds = %do.end.309
  %255 = load i8*, i8** %my_s2302, align 8
  %256 = load i8, i8* %255, align 1
  %conv313 = zext i8 %256 to i32
  %cmp314 = icmp eq i32 %conv313, 0
  br i1 %cmp314, label %cond.false.318, label %cond.true.316

cond.true.316:                                    ; preds = %lor.lhs.false.312
  %257 = load i8*, i8** %my_s2302, align 8
  %call317 = call i8* @xstrdup(i8* %257)
  br label %cond.end.319

cond.false.318:                                   ; preds = %lor.lhs.false.312, %do.end.309
  br label %cond.end.319

cond.end.319:                                     ; preds = %cond.false.318, %cond.true.316
  %cond320 = phi i8* [ %call317, %cond.true.316 ], [ null, %cond.false.318 ]
  %258 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %water321 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %258, i32 0, i32 58
  store i8* %cond320, i8** %water321, align 8
  br label %do.end.322

do.end.322:                                       ; preds = %cond.end.319
  br label %sw.epilog.578

sw.bb.323:                                        ; preds = %if.end.19
  %call324 = call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0)) #5
  %tobool325 = icmp ne i8* %call324, null
  br i1 %tobool325, label %if.end.337, label %if.then.326

if.then.326:                                      ; preds = %sw.bb.323
  %259 = load i8*, i8** @optarg, align 8
  %cmp327 = icmp eq i8* %259, null
  br i1 %cmp327, label %if.else.335, label %lor.lhs.false.329

lor.lhs.false.329:                                ; preds = %if.then.326
  %260 = load i8*, i8** @optarg, align 8
  %261 = load i8, i8* %260, align 1
  %conv330 = sext i8 %261 to i32
  %cmp331 = icmp eq i32 %conv330, 0
  br i1 %cmp331, label %if.else.335, label %if.then.333

if.then.333:                                      ; preds = %lor.lhs.false.329
  %262 = load i8*, i8** @optarg, align 8
  %call334 = call i32 @msg_verbosity_argmatch(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* %262)
  store i32 %call334, i32* @msg_verbosity, align 4
  br label %if.end.336

if.else.335:                                      ; preds = %lor.lhs.false.329, %if.then.326
  store i32 3, i32* @msg_verbosity, align 4
  br label %if.end.336

if.end.336:                                       ; preds = %if.else.335, %if.then.333
  br label %if.end.337

if.end.337:                                       ; preds = %if.end.336, %sw.bb.323
  br label %sw.epilog.578

sw.bb.338:                                        ; preds = %if.end.19
  br label %do.body.339

do.body.339:                                      ; preds = %sw.bb.338
  %263 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %requested_encoding_name = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %263, i32 0, i32 44
  %264 = load i8*, i8** %requested_encoding_name, align 8
  %tobool340 = icmp ne i8* %264, null
  br i1 %tobool340, label %if.then.341, label %if.end.343

if.then.341:                                      ; preds = %do.body.339
  %265 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %requested_encoding_name342 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %265, i32 0, i32 44
  %266 = load i8*, i8** %requested_encoding_name342, align 8
  call void @free(i8* %266) #5
  br label %if.end.343

if.end.343:                                       ; preds = %if.then.341, %do.body.339
  br label %do.end.344

do.end.344:                                       ; preds = %if.end.343
  %267 = load i8*, i8** @optarg, align 8
  %call345 = call i8* @xstrdup(i8* %267)
  %268 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %requested_encoding_name346 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %268, i32 0, i32 44
  store i8* %call345, i8** %requested_encoding_name346, align 8
  br label %sw.epilog.578

sw.bb.347:                                        ; preds = %if.end.19
  %269 = load i8*, i8** @optarg, align 8
  %call348 = call i32 @get_integer_in_range(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* %269, i32 1, i32 0, i32 1)
  %270 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns349 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %270, i32 0, i32 14
  store i32 %call348, i32* %columns349, align 4
  br label %sw.epilog.578

sw.bb.350:                                        ; preds = %if.end.19
  %271 = load i8*, i8** @optarg, align 8
  %call351 = call i32 @get_integer_in_range(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i8* %271, i32 1, i32 0, i32 1)
  %272 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %rows352 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %272, i32 0, i32 15
  store i32 %call351, i32* %rows352, align 4
  br label %sw.epilog.578

sw.bb.353:                                        ; preds = %if.end.19
  br label %do.body.354

do.body.354:                                      ; preds = %sw.bb.353
  %273 = load i8*, i8** @optarg, align 8
  store i8* %273, i8** %my_s2355, align 8
  br label %do.body.356

do.body.356:                                      ; preds = %do.body.354
  %274 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %prolog = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %274, i32 0, i32 36
  %275 = load i8*, i8** %prolog, align 8
  %tobool357 = icmp ne i8* %275, null
  br i1 %tobool357, label %if.then.358, label %if.end.360

if.then.358:                                      ; preds = %do.body.356
  %276 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %prolog359 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %276, i32 0, i32 36
  %277 = load i8*, i8** %prolog359, align 8
  call void @free(i8* %277) #5
  br label %if.end.360

if.end.360:                                       ; preds = %if.then.358, %do.body.356
  br label %do.end.361

do.end.361:                                       ; preds = %if.end.360
  %278 = load i8*, i8** %my_s2355, align 8
  %cmp362 = icmp eq i8* %278, null
  br i1 %cmp362, label %cond.false.370, label %lor.lhs.false.364

lor.lhs.false.364:                                ; preds = %do.end.361
  %279 = load i8*, i8** %my_s2355, align 8
  %280 = load i8, i8* %279, align 1
  %conv365 = sext i8 %280 to i32
  %cmp366 = icmp eq i32 %conv365, 0
  br i1 %cmp366, label %cond.false.370, label %cond.true.368

cond.true.368:                                    ; preds = %lor.lhs.false.364
  %281 = load i8*, i8** %my_s2355, align 8
  %call369 = call i8* @xstrdup(i8* %281)
  br label %cond.end.371

cond.false.370:                                   ; preds = %lor.lhs.false.364, %do.end.361
  br label %cond.end.371

cond.end.371:                                     ; preds = %cond.false.370, %cond.true.368
  %cond372 = phi i8* [ %call369, %cond.true.368 ], [ null, %cond.false.370 ]
  %282 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %prolog373 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %282, i32 0, i32 36
  store i8* %cond372, i8** %prolog373, align 8
  br label %do.end.374

do.end.374:                                       ; preds = %cond.end.371
  br label %sw.epilog.578

sw.bb.375:                                        ; preds = %if.end.19
  %283 = load i8*, i8** @optarg, align 8
  %284 = load void ()*, void ()** @argmatch_die, align 8
  %call376 = call i32 @__xargmatch_internal(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0), i8* %283, i8** getelementptr inbounds ([9 x i8*], [9 x i8*]* @non_printable_args, i32 0, i32 0), i8* bitcast ([8 x i32]* @non_printable_types to i8*), i64 4, i32 0, void ()* %284)
  %idxprom377 = sext i32 %call376 to i64
  %arrayidx378 = getelementptr inbounds [8 x i32], [8 x i32]* @non_printable_types, i32 0, i64 %idxprom377
  %285 = load i32, i32* %arrayidx378, align 4
  %286 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %unprintable_format = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %286, i32 0, i32 30
  store i32 %285, i32* %unprintable_format, align 4
  br label %sw.epilog.578

sw.bb.379:                                        ; preds = %if.end.19
  %287 = load i8*, i8** @optarg, align 8
  %call380 = call zeroext i1 @a2ps_get_bool(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), i8* %287)
  %conv381 = zext i1 %call380 to i32
  %288 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %print_binaries = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %288, i32 0, i32 32
  store i32 %conv381, i32* %print_binaries, align 4
  br label %sw.epilog.578

sw.bb.382:                                        ; preds = %if.end.19
  %289 = load i8*, i8** @optarg, align 8
  %290 = load i8*, i8** @optarg, align 8
  %call384 = call i64 @strcspn(i8* %290, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)) #7
  %add.ptr385 = getelementptr inbounds i8, i8* %289, i64 %call384
  store i8* %add.ptr385, i8** %value383, align 8
  %291 = load i8*, i8** %value383, align 8
  %292 = load i8, i8* %291, align 1
  %tobool386 = icmp ne i8 %292, 0
  br i1 %tobool386, label %if.then.387, label %if.else.389

if.then.387:                                      ; preds = %sw.bb.382
  %293 = load i8*, i8** %value383, align 8
  %incdec.ptr388 = getelementptr inbounds i8, i8* %293, i32 1
  store i8* %incdec.ptr388, i8** %value383, align 8
  store i8 0, i8* %293, align 1
  br label %if.end.390

if.else.389:                                      ; preds = %sw.bb.382
  store i8* null, i8** %value383, align 8
  br label %if.end.390

if.end.390:                                       ; preds = %if.else.389, %if.then.387
  %294 = load i8*, i8** %value383, align 8
  %tobool391 = icmp ne i8* %294, null
  br i1 %tobool391, label %if.then.392, label %if.else.398

if.then.392:                                      ; preds = %if.end.390
  %295 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %296 = load i8*, i8** @optarg, align 8
  %297 = load i8*, i8** %value383, align 8
  %call393 = call zeroext i1 @macro_meta_sequence_add(%struct.a2ps_job* %295, i8* %296, i8* %297)
  br i1 %call393, label %if.end.397, label %if.then.394

if.then.394:                                      ; preds = %if.then.392
  %call395 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i32 0, i32 0)) #5
  %298 = load i8*, i8** @optarg, align 8
  %call396 = call i8* @quotearg(i8* %298)
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call395, i8* %call396)
  br label %if.end.397

if.end.397:                                       ; preds = %if.then.394, %if.then.392
  br label %if.end.399

if.else.398:                                      ; preds = %if.end.390
  %299 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %300 = load i8*, i8** @optarg, align 8
  call void @macro_meta_sequence_delete(%struct.a2ps_job* %299, i8* %300)
  br label %if.end.399

if.end.399:                                       ; preds = %if.else.398, %if.end.397
  br label %sw.epilog.578

sw.bb.400:                                        ; preds = %if.end.19
  br label %do.body.401

do.body.401:                                      ; preds = %sw.bb.400
  %301 = load i8*, i8** @optarg, align 8
  store i8* %301, i8** %my_s2402, align 8
  br label %do.body.403

do.body.403:                                      ; preds = %do.body.401
  %302 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %left_title404 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %302, i32 0, i32 53
  %303 = load i8*, i8** %left_title404, align 8
  %tobool405 = icmp ne i8* %303, null
  br i1 %tobool405, label %if.then.406, label %if.end.408

if.then.406:                                      ; preds = %do.body.403
  %304 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %left_title407 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %304, i32 0, i32 53
  %305 = load i8*, i8** %left_title407, align 8
  call void @free(i8* %305) #5
  br label %if.end.408

if.end.408:                                       ; preds = %if.then.406, %do.body.403
  br label %do.end.409

do.end.409:                                       ; preds = %if.end.408
  %306 = load i8*, i8** %my_s2402, align 8
  %cmp410 = icmp eq i8* %306, null
  br i1 %cmp410, label %cond.false.418, label %lor.lhs.false.412

lor.lhs.false.412:                                ; preds = %do.end.409
  %307 = load i8*, i8** %my_s2402, align 8
  %308 = load i8, i8* %307, align 1
  %conv413 = zext i8 %308 to i32
  %cmp414 = icmp eq i32 %conv413, 0
  br i1 %cmp414, label %cond.false.418, label %cond.true.416

cond.true.416:                                    ; preds = %lor.lhs.false.412
  %309 = load i8*, i8** %my_s2402, align 8
  %call417 = call i8* @xstrdup(i8* %309)
  br label %cond.end.419

cond.false.418:                                   ; preds = %lor.lhs.false.412, %do.end.409
  br label %cond.end.419

cond.end.419:                                     ; preds = %cond.false.418, %cond.true.416
  %cond420 = phi i8* [ %call417, %cond.true.416 ], [ null, %cond.false.418 ]
  %310 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %left_title421 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %310, i32 0, i32 53
  store i8* %cond420, i8** %left_title421, align 8
  br label %do.end.422

do.end.422:                                       ; preds = %cond.end.419
  br label %sw.epilog.578

sw.bb.423:                                        ; preds = %if.end.19
  br label %do.body.424

do.body.424:                                      ; preds = %sw.bb.423
  %311 = load i8*, i8** @optarg, align 8
  store i8* %311, i8** %my_s2425, align 8
  br label %do.body.426

do.body.426:                                      ; preds = %do.body.424
  %312 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %right_title427 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %312, i32 0, i32 54
  %313 = load i8*, i8** %right_title427, align 8
  %tobool428 = icmp ne i8* %313, null
  br i1 %tobool428, label %if.then.429, label %if.end.431

if.then.429:                                      ; preds = %do.body.426
  %314 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %right_title430 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %314, i32 0, i32 54
  %315 = load i8*, i8** %right_title430, align 8
  call void @free(i8* %315) #5
  br label %if.end.431

if.end.431:                                       ; preds = %if.then.429, %do.body.426
  br label %do.end.432

do.end.432:                                       ; preds = %if.end.431
  %316 = load i8*, i8** %my_s2425, align 8
  %cmp433 = icmp eq i8* %316, null
  br i1 %cmp433, label %cond.false.441, label %lor.lhs.false.435

lor.lhs.false.435:                                ; preds = %do.end.432
  %317 = load i8*, i8** %my_s2425, align 8
  %318 = load i8, i8* %317, align 1
  %conv436 = zext i8 %318 to i32
  %cmp437 = icmp eq i32 %conv436, 0
  br i1 %cmp437, label %cond.false.441, label %cond.true.439

cond.true.439:                                    ; preds = %lor.lhs.false.435
  %319 = load i8*, i8** %my_s2425, align 8
  %call440 = call i8* @xstrdup(i8* %319)
  br label %cond.end.442

cond.false.441:                                   ; preds = %lor.lhs.false.435, %do.end.432
  br label %cond.end.442

cond.end.442:                                     ; preds = %cond.false.441, %cond.true.439
  %cond443 = phi i8* [ %call440, %cond.true.439 ], [ null, %cond.false.441 ]
  %320 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %right_title444 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %320, i32 0, i32 54
  store i8* %cond443, i8** %right_title444, align 8
  br label %do.end.445

do.end.445:                                       ; preds = %cond.end.442
  br label %sw.epilog.578

sw.bb.446:                                        ; preds = %if.end.19
  br label %do.body.447

do.body.447:                                      ; preds = %sw.bb.446
  %321 = load i8*, i8** @optarg, align 8
  store i8* %321, i8** %my_s2448, align 8
  br label %do.body.449

do.body.449:                                      ; preds = %do.body.447
  %322 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %center_title450 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %322, i32 0, i32 52
  %323 = load i8*, i8** %center_title450, align 8
  %tobool451 = icmp ne i8* %323, null
  br i1 %tobool451, label %if.then.452, label %if.end.454

if.then.452:                                      ; preds = %do.body.449
  %324 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %center_title453 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %324, i32 0, i32 52
  %325 = load i8*, i8** %center_title453, align 8
  call void @free(i8* %325) #5
  br label %if.end.454

if.end.454:                                       ; preds = %if.then.452, %do.body.449
  br label %do.end.455

do.end.455:                                       ; preds = %if.end.454
  %326 = load i8*, i8** %my_s2448, align 8
  %cmp456 = icmp eq i8* %326, null
  br i1 %cmp456, label %cond.false.464, label %lor.lhs.false.458

lor.lhs.false.458:                                ; preds = %do.end.455
  %327 = load i8*, i8** %my_s2448, align 8
  %328 = load i8, i8* %327, align 1
  %conv459 = zext i8 %328 to i32
  %cmp460 = icmp eq i32 %conv459, 0
  br i1 %cmp460, label %cond.false.464, label %cond.true.462

cond.true.462:                                    ; preds = %lor.lhs.false.458
  %329 = load i8*, i8** %my_s2448, align 8
  %call463 = call i8* @xstrdup(i8* %329)
  br label %cond.end.465

cond.false.464:                                   ; preds = %lor.lhs.false.458, %do.end.455
  br label %cond.end.465

cond.end.465:                                     ; preds = %cond.false.464, %cond.true.462
  %cond466 = phi i8* [ %call463, %cond.true.462 ], [ null, %cond.false.464 ]
  %330 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %center_title467 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %330, i32 0, i32 52
  store i8* %cond466, i8** %center_title467, align 8
  br label %do.end.468

do.end.468:                                       ; preds = %cond.end.465
  br label %sw.epilog.578

sw.bb.469:                                        ; preds = %if.end.19
  br label %do.body.470

do.body.470:                                      ; preds = %sw.bb.469
  %331 = load i8*, i8** @optarg, align 8
  store i8* %331, i8** %my_s2471, align 8
  br label %do.body.472

do.body.472:                                      ; preds = %do.body.470
  %332 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %left_footer473 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %332, i32 0, i32 55
  %333 = load i8*, i8** %left_footer473, align 8
  %tobool474 = icmp ne i8* %333, null
  br i1 %tobool474, label %if.then.475, label %if.end.477

if.then.475:                                      ; preds = %do.body.472
  %334 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %left_footer476 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %334, i32 0, i32 55
  %335 = load i8*, i8** %left_footer476, align 8
  call void @free(i8* %335) #5
  br label %if.end.477

if.end.477:                                       ; preds = %if.then.475, %do.body.472
  br label %do.end.478

do.end.478:                                       ; preds = %if.end.477
  %336 = load i8*, i8** %my_s2471, align 8
  %cmp479 = icmp eq i8* %336, null
  br i1 %cmp479, label %cond.false.487, label %lor.lhs.false.481

lor.lhs.false.481:                                ; preds = %do.end.478
  %337 = load i8*, i8** %my_s2471, align 8
  %338 = load i8, i8* %337, align 1
  %conv482 = zext i8 %338 to i32
  %cmp483 = icmp eq i32 %conv482, 0
  br i1 %cmp483, label %cond.false.487, label %cond.true.485

cond.true.485:                                    ; preds = %lor.lhs.false.481
  %339 = load i8*, i8** %my_s2471, align 8
  %call486 = call i8* @xstrdup(i8* %339)
  br label %cond.end.488

cond.false.487:                                   ; preds = %lor.lhs.false.481, %do.end.478
  br label %cond.end.488

cond.end.488:                                     ; preds = %cond.false.487, %cond.true.485
  %cond489 = phi i8* [ %call486, %cond.true.485 ], [ null, %cond.false.487 ]
  %340 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %left_footer490 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %340, i32 0, i32 55
  store i8* %cond489, i8** %left_footer490, align 8
  br label %do.end.491

do.end.491:                                       ; preds = %cond.end.488
  br label %sw.epilog.578

sw.bb.492:                                        ; preds = %if.end.19
  br label %do.body.493

do.body.493:                                      ; preds = %sw.bb.492
  %341 = load i8*, i8** @optarg, align 8
  store i8* %341, i8** %my_s2494, align 8
  br label %do.body.495

do.body.495:                                      ; preds = %do.body.493
  %342 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %footer496 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %342, i32 0, i32 56
  %343 = load i8*, i8** %footer496, align 8
  %tobool497 = icmp ne i8* %343, null
  br i1 %tobool497, label %if.then.498, label %if.end.500

if.then.498:                                      ; preds = %do.body.495
  %344 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %footer499 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %344, i32 0, i32 56
  %345 = load i8*, i8** %footer499, align 8
  call void @free(i8* %345) #5
  br label %if.end.500

if.end.500:                                       ; preds = %if.then.498, %do.body.495
  br label %do.end.501

do.end.501:                                       ; preds = %if.end.500
  %346 = load i8*, i8** %my_s2494, align 8
  %cmp502 = icmp eq i8* %346, null
  br i1 %cmp502, label %cond.false.510, label %lor.lhs.false.504

lor.lhs.false.504:                                ; preds = %do.end.501
  %347 = load i8*, i8** %my_s2494, align 8
  %348 = load i8, i8* %347, align 1
  %conv505 = zext i8 %348 to i32
  %cmp506 = icmp eq i32 %conv505, 0
  br i1 %cmp506, label %cond.false.510, label %cond.true.508

cond.true.508:                                    ; preds = %lor.lhs.false.504
  %349 = load i8*, i8** %my_s2494, align 8
  %call509 = call i8* @xstrdup(i8* %349)
  br label %cond.end.511

cond.false.510:                                   ; preds = %lor.lhs.false.504, %do.end.501
  br label %cond.end.511

cond.end.511:                                     ; preds = %cond.false.510, %cond.true.508
  %cond512 = phi i8* [ %call509, %cond.true.508 ], [ null, %cond.false.510 ]
  %350 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %footer513 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %350, i32 0, i32 56
  store i8* %cond512, i8** %footer513, align 8
  br label %do.end.514

do.end.514:                                       ; preds = %cond.end.511
  br label %sw.epilog.578

sw.bb.515:                                        ; preds = %if.end.19
  br label %do.body.516

do.body.516:                                      ; preds = %sw.bb.515
  %351 = load i8*, i8** @optarg, align 8
  store i8* %351, i8** %my_s2517, align 8
  br label %do.body.518

do.body.518:                                      ; preds = %do.body.516
  %352 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %right_footer519 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %352, i32 0, i32 57
  %353 = load i8*, i8** %right_footer519, align 8
  %tobool520 = icmp ne i8* %353, null
  br i1 %tobool520, label %if.then.521, label %if.end.523

if.then.521:                                      ; preds = %do.body.518
  %354 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %right_footer522 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %354, i32 0, i32 57
  %355 = load i8*, i8** %right_footer522, align 8
  call void @free(i8* %355) #5
  br label %if.end.523

if.end.523:                                       ; preds = %if.then.521, %do.body.518
  br label %do.end.524

do.end.524:                                       ; preds = %if.end.523
  %356 = load i8*, i8** %my_s2517, align 8
  %cmp525 = icmp eq i8* %356, null
  br i1 %cmp525, label %cond.false.533, label %lor.lhs.false.527

lor.lhs.false.527:                                ; preds = %do.end.524
  %357 = load i8*, i8** %my_s2517, align 8
  %358 = load i8, i8* %357, align 1
  %conv528 = zext i8 %358 to i32
  %cmp529 = icmp eq i32 %conv528, 0
  br i1 %cmp529, label %cond.false.533, label %cond.true.531

cond.true.531:                                    ; preds = %lor.lhs.false.527
  %359 = load i8*, i8** %my_s2517, align 8
  %call532 = call i8* @xstrdup(i8* %359)
  br label %cond.end.534

cond.false.533:                                   ; preds = %lor.lhs.false.527, %do.end.524
  br label %cond.end.534

cond.end.534:                                     ; preds = %cond.false.533, %cond.true.531
  %cond535 = phi i8* [ %call532, %cond.true.531 ], [ null, %cond.false.533 ]
  %360 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %right_footer536 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %360, i32 0, i32 57
  store i8* %cond535, i8** %right_footer536, align 8
  br label %do.end.537

do.end.537:                                       ; preds = %cond.end.534
  br label %sw.epilog.578

sw.bb.538:                                        ; preds = %if.end.19
  %361 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %debug = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %361, i32 0, i32 35
  store i8 1, i8* %debug, align 1
  br label %sw.epilog.578

sw.bb.539:                                        ; preds = %if.end.19
  %362 = load i8*, i8** @optarg, align 8
  %tobool540 = icmp ne i8* %362, null
  br i1 %tobool540, label %if.then.541, label %if.else.543

if.then.541:                                      ; preds = %sw.bb.539
  %363 = load i8*, i8** @optarg, align 8
  %call542 = call i32 @get_integer_in_range(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i8* %363, i32 0, i32 0, i32 1)
  %364 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %margin = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %364, i32 0, i32 19
  store i32 %call542, i32* %margin, align 4
  br label %if.end.545

if.else.543:                                      ; preds = %sw.bb.539
  %365 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %margin544 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %365, i32 0, i32 19
  store i32 12, i32* %margin544, align 4
  br label %if.end.545

if.end.545:                                       ; preds = %if.else.543, %if.then.541
  br label %sw.epilog.578

sw.bb.546:                                        ; preds = %if.end.19
  %366 = load i8*, i8** @optarg, align 8
  %call547 = call i32 @madir_argmatch(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i8* %366)
  %367 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %madir548 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %367, i32 0, i32 16
  store i32 %call547, i32* %madir548, align 4
  br label %sw.epilog.578

sw.bb.549:                                        ; preds = %if.end.19
  %368 = load i8*, i8** @optarg, align 8
  %call550 = call i32 @get_version(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0), i8* %368)
  %369 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %backup_type = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %369, i32 0, i32 7
  store i32 %call550, i32* %backup_type, align 4
  br label %sw.epilog.578

sw.bb.551:                                        ; preds = %if.end.19
  %370 = load i8*, i8** @optarg, align 8
  %call552 = call i8* @xstrdup(i8* %370)
  store i8* %call552, i8** @simple_backup_suffix, align 8
  br label %sw.epilog.578

sw.bb.553:                                        ; preds = %if.end.19
  %371 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %printers554 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %371, i32 0, i32 25
  %372 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers554, align 8
  %373 = load i8*, i8** @optarg, align 8
  call void @a2ps_printers_request_ppdkey_set(%struct.a2ps_printers_s* %372, i8* %373)
  br label %sw.epilog.578

sw.bb.555:                                        ; preds = %if.end.19
  br label %do.body.556

do.body.556:                                      ; preds = %sw.bb.555
  %374 = load i8*, i8** @optarg, align 8
  store i8* %374, i8** %my_s2557, align 8
  br label %do.body.558

do.body.558:                                      ; preds = %do.body.556
  %375 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %stdin_filename = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %375, i32 0, i32 24
  %376 = load i8*, i8** %stdin_filename, align 8
  %tobool559 = icmp ne i8* %376, null
  br i1 %tobool559, label %if.then.560, label %if.end.562

if.then.560:                                      ; preds = %do.body.558
  %377 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %stdin_filename561 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %377, i32 0, i32 24
  %378 = load i8*, i8** %stdin_filename561, align 8
  call void @free(i8* %378) #5
  br label %if.end.562

if.end.562:                                       ; preds = %if.then.560, %do.body.558
  br label %do.end.563

do.end.563:                                       ; preds = %if.end.562
  %379 = load i8*, i8** %my_s2557, align 8
  %cmp564 = icmp eq i8* %379, null
  br i1 %cmp564, label %cond.false.572, label %lor.lhs.false.566

lor.lhs.false.566:                                ; preds = %do.end.563
  %380 = load i8*, i8** %my_s2557, align 8
  %381 = load i8, i8* %380, align 1
  %conv567 = zext i8 %381 to i32
  %cmp568 = icmp eq i32 %conv567, 0
  br i1 %cmp568, label %cond.false.572, label %cond.true.570

cond.true.570:                                    ; preds = %lor.lhs.false.566
  %382 = load i8*, i8** %my_s2557, align 8
  %call571 = call i8* @xstrdup(i8* %382)
  br label %cond.end.573

cond.false.572:                                   ; preds = %lor.lhs.false.566, %do.end.563
  br label %cond.end.573

cond.end.573:                                     ; preds = %cond.false.572, %cond.true.570
  %cond574 = phi i8* [ %call571, %cond.true.570 ], [ null, %cond.false.572 ]
  %383 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %stdin_filename575 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %383, i32 0, i32 24
  store i8* %cond574, i8** %stdin_filename575, align 8
  br label %do.end.576

do.end.576:                                       ; preds = %cond.end.573
  br label %sw.epilog.578

sw.bb.577:                                        ; preds = %if.end.19
  call void @abort() #6
  unreachable

sw.epilog.578:                                    ; preds = %if.end.19, %do.end.576, %sw.bb.553, %sw.bb.551, %sw.bb.549, %sw.bb.546, %if.end.545, %sw.bb.538, %do.end.537, %do.end.514, %do.end.491, %do.end.468, %do.end.445, %do.end.422, %if.end.399, %sw.bb.379, %sw.bb.375, %do.end.374, %sw.bb.350, %sw.bb.347, %do.end.344, %if.end.337, %do.end.322, %sw.bb.298, %do.end.297, %if.end.275, %sw.epilog, %sw.bb.248, %sw.bb.246, %if.end.245, %sw.bb.239, %sw.bb.237, %sw.bb.235, %do.end.234, %sw.bb.210, %sw.bb.206, %sw.bb.202, %sw.bb.200, %sw.bb.199, %sw.bb.195, %sw.bb.194, %sw.bb.190, %sw.bb.189, %if.end.185, %if.end.178, %sw.bb.169, %cond.end.166, %sw.bb.160, %sw.bb.154, %sw.bb.153, %do.end.144, %do.end.94, %sw.bb.81, %sw.bb.80, %sw.bb.77, %sw.bb.70, %sw.bb.63, %sw.bb.56, %sw.bb.49, %sw.bb.42, %sw.bb.35, %sw.bb.28, %sw.bb.21, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.578, %if.then.18
  %384 = load %struct.opt_optarg*, %struct.opt_optarg** %opt_optarg, align 8
  %next579 = getelementptr inbounds %struct.opt_optarg, %struct.opt_optarg* %384, i32 0, i32 2
  %385 = load %struct.opt_optarg*, %struct.opt_optarg** %next579, align 8
  store %struct.opt_optarg* %385, %struct.opt_optarg** %opt_optarg, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %386 = load i32, i32* %res, align 4
  ret i32 %386
}

declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define i32 @a2ps_handle_string_options(%struct.a2ps_job* %job, i8* %string) #0 {
entry:
  %retval = alloca i32, align 4
  %job.addr = alloca %struct.a2ps_job*, align 8
  %string.addr = alloca i8*, align 8
  %argc = alloca i32, align 4
  %argv = alloca i8**, align 8
  %res = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  %0 = load i8*, i8** %string.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %1 = load i32, i32* @msg_verbosity, align 4
  %and = and i32 32, %1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %do.body
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load i8*, i8** %string.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i32 0, i32 0), i8* %3)
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.2
  store i32 1, i32* %argc, align 4
  %4 = load i8*, i8** %string.addr, align 8
  %call3 = call i8** @buildargv_argc(i8* %4, i32* %argc)
  store i8** %call3, i8*** %argv, align 8
  %5 = load i8*, i8** @program_name, align 8
  %6 = load i8**, i8*** %argv, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 0
  store i8* %5, i8** %arrayidx, align 8
  %7 = load i32, i32* @msg_verbosity, align 4
  %and4 = and i32 32, %7
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %do.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.6
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %argc, align 4
  %cmp7 = icmp slt i32 %8, %9
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load i8**, i8*** %argv, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %13, i64 %idxprom
  %14 = load i8*, i8** %arrayidx8, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0), i32 %11, i8* %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.10

if.end.10:                                        ; preds = %for.end, %do.end
  %16 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %17 = load i32, i32* %argc, align 4
  %18 = load i8**, i8*** %argv, align 8
  %call11 = call i32 @a2ps_handle_options(%struct.a2ps_job* %16, i32 %17, i8** %18)
  store i32 %call11, i32* %res, align 4
  %19 = load i8**, i8*** %argv, align 8
  call void @freeargv_from(i8** %19, i32 1)
  %20 = load i32, i32* %res, align 4
  store i32 %20, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i8* @user_option_get(%struct.a2ps_job*, i8*) #1

declare void @a2ps_page_range_set_string(%struct.a2ps_job*, i8*) #1

declare i32 @file_align_argmatch(i8*, i8*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

declare i8* @xstrdup(i8*) #1

declare i32 @get_integer_in_range(i8*, i8*, i32, i32, i32) #1

declare void @a2ps_printers_flag_output_set(%struct.a2ps_printers_s*, i8*, i1 zeroext) #1

; Function Attrs: nounwind readonly
declare i64 @strcspn(i8*, i8*) #4

declare void @setpagedevice(%struct.a2ps_job*, i8*, i8*) #1

declare void @delpagedevice(%struct.a2ps_job*, i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

declare float @get_length(i8*, i8*, float, float, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

declare void @delstatusdict(%struct.a2ps_job*, i8*) #1

declare void @setstatusdict(%struct.a2ps_job*, i8*, i8*, i32) #1

declare i32 @msg_verbosity_argmatch(i8*, i8*) #1

declare zeroext i1 @macro_meta_sequence_add(%struct.a2ps_job*, i8*, i8*) #1

declare void @error(i32, i32, i8*, ...) #1

declare i8* @quotearg(i8*) #1

declare void @macro_meta_sequence_delete(%struct.a2ps_job*, i8*) #1

declare i32 @madir_argmatch(i8*, i8*) #1

declare i32 @get_version(i8*, i8*) #1

declare void @a2ps_printers_request_ppdkey_set(%struct.a2ps_printers_s*, i8*) #1

; Function Attrs: noreturn nounwind
declare void @abort() #3

declare i8** @buildargv_argc(i8*, i32*) #1

declare void @freeargv_from(i8**, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
