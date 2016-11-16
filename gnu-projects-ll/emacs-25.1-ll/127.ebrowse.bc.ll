; ModuleID = './lib-src/ebrowse.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym = type { i32, i8, %struct.sym*, %struct.link*, %struct.link*, %struct.member*, %struct.member*, %struct.member*, %struct.member*, %struct.member*, %struct.member*, i8*, i32, i8*, i8*, %struct.sym*, [0 x i8] }
%struct.link = type { %struct.sym*, %struct.link* }
%struct.member = type { %struct.member*, %struct.member*, %struct.member**, i32, i32, i32, i8*, i8*, i32, i8*, i8*, i32, [0 x i8] }
%struct.option = type { i8*, i32, i32*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.alias = type { %struct.alias*, %struct.sym*, %struct.link*, [0 x i8] }
%struct.kw = type { i8*, i32, %struct.kw* }
%struct.search_path = type { i8*, %struct.search_path* }

@info_cls = global %struct.sym* null, align 8
@info_member = global %struct.member* null, align 8
@info_position = global i32 -1, align 4
@.str = private unnamed_addr constant [7 x i8] c"append\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"files\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"min-regexp-length\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"max-regexp-length\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"no-nested-classes\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"no-regexps\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"no-structs-or-unions\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"output-file\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"position-info\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"search-path\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"very-verbose\00", align 1
@options = global [15 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 1, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i32 1, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 1, i32* null, i32 77 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 0, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 0, i32* null, i32 120 }, %struct.option { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i32 1, i32* null, i32 111 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 1, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i32 1, i32* null, i32 73 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 0, i32* null, i32 86 }, %struct.option zeroinitializer], align 16
@f_structs = global i32 1, align 4
@f_regexps = global i32 1, align 4
@f_nested_classes = global i32 1, align 4
@min_regexp = global i32 5, align 4
@max_regexp = global i32 50, align 4
@tk = global i32 -1, align 4
@main.out_filename = internal global i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), align 8
@.str.14 = private unnamed_addr constant [7 x i8] c"BROWSE\00", align 1
@main.input_filenames = internal global i8** null, align 8
@main.input_filenames_size = internal global i32 0, align 4
@main.n_input_files = internal global i32 0, align 4
@.str.15 = private unnamed_addr constant [13 x i8] c"command line\00", align 1
@filename = common global i8* null, align 8
@stdout = external global %struct._IO_FILE*, align 8
@yyout = common global %struct._IO_FILE* null, align 8
@.str.16 = private unnamed_addr constant [19 x i8] c"af:I:m:M:no:p:svVx\00", align 1
@optarg = external global i8*, align 8
@f_append = common global i32 0, align 4
@f_verbose = common global i32 0, align 4
@f_very_verbose = common global i32 0, align 4
@.str.17 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"file '%s' must exist for --append\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"error seeking in file '%s'\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"error getting size of file '%s'\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"file '%s' is empty\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"cannot open output file '%s'\00", align 1
@optind = external global i32, align 4
@stdin = external global %struct._IO_FILE*, align 8
@.str.25 = private unnamed_addr constant [28 x i8] c"cannot open input file '%s'\00", align 1
@info_where = common global i32 0, align 4
@yyival = common global i32 0, align 4
@yytext = common global i8* null, align 8
@yytext_end = common global i8* null, align 8
@yyline = common global i32 0, align 4
@is_ident = common global [255 x i8] zeroinitializer, align 16
@is_digit = common global [255 x i8] zeroinitializer, align 16
@is_white = common global [255 x i8] zeroinitializer, align 16
@inbuffer = common global i8* null, align 8
@in = common global i8* null, align 8
@inbuffer_size = common global i64 0, align 8
@string_start = common global i8* null, align 8
@class_table = common global [1001 x %struct.sym*] zeroinitializer, align 16
@member_table = common global [1001 x %struct.member*] zeroinitializer, align 16
@namespace_alias_table = common global [1001 x %struct.alias*] zeroinitializer, align 16
@global_symbols = common global %struct.sym* null, align 8
@current_namespace = common global %struct.sym* null, align 8
@all_namespaces = common global %struct.sym* null, align 8
@namespace_stack = common global %struct.sym** null, align 8
@namespace_stack_size = common global i32 0, align 4
@namespace_sp = common global i32 0, align 4
@keyword_table = common global [1001 x %struct.kw*] zeroinitializer, align 16
@search_path = common global %struct.search_path* null, align 8
@search_path_tail = common global %struct.search_path* null, align 8
@scope_buffer = common global i8* null, align 8
@scope_buffer_size = common global i32 0, align 4
@scope_buffer_len = common global i32 0, align 4
@.str.26 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@usage_message = internal constant [2 x i8*] [i8* getelementptr inbounds ([352 x i8], [352 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([480 x i8], [480 x i8]* @.str.28, i32 0, i32 0)], align 16
@.str.27 = private unnamed_addr constant [352 x i8] c"Usage: ebrowse [options] {files}\0A\0A  -a, --append                  append output to existing file\0A  -f, --files=FILES             read input file names from FILE\0A  -I, --search-path=LIST        set search path for input files\0A  -m, --min-regexp-length=N     set minimum regexp length to N\0A  -M, --max-regexp-length=N     set maximum regexp length to N\0A\00", align 1
@.str.28 = private unnamed_addr constant [480 x i8] c"  -n, --no-nested-classes       exclude nested classes\0A  -o, --output-file=FILE        set output file name to FILE\0A  -p, --position-info           print info about position in file\0A  -s, --no-structs-or-unions    don't record structs or unions\0A  -v, --verbose                 be verbose\0A  -V, --very-verbose            be very verbose\0A  -x, --no-regexps\09\09don't record regular expressions\0A      --help                    display this help\0A      --version\09\09\09display version info\0A\0A\00", align 1
@version.emacs_copyright = private unnamed_addr constant [50 x i8] c"Copyright (C) 2016 Free Software Foundation, Inc.\00", align 16
@.str.29 = private unnamed_addr constant [12 x i8] c"ebrowse %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"25.1\00", align 1
@.str.31 = private unnamed_addr constant [59 x i8] c"This program is distributed under the same terms as Emacs.\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"and_eq\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"asm\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"bitand\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"bitor\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"break\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"case\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"catch\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"compl\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"const_cast\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"dynamic_cast\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"explicit\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"extern\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"friend\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"goto\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"inline\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"mutable\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"namespace\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"not_eq\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"operator\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"or_eq\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"protected\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"public\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"register\00", align 1
@.str.78 = private unnamed_addr constant [17 x i8] c"reinterpret_cast\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"signed\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"sizeof\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.84 = private unnamed_addr constant [12 x i8] c"static_cast\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"template\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"throw\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"try\00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c"typedef\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"typeid\00", align 1
@.str.94 = private unnamed_addr constant [9 x i8] c"typename\00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.96 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"using\00", align 1
@.str.98 = private unnamed_addr constant [8 x i8] c"virtual\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.100 = private unnamed_addr constant [9 x i8] c"volatile\00", align 1
@.str.101 = private unnamed_addr constant [8 x i8] c"wchar_t\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@.str.104 = private unnamed_addr constant [7 x i8] c"xor_eq\00", align 1
@.str.105 = private unnamed_addr constant [10 x i8] c"*Globals*\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.106 = private unnamed_addr constant [8 x i8] c"%s:%d: \00", align 1
@open_file.buffer = internal global i8* null, align 8
@open_file.buffer_size = internal global i32 0, align 4
@.str.107 = private unnamed_addr constant [12 x i8] c"cannot open\00", align 1
@.str.108 = private unnamed_addr constant [12 x i8] c"parse error\00", align 1
@.str.109 = private unnamed_addr constant [17 x i8] c"namespace_sp > 0\00", align 1
@.str.110 = private unnamed_addr constant [10 x i8] c"ebrowse.c\00", align 1
@__PRETTY_FUNCTION__.leave_namespace = private unnamed_addr constant [23 x i8] c"void leave_namespace()\00", align 1
@matching_regexp_buffer = internal global i8* null, align 8
@matching_regexp_end_buf = internal global i8* null, align 8
@operator_name.id_size = internal global i64 0, align 8
@operator_name.id = internal global i8* null, align 8
@.str.111 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.112 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@token_string.b = internal global [3 x i8] zeroinitializer, align 1
@.str.113 = private unnamed_addr constant [16 x i8] c"string constant\00", align 1
@.str.114 = private unnamed_addr constant [14 x i8] c"char constant\00", align 1
@.str.115 = private unnamed_addr constant [13 x i8] c"int constant\00", align 1
@.str.116 = private unnamed_addr constant [18 x i8] c"floating constant\00", align 1
@.str.117 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.118 = private unnamed_addr constant [4 x i8] c"<<=\00", align 1
@.str.119 = private unnamed_addr constant [4 x i8] c">>=\00", align 1
@.str.120 = private unnamed_addr constant [4 x i8] c"->*\00", align 1
@.str.121 = private unnamed_addr constant [11 x i8] c"identifier\00", align 1
@.str.122 = private unnamed_addr constant [3 x i8] c"/=\00", align 1
@.str.123 = private unnamed_addr constant [3 x i8] c"++\00", align 1
@.str.124 = private unnamed_addr constant [3 x i8] c"+=\00", align 1
@.str.125 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.126 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.127 = private unnamed_addr constant [3 x i8] c"-=\00", align 1
@.str.128 = private unnamed_addr constant [3 x i8] c"*=\00", align 1
@.str.129 = private unnamed_addr constant [3 x i8] c"%=\00", align 1
@.str.130 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.131 = private unnamed_addr constant [3 x i8] c"|=\00", align 1
@.str.132 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.133 = private unnamed_addr constant [3 x i8] c"&=\00", align 1
@.str.134 = private unnamed_addr constant [3 x i8] c"^=\00", align 1
@.str.135 = private unnamed_addr constant [3 x i8] c".*\00", align 1
@.str.136 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.137 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.138 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.139 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.140 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.141 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.142 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.143 = private unnamed_addr constant [10 x i8] c"signature\00", align 1
@.str.144 = private unnamed_addr constant [4 x i8] c"EOF\00", align 1
@.str.145 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@parse_qualified_param_ident_or_type.id = internal global i8* null, align 8
@parse_qualified_param_ident_or_type.id_size = internal global i32 0, align 4
@.str.146 = private unnamed_addr constant [16 x i8] c"(tk == (IDENT))\00", align 1
@__PRETTY_FUNCTION__.parse_qualified_param_ident_or_type = private unnamed_addr constant [50 x i8] c"void parse_qualified_param_ident_or_type(char **)\00", align 1
@.str.147 = private unnamed_addr constant [18 x i8] c"cls != ((void*)0)\00", align 1
@__PRETTY_FUNCTION__.add_member = private unnamed_addr constant [72 x i8] c"struct member *add_member(struct sym *, char *, int, int, unsigned int)\00", align 1
@.str.148 = private unnamed_addr constant [21 x i8] c"(\22%s\22 \22%s\22 \22%s\22 %d)\0A\00", align 1
@.str.149 = private unnamed_addr constant [3 x i8] c"<>\00", align 1
@.str.150 = private unnamed_addr constant [26 x i8] c"EOF in character constant\00", align 1
@.str.151 = private unnamed_addr constant [23 x i8] c"EOF in string constant\00", align 1
@.str.152 = private unnamed_addr constant [30 x i8] c"newline in character constant\00", align 1
@.str.153 = private unnamed_addr constant [27 x i8] c"newline in string constant\00", align 1
@.str.154 = private unnamed_addr constant [35 x i8] c"invalid token '..' ('...' assumed)\00", align 1
@.str.155 = private unnamed_addr constant [7 x i8] c"define\00", align 1
@read_line.buffer = internal global i8* null, align 8
@read_line.buffer_size = internal global i32 0, align 4
@.str.156 = private unnamed_addr constant [13 x i8] c"[ebrowse-hs \00", align 1
@.str.157 = private unnamed_addr constant [12 x i8] c"ebrowse 5.0\00", align 1
@.str.158 = private unnamed_addr constant [4 x i8] c" -s\00", align 1
@.str.159 = private unnamed_addr constant [4 x i8] c" -x\00", align 1
@.str.160 = private unnamed_addr constant [4 x i8] c" ()\00", align 1
@.str.161 = private unnamed_addr constant [13 x i8] c"[ebrowse-ts \00", align 1
@.str.162 = private unnamed_addr constant [13 x i8] c"[ebrowse-cs \00", align 1
@.str.163 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.164 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.165 = private unnamed_addr constant [13 x i8] c"[ebrowse-ms \00", align 1
@.str.166 = private unnamed_addr constant [4 x i8] c"%u \00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %any_inputfiles = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %rc = alloca i32, align 4
  %file = alloca i8*, align 8
  %fp76 = alloca %struct._IO_FILE*, align 8
  %file86 = alloca i8*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %any_inputfiles, align 4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8** @filename, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** @yyout, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %1 = load i32, i32* %argc.addr, align 4
  %2 = load i8**, i8*** %argv.addr, align 8
  %call = call i32 @getopt_long(i32 %1, i8** %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), %struct.option* getelementptr inbounds ([15 x %struct.option], [15 x %struct.option]* @options, i32 0, i32 0), i32* null) #6
  store i32 %call, i32* %i, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %i, align 4
  switch i32 %3, label %sw.epilog [
    i32 112, label %sw.bb
    i32 110, label %sw.bb.2
    i32 120, label %sw.bb.3
    i32 102, label %sw.bb.4
    i32 97, label %sw.bb.10
    i32 115, label %sw.bb.11
    i32 118, label %sw.bb.12
    i32 86, label %sw.bb.13
    i32 111, label %sw.bb.14
    i32 109, label %sw.bb.15
    i32 77, label %sw.bb.17
    i32 73, label %sw.bb.19
    i32 -2, label %sw.bb.20
    i32 -3, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %while.body
  %4 = load i8*, i8** @optarg, align 8
  %call1 = call i32 @atoi(i8* %4) #8
  store i32 %call1, i32* @info_position, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %while.body
  store i32 0, i32* @f_nested_classes, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %while.body
  store i32 0, i32* @f_regexps, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %while.body
  %5 = load i32, i32* @main.n_input_files, align 4
  %6 = load i32, i32* @main.input_filenames_size, align 4
  %cmp5 = icmp eq i32 %5, %6
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.4
  %7 = load i32, i32* @main.input_filenames_size, align 4
  %mul = mul nsw i32 2, %7
  %cmp6 = icmp sgt i32 10, %mul
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %8 = load i32, i32* @main.input_filenames_size, align 4
  %mul7 = mul nsw i32 2, %8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 10, %cond.true ], [ %mul7, %cond.false ]
  store i32 %cond, i32* @main.input_filenames_size, align 4
  %9 = load i8**, i8*** @main.input_filenames, align 8
  %10 = bitcast i8** %9 to i8*
  %11 = load i32, i32* @main.input_filenames_size, align 4
  %conv = sext i32 %11 to i64
  %call8 = call i8* @xrealloc(i8* %10, i64 %conv)
  %12 = bitcast i8* %call8 to i8**
  store i8** %12, i8*** @main.input_filenames, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %sw.bb.4
  %13 = load i8*, i8** @optarg, align 8
  %call9 = call i8* @xstrdup(i8* %13)
  %14 = load i32, i32* @main.n_input_files, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* @main.n_input_files, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load i8**, i8*** @main.input_filenames, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %15, i64 %idxprom
  store i8* %call9, i8** %arrayidx, align 8
  br label %sw.epilog

sw.bb.10:                                         ; preds = %while.body
  store i32 1, i32* @f_append, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %while.body
  store i32 0, i32* @f_structs, align 4
  br label %sw.epilog

sw.bb.12:                                         ; preds = %while.body
  store i32 1, i32* @f_verbose, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %while.body
  store i32 1, i32* @f_verbose, align 4
  store i32 1, i32* @f_very_verbose, align 4
  br label %sw.epilog

sw.bb.14:                                         ; preds = %while.body
  %16 = load i8*, i8** @optarg, align 8
  store i8* %16, i8** @main.out_filename, align 8
  br label %sw.epilog

sw.bb.15:                                         ; preds = %while.body
  %17 = load i8*, i8** @optarg, align 8
  %call16 = call i32 @atoi(i8* %17) #8
  store i32 %call16, i32* @min_regexp, align 4
  br label %sw.epilog

sw.bb.17:                                         ; preds = %while.body
  %18 = load i8*, i8** @optarg, align 8
  %call18 = call i32 @atoi(i8* %18) #8
  store i32 %call18, i32* @max_regexp, align 4
  br label %sw.epilog

sw.bb.19:                                         ; preds = %while.body
  %19 = load i8*, i8** @optarg, align 8
  call void @add_search_path(i8* %19)
  br label %sw.epilog

sw.bb.20:                                         ; preds = %while.body
  call void @usage(i32 0) #9
  unreachable

sw.bb.21:                                         ; preds = %while.body
  call void @version() #9
  unreachable

sw.epilog:                                        ; preds = %while.body, %sw.bb.19, %sw.bb.17, %sw.bb.15, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %if.end, %sw.bb.3, %sw.bb.2, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @init_scanner()
  call void @init_sym()
  %20 = load i8*, i8** @main.out_filename, align 8
  %21 = load i8, i8* %20, align 1
  %tobool = icmp ne i8 %21, 0
  br i1 %tobool, label %if.then.22, label %if.end.54

if.then.22:                                       ; preds = %while.end
  %22 = load i32, i32* @f_append, align 4
  %tobool23 = icmp ne i32 %22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.46

if.then.24:                                       ; preds = %if.then.22
  %23 = load i8*, i8** @main.out_filename, align 8
  %call25 = call %struct._IO_FILE* @fopen(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0))
  store %struct._IO_FILE* %call25, %struct._IO_FILE** %fp, align 8
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp26 = icmp eq %struct._IO_FILE* %24, null
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.then.24
  %25 = load i8*, i8** @main.out_filename, align 8
  call void @yyerror(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i32 0, i32 0), i8* %25)
  call void @exit(i32 1) #10
  unreachable

if.end.29:                                        ; preds = %if.then.24
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call30 = call i32 @fseek(%struct._IO_FILE* %26, i64 0, i32 2)
  store i32 %call30, i32* %rc, align 4
  %27 = load i32, i32* %rc, align 4
  %cmp31 = icmp eq i32 %27, -1
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.29
  %28 = load i8*, i8** @main.out_filename, align 8
  call void @yyerror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i32 0, i32 0), i8* %28)
  call void @exit(i32 1) #10
  unreachable

if.end.34:                                        ; preds = %if.end.29
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call35 = call i64 @ftell(%struct._IO_FILE* %29)
  %conv36 = trunc i64 %call35 to i32
  store i32 %conv36, i32* %rc, align 4
  %30 = load i32, i32* %rc, align 4
  %cmp37 = icmp eq i32 %30, -1
  br i1 %cmp37, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %if.end.34
  %31 = load i8*, i8** @main.out_filename, align 8
  call void @yyerror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i32 0, i32 0), i8* %31)
  call void @exit(i32 1) #10
  unreachable

if.else:                                          ; preds = %if.end.34
  %32 = load i32, i32* %rc, align 4
  %cmp40 = icmp eq i32 %32, 0
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.else
  %33 = load i8*, i8** @main.out_filename, align 8
  call void @yyerror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0), i8* %33)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.else
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call45 = call i32 @fclose(%struct._IO_FILE* %34)
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.44, %if.then.22
  %35 = load i8*, i8** @main.out_filename, align 8
  %36 = load i32, i32* @f_append, align 4
  %tobool47 = icmp ne i32 %36, 0
  %cond48 = select i1 %tobool47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0)
  %call49 = call %struct._IO_FILE* @fopen(i8* %35, i8* %cond48)
  store %struct._IO_FILE* %call49, %struct._IO_FILE** @yyout, align 8
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @yyout, align 8
  %cmp50 = icmp eq %struct._IO_FILE* %37, null
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.46
  %38 = load i8*, i8** @main.out_filename, align 8
  call void @yyerror(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i32 0, i32 0), i8* %38)
  call void @exit(i32 1) #10
  unreachable

if.end.53:                                        ; preds = %if.end.46
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %while.end
  br label %while.cond.55

while.cond.55:                                    ; preds = %while.body.58, %if.end.54
  %39 = load i32, i32* @optind, align 4
  %40 = load i32, i32* %argc.addr, align 4
  %cmp56 = icmp slt i32 %39, %40
  br i1 %cmp56, label %while.body.58, label %while.end.62

while.body.58:                                    ; preds = %while.cond.55
  %41 = load i32, i32* @optind, align 4
  %inc59 = add nsw i32 %41, 1
  store i32 %inc59, i32* @optind, align 4
  %idxprom60 = sext i32 %41 to i64
  %42 = load i8**, i8*** %argv.addr, align 8
  %arrayidx61 = getelementptr inbounds i8*, i8** %42, i64 %idxprom60
  %43 = load i8*, i8** %arrayidx61, align 8
  call void @process_file(i8* %43)
  store i32 1, i32* %any_inputfiles, align 4
  br label %while.cond.55

while.end.62:                                     ; preds = %while.cond.55
  %44 = load i32, i32* %any_inputfiles, align 4
  %tobool63 = icmp ne i32 %44, 0
  br i1 %tobool63, label %if.else.73, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.end.62
  %45 = load i32, i32* @main.n_input_files, align 4
  %cmp64 = icmp eq i32 %45, 0
  br i1 %cmp64, label %if.then.66, label %if.else.73

if.then.66:                                       ; preds = %land.lhs.true
  br label %while.cond.67

while.cond.67:                                    ; preds = %while.body.71, %if.then.66
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call68 = call i8* @read_line(%struct._IO_FILE* %46)
  store i8* %call68, i8** %file, align 8
  %cmp69 = icmp ne i8* %call68, null
  br i1 %cmp69, label %while.body.71, label %while.end.72

while.body.71:                                    ; preds = %while.cond.67
  %47 = load i8*, i8** %file, align 8
  call void @process_file(i8* %47)
  br label %while.cond.67

while.end.72:                                     ; preds = %while.cond.67
  br label %if.end.96

if.else.73:                                       ; preds = %land.lhs.true, %while.end.62
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.73
  %48 = load i32, i32* %i, align 4
  %49 = load i32, i32* @main.n_input_files, align 4
  %cmp74 = icmp slt i32 %48, %49
  br i1 %cmp74, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %50 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %50 to i64
  %51 = load i8**, i8*** @main.input_filenames, align 8
  %arrayidx78 = getelementptr inbounds i8*, i8** %51, i64 %idxprom77
  %52 = load i8*, i8** %arrayidx78, align 8
  %call79 = call %struct._IO_FILE* @fopen(i8* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0))
  store %struct._IO_FILE* %call79, %struct._IO_FILE** %fp76, align 8
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %fp76, align 8
  %cmp80 = icmp eq %struct._IO_FILE* %53, null
  br i1 %cmp80, label %if.then.82, label %if.else.85

if.then.82:                                       ; preds = %for.body
  %54 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %54 to i64
  %55 = load i8**, i8*** @main.input_filenames, align 8
  %arrayidx84 = getelementptr inbounds i8*, i8** %55, i64 %idxprom83
  %56 = load i8*, i8** %arrayidx84, align 8
  call void @yyerror(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i32 0, i32 0), i8* %56)
  br label %if.end.94

if.else.85:                                       ; preds = %for.body
  br label %while.cond.87

while.cond.87:                                    ; preds = %while.body.91, %if.else.85
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %fp76, align 8
  %call88 = call i8* @read_line(%struct._IO_FILE* %57)
  store i8* %call88, i8** %file86, align 8
  %cmp89 = icmp ne i8* %call88, null
  br i1 %cmp89, label %while.body.91, label %while.end.92

while.body.91:                                    ; preds = %while.cond.87
  %58 = load i8*, i8** %file86, align 8
  call void @process_file(i8* %58)
  br label %while.cond.87

while.end.92:                                     ; preds = %while.cond.87
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %fp76, align 8
  %call93 = call i32 @fclose(%struct._IO_FILE* %59)
  br label %if.end.94

if.end.94:                                        ; preds = %while.end.92, %if.then.82
  br label %for.inc

for.inc:                                          ; preds = %if.end.94
  %60 = load i32, i32* %i, align 4
  %inc95 = add nsw i32 %60, 1
  store i32 %inc95, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.96

if.end.96:                                        ; preds = %for.end, %while.end.72
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @yyout, align 8
  call void @dump_roots(%struct._IO_FILE* %61)
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @yyout, align 8
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %cmp97 = icmp ne %struct._IO_FILE* %62, %63
  br i1 %cmp97, label %if.then.99, label %if.end.101

if.then.99:                                       ; preds = %if.end.96
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @yyout, align 8
  %call100 = call i32 @fclose(%struct._IO_FILE* %64)
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.99, %if.end.96
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

; Function Attrs: nounwind uwtable
define internal i8* @xrealloc(i8* %p, i64 %sz) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %sz.addr = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  store i64 %sz, i64* %sz.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i64, i64* %sz.addr, align 8
  %call = call i8* @realloc(i8* %0, i64 %1) #6
  store i8* %call, i8** %p.addr, align 8
  %2 = load i8*, i8** %p.addr, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @yyerror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i8* null)
  call void @exit(i32 1) #10
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %p.addr, align 8
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define internal i8* @xstrdup(i8* %s) #0 {
entry:
  %retval = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %1) #8
  %add = add i64 %call, 1
  %call1 = call i8* @xmalloc(i64 %add)
  %2 = load i8*, i8** %s.addr, align 8
  %call2 = call i8* @strcpy(i8* %call1, i8* %2) #6
  store i8* %call2, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %s.addr, align 8
  store i8* %3, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i8*, i8** %retval
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define internal void @add_search_path(i8* %path_list) #0 {
entry:
  %path_list.addr = alloca i8*, align 8
  %start = alloca i8*, align 8
  %p = alloca %struct.search_path*, align 8
  store i8* %path_list, i8** %path_list.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end.23, %entry
  %0 = load i8*, i8** %path_list.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end.24

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %path_list.addr, align 8
  store i8* %2, i8** %start, align 8
  br label %while.cond.1

while.cond.1:                                     ; preds = %while.body.5, %while.body
  %3 = load i8*, i8** %path_list.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %tobool2 = icmp ne i32 %conv, 0
  br i1 %tobool2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.1
  %5 = load i8*, i8** %path_list.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv3 = sext i8 %6 to i32
  %cmp = icmp ne i32 %conv3, 58
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.1
  %7 = phi i1 [ false, %while.cond.1 ], [ %cmp, %land.rhs ]
  br i1 %7, label %while.body.5, label %while.end

while.body.5:                                     ; preds = %land.end
  %8 = load i8*, i8** %path_list.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %path_list.addr, align 8
  br label %while.cond.1

while.end:                                        ; preds = %land.end
  %call = call i8* @xmalloc(i64 16)
  %9 = bitcast i8* %call to %struct.search_path*
  store %struct.search_path* %9, %struct.search_path** %p, align 8
  %10 = load i8*, i8** %path_list.addr, align 8
  %11 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 1
  %call6 = call i8* @xmalloc(i64 %add)
  %12 = load %struct.search_path*, %struct.search_path** %p, align 8
  %path = getelementptr inbounds %struct.search_path, %struct.search_path* %12, i32 0, i32 0
  store i8* %call6, i8** %path, align 8
  %13 = load %struct.search_path*, %struct.search_path** %p, align 8
  %path7 = getelementptr inbounds %struct.search_path, %struct.search_path* %13, i32 0, i32 0
  %14 = load i8*, i8** %path7, align 8
  %15 = load i8*, i8** %start, align 8
  %16 = load i8*, i8** %path_list.addr, align 8
  %17 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast8 = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast9 = ptrtoint i8* %17 to i64
  %sub.ptr.sub10 = sub i64 %sub.ptr.lhs.cast8, %sub.ptr.rhs.cast9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 %sub.ptr.sub10, i32 1, i1 false)
  %18 = load i8*, i8** %path_list.addr, align 8
  %19 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast11 = ptrtoint i8* %18 to i64
  %sub.ptr.rhs.cast12 = ptrtoint i8* %19 to i64
  %sub.ptr.sub13 = sub i64 %sub.ptr.lhs.cast11, %sub.ptr.rhs.cast12
  %20 = load %struct.search_path*, %struct.search_path** %p, align 8
  %path14 = getelementptr inbounds %struct.search_path, %struct.search_path* %20, i32 0, i32 0
  %21 = load i8*, i8** %path14, align 8
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 %sub.ptr.sub13
  store i8 0, i8* %arrayidx, align 1
  %22 = load %struct.search_path*, %struct.search_path** %p, align 8
  %next = getelementptr inbounds %struct.search_path, %struct.search_path* %22, i32 0, i32 1
  store %struct.search_path* null, %struct.search_path** %next, align 8
  %23 = load %struct.search_path*, %struct.search_path** @search_path_tail, align 8
  %tobool15 = icmp ne %struct.search_path* %23, null
  br i1 %tobool15, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %24 = load %struct.search_path*, %struct.search_path** %p, align 8
  %25 = load %struct.search_path*, %struct.search_path** @search_path_tail, align 8
  %next16 = getelementptr inbounds %struct.search_path, %struct.search_path* %25, i32 0, i32 1
  store %struct.search_path* %24, %struct.search_path** %next16, align 8
  %26 = load %struct.search_path*, %struct.search_path** %p, align 8
  store %struct.search_path* %26, %struct.search_path** @search_path_tail, align 8
  br label %if.end

if.else:                                          ; preds = %while.end
  %27 = load %struct.search_path*, %struct.search_path** %p, align 8
  store %struct.search_path* %27, %struct.search_path** @search_path_tail, align 8
  store %struct.search_path* %27, %struct.search_path** @search_path, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond.17

while.cond.17:                                    ; preds = %while.body.21, %if.end
  %28 = load i8*, i8** %path_list.addr, align 8
  %29 = load i8, i8* %28, align 1
  %conv18 = sext i8 %29 to i32
  %cmp19 = icmp eq i32 %conv18, 58
  br i1 %cmp19, label %while.body.21, label %while.end.23

while.body.21:                                    ; preds = %while.cond.17
  %30 = load i8*, i8** %path_list.addr, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr22, i8** %path_list.addr, align 8
  br label %while.cond.17

while.end.23:                                     ; preds = %while.cond.17
  br label %while.cond

while.end.24:                                     ; preds = %while.cond
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define internal void @usage(i32 %error) #3 {
entry:
  %error.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %error, i32* %error.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* @usage_message, i32 0, i64 %idxprom
  %2 = load i8*, i8** %arrayidx, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fputs(i8* %2, %struct._IO_FILE* %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %error.addr, align 4
  %tobool = icmp ne i32 %5, 0
  %cond = select i1 %tobool, i32 1, i32 0
  call void @exit(i32 %cond) #10
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define internal void @version() #3 {
entry:
  %emacs_copyright = alloca [50 x i8], align 16
  %0 = bitcast [50 x i8]* %emacs_copyright to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @version.emacs_copyright, i32 0, i32 0), i64 50, i32 16, i1 false)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0))
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %emacs_copyright, i32 0, i32 0
  %call1 = call i32 @puts(i8* %arraydecay)
  %call2 = call i32 @puts(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.31, i32 0, i32 0))
  call void @exit(i32 0) #10
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init_scanner() #0 {
entry:
  %i = alloca i32, align 4
  store i64 102401, i64* @inbuffer_size, align 8
  %0 = load i64, i64* @inbuffer_size, align 8
  %call = call i8* @xmalloc(i64 %0)
  store i8* %call, i8** @in, align 8
  store i8* %call, i8** @inbuffer, align 8
  store i32 1, i32* @yyline, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %conv = sext i32 %1 to i64
  %cmp = icmp ult i64 %conv, 255
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %cmp2 = icmp eq i32 %2, 95
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %call4 = call i16** @__ctype_b_loc() #11
  %4 = load i16*, i16** %call4, align 8
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 %idxprom
  %5 = load i16, i16* %arrayidx, align 2
  %conv5 = zext i16 %5 to i32
  %and = and i32 %conv5, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %6 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [255 x i8], [255 x i8]* @is_ident, i32 0, i64 %idxprom6
  store i8 1, i8* %arrayidx7, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %7 = load i32, i32* %i, align 4
  %cmp8 = icmp sge i32 %7, 48
  br i1 %cmp8, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %cmp10 = icmp sle i32 %8, 57
  br i1 %cmp10, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %land.lhs.true
  %9 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %9 to i64
  %arrayidx14 = getelementptr inbounds [255 x i8], [255 x i8]* @is_digit, i32 0, i64 %idxprom13
  store i8 1, i8* %arrayidx14, align 1
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %land.lhs.true, %if.end
  %10 = load i32, i32* %i, align 4
  %cmp16 = icmp eq i32 %10, 32
  br i1 %cmp16, label %if.then.27, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %if.end.15
  %11 = load i32, i32* %i, align 4
  %cmp19 = icmp eq i32 %11, 9
  br i1 %cmp19, label %if.then.27, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.18
  %12 = load i32, i32* %i, align 4
  %cmp22 = icmp eq i32 %12, 12
  br i1 %cmp22, label %if.then.27, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.21
  %13 = load i32, i32* %i, align 4
  %cmp25 = icmp eq i32 %13, 11
  br i1 %cmp25, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %lor.lhs.false.24, %lor.lhs.false.21, %lor.lhs.false.18, %if.end.15
  %14 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %14 to i64
  %arrayidx29 = getelementptr inbounds [255 x i8], [255 x i8]* @is_white, i32 0, i64 %idxprom28
  store i8 1, i8* %arrayidx29, align 1
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %lor.lhs.false.24
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @insert_keyword(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i32 275)
  call void @insert_keyword(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 276)
  call void @insert_keyword(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), i32 286)
  call void @insert_keyword(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i32 287)
  call void @insert_keyword(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 38)
  call void @insert_keyword(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 124)
  call void @insert_keyword(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 335)
  call void @insert_keyword(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 288)
  call void @insert_keyword(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i32 289)
  call void @insert_keyword(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i32 290)
  call void @insert_keyword(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i32 291)
  call void @insert_keyword(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i32 292)
  call void @insert_keyword(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 126)
  call void @insert_keyword(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i32 293)
  call void @insert_keyword(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i32 342)
  call void @insert_keyword(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), i32 294)
  call void @insert_keyword(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i32 295)
  call void @insert_keyword(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i32 296)
  call void @insert_keyword(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), i32 297)
  call void @insert_keyword(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 298)
  call void @insert_keyword(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i32 0, i32 0), i32 343)
  call void @insert_keyword(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i32 299)
  call void @insert_keyword(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i32 300)
  call void @insert_keyword(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), i32 340)
  call void @insert_keyword(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i32 301)
  call void @insert_keyword(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i32 337)
  call void @insert_keyword(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), i32 302)
  call void @insert_keyword(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0), i32 303)
  call void @insert_keyword(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i32 304)
  call void @insert_keyword(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), i32 305)
  call void @insert_keyword(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i32 0, i32 0), i32 306)
  call void @insert_keyword(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), i32 307)
  call void @insert_keyword(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i32 0, i32 0), i32 308)
  call void @insert_keyword(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i32 309)
  call void @insert_keyword(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i32 0, i32 0), i32 334)
  call void @insert_keyword(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), i32 339)
  call void @insert_keyword(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i32 310)
  call void @insert_keyword(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i32 0, i32 0), i32 33)
  call void @insert_keyword(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), i32 281)
  call void @insert_keyword(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i32 0, i32 0), i32 311)
  call void @insert_keyword(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.72, i32 0, i32 0), i32 273)
  call void @insert_keyword(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0), i32 274)
  call void @insert_keyword(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i32 0, i32 0), i32 312)
  call void @insert_keyword(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.75, i32 0, i32 0), i32 313)
  call void @insert_keyword(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0), i32 314)
  call void @insert_keyword(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.77, i32 0, i32 0), i32 315)
  call void @insert_keyword(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.78, i32 0, i32 0), i32 344)
  call void @insert_keyword(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i32 0, i32 0), i32 316)
  call void @insert_keyword(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i32 0, i32 0), i32 317)
  call void @insert_keyword(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i32 0, i32 0), i32 318)
  call void @insert_keyword(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0), i32 319)
  call void @insert_keyword(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i32 0, i32 0), i32 320)
  call void @insert_keyword(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.84, i32 0, i32 0), i32 345)
  call void @insert_keyword(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i32 0, i32 0), i32 321)
  call void @insert_keyword(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i32 0, i32 0), i32 322)
  call void @insert_keyword(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.87, i32 0, i32 0), i32 323)
  call void @insert_keyword(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i32 0, i32 0), i32 324)
  call void @insert_keyword(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i32 0, i32 0), i32 325)
  call void @insert_keyword(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0), i32 336)
  call void @insert_keyword(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91, i32 0, i32 0), i32 326)
  call void @insert_keyword(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.92, i32 0, i32 0), i32 327)
  call void @insert_keyword(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i32 0, i32 0), i32 346)
  call void @insert_keyword(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.94, i32 0, i32 0), i32 341)
  call void @insert_keyword(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.95, i32 0, i32 0), i32 328)
  call void @insert_keyword(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.96, i32 0, i32 0), i32 329)
  call void @insert_keyword(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.97, i32 0, i32 0), i32 347)
  call void @insert_keyword(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.98, i32 0, i32 0), i32 330)
  call void @insert_keyword(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.99, i32 0, i32 0), i32 331)
  call void @insert_keyword(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.100, i32 0, i32 0), i32 332)
  call void @insert_keyword(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.101, i32 0, i32 0), i32 348)
  call void @insert_keyword(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.102, i32 0, i32 0), i32 333)
  call void @insert_keyword(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.103, i32 0, i32 0), i32 94)
  call void @insert_keyword(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i32 0, i32 0), i32 277)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init_sym() #0 {
entry:
  %call = call %struct.sym* @add_sym(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.105, i32 0, i32 0), %struct.sym* null)
  store %struct.sym* %call, %struct.sym** @global_symbols, align 8
  ret void
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @yyerror(i8* %format, i8* %s) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  store i8* %format, i8** %format.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** @filename, align 8
  %2 = load i32, i32* @yyline, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.106, i32 0, i32 0), i8* %1, i32 %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %format.addr, align 8
  %5 = load i8*, i8** %s.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* %4, i8* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %6)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #4

declare i64 @ftell(%struct._IO_FILE*) #4

declare i32 @fclose(%struct._IO_FILE*) #4

; Function Attrs: nounwind uwtable
define internal void @process_file(i8* %file) #0 {
entry:
  %file.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %nread = alloca i64, align 8
  %nbytes = alloca i64, align 8
  store i8* %file, i8** %file.addr, align 8
  %0 = load i8*, i8** %file.addr, align 8
  %call = call %struct._IO_FILE* @open_file(i8* %0)
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.then, label %if.end.21

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @f_very_verbose, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %3 = load i8*, i8** @filename, align 8
  %call3 = call i32 @puts(i8* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call4 = call i32 @fflush(%struct._IO_FILE* %4)
  br label %if.end.9

if.else:                                          ; preds = %if.then
  %5 = load i32, i32* @f_verbose, align 4
  %tobool5 = icmp ne i32 %5, 0
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  %call7 = call i32 @putchar(i32 46)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call8 = call i32 @fflush(%struct._IO_FILE* %6)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then.2
  store i64 0, i64* %nread, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.18, %if.end.9
  %7 = load i64, i64* %nread, align 8
  %add = add i64 %7, 102400
  %8 = load i64, i64* @inbuffer_size, align 8
  %cmp = icmp uge i64 %add, %8
  br i1 %cmp, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %for.cond
  %9 = load i64, i64* %nread, align 8
  %add11 = add i64 %9, 102400
  %add12 = add i64 %add11, 1
  store i64 %add12, i64* @inbuffer_size, align 8
  %10 = load i8*, i8** @inbuffer, align 8
  %11 = load i64, i64* @inbuffer_size, align 8
  %call13 = call i8* @xrealloc(i8* %10, i64 %11)
  store i8* %call13, i8** @inbuffer, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.10, %for.cond
  %12 = load i8*, i8** @inbuffer, align 8
  %13 = load i64, i64* %nread, align 8
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %13
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call15 = call i64 @fread(i8* %add.ptr, i64 1, i64 102400, %struct._IO_FILE* %14)
  store i64 %call15, i64* %nbytes, align 8
  %15 = load i64, i64* %nbytes, align 8
  %cmp16 = icmp eq i64 %15, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  br label %for.end

if.end.18:                                        ; preds = %if.end.14
  %16 = load i64, i64* %nbytes, align 8
  %17 = load i64, i64* %nread, align 8
  %add19 = add i64 %17, %16
  store i64 %add19, i64* %nread, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.17
  %18 = load i64, i64* %nread, align 8
  %19 = load i8*, i8** @inbuffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 %18
  store i8 0, i8* %arrayidx, align 1
  call void @re_init_scanner()
  call void @re_init_parser()
  call void @yyparse()
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call20 = call i32 @fclose(%struct._IO_FILE* %20)
  br label %if.end.21

if.end.21:                                        ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @read_line(%struct._IO_FILE* %fp) #0 {
entry:
  %retval = alloca i8*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %0)
  store i32 %call, i32* %c, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load i32, i32* %c, align 4
  %cmp1 = icmp ne i32 %1, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %2 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* @read_line.buffer_size, align 4
  %cmp2 = icmp sge i32 %3, %4
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load i32, i32* @read_line.buffer_size, align 4
  %mul = mul nsw i32 %5, 2
  %cmp3 = icmp sgt i32 100, %mul
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %6 = load i32, i32* @read_line.buffer_size, align 4
  %mul4 = mul nsw i32 %6, 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 100, %cond.true ], [ %mul4, %cond.false ]
  store i32 %cond, i32* @read_line.buffer_size, align 4
  %7 = load i8*, i8** @read_line.buffer, align 8
  %8 = load i32, i32* @read_line.buffer_size, align 4
  %conv = sext i32 %8 to i64
  %call5 = call i8* @xrealloc(i8* %7, i64 %conv)
  store i8* %call5, i8** @read_line.buffer, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %while.body
  %9 = load i32, i32* %c, align 4
  %conv6 = trunc i32 %9 to i8
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i8*, i8** @read_line.buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom
  store i8 %conv6, i8* %arrayidx, align 1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %12 = load i32, i32* %c, align 4
  %cmp7 = icmp eq i32 %12, -1
  br i1 %cmp7, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %while.end
  %13 = load i32, i32* %i, align 4
  %cmp9 = icmp eq i32 %13, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %land.lhs.true
  store i8* null, i8** %retval
  br label %return

if.end.12:                                        ; preds = %land.lhs.true, %while.end
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* @read_line.buffer_size, align 4
  %cmp13 = icmp eq i32 %14, %15
  br i1 %cmp13, label %if.then.15, label %if.end.26

if.then.15:                                       ; preds = %if.end.12
  %16 = load i32, i32* @read_line.buffer_size, align 4
  %mul16 = mul nsw i32 %16, 2
  %cmp17 = icmp sgt i32 100, %mul16
  br i1 %cmp17, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %if.then.15
  br label %cond.end.22

cond.false.20:                                    ; preds = %if.then.15
  %17 = load i32, i32* @read_line.buffer_size, align 4
  %mul21 = mul nsw i32 %17, 2
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.20, %cond.true.19
  %cond23 = phi i32 [ 100, %cond.true.19 ], [ %mul21, %cond.false.20 ]
  store i32 %cond23, i32* @read_line.buffer_size, align 4
  %18 = load i8*, i8** @read_line.buffer, align 8
  %19 = load i32, i32* @read_line.buffer_size, align 4
  %conv24 = sext i32 %19 to i64
  %call25 = call i8* @xrealloc(i8* %18, i64 %conv24)
  store i8* %call25, i8** @read_line.buffer, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %cond.end.22, %if.end.12
  %20 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %20 to i64
  %21 = load i8*, i8** @read_line.buffer, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %21, i64 %idxprom27
  store i8 0, i8* %arrayidx28, align 1
  %22 = load i32, i32* %i, align 4
  %cmp29 = icmp sgt i32 %22, 0
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.41

land.lhs.true.31:                                 ; preds = %if.end.26
  %23 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %23, 1
  %idxprom32 = sext i32 %sub to i64
  %24 = load i8*, i8** @read_line.buffer, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %24, i64 %idxprom32
  %25 = load i8, i8* %arrayidx33, align 1
  %conv34 = sext i8 %25 to i32
  %cmp35 = icmp eq i32 %conv34, 13
  br i1 %cmp35, label %if.then.37, label %if.end.41

if.then.37:                                       ; preds = %land.lhs.true.31
  %26 = load i32, i32* %i, align 4
  %sub38 = sub nsw i32 %26, 1
  %idxprom39 = sext i32 %sub38 to i64
  %27 = load i8*, i8** @read_line.buffer, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %27, i64 %idxprom39
  store i8 0, i8* %arrayidx40, align 1
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.37, %land.lhs.true.31, %if.end.26
  %28 = load i8*, i8** @read_line.buffer, align 8
  store i8* %28, i8** %retval
  br label %return

return:                                           ; preds = %if.end.41, %if.then.11
  %29 = load i8*, i8** %retval
  ret i8* %29
}

; Function Attrs: nounwind uwtable
define internal void @dump_roots(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %r = alloca %struct.sym*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 0, i32* %n, align 4
  %0 = load i32, i32* @f_append, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end.13, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.156, i32 0, i32 0), %struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @putstr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.157, i32 0, i32 0), %struct._IO_FILE* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i32 @_IO_putc(i32 34, %struct._IO_FILE* %3)
  %4 = load i32, i32* @f_structs, align 4
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.158, i32 0, i32 0), %struct._IO_FILE* %5)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %6 = load i32, i32* @f_regexps, align 4
  %tobool5 = icmp ne i32 %6, 0
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call7 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.159, i32 0, i32 0), %struct._IO_FILE* %7)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call9 = call i32 @_IO_putc(i32 34, %struct._IO_FILE* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call10 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.160, i32 0, i32 0), %struct._IO_FILE* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call11 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.160, i32 0, i32 0), %struct._IO_FILE* %10)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call12 = call i32 @_IO_putc(i32 93, %struct._IO_FILE* %11)
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.8, %entry
  call void @mark_inherited_virtual()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.23, %if.end.13
  %12 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %12, 1001
  br i1 %cmp, label %for.body, label %for.end.24

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds [1001 x %struct.sym*], [1001 x %struct.sym*]* @class_table, i32 0, i64 %idxprom
  %14 = load %struct.sym*, %struct.sym** %arrayidx, align 8
  store %struct.sym* %14, %struct.sym** %r, align 8
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %for.body
  %15 = load %struct.sym*, %struct.sym** %r, align 8
  %tobool15 = icmp ne %struct.sym* %15, null
  br i1 %tobool15, label %for.body.16, label %for.end

for.body.16:                                      ; preds = %for.cond.14
  %16 = load %struct.sym*, %struct.sym** %r, align 8
  %supers = getelementptr inbounds %struct.sym, %struct.sym* %16, i32 0, i32 4
  %17 = load %struct.link*, %struct.link** %supers, align 8
  %tobool17 = icmp ne %struct.link* %17, null
  br i1 %tobool17, label %if.end.22, label %if.then.18

if.then.18:                                       ; preds = %for.body.16
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call19 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.161, i32 0, i32 0), %struct._IO_FILE* %18)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %20 = load %struct.sym*, %struct.sym** %r, align 8
  %call20 = call i32 @dump_tree(%struct._IO_FILE* %19, %struct.sym* %20)
  %21 = load i32, i32* %n, align 4
  %add = add nsw i32 %21, %call20
  store i32 %add, i32* %n, align 4
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call21 = call i32 @_IO_putc(i32 93, %struct._IO_FILE* %22)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.18, %for.body.16
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %23 = load %struct.sym*, %struct.sym** %r, align 8
  %next = getelementptr inbounds %struct.sym, %struct.sym* %23, i32 0, i32 2
  %24 = load %struct.sym*, %struct.sym** %next, align 8
  store %struct.sym* %24, %struct.sym** %r, align 8
  br label %for.cond.14

for.end:                                          ; preds = %for.cond.14
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.end
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.24:                                       ; preds = %for.cond
  %26 = load i32, i32* @f_verbose, align 4
  %tobool25 = icmp ne i32 %26, 0
  br i1 %tobool25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %for.end.24
  %call27 = call i32 @putchar(i32 10)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %for.end.24
  ret void
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @xmalloc(i64 %nbytes) #0 {
entry:
  %nbytes.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  store i64 %nbytes, i64* %nbytes.addr, align 8
  %0 = load i64, i64* %nbytes.addr, align 8
  %call = call noalias i8* @malloc(i64 %0) #6
  store i8* %call, i8** %p, align 8
  %1 = load i8*, i8** %p, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @yyerror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i8* null)
  call void @exit(i32 1) #10
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %p, align 8
  ret i8* %2
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

declare i32 @fputs(i8*, %struct._IO_FILE*) #4

declare i32 @printf(i8*, ...) #4

declare i32 @puts(i8*) #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #7

; Function Attrs: nounwind uwtable
define internal void @insert_keyword(i8* %name, i32 %tkv) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %tkv.addr = alloca i32, align 4
  %s = alloca i8*, align 8
  %h = alloca i32, align 4
  %k = alloca %struct.kw*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %tkv, i32* %tkv.addr, align 4
  store i32 0, i32* %h, align 4
  %call = call i8* @xmalloc(i64 24)
  %0 = bitcast i8* %call to %struct.kw*
  store %struct.kw* %0, %struct.kw** %k, align 8
  %1 = load i8*, i8** %name.addr, align 8
  store i8* %1, i8** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8*, i8** %s, align 8
  %3 = load i8, i8* %2, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %h, align 4
  %shl = shl i32 %4, 1
  %5 = load i8*, i8** %s, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %xor = xor i32 %shl, %conv
  store i32 %xor, i32* %h, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %h, align 4
  %rem = urem i32 %8, 1001
  store i32 %rem, i32* %h, align 4
  %9 = load i8*, i8** %name.addr, align 8
  %10 = load %struct.kw*, %struct.kw** %k, align 8
  %name1 = getelementptr inbounds %struct.kw, %struct.kw* %10, i32 0, i32 0
  store i8* %9, i8** %name1, align 8
  %11 = load i32, i32* %tkv.addr, align 4
  %12 = load %struct.kw*, %struct.kw** %k, align 8
  %tk = getelementptr inbounds %struct.kw, %struct.kw* %12, i32 0, i32 1
  store i32 %11, i32* %tk, align 4
  %13 = load i32, i32* %h, align 4
  %idxprom = zext i32 %13 to i64
  %arrayidx = getelementptr inbounds [1001 x %struct.kw*], [1001 x %struct.kw*]* @keyword_table, i32 0, i64 %idxprom
  %14 = load %struct.kw*, %struct.kw** %arrayidx, align 8
  %15 = load %struct.kw*, %struct.kw** %k, align 8
  %next = getelementptr inbounds %struct.kw, %struct.kw* %15, i32 0, i32 2
  store %struct.kw* %14, %struct.kw** %next, align 8
  %16 = load %struct.kw*, %struct.kw** %k, align 8
  %17 = load i32, i32* %h, align 4
  %idxprom2 = zext i32 %17 to i64
  %arrayidx3 = getelementptr inbounds [1001 x %struct.kw*], [1001 x %struct.kw*]* @keyword_table, i32 0, i64 %idxprom2
  store %struct.kw* %16, %struct.kw** %arrayidx3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.sym* @add_sym(i8* %name, %struct.sym* %nested_in_class) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %nested_in_class.addr = alloca %struct.sym*, align 8
  %sym = alloca %struct.sym*, align 8
  %h = alloca i32, align 4
  %s = alloca i8*, align 8
  %scope = alloca %struct.sym*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.sym* %nested_in_class, %struct.sym** %nested_in_class.addr, align 8
  %0 = load %struct.sym*, %struct.sym** %nested_in_class.addr, align 8
  %tobool = icmp ne %struct.sym* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.sym*, %struct.sym** %nested_in_class.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct.sym*, %struct.sym** @current_namespace, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sym* [ %1, %cond.true ], [ %2, %cond.false ]
  store %struct.sym* %cond, %struct.sym** %scope, align 8
  %3 = load i8*, i8** %name.addr, align 8
  store i8* %3, i8** %s, align 8
  store i32 0, i32* %h, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %4 = load i8*, i8** %s, align 8
  %5 = load i8, i8* %4, align 1
  %tobool1 = icmp ne i8 %5, 0
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %h, align 4
  %shl = shl i32 %6, 1
  %7 = load i8*, i8** %s, align 8
  %8 = load i8, i8* %7, align 1
  %conv = sext i8 %8 to i32
  %xor = xor i32 %shl, %conv
  store i32 %xor, i32* %h, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %h, align 4
  %rem = urem i32 %10, 1001
  store i32 %rem, i32* %h, align 4
  %11 = load i32, i32* %h, align 4
  %idxprom = zext i32 %11 to i64
  %arrayidx = getelementptr inbounds [1001 x %struct.sym*], [1001 x %struct.sym*]* @class_table, i32 0, i64 %idxprom
  %12 = load %struct.sym*, %struct.sym** %arrayidx, align 8
  store %struct.sym* %12, %struct.sym** %sym, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.22, %for.end
  %13 = load %struct.sym*, %struct.sym** %sym, align 8
  %tobool3 = icmp ne %struct.sym* %13, null
  br i1 %tobool3, label %for.body.4, label %for.end.23

for.body.4:                                       ; preds = %for.cond.2
  %14 = load i8*, i8** %name.addr, align 8
  %15 = load %struct.sym*, %struct.sym** %sym, align 8
  %name5 = getelementptr inbounds %struct.sym, %struct.sym* %15, i32 0, i32 16
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %name5, i32 0, i32 0
  %call = call zeroext i1 @streq(i8* %14, i8* %arraydecay)
  br i1 %call, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.4
  %16 = load %struct.sym*, %struct.sym** %sym, align 8
  %namesp = getelementptr inbounds %struct.sym, %struct.sym* %16, i32 0, i32 15
  %17 = load %struct.sym*, %struct.sym** %namesp, align 8
  %tobool7 = icmp ne %struct.sym* %17, null
  br i1 %tobool7, label %lor.lhs.false, label %land.lhs.true.8

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %18 = load %struct.sym*, %struct.sym** %scope, align 8
  %tobool9 = icmp ne %struct.sym* %18, null
  br i1 %tobool9, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true.8, %land.lhs.true
  %19 = load %struct.sym*, %struct.sym** %sym, align 8
  %namesp10 = getelementptr inbounds %struct.sym, %struct.sym* %19, i32 0, i32 15
  %20 = load %struct.sym*, %struct.sym** %namesp10, align 8
  %tobool11 = icmp ne %struct.sym* %20, null
  br i1 %tobool11, label %land.lhs.true.12, label %if.end

land.lhs.true.12:                                 ; preds = %lor.lhs.false
  %21 = load %struct.sym*, %struct.sym** %scope, align 8
  %tobool13 = icmp ne %struct.sym* %21, null
  br i1 %tobool13, label %land.lhs.true.14, label %if.end

land.lhs.true.14:                                 ; preds = %land.lhs.true.12
  %22 = load %struct.sym*, %struct.sym** %sym, align 8
  %namesp15 = getelementptr inbounds %struct.sym, %struct.sym* %22, i32 0, i32 15
  %23 = load %struct.sym*, %struct.sym** %namesp15, align 8
  %name16 = getelementptr inbounds %struct.sym, %struct.sym* %23, i32 0, i32 16
  %arraydecay17 = getelementptr inbounds [0 x i8], [0 x i8]* %name16, i32 0, i32 0
  %24 = load %struct.sym*, %struct.sym** %scope, align 8
  %name18 = getelementptr inbounds %struct.sym, %struct.sym* %24, i32 0, i32 16
  %arraydecay19 = getelementptr inbounds [0 x i8], [0 x i8]* %name18, i32 0, i32 0
  %call20 = call zeroext i1 @streq(i8* %arraydecay17, i8* %arraydecay19)
  br i1 %call20, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.14, %land.lhs.true.8
  br label %for.end.23

if.end:                                           ; preds = %land.lhs.true.14, %land.lhs.true.12, %lor.lhs.false, %for.body.4
  br label %for.inc.22

for.inc.22:                                       ; preds = %if.end
  %25 = load %struct.sym*, %struct.sym** %sym, align 8
  %next = getelementptr inbounds %struct.sym, %struct.sym* %25, i32 0, i32 2
  %26 = load %struct.sym*, %struct.sym** %next, align 8
  store %struct.sym* %26, %struct.sym** %sym, align 8
  br label %for.cond.2

for.end.23:                                       ; preds = %if.then, %for.cond.2
  %27 = load %struct.sym*, %struct.sym** %sym, align 8
  %cmp = icmp eq %struct.sym* %27, null
  br i1 %cmp, label %if.then.25, label %if.end.43

if.then.25:                                       ; preds = %for.end.23
  %28 = load i32, i32* @f_very_verbose, align 4
  %tobool26 = icmp ne i32 %28, 0
  br i1 %tobool26, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %if.then.25
  %call28 = call i32 @putchar(i32 9)
  %29 = load i8*, i8** %name.addr, align 8
  %call29 = call i32 @puts(i8* %29)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %if.then.25
  %30 = load i8*, i8** %name.addr, align 8
  %call31 = call i64 @strlen(i8* %30) #8
  %add = add i64 120, %call31
  %add32 = add i64 %add, 1
  %call33 = call i8* @xmalloc(i64 %add32)
  %31 = bitcast i8* %call33 to %struct.sym*
  store %struct.sym* %31, %struct.sym** %sym, align 8
  %32 = load %struct.sym*, %struct.sym** %sym, align 8
  %33 = bitcast %struct.sym* %32 to i8*
  call void @llvm.memset.p0i8.i64(i8* %33, i8 0, i64 120, i32 8, i1 false)
  %34 = load %struct.sym*, %struct.sym** %sym, align 8
  %name34 = getelementptr inbounds %struct.sym, %struct.sym* %34, i32 0, i32 16
  %arraydecay35 = getelementptr inbounds [0 x i8], [0 x i8]* %name34, i32 0, i32 0
  %35 = load i8*, i8** %name.addr, align 8
  %call36 = call i8* @strcpy(i8* %arraydecay35, i8* %35) #6
  %36 = load %struct.sym*, %struct.sym** %scope, align 8
  %37 = load %struct.sym*, %struct.sym** %sym, align 8
  %namesp37 = getelementptr inbounds %struct.sym, %struct.sym* %37, i32 0, i32 15
  store %struct.sym* %36, %struct.sym** %namesp37, align 8
  %38 = load i32, i32* %h, align 4
  %idxprom38 = zext i32 %38 to i64
  %arrayidx39 = getelementptr inbounds [1001 x %struct.sym*], [1001 x %struct.sym*]* @class_table, i32 0, i64 %idxprom38
  %39 = load %struct.sym*, %struct.sym** %arrayidx39, align 8
  %40 = load %struct.sym*, %struct.sym** %sym, align 8
  %next40 = getelementptr inbounds %struct.sym, %struct.sym* %40, i32 0, i32 2
  store %struct.sym* %39, %struct.sym** %next40, align 8
  %41 = load %struct.sym*, %struct.sym** %sym, align 8
  %42 = load i32, i32* %h, align 4
  %idxprom41 = zext i32 %42 to i64
  %arrayidx42 = getelementptr inbounds [1001 x %struct.sym*], [1001 x %struct.sym*]* @class_table, i32 0, i64 %idxprom41
  store %struct.sym* %41, %struct.sym** %arrayidx42, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.30, %for.end.23
  %43 = load %struct.sym*, %struct.sym** %sym, align 8
  ret %struct.sym* %43
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @streq(i8* %x, i8* %y) #0 {
entry:
  %x.addr = alloca i8*, align 8
  %y.addr = alloca i8*, align 8
  store i8* %x, i8** %x.addr, align 8
  store i8* %y, i8** %y.addr, align 8
  %0 = load i8*, i8** %x.addr, align 8
  %1 = load i8*, i8** %y.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* %1) #8
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

declare i32 @putchar(i32) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #4

; Function Attrs: nounwind uwtable
define internal %struct._IO_FILE* @open_file(i8* %file) #0 {
entry:
  %file.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %path = alloca %struct.search_path*, align 8
  %flen = alloca i32, align 4
  %len = alloca i32, align 4
  %z = alloca i8*, align 8
  store i8* %file, i8** %file.addr, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8
  %0 = load i8*, i8** %file.addr, align 8
  %call = call i64 @strlen(i8* %0) #8
  %add = add i64 %call, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %flen, align 4
  %1 = load i8*, i8** %file.addr, align 8
  %call1 = call i8* @xstrdup(i8* %1)
  store i8* %call1, i8** @filename, align 8
  %2 = load %struct.search_path*, %struct.search_path** @search_path, align 8
  store %struct.search_path* %2, %struct.search_path** %path, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.search_path*, %struct.search_path** %path, align 8
  %tobool = icmp ne %struct.search_path* %3, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %4, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %6 = load %struct.search_path*, %struct.search_path** %path, align 8
  %path3 = getelementptr inbounds %struct.search_path, %struct.search_path* %6, i32 0, i32 0
  %7 = load i8*, i8** %path3, align 8
  %call4 = call i64 @strlen(i8* %7) #8
  %8 = load i32, i32* %flen, align 4
  %conv5 = sext i32 %8 to i64
  %add6 = add i64 %call4, %conv5
  %conv7 = trunc i64 %add6 to i32
  store i32 %conv7, i32* %len, align 4
  %9 = load i32, i32* %len, align 4
  %add8 = add nsw i32 %9, 1
  %10 = load i32, i32* @open_file.buffer_size, align 4
  %cmp9 = icmp sge i32 %add8, %10
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load i32, i32* %len, align 4
  %add11 = add nsw i32 %11, 1
  %12 = load i32, i32* @open_file.buffer_size, align 4
  %mul = mul nsw i32 2, %12
  %cmp12 = icmp sgt i32 %add11, %mul
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %13 = load i32, i32* %len, align 4
  %add14 = add nsw i32 %13, 1
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %14 = load i32, i32* @open_file.buffer_size, align 4
  %mul15 = mul nsw i32 2, %14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add14, %cond.true ], [ %mul15, %cond.false ]
  store i32 %cond, i32* @open_file.buffer_size, align 4
  %15 = load i8*, i8** @open_file.buffer, align 8
  %16 = load i32, i32* @open_file.buffer_size, align 4
  %conv16 = sext i32 %16 to i64
  %call17 = call i8* @xrealloc(i8* %15, i64 %conv16)
  store i8* %call17, i8** @open_file.buffer, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %for.body
  %17 = load i8*, i8** @open_file.buffer, align 8
  %18 = load %struct.search_path*, %struct.search_path** %path, align 8
  %path18 = getelementptr inbounds %struct.search_path, %struct.search_path* %18, i32 0, i32 0
  %19 = load i8*, i8** %path18, align 8
  %call19 = call i8* @stpcpy(i8* %17, i8* %19) #6
  store i8* %call19, i8** %z, align 8
  %20 = load i8*, i8** %z, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %z, align 8
  store i8 47, i8* %20, align 1
  %21 = load i8*, i8** %z, align 8
  %22 = load i8*, i8** %file.addr, align 8
  %call20 = call i8* @strcpy(i8* %21, i8* %22) #6
  %23 = load i8*, i8** @open_file.buffer, align 8
  %call21 = call %struct._IO_FILE* @fopen(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0))
  store %struct._IO_FILE* %call21, %struct._IO_FILE** %fp, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load %struct.search_path*, %struct.search_path** %path, align 8
  %next = getelementptr inbounds %struct.search_path, %struct.search_path* %24, i32 0, i32 1
  %25 = load %struct.search_path*, %struct.search_path** %next, align 8
  store %struct.search_path* %25, %struct.search_path** %path, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp22 = icmp eq %struct._IO_FILE* %26, null
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %for.end
  %27 = load i8*, i8** %file.addr, align 8
  %call25 = call %struct._IO_FILE* @fopen(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0))
  store %struct._IO_FILE* %call25, %struct._IO_FILE** %fp, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %for.end
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp27 = icmp eq %struct._IO_FILE* %28, null
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.26
  call void @yyerror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.107, i32 0, i32 0), i8* null)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.end.26
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  ret %struct._IO_FILE* %29
}

declare i32 @fflush(%struct._IO_FILE*) #4

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #4

; Function Attrs: nounwind uwtable
define internal void @re_init_scanner() #0 {
entry:
  %size = alloca i32, align 4
  %0 = load i8*, i8** @inbuffer, align 8
  store i8* %0, i8** @in, align 8
  store i32 1, i32* @yyline, align 4
  %1 = load i8*, i8** @yytext, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 256, i32* %size, align 4
  %2 = load i32, i32* %size, align 4
  %conv = sext i32 %2 to i64
  %mul = mul i64 %conv, 1
  %call = call i8* @xmalloc(i64 %mul)
  store i8* %call, i8** @yytext, align 8
  %3 = load i8*, i8** @yytext, align 8
  %4 = load i32, i32* %size, align 4
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  store i8* %add.ptr, i8** @yytext_end, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @re_init_parser() #0 {
entry:
  store i32 -1, i32* @tk, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @yyparse() #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %call = call i32 @globals(i32 0)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load i32, i32* @tk, align 4
  %cmp1 = icmp eq i32 %0, 125
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %call2 = call i32 @yylex()
  store i32 %call2, i32* @tk, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind
declare i8* @stpcpy(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @globals(i32 %start_flags) #0 {
entry:
  %retval = alloca i32, align 4
  %start_flags.addr = alloca i32, align 4
  %anonymous = alloca i32, align 4
  %class_tk = alloca i32, align 4
  %flags = alloca i32, align 4
  %prev_in = alloca i8*, align 8
  %namespace_name = alloca i8*, align 8
  %qna = alloca %struct.link*, align 8
  store i32 %start_flags, i32* %start_flags.addr, align 4
  %0 = load i32, i32* %start_flags.addr, align 4
  store i32 %0, i32* %flags, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.102, %entry
  %1 = load i8*, i8** @in, align 8
  store i8* %1, i8** %prev_in, align 8
  %2 = load i32, i32* @tk, align 4
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  %call = call i32 @yylex()
  store i32 %call, i32* @tk, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %3 = load i32, i32* @tk, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %3, %cond.false ]
  switch i32 %cond, label %sw.default [
    i32 339, label %sw.bb
    i32 301, label %sw.bb.26
    i32 323, label %sw.bb.51
    i32 292, label %sw.bb.58
    i32 321, label %sw.bb.58
    i32 328, label %sw.bb.58
    i32 0, label %sw.bb.97
    i32 125, label %sw.bb.98
  ]

sw.bb:                                            ; preds = %cond.end
  %call1 = call i32 @yylex()
  store i32 %call1, i32* @tk, align 4
  %4 = load i32, i32* @tk, align 4
  %cmp2 = icmp eq i32 %4, 264
  br i1 %cmp2, label %if.then, label %if.end.25

if.then:                                          ; preds = %sw.bb
  %5 = load i8*, i8** @yytext, align 8
  %call3 = call i8* @xstrdup(i8* %5)
  store i8* %call3, i8** %namespace_name, align 8
  %call4 = call i32 @yylex()
  store i32 %call4, i32* @tk, align 4
  %6 = load i32, i32* @tk, align 4
  %cmp5 = icmp eq i32 %6, 61
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %call7 = call %struct.link* @match_qualified_namespace_alias()
  store %struct.link* %call7, %struct.link** %qna, align 8
  %7 = load %struct.link*, %struct.link** %qna, align 8
  %tobool = icmp ne %struct.link* %7, null
  br i1 %tobool, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then.6
  %8 = load i8*, i8** %namespace_name, align 8
  %9 = load %struct.link*, %struct.link** %qna, align 8
  call void @register_namespace_alias(i8* %8, %struct.link* %9)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then.6
  %call9 = call i32 @skip_to(i32 59)
  %cmp10 = icmp eq i32 %call9, 59
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end
  %call12 = call i32 @yylex()
  store i32 %call12, i32* @tk, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end
  br label %if.end.24

if.else:                                          ; preds = %if.then
  %10 = load i32, i32* @tk, align 4
  %cmp14 = icmp eq i32 %10, 123
  br i1 %cmp14, label %if.then.15, label %if.end.23

if.then.15:                                       ; preds = %if.else
  %call16 = call i32 @yylex()
  store i32 %call16, i32* @tk, align 4
  %11 = load i8*, i8** %namespace_name, align 8
  call void @enter_namespace(i8* %11)
  %call17 = call i32 @globals(i32 0)
  call void @leave_namespace()
  %12 = load i32, i32* @tk, align 4
  %cmp18 = icmp eq i32 %12, 125
  br i1 %cmp18, label %if.then.19, label %if.else.21

if.then.19:                                       ; preds = %if.then.15
  %call20 = call i32 @yylex()
  store i32 %call20, i32* @tk, align 4
  br label %if.end.22

if.else.21:                                       ; preds = %if.then.15
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.21, %if.then.19
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.else
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.13
  %13 = load i8*, i8** %namespace_name, align 8
  call void @free(i8* %13) #6
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %sw.bb
  br label %sw.epilog

sw.bb.26:                                         ; preds = %cond.end
  %call27 = call i32 @yylex()
  store i32 %call27, i32* @tk, align 4
  %14 = load i32, i32* @tk, align 4
  %cmp28 = icmp eq i32 %14, 256
  br i1 %cmp28, label %land.lhs.true, label %if.end.50

land.lhs.true:                                    ; preds = %sw.bb.26
  %15 = load i8*, i8** @string_start, align 8
  %16 = load i8, i8* %15, align 1
  %conv = sext i8 %16 to i32
  %cmp29 = icmp eq i32 %conv, 67
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.50

land.lhs.true.31:                                 ; preds = %land.lhs.true
  %17 = load i8*, i8** @string_start, align 8
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8, i8* %add.ptr, align 1
  %conv32 = sext i8 %18 to i32
  %cmp33 = icmp eq i32 %conv32, 34
  br i1 %cmp33, label %if.then.35, label %if.end.50

if.then.35:                                       ; preds = %land.lhs.true.31
  %call36 = call i32 @yylex()
  store i32 %call36, i32* @tk, align 4
  %19 = load i32, i32* @tk, align 4
  %cmp37 = icmp eq i32 %19, 123
  br i1 %cmp37, label %if.then.39, label %if.else.48

if.then.39:                                       ; preds = %if.then.35
  %call40 = call i32 @yylex()
  store i32 %call40, i32* @tk, align 4
  %call41 = call i32 @globals(i32 256)
  %20 = load i32, i32* @tk, align 4
  %cmp42 = icmp eq i32 %20, 125
  br i1 %cmp42, label %if.then.44, label %if.else.46

if.then.44:                                       ; preds = %if.then.39
  %call45 = call i32 @yylex()
  store i32 %call45, i32* @tk, align 4
  br label %if.end.47

if.else.46:                                       ; preds = %if.then.39
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.46, %if.then.44
  br label %if.end.49

if.else.48:                                       ; preds = %if.then.35
  call void @set_flag(i32* %flags, i32 256)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.48, %if.end.47
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %land.lhs.true.31, %land.lhs.true, %sw.bb.26
  br label %sw.epilog

sw.bb.51:                                         ; preds = %cond.end
  %call52 = call i32 @yylex()
  store i32 %call52, i32* @tk, align 4
  %21 = load i32, i32* @tk, align 4
  %cmp53 = icmp eq i32 %21, 60
  br i1 %cmp53, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %sw.bb.51
  call void @skip_matching()
  br label %if.end.57

if.else.56:                                       ; preds = %sw.bb.51
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.56, %if.then.55
  call void @set_flag(i32* %flags, i32 32)
  br label %sw.epilog

sw.bb.58:                                         ; preds = %cond.end, %cond.end, %cond.end
  %22 = load i32, i32* @tk, align 4
  %cmp59 = icmp eq i32 %22, -1
  br i1 %cmp59, label %cond.true.61, label %cond.false.63

cond.true.61:                                     ; preds = %sw.bb.58
  %call62 = call i32 @yylex()
  store i32 %call62, i32* @tk, align 4
  br label %cond.end.64

cond.false.63:                                    ; preds = %sw.bb.58
  %23 = load i32, i32* @tk, align 4
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.63, %cond.true.61
  %cond65 = phi i32 [ %call62, %cond.true.61 ], [ %23, %cond.false.63 ]
  store i32 %cond65, i32* %class_tk, align 4
  %call66 = call i32 @yylex()
  store i32 %call66, i32* @tk, align 4
  store i32 1, i32* %anonymous, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.79, %cond.end.64
  %24 = load i32, i32* @tk, align 4
  %cmp67 = icmp eq i32 %24, 0
  br i1 %cmp67, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %25 = load i32, i32* @tk, align 4
  %cmp69 = icmp eq i32 %25, 59
  br i1 %cmp69, label %lor.end, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %lor.lhs.false
  %26 = load i32, i32* @tk, align 4
  %cmp72 = icmp eq i32 %26, 58
  br i1 %cmp72, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.71
  %27 = load i32, i32* @tk, align 4
  %cmp74 = icmp eq i32 %27, 123
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.71, %lor.lhs.false, %while.cond
  %28 = phi i1 [ true, %lor.lhs.false.71 ], [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp74, %lor.rhs ]
  %lnot = xor i1 %28, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %29 = load i32, i32* @tk, align 4
  %cmp76 = icmp eq i32 %29, 264
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %while.body
  store i32 0, i32* %anonymous, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.78, %while.body
  %call80 = call i32 @yylex()
  store i32 %call80, i32* @tk, align 4
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %30 = load i32, i32* @tk, align 4
  %cmp81 = icmp eq i32 %30, 58
  br i1 %cmp81, label %land.lhs.true.86, label %lor.lhs.false.83

lor.lhs.false.83:                                 ; preds = %while.end
  %31 = load i32, i32* @tk, align 4
  %cmp84 = icmp eq i32 %31, 123
  br i1 %cmp84, label %land.lhs.true.86, label %if.else.89

land.lhs.true.86:                                 ; preds = %lor.lhs.false.83, %while.end
  %32 = load i32, i32* %anonymous, align 4
  %tobool87 = icmp ne i32 %32, 0
  br i1 %tobool87, label %if.else.89, label %if.then.88

if.then.88:                                       ; preds = %land.lhs.true.86
  %33 = load i32, i32* %class_tk, align 4
  %34 = load i32, i32* %flags, align 4
  call void @class_definition(%struct.sym* null, i32 %33, i32 %34, i32 0)
  br label %if.end.96

if.else.89:                                       ; preds = %land.lhs.true.86, %lor.lhs.false.83
  %call90 = call i32 @skip_to(i32 59)
  %cmp91 = icmp eq i32 %call90, 59
  br i1 %cmp91, label %if.then.93, label %if.end.95

if.then.93:                                       ; preds = %if.else.89
  %call94 = call i32 @yylex()
  store i32 %call94, i32* @tk, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.93, %if.else.89
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.then.88
  %35 = load i32, i32* %start_flags.addr, align 4
  store i32 %35, i32* %flags, align 4
  br label %sw.epilog

sw.bb.97:                                         ; preds = %cond.end
  store i32 1, i32* %retval
  br label %return

sw.bb.98:                                         ; preds = %cond.end
  store i32 0, i32* %retval
  br label %return

sw.default:                                       ; preds = %cond.end
  %36 = load i32, i32* %flags, align 4
  call void @declaration(i32 %36)
  %37 = load i32, i32* %start_flags.addr, align 4
  store i32 %37, i32* %flags, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.96, %if.end.57, %if.end.50, %if.end.25
  %38 = load i8*, i8** %prev_in, align 8
  %39 = load i8*, i8** @in, align 8
  %cmp99 = icmp eq i8* %38, %39
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %sw.epilog
  call void @yyerror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.108, i32 0, i32 0), i8* null)
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.101, %sw.epilog
  br label %for.cond

return:                                           ; preds = %sw.bb.98, %sw.bb.97
  %40 = load i32, i32* %retval
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define internal i32 @yylex() #0 {
entry:
  %retval = alloca i32, align 4
  %c = alloca i32, align 4
  %end_char = alloca i8, align 1
  %p = alloca i8*, align 8
  %i = alloca i32, align 4
  %i60 = alloca i32, align 4
  %hash = alloca i32, align 4
  %k = alloca %struct.kw*, align 8
  %size = alloca i32, align 4
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog.484, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %0 = load i8*, i8** @in, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** @in, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  store i32 %conv, i32* %c, align 4
  %conv1 = trunc i32 %conv to i8
  %idxprom = zext i8 %conv1 to i64
  %arrayidx = getelementptr inbounds [255 x i8], [255 x i8]* @is_white, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load i32, i32* %c, align 4
  switch i32 %3, label %sw.default.483 [
    i32 10, label %sw.bb
    i32 13, label %sw.bb.2
    i32 0, label %sw.bb.3
    i32 92, label %sw.bb.4
    i32 34, label %sw.bb.7
    i32 39, label %sw.bb.7
    i32 97, label %sw.bb.94
    i32 98, label %sw.bb.94
    i32 99, label %sw.bb.94
    i32 100, label %sw.bb.94
    i32 101, label %sw.bb.94
    i32 102, label %sw.bb.94
    i32 103, label %sw.bb.94
    i32 104, label %sw.bb.94
    i32 105, label %sw.bb.94
    i32 106, label %sw.bb.94
    i32 107, label %sw.bb.94
    i32 108, label %sw.bb.94
    i32 109, label %sw.bb.94
    i32 110, label %sw.bb.94
    i32 111, label %sw.bb.94
    i32 112, label %sw.bb.94
    i32 113, label %sw.bb.94
    i32 114, label %sw.bb.94
    i32 115, label %sw.bb.94
    i32 116, label %sw.bb.94
    i32 117, label %sw.bb.94
    i32 118, label %sw.bb.94
    i32 119, label %sw.bb.94
    i32 120, label %sw.bb.94
    i32 121, label %sw.bb.94
    i32 122, label %sw.bb.94
    i32 65, label %sw.bb.94
    i32 66, label %sw.bb.94
    i32 67, label %sw.bb.94
    i32 68, label %sw.bb.94
    i32 69, label %sw.bb.94
    i32 70, label %sw.bb.94
    i32 71, label %sw.bb.94
    i32 72, label %sw.bb.94
    i32 73, label %sw.bb.94
    i32 74, label %sw.bb.94
    i32 75, label %sw.bb.94
    i32 76, label %sw.bb.94
    i32 77, label %sw.bb.94
    i32 78, label %sw.bb.94
    i32 79, label %sw.bb.94
    i32 80, label %sw.bb.94
    i32 81, label %sw.bb.94
    i32 82, label %sw.bb.94
    i32 83, label %sw.bb.94
    i32 84, label %sw.bb.94
    i32 85, label %sw.bb.94
    i32 86, label %sw.bb.94
    i32 87, label %sw.bb.94
    i32 88, label %sw.bb.94
    i32 89, label %sw.bb.94
    i32 90, label %sw.bb.94
    i32 95, label %sw.bb.94
    i32 47, label %sw.bb.128
    i32 43, label %sw.bb.172
    i32 45, label %sw.bb.185
    i32 42, label %sw.bb.200
    i32 37, label %sw.bb.208
    i32 124, label %sw.bb.216
    i32 38, label %sw.bb.229
    i32 94, label %sw.bb.242
    i32 46, label %sw.bb.250
    i32 58, label %sw.bb.277
    i32 61, label %sw.bb.285
    i32 33, label %sw.bb.293
    i32 60, label %sw.bb.301
    i32 62, label %sw.bb.315
    i32 35, label %sw.bb.329
    i32 40, label %sw.bb.335
    i32 41, label %sw.bb.335
    i32 91, label %sw.bb.335
    i32 93, label %sw.bb.335
    i32 123, label %sw.bb.335
    i32 125, label %sw.bb.335
    i32 59, label %sw.bb.335
    i32 44, label %sw.bb.335
    i32 63, label %sw.bb.335
    i32 126, label %sw.bb.335
    i32 48, label %sw.bb.336
    i32 49, label %sw.bb.413
    i32 50, label %sw.bb.413
    i32 51, label %sw.bb.413
    i32 52, label %sw.bb.413
    i32 53, label %sw.bb.413
    i32 54, label %sw.bb.413
    i32 55, label %sw.bb.413
    i32 56, label %sw.bb.413
    i32 57, label %sw.bb.413
  ]

sw.bb:                                            ; preds = %while.end
  %4 = load i32, i32* @yyline, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @yyline, align 4
  br label %sw.epilog.484

sw.bb.2:                                          ; preds = %while.end
  br label %sw.epilog.484

sw.bb.3:                                          ; preds = %while.end
  store i32 0, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %while.end
  %5 = load i8*, i8** @in, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr5, i8** @in, align 8
  %6 = load i8, i8* %5, align 1
  %conv6 = sext i8 %6 to i32
  store i32 %conv6, i32* %c, align 4
  br label %sw.epilog.484

sw.bb.7:                                          ; preds = %while.end, %while.end
  %7 = load i32, i32* %c, align 4
  %conv8 = trunc i32 %7 to i8
  store i8 %conv8, i8* %end_char, align 1
  %8 = load i8*, i8** @in, align 8
  store i8* %8, i8** @string_start, align 8
  br label %while.cond.9

while.cond.9:                                     ; preds = %sw.epilog.89, %sw.bb.7
  %9 = load i8*, i8** @in, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr10, i8** @in, align 8
  %10 = load i8, i8* %9, align 1
  %conv11 = sext i8 %10 to i32
  store i32 %conv11, i32* %c, align 4
  %tobool12 = icmp ne i32 %conv11, 0
  br i1 %tobool12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.9
  %11 = load i32, i32* %c, align 4
  %12 = load i8, i8* %end_char, align 1
  %conv13 = sext i8 %12 to i32
  %cmp = icmp ne i32 %11, %conv13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.9
  %13 = phi i1 [ false, %while.cond.9 ], [ %cmp, %land.rhs ]
  br i1 %13, label %while.body.15, label %while.end.90

while.body.15:                                    ; preds = %land.end
  %14 = load i32, i32* %c, align 4
  switch i32 %14, label %sw.default.88 [
    i32 92, label %sw.bb.16
    i32 10, label %sw.bb.80
  ]

sw.bb.16:                                         ; preds = %while.body.15
  %15 = load i8*, i8** @in, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr17, i8** @in, align 8
  %16 = load i8, i8* %15, align 1
  %conv18 = sext i8 %16 to i32
  store i32 %conv18, i32* %c, align 4
  %tobool19 = icmp ne i32 %conv18, 0
  br i1 %tobool19, label %if.else.24, label %if.then

if.then:                                          ; preds = %sw.bb.16
  %17 = load i8, i8* %end_char, align 1
  %conv20 = sext i8 %17 to i32
  %cmp21 = icmp eq i32 %conv20, 39
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.then
  call void @yyerror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.150, i32 0, i32 0), i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @yyerror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.151, i32 0, i32 0), i8* null)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.23
  br label %end_string

if.else.24:                                       ; preds = %sw.bb.16
  %18 = load i32, i32* %c, align 4
  switch i32 %18, label %sw.default [
    i32 10, label %sw.bb.25
    i32 97, label %sw.bb.27
    i32 98, label %sw.bb.27
    i32 102, label %sw.bb.27
    i32 110, label %sw.bb.27
    i32 114, label %sw.bb.27
    i32 116, label %sw.bb.27
    i32 118, label %sw.bb.27
    i32 120, label %sw.bb.28
    i32 48, label %sw.bb.59
  ]

sw.bb.25:                                         ; preds = %if.else.24
  %19 = load i32, i32* @yyline, align 4
  %inc26 = add nsw i32 %19, 1
  store i32 %inc26, i32* @yyline, align 4
  br label %sw.bb.27

sw.bb.27:                                         ; preds = %if.else.24, %if.else.24, %if.else.24, %if.else.24, %if.else.24, %if.else.24, %if.else.24, %sw.bb.25
  br label %sw.epilog

sw.bb.28:                                         ; preds = %if.else.24
  store i32 0, i32* %i, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc, %sw.bb.28
  %20 = load i32, i32* %i, align 4
  %cmp30 = icmp slt i32 %20, 2
  br i1 %cmp30, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.29
  %21 = load i8*, i8** @in, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr32, i8** @in, align 8
  %22 = load i8, i8* %21, align 1
  %conv33 = sext i8 %22 to i32
  store i32 %conv33, i32* %c, align 4
  %23 = load i32, i32* %c, align 4
  %cmp34 = icmp sge i32 %23, 48
  br i1 %cmp34, label %land.lhs.true, label %if.else.39

land.lhs.true:                                    ; preds = %for.body
  %24 = load i32, i32* %c, align 4
  %cmp36 = icmp sle i32 %24, 55
  br i1 %cmp36, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %land.lhs.true
  br label %if.end.57

if.else.39:                                       ; preds = %land.lhs.true, %for.body
  %25 = load i32, i32* %c, align 4
  %cmp40 = icmp sge i32 %25, 97
  br i1 %cmp40, label %land.lhs.true.42, label %if.else.46

land.lhs.true.42:                                 ; preds = %if.else.39
  %26 = load i32, i32* %c, align 4
  %cmp43 = icmp sle i32 %26, 102
  br i1 %cmp43, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %land.lhs.true.42
  br label %if.end.56

if.else.46:                                       ; preds = %land.lhs.true.42, %if.else.39
  %27 = load i32, i32* %c, align 4
  %cmp47 = icmp sge i32 %27, 65
  br i1 %cmp47, label %land.lhs.true.49, label %if.else.53

land.lhs.true.49:                                 ; preds = %if.else.46
  %28 = load i32, i32* %c, align 4
  %cmp50 = icmp sle i32 %28, 70
  br i1 %cmp50, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %land.lhs.true.49
  br label %if.end.55

if.else.53:                                       ; preds = %land.lhs.true.49, %if.else.46
  %29 = load i8*, i8** @in, align 8
  %incdec.ptr54 = getelementptr inbounds i8, i8* %29, i32 -1
  store i8* %incdec.ptr54, i8** @in, align 8
  br label %for.end

if.end.55:                                        ; preds = %if.then.52
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then.45
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.38
  br label %for.inc

for.inc:                                          ; preds = %if.end.57
  %30 = load i32, i32* %i, align 4
  %inc58 = add nsw i32 %30, 1
  store i32 %inc58, i32* %i, align 4
  br label %for.cond.29

for.end:                                          ; preds = %if.else.53, %for.cond.29
  br label %sw.epilog

sw.bb.59:                                         ; preds = %if.else.24
  store i32 0, i32* %i60, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.76, %sw.bb.59
  %31 = load i32, i32* %i60, align 4
  %cmp62 = icmp slt i32 %31, 3
  br i1 %cmp62, label %for.body.64, label %for.end.78

for.body.64:                                      ; preds = %for.cond.61
  %32 = load i8*, i8** @in, align 8
  %incdec.ptr65 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr65, i8** @in, align 8
  %33 = load i8, i8* %32, align 1
  %conv66 = sext i8 %33 to i32
  store i32 %conv66, i32* %c, align 4
  %34 = load i32, i32* %c, align 4
  %cmp67 = icmp sge i32 %34, 48
  br i1 %cmp67, label %land.lhs.true.69, label %if.else.73

land.lhs.true.69:                                 ; preds = %for.body.64
  %35 = load i32, i32* %c, align 4
  %cmp70 = icmp sle i32 %35, 55
  br i1 %cmp70, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %land.lhs.true.69
  br label %if.end.75

if.else.73:                                       ; preds = %land.lhs.true.69, %for.body.64
  %36 = load i8*, i8** @in, align 8
  %incdec.ptr74 = getelementptr inbounds i8, i8* %36, i32 -1
  store i8* %incdec.ptr74, i8** @in, align 8
  br label %for.end.78

if.end.75:                                        ; preds = %if.then.72
  br label %for.inc.76

for.inc.76:                                       ; preds = %if.end.75
  %37 = load i32, i32* %i60, align 4
  %inc77 = add nsw i32 %37, 1
  store i32 %inc77, i32* %i60, align 4
  br label %for.cond.61

for.end.78:                                       ; preds = %if.else.73, %for.cond.61
  br label %sw.epilog

sw.default:                                       ; preds = %if.else.24
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end.78, %for.end, %sw.bb.27
  br label %if.end.79

if.end.79:                                        ; preds = %sw.epilog
  br label %sw.epilog.89

sw.bb.80:                                         ; preds = %while.body.15
  %38 = load i8, i8* %end_char, align 1
  %conv81 = sext i8 %38 to i32
  %cmp82 = icmp eq i32 %conv81, 39
  br i1 %cmp82, label %if.then.84, label %if.else.85

if.then.84:                                       ; preds = %sw.bb.80
  call void @yyerror(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.152, i32 0, i32 0), i8* null)
  br label %if.end.86

if.else.85:                                       ; preds = %sw.bb.80
  call void @yyerror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.153, i32 0, i32 0), i8* null)
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.85, %if.then.84
  %39 = load i32, i32* @yyline, align 4
  %inc87 = add nsw i32 %39, 1
  store i32 %inc87, i32* @yyline, align 4
  br label %sw.epilog.89

sw.default.88:                                    ; preds = %while.body.15
  br label %sw.epilog.89

sw.epilog.89:                                     ; preds = %sw.default.88, %if.end.86, %if.end.79
  br label %while.cond.9

while.end.90:                                     ; preds = %land.end
  br label %end_string

end_string:                                       ; preds = %while.end.90, %if.end
  %40 = load i8, i8* %end_char, align 1
  %conv91 = sext i8 %40 to i32
  %cmp92 = icmp eq i32 %conv91, 39
  %cond = select i1 %cmp92, i32 257, i32 256
  store i32 %cond, i32* %retval
  br label %return

sw.bb.94:                                         ; preds = %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end
  %41 = load i8*, i8** @yytext, align 8
  store i8* %41, i8** %p, align 8
  %42 = load i32, i32* %c, align 4
  store i32 %42, i32* %hash, align 4
  %conv95 = trunc i32 %42 to i8
  %43 = load i8*, i8** %p, align 8
  %incdec.ptr96 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr96, i8** %p, align 8
  store i8 %conv95, i8* %43, align 1
  br label %while.cond.97

while.cond.97:                                    ; preds = %if.end.115, %sw.bb.94
  %44 = load i8*, i8** @in, align 8
  %incdec.ptr98 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr98, i8** @in, align 8
  %45 = load i8, i8* %44, align 1
  %46 = load i8*, i8** %p, align 8
  store i8 %45, i8* %46, align 1
  %idxprom99 = zext i8 %45 to i64
  %arrayidx100 = getelementptr inbounds [255 x i8], [255 x i8]* @is_ident, i32 0, i64 %idxprom99
  %47 = load i8, i8* %arrayidx100, align 1
  %tobool101 = icmp ne i8 %47, 0
  br i1 %tobool101, label %while.body.102, label %while.end.116

while.body.102:                                   ; preds = %while.cond.97
  %48 = load i32, i32* %hash, align 4
  %shl = shl i32 %48, 1
  %49 = load i8*, i8** %p, align 8
  %incdec.ptr103 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr103, i8** %p, align 8
  %50 = load i8, i8* %49, align 1
  %conv104 = sext i8 %50 to i32
  %xor = xor i32 %shl, %conv104
  store i32 %xor, i32* %hash, align 4
  %51 = load i8*, i8** %p, align 8
  %52 = load i8*, i8** @yytext_end, align 8
  %add.ptr = getelementptr inbounds i8, i8* %52, i64 -1
  %cmp105 = icmp eq i8* %51, %add.ptr
  br i1 %cmp105, label %if.then.107, label %if.end.115

if.then.107:                                      ; preds = %while.body.102
  %53 = load i8*, i8** @yytext_end, align 8
  %54 = load i8*, i8** @yytext, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %53 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %54 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv108 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv108, i32* %size, align 4
  %55 = load i8*, i8** @yytext, align 8
  %56 = load i32, i32* %size, align 4
  %mul = mul nsw i32 2, %56
  %conv109 = sext i32 %mul to i64
  %call = call i8* @xrealloc(i8* %55, i64 %conv109)
  store i8* %call, i8** @yytext, align 8
  %57 = load i8*, i8** @yytext, align 8
  %58 = load i32, i32* %size, align 4
  %mul110 = mul nsw i32 2, %58
  %idx.ext = sext i32 %mul110 to i64
  %add.ptr111 = getelementptr inbounds i8, i8* %57, i64 %idx.ext
  store i8* %add.ptr111, i8** @yytext_end, align 8
  %59 = load i8*, i8** @yytext, align 8
  %60 = load i32, i32* %size, align 4
  %idx.ext112 = sext i32 %60 to i64
  %add.ptr113 = getelementptr inbounds i8, i8* %59, i64 %idx.ext112
  %add.ptr114 = getelementptr inbounds i8, i8* %add.ptr113, i64 -1
  store i8* %add.ptr114, i8** %p, align 8
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.107, %while.body.102
  br label %while.cond.97

while.end.116:                                    ; preds = %while.cond.97
  %61 = load i8*, i8** @in, align 8
  %incdec.ptr117 = getelementptr inbounds i8, i8* %61, i32 -1
  store i8* %incdec.ptr117, i8** @in, align 8
  %62 = load i8*, i8** %p, align 8
  store i8 0, i8* %62, align 1
  %63 = load i32, i32* %hash, align 4
  %rem = urem i32 %63, 1001
  %idxprom118 = zext i32 %rem to i64
  %arrayidx119 = getelementptr inbounds [1001 x %struct.kw*], [1001 x %struct.kw*]* @keyword_table, i32 0, i64 %idxprom118
  %64 = load %struct.kw*, %struct.kw** %arrayidx119, align 8
  store %struct.kw* %64, %struct.kw** %k, align 8
  br label %for.cond.120

for.cond.120:                                     ; preds = %for.inc.126, %while.end.116
  %65 = load %struct.kw*, %struct.kw** %k, align 8
  %tobool121 = icmp ne %struct.kw* %65, null
  br i1 %tobool121, label %for.body.122, label %for.end.127

for.body.122:                                     ; preds = %for.cond.120
  %66 = load %struct.kw*, %struct.kw** %k, align 8
  %name = getelementptr inbounds %struct.kw, %struct.kw* %66, i32 0, i32 0
  %67 = load i8*, i8** %name, align 8
  %68 = load i8*, i8** @yytext, align 8
  %call123 = call zeroext i1 @streq(i8* %67, i8* %68)
  br i1 %call123, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %for.body.122
  %69 = load %struct.kw*, %struct.kw** %k, align 8
  %tk = getelementptr inbounds %struct.kw, %struct.kw* %69, i32 0, i32 1
  %70 = load i32, i32* %tk, align 4
  store i32 %70, i32* %retval
  br label %return

if.end.125:                                       ; preds = %for.body.122
  br label %for.inc.126

for.inc.126:                                      ; preds = %if.end.125
  %71 = load %struct.kw*, %struct.kw** %k, align 8
  %next = getelementptr inbounds %struct.kw, %struct.kw* %71, i32 0, i32 2
  %72 = load %struct.kw*, %struct.kw** %next, align 8
  store %struct.kw* %72, %struct.kw** %k, align 8
  br label %for.cond.120

for.end.127:                                      ; preds = %for.cond.120
  store i32 264, i32* %retval
  br label %return

sw.bb.128:                                        ; preds = %while.end
  %73 = load i8*, i8** @in, align 8
  %incdec.ptr129 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %incdec.ptr129, i8** @in, align 8
  %74 = load i8, i8* %73, align 1
  %conv130 = sext i8 %74 to i32
  store i32 %conv130, i32* %c, align 4
  switch i32 %conv130, label %sw.default.169 [
    i32 42, label %sw.bb.131
    i32 61, label %sw.bb.152
    i32 47, label %sw.bb.153
  ]

sw.bb.131:                                        ; preds = %sw.bb.128
  br label %while.cond.132

while.cond.132:                                   ; preds = %sw.epilog.150, %sw.bb.131
  %75 = load i8*, i8** @in, align 8
  %incdec.ptr133 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %incdec.ptr133, i8** @in, align 8
  %76 = load i8, i8* %75, align 1
  %conv134 = sext i8 %76 to i32
  store i32 %conv134, i32* %c, align 4
  %tobool135 = icmp ne i32 %conv134, 0
  br i1 %tobool135, label %while.body.136, label %while.end.151

while.body.136:                                   ; preds = %while.cond.132
  %77 = load i32, i32* %c, align 4
  switch i32 %77, label %sw.epilog.150 [
    i32 42, label %sw.bb.137
    i32 92, label %sw.bb.145
    i32 10, label %sw.bb.148
  ]

sw.bb.137:                                        ; preds = %while.body.136
  %78 = load i8*, i8** @in, align 8
  %incdec.ptr138 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr138, i8** @in, align 8
  %79 = load i8, i8* %78, align 1
  %conv139 = sext i8 %79 to i32
  store i32 %conv139, i32* %c, align 4
  %cmp140 = icmp eq i32 %conv139, 47
  br i1 %cmp140, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %sw.bb.137
  br label %comment_end

if.end.143:                                       ; preds = %sw.bb.137
  %80 = load i8*, i8** @in, align 8
  %incdec.ptr144 = getelementptr inbounds i8, i8* %80, i32 -1
  store i8* %incdec.ptr144, i8** @in, align 8
  br label %sw.epilog.150

sw.bb.145:                                        ; preds = %while.body.136
  %81 = load i8*, i8** @in, align 8
  %incdec.ptr146 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %incdec.ptr146, i8** @in, align 8
  %82 = load i8, i8* %81, align 1
  %conv147 = sext i8 %82 to i32
  store i32 %conv147, i32* %c, align 4
  br label %sw.epilog.150

sw.bb.148:                                        ; preds = %while.body.136
  %83 = load i32, i32* @yyline, align 4
  %inc149 = add nsw i32 %83, 1
  store i32 %inc149, i32* @yyline, align 4
  br label %sw.epilog.150

sw.epilog.150:                                    ; preds = %while.body.136, %sw.bb.148, %sw.bb.145, %if.end.143
  br label %while.cond.132

while.end.151:                                    ; preds = %while.cond.132
  br label %comment_end

comment_end:                                      ; preds = %while.end.151, %if.then.142
  br label %sw.epilog.171

sw.bb.152:                                        ; preds = %sw.bb.128
  store i32 265, i32* %retval
  br label %return

sw.bb.153:                                        ; preds = %sw.bb.128
  br label %while.cond.154

while.cond.154:                                   ; preds = %while.body.162, %sw.bb.153
  %84 = load i8*, i8** @in, align 8
  %incdec.ptr155 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %incdec.ptr155, i8** @in, align 8
  %85 = load i8, i8* %84, align 1
  %conv156 = sext i8 %85 to i32
  store i32 %conv156, i32* %c, align 4
  %tobool157 = icmp ne i32 %conv156, 0
  br i1 %tobool157, label %land.rhs.158, label %land.end.161

land.rhs.158:                                     ; preds = %while.cond.154
  %86 = load i32, i32* %c, align 4
  %cmp159 = icmp ne i32 %86, 10
  br label %land.end.161

land.end.161:                                     ; preds = %land.rhs.158, %while.cond.154
  %87 = phi i1 [ false, %while.cond.154 ], [ %cmp159, %land.rhs.158 ]
  br i1 %87, label %while.body.162, label %while.end.163

while.body.162:                                   ; preds = %land.end.161
  br label %while.cond.154

while.end.163:                                    ; preds = %land.end.161
  %88 = load i32, i32* %c, align 4
  %cmp164 = icmp eq i32 %88, 0
  br i1 %cmp164, label %if.then.166, label %if.end.167

if.then.166:                                      ; preds = %while.end.163
  store i32 0, i32* %retval
  br label %return

if.end.167:                                       ; preds = %while.end.163
  %89 = load i32, i32* @yyline, align 4
  %inc168 = add nsw i32 %89, 1
  store i32 %inc168, i32* @yyline, align 4
  br label %sw.epilog.171

sw.default.169:                                   ; preds = %sw.bb.128
  %90 = load i8*, i8** @in, align 8
  %incdec.ptr170 = getelementptr inbounds i8, i8* %90, i32 -1
  store i8* %incdec.ptr170, i8** @in, align 8
  store i32 47, i32* %retval
  br label %return

sw.epilog.171:                                    ; preds = %if.end.167, %comment_end
  br label %sw.epilog.484

sw.bb.172:                                        ; preds = %while.end
  %91 = load i8*, i8** @in, align 8
  %incdec.ptr173 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %incdec.ptr173, i8** @in, align 8
  %92 = load i8, i8* %91, align 1
  %conv174 = sext i8 %92 to i32
  store i32 %conv174, i32* %c, align 4
  %cmp175 = icmp eq i32 %conv174, 43
  br i1 %cmp175, label %if.then.177, label %if.else.178

if.then.177:                                      ; preds = %sw.bb.172
  store i32 266, i32* %retval
  br label %return

if.else.178:                                      ; preds = %sw.bb.172
  %93 = load i32, i32* %c, align 4
  %cmp179 = icmp eq i32 %93, 61
  br i1 %cmp179, label %if.then.181, label %if.end.182

if.then.181:                                      ; preds = %if.else.178
  store i32 267, i32* %retval
  br label %return

if.end.182:                                       ; preds = %if.else.178
  br label %if.end.183

if.end.183:                                       ; preds = %if.end.182
  %94 = load i8*, i8** @in, align 8
  %incdec.ptr184 = getelementptr inbounds i8, i8* %94, i32 -1
  store i8* %incdec.ptr184, i8** @in, align 8
  store i32 43, i32* %retval
  br label %return

sw.bb.185:                                        ; preds = %while.end
  %95 = load i8*, i8** @in, align 8
  %incdec.ptr186 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %incdec.ptr186, i8** @in, align 8
  %96 = load i8, i8* %95, align 1
  %conv187 = sext i8 %96 to i32
  store i32 %conv187, i32* %c, align 4
  switch i32 %conv187, label %sw.epilog.198 [
    i32 45, label %sw.bb.188
    i32 62, label %sw.bb.189
    i32 61, label %sw.bb.197
  ]

sw.bb.188:                                        ; preds = %sw.bb.185
  store i32 268, i32* %retval
  br label %return

sw.bb.189:                                        ; preds = %sw.bb.185
  %97 = load i8*, i8** @in, align 8
  %incdec.ptr190 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %incdec.ptr190, i8** @in, align 8
  %98 = load i8, i8* %97, align 1
  %conv191 = sext i8 %98 to i32
  store i32 %conv191, i32* %c, align 4
  %cmp192 = icmp eq i32 %conv191, 42
  br i1 %cmp192, label %if.then.194, label %if.end.195

if.then.194:                                      ; preds = %sw.bb.189
  store i32 263, i32* %retval
  br label %return

if.end.195:                                       ; preds = %sw.bb.189
  %99 = load i8*, i8** @in, align 8
  %incdec.ptr196 = getelementptr inbounds i8, i8* %99, i32 -1
  store i8* %incdec.ptr196, i8** @in, align 8
  store i32 269, i32* %retval
  br label %return

sw.bb.197:                                        ; preds = %sw.bb.185
  store i32 270, i32* %retval
  br label %return

sw.epilog.198:                                    ; preds = %sw.bb.185
  %100 = load i8*, i8** @in, align 8
  %incdec.ptr199 = getelementptr inbounds i8, i8* %100, i32 -1
  store i8* %incdec.ptr199, i8** @in, align 8
  store i32 45, i32* %retval
  br label %return

sw.bb.200:                                        ; preds = %while.end
  %101 = load i8*, i8** @in, align 8
  %incdec.ptr201 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %incdec.ptr201, i8** @in, align 8
  %102 = load i8, i8* %101, align 1
  %conv202 = sext i8 %102 to i32
  store i32 %conv202, i32* %c, align 4
  %cmp203 = icmp eq i32 %conv202, 61
  br i1 %cmp203, label %if.then.205, label %if.end.206

if.then.205:                                      ; preds = %sw.bb.200
  store i32 271, i32* %retval
  br label %return

if.end.206:                                       ; preds = %sw.bb.200
  %103 = load i8*, i8** @in, align 8
  %incdec.ptr207 = getelementptr inbounds i8, i8* %103, i32 -1
  store i8* %incdec.ptr207, i8** @in, align 8
  store i32 42, i32* %retval
  br label %return

sw.bb.208:                                        ; preds = %while.end
  %104 = load i8*, i8** @in, align 8
  %incdec.ptr209 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %incdec.ptr209, i8** @in, align 8
  %105 = load i8, i8* %104, align 1
  %conv210 = sext i8 %105 to i32
  store i32 %conv210, i32* %c, align 4
  %cmp211 = icmp eq i32 %conv210, 61
  br i1 %cmp211, label %if.then.213, label %if.end.214

if.then.213:                                      ; preds = %sw.bb.208
  store i32 272, i32* %retval
  br label %return

if.end.214:                                       ; preds = %sw.bb.208
  %106 = load i8*, i8** @in, align 8
  %incdec.ptr215 = getelementptr inbounds i8, i8* %106, i32 -1
  store i8* %incdec.ptr215, i8** @in, align 8
  store i32 37, i32* %retval
  br label %return

sw.bb.216:                                        ; preds = %while.end
  %107 = load i8*, i8** @in, align 8
  %incdec.ptr217 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %incdec.ptr217, i8** @in, align 8
  %108 = load i8, i8* %107, align 1
  %conv218 = sext i8 %108 to i32
  store i32 %conv218, i32* %c, align 4
  %cmp219 = icmp eq i32 %conv218, 124
  br i1 %cmp219, label %if.then.221, label %if.else.222

if.then.221:                                      ; preds = %sw.bb.216
  store i32 273, i32* %retval
  br label %return

if.else.222:                                      ; preds = %sw.bb.216
  %109 = load i32, i32* %c, align 4
  %cmp223 = icmp eq i32 %109, 61
  br i1 %cmp223, label %if.then.225, label %if.end.226

if.then.225:                                      ; preds = %if.else.222
  store i32 274, i32* %retval
  br label %return

if.end.226:                                       ; preds = %if.else.222
  br label %if.end.227

if.end.227:                                       ; preds = %if.end.226
  %110 = load i8*, i8** @in, align 8
  %incdec.ptr228 = getelementptr inbounds i8, i8* %110, i32 -1
  store i8* %incdec.ptr228, i8** @in, align 8
  store i32 124, i32* %retval
  br label %return

sw.bb.229:                                        ; preds = %while.end
  %111 = load i8*, i8** @in, align 8
  %incdec.ptr230 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %incdec.ptr230, i8** @in, align 8
  %112 = load i8, i8* %111, align 1
  %conv231 = sext i8 %112 to i32
  store i32 %conv231, i32* %c, align 4
  %cmp232 = icmp eq i32 %conv231, 38
  br i1 %cmp232, label %if.then.234, label %if.else.235

if.then.234:                                      ; preds = %sw.bb.229
  store i32 275, i32* %retval
  br label %return

if.else.235:                                      ; preds = %sw.bb.229
  %113 = load i32, i32* %c, align 4
  %cmp236 = icmp eq i32 %113, 61
  br i1 %cmp236, label %if.then.238, label %if.end.239

if.then.238:                                      ; preds = %if.else.235
  store i32 276, i32* %retval
  br label %return

if.end.239:                                       ; preds = %if.else.235
  br label %if.end.240

if.end.240:                                       ; preds = %if.end.239
  %114 = load i8*, i8** @in, align 8
  %incdec.ptr241 = getelementptr inbounds i8, i8* %114, i32 -1
  store i8* %incdec.ptr241, i8** @in, align 8
  store i32 38, i32* %retval
  br label %return

sw.bb.242:                                        ; preds = %while.end
  %115 = load i8*, i8** @in, align 8
  %incdec.ptr243 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %incdec.ptr243, i8** @in, align 8
  %116 = load i8, i8* %115, align 1
  %conv244 = sext i8 %116 to i32
  store i32 %conv244, i32* %c, align 4
  %cmp245 = icmp eq i32 %conv244, 61
  br i1 %cmp245, label %if.then.247, label %if.end.248

if.then.247:                                      ; preds = %sw.bb.242
  store i32 277, i32* %retval
  br label %return

if.end.248:                                       ; preds = %sw.bb.242
  %117 = load i8*, i8** @in, align 8
  %incdec.ptr249 = getelementptr inbounds i8, i8* %117, i32 -1
  store i8* %incdec.ptr249, i8** @in, align 8
  store i32 94, i32* %retval
  br label %return

sw.bb.250:                                        ; preds = %while.end
  %118 = load i8*, i8** @in, align 8
  %incdec.ptr251 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %incdec.ptr251, i8** @in, align 8
  %119 = load i8, i8* %118, align 1
  %conv252 = sext i8 %119 to i32
  store i32 %conv252, i32* %c, align 4
  %cmp253 = icmp eq i32 %conv252, 42
  br i1 %cmp253, label %if.then.255, label %if.else.256

if.then.255:                                      ; preds = %sw.bb.250
  store i32 278, i32* %retval
  br label %return

if.else.256:                                      ; preds = %sw.bb.250
  %120 = load i32, i32* %c, align 4
  %cmp257 = icmp eq i32 %120, 46
  br i1 %cmp257, label %if.then.259, label %if.else.267

if.then.259:                                      ; preds = %if.else.256
  %121 = load i8*, i8** @in, align 8
  %incdec.ptr260 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %incdec.ptr260, i8** @in, align 8
  %122 = load i8, i8* %121, align 1
  %conv261 = sext i8 %122 to i32
  store i32 %conv261, i32* %c, align 4
  %cmp262 = icmp ne i32 %conv261, 46
  br i1 %cmp262, label %if.then.264, label %if.end.265

if.then.264:                                      ; preds = %if.then.259
  call void @yyerror(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.154, i32 0, i32 0), i8* null)
  br label %if.end.265

if.end.265:                                       ; preds = %if.then.264, %if.then.259
  %123 = load i8*, i8** @in, align 8
  %incdec.ptr266 = getelementptr inbounds i8, i8* %123, i32 -1
  store i8* %incdec.ptr266, i8** @in, align 8
  store i32 260, i32* %retval
  br label %return

if.else.267:                                      ; preds = %if.else.256
  %124 = load i32, i32* %c, align 4
  %conv268 = trunc i32 %124 to i8
  %idxprom269 = zext i8 %conv268 to i64
  %arrayidx270 = getelementptr inbounds [255 x i8], [255 x i8]* @is_digit, i32 0, i64 %idxprom269
  %125 = load i8, i8* %arrayidx270, align 1
  %tobool271 = icmp ne i8 %125, 0
  br i1 %tobool271, label %if.end.274, label %if.then.272

if.then.272:                                      ; preds = %if.else.267
  %126 = load i8*, i8** @in, align 8
  %incdec.ptr273 = getelementptr inbounds i8, i8* %126, i32 -1
  store i8* %incdec.ptr273, i8** @in, align 8
  store i32 46, i32* %retval
  br label %return

if.end.274:                                       ; preds = %if.else.267
  br label %if.end.275

if.end.275:                                       ; preds = %if.end.274
  br label %if.end.276

if.end.276:                                       ; preds = %if.end.275
  br label %mantissa

sw.bb.277:                                        ; preds = %while.end
  %127 = load i8*, i8** @in, align 8
  %incdec.ptr278 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %incdec.ptr278, i8** @in, align 8
  %128 = load i8, i8* %127, align 1
  %conv279 = sext i8 %128 to i32
  store i32 %conv279, i32* %c, align 4
  %cmp280 = icmp eq i32 %conv279, 58
  br i1 %cmp280, label %if.then.282, label %if.end.283

if.then.282:                                      ; preds = %sw.bb.277
  store i32 279, i32* %retval
  br label %return

if.end.283:                                       ; preds = %sw.bb.277
  %129 = load i8*, i8** @in, align 8
  %incdec.ptr284 = getelementptr inbounds i8, i8* %129, i32 -1
  store i8* %incdec.ptr284, i8** @in, align 8
  store i32 58, i32* %retval
  br label %return

sw.bb.285:                                        ; preds = %while.end
  %130 = load i8*, i8** @in, align 8
  %incdec.ptr286 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %incdec.ptr286, i8** @in, align 8
  %131 = load i8, i8* %130, align 1
  %conv287 = sext i8 %131 to i32
  store i32 %conv287, i32* %c, align 4
  %cmp288 = icmp eq i32 %conv287, 61
  br i1 %cmp288, label %if.then.290, label %if.end.291

if.then.290:                                      ; preds = %sw.bb.285
  store i32 280, i32* %retval
  br label %return

if.end.291:                                       ; preds = %sw.bb.285
  %132 = load i8*, i8** @in, align 8
  %incdec.ptr292 = getelementptr inbounds i8, i8* %132, i32 -1
  store i8* %incdec.ptr292, i8** @in, align 8
  store i32 61, i32* %retval
  br label %return

sw.bb.293:                                        ; preds = %while.end
  %133 = load i8*, i8** @in, align 8
  %incdec.ptr294 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %incdec.ptr294, i8** @in, align 8
  %134 = load i8, i8* %133, align 1
  %conv295 = sext i8 %134 to i32
  store i32 %conv295, i32* %c, align 4
  %cmp296 = icmp eq i32 %conv295, 61
  br i1 %cmp296, label %if.then.298, label %if.end.299

if.then.298:                                      ; preds = %sw.bb.293
  store i32 281, i32* %retval
  br label %return

if.end.299:                                       ; preds = %sw.bb.293
  %135 = load i8*, i8** @in, align 8
  %incdec.ptr300 = getelementptr inbounds i8, i8* %135, i32 -1
  store i8* %incdec.ptr300, i8** @in, align 8
  store i32 33, i32* %retval
  br label %return

sw.bb.301:                                        ; preds = %while.end
  %136 = load i8*, i8** @in, align 8
  %incdec.ptr302 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %incdec.ptr302, i8** @in, align 8
  %137 = load i8, i8* %136, align 1
  %conv303 = sext i8 %137 to i32
  store i32 %conv303, i32* %c, align 4
  switch i32 %conv303, label %sw.epilog.313 [
    i32 61, label %sw.bb.304
    i32 60, label %sw.bb.305
  ]

sw.bb.304:                                        ; preds = %sw.bb.301
  store i32 282, i32* %retval
  br label %return

sw.bb.305:                                        ; preds = %sw.bb.301
  %138 = load i8*, i8** @in, align 8
  %incdec.ptr306 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %incdec.ptr306, i8** @in, align 8
  %139 = load i8, i8* %138, align 1
  %conv307 = sext i8 %139 to i32
  store i32 %conv307, i32* %c, align 4
  %cmp308 = icmp eq i32 %conv307, 61
  br i1 %cmp308, label %if.then.310, label %if.end.311

if.then.310:                                      ; preds = %sw.bb.305
  store i32 261, i32* %retval
  br label %return

if.end.311:                                       ; preds = %sw.bb.305
  %140 = load i8*, i8** @in, align 8
  %incdec.ptr312 = getelementptr inbounds i8, i8* %140, i32 -1
  store i8* %incdec.ptr312, i8** @in, align 8
  store i32 283, i32* %retval
  br label %return

sw.epilog.313:                                    ; preds = %sw.bb.301
  %141 = load i8*, i8** @in, align 8
  %incdec.ptr314 = getelementptr inbounds i8, i8* %141, i32 -1
  store i8* %incdec.ptr314, i8** @in, align 8
  store i32 60, i32* %retval
  br label %return

sw.bb.315:                                        ; preds = %while.end
  %142 = load i8*, i8** @in, align 8
  %incdec.ptr316 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %incdec.ptr316, i8** @in, align 8
  %143 = load i8, i8* %142, align 1
  %conv317 = sext i8 %143 to i32
  store i32 %conv317, i32* %c, align 4
  switch i32 %conv317, label %sw.epilog.327 [
    i32 61, label %sw.bb.318
    i32 62, label %sw.bb.319
  ]

sw.bb.318:                                        ; preds = %sw.bb.315
  store i32 284, i32* %retval
  br label %return

sw.bb.319:                                        ; preds = %sw.bb.315
  %144 = load i8*, i8** @in, align 8
  %incdec.ptr320 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %incdec.ptr320, i8** @in, align 8
  %145 = load i8, i8* %144, align 1
  %conv321 = sext i8 %145 to i32
  store i32 %conv321, i32* %c, align 4
  %cmp322 = icmp eq i32 %conv321, 61
  br i1 %cmp322, label %if.then.324, label %if.end.325

if.then.324:                                      ; preds = %sw.bb.319
  store i32 262, i32* %retval
  br label %return

if.end.325:                                       ; preds = %sw.bb.319
  %146 = load i8*, i8** @in, align 8
  %incdec.ptr326 = getelementptr inbounds i8, i8* %146, i32 -1
  store i8* %incdec.ptr326, i8** @in, align 8
  store i32 285, i32* %retval
  br label %return

sw.epilog.327:                                    ; preds = %sw.bb.315
  %147 = load i8*, i8** @in, align 8
  %incdec.ptr328 = getelementptr inbounds i8, i8* %147, i32 -1
  store i8* %incdec.ptr328, i8** @in, align 8
  store i32 62, i32* %retval
  br label %return

sw.bb.329:                                        ; preds = %while.end
  %call330 = call i32 @process_pp_line()
  store i32 %call330, i32* %c, align 4
  %148 = load i32, i32* %c, align 4
  %cmp331 = icmp eq i32 %148, 0
  br i1 %cmp331, label %if.then.333, label %if.end.334

if.then.333:                                      ; preds = %sw.bb.329
  store i32 0, i32* %retval
  br label %return

if.end.334:                                       ; preds = %sw.bb.329
  br label %sw.epilog.484

sw.bb.335:                                        ; preds = %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end
  %149 = load i32, i32* %c, align 4
  store i32 %149, i32* %retval
  br label %return

sw.bb.336:                                        ; preds = %while.end
  store i32 0, i32* @yyival, align 4
  %150 = load i8*, i8** @in, align 8
  %incdec.ptr337 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %incdec.ptr337, i8** @in, align 8
  %151 = load i8, i8* %150, align 1
  %conv338 = sext i8 %151 to i32
  store i32 %conv338, i32* %c, align 4
  %cmp339 = icmp eq i32 %conv338, 120
  br i1 %cmp339, label %if.then.343, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.336
  %152 = load i32, i32* %c, align 4
  %cmp341 = icmp eq i32 %152, 88
  br i1 %cmp341, label %if.then.343, label %if.else.382

if.then.343:                                      ; preds = %lor.lhs.false, %sw.bb.336
  br label %while.cond.344

while.cond.344:                                   ; preds = %if.end.380, %if.then.343
  %153 = load i8*, i8** @in, align 8
  %incdec.ptr345 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %incdec.ptr345, i8** @in, align 8
  %154 = load i8, i8* %153, align 1
  %conv346 = sext i8 %154 to i32
  store i32 %conv346, i32* %c, align 4
  %tobool347 = icmp ne i32 %conv346, 0
  br i1 %tobool347, label %while.body.348, label %while.end.381

while.body.348:                                   ; preds = %while.cond.344
  %155 = load i32, i32* %c, align 4
  %conv349 = trunc i32 %155 to i8
  %idxprom350 = zext i8 %conv349 to i64
  %arrayidx351 = getelementptr inbounds [255 x i8], [255 x i8]* @is_digit, i32 0, i64 %idxprom350
  %156 = load i8, i8* %arrayidx351, align 1
  %tobool352 = icmp ne i8 %156, 0
  br i1 %tobool352, label %if.then.353, label %if.else.355

if.then.353:                                      ; preds = %while.body.348
  %157 = load i32, i32* @yyival, align 4
  %mul354 = mul i32 %157, 16
  %158 = load i32, i32* %c, align 4
  %add = add i32 %mul354, %158
  %sub = sub i32 %add, 48
  store i32 %sub, i32* @yyival, align 4
  br label %if.end.380

if.else.355:                                      ; preds = %while.body.348
  %159 = load i32, i32* %c, align 4
  %cmp356 = icmp sge i32 %159, 97
  br i1 %cmp356, label %land.lhs.true.358, label %if.else.366

land.lhs.true.358:                                ; preds = %if.else.355
  %160 = load i32, i32* %c, align 4
  %cmp359 = icmp sle i32 %160, 102
  br i1 %cmp359, label %if.then.361, label %if.else.366

if.then.361:                                      ; preds = %land.lhs.true.358
  %161 = load i32, i32* @yyival, align 4
  %mul362 = mul i32 %161, 16
  %162 = load i32, i32* %c, align 4
  %add363 = add i32 %mul362, %162
  %sub364 = sub i32 %add363, 97
  %add365 = add i32 %sub364, 10
  store i32 %add365, i32* @yyival, align 4
  br label %if.end.379

if.else.366:                                      ; preds = %land.lhs.true.358, %if.else.355
  %163 = load i32, i32* %c, align 4
  %cmp367 = icmp sge i32 %163, 65
  br i1 %cmp367, label %land.lhs.true.369, label %if.else.377

land.lhs.true.369:                                ; preds = %if.else.366
  %164 = load i32, i32* %c, align 4
  %cmp370 = icmp sle i32 %164, 70
  br i1 %cmp370, label %if.then.372, label %if.else.377

if.then.372:                                      ; preds = %land.lhs.true.369
  %165 = load i32, i32* @yyival, align 4
  %mul373 = mul i32 %165, 16
  %166 = load i32, i32* %c, align 4
  %add374 = add i32 %mul373, %166
  %sub375 = sub i32 %add374, 65
  %add376 = add i32 %sub375, 10
  store i32 %add376, i32* @yyival, align 4
  br label %if.end.378

if.else.377:                                      ; preds = %land.lhs.true.369, %if.else.366
  br label %while.end.381

if.end.378:                                       ; preds = %if.then.372
  br label %if.end.379

if.end.379:                                       ; preds = %if.end.378, %if.then.361
  br label %if.end.380

if.end.380:                                       ; preds = %if.end.379, %if.then.353
  br label %while.cond.344

while.end.381:                                    ; preds = %if.else.377, %while.cond.344
  br label %int_suffixes

if.else.382:                                      ; preds = %lor.lhs.false
  %167 = load i32, i32* %c, align 4
  %cmp383 = icmp eq i32 %167, 46
  br i1 %cmp383, label %if.then.385, label %if.end.386

if.then.385:                                      ; preds = %if.else.382
  br label %mantissa

if.end.386:                                       ; preds = %if.else.382
  br label %if.end.387

if.end.387:                                       ; preds = %if.end.386
  br label %while.cond.388

while.cond.388:                                   ; preds = %while.body.395, %if.end.387
  %168 = load i32, i32* %c, align 4
  %cmp389 = icmp sge i32 %168, 48
  br i1 %cmp389, label %land.rhs.391, label %land.end.394

land.rhs.391:                                     ; preds = %while.cond.388
  %169 = load i32, i32* %c, align 4
  %cmp392 = icmp sle i32 %169, 55
  br label %land.end.394

land.end.394:                                     ; preds = %land.rhs.391, %while.cond.388
  %170 = phi i1 [ false, %while.cond.388 ], [ %cmp392, %land.rhs.391 ]
  br i1 %170, label %while.body.395, label %while.end.401

while.body.395:                                   ; preds = %land.end.394
  %171 = load i32, i32* @yyival, align 4
  %shl396 = shl i32 %171, 3
  %172 = load i32, i32* %c, align 4
  %add397 = add i32 %shl396, %172
  %sub398 = sub i32 %add397, 48
  store i32 %sub398, i32* @yyival, align 4
  %173 = load i8*, i8** @in, align 8
  %incdec.ptr399 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %incdec.ptr399, i8** @in, align 8
  %174 = load i8, i8* %173, align 1
  %conv400 = sext i8 %174 to i32
  store i32 %conv400, i32* %c, align 4
  br label %while.cond.388

while.end.401:                                    ; preds = %land.end.394
  br label %int_suffixes

int_suffixes:                                     ; preds = %if.then.433, %while.end.401, %while.end.381
  br label %while.cond.402

while.cond.402:                                   ; preds = %while.body.408, %int_suffixes
  %175 = load i32, i32* %c, align 4
  %idxprom403 = sext i32 %175 to i64
  %call404 = call i16** @__ctype_b_loc() #11
  %176 = load i16*, i16** %call404, align 8
  %arrayidx405 = getelementptr inbounds i16, i16* %176, i64 %idxprom403
  %177 = load i16, i16* %arrayidx405, align 2
  %conv406 = zext i16 %177 to i32
  %and = and i32 %conv406, 1024
  %tobool407 = icmp ne i32 %and, 0
  br i1 %tobool407, label %while.body.408, label %while.end.411

while.body.408:                                   ; preds = %while.cond.402
  %178 = load i8*, i8** @in, align 8
  %incdec.ptr409 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %incdec.ptr409, i8** @in, align 8
  %179 = load i8, i8* %178, align 1
  %conv410 = sext i8 %179 to i32
  store i32 %conv410, i32* %c, align 4
  br label %while.cond.402

while.end.411:                                    ; preds = %while.cond.402
  %180 = load i8*, i8** @in, align 8
  %incdec.ptr412 = getelementptr inbounds i8, i8* %180, i32 -1
  store i8* %incdec.ptr412, i8** @in, align 8
  store i32 258, i32* %retval
  br label %return

sw.bb.413:                                        ; preds = %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end
  %181 = load i32, i32* %c, align 4
  %sub414 = sub nsw i32 %181, 48
  store i32 %sub414, i32* @yyival, align 4
  br label %while.cond.415

while.cond.415:                                   ; preds = %while.body.426, %sw.bb.413
  %182 = load i8*, i8** @in, align 8
  %incdec.ptr416 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %incdec.ptr416, i8** @in, align 8
  %183 = load i8, i8* %182, align 1
  %conv417 = sext i8 %183 to i32
  store i32 %conv417, i32* %c, align 4
  %tobool418 = icmp ne i32 %conv417, 0
  br i1 %tobool418, label %land.rhs.419, label %land.end.425

land.rhs.419:                                     ; preds = %while.cond.415
  %184 = load i32, i32* %c, align 4
  %conv420 = trunc i32 %184 to i8
  %idxprom421 = zext i8 %conv420 to i64
  %arrayidx422 = getelementptr inbounds [255 x i8], [255 x i8]* @is_digit, i32 0, i64 %idxprom421
  %185 = load i8, i8* %arrayidx422, align 1
  %conv423 = sext i8 %185 to i32
  %tobool424 = icmp ne i32 %conv423, 0
  br label %land.end.425

land.end.425:                                     ; preds = %land.rhs.419, %while.cond.415
  %186 = phi i1 [ false, %while.cond.415 ], [ %tobool424, %land.rhs.419 ]
  br i1 %186, label %while.body.426, label %while.end.430

while.body.426:                                   ; preds = %land.end.425
  %187 = load i32, i32* @yyival, align 4
  %mul427 = mul i32 10, %187
  %188 = load i32, i32* %c, align 4
  %add428 = add i32 %mul427, %188
  %sub429 = sub i32 %add428, 48
  store i32 %sub429, i32* @yyival, align 4
  br label %while.cond.415

while.end.430:                                    ; preds = %land.end.425
  %189 = load i32, i32* %c, align 4
  %cmp431 = icmp ne i32 %189, 46
  br i1 %cmp431, label %if.then.433, label %if.end.434

if.then.433:                                      ; preds = %while.end.430
  br label %int_suffixes

if.end.434:                                       ; preds = %while.end.430
  br label %mantissa

mantissa:                                         ; preds = %if.end.434, %if.then.385, %if.end.276
  br label %while.cond.435

while.cond.435:                                   ; preds = %while.body.440, %mantissa
  %190 = load i32, i32* %c, align 4
  %conv436 = trunc i32 %190 to i8
  %idxprom437 = zext i8 %conv436 to i64
  %arrayidx438 = getelementptr inbounds [255 x i8], [255 x i8]* @is_digit, i32 0, i64 %idxprom437
  %191 = load i8, i8* %arrayidx438, align 1
  %tobool439 = icmp ne i8 %191, 0
  br i1 %tobool439, label %while.body.440, label %while.end.443

while.body.440:                                   ; preds = %while.cond.435
  %192 = load i8*, i8** @in, align 8
  %incdec.ptr441 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %incdec.ptr441, i8** @in, align 8
  %193 = load i8, i8* %192, align 1
  %conv442 = sext i8 %193 to i32
  store i32 %conv442, i32* %c, align 4
  br label %while.cond.435

while.end.443:                                    ; preds = %while.cond.435
  %194 = load i32, i32* %c, align 4
  %cmp444 = icmp eq i32 %194, 69
  br i1 %cmp444, label %if.then.449, label %lor.lhs.false.446

lor.lhs.false.446:                                ; preds = %while.end.443
  %195 = load i32, i32* %c, align 4
  %cmp447 = icmp eq i32 %195, 101
  br i1 %cmp447, label %if.then.449, label %if.end.470

if.then.449:                                      ; preds = %lor.lhs.false.446, %while.end.443
  %196 = load i8*, i8** @in, align 8
  %incdec.ptr450 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %incdec.ptr450, i8** @in, align 8
  %197 = load i8, i8* %196, align 1
  %conv451 = sext i8 %197 to i32
  store i32 %conv451, i32* %c, align 4
  %cmp452 = icmp eq i32 %conv451, 45
  br i1 %cmp452, label %if.then.457, label %lor.lhs.false.454

lor.lhs.false.454:                                ; preds = %if.then.449
  %198 = load i32, i32* %c, align 4
  %cmp455 = icmp eq i32 %198, 43
  br i1 %cmp455, label %if.then.457, label %if.end.460

if.then.457:                                      ; preds = %lor.lhs.false.454, %if.then.449
  %199 = load i8*, i8** @in, align 8
  %incdec.ptr458 = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %incdec.ptr458, i8** @in, align 8
  %200 = load i8, i8* %199, align 1
  %conv459 = sext i8 %200 to i32
  store i32 %conv459, i32* %c, align 4
  br label %if.end.460

if.end.460:                                       ; preds = %if.then.457, %lor.lhs.false.454
  br label %while.cond.461

while.cond.461:                                   ; preds = %while.body.466, %if.end.460
  %201 = load i32, i32* %c, align 4
  %conv462 = trunc i32 %201 to i8
  %idxprom463 = zext i8 %conv462 to i64
  %arrayidx464 = getelementptr inbounds [255 x i8], [255 x i8]* @is_digit, i32 0, i64 %idxprom463
  %202 = load i8, i8* %arrayidx464, align 1
  %tobool465 = icmp ne i8 %202, 0
  br i1 %tobool465, label %while.body.466, label %while.end.469

while.body.466:                                   ; preds = %while.cond.461
  %203 = load i8*, i8** @in, align 8
  %incdec.ptr467 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %incdec.ptr467, i8** @in, align 8
  %204 = load i8, i8* %203, align 1
  %conv468 = sext i8 %204 to i32
  store i32 %conv468, i32* %c, align 4
  br label %while.cond.461

while.end.469:                                    ; preds = %while.cond.461
  br label %if.end.470

if.end.470:                                       ; preds = %while.end.469, %lor.lhs.false.446
  br label %while.cond.471

while.cond.471:                                   ; preds = %while.body.478, %if.end.470
  %205 = load i32, i32* %c, align 4
  %idxprom472 = sext i32 %205 to i64
  %call473 = call i16** @__ctype_b_loc() #11
  %206 = load i16*, i16** %call473, align 8
  %arrayidx474 = getelementptr inbounds i16, i16* %206, i64 %idxprom472
  %207 = load i16, i16* %arrayidx474, align 2
  %conv475 = zext i16 %207 to i32
  %and476 = and i32 %conv475, 1024
  %tobool477 = icmp ne i32 %and476, 0
  br i1 %tobool477, label %while.body.478, label %while.end.481

while.body.478:                                   ; preds = %while.cond.471
  %208 = load i8*, i8** @in, align 8
  %incdec.ptr479 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %incdec.ptr479, i8** @in, align 8
  %209 = load i8, i8* %208, align 1
  %conv480 = sext i8 %209 to i32
  store i32 %conv480, i32* %c, align 4
  br label %while.cond.471

while.end.481:                                    ; preds = %while.cond.471
  %210 = load i8*, i8** @in, align 8
  %incdec.ptr482 = getelementptr inbounds i8, i8* %210, i32 -1
  store i8* %incdec.ptr482, i8** @in, align 8
  store i32 259, i32* %retval
  br label %return

sw.default.483:                                   ; preds = %while.end
  br label %sw.epilog.484

sw.epilog.484:                                    ; preds = %sw.default.483, %if.end.334, %sw.epilog.171, %sw.bb.4, %sw.bb.2, %sw.bb
  br label %for.cond

return:                                           ; preds = %while.end.481, %while.end.411, %sw.bb.335, %if.then.333, %sw.epilog.327, %if.end.325, %if.then.324, %sw.bb.318, %sw.epilog.313, %if.end.311, %if.then.310, %sw.bb.304, %if.end.299, %if.then.298, %if.end.291, %if.then.290, %if.end.283, %if.then.282, %if.then.272, %if.end.265, %if.then.255, %if.end.248, %if.then.247, %if.end.240, %if.then.238, %if.then.234, %if.end.227, %if.then.225, %if.then.221, %if.end.214, %if.then.213, %if.end.206, %if.then.205, %sw.epilog.198, %sw.bb.197, %if.end.195, %if.then.194, %sw.bb.188, %if.end.183, %if.then.181, %if.then.177, %sw.default.169, %if.then.166, %sw.bb.152, %for.end.127, %if.then.124, %end_string, %sw.bb.3
  %211 = load i32, i32* %retval
  ret i32 %211
}

; Function Attrs: nounwind uwtable
define internal %struct.link* @match_qualified_namespace_alias() #0 {
entry:
  %head = alloca %struct.link*, align 8
  %cur = alloca %struct.link*, align 8
  %tmp = alloca %struct.link*, align 8
  store %struct.link* null, %struct.link** %head, align 8
  store %struct.link* null, %struct.link** %cur, align 8
  store %struct.link* null, %struct.link** %tmp, align 8
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %entry
  %call = call i32 @yylex()
  store i32 %call, i32* @tk, align 4
  %0 = load i32, i32* @tk, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  %call1 = call i32 @yylex()
  store i32 %call1, i32* @tk, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %1 = load i32, i32* @tk, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call1, %cond.true ], [ %1, %cond.false ]
  switch i32 %cond, label %sw.default [
    i32 264, label %sw.bb
    i32 279, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %cond.end
  %call2 = call i8* @xmalloc(i64 16)
  %2 = bitcast i8* %call2 to %struct.link*
  store %struct.link* %2, %struct.link** %tmp, align 8
  %3 = load i8*, i8** @yytext, align 8
  %4 = load %struct.link*, %struct.link** %cur, align 8
  %tobool = icmp ne %struct.link* %4, null
  br i1 %tobool, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %sw.bb
  %5 = load %struct.link*, %struct.link** %cur, align 8
  %sym = getelementptr inbounds %struct.link, %struct.link* %5, i32 0, i32 0
  %6 = load %struct.sym*, %struct.sym** %sym, align 8
  br label %cond.end.5

cond.false.4:                                     ; preds = %sw.bb
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.false.4, %cond.true.3
  %cond6 = phi %struct.sym* [ %6, %cond.true.3 ], [ null, %cond.false.4 ]
  %call7 = call %struct.sym* @find_namespace(i8* %3, %struct.sym* %cond6)
  %7 = load %struct.link*, %struct.link** %tmp, align 8
  %sym8 = getelementptr inbounds %struct.link, %struct.link* %7, i32 0, i32 0
  store %struct.sym* %call7, %struct.sym** %sym8, align 8
  %8 = load %struct.link*, %struct.link** %tmp, align 8
  %next = getelementptr inbounds %struct.link, %struct.link* %8, i32 0, i32 1
  store %struct.link* null, %struct.link** %next, align 8
  %9 = load %struct.link*, %struct.link** %head, align 8
  %tobool9 = icmp ne %struct.link* %9, null
  br i1 %tobool9, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.5
  %10 = load %struct.link*, %struct.link** %tmp, align 8
  %11 = load %struct.link*, %struct.link** %cur, align 8
  %next10 = getelementptr inbounds %struct.link, %struct.link* %11, i32 0, i32 1
  store %struct.link* %10, %struct.link** %next10, align 8
  store %struct.link* %10, %struct.link** %cur, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end.5
  %12 = load %struct.link*, %struct.link** %tmp, align 8
  store %struct.link* %12, %struct.link** %cur, align 8
  store %struct.link* %12, %struct.link** %head, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.11:                                         ; preds = %cond.end
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  %13 = load %struct.link*, %struct.link** %head, align 8
  ret %struct.link* %13

sw.epilog:                                        ; preds = %sw.bb.11, %if.end
  br label %for.cond
}

; Function Attrs: nounwind uwtable
define internal void @register_namespace_alias(i8* %new_name, %struct.link* %old_name) #0 {
entry:
  %new_name.addr = alloca i8*, align 8
  %old_name.addr = alloca %struct.link*, align 8
  %h = alloca i32, align 4
  %s = alloca i8*, align 8
  %al = alloca %struct.alias*, align 8
  store i8* %new_name, i8** %new_name.addr, align 8
  store %struct.link* %old_name, %struct.link** %old_name.addr, align 8
  %0 = load i8*, i8** %new_name.addr, align 8
  store i8* %0, i8** %s, align 8
  store i32 0, i32* %h, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8*, i8** %s, align 8
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %h, align 4
  %shl = shl i32 %3, 1
  %4 = load i8*, i8** %s, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %xor = xor i32 %shl, %conv
  store i32 %xor, i32* %h, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %h, align 4
  %rem = urem i32 %7, 1001
  store i32 %rem, i32* %h, align 4
  %8 = load i32, i32* %h, align 4
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds [1001 x %struct.alias*], [1001 x %struct.alias*]* @namespace_alias_table, i32 0, i64 %idxprom
  %9 = load %struct.alias*, %struct.alias** %arrayidx, align 8
  store %struct.alias* %9, %struct.alias** %al, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.6, %for.end
  %10 = load %struct.alias*, %struct.alias** %al, align 8
  %tobool2 = icmp ne %struct.alias* %10, null
  br i1 %tobool2, label %for.body.3, label %for.end.7

for.body.3:                                       ; preds = %for.cond.1
  %11 = load i8*, i8** %new_name.addr, align 8
  %12 = load %struct.alias*, %struct.alias** %al, align 8
  %name = getelementptr inbounds %struct.alias, %struct.alias* %12, i32 0, i32 3
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %name, i32 0, i32 0
  %call = call zeroext i1 @streq(i8* %11, i8* %arraydecay)
  br i1 %call, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.3
  %13 = load %struct.alias*, %struct.alias** %al, align 8
  %namesp = getelementptr inbounds %struct.alias, %struct.alias* %13, i32 0, i32 1
  %14 = load %struct.sym*, %struct.sym** %namesp, align 8
  %15 = load %struct.sym*, %struct.sym** @current_namespace, align 8
  %cmp = icmp eq %struct.sym* %14, %15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body.3
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.end
  %16 = load %struct.alias*, %struct.alias** %al, align 8
  %next = getelementptr inbounds %struct.alias, %struct.alias* %16, i32 0, i32 0
  %17 = load %struct.alias*, %struct.alias** %next, align 8
  store %struct.alias* %17, %struct.alias** %al, align 8
  br label %for.cond.1

for.end.7:                                        ; preds = %for.cond.1
  %18 = load i8*, i8** %new_name.addr, align 8
  %call8 = call i64 @strlen(i8* %18) #8
  %add = add i64 24, %call8
  %add9 = add i64 %add, 1
  %call10 = call i8* @xmalloc(i64 %add9)
  %19 = bitcast i8* %call10 to %struct.alias*
  store %struct.alias* %19, %struct.alias** %al, align 8
  %20 = load %struct.alias*, %struct.alias** %al, align 8
  %name11 = getelementptr inbounds %struct.alias, %struct.alias* %20, i32 0, i32 3
  %arraydecay12 = getelementptr inbounds [0 x i8], [0 x i8]* %name11, i32 0, i32 0
  %21 = load i8*, i8** %new_name.addr, align 8
  %call13 = call i8* @strcpy(i8* %arraydecay12, i8* %21) #6
  %22 = load i32, i32* %h, align 4
  %idxprom14 = zext i32 %22 to i64
  %arrayidx15 = getelementptr inbounds [1001 x %struct.alias*], [1001 x %struct.alias*]* @namespace_alias_table, i32 0, i64 %idxprom14
  %23 = load %struct.alias*, %struct.alias** %arrayidx15, align 8
  %24 = load %struct.alias*, %struct.alias** %al, align 8
  %next16 = getelementptr inbounds %struct.alias, %struct.alias* %24, i32 0, i32 0
  store %struct.alias* %23, %struct.alias** %next16, align 8
  %25 = load %struct.sym*, %struct.sym** @current_namespace, align 8
  %26 = load %struct.alias*, %struct.alias** %al, align 8
  %namesp17 = getelementptr inbounds %struct.alias, %struct.alias* %26, i32 0, i32 1
  store %struct.sym* %25, %struct.sym** %namesp17, align 8
  %27 = load %struct.link*, %struct.link** %old_name.addr, align 8
  %28 = load %struct.alias*, %struct.alias** %al, align 8
  %aliasee = getelementptr inbounds %struct.alias, %struct.alias* %28, i32 0, i32 2
  store %struct.link* %27, %struct.link** %aliasee, align 8
  %29 = load %struct.alias*, %struct.alias** %al, align 8
  %30 = load i32, i32* %h, align 4
  %idxprom18 = zext i32 %30 to i64
  %arrayidx19 = getelementptr inbounds [1001 x %struct.alias*], [1001 x %struct.alias*]* @namespace_alias_table, i32 0, i64 %idxprom18
  store %struct.alias* %29, %struct.alias** %arrayidx19, align 8
  br label %return

return:                                           ; preds = %for.end.7, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @skip_to(i32 %token) #0 {
entry:
  %token.addr = alloca i32, align 4
  store i32 %token, i32* %token.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* @tk, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %1 = load i32, i32* @tk, align 4
  %2 = load i32, i32* %token.addr, align 4
  %cmp1 = icmp eq i32 %1, %2
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %3 = phi i1 [ true, %while.cond ], [ %cmp1, %lor.rhs ]
  %lnot = xor i1 %3, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %call = call i32 @yylex()
  store i32 %call, i32* @tk, align 4
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %4 = load i32, i32* @tk, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal void @enter_namespace(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %p = alloca %struct.sym*, align 8
  %size = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load %struct.sym*, %struct.sym** @current_namespace, align 8
  %call = call %struct.sym* @find_namespace(i8* %0, %struct.sym* %1)
  store %struct.sym* %call, %struct.sym** %p, align 8
  %2 = load i32, i32* @namespace_sp, align 4
  %3 = load i32, i32* @namespace_stack_size, align 4
  %cmp = icmp eq i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* @namespace_stack_size, align 4
  %mul = mul nsw i32 2, %4
  %cmp1 = icmp sgt i32 10, %mul
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %5 = load i32, i32* @namespace_stack_size, align 4
  %mul2 = mul nsw i32 2, %5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 10, %cond.true ], [ %mul2, %cond.false ]
  store i32 %cond, i32* %size, align 4
  %6 = load %struct.sym**, %struct.sym*** @namespace_stack, align 8
  %7 = bitcast %struct.sym** %6 to i8*
  %8 = load i32, i32* %size, align 4
  %conv = sext i32 %8 to i64
  %mul3 = mul i64 %conv, 8
  %call4 = call i8* @xrealloc(i8* %7, i64 %mul3)
  %9 = bitcast i8* %call4 to %struct.sym**
  store %struct.sym** %9, %struct.sym*** @namespace_stack, align 8
  %10 = load i32, i32* %size, align 4
  store i32 %10, i32* @namespace_stack_size, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %11 = load %struct.sym*, %struct.sym** @current_namespace, align 8
  %12 = load i32, i32* @namespace_sp, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* @namespace_sp, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.sym**, %struct.sym*** @namespace_stack, align 8
  %arrayidx = getelementptr inbounds %struct.sym*, %struct.sym** %13, i64 %idxprom
  store %struct.sym* %11, %struct.sym** %arrayidx, align 8
  %14 = load %struct.sym*, %struct.sym** %p, align 8
  store %struct.sym* %14, %struct.sym** @current_namespace, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @leave_namespace() #0 {
entry:
  %0 = load i32, i32* @namespace_sp, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.110, i32 0, i32 0), i32 1100, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.leave_namespace, i32 0, i32 0)) #10
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load i32, i32* @namespace_sp, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* @namespace_sp, align 4
  %idxprom = sext i32 %dec to i64
  %3 = load %struct.sym**, %struct.sym*** @namespace_stack, align 8
  %arrayidx = getelementptr inbounds %struct.sym*, %struct.sym** %3, i64 %idxprom
  %4 = load %struct.sym*, %struct.sym** %arrayidx, align 8
  store %struct.sym* %4, %struct.sym** @current_namespace, align 8
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @set_flag(i32* %f, i32 %flag) #0 {
entry:
  %f.addr = alloca i32*, align 8
  %flag.addr = alloca i32, align 4
  store i32* %f, i32** %f.addr, align 8
  store i32 %flag, i32* %flag.addr, align 4
  %0 = load i32, i32* %flag.addr, align 4
  %1 = load i32*, i32** %f.addr, align 8
  %2 = load i32, i32* %1, align 4
  %or = or i32 %2, %0
  store i32 %or, i32* %1, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @skip_matching() #0 {
entry:
  %open = alloca i32, align 4
  %close = alloca i32, align 4
  %n = alloca i32, align 4
  %0 = load i32, i32* @tk, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call = call i32 @yylex()
  store i32 %call, i32* @tk, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i32, i32* @tk, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %1, %cond.false ]
  store i32 %cond, i32* %open, align 4
  switch i32 %cond, label %sw.default [
    i32 123, label %sw.bb
    i32 40, label %sw.bb.1
    i32 60, label %sw.bb.2
    i32 91, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %cond.end
  store i32 125, i32* %close, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %cond.end
  store i32 41, i32* %close, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %cond.end
  store i32 62, i32* %close, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %cond.end
  store i32 93, i32* %close, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  call void @abort() #10
  unreachable

sw.epilog:                                        ; preds = %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.15, %sw.epilog
  %2 = load i32, i32* @tk, align 4
  %3 = load i32, i32* %open, align 4
  %cmp4 = icmp eq i32 %2, %3
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %4 = load i32, i32* %n, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %n, align 4
  br label %if.end.11

if.else:                                          ; preds = %for.cond
  %5 = load i32, i32* @tk, align 4
  %6 = load i32, i32* %close, align 4
  %cmp5 = icmp eq i32 %5, %6
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else
  %7 = load i32, i32* %n, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %n, align 4
  br label %if.end.10

if.else.7:                                        ; preds = %if.else
  %8 = load i32, i32* @tk, align 4
  %cmp8 = icmp eq i32 %8, 0
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.else.7
  br label %for.end

if.end:                                           ; preds = %if.else.7
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then.6
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then
  %call12 = call i32 @yylex()
  store i32 %call12, i32* @tk, align 4
  %9 = load i32, i32* %n, align 4
  %cmp13 = icmp eq i32 %9, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  br label %for.end

if.end.15:                                        ; preds = %if.end.11
  br label %for.cond

for.end:                                          ; preds = %if.then.14, %if.then.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @class_definition(%struct.sym* %containing, i32 %tag, i32 %flags, i32 %nested) #0 {
entry:
  %containing.addr = alloca %struct.sym*, align 8
  %tag.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %nested.addr = alloca i32, align 4
  %current = alloca %struct.sym*, align 8
  %base_class = alloca %struct.sym*, align 8
  %done = alloca i32, align 4
  store %struct.sym* %containing, %struct.sym** %containing.addr, align 8
  store i32 %tag, i32* %tag.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i32 %nested, i32* %nested.addr, align 4
  %0 = load i32, i32* %tag.addr, align 4
  %cmp = icmp ne i32 %0, 292
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @f_structs, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %nested.addr, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %land.lhs.true.2, label %if.else

land.lhs.true.2:                                  ; preds = %lor.lhs.false
  %3 = load i32, i32* @f_nested_classes, align 4
  %tobool3 = icmp ne i32 %3, 0
  br i1 %tobool3, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true.2, %land.lhs.true
  store %struct.sym* null, %struct.sym** %current, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.2, %lor.lhs.false
  %4 = load i8*, i8** @yytext, align 8
  %5 = load %struct.sym*, %struct.sym** %containing.addr, align 8
  %call = call %struct.sym* @add_sym(i8* %4, %struct.sym* %5)
  store %struct.sym* %call, %struct.sym** %current, align 8
  %6 = load i8*, i8** @in, align 8
  %7 = load i8*, i8** @inbuffer, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %8 = load %struct.sym*, %struct.sym** %current, align 8
  %pos = getelementptr inbounds %struct.sym, %struct.sym* %8, i32 0, i32 12
  store i32 %conv, i32* %pos, align 4
  %call4 = call i8* @matching_regexp()
  %9 = load %struct.sym*, %struct.sym** %current, align 8
  %regexp = getelementptr inbounds %struct.sym, %struct.sym* %9, i32 0, i32 11
  store i8* %call4, i8** %regexp, align 8
  %10 = load i8*, i8** @filename, align 8
  %11 = load %struct.sym*, %struct.sym** %current, align 8
  %filename = getelementptr inbounds %struct.sym, %struct.sym* %11, i32 0, i32 13
  store i8* %10, i8** %filename, align 8
  %12 = load i32, i32* %flags.addr, align 4
  %13 = load %struct.sym*, %struct.sym** %current, align 8
  %flags5 = getelementptr inbounds %struct.sym, %struct.sym* %13, i32 0, i32 0
  store i32 %12, i32* %flags5, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load i32, i32* @tk, align 4
  %cmp6 = icmp eq i32 %14, 58
  br i1 %cmp6, label %if.then.8, label %if.end.40

if.then.8:                                        ; preds = %if.end
  store i32 0, i32* %done, align 4
  %call9 = call i32 @yylex()
  store i32 %call9, i32* @tk, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.then.8
  %15 = load i32, i32* %done, align 4
  %tobool10 = icmp ne i32 %15, 0
  %lnot = xor i1 %tobool10, true
  br i1 %lnot, label %while.body, label %while.end.39

while.body:                                       ; preds = %while.cond
  %16 = load i32, i32* @tk, align 4
  %cmp11 = icmp eq i32 %16, -1
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %call13 = call i32 @yylex()
  store i32 %call13, i32* @tk, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %17 = load i32, i32* @tk, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call13, %cond.true ], [ %17, %cond.false ]
  switch i32 %cond, label %sw.default [
    i32 330, label %sw.bb
    i32 314, label %sw.bb
    i32 313, label %sw.bb
    i32 312, label %sw.bb
    i32 264, label %sw.bb.15
    i32 44, label %sw.bb.25
    i32 123, label %sw.bb.38
  ]

sw.bb:                                            ; preds = %cond.end, %cond.end, %cond.end, %cond.end
  %call14 = call i32 @yylex()
  store i32 %call14, i32* @tk, align 4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %cond.end
  %call16 = call %struct.sym* @parse_classname()
  store %struct.sym* %call16, %struct.sym** %base_class, align 8
  %18 = load %struct.sym*, %struct.sym** %base_class, align 8
  %tobool17 = icmp ne %struct.sym* %18, null
  br i1 %tobool17, label %land.lhs.true.18, label %if.end.24

land.lhs.true.18:                                 ; preds = %sw.bb.15
  %19 = load %struct.sym*, %struct.sym** %current, align 8
  %tobool19 = icmp ne %struct.sym* %19, null
  br i1 %tobool19, label %land.lhs.true.20, label %if.end.24

land.lhs.true.20:                                 ; preds = %land.lhs.true.18
  %20 = load %struct.sym*, %struct.sym** %base_class, align 8
  %21 = load %struct.sym*, %struct.sym** %current, align 8
  %cmp21 = icmp ne %struct.sym* %20, %21
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %land.lhs.true.20
  %22 = load %struct.sym*, %struct.sym** %base_class, align 8
  %23 = load %struct.sym*, %struct.sym** %current, align 8
  call void @add_link(%struct.sym* %22, %struct.sym* %23)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %land.lhs.true.20, %land.lhs.true.18, %sw.bb.15
  br label %sw.epilog

sw.bb.25:                                         ; preds = %cond.end
  %call26 = call i32 @yylex()
  store i32 %call26, i32* @tk, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  br label %while.cond.27

while.cond.27:                                    ; preds = %while.body.36, %sw.default
  %24 = load i32, i32* @tk, align 4
  %cmp28 = icmp eq i32 %24, 59
  br i1 %cmp28, label %lor.end, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %while.cond.27
  %25 = load i32, i32* @tk, align 4
  %cmp31 = icmp eq i32 %25, 0
  br i1 %cmp31, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.30
  %26 = load i32, i32* @tk, align 4
  %cmp33 = icmp eq i32 %26, 123
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.30, %while.cond.27
  %27 = phi i1 [ true, %lor.lhs.false.30 ], [ true, %while.cond.27 ], [ %cmp33, %lor.rhs ]
  %lnot35 = xor i1 %27, true
  br i1 %lnot35, label %while.body.36, label %while.end

while.body.36:                                    ; preds = %lor.end
  %call37 = call i32 @yylex()
  store i32 %call37, i32* @tk, align 4
  br label %while.cond.27

while.end:                                        ; preds = %lor.end
  store i32 1, i32* %done, align 4
  br label %sw.bb.38

sw.bb.38:                                         ; preds = %cond.end, %while.end
  store i32 1, i32* %done, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.38, %sw.bb.25, %if.end.24, %sw.bb
  br label %while.cond

while.end.39:                                     ; preds = %while.cond
  br label %if.end.40

if.end.40:                                        ; preds = %while.end.39, %if.end
  %28 = load i32, i32* @tk, align 4
  %cmp41 = icmp eq i32 %28, 123
  br i1 %cmp41, label %if.then.43, label %if.end.64

if.then.43:                                       ; preds = %if.end.40
  %29 = load i32, i32* %tag.addr, align 4
  %cmp44 = icmp ne i32 %29, 292
  br i1 %cmp44, label %land.lhs.true.46, label %if.else.49

land.lhs.true.46:                                 ; preds = %if.then.43
  %30 = load i32, i32* @f_structs, align 4
  %tobool47 = icmp ne i32 %30, 0
  br i1 %tobool47, label %if.else.49, label %if.then.48

if.then.48:                                       ; preds = %land.lhs.true.46
  call void @skip_matching()
  br label %if.end.63

if.else.49:                                       ; preds = %land.lhs.true.46, %if.then.43
  %call50 = call i32 @yylex()
  store i32 %call50, i32* @tk, align 4
  %31 = load %struct.sym*, %struct.sym** %current, align 8
  %32 = load i32, i32* %tag.addr, align 4
  call void @class_body(%struct.sym* %31, i32 %32)
  %33 = load i32, i32* @tk, align 4
  %cmp51 = icmp eq i32 %33, 125
  br i1 %cmp51, label %if.then.53, label %if.end.62

if.then.53:                                       ; preds = %if.else.49
  %call54 = call i32 @yylex()
  store i32 %call54, i32* @tk, align 4
  %34 = load i32, i32* @tk, align 4
  %cmp55 = icmp eq i32 %34, 59
  br i1 %cmp55, label %land.lhs.true.57, label %if.end.61

land.lhs.true.57:                                 ; preds = %if.then.53
  %35 = load i32, i32* %nested.addr, align 4
  %tobool58 = icmp ne i32 %35, 0
  br i1 %tobool58, label %if.end.61, label %if.then.59

if.then.59:                                       ; preds = %land.lhs.true.57
  %call60 = call i32 @yylex()
  store i32 %call60, i32* @tk, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.59, %land.lhs.true.57, %if.then.53
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.else.49
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.48
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.end.40
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @declaration(i32 %flags) #0 {
entry:
  %flags.addr = alloca i32, align 4
  %id = alloca i8*, align 8
  %cls = alloca %struct.sym*, align 8
  %regexp = alloca i8*, align 8
  %pos = alloca i32, align 4
  %hash = alloca i32, align 4
  %is_constructor = alloca i32, align 4
  %sc = alloca i32, align 4
  %s = alloca i8*, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i8* null, i8** %id, align 8
  store %struct.sym* null, %struct.sym** %cls, align 8
  store i8* null, i8** %regexp, align 8
  store i32 0, i32* %pos, align 4
  store i32 0, i32* %hash, align 4
  store i32 0, i32* %sc, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i32, i32* @tk, align 4
  %cmp = icmp eq i32 %0, 59
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %1 = load i32, i32* @tk, align 4
  %cmp1 = icmp eq i32 %1, 123
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %2 = load i32, i32* @tk, align 4
  %cmp2 = icmp eq i32 %2, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %while.cond
  %3 = phi i1 [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp2, %lor.rhs ]
  %lnot = xor i1 %3, true
  br i1 %lnot, label %while.body, label %while.end.99

while.body:                                       ; preds = %lor.end
  %4 = load i32, i32* @tk, align 4
  %cmp3 = icmp eq i32 %4, -1
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %call = call i32 @yylex()
  store i32 %call, i32* @tk, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %5 = load i32, i32* @tk, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %5, %cond.false ]
  switch i32 %cond, label %sw.default [
    i32 91, label %sw.bb
    i32 300, label %sw.bb.5
    i32 327, label %sw.bb.5
    i32 320, label %sw.bb.7
    i32 308, label %sw.bb.9
    i32 291, label %sw.bb.9
    i32 309, label %sw.bb.9
    i32 329, label %sw.bb.9
    i32 318, label %sw.bb.9
    i32 293, label %sw.bb.9
    i32 298, label %sw.bb.9
    i32 331, label %sw.bb.9
    i32 317, label %sw.bb.9
    i32 332, label %sw.bb.9
    i32 335, label %sw.bb.9
    i32 348, label %sw.bb.9
    i32 292, label %sw.bb.11
    i32 321, label %sw.bb.11
    i32 328, label %sw.bb.11
    i32 61, label %sw.bb.12
    i32 44, label %sw.bb.13
    i32 311, label %sw.bb.14
    i32 307, label %sw.bb.19
    i32 126, label %sw.bb.21
    i32 264, label %sw.bb.31
    i32 40, label %sw.bb.33
  ]

sw.default:                                       ; preds = %cond.end
  %call4 = call i32 @yylex()
  store i32 %call4, i32* @tk, align 4
  br label %sw.epilog

sw.bb:                                            ; preds = %cond.end
  call void @skip_matching()
  br label %sw.epilog

sw.bb.5:                                          ; preds = %cond.end, %cond.end
  store i32 4, i32* %sc, align 4
  %call6 = call i32 @yylex()
  store i32 %call6, i32* @tk, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %cond.end
  store i32 2, i32* %sc, align 4
  %call8 = call i32 @yylex()
  store i32 %call8, i32* @tk, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end
  %call10 = call i32 @yylex()
  store i32 %call10, i32* @tk, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %cond.end, %cond.end, %cond.end
  %6 = load i8*, i8** %id, align 8
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.11
  %7 = load i8*, i8** %id, align 8
  call void @free(i8* %7) #6
  br label %return

if.end:                                           ; preds = %sw.bb.11
  br label %sw.bb.12

sw.bb.12:                                         ; preds = %cond.end, %if.end
  call void @skip_initializer()
  br label %sw.epilog

sw.bb.13:                                         ; preds = %cond.end
  %8 = load i32, i32* %flags.addr, align 4
  %9 = load i32, i32* %sc, align 4
  call void @add_declarator(%struct.sym** %cls, i8** %id, i32 %8, i32 %9)
  br label %sw.epilog

sw.bb.14:                                         ; preds = %cond.end
  %call15 = call i8* @operator_name(i32* %sc)
  store i8* %call15, i8** %s, align 8
  %10 = load i8*, i8** %id, align 8
  %11 = load i8*, i8** %s, align 8
  %call16 = call i64 @strlen(i8* %11) #8
  %add = add i64 %call16, 1
  %call17 = call i8* @xrealloc(i8* %10, i64 %add)
  store i8* %call17, i8** %id, align 8
  %12 = load i8*, i8** %id, align 8
  %13 = load i8*, i8** %s, align 8
  %call18 = call i8* @strcpy(i8* %12, i8* %13) #6
  br label %sw.epilog

sw.bb.19:                                         ; preds = %cond.end
  call void @set_flag(i32* %flags.addr, i32 2)
  %call20 = call i32 @yylex()
  store i32 %call20, i32* @tk, align 4
  br label %sw.epilog

sw.bb.21:                                         ; preds = %cond.end
  %call22 = call i32 @yylex()
  store i32 %call22, i32* @tk, align 4
  %14 = load i32, i32* @tk, align 4
  %cmp23 = icmp eq i32 %14, 264
  br i1 %cmp23, label %if.then.24, label %if.end.30

if.then.24:                                       ; preds = %sw.bb.21
  %15 = load i8*, i8** %id, align 8
  %16 = load i8*, i8** @yytext, align 8
  %call25 = call i64 @strlen(i8* %16) #8
  %add26 = add i64 %call25, 2
  %call27 = call i8* @xrealloc(i8* %15, i64 %add26)
  store i8* %call27, i8** %id, align 8
  %17 = load i8*, i8** %id, align 8
  store i8 126, i8* %17, align 1
  %18 = load i8*, i8** %id, align 8
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 1
  %19 = load i8*, i8** @yytext, align 8
  %call28 = call i8* @strcpy(i8* %add.ptr, i8* %19) #6
  %call29 = call i32 @yylex()
  store i32 %call29, i32* @tk, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.24, %sw.bb.21
  br label %sw.epilog

sw.bb.31:                                         ; preds = %cond.end
  %call32 = call %struct.sym* @parse_qualified_ident_or_type(i8** %id)
  store %struct.sym* %call32, %struct.sym** %cls, align 8
  br label %sw.epilog

sw.bb.33:                                         ; preds = %cond.end
  %20 = load %struct.sym*, %struct.sym** %cls, align 8
  %tobool34 = icmp ne %struct.sym* %20, null
  br i1 %tobool34, label %if.then.35, label %if.else.56

if.then.35:                                       ; preds = %sw.bb.33
  %call36 = call i32 @yylex()
  store i32 %call36, i32* @tk, align 4
  %21 = load i8*, i8** %id, align 8
  %tobool37 = icmp ne i8* %21, null
  br i1 %tobool37, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.35
  %22 = load %struct.sym*, %struct.sym** %cls, align 8
  %tobool38 = icmp ne %struct.sym* %22, null
  br i1 %tobool38, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %land.lhs.true
  %23 = load i8*, i8** %id, align 8
  %24 = load %struct.sym*, %struct.sym** %cls, align 8
  %name = getelementptr inbounds %struct.sym, %struct.sym* %24, i32 0, i32 16
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %name, i32 0, i32 0
  %call40 = call zeroext i1 @streq(i8* %23, i8* %arraydecay)
  %conv = zext i1 %call40 to i32
  store i32 %conv, i32* %is_constructor, align 4
  br i1 %call40, label %if.end.43, label %if.then.41

if.then.41:                                       ; preds = %if.then.39
  %call42 = call i8* @matching_regexp()
  store i8* %call42, i8** %regexp, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %if.then.39
  br label %if.end.44

if.else:                                          ; preds = %land.lhs.true, %if.then.35
  store i32 0, i32* %is_constructor, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.else, %if.end.43
  %25 = load i8*, i8** @in, align 8
  %26 = load i8*, i8** @inbuffer, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %25 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %26 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv45 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv45, i32* %pos, align 4
  %call46 = call i32 @parm_list(i32* %flags.addr)
  store i32 %call46, i32* %hash, align 4
  %27 = load i32, i32* %is_constructor, align 4
  %tobool47 = icmp ne i32 %27, 0
  br i1 %tobool47, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %if.end.44
  %call49 = call i8* @matching_regexp()
  store i8* %call49, i8** %regexp, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %if.end.44
  %28 = load i8*, i8** %id, align 8
  %tobool51 = icmp ne i8* %28, null
  br i1 %tobool51, label %land.lhs.true.52, label %if.end.55

land.lhs.true.52:                                 ; preds = %if.end.50
  %29 = load %struct.sym*, %struct.sym** %cls, align 8
  %tobool53 = icmp ne %struct.sym* %29, null
  br i1 %tobool53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %land.lhs.true.52
  %30 = load %struct.sym*, %struct.sym** %cls, align 8
  %31 = load i8*, i8** %id, align 8
  %32 = load i8*, i8** %regexp, align 8
  %33 = load i32, i32* %pos, align 4
  %34 = load i32, i32* %hash, align 4
  %35 = load i32, i32* %flags.addr, align 4
  call void @add_member_defn(%struct.sym* %30, i8* %31, i8* %32, i32 %33, i32 %34, i32 0, i32 0, i32 %35)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %land.lhs.true.52, %if.end.50
  br label %if.end.77

if.else.56:                                       ; preds = %sw.bb.33
  %call57 = call i32 @yylex()
  store i32 %call57, i32* @tk, align 4
  %36 = load i8*, i8** %id, align 8
  %tobool58 = icmp ne i8* %36, null
  br i1 %tobool58, label %if.then.59, label %if.end.66

if.then.59:                                       ; preds = %if.else.56
  %call60 = call i8* @matching_regexp()
  store i8* %call60, i8** %regexp, align 8
  %37 = load i8*, i8** @in, align 8
  %38 = load i8*, i8** @inbuffer, align 8
  %sub.ptr.lhs.cast61 = ptrtoint i8* %37 to i64
  %sub.ptr.rhs.cast62 = ptrtoint i8* %38 to i64
  %sub.ptr.sub63 = sub i64 %sub.ptr.lhs.cast61, %sub.ptr.rhs.cast62
  %conv64 = trunc i64 %sub.ptr.sub63 to i32
  store i32 %conv64, i32* %pos, align 4
  %call65 = call i32 @parm_list(i32* %flags.addr)
  store i32 %call65, i32* %hash, align 4
  %39 = load i8*, i8** %id, align 8
  %40 = load i8*, i8** %regexp, align 8
  %41 = load i32, i32* %pos, align 4
  %42 = load i32, i32* %hash, align 4
  %43 = load i32, i32* %sc, align 4
  %44 = load i32, i32* %flags.addr, align 4
  call void @add_global_decl(i8* %39, i8* %40, i32 %41, i32 %42, i32 0, i32 %43, i32 %44)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.59, %if.else.56
  %45 = load i32, i32* @tk, align 4
  %cmp67 = icmp eq i32 %45, 292
  br i1 %cmp67, label %if.then.75, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %if.end.66
  %46 = load i32, i32* @tk, align 4
  %cmp70 = icmp eq i32 %46, 321
  br i1 %cmp70, label %if.then.75, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %lor.lhs.false.69
  %47 = load i32, i32* @tk, align 4
  %cmp73 = icmp eq i32 %47, 328
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %lor.lhs.false.72, %lor.lhs.false.69, %if.end.66
  br label %return

if.end.76:                                        ; preds = %lor.lhs.false.72
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.end.55
  br label %while.cond.78

while.cond.78:                                    ; preds = %while.body.89, %if.end.77
  %48 = load i32, i32* @tk, align 4
  %cmp79 = icmp eq i32 %48, 59
  br i1 %cmp79, label %lor.end.87, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %while.cond.78
  %49 = load i32, i32* @tk, align 4
  %cmp82 = icmp eq i32 %49, 123
  br i1 %cmp82, label %lor.end.87, label %lor.rhs.84

lor.rhs.84:                                       ; preds = %lor.lhs.false.81
  %50 = load i32, i32* @tk, align 4
  %cmp85 = icmp eq i32 %50, 0
  br label %lor.end.87

lor.end.87:                                       ; preds = %lor.rhs.84, %lor.lhs.false.81, %while.cond.78
  %51 = phi i1 [ true, %lor.lhs.false.81 ], [ true, %while.cond.78 ], [ %cmp85, %lor.rhs.84 ]
  %lnot88 = xor i1 %51, true
  br i1 %lnot88, label %while.body.89, label %while.end

while.body.89:                                    ; preds = %lor.end.87
  %call90 = call i32 @yylex()
  store i32 %call90, i32* @tk, align 4
  br label %while.cond.78

while.end:                                        ; preds = %lor.end.87
  %52 = load %struct.sym*, %struct.sym** %cls, align 8
  %tobool91 = icmp ne %struct.sym* %52, null
  br i1 %tobool91, label %if.end.98, label %land.lhs.true.92

land.lhs.true.92:                                 ; preds = %while.end
  %53 = load i8*, i8** %id, align 8
  %tobool93 = icmp ne i8* %53, null
  br i1 %tobool93, label %land.lhs.true.94, label %if.end.98

land.lhs.true.94:                                 ; preds = %land.lhs.true.92
  %54 = load i32, i32* @tk, align 4
  %cmp95 = icmp eq i32 %54, 123
  br i1 %cmp95, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %land.lhs.true.94
  %55 = load i8*, i8** %id, align 8
  %56 = load i8*, i8** %regexp, align 8
  %57 = load i32, i32* %pos, align 4
  %58 = load i32, i32* %hash, align 4
  %59 = load i32, i32* %sc, align 4
  %60 = load i32, i32* %flags.addr, align 4
  call void @add_global_defn(i8* %55, i8* %56, i32 %57, i32 %58, i32 0, i32 %59, i32 %60)
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.97, %land.lhs.true.94, %land.lhs.true.92, %while.end
  %61 = load i8*, i8** %id, align 8
  call void @free(i8* %61) #6
  store i8* null, i8** %id, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.98, %sw.bb.31, %if.end.30, %sw.bb.19, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb, %sw.default
  br label %while.cond

while.end.99:                                     ; preds = %lor.end
  %62 = load i32, i32* %flags.addr, align 4
  %63 = load i32, i32* %sc, align 4
  call void @add_declarator(%struct.sym** %cls, i8** %id, i32 %62, i32 %63)
  br label %return

return:                                           ; preds = %while.end.99, %if.then.75, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.sym* @find_namespace(i8* %name, %struct.sym* %context) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %context.addr = alloca %struct.sym*, align 8
  %p = alloca %struct.sym*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.sym* %context, %struct.sym** %context.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load %struct.sym*, %struct.sym** %context.addr, align 8
  %call = call %struct.sym* @check_namespace(i8* %0, %struct.sym* %1)
  store %struct.sym* %call, %struct.sym** %p, align 8
  %2 = load %struct.sym*, %struct.sym** %p, align 8
  %cmp = icmp eq %struct.sym* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %name.addr, align 8
  %4 = load %struct.sym*, %struct.sym** %context.addr, align 8
  %call1 = call %struct.sym* @make_namespace(i8* %3, %struct.sym* %4)
  store %struct.sym* %call1, %struct.sym** %p, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.sym*, %struct.sym** %p, align 8
  ret %struct.sym* %5
}

; Function Attrs: nounwind uwtable
define internal %struct.sym* @check_namespace(i8* %name, %struct.sym* %context) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %context.addr = alloca %struct.sym*, align 8
  %p = alloca %struct.sym*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.sym* %context, %struct.sym** %context.addr, align 8
  store %struct.sym* null, %struct.sym** %p, align 8
  %0 = load %struct.sym*, %struct.sym** @all_namespaces, align 8
  store %struct.sym* %0, %struct.sym** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.sym*, %struct.sym** %p, align 8
  %tobool = icmp ne %struct.sym* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.sym*, %struct.sym** %p, align 8
  %name1 = getelementptr inbounds %struct.sym, %struct.sym* %2, i32 0, i32 16
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %name1, i32 0, i32 0
  %3 = load i8*, i8** %name.addr, align 8
  %call = call zeroext i1 @streq(i8* %arraydecay, i8* %3)
  br i1 %call, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %4 = load %struct.sym*, %struct.sym** %p, align 8
  %namesp = getelementptr inbounds %struct.sym, %struct.sym* %4, i32 0, i32 15
  %5 = load %struct.sym*, %struct.sym** %namesp, align 8
  %6 = load %struct.sym*, %struct.sym** %context.addr, align 8
  %cmp = icmp eq %struct.sym* %5, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load %struct.sym*, %struct.sym** %p, align 8
  %next = getelementptr inbounds %struct.sym, %struct.sym* %7, i32 0, i32 2
  %8 = load %struct.sym*, %struct.sym** %next, align 8
  store %struct.sym* %8, %struct.sym** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %9 = load %struct.sym*, %struct.sym** %p, align 8
  ret %struct.sym* %9
}

; Function Attrs: nounwind uwtable
define internal %struct.sym* @make_namespace(i8* %name, %struct.sym* %context) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %context.addr = alloca %struct.sym*, align 8
  %s = alloca %struct.sym*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.sym* %context, %struct.sym** %context.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i64 @strlen(i8* %0) #8
  %add = add i64 120, %call
  %add1 = add i64 %add, 1
  %call2 = call i8* @xmalloc(i64 %add1)
  %1 = bitcast i8* %call2 to %struct.sym*
  store %struct.sym* %1, %struct.sym** %s, align 8
  %2 = load %struct.sym*, %struct.sym** %s, align 8
  %3 = bitcast %struct.sym* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 120, i32 8, i1 false)
  %4 = load %struct.sym*, %struct.sym** %s, align 8
  %name3 = getelementptr inbounds %struct.sym, %struct.sym* %4, i32 0, i32 16
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %name3, i32 0, i32 0
  %5 = load i8*, i8** %name.addr, align 8
  %call4 = call i8* @strcpy(i8* %arraydecay, i8* %5) #6
  %6 = load %struct.sym*, %struct.sym** @all_namespaces, align 8
  %7 = load %struct.sym*, %struct.sym** %s, align 8
  %next = getelementptr inbounds %struct.sym, %struct.sym* %7, i32 0, i32 2
  store %struct.sym* %6, %struct.sym** %next, align 8
  %8 = load %struct.sym*, %struct.sym** %context.addr, align 8
  %9 = load %struct.sym*, %struct.sym** %s, align 8
  %namesp = getelementptr inbounds %struct.sym, %struct.sym* %9, i32 0, i32 15
  store %struct.sym* %8, %struct.sym** %namesp, align 8
  %10 = load %struct.sym*, %struct.sym** %s, align 8
  store %struct.sym* %10, %struct.sym** @all_namespaces, align 8
  %11 = load %struct.sym*, %struct.sym** %s, align 8
  ret %struct.sym* %11
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #5

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: nounwind uwtable
define internal i8* @matching_regexp() #0 {
entry:
  %retval = alloca i8*, align 8
  %p = alloca i8*, align 8
  %s = alloca i8*, align 8
  %t = alloca i8*, align 8
  %0 = load i32, i32* @f_regexps, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** @matching_regexp_buffer, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %2 = load i32, i32* @max_regexp, align 4
  %conv = sext i32 %2 to i64
  %call = call i8* @xmalloc(i64 %conv)
  store i8* %call, i8** @matching_regexp_buffer, align 8
  %3 = load i32, i32* @max_regexp, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** @matching_regexp_buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %add.ptr = getelementptr inbounds i8, i8* %arrayidx, i64 -1
  store i8* %add.ptr, i8** @matching_regexp_end_buf, align 8
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %5 = load i8*, i8** @in, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %5, i64 -1
  store i8* %add.ptr3, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.2
  %6 = load i8*, i8** %p, align 8
  %7 = load i8*, i8** @inbuffer, align 8
  %cmp4 = icmp ugt i8* %6, %7
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %8 = load i8*, i8** %p, align 8
  %9 = load i8, i8* %8, align 1
  %conv6 = sext i8 %9 to i32
  %cmp7 = icmp ne i32 %conv6, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %cmp7, %land.rhs ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 -1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %12 = load i8*, i8** %p, align 8
  %13 = load i8, i8* %12, align 1
  %conv9 = sext i8 %13 to i32
  %cmp10 = icmp eq i32 %conv9, 10
  br i1 %cmp10, label %if.then.12, label %if.end.39

if.then.12:                                       ; preds = %for.end
  br label %while.cond

while.cond:                                       ; preds = %for.end.32, %if.then.12
  %14 = load i8*, i8** @in, align 8
  %15 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %15 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %16 = load i32, i32* @min_regexp, align 4
  %conv13 = sext i32 %16 to i64
  %cmp14 = icmp slt i64 %sub.ptr.sub, %conv13
  br i1 %cmp14, label %land.rhs.16, label %land.end.19

land.rhs.16:                                      ; preds = %while.cond
  %17 = load i8*, i8** %p, align 8
  %18 = load i8*, i8** @inbuffer, align 8
  %cmp17 = icmp ugt i8* %17, %18
  br label %land.end.19

land.end.19:                                      ; preds = %land.rhs.16, %while.cond
  %19 = phi i1 [ false, %while.cond ], [ %cmp17, %land.rhs.16 ]
  br i1 %19, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.19
  %20 = load i8*, i8** %p, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %20, i32 -1
  store i8* %incdec.ptr20, i8** %p, align 8
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.30, %while.body
  %21 = load i8*, i8** %p, align 8
  %22 = load i8*, i8** @inbuffer, align 8
  %cmp22 = icmp ugt i8* %21, %22
  br i1 %cmp22, label %land.rhs.24, label %land.end.28

land.rhs.24:                                      ; preds = %for.cond.21
  %23 = load i8*, i8** %p, align 8
  %24 = load i8, i8* %23, align 1
  %conv25 = sext i8 %24 to i32
  %cmp26 = icmp ne i32 %conv25, 10
  br label %land.end.28

land.end.28:                                      ; preds = %land.rhs.24, %for.cond.21
  %25 = phi i1 [ false, %for.cond.21 ], [ %cmp26, %land.rhs.24 ]
  br i1 %25, label %for.body.29, label %for.end.32

for.body.29:                                      ; preds = %land.end.28
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.body.29
  %26 = load i8*, i8** %p, align 8
  %incdec.ptr31 = getelementptr inbounds i8, i8* %26, i32 -1
  store i8* %incdec.ptr31, i8** %p, align 8
  br label %for.cond.21

for.end.32:                                       ; preds = %land.end.28
  br label %while.cond

while.end:                                        ; preds = %land.end.19
  %27 = load i8*, i8** %p, align 8
  %28 = load i8, i8* %27, align 1
  %conv33 = sext i8 %28 to i32
  %cmp34 = icmp eq i32 %conv33, 10
  br i1 %cmp34, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %while.end
  %29 = load i8*, i8** %p, align 8
  %incdec.ptr37 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr37, i8** %p, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %while.end
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %for.end
  %30 = load i8*, i8** @matching_regexp_end_buf, align 8
  %add.ptr40 = getelementptr inbounds i8, i8* %30, i64 -1
  store i8* %add.ptr40, i8** %s, align 8
  %31 = load i8*, i8** @in, align 8
  store i8* %31, i8** %t, align 8
  br label %for.cond.41

for.cond.41:                                      ; preds = %if.end.59, %if.end.39
  %32 = load i8*, i8** %s, align 8
  %33 = load i8*, i8** @matching_regexp_buffer, align 8
  %cmp42 = icmp ugt i8* %32, %33
  br i1 %cmp42, label %land.rhs.44, label %land.end.47

land.rhs.44:                                      ; preds = %for.cond.41
  %34 = load i8*, i8** %t, align 8
  %35 = load i8*, i8** %p, align 8
  %cmp45 = icmp ugt i8* %34, %35
  br label %land.end.47

land.end.47:                                      ; preds = %land.rhs.44, %for.cond.41
  %36 = phi i1 [ false, %for.cond.41 ], [ %cmp45, %land.rhs.44 ]
  br i1 %36, label %for.body.48, label %for.end.60

for.body.48:                                      ; preds = %land.end.47
  %37 = load i8*, i8** %t, align 8
  %incdec.ptr49 = getelementptr inbounds i8, i8* %37, i32 -1
  store i8* %incdec.ptr49, i8** %t, align 8
  %38 = load i8, i8* %incdec.ptr49, align 1
  %39 = load i8*, i8** %s, align 8
  %incdec.ptr50 = getelementptr inbounds i8, i8* %39, i32 -1
  store i8* %incdec.ptr50, i8** %s, align 8
  store i8 %38, i8* %incdec.ptr50, align 1
  %40 = load i8*, i8** %s, align 8
  %41 = load i8, i8* %40, align 1
  %conv51 = sext i8 %41 to i32
  %cmp52 = icmp eq i32 %conv51, 34
  br i1 %cmp52, label %if.then.57, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.48
  %42 = load i8*, i8** %s, align 8
  %43 = load i8, i8* %42, align 1
  %conv54 = sext i8 %43 to i32
  %cmp55 = icmp eq i32 %conv54, 92
  br i1 %cmp55, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %lor.lhs.false, %for.body.48
  %44 = load i8*, i8** %s, align 8
  %incdec.ptr58 = getelementptr inbounds i8, i8* %44, i32 -1
  store i8* %incdec.ptr58, i8** %s, align 8
  store i8 92, i8* %incdec.ptr58, align 1
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %lor.lhs.false
  br label %for.cond.41

for.end.60:                                       ; preds = %land.end.47
  %45 = load i8*, i8** @matching_regexp_end_buf, align 8
  %add.ptr61 = getelementptr inbounds i8, i8* %45, i64 -1
  store i8 0, i8* %add.ptr61, align 1
  %46 = load i8*, i8** %s, align 8
  %call62 = call i8* @xstrdup(i8* %46)
  store i8* %call62, i8** %retval
  br label %return

return:                                           ; preds = %for.end.60, %if.then
  %47 = load i8*, i8** %retval
  ret i8* %47
}

; Function Attrs: nounwind uwtable
define internal %struct.sym* @parse_classname() #0 {
entry:
  %last_class = alloca %struct.sym*, align 8
  store %struct.sym* null, %struct.sym** %last_class, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.5, %entry
  %0 = load i32, i32* @tk, align 4
  %cmp = icmp eq i32 %0, 264
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** @yytext, align 8
  %2 = load %struct.sym*, %struct.sym** %last_class, align 8
  %call = call %struct.sym* @add_sym(i8* %1, %struct.sym* %2)
  store %struct.sym* %call, %struct.sym** %last_class, align 8
  %call1 = call i32 @yylex()
  store i32 %call1, i32* @tk, align 4
  %3 = load i32, i32* @tk, align 4
  %cmp2 = icmp eq i32 %3, 60
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @skip_matching()
  %4 = load %struct.sym*, %struct.sym** %last_class, align 8
  %flags = getelementptr inbounds %struct.sym, %struct.sym* %4, i32 0, i32 0
  call void @set_flag(i32* %flags, i32 32)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %5 = load i32, i32* @tk, align 4
  %cmp3 = icmp eq i32 %5, 279
  br i1 %cmp3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  br label %while.end

if.end.5:                                         ; preds = %if.end
  %call6 = call i32 @yylex()
  store i32 %call6, i32* @tk, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then.4, %while.cond
  %6 = load %struct.sym*, %struct.sym** %last_class, align 8
  ret %struct.sym* %6
}

; Function Attrs: nounwind uwtable
define internal void @add_link(%struct.sym* %super, %struct.sym* %sub) #0 {
entry:
  %super.addr = alloca %struct.sym*, align 8
  %sub.addr = alloca %struct.sym*, align 8
  %lnk = alloca %struct.link*, align 8
  %lnk2 = alloca %struct.link*, align 8
  %p = alloca %struct.link*, align 8
  %prev = alloca %struct.link*, align 8
  store %struct.sym* %super, %struct.sym** %super.addr, align 8
  store %struct.sym* %sub, %struct.sym** %sub.addr, align 8
  %0 = load %struct.sym*, %struct.sym** %super.addr, align 8
  %subs = getelementptr inbounds %struct.sym, %struct.sym* %0, i32 0, i32 3
  %1 = load %struct.link*, %struct.link** %subs, align 8
  store %struct.link* %1, %struct.link** %p, align 8
  store %struct.link* null, %struct.link** %prev, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.link*, %struct.link** %p, align 8
  %tobool = icmp ne %struct.link* %2, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load %struct.sym*, %struct.sym** %sub.addr, align 8
  %name = getelementptr inbounds %struct.sym, %struct.sym* %3, i32 0, i32 16
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %name, i32 0, i32 0
  %4 = load %struct.link*, %struct.link** %p, align 8
  %sym = getelementptr inbounds %struct.link, %struct.link* %4, i32 0, i32 0
  %5 = load %struct.sym*, %struct.sym** %sym, align 8
  %name1 = getelementptr inbounds %struct.sym, %struct.sym* %5, i32 0, i32 16
  %arraydecay2 = getelementptr inbounds [0 x i8], [0 x i8]* %name1, i32 0, i32 0
  %call = call i32 @strcmp(i8* %arraydecay, i8* %arraydecay2) #8
  %cmp = icmp sgt i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %6, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.link*, %struct.link** %p, align 8
  store %struct.link* %7, %struct.link** %prev, align 8
  %8 = load %struct.link*, %struct.link** %p, align 8
  %next = getelementptr inbounds %struct.link, %struct.link* %8, i32 0, i32 1
  %9 = load %struct.link*, %struct.link** %next, align 8
  store %struct.link* %9, %struct.link** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %10 = load %struct.link*, %struct.link** %p, align 8
  %cmp3 = icmp eq %struct.link* %10, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %11 = load %struct.link*, %struct.link** %p, align 8
  %sym4 = getelementptr inbounds %struct.link, %struct.link* %11, i32 0, i32 0
  %12 = load %struct.sym*, %struct.sym** %sym4, align 8
  %13 = load %struct.sym*, %struct.sym** %sub.addr, align 8
  %cmp5 = icmp ne %struct.sym* %12, %13
  br i1 %cmp5, label %if.then, label %if.end.17

if.then:                                          ; preds = %lor.lhs.false, %for.end
  %call6 = call i8* @xmalloc(i64 16)
  %14 = bitcast i8* %call6 to %struct.link*
  store %struct.link* %14, %struct.link** %lnk, align 8
  %call7 = call i8* @xmalloc(i64 16)
  %15 = bitcast i8* %call7 to %struct.link*
  store %struct.link* %15, %struct.link** %lnk2, align 8
  %16 = load %struct.sym*, %struct.sym** %sub.addr, align 8
  %17 = load %struct.link*, %struct.link** %lnk, align 8
  %sym8 = getelementptr inbounds %struct.link, %struct.link* %17, i32 0, i32 0
  store %struct.sym* %16, %struct.sym** %sym8, align 8
  %18 = load %struct.link*, %struct.link** %p, align 8
  %19 = load %struct.link*, %struct.link** %lnk, align 8
  %next9 = getelementptr inbounds %struct.link, %struct.link* %19, i32 0, i32 1
  store %struct.link* %18, %struct.link** %next9, align 8
  %20 = load %struct.link*, %struct.link** %prev, align 8
  %tobool10 = icmp ne %struct.link* %20, null
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then
  %21 = load %struct.link*, %struct.link** %lnk, align 8
  %22 = load %struct.link*, %struct.link** %prev, align 8
  %next12 = getelementptr inbounds %struct.link, %struct.link* %22, i32 0, i32 1
  store %struct.link* %21, %struct.link** %next12, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %23 = load %struct.link*, %struct.link** %lnk, align 8
  %24 = load %struct.sym*, %struct.sym** %super.addr, align 8
  %subs13 = getelementptr inbounds %struct.sym, %struct.sym* %24, i32 0, i32 3
  store %struct.link* %23, %struct.link** %subs13, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.11
  %25 = load %struct.sym*, %struct.sym** %super.addr, align 8
  %26 = load %struct.link*, %struct.link** %lnk2, align 8
  %sym14 = getelementptr inbounds %struct.link, %struct.link* %26, i32 0, i32 0
  store %struct.sym* %25, %struct.sym** %sym14, align 8
  %27 = load %struct.sym*, %struct.sym** %sub.addr, align 8
  %supers = getelementptr inbounds %struct.sym, %struct.sym* %27, i32 0, i32 4
  %28 = load %struct.link*, %struct.link** %supers, align 8
  %29 = load %struct.link*, %struct.link** %lnk2, align 8
  %next15 = getelementptr inbounds %struct.link, %struct.link* %29, i32 0, i32 1
  store %struct.link* %28, %struct.link** %next15, align 8
  %30 = load %struct.link*, %struct.link** %lnk2, align 8
  %31 = load %struct.sym*, %struct.sym** %sub.addr, align 8
  %supers16 = getelementptr inbounds %struct.sym, %struct.sym* %31, i32 0, i32 4
  store %struct.link* %30, %struct.link** %supers16, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @class_body(%struct.sym* %cls, i32 %tag) #0 {
entry:
  %cls.addr = alloca %struct.sym*, align 8
  %tag.addr = alloca i32, align 4
  %vis = alloca i32, align 4
  %temp = alloca i32, align 4
  store %struct.sym* %cls, %struct.sym** %cls.addr, align 8
  store i32 %tag, i32* %tag.addr, align 4
  %0 = load i32, i32* %tag.addr, align 4
  %cmp = icmp eq i32 %0, 292
  %cond = select i1 %cmp, i32 312, i32 314
  store i32 %cond, i32* %vis, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %1 = load i32, i32* @tk, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %2 = load i32, i32* @tk, align 4
  %cmp2 = icmp eq i32 %2, 125
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %3 = phi i1 [ true, %while.cond ], [ %cmp2, %lor.rhs ]
  %lnot = xor i1 %3, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %4 = load i32, i32* @tk, align 4
  %cmp3 = icmp eq i32 %4, -1
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %call = call i32 @yylex()
  store i32 %call, i32* @tk, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %5 = load i32, i32* @tk, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond4 = phi i32 [ %call, %cond.true ], [ %5, %cond.false ]
  switch i32 %cond4, label %sw.default [
    i32 312, label %sw.bb
    i32 313, label %sw.bb
    i32 314, label %sw.bb
    i32 341, label %sw.bb.25
    i32 347, label %sw.bb.25
    i32 291, label %sw.bb.27
    i32 292, label %sw.bb.27
    i32 293, label %sw.bb.27
    i32 298, label %sw.bb.27
    i32 300, label %sw.bb.27
    i32 302, label %sw.bb.27
    i32 308, label %sw.bb.27
    i32 309, label %sw.bb.27
    i32 317, label %sw.bb.27
    i32 318, label %sw.bb.27
    i32 321, label %sw.bb.27
    i32 328, label %sw.bb.27
    i32 329, label %sw.bb.27
    i32 331, label %sw.bb.27
    i32 332, label %sw.bb.27
    i32 327, label %sw.bb.27
    i32 320, label %sw.bb.27
    i32 307, label %sw.bb.27
    i32 304, label %sw.bb.27
    i32 330, label %sw.bb.27
    i32 323, label %sw.bb.27
    i32 264, label %sw.bb.27
    i32 126, label %sw.bb.27
    i32 335, label %sw.bb.27
    i32 348, label %sw.bb.27
    i32 340, label %sw.bb.27
    i32 334, label %sw.bb.27
  ]

sw.bb:                                            ; preds = %cond.end, %cond.end, %cond.end
  %6 = load i32, i32* @tk, align 4
  %cmp5 = icmp eq i32 %6, -1
  br i1 %cmp5, label %cond.true.6, label %cond.false.8

cond.true.6:                                      ; preds = %sw.bb
  %call7 = call i32 @yylex()
  store i32 %call7, i32* @tk, align 4
  br label %cond.end.9

cond.false.8:                                     ; preds = %sw.bb
  %7 = load i32, i32* @tk, align 4
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.8, %cond.true.6
  %cond10 = phi i32 [ %call7, %cond.true.6 ], [ %7, %cond.false.8 ]
  store i32 %cond10, i32* %temp, align 4
  %call11 = call i32 @yylex()
  store i32 %call11, i32* @tk, align 4
  %8 = load i32, i32* @tk, align 4
  %cmp12 = icmp eq i32 %8, 58
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.9
  %9 = load i32, i32* %temp, align 4
  store i32 %9, i32* %vis, align 4
  %call13 = call i32 @yylex()
  store i32 %call13, i32* @tk, align 4
  br label %if.end

if.else:                                          ; preds = %cond.end.9
  br label %do.body

do.body:                                          ; preds = %lor.end.24, %if.else
  %call14 = call i32 @yylex()
  store i32 %call14, i32* @tk, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %10 = load i32, i32* @tk, align 4
  %cmp15 = icmp eq i32 %10, 264
  br i1 %cmp15, label %lor.end.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.cond
  %11 = load i32, i32* @tk, align 4
  %cmp16 = icmp eq i32 %11, 44
  br i1 %cmp16, label %lor.end.24, label %lor.rhs.17

lor.rhs.17:                                       ; preds = %lor.lhs.false
  %12 = load i32, i32* @tk, align 4
  %cmp18 = icmp eq i32 %12, 314
  br i1 %cmp18, label %lor.end.23, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.rhs.17
  %13 = load i32, i32* @tk, align 4
  %cmp20 = icmp eq i32 %13, 313
  br i1 %cmp20, label %lor.end.23, label %lor.rhs.21

lor.rhs.21:                                       ; preds = %lor.lhs.false.19
  %14 = load i32, i32* @tk, align 4
  %cmp22 = icmp eq i32 %14, 312
  br label %lor.end.23

lor.end.23:                                       ; preds = %lor.rhs.21, %lor.lhs.false.19, %lor.rhs.17
  %15 = phi i1 [ true, %lor.lhs.false.19 ], [ true, %lor.rhs.17 ], [ %cmp22, %lor.rhs.21 ]
  br label %lor.end.24

lor.end.24:                                       ; preds = %lor.end.23, %lor.lhs.false, %do.cond
  %16 = phi i1 [ true, %lor.lhs.false ], [ true, %do.cond ], [ %15, %lor.end.23 ]
  br i1 %16, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end.24
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  br label %sw.epilog

sw.bb.25:                                         ; preds = %cond.end, %cond.end
  %call26 = call i32 @skip_to(i32 59)
  br label %sw.epilog

sw.bb.27:                                         ; preds = %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end
  %17 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  %18 = load i32, i32* %vis, align 4
  call void @member(%struct.sym* %17, i32 %18)
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  %call28 = call i32 @yylex()
  store i32 %call28, i32* @tk, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.27, %sw.bb.25, %if.end
  br label %while.cond

while.end:                                        ; preds = %lor.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @member(%struct.sym* %cls, i32 %vis) #0 {
entry:
  %cls.addr = alloca %struct.sym*, align 8
  %vis.addr = alloca i32, align 4
  %id = alloca i8*, align 8
  %sc = alloca i32, align 4
  %regexp = alloca i8*, align 8
  %pos = alloca i32, align 4
  %is_constructor = alloca i32, align 4
  %anonymous = alloca i32, align 4
  %flags = alloca i32, align 4
  %class_tag = alloca i32, align 4
  %type_seen = alloca i32, align 4
  %paren_seen = alloca i32, align 4
  %hash = alloca i32, align 4
  %tilde = alloca i32, align 4
  %s = alloca i8*, align 8
  store %struct.sym* %cls, %struct.sym** %cls.addr, align 8
  store i32 %vis, i32* %vis.addr, align 4
  store i8* null, i8** %id, align 8
  store i32 1, i32* %sc, align 4
  store i8* null, i8** %regexp, align 8
  store i32 0, i32* %anonymous, align 4
  store i32 0, i32* %flags, align 4
  store i32 0, i32* %type_seen, align 4
  store i32 0, i32* %paren_seen, align 4
  store i32 0, i32* %hash, align 4
  store i32 0, i32* %tilde, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i32, i32* @tk, align 4
  %cmp = icmp eq i32 %0, 59
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %1 = load i32, i32* @tk, align 4
  %cmp1 = icmp eq i32 %1, 123
  br i1 %cmp1, label %lor.end, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load i32, i32* @tk, align 4
  %cmp3 = icmp eq i32 %2, 125
  br i1 %cmp3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.2
  %3 = load i32, i32* @tk, align 4
  %cmp4 = icmp eq i32 %3, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.2, %lor.lhs.false, %while.cond
  %4 = phi i1 [ true, %lor.lhs.false.2 ], [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp4, %lor.rhs ]
  %lnot = xor i1 %4, true
  br i1 %lnot, label %while.body, label %while.end.125

while.body:                                       ; preds = %lor.end
  %5 = load i32, i32* @tk, align 4
  %cmp5 = icmp eq i32 %5, -1
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %call = call i32 @yylex()
  store i32 %call, i32* @tk, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %6 = load i32, i32* @tk, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %6, %cond.false ]
  switch i32 %cond, label %sw.default [
    i32 323, label %sw.bb
    i32 340, label %sw.bb.9
    i32 334, label %sw.bb.10
    i32 307, label %sw.bb.11
    i32 330, label %sw.bb.12
    i32 91, label %sw.bb.13
    i32 300, label %sw.bb.14
    i32 327, label %sw.bb.15
    i32 304, label %sw.bb.16
    i32 320, label %sw.bb.17
    i32 126, label %sw.bb.18
    i32 264, label %sw.bb.20
    i32 311, label %sw.bb.29
    i32 40, label %sw.bb.35
    i32 321, label %sw.bb.79
    i32 328, label %sw.bb.79
    i32 292, label %sw.bb.79
    i32 308, label %sw.bb.123
    i32 291, label %sw.bb.123
    i32 309, label %sw.bb.123
    i32 329, label %sw.bb.123
    i32 318, label %sw.bb.123
    i32 293, label %sw.bb.123
    i32 298, label %sw.bb.123
    i32 331, label %sw.bb.123
    i32 317, label %sw.bb.123
    i32 332, label %sw.bb.123
    i32 335, label %sw.bb.123
    i32 348, label %sw.bb.123
    i32 341, label %sw.bb.123
  ]

sw.default:                                       ; preds = %cond.end
  %call6 = call i32 @yylex()
  store i32 %call6, i32* @tk, align 4
  br label %sw.epilog

sw.bb:                                            ; preds = %cond.end
  %call7 = call i32 @yylex()
  store i32 %call7, i32* @tk, align 4
  call void @set_flag(i32* %flags, i32 32)
  %7 = load i32, i32* @tk, align 4
  %cmp8 = icmp eq i32 %7, 60
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @skip_matching()
  br label %if.end

if.else:                                          ; preds = %sw.bb
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.9:                                          ; preds = %cond.end
  call void @set_flag(i32* %flags, i32 64)
  br label %typeseen

sw.bb.10:                                         ; preds = %cond.end
  call void @set_flag(i32* %flags, i32 16)
  br label %typeseen

sw.bb.11:                                         ; preds = %cond.end
  call void @set_flag(i32* %flags, i32 2)
  br label %typeseen

sw.bb.12:                                         ; preds = %cond.end
  call void @set_flag(i32* %flags, i32 1)
  br label %typeseen

sw.bb.13:                                         ; preds = %cond.end
  call void @skip_matching()
  br label %sw.epilog

sw.bb.14:                                         ; preds = %cond.end
  store i32 4, i32* %sc, align 4
  br label %typeseen

sw.bb.15:                                         ; preds = %cond.end
  store i32 4, i32* %sc, align 4
  br label %typeseen

sw.bb.16:                                         ; preds = %cond.end
  store i32 3, i32* %sc, align 4
  br label %typeseen

sw.bb.17:                                         ; preds = %cond.end
  store i32 2, i32* %sc, align 4
  br label %typeseen

sw.bb.18:                                         ; preds = %cond.end
  store i32 1, i32* %tilde, align 4
  %call19 = call i32 @yylex()
  store i32 %call19, i32* @tk, align 4
  br label %sw.epilog

sw.bb.20:                                         ; preds = %cond.end
  %8 = load i8*, i8** %id, align 8
  %9 = load i8*, i8** @yytext, align 8
  %call21 = call i64 @strlen(i8* %9) #8
  %add = add i64 %call21, 2
  %call22 = call i8* @xrealloc(i8* %8, i64 %add)
  store i8* %call22, i8** %id, align 8
  %10 = load i32, i32* %tilde, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then.23, label %if.else.25

if.then.23:                                       ; preds = %sw.bb.20
  %11 = load i8*, i8** %id, align 8
  store i8 126, i8* %11, align 1
  %12 = load i8*, i8** %id, align 8
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8*, i8** @yytext, align 8
  %call24 = call i8* @strcpy(i8* %add.ptr, i8* %13) #6
  br label %if.end.27

if.else.25:                                       ; preds = %sw.bb.20
  %14 = load i8*, i8** %id, align 8
  %15 = load i8*, i8** @yytext, align 8
  %call26 = call i8* @strcpy(i8* %14, i8* %15) #6
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.25, %if.then.23
  %call28 = call i32 @yylex()
  store i32 %call28, i32* @tk, align 4
  br label %sw.epilog

sw.bb.29:                                         ; preds = %cond.end
  %call30 = call i8* @operator_name(i32* %sc)
  store i8* %call30, i8** %s, align 8
  %16 = load i8*, i8** %id, align 8
  %17 = load i8*, i8** %s, align 8
  %call31 = call i64 @strlen(i8* %17) #8
  %add32 = add i64 %call31, 1
  %call33 = call i8* @xrealloc(i8* %16, i64 %add32)
  store i8* %call33, i8** %id, align 8
  %18 = load i8*, i8** %id, align 8
  %19 = load i8*, i8** %s, align 8
  %call34 = call i8* @strcpy(i8* %18, i8* %19) #6
  br label %sw.epilog

sw.bb.35:                                         ; preds = %cond.end
  %call36 = call i32 @yylex()
  store i32 %call36, i32* @tk, align 4
  store i32 1, i32* %paren_seen, align 4
  %20 = load i8*, i8** %id, align 8
  %tobool37 = icmp ne i8* %20, null
  br i1 %tobool37, label %land.lhs.true, label %if.else.44

land.lhs.true:                                    ; preds = %sw.bb.35
  %21 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  %tobool38 = icmp ne %struct.sym* %21, null
  br i1 %tobool38, label %if.then.39, label %if.else.44

if.then.39:                                       ; preds = %land.lhs.true
  %22 = load i8*, i8** %id, align 8
  %23 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  %name = getelementptr inbounds %struct.sym, %struct.sym* %23, i32 0, i32 16
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %name, i32 0, i32 0
  %call40 = call zeroext i1 @streq(i8* %22, i8* %arraydecay)
  %conv = zext i1 %call40 to i32
  store i32 %conv, i32* %is_constructor, align 4
  br i1 %call40, label %if.end.43, label %if.then.41

if.then.41:                                       ; preds = %if.then.39
  %call42 = call i8* @matching_regexp()
  store i8* %call42, i8** %regexp, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %if.then.39
  br label %if.end.45

if.else.44:                                       ; preds = %land.lhs.true, %sw.bb.35
  store i32 0, i32* %is_constructor, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.44, %if.end.43
  %24 = load i8*, i8** @in, align 8
  %25 = load i8*, i8** @inbuffer, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %24 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %25 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv46 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv46, i32* %pos, align 4
  %call47 = call i32 @parm_list(i32* %flags)
  store i32 %call47, i32* %hash, align 4
  %26 = load i32, i32* %is_constructor, align 4
  %tobool48 = icmp ne i32 %26, 0
  br i1 %tobool48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.end.45
  %call50 = call i8* @matching_regexp()
  store i8* %call50, i8** %regexp, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.end.45
  %27 = load i8*, i8** %id, align 8
  %tobool52 = icmp ne i8* %27, null
  br i1 %tobool52, label %land.lhs.true.53, label %if.end.57

land.lhs.true.53:                                 ; preds = %if.end.51
  %28 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  %cmp54 = icmp ne %struct.sym* %28, null
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %land.lhs.true.53
  %29 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  %30 = load i8*, i8** %id, align 8
  %31 = load i8*, i8** %regexp, align 8
  %32 = load i32, i32* %pos, align 4
  %33 = load i32, i32* %hash, align 4
  %34 = load i32, i32* %sc, align 4
  %35 = load i32, i32* %vis.addr, align 4
  %36 = load i32, i32* %flags, align 4
  call void @add_member_decl(%struct.sym* %29, i8* %30, i8* %31, i32 %32, i32 %33, i32 0, i32 %34, i32 %35, i32 %36)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %land.lhs.true.53, %if.end.51
  br label %while.cond.58

while.cond.58:                                    ; preds = %while.body.69, %if.end.57
  %37 = load i32, i32* @tk, align 4
  %cmp59 = icmp eq i32 %37, 59
  br i1 %cmp59, label %lor.end.67, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %while.cond.58
  %38 = load i32, i32* @tk, align 4
  %cmp62 = icmp eq i32 %38, 123
  br i1 %cmp62, label %lor.end.67, label %lor.rhs.64

lor.rhs.64:                                       ; preds = %lor.lhs.false.61
  %39 = load i32, i32* @tk, align 4
  %cmp65 = icmp eq i32 %39, 0
  br label %lor.end.67

lor.end.67:                                       ; preds = %lor.rhs.64, %lor.lhs.false.61, %while.cond.58
  %40 = phi i1 [ true, %lor.lhs.false.61 ], [ true, %while.cond.58 ], [ %cmp65, %lor.rhs.64 ]
  %lnot68 = xor i1 %40, true
  br i1 %lnot68, label %while.body.69, label %while.end

while.body.69:                                    ; preds = %lor.end.67
  %call70 = call i32 @yylex()
  store i32 %call70, i32* @tk, align 4
  br label %while.cond.58

while.end:                                        ; preds = %lor.end.67
  %41 = load i32, i32* @tk, align 4
  %cmp71 = icmp eq i32 %41, 123
  br i1 %cmp71, label %land.lhs.true.73, label %if.end.78

land.lhs.true.73:                                 ; preds = %while.end
  %42 = load i8*, i8** %id, align 8
  %tobool74 = icmp ne i8* %42, null
  br i1 %tobool74, label %land.lhs.true.75, label %if.end.78

land.lhs.true.75:                                 ; preds = %land.lhs.true.73
  %43 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  %tobool76 = icmp ne %struct.sym* %43, null
  br i1 %tobool76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %land.lhs.true.75
  %44 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  %45 = load i8*, i8** %id, align 8
  %46 = load i8*, i8** %regexp, align 8
  %47 = load i32, i32* %pos, align 4
  %48 = load i32, i32* %hash, align 4
  %49 = load i32, i32* %sc, align 4
  %50 = load i32, i32* %flags, align 4
  call void @add_member_defn(%struct.sym* %44, i8* %45, i8* %46, i32 %47, i32 %48, i32 0, i32 %49, i32 %50)
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %land.lhs.true.75, %land.lhs.true.73, %while.end
  %51 = load i8*, i8** %id, align 8
  call void @free(i8* %51) #6
  store i8* null, i8** %id, align 8
  store i32 1, i32* %sc, align 4
  br label %sw.epilog

sw.bb.79:                                         ; preds = %cond.end, %cond.end, %cond.end
  %52 = load i32, i32* @tk, align 4
  %cmp80 = icmp eq i32 %52, -1
  br i1 %cmp80, label %cond.true.82, label %cond.false.84

cond.true.82:                                     ; preds = %sw.bb.79
  %call83 = call i32 @yylex()
  store i32 %call83, i32* @tk, align 4
  br label %cond.end.85

cond.false.84:                                    ; preds = %sw.bb.79
  %53 = load i32, i32* @tk, align 4
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.84, %cond.true.82
  %cond86 = phi i32 [ %call83, %cond.true.82 ], [ %53, %cond.false.84 ]
  store i32 %cond86, i32* %class_tag, align 4
  store i32 1, i32* %type_seen, align 4
  %call87 = call i32 @yylex()
  store i32 %call87, i32* @tk, align 4
  store i32 1, i32* %anonymous, align 4
  br label %while.cond.88

while.cond.88:                                    ; preds = %if.end.106, %cond.end.85
  %54 = load i32, i32* @tk, align 4
  %cmp89 = icmp eq i32 %54, 0
  br i1 %cmp89, label %lor.end.100, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %while.cond.88
  %55 = load i32, i32* @tk, align 4
  %cmp92 = icmp eq i32 %55, 59
  br i1 %cmp92, label %lor.end.100, label %lor.lhs.false.94

lor.lhs.false.94:                                 ; preds = %lor.lhs.false.91
  %56 = load i32, i32* @tk, align 4
  %cmp95 = icmp eq i32 %56, 58
  br i1 %cmp95, label %lor.end.100, label %lor.rhs.97

lor.rhs.97:                                       ; preds = %lor.lhs.false.94
  %57 = load i32, i32* @tk, align 4
  %cmp98 = icmp eq i32 %57, 123
  br label %lor.end.100

lor.end.100:                                      ; preds = %lor.rhs.97, %lor.lhs.false.94, %lor.lhs.false.91, %while.cond.88
  %58 = phi i1 [ true, %lor.lhs.false.94 ], [ true, %lor.lhs.false.91 ], [ true, %while.cond.88 ], [ %cmp98, %lor.rhs.97 ]
  %lnot101 = xor i1 %58, true
  br i1 %lnot101, label %while.body.102, label %while.end.108

while.body.102:                                   ; preds = %lor.end.100
  %59 = load i32, i32* @tk, align 4
  %cmp103 = icmp eq i32 %59, 264
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %while.body.102
  store i32 0, i32* %anonymous, align 4
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.105, %while.body.102
  %call107 = call i32 @yylex()
  store i32 %call107, i32* @tk, align 4
  br label %while.cond.88

while.end.108:                                    ; preds = %lor.end.100
  %60 = load i32, i32* @tk, align 4
  %cmp109 = icmp eq i32 %60, 58
  br i1 %cmp109, label %if.then.114, label %lor.lhs.false.111

lor.lhs.false.111:                                ; preds = %while.end.108
  %61 = load i32, i32* @tk, align 4
  %cmp112 = icmp eq i32 %61, 123
  br i1 %cmp112, label %if.then.114, label %if.else.120

if.then.114:                                      ; preds = %lor.lhs.false.111, %while.end.108
  %62 = load i32, i32* %anonymous, align 4
  %tobool115 = icmp ne i32 %62, 0
  br i1 %tobool115, label %cond.true.116, label %cond.false.117

cond.true.116:                                    ; preds = %if.then.114
  br label %cond.end.118

cond.false.117:                                   ; preds = %if.then.114
  %63 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.false.117, %cond.true.116
  %cond119 = phi %struct.sym* [ null, %cond.true.116 ], [ %63, %cond.false.117 ]
  %64 = load i32, i32* %class_tag, align 4
  %65 = load i32, i32* %flags, align 4
  call void @class_definition(%struct.sym* %cond119, i32 %64, i32 %65, i32 1)
  br label %if.end.122

if.else.120:                                      ; preds = %lor.lhs.false.111
  %call121 = call i32 @skip_to(i32 59)
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.120, %cond.end.118
  br label %sw.epilog

sw.bb.123:                                        ; preds = %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end
  br label %typeseen

typeseen:                                         ; preds = %sw.bb.123, %sw.bb.17, %sw.bb.16, %sw.bb.15, %sw.bb.14, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9
  store i32 1, i32* %type_seen, align 4
  %call124 = call i32 @yylex()
  store i32 %call124, i32* @tk, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %typeseen, %if.end.122, %if.end.78, %sw.bb.29, %if.end.27, %sw.bb.18, %sw.bb.13, %if.end, %sw.default
  br label %while.cond

while.end.125:                                    ; preds = %lor.end
  %66 = load i32, i32* @tk, align 4
  %cmp126 = icmp eq i32 %66, 59
  br i1 %cmp126, label %if.then.128, label %if.else.153

if.then.128:                                      ; preds = %while.end.125
  %67 = load i8*, i8** %id, align 8
  %tobool129 = icmp ne i8* %67, null
  br i1 %tobool129, label %land.lhs.true.130, label %if.end.151

land.lhs.true.130:                                ; preds = %if.then.128
  %68 = load i32, i32* %sc, align 4
  %cmp131 = icmp ne i32 %68, 3
  br i1 %cmp131, label %land.lhs.true.133, label %if.end.151

land.lhs.true.133:                                ; preds = %land.lhs.true.130
  %69 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  %tobool134 = icmp ne %struct.sym* %69, null
  br i1 %tobool134, label %if.then.135, label %if.end.151

if.then.135:                                      ; preds = %land.lhs.true.133
  %call136 = call i8* @matching_regexp()
  store i8* %call136, i8** %regexp, align 8
  %70 = load i8*, i8** @in, align 8
  %71 = load i8*, i8** @inbuffer, align 8
  %sub.ptr.lhs.cast137 = ptrtoint i8* %70 to i64
  %sub.ptr.rhs.cast138 = ptrtoint i8* %71 to i64
  %sub.ptr.sub139 = sub i64 %sub.ptr.lhs.cast137, %sub.ptr.rhs.cast138
  %conv140 = trunc i64 %sub.ptr.sub139 to i32
  store i32 %conv140, i32* %pos, align 4
  %72 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  %cmp141 = icmp ne %struct.sym* %72, null
  br i1 %cmp141, label %if.then.143, label %if.end.150

if.then.143:                                      ; preds = %if.then.135
  %73 = load i32, i32* %type_seen, align 4
  %tobool144 = icmp ne i32 %73, 0
  br i1 %tobool144, label %if.then.147, label %lor.lhs.false.145

lor.lhs.false.145:                                ; preds = %if.then.143
  %74 = load i32, i32* %paren_seen, align 4
  %tobool146 = icmp ne i32 %74, 0
  br i1 %tobool146, label %if.else.148, label %if.then.147

if.then.147:                                      ; preds = %lor.lhs.false.145, %if.then.143
  %75 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  %76 = load i8*, i8** %id, align 8
  %77 = load i8*, i8** %regexp, align 8
  %78 = load i32, i32* %pos, align 4
  %79 = load i32, i32* %sc, align 4
  %80 = load i32, i32* %vis.addr, align 4
  call void @add_member_decl(%struct.sym* %75, i8* %76, i8* %77, i32 %78, i32 0, i32 1, i32 %79, i32 %80, i32 0)
  br label %if.end.149

if.else.148:                                      ; preds = %lor.lhs.false.145
  %81 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  %82 = load i8*, i8** %id, align 8
  %83 = load i8*, i8** %regexp, align 8
  %84 = load i32, i32* %pos, align 4
  %85 = load i32, i32* %hash, align 4
  %86 = load i32, i32* %sc, align 4
  %87 = load i32, i32* %vis.addr, align 4
  call void @add_member_decl(%struct.sym* %81, i8* %82, i8* %83, i32 %84, i32 %85, i32 0, i32 %86, i32 %87, i32 0)
  br label %if.end.149

if.end.149:                                       ; preds = %if.else.148, %if.then.147
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.then.135
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %land.lhs.true.133, %land.lhs.true.130, %if.then.128
  %call152 = call i32 @yylex()
  store i32 %call152, i32* @tk, align 4
  call void @print_info()
  br label %if.end.175

if.else.153:                                      ; preds = %while.end.125
  %88 = load i32, i32* @tk, align 4
  %cmp154 = icmp eq i32 %88, 123
  br i1 %cmp154, label %if.then.156, label %if.end.174

if.then.156:                                      ; preds = %if.else.153
  %89 = load i32, i32* %sc, align 4
  %cmp157 = icmp eq i32 %89, 4
  br i1 %cmp157, label %land.lhs.true.159, label %if.end.173

land.lhs.true.159:                                ; preds = %if.then.156
  %90 = load i8*, i8** %id, align 8
  %tobool160 = icmp ne i8* %90, null
  br i1 %tobool160, label %land.lhs.true.161, label %if.end.173

land.lhs.true.161:                                ; preds = %land.lhs.true.159
  %91 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  %tobool162 = icmp ne %struct.sym* %91, null
  br i1 %tobool162, label %if.then.163, label %if.end.173

if.then.163:                                      ; preds = %land.lhs.true.161
  %call164 = call i8* @matching_regexp()
  store i8* %call164, i8** %regexp, align 8
  %92 = load i8*, i8** @in, align 8
  %93 = load i8*, i8** @inbuffer, align 8
  %sub.ptr.lhs.cast165 = ptrtoint i8* %92 to i64
  %sub.ptr.rhs.cast166 = ptrtoint i8* %93 to i64
  %sub.ptr.sub167 = sub i64 %sub.ptr.lhs.cast165, %sub.ptr.rhs.cast166
  %conv168 = trunc i64 %sub.ptr.sub167 to i32
  store i32 %conv168, i32* %pos, align 4
  %94 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  %cmp169 = icmp ne %struct.sym* %94, null
  br i1 %cmp169, label %if.then.171, label %if.end.172

if.then.171:                                      ; preds = %if.then.163
  %95 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  %96 = load i8*, i8** %id, align 8
  %97 = load i8*, i8** %regexp, align 8
  %98 = load i32, i32* %pos, align 4
  %99 = load i32, i32* %sc, align 4
  %100 = load i32, i32* %vis.addr, align 4
  call void @add_member_decl(%struct.sym* %95, i8* %96, i8* %97, i32 %98, i32 0, i32 1, i32 %99, i32 %100, i32 0)
  %101 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  %102 = load i8*, i8** %id, align 8
  %103 = load i8*, i8** %regexp, align 8
  %104 = load i32, i32* %pos, align 4
  %105 = load i32, i32* %sc, align 4
  call void @add_member_defn(%struct.sym* %101, i8* %102, i8* %103, i32 %104, i32 0, i32 1, i32 %105, i32 0)
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.171, %if.then.163
  br label %if.end.173

if.end.173:                                       ; preds = %if.end.172, %land.lhs.true.161, %land.lhs.true.159, %if.then.156
  call void @skip_matching()
  call void @print_info()
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173, %if.else.153
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174, %if.end.151
  %106 = load i8*, i8** %id, align 8
  call void @free(i8* %106) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @operator_name(i32* %sc) #0 {
entry:
  %sc.addr = alloca i32*, align 8
  %s = alloca i8*, align 8
  %len = alloca i64, align 8
  %slen = alloca i64, align 8
  %new_size = alloca i64, align 8
  %z = alloca i8*, align 8
  %tokens_matched = alloca i64, align 8
  %new_size32 = alloca i32, align 4
  %z44 = alloca i8*, align 8
  %idlen = alloca i64, align 8
  %new_size66 = alloca i64, align 8
  store i32* %sc, i32** %sc.addr, align 8
  %call = call i32 @yylex()
  store i32 %call, i32* @tk, align 4
  %0 = load i32, i32* @tk, align 4
  %cmp = icmp eq i32 %0, 310
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @tk, align 4
  %cmp1 = icmp eq i32 %1, 296
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i32*, i32** %sc.addr, align 8
  %3 = load i32, i32* %2, align 4
  %cmp2 = icmp ne i32 %3, 3
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %4 = load i32*, i32** %sc.addr, align 8
  store i32 2, i32* %4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %5 = load i32, i32* @tk, align 4
  %cmp4 = icmp eq i32 %5, -1
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %call5 = call i32 @yylex()
  store i32 %call5, i32* @tk, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %6 = load i32, i32* @tk, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call5, %cond.true ], [ %6, %cond.false ]
  %call6 = call i8* @token_string(i32 %cond)
  store i8* %call6, i8** %s, align 8
  %call7 = call i32 @yylex()
  store i32 %call7, i32* @tk, align 4
  %7 = load i8*, i8** %s, align 8
  %call8 = call i64 @strlen(i8* %7) #8
  store i64 %call8, i64* %slen, align 8
  %8 = load i64, i64* %slen, align 8
  %add = add nsw i64 %8, 10
  store i64 %add, i64* %len, align 8
  %9 = load i64, i64* %len, align 8
  %10 = load i64, i64* @operator_name.id_size, align 8
  %cmp9 = icmp ugt i64 %9, %10
  br i1 %cmp9, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %cond.end
  %11 = load i64, i64* %len, align 8
  %12 = load i64, i64* @operator_name.id_size, align 8
  %mul = mul i64 2, %12
  %cmp11 = icmp ugt i64 %11, %mul
  br i1 %cmp11, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %if.then.10
  %13 = load i64, i64* %len, align 8
  br label %cond.end.15

cond.false.13:                                    ; preds = %if.then.10
  %14 = load i64, i64* @operator_name.id_size, align 8
  %mul14 = mul i64 2, %14
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.13, %cond.true.12
  %cond16 = phi i64 [ %13, %cond.true.12 ], [ %mul14, %cond.false.13 ]
  store i64 %cond16, i64* %new_size, align 8
  %15 = load i8*, i8** @operator_name.id, align 8
  %16 = load i64, i64* %new_size, align 8
  %call17 = call i8* @xrealloc(i8* %15, i64 %16)
  store i8* %call17, i8** @operator_name.id, align 8
  %17 = load i64, i64* %new_size, align 8
  store i64 %17, i64* @operator_name.id_size, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %cond.end.15, %cond.end
  %18 = load i8*, i8** @operator_name.id, align 8
  %19 = load i8*, i8** %s, align 8
  %call19 = call i8* @stpcpy(i8* %18, i8* %19) #6
  store i8* %call19, i8** %z, align 8
  %20 = load i32, i32* @tk, align 4
  %cmp20 = icmp eq i32 %20, 91
  br i1 %cmp20, label %if.then.21, label %if.end.29

if.then.21:                                       ; preds = %if.end.18
  %21 = load i8*, i8** %z, align 8
  %call22 = call i8* @stpcpy(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.111, i32 0, i32 0)) #6
  store i8* %call22, i8** %z, align 8
  %call23 = call i32 @yylex()
  store i32 %call23, i32* @tk, align 4
  %22 = load i32, i32* @tk, align 4
  %cmp24 = icmp eq i32 %22, 93
  br i1 %cmp24, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %if.then.21
  %23 = load i8*, i8** %z, align 8
  %call26 = call i8* @strcpy(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.112, i32 0, i32 0)) #6
  %call27 = call i32 @yylex()
  store i32 %call27, i32* @tk, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %if.then.21
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.18
  br label %if.end.102

if.else:                                          ; preds = %lor.lhs.false
  store i64 0, i64* %tokens_matched, align 8
  store i64 20, i64* %len, align 8
  %24 = load i64, i64* %len, align 8
  %25 = load i64, i64* @operator_name.id_size, align 8
  %cmp30 = icmp ugt i64 %24, %25
  br i1 %cmp30, label %if.then.31, label %if.end.43

if.then.31:                                       ; preds = %if.else
  %26 = load i64, i64* %len, align 8
  %27 = load i64, i64* @operator_name.id_size, align 8
  %mul33 = mul i64 2, %27
  %cmp34 = icmp ugt i64 %26, %mul33
  br i1 %cmp34, label %cond.true.35, label %cond.false.36

cond.true.35:                                     ; preds = %if.then.31
  %28 = load i64, i64* %len, align 8
  br label %cond.end.38

cond.false.36:                                    ; preds = %if.then.31
  %29 = load i64, i64* @operator_name.id_size, align 8
  %mul37 = mul i64 2, %29
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.36, %cond.true.35
  %cond39 = phi i64 [ %28, %cond.true.35 ], [ %mul37, %cond.false.36 ]
  %conv = trunc i64 %cond39 to i32
  store i32 %conv, i32* %new_size32, align 4
  %30 = load i8*, i8** @operator_name.id, align 8
  %31 = load i32, i32* %new_size32, align 4
  %conv40 = sext i32 %31 to i64
  %call41 = call i8* @xrealloc(i8* %30, i64 %conv40)
  store i8* %call41, i8** @operator_name.id, align 8
  %32 = load i32, i32* %new_size32, align 4
  %conv42 = sext i32 %32 to i64
  store i64 %conv42, i64* @operator_name.id_size, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %cond.end.38, %if.else
  %33 = load i8*, i8** @operator_name.id, align 8
  %call45 = call i8* @stpcpy(i8* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i32 0, i32 0)) #6
  store i8* %call45, i8** %z44, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.101, %if.end.43
  %34 = load i32, i32* @tk, align 4
  %cmp46 = icmp eq i32 %34, 40
  br i1 %cmp46, label %land.lhs.true, label %land.rhs

land.lhs.true:                                    ; preds = %while.cond
  %35 = load i64, i64* %tokens_matched, align 8
  %tobool = icmp ne i64 %35, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true, %while.cond
  %36 = load i32, i32* @tk, align 4
  %cmp48 = icmp eq i32 %36, 59
  br i1 %cmp48, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %37 = load i32, i32* @tk, align 4
  %cmp50 = icmp eq i32 %37, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %38 = phi i1 [ true, %land.rhs ], [ %cmp50, %lor.rhs ]
  %lnot = xor i1 %38, true
  br label %land.end

land.end:                                         ; preds = %lor.end, %land.lhs.true
  %39 = phi i1 [ false, %land.lhs.true ], [ %lnot, %lor.end ]
  br i1 %39, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %40 = load i32, i32* @tk, align 4
  %cmp52 = icmp eq i32 %40, -1
  br i1 %cmp52, label %cond.true.54, label %cond.false.56

cond.true.54:                                     ; preds = %while.body
  %call55 = call i32 @yylex()
  store i32 %call55, i32* @tk, align 4
  br label %cond.end.57

cond.false.56:                                    ; preds = %while.body
  %41 = load i32, i32* @tk, align 4
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.56, %cond.true.54
  %cond58 = phi i32 [ %call55, %cond.true.54 ], [ %41, %cond.false.56 ]
  %call59 = call i8* @token_string(i32 %cond58)
  store i8* %call59, i8** %s, align 8
  %42 = load i8*, i8** %s, align 8
  %call60 = call i64 @strlen(i8* %42) #8
  %add61 = add i64 %call60, 2
  %43 = load i64, i64* %len, align 8
  %add62 = add i64 %43, %add61
  store i64 %add62, i64* %len, align 8
  %44 = load i64, i64* %len, align 8
  %45 = load i64, i64* @operator_name.id_size, align 8
  %cmp63 = icmp ugt i64 %44, %45
  br i1 %cmp63, label %if.then.65, label %if.end.76

if.then.65:                                       ; preds = %cond.end.57
  %46 = load i8*, i8** %z44, align 8
  %47 = load i8*, i8** @operator_name.id, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %46 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %47 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %idlen, align 8
  %48 = load i64, i64* %len, align 8
  %49 = load i64, i64* @operator_name.id_size, align 8
  %mul67 = mul i64 2, %49
  %cmp68 = icmp ugt i64 %48, %mul67
  br i1 %cmp68, label %cond.true.70, label %cond.false.71

cond.true.70:                                     ; preds = %if.then.65
  %50 = load i64, i64* %len, align 8
  br label %cond.end.73

cond.false.71:                                    ; preds = %if.then.65
  %51 = load i64, i64* @operator_name.id_size, align 8
  %mul72 = mul i64 2, %51
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.71, %cond.true.70
  %cond74 = phi i64 [ %50, %cond.true.70 ], [ %mul72, %cond.false.71 ]
  store i64 %cond74, i64* %new_size66, align 8
  %52 = load i8*, i8** @operator_name.id, align 8
  %53 = load i64, i64* %new_size66, align 8
  %call75 = call i8* @xrealloc(i8* %52, i64 %53)
  store i8* %call75, i8** @operator_name.id, align 8
  %54 = load i64, i64* %new_size66, align 8
  store i64 %54, i64* @operator_name.id_size, align 8
  %55 = load i8*, i8** @operator_name.id, align 8
  %56 = load i64, i64* %idlen, align 8
  %add.ptr = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %add.ptr, i8** %z44, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %cond.end.73, %cond.end.57
  %57 = load i8*, i8** %s, align 8
  %58 = load i8, i8* %57, align 1
  %conv77 = sext i8 %58 to i32
  %cmp78 = icmp ne i32 %conv77, 41
  br i1 %cmp78, label %land.lhs.true.80, label %if.end.85

land.lhs.true.80:                                 ; preds = %if.end.76
  %59 = load i8*, i8** %s, align 8
  %60 = load i8, i8* %59, align 1
  %conv81 = sext i8 %60 to i32
  %cmp82 = icmp ne i32 %conv81, 93
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %land.lhs.true.80
  %61 = load i8*, i8** %z44, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr, i8** %z44, align 8
  store i8 32, i8* %61, align 1
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %land.lhs.true.80, %if.end.76
  %62 = load i8*, i8** %z44, align 8
  %63 = load i8*, i8** %s, align 8
  %call86 = call i8* @stpcpy(i8* %62, i8* %63) #6
  store i8* %call86, i8** %z44, align 8
  %call87 = call i32 @yylex()
  store i32 %call87, i32* @tk, align 4
  %64 = load i8*, i8** %s, align 8
  %65 = load i8, i8* %64, align 1
  %conv88 = zext i8 %65 to i32
  %idxprom = sext i32 %conv88 to i64
  %call89 = call i16** @__ctype_b_loc() #11
  %66 = load i16*, i16** %call89, align 8
  %arrayidx = getelementptr inbounds i16, i16* %66, i64 %idxprom
  %67 = load i16, i16* %arrayidx, align 2
  %conv90 = zext i16 %67 to i32
  %and = and i32 %conv90, 1024
  %tobool91 = icmp ne i32 %and, 0
  br i1 %tobool91, label %if.end.101, label %land.lhs.true.92

land.lhs.true.92:                                 ; preds = %if.end.85
  %68 = load i8*, i8** %s, align 8
  %69 = load i8, i8* %68, align 1
  %conv93 = sext i8 %69 to i32
  %cmp94 = icmp ne i32 %conv93, 40
  br i1 %cmp94, label %land.lhs.true.96, label %if.end.101

land.lhs.true.96:                                 ; preds = %land.lhs.true.92
  %70 = load i8*, i8** %s, align 8
  %71 = load i8, i8* %70, align 1
  %conv97 = sext i8 %71 to i32
  %cmp98 = icmp ne i32 %conv97, 91
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %land.lhs.true.96
  br label %while.end

if.end.101:                                       ; preds = %land.lhs.true.96, %land.lhs.true.92, %if.end.85
  %72 = load i64, i64* %tokens_matched, align 8
  %inc = add i64 %72, 1
  store i64 %inc, i64* %tokens_matched, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.100, %land.end
  br label %if.end.102

if.end.102:                                       ; preds = %while.end, %if.end.29
  %73 = load i8*, i8** @operator_name.id, align 8
  ret i8* %73
}

; Function Attrs: nounwind uwtable
define internal i32 @parm_list(i32* %flags) #0 {
entry:
  %flags.addr = alloca i32*, align 8
  %hash = alloca i32, align 4
  %type_seen = alloca i32, align 4
  %last_id = alloca i8*, align 8
  %ident_type_hash = alloca i32, align 4
  store i32* %flags, i32** %flags.addr, align 8
  store i32 0, i32* %hash, align 4
  store i32 0, i32* %type_seen, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i32, i32* @tk, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %1 = load i32, i32* @tk, align 4
  %cmp1 = icmp eq i32 %1, 41
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %2 = phi i1 [ true, %while.cond ], [ %cmp1, %lor.rhs ]
  %lnot = xor i1 %2, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %3 = load i32, i32* @tk, align 4
  %cmp2 = icmp eq i32 %3, -1
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %call = call i32 @yylex()
  store i32 %call, i32* @tk, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %4 = load i32, i32* @tk, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %4, %cond.false ]
  switch i32 %cond, label %sw.default [
    i32 40, label %sw.bb
    i32 44, label %sw.bb.3
    i32 264, label %sw.bb.5
    i32 331, label %sw.bb.13
    i32 335, label %sw.bb.21
    i32 291, label %sw.bb.21
    i32 292, label %sw.bb.21
    i32 293, label %sw.bb.21
    i32 298, label %sw.bb.21
    i32 300, label %sw.bb.21
    i32 302, label %sw.bb.21
    i32 308, label %sw.bb.21
    i32 309, label %sw.bb.21
    i32 317, label %sw.bb.21
    i32 318, label %sw.bb.21
    i32 321, label %sw.bb.21
    i32 328, label %sw.bb.21
    i32 329, label %sw.bb.21
    i32 332, label %sw.bb.21
    i32 348, label %sw.bb.21
    i32 260, label %sw.bb.21
    i32 42, label %sw.bb.32
    i32 38, label %sw.bb.32
    i32 91, label %sw.bb.32
    i32 93, label %sw.bb.32
  ]

sw.bb:                                            ; preds = %cond.end
  call void @skip_matching()
  br label %sw.epilog

sw.bb.3:                                          ; preds = %cond.end
  %call4 = call i32 @yylex()
  store i32 %call4, i32* @tk, align 4
  store i32 0, i32* %type_seen, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %cond.end
  %5 = load i32, i32* %type_seen, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb.5
  store i32 0, i32* %ident_type_hash, align 4
  call void @parse_qualified_param_ident_or_type(i8** %last_id)
  %6 = load i8*, i8** %last_id, align 8
  %tobool6 = icmp ne i8* %6, null
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.7
  %7 = load i8*, i8** %last_id, align 8
  %8 = load i8, i8* %7, align 1
  %tobool8 = icmp ne i8 %8, 0
  br i1 %tobool8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %ident_type_hash, align 4
  %shl = shl i32 %9, 1
  %10 = load i8*, i8** %last_id, align 8
  %11 = load i8, i8* %10, align 1
  %conv = sext i8 %11 to i32
  %xor = xor i32 %shl, %conv
  store i32 %xor, i32* %ident_type_hash, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i8*, i8** %last_id, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %last_id, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %hash, align 4
  %shl9 = shl i32 %13, 1
  %14 = load i32, i32* %ident_type_hash, align 4
  %xor10 = xor i32 %shl9, %14
  store i32 %xor10, i32* %hash, align 4
  store i32 1, i32* %type_seen, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end.12

if.else:                                          ; preds = %sw.bb.5
  %call11 = call i32 @yylex()
  store i32 %call11, i32* @tk, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.end
  br label %sw.epilog

sw.bb.13:                                         ; preds = %cond.end
  store i32 1, i32* %type_seen, align 4
  %call14 = call i32 @yylex()
  store i32 %call14, i32* @tk, align 4
  %15 = load i32, i32* @tk, align 4
  %cmp15 = icmp eq i32 %15, 41
  br i1 %cmp15, label %if.end.20, label %if.then.17

if.then.17:                                       ; preds = %sw.bb.13
  %16 = load i32, i32* %hash, align 4
  %shl18 = shl i32 %16, 1
  %xor19 = xor i32 %shl18, 331
  store i32 %xor19, i32* %hash, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %sw.bb.13
  br label %sw.epilog

sw.bb.21:                                         ; preds = %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end
  store i32 1, i32* %type_seen, align 4
  %17 = load i32, i32* %hash, align 4
  %shl22 = shl i32 %17, 1
  %18 = load i32, i32* @tk, align 4
  %cmp23 = icmp eq i32 %18, -1
  br i1 %cmp23, label %cond.true.25, label %cond.false.27

cond.true.25:                                     ; preds = %sw.bb.21
  %call26 = call i32 @yylex()
  store i32 %call26, i32* @tk, align 4
  br label %cond.end.28

cond.false.27:                                    ; preds = %sw.bb.21
  %19 = load i32, i32* @tk, align 4
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.27, %cond.true.25
  %cond29 = phi i32 [ %call26, %cond.true.25 ], [ %19, %cond.false.27 ]
  %xor30 = xor i32 %shl22, %cond29
  store i32 %xor30, i32* %hash, align 4
  %call31 = call i32 @yylex()
  store i32 %call31, i32* @tk, align 4
  br label %sw.epilog

sw.bb.32:                                         ; preds = %cond.end, %cond.end, %cond.end, %cond.end
  %20 = load i32, i32* %hash, align 4
  %shl33 = shl i32 %20, 1
  %21 = load i32, i32* @tk, align 4
  %cmp34 = icmp eq i32 %21, -1
  br i1 %cmp34, label %cond.true.36, label %cond.false.38

cond.true.36:                                     ; preds = %sw.bb.32
  %call37 = call i32 @yylex()
  store i32 %call37, i32* @tk, align 4
  br label %cond.end.39

cond.false.38:                                    ; preds = %sw.bb.32
  %22 = load i32, i32* @tk, align 4
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.38, %cond.true.36
  %cond40 = phi i32 [ %call37, %cond.true.36 ], [ %22, %cond.false.38 ]
  %xor41 = xor i32 %shl33, %cond40
  store i32 %xor41, i32* %hash, align 4
  %call42 = call i32 @yylex()
  store i32 %call42, i32* @tk, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  %call43 = call i32 @yylex()
  store i32 %call43, i32* @tk, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %cond.end.39, %cond.end.28, %if.end.20, %if.end.12, %sw.bb.3, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %23 = load i32, i32* @tk, align 4
  %cmp44 = icmp eq i32 %23, 41
  br i1 %cmp44, label %if.then.46, label %if.end.77

if.then.46:                                       ; preds = %while.end
  %call47 = call i32 @yylex()
  store i32 %call47, i32* @tk, align 4
  %24 = load i32, i32* @tk, align 4
  %cmp48 = icmp eq i32 %24, 293
  br i1 %cmp48, label %if.then.50, label %if.end.54

if.then.50:                                       ; preds = %if.then.46
  %25 = load i32, i32* %hash, align 4
  %shl51 = shl i32 %25, 1
  %xor52 = xor i32 %shl51, 293
  store i32 %xor52, i32* %hash, align 4
  %26 = load i32*, i32** %flags.addr, align 8
  call void @set_flag(i32* %26, i32 4)
  %call53 = call i32 @yylex()
  store i32 %call53, i32* @tk, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.50, %if.then.46
  %27 = load i32, i32* @tk, align 4
  %cmp55 = icmp eq i32 %27, 325
  br i1 %cmp55, label %if.then.57, label %if.end.64

if.then.57:                                       ; preds = %if.end.54
  %call58 = call i32 @yylex()
  store i32 %call58, i32* @tk, align 4
  %28 = load i32, i32* @tk, align 4
  %cmp59 = icmp eq i32 %28, 40
  br i1 %cmp59, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %if.then.57
  call void @skip_matching()
  br label %if.end.63

if.else.62:                                       ; preds = %if.then.57
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.62, %if.then.61
  %29 = load i32*, i32** %flags.addr, align 8
  call void @set_flag(i32* %29, i32 128)
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.end.54
  %30 = load i32, i32* @tk, align 4
  %cmp65 = icmp eq i32 %30, 61
  br i1 %cmp65, label %if.then.67, label %if.end.76

if.then.67:                                       ; preds = %if.end.64
  %call68 = call i32 @yylex()
  store i32 %call68, i32* @tk, align 4
  %31 = load i32, i32* @tk, align 4
  %cmp69 = icmp eq i32 %31, 258
  br i1 %cmp69, label %land.lhs.true, label %if.end.75

land.lhs.true:                                    ; preds = %if.then.67
  %32 = load i32, i32* @yyival, align 4
  %cmp71 = icmp eq i32 %32, 0
  br i1 %cmp71, label %if.then.73, label %if.end.75

if.then.73:                                       ; preds = %land.lhs.true
  %call74 = call i32 @yylex()
  store i32 %call74, i32* @tk, align 4
  %33 = load i32*, i32** %flags.addr, align 8
  call void @set_flag(i32* %33, i32 8)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.73, %land.lhs.true, %if.then.67
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.end.64
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %while.end
  %34 = load i32, i32* %hash, align 4
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define internal void @add_member_decl(%struct.sym* %cls, i8* %name, i8* %regexp, i32 %pos, i32 %hash, i32 %var, i32 %sc, i32 %vis, i32 %flags) #0 {
entry:
  %cls.addr = alloca %struct.sym*, align 8
  %name.addr = alloca i8*, align 8
  %regexp.addr = alloca i8*, align 8
  %pos.addr = alloca i32, align 4
  %hash.addr = alloca i32, align 4
  %var.addr = alloca i32, align 4
  %sc.addr = alloca i32, align 4
  %vis.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %m = alloca %struct.member*, align 8
  store %struct.sym* %cls, %struct.sym** %cls.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %regexp, i8** %regexp.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %hash, i32* %hash.addr, align 4
  store i32 %var, i32* %var.addr, align 4
  store i32 %sc, i32* %sc.addr, align 4
  store i32 %vis, i32* %vis.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load i32, i32* %var.addr, align 4
  %3 = load i32, i32* %sc.addr, align 4
  %4 = load i32, i32* %hash.addr, align 4
  %call = call %struct.member* @find_member(%struct.sym* %0, i8* %1, i32 %2, i32 %3, i32 %4)
  store %struct.member* %call, %struct.member** %m, align 8
  %5 = load %struct.member*, %struct.member** %m, align 8
  %cmp = icmp eq %struct.member* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  %7 = load i8*, i8** %name.addr, align 8
  %8 = load i32, i32* %var.addr, align 4
  %9 = load i32, i32* %sc.addr, align 4
  %10 = load i32, i32* %hash.addr, align 4
  %call1 = call %struct.member* @add_member(%struct.sym* %6, i8* %7, i32 %8, i32 %9, i32 %10)
  store %struct.member* %call1, %struct.member** %m, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  %filename = getelementptr inbounds %struct.sym, %struct.sym* %11, i32 0, i32 13
  %12 = load i8*, i8** %filename, align 8
  %tobool = icmp ne i8* %12, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.4

lor.lhs.false:                                    ; preds = %if.end
  %13 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  %filename2 = getelementptr inbounds %struct.sym, %struct.sym* %13, i32 0, i32 13
  %14 = load i8*, i8** %filename2, align 8
  %15 = load i8*, i8** @filename, align 8
  %call3 = call zeroext i1 @filename_eq(i8* %14, i8* %15)
  br i1 %call3, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  %16 = load i8*, i8** @filename, align 8
  %17 = load %struct.member*, %struct.member** %m, align 8
  %filename5 = getelementptr inbounds %struct.member, %struct.member* %17, i32 0, i32 7
  store i8* %16, i8** %filename5, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %lor.lhs.false
  %18 = load i8*, i8** %regexp.addr, align 8
  %19 = load %struct.member*, %struct.member** %m, align 8
  %regexp7 = getelementptr inbounds %struct.member, %struct.member* %19, i32 0, i32 6
  store i8* %18, i8** %regexp7, align 8
  %20 = load i32, i32* %pos.addr, align 4
  %21 = load %struct.member*, %struct.member** %m, align 8
  %pos8 = getelementptr inbounds %struct.member, %struct.member* %21, i32 0, i32 8
  store i32 %20, i32* %pos8, align 4
  %22 = load i32, i32* %flags.addr, align 4
  %23 = load %struct.member*, %struct.member** %m, align 8
  %flags9 = getelementptr inbounds %struct.member, %struct.member* %23, i32 0, i32 5
  store i32 %22, i32* %flags9, align 4
  %24 = load i32, i32* %vis.addr, align 4
  switch i32 %24, label %sw.epilog [
    i32 312, label %sw.bb
    i32 313, label %sw.bb.11
    i32 314, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %if.end.6
  %25 = load %struct.member*, %struct.member** %m, align 8
  %vis10 = getelementptr inbounds %struct.member, %struct.member* %25, i32 0, i32 4
  store i32 2, i32* %vis10, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.end.6
  %26 = load %struct.member*, %struct.member** %m, align 8
  %vis12 = getelementptr inbounds %struct.member, %struct.member* %26, i32 0, i32 4
  store i32 1, i32* %vis12, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.end.6
  %27 = load %struct.member*, %struct.member** %m, align 8
  %vis14 = getelementptr inbounds %struct.member, %struct.member* %27, i32 0, i32 4
  store i32 0, i32* %vis14, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.6, %sw.bb.13, %sw.bb.11, %sw.bb
  store i32 2, i32* @info_where, align 4
  %28 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  store %struct.sym* %28, %struct.sym** @info_cls, align 8
  %29 = load %struct.member*, %struct.member** %m, align 8
  store %struct.member* %29, %struct.member** @info_member, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @add_member_defn(%struct.sym* %cls, i8* %name, i8* %regexp, i32 %pos, i32 %hash, i32 %var, i32 %sc, i32 %flags) #0 {
entry:
  %cls.addr = alloca %struct.sym*, align 8
  %name.addr = alloca i8*, align 8
  %regexp.addr = alloca i8*, align 8
  %pos.addr = alloca i32, align 4
  %hash.addr = alloca i32, align 4
  %var.addr = alloca i32, align 4
  %sc.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %m = alloca %struct.member*, align 8
  store %struct.sym* %cls, %struct.sym** %cls.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %regexp, i8** %regexp.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %hash, i32* %hash.addr, align 4
  store i32 %var, i32* %var.addr, align 4
  store i32 %sc, i32* %sc.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i32, i32* %sc.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  %2 = load i8*, i8** %name.addr, align 8
  %3 = load i32, i32* %var.addr, align 4
  %4 = load i32, i32* %hash.addr, align 4
  %call = call %struct.member* @find_member(%struct.sym* %1, i8* %2, i32 %3, i32 1, i32 %4)
  store %struct.member* %call, %struct.member** %m, align 8
  %5 = load %struct.member*, %struct.member** %m, align 8
  %cmp1 = icmp eq %struct.member* %5, null
  br i1 %cmp1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.then
  %6 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  %7 = load i8*, i8** %name.addr, align 8
  %8 = load i32, i32* %var.addr, align 4
  %9 = load i32, i32* %hash.addr, align 4
  %call3 = call %struct.member* @find_member(%struct.sym* %6, i8* %7, i32 %8, i32 2, i32 %9)
  store %struct.member* %call3, %struct.member** %m, align 8
  %10 = load %struct.member*, %struct.member** %m, align 8
  %cmp4 = icmp eq %struct.member* %10, null
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then.2
  %11 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  %12 = load i8*, i8** %name.addr, align 8
  %13 = load i32, i32* %var.addr, align 4
  %14 = load i32, i32* %sc.addr, align 4
  %15 = load i32, i32* %hash.addr, align 4
  %call6 = call %struct.member* @add_member(%struct.sym* %11, i8* %12, i32 %13, i32 %14, i32 %15)
  store %struct.member* %call6, %struct.member** %m, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then.2
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  br label %if.end.13

if.else:                                          ; preds = %entry
  %16 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  %17 = load i8*, i8** %name.addr, align 8
  %18 = load i32, i32* %var.addr, align 4
  %19 = load i32, i32* %sc.addr, align 4
  %20 = load i32, i32* %hash.addr, align 4
  %call8 = call %struct.member* @find_member(%struct.sym* %16, i8* %17, i32 %18, i32 %19, i32 %20)
  store %struct.member* %call8, %struct.member** %m, align 8
  %21 = load %struct.member*, %struct.member** %m, align 8
  %cmp9 = icmp eq %struct.member* %21, null
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.else
  %22 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  %23 = load i8*, i8** %name.addr, align 8
  %24 = load i32, i32* %var.addr, align 4
  %25 = load i32, i32* %sc.addr, align 4
  %26 = load i32, i32* %hash.addr, align 4
  %call11 = call %struct.member* @add_member(%struct.sym* %22, i8* %23, i32 %24, i32 %25, i32 %26)
  store %struct.member* %call11, %struct.member** %m, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end.7
  %27 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  %sfilename = getelementptr inbounds %struct.sym, %struct.sym* %27, i32 0, i32 14
  %28 = load i8*, i8** %sfilename, align 8
  %tobool = icmp ne i8* %28, null
  br i1 %tobool, label %if.end.16, label %if.then.14

if.then.14:                                       ; preds = %if.end.13
  %29 = load i8*, i8** @filename, align 8
  %30 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  %sfilename15 = getelementptr inbounds %struct.sym, %struct.sym* %30, i32 0, i32 14
  store i8* %29, i8** %sfilename15, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.13
  %31 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  %sfilename17 = getelementptr inbounds %struct.sym, %struct.sym* %31, i32 0, i32 14
  %32 = load i8*, i8** %sfilename17, align 8
  %33 = load i8*, i8** @filename, align 8
  %call18 = call zeroext i1 @filename_eq(i8* %32, i8* %33)
  br i1 %call18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.end.16
  %34 = load i8*, i8** @filename, align 8
  %35 = load %struct.member*, %struct.member** %m, align 8
  %def_filename = getelementptr inbounds %struct.member, %struct.member* %35, i32 0, i32 10
  store i8* %34, i8** %def_filename, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.16
  %36 = load i8*, i8** %regexp.addr, align 8
  %37 = load %struct.member*, %struct.member** %m, align 8
  %def_regexp = getelementptr inbounds %struct.member, %struct.member* %37, i32 0, i32 9
  store i8* %36, i8** %def_regexp, align 8
  %38 = load i32, i32* %pos.addr, align 4
  %39 = load %struct.member*, %struct.member** %m, align 8
  %def_pos = getelementptr inbounds %struct.member, %struct.member* %39, i32 0, i32 11
  store i32 %38, i32* %def_pos, align 4
  %40 = load i32, i32* %flags.addr, align 4
  %41 = load %struct.member*, %struct.member** %m, align 8
  %flags21 = getelementptr inbounds %struct.member, %struct.member* %41, i32 0, i32 5
  %42 = load i32, i32* %flags21, align 4
  %or = or i32 %42, %40
  store i32 %or, i32* %flags21, align 4
  store i32 1, i32* @info_where, align 4
  %43 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  store %struct.sym* %43, %struct.sym** @info_cls, align 8
  %44 = load %struct.member*, %struct.member** %m, align 8
  store %struct.member* %44, %struct.member** @info_member, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_info() #0 {
entry:
  %0 = load i32, i32* @info_position, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** @in, align 8
  %2 = load i8*, i8** @inbuffer, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %3 = load i32, i32* @info_position, align 4
  %conv = sext i32 %3 to i64
  %cmp1 = icmp sle i64 %sub.ptr.sub, %conv
  br i1 %cmp1, label %if.then, label %if.end.7

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.sym*, %struct.sym** @info_cls, align 8
  %tobool = icmp ne %struct.sym* %4, null
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %5 = load %struct.sym*, %struct.sym** @info_cls, align 8
  %name = getelementptr inbounds %struct.sym, %struct.sym* %5, i32 0, i32 16
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %name, i32 0, i32 0
  %6 = load %struct.sym*, %struct.sym** @info_cls, align 8
  %call = call i8* @sym_scope(%struct.sym* %6)
  %7 = load %struct.member*, %struct.member** @info_member, align 8
  %name4 = getelementptr inbounds %struct.member, %struct.member* %7, i32 0, i32 12
  %arraydecay5 = getelementptr inbounds [0 x i8], [0 x i8]* %name4, i32 0, i32 0
  %8 = load i32, i32* @info_where, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.148, i32 0, i32 0), i8* %arraydecay, i8* %call, i8* %arraydecay5, i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @token_string(i32 %t) #0 {
entry:
  %retval = alloca i8*, align 8
  %t.addr = alloca i32, align 4
  store i32 %t, i32* %t.addr, align 4
  %0 = load i32, i32* %t.addr, align 4
  switch i32 %0, label %sw.default [
    i32 256, label %sw.bb
    i32 257, label %sw.bb.1
    i32 258, label %sw.bb.2
    i32 259, label %sw.bb.3
    i32 260, label %sw.bb.4
    i32 261, label %sw.bb.5
    i32 262, label %sw.bb.6
    i32 263, label %sw.bb.7
    i32 264, label %sw.bb.8
    i32 265, label %sw.bb.9
    i32 266, label %sw.bb.10
    i32 267, label %sw.bb.11
    i32 268, label %sw.bb.12
    i32 269, label %sw.bb.13
    i32 270, label %sw.bb.14
    i32 271, label %sw.bb.15
    i32 272, label %sw.bb.16
    i32 273, label %sw.bb.17
    i32 274, label %sw.bb.18
    i32 275, label %sw.bb.19
    i32 276, label %sw.bb.20
    i32 277, label %sw.bb.21
    i32 278, label %sw.bb.22
    i32 279, label %sw.bb.23
    i32 280, label %sw.bb.24
    i32 281, label %sw.bb.25
    i32 282, label %sw.bb.26
    i32 283, label %sw.bb.27
    i32 284, label %sw.bb.28
    i32 285, label %sw.bb.29
    i32 286, label %sw.bb.30
    i32 287, label %sw.bb.31
    i32 288, label %sw.bb.32
    i32 289, label %sw.bb.33
    i32 290, label %sw.bb.34
    i32 291, label %sw.bb.35
    i32 292, label %sw.bb.36
    i32 293, label %sw.bb.37
    i32 294, label %sw.bb.38
    i32 295, label %sw.bb.39
    i32 296, label %sw.bb.40
    i32 297, label %sw.bb.41
    i32 298, label %sw.bb.42
    i32 299, label %sw.bb.43
    i32 300, label %sw.bb.44
    i32 301, label %sw.bb.45
    i32 302, label %sw.bb.46
    i32 303, label %sw.bb.47
    i32 304, label %sw.bb.48
    i32 305, label %sw.bb.49
    i32 306, label %sw.bb.50
    i32 307, label %sw.bb.51
    i32 308, label %sw.bb.52
    i32 309, label %sw.bb.53
    i32 310, label %sw.bb.54
    i32 311, label %sw.bb.55
    i32 312, label %sw.bb.56
    i32 313, label %sw.bb.57
    i32 314, label %sw.bb.58
    i32 315, label %sw.bb.59
    i32 316, label %sw.bb.60
    i32 317, label %sw.bb.61
    i32 318, label %sw.bb.62
    i32 319, label %sw.bb.63
    i32 320, label %sw.bb.64
    i32 321, label %sw.bb.65
    i32 322, label %sw.bb.66
    i32 323, label %sw.bb.67
    i32 324, label %sw.bb.68
    i32 325, label %sw.bb.69
    i32 326, label %sw.bb.70
    i32 327, label %sw.bb.71
    i32 328, label %sw.bb.72
    i32 329, label %sw.bb.73
    i32 330, label %sw.bb.74
    i32 331, label %sw.bb.75
    i32 332, label %sw.bb.76
    i32 333, label %sw.bb.77
    i32 334, label %sw.bb.78
    i32 335, label %sw.bb.79
    i32 336, label %sw.bb.80
    i32 337, label %sw.bb.81
    i32 338, label %sw.bb.82
    i32 339, label %sw.bb.83
    i32 340, label %sw.bb.84
    i32 341, label %sw.bb.85
    i32 342, label %sw.bb.86
    i32 343, label %sw.bb.87
    i32 344, label %sw.bb.88
    i32 345, label %sw.bb.89
    i32 346, label %sw.bb.90
    i32 347, label %sw.bb.91
    i32 348, label %sw.bb.92
    i32 0, label %sw.bb.93
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.113, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.114, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.115, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.116, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.117, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.119, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.120, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.8:                                          ; preds = %entry
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.121, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.9:                                          ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.122, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.10:                                         ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.123, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.11:                                         ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.12:                                         ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.125, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.13:                                         ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.14:                                         ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.127, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.15:                                         ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.128, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.16:                                         ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.129, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.17:                                         ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.130, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.18:                                         ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.131, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.19:                                         ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.132, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.20:                                         ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.133, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.21:                                         ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.134, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.22:                                         ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.135, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.23:                                         ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.136, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.24:                                         ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.137, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.25:                                         ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.138, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.26:                                         ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.139, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.27:                                         ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.140, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.28:                                         ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.141, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.29:                                         ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.142, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.30:                                         ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.31:                                         ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.32:                                         ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.33:                                         ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.34:                                         ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.35:                                         ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.36:                                         ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.37:                                         ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.38:                                         ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.39:                                         ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.40:                                         ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.41:                                         ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.42:                                         ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.43:                                         ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.44:                                         ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.45:                                         ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.46:                                         ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.47:                                         ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.48:                                         ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.49:                                         ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.50:                                         ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.51:                                         ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.52:                                         ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.53:                                         ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.54:                                         ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.55:                                         ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.56:                                         ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.57:                                         ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.75, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.58:                                         ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.59:                                         ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.77, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.60:                                         ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.61:                                         ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.62:                                         ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.63:                                         ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.64:                                         ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.65:                                         ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.66:                                         ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.67:                                         ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.87, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.68:                                         ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.69:                                         ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.70:                                         ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.71:                                         ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.92, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.72:                                         ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.95, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.73:                                         ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.96, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.74:                                         ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.98, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.75:                                         ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.99, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.76:                                         ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.100, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.77:                                         ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.102, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.78:                                         ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.79:                                         ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.80:                                         ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.81:                                         ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.82:                                         ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.143, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.83:                                         ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.84:                                         ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.85:                                         ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.94, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.86:                                         ; preds = %entry
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.87:                                         ; preds = %entry
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.88:                                         ; preds = %entry
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.78, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.89:                                         ; preds = %entry
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.84, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.90:                                         ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.91:                                         ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.97, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.92:                                         ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.101, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.93:                                         ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.144, i32 0, i32 0), i8** %retval
  br label %return

sw.default:                                       ; preds = %entry
  %1 = load i32, i32* %t.addr, align 4
  %cmp = icmp slt i32 %1, 255
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.default
  %2 = load i32, i32* %t.addr, align 4
  %conv = trunc i32 %2 to i8
  store i8 %conv, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @token_string.b, i32 0, i64 0), align 1
  store i8 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @token_string.b, i32 0, i64 1), align 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @token_string.b, i32 0, i32 0), i8** %retval
  br label %return

if.else:                                          ; preds = %sw.default
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.145, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then, %sw.bb.93, %sw.bb.92, %sw.bb.91, %sw.bb.90, %sw.bb.89, %sw.bb.88, %sw.bb.87, %sw.bb.86, %sw.bb.85, %sw.bb.84, %sw.bb.83, %sw.bb.82, %sw.bb.81, %sw.bb.80, %sw.bb.79, %sw.bb.78, %sw.bb.77, %sw.bb.76, %sw.bb.75, %sw.bb.74, %sw.bb.73, %sw.bb.72, %sw.bb.71, %sw.bb.70, %sw.bb.69, %sw.bb.68, %sw.bb.67, %sw.bb.66, %sw.bb.65, %sw.bb.64, %sw.bb.63, %sw.bb.62, %sw.bb.61, %sw.bb.60, %sw.bb.59, %sw.bb.58, %sw.bb.57, %sw.bb.56, %sw.bb.55, %sw.bb.54, %sw.bb.53, %sw.bb.52, %sw.bb.51, %sw.bb.50, %sw.bb.49, %sw.bb.48, %sw.bb.47, %sw.bb.46, %sw.bb.45, %sw.bb.44, %sw.bb.43, %sw.bb.42, %sw.bb.41, %sw.bb.40, %sw.bb.39, %sw.bb.38, %sw.bb.37, %sw.bb.36, %sw.bb.35, %sw.bb.34, %sw.bb.33, %sw.bb.32, %sw.bb.31, %sw.bb.30, %sw.bb.29, %sw.bb.28, %sw.bb.27, %sw.bb.26, %sw.bb.25, %sw.bb.24, %sw.bb.23, %sw.bb.22, %sw.bb.21, %sw.bb.20, %sw.bb.19, %sw.bb.18, %sw.bb.17, %sw.bb.16, %sw.bb.15, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %3 = load i8*, i8** %retval
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define internal void @parse_qualified_param_ident_or_type(i8** %last_id) #0 {
entry:
  %last_id.addr = alloca i8**, align 8
  %cls = alloca %struct.sym*, align 8
  %len = alloca i32, align 4
  store i8** %last_id, i8*** %last_id.addr, align 8
  store %struct.sym* null, %struct.sym** %cls, align 8
  %0 = load i32, i32* @tk, align 4
  %cmp = icmp eq i32 %0, 264
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.110, i32 0, i32 0), i32 2960, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.parse_qualified_param_ident_or_type, i32 0, i32 0)) #10
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  br label %do.body

do.body:                                          ; preds = %do.cond, %cond.end
  %2 = load i8*, i8** @yytext, align 8
  %call = call i64 @strlen(i8* %2) #8
  %add = add i64 %call, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %len, align 4
  %3 = load i32, i32* %len, align 4
  %4 = load i32, i32* @parse_qualified_param_ident_or_type.id_size, align 4
  %cmp1 = icmp sgt i32 %3, %4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %5 = load i8*, i8** @parse_qualified_param_ident_or_type.id, align 8
  %6 = load i32, i32* %len, align 4
  %conv3 = sext i32 %6 to i64
  %call4 = call i8* @xrealloc(i8* %5, i64 %conv3)
  store i8* %call4, i8** @parse_qualified_param_ident_or_type.id, align 8
  %7 = load i32, i32* %len, align 4
  store i32 %7, i32* @parse_qualified_param_ident_or_type.id_size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %8 = load i8*, i8** @parse_qualified_param_ident_or_type.id, align 8
  %9 = load i8*, i8** @yytext, align 8
  %call5 = call i8* @strcpy(i8* %8, i8* %9) #6
  %10 = load i8*, i8** @parse_qualified_param_ident_or_type.id, align 8
  %11 = load i8**, i8*** %last_id.addr, align 8
  store i8* %10, i8** %11, align 8
  %call6 = call i32 @yylex()
  store i32 %call6, i32* @tk, align 4
  %12 = load i32, i32* @tk, align 4
  %cmp7 = icmp eq i32 %12, 60
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  call void @skip_matching()
  br label %if.end.10

if.else:                                          ; preds = %if.end
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  %13 = load i32, i32* @tk, align 4
  %cmp11 = icmp eq i32 %13, 279
  br i1 %cmp11, label %if.then.13, label %if.else.16

if.then.13:                                       ; preds = %if.end.10
  %14 = load i8*, i8** @parse_qualified_param_ident_or_type.id, align 8
  %15 = load %struct.sym*, %struct.sym** %cls, align 8
  %call14 = call %struct.sym* @add_sym(i8* %14, %struct.sym* %15)
  store %struct.sym* %call14, %struct.sym** %cls, align 8
  %16 = load i8**, i8*** %last_id.addr, align 8
  store i8* null, i8** %16, align 8
  %call15 = call i32 @yylex()
  store i32 %call15, i32* @tk, align 4
  br label %if.end.17

if.else.16:                                       ; preds = %if.end.10
  br label %do.end

if.end.17:                                        ; preds = %if.then.13
  br label %do.cond

do.cond:                                          ; preds = %if.end.17
  %17 = load i32, i32* @tk, align 4
  %cmp18 = icmp eq i32 %17, 264
  br i1 %cmp18, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.else.16
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.member* @find_member(%struct.sym* %cls, i8* %name, i32 %var, i32 %sc, i32 %hash) #0 {
entry:
  %cls.addr = alloca %struct.sym*, align 8
  %name.addr = alloca i8*, align 8
  %var.addr = alloca i32, align 4
  %sc.addr = alloca i32, align 4
  %hash.addr = alloca i32, align 4
  %list = alloca %struct.member**, align 8
  %p = alloca %struct.member*, align 8
  %name_hash = alloca i32, align 4
  %s = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.sym* %cls, %struct.sym** %cls.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %var, i32* %var.addr, align 4
  store i32 %sc, i32* %sc.addr, align 4
  store i32 %hash, i32* %hash.addr, align 4
  store i32 0, i32* %name_hash, align 4
  %0 = load i32, i32* %sc.addr, align 4
  switch i32 %0, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb.1
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  %friends = getelementptr inbounds %struct.sym, %struct.sym* %1, i32 0, i32 9
  store %struct.member** %friends, %struct.member*** %list, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %2 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  %types = getelementptr inbounds %struct.sym, %struct.sym* %2, i32 0, i32 10
  store %struct.member** %types, %struct.member*** %list, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %3 = load i32, i32* %var.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.2
  %4 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  %static_vars = getelementptr inbounds %struct.sym, %struct.sym* %4, i32 0, i32 7
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.2
  %5 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  %static_fns = getelementptr inbounds %struct.sym, %struct.sym* %5, i32 0, i32 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.member** [ %static_vars, %cond.true ], [ %static_fns, %cond.false ]
  store %struct.member** %cond, %struct.member*** %list, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %6 = load i32, i32* %var.addr, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %sw.default
  %7 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  %vars = getelementptr inbounds %struct.sym, %struct.sym* %7, i32 0, i32 5
  br label %cond.end.6

cond.false.5:                                     ; preds = %sw.default
  %8 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  %fns = getelementptr inbounds %struct.sym, %struct.sym* %8, i32 0, i32 6
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.false.5, %cond.true.4
  %cond7 = phi %struct.member** [ %vars, %cond.true.4 ], [ %fns, %cond.false.5 ]
  store %struct.member** %cond7, %struct.member*** %list, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end.6, %cond.end, %sw.bb.1, %sw.bb
  %9 = load i8*, i8** %name.addr, align 8
  store i8* %9, i8** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %10 = load i8*, i8** %s, align 8
  %11 = load i8, i8* %10, align 1
  %tobool8 = icmp ne i8 %11, 0
  br i1 %tobool8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %name_hash, align 4
  %shl = shl i32 %12, 1
  %13 = load i8*, i8** %s, align 8
  %14 = load i8, i8* %13, align 1
  %conv = sext i8 %14 to i32
  %xor = xor i32 %shl, %conv
  store i32 %xor, i32* %name_hash, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %name_hash, align 4
  %rem = urem i32 %16, 1001
  store i32 %rem, i32* %i, align 4
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds [1001 x %struct.member*], [1001 x %struct.member*]* @member_table, i32 0, i64 %idxprom
  %18 = load %struct.member*, %struct.member** %arrayidx, align 8
  store %struct.member* %18, %struct.member** %p, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.19, %for.end
  %19 = load %struct.member*, %struct.member** %p, align 8
  %tobool10 = icmp ne %struct.member* %19, null
  br i1 %tobool10, label %for.body.11, label %for.end.20

for.body.11:                                      ; preds = %for.cond.9
  %20 = load %struct.member*, %struct.member** %p, align 8
  %list12 = getelementptr inbounds %struct.member, %struct.member* %20, i32 0, i32 2
  %21 = load %struct.member**, %struct.member*** %list12, align 8
  %22 = load %struct.member**, %struct.member*** %list, align 8
  %cmp = icmp eq %struct.member** %21, %22
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.11
  %23 = load %struct.member*, %struct.member** %p, align 8
  %param_hash = getelementptr inbounds %struct.member, %struct.member* %23, i32 0, i32 3
  %24 = load i32, i32* %param_hash, align 4
  %25 = load i32, i32* %hash.addr, align 4
  %cmp14 = icmp eq i32 %24, %25
  br i1 %cmp14, label %land.lhs.true.16, label %if.end

land.lhs.true.16:                                 ; preds = %land.lhs.true
  %26 = load i8*, i8** %name.addr, align 8
  %27 = load %struct.member*, %struct.member** %p, align 8
  %name17 = getelementptr inbounds %struct.member, %struct.member* %27, i32 0, i32 12
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %name17, i32 0, i32 0
  %call = call zeroext i1 @streq(i8* %26, i8* %arraydecay)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.16
  br label %for.end.20

if.end:                                           ; preds = %land.lhs.true.16, %land.lhs.true, %for.body.11
  br label %for.inc.19

for.inc.19:                                       ; preds = %if.end
  %28 = load %struct.member*, %struct.member** %p, align 8
  %anext = getelementptr inbounds %struct.member, %struct.member* %28, i32 0, i32 1
  %29 = load %struct.member*, %struct.member** %anext, align 8
  store %struct.member* %29, %struct.member** %p, align 8
  br label %for.cond.9

for.end.20:                                       ; preds = %if.then, %for.cond.9
  %30 = load %struct.member*, %struct.member** %p, align 8
  ret %struct.member* %30
}

; Function Attrs: nounwind uwtable
define internal %struct.member* @add_member(%struct.sym* %cls, i8* %name, i32 %var, i32 %sc, i32 %hash) #0 {
entry:
  %cls.addr = alloca %struct.sym*, align 8
  %name.addr = alloca i8*, align 8
  %var.addr = alloca i32, align 4
  %sc.addr = alloca i32, align 4
  %hash.addr = alloca i32, align 4
  %m = alloca %struct.member*, align 8
  %list = alloca %struct.member**, align 8
  %p = alloca %struct.member*, align 8
  %prev = alloca %struct.member*, align 8
  %name_hash = alloca i32, align 4
  %i = alloca i32, align 4
  %s = alloca i8*, align 8
  store %struct.sym* %cls, %struct.sym** %cls.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %var, i32* %var.addr, align 4
  store i32 %sc, i32* %sc.addr, align 4
  store i32 %hash, i32* %hash.addr, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i64 @strlen(i8* %0) #8
  %add = add i64 84, %call
  %add1 = add i64 %add, 1
  %call2 = call i8* @xmalloc(i64 %add1)
  %1 = bitcast i8* %call2 to %struct.member*
  store %struct.member* %1, %struct.member** %m, align 8
  store i32 0, i32* %name_hash, align 4
  %2 = load %struct.member*, %struct.member** %m, align 8
  %name3 = getelementptr inbounds %struct.member, %struct.member* %2, i32 0, i32 12
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %name3, i32 0, i32 0
  %3 = load i8*, i8** %name.addr, align 8
  %call4 = call i8* @strcpy(i8* %arraydecay, i8* %3) #6
  %4 = load i32, i32* %hash.addr, align 4
  %5 = load %struct.member*, %struct.member** %m, align 8
  %param_hash = getelementptr inbounds %struct.member, %struct.member* %5, i32 0, i32 3
  store i32 %4, i32* %param_hash, align 4
  %6 = load %struct.member*, %struct.member** %m, align 8
  %vis = getelementptr inbounds %struct.member, %struct.member* %6, i32 0, i32 4
  store i32 0, i32* %vis, align 4
  %7 = load %struct.member*, %struct.member** %m, align 8
  %flags = getelementptr inbounds %struct.member, %struct.member* %7, i32 0, i32 5
  store i32 0, i32* %flags, align 4
  %8 = load %struct.member*, %struct.member** %m, align 8
  %regexp = getelementptr inbounds %struct.member, %struct.member* %8, i32 0, i32 6
  store i8* null, i8** %regexp, align 8
  %9 = load %struct.member*, %struct.member** %m, align 8
  %filename = getelementptr inbounds %struct.member, %struct.member* %9, i32 0, i32 7
  store i8* null, i8** %filename, align 8
  %10 = load %struct.member*, %struct.member** %m, align 8
  %pos = getelementptr inbounds %struct.member, %struct.member* %10, i32 0, i32 8
  store i32 0, i32* %pos, align 4
  %11 = load %struct.member*, %struct.member** %m, align 8
  %def_regexp = getelementptr inbounds %struct.member, %struct.member* %11, i32 0, i32 9
  store i8* null, i8** %def_regexp, align 8
  %12 = load %struct.member*, %struct.member** %m, align 8
  %def_filename = getelementptr inbounds %struct.member, %struct.member* %12, i32 0, i32 10
  store i8* null, i8** %def_filename, align 8
  %13 = load %struct.member*, %struct.member** %m, align 8
  %def_pos = getelementptr inbounds %struct.member, %struct.member* %13, i32 0, i32 11
  store i32 0, i32* %def_pos, align 4
  %14 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  %cmp = icmp ne %struct.sym* %14, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.110, i32 0, i32 0), i32 891, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @__PRETTY_FUNCTION__.add_member, i32 0, i32 0)) #10
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %15, %cond.true
  %16 = load i32, i32* %sc.addr, align 4
  switch i32 %16, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb.5
    i32 2, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %cond.end
  %17 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  %friends = getelementptr inbounds %struct.sym, %struct.sym* %17, i32 0, i32 9
  store %struct.member** %friends, %struct.member*** %list, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %cond.end
  %18 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  %types = getelementptr inbounds %struct.sym, %struct.sym* %18, i32 0, i32 10
  store %struct.member** %types, %struct.member*** %list, align 8
  br label %sw.epilog

sw.bb.6:                                          ; preds = %cond.end
  %19 = load i32, i32* %var.addr, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %sw.bb.6
  %20 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  %static_vars = getelementptr inbounds %struct.sym, %struct.sym* %20, i32 0, i32 7
  br label %cond.end.9

cond.false.8:                                     ; preds = %sw.bb.6
  %21 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  %static_fns = getelementptr inbounds %struct.sym, %struct.sym* %21, i32 0, i32 8
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.8, %cond.true.7
  %cond = phi %struct.member** [ %static_vars, %cond.true.7 ], [ %static_fns, %cond.false.8 ]
  store %struct.member** %cond, %struct.member*** %list, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  %22 = load i32, i32* %var.addr, align 4
  %tobool10 = icmp ne i32 %22, 0
  br i1 %tobool10, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %sw.default
  %23 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  %vars = getelementptr inbounds %struct.sym, %struct.sym* %23, i32 0, i32 5
  br label %cond.end.13

cond.false.12:                                    ; preds = %sw.default
  %24 = load %struct.sym*, %struct.sym** %cls.addr, align 8
  %fns = getelementptr inbounds %struct.sym, %struct.sym* %24, i32 0, i32 6
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.12, %cond.true.11
  %cond14 = phi %struct.member** [ %vars, %cond.true.11 ], [ %fns, %cond.false.12 ]
  store %struct.member** %cond14, %struct.member*** %list, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end.13, %cond.end.9, %sw.bb.5, %sw.bb
  %25 = load i8*, i8** %name.addr, align 8
  store i8* %25, i8** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %26 = load i8*, i8** %s, align 8
  %27 = load i8, i8* %26, align 1
  %tobool15 = icmp ne i8 %27, 0
  br i1 %tobool15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %name_hash, align 4
  %shl = shl i32 %28, 1
  %29 = load i8*, i8** %s, align 8
  %30 = load i8, i8* %29, align 1
  %conv = sext i8 %30 to i32
  %xor = xor i32 %shl, %conv
  store i32 %xor, i32* %name_hash, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load i32, i32* %name_hash, align 4
  %rem = urem i32 %32, 1001
  store i32 %rem, i32* %i, align 4
  %33 = load i32, i32* %i, align 4
  %idxprom = sext i32 %33 to i64
  %arrayidx = getelementptr inbounds [1001 x %struct.member*], [1001 x %struct.member*]* @member_table, i32 0, i64 %idxprom
  %34 = load %struct.member*, %struct.member** %arrayidx, align 8
  %35 = load %struct.member*, %struct.member** %m, align 8
  %anext = getelementptr inbounds %struct.member, %struct.member* %35, i32 0, i32 1
  store %struct.member* %34, %struct.member** %anext, align 8
  %36 = load %struct.member*, %struct.member** %m, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %37 to i64
  %arrayidx17 = getelementptr inbounds [1001 x %struct.member*], [1001 x %struct.member*]* @member_table, i32 0, i64 %idxprom16
  store %struct.member* %36, %struct.member** %arrayidx17, align 8
  %38 = load %struct.member**, %struct.member*** %list, align 8
  %39 = load %struct.member*, %struct.member** %m, align 8
  %list18 = getelementptr inbounds %struct.member, %struct.member* %39, i32 0, i32 2
  store %struct.member** %38, %struct.member*** %list18, align 8
  store %struct.member* null, %struct.member** %prev, align 8
  %40 = load %struct.member**, %struct.member*** %list, align 8
  %41 = load %struct.member*, %struct.member** %40, align 8
  store %struct.member* %41, %struct.member** %p, align 8
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.27, %for.end
  %42 = load %struct.member*, %struct.member** %p, align 8
  %tobool20 = icmp ne %struct.member* %42, null
  br i1 %tobool20, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.19
  %43 = load i8*, i8** %name.addr, align 8
  %44 = load %struct.member*, %struct.member** %p, align 8
  %name21 = getelementptr inbounds %struct.member, %struct.member* %44, i32 0, i32 12
  %arraydecay22 = getelementptr inbounds [0 x i8], [0 x i8]* %name21, i32 0, i32 0
  %call23 = call i32 @strcmp(i8* %43, i8* %arraydecay22) #8
  %cmp24 = icmp sgt i32 %call23, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.19
  %45 = phi i1 [ false, %for.cond.19 ], [ %cmp24, %land.rhs ]
  br i1 %45, label %for.body.26, label %for.end.28

for.body.26:                                      ; preds = %land.end
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.26
  %46 = load %struct.member*, %struct.member** %p, align 8
  store %struct.member* %46, %struct.member** %prev, align 8
  %47 = load %struct.member*, %struct.member** %p, align 8
  %next = getelementptr inbounds %struct.member, %struct.member* %47, i32 0, i32 0
  %48 = load %struct.member*, %struct.member** %next, align 8
  store %struct.member* %48, %struct.member** %p, align 8
  br label %for.cond.19

for.end.28:                                       ; preds = %land.end
  %49 = load %struct.member*, %struct.member** %p, align 8
  %50 = load %struct.member*, %struct.member** %m, align 8
  %next29 = getelementptr inbounds %struct.member, %struct.member* %50, i32 0, i32 0
  store %struct.member* %49, %struct.member** %next29, align 8
  %51 = load %struct.member*, %struct.member** %prev, align 8
  %tobool30 = icmp ne %struct.member* %51, null
  br i1 %tobool30, label %if.then, label %if.else

if.then:                                          ; preds = %for.end.28
  %52 = load %struct.member*, %struct.member** %m, align 8
  %53 = load %struct.member*, %struct.member** %prev, align 8
  %next31 = getelementptr inbounds %struct.member, %struct.member* %53, i32 0, i32 0
  store %struct.member* %52, %struct.member** %next31, align 8
  br label %if.end

if.else:                                          ; preds = %for.end.28
  %54 = load %struct.member*, %struct.member** %m, align 8
  %55 = load %struct.member**, %struct.member*** %list, align 8
  store %struct.member* %54, %struct.member** %55, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %56 = load %struct.member*, %struct.member** %m, align 8
  ret %struct.member* %56
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @filename_eq(i8* %x, i8* %y) #0 {
entry:
  %x.addr = alloca i8*, align 8
  %y.addr = alloca i8*, align 8
  store i8* %x, i8** %x.addr, align 8
  store i8* %y, i8** %y.addr, align 8
  %0 = load i8*, i8** %x.addr, align 8
  %1 = load i8*, i8** %y.addr, align 8
  %call = call zeroext i1 @streq(i8* %0, i8* %1)
  ret i1 %call
}

; Function Attrs: nounwind uwtable
define internal i8* @sym_scope(%struct.sym* %p) #0 {
entry:
  %p.addr = alloca %struct.sym*, align 8
  store %struct.sym* %p, %struct.sym** %p.addr, align 8
  %0 = load i8*, i8** @scope_buffer, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1024, i32* @scope_buffer_size, align 4
  %1 = load i32, i32* @scope_buffer_size, align 4
  %conv = sext i32 %1 to i64
  %call = call i8* @xmalloc(i64 %conv)
  store i8* %call, i8** @scope_buffer, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** @scope_buffer, align 8
  store i8 0, i8* %2, align 1
  store i32 0, i32* @scope_buffer_len, align 4
  %3 = load %struct.sym*, %struct.sym** %p.addr, align 8
  %namesp = getelementptr inbounds %struct.sym, %struct.sym* %3, i32 0, i32 15
  %4 = load %struct.sym*, %struct.sym** %namesp, align 8
  %tobool1 = icmp ne %struct.sym* %4, null
  br i1 %tobool1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %5 = load %struct.sym*, %struct.sym** %p.addr, align 8
  %namesp3 = getelementptr inbounds %struct.sym, %struct.sym* %5, i32 0, i32 15
  %6 = load %struct.sym*, %struct.sym** %namesp3, align 8
  %call4 = call i8* @sym_scope_1(%struct.sym* %6)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %if.end
  %7 = load i8*, i8** @scope_buffer, align 8
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define internal i8* @sym_scope_1(%struct.sym* %p) #0 {
entry:
  %p.addr = alloca %struct.sym*, align 8
  %len = alloca i32, align 4
  store %struct.sym* %p, %struct.sym** %p.addr, align 8
  %0 = load %struct.sym*, %struct.sym** %p.addr, align 8
  %namesp = getelementptr inbounds %struct.sym, %struct.sym* %0, i32 0, i32 15
  %1 = load %struct.sym*, %struct.sym** %namesp, align 8
  %tobool = icmp ne %struct.sym* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sym*, %struct.sym** %p.addr, align 8
  %namesp1 = getelementptr inbounds %struct.sym, %struct.sym* %2, i32 0, i32 15
  %3 = load %struct.sym*, %struct.sym** %namesp1, align 8
  %call = call i8* @sym_scope_1(%struct.sym* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** @scope_buffer, align 8
  %5 = load i8, i8* %4, align 1
  %tobool2 = icmp ne i8 %5, 0
  br i1 %tobool2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  call void @ensure_scope_buffer_room(i32 3)
  %6 = load i8*, i8** @scope_buffer, align 8
  %7 = load i32, i32* @scope_buffer_len, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  %call4 = call i8* @strcpy(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.136, i32 0, i32 0)) #6
  %8 = load i32, i32* @scope_buffer_len, align 4
  %add = add nsw i32 %8, 2
  store i32 %add, i32* @scope_buffer_len, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %9 = load %struct.sym*, %struct.sym** %p.addr, align 8
  %name = getelementptr inbounds %struct.sym, %struct.sym* %9, i32 0, i32 16
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %name, i32 0, i32 0
  %call6 = call i64 @strlen(i8* %arraydecay) #8
  %conv = trunc i64 %call6 to i32
  store i32 %conv, i32* %len, align 4
  %10 = load i32, i32* %len, align 4
  %add7 = add nsw i32 %10, 1
  call void @ensure_scope_buffer_room(i32 %add7)
  %11 = load i8*, i8** @scope_buffer, align 8
  %12 = load i32, i32* @scope_buffer_len, align 4
  %idx.ext8 = sext i32 %12 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %11, i64 %idx.ext8
  %13 = load %struct.sym*, %struct.sym** %p.addr, align 8
  %name10 = getelementptr inbounds %struct.sym, %struct.sym* %13, i32 0, i32 16
  %arraydecay11 = getelementptr inbounds [0 x i8], [0 x i8]* %name10, i32 0, i32 0
  %call12 = call i8* @strcpy(i8* %add.ptr9, i8* %arraydecay11) #6
  %14 = load i32, i32* %len, align 4
  %15 = load i32, i32* @scope_buffer_len, align 4
  %add13 = add nsw i32 %15, %14
  store i32 %add13, i32* @scope_buffer_len, align 4
  %16 = load %struct.sym*, %struct.sym** %p.addr, align 8
  %flags = getelementptr inbounds %struct.sym, %struct.sym* %16, i32 0, i32 0
  %17 = load i32, i32* %flags, align 4
  %call14 = call zeroext i1 @has_flag(i32 %17, i32 32)
  br i1 %call14, label %if.then.15, label %if.end.20

if.then.15:                                       ; preds = %if.end.5
  call void @ensure_scope_buffer_room(i32 3)
  %18 = load i8*, i8** @scope_buffer, align 8
  %19 = load i32, i32* @scope_buffer_len, align 4
  %idx.ext16 = sext i32 %19 to i64
  %add.ptr17 = getelementptr inbounds i8, i8* %18, i64 %idx.ext16
  %call18 = call i8* @strcpy(i8* %add.ptr17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.149, i32 0, i32 0)) #6
  %20 = load i32, i32* @scope_buffer_len, align 4
  %add19 = add nsw i32 %20, 2
  store i32 %add19, i32* @scope_buffer_len, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.15, %if.end.5
  %21 = load i8*, i8** @scope_buffer, align 8
  ret i8* %21
}

; Function Attrs: nounwind uwtable
define internal void @ensure_scope_buffer_room(i32 %len) #0 {
entry:
  %len.addr = alloca i32, align 4
  %new_size = alloca i32, align 4
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* @scope_buffer_len, align 4
  %1 = load i32, i32* %len.addr, align 4
  %add = add nsw i32 %0, %1
  %2 = load i32, i32* @scope_buffer_size, align 4
  %cmp = icmp sge i32 %add, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* @scope_buffer_size, align 4
  %mul = mul nsw i32 2, %3
  %4 = load i32, i32* @scope_buffer_len, align 4
  %5 = load i32, i32* %len.addr, align 4
  %add1 = add nsw i32 %4, %5
  %cmp2 = icmp sgt i32 %mul, %add1
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %6 = load i32, i32* @scope_buffer_size, align 4
  %mul3 = mul nsw i32 2, %6
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %7 = load i32, i32* @scope_buffer_len, align 4
  %8 = load i32, i32* %len.addr, align 4
  %add4 = add nsw i32 %7, %8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul3, %cond.true ], [ %add4, %cond.false ]
  store i32 %cond, i32* %new_size, align 4
  %9 = load i8*, i8** @scope_buffer, align 8
  %10 = load i32, i32* %new_size, align 4
  %conv = sext i32 %10 to i64
  %call = call i8* @xrealloc(i8* %9, i64 %conv)
  store i8* %call, i8** @scope_buffer, align 8
  %11 = load i32, i32* %new_size, align 4
  store i32 %11, i32* @scope_buffer_size, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @has_flag(i32 %f, i32 %flag) #0 {
entry:
  %f.addr = alloca i32, align 4
  %flag.addr = alloca i32, align 4
  store i32 %f, i32* %f.addr, align 4
  store i32 %flag, i32* %flag.addr, align 4
  %0 = load i32, i32* %f.addr, align 4
  %1 = load i32, i32* %flag.addr, align 4
  %and = and i32 %0, %1
  %cmp = icmp ne i32 %and, 0
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define internal void @skip_initializer() #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %entry
  %0 = load i32, i32* @tk, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  %call = call i32 @yylex()
  store i32 %call, i32* @tk, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %1 = load i32, i32* @tk, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %1, %cond.false ]
  switch i32 %cond, label %sw.default [
    i32 59, label %sw.bb
    i32 44, label %sw.bb
    i32 0, label %sw.bb
    i32 123, label %sw.bb.1
    i32 91, label %sw.bb.1
    i32 40, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %cond.end, %cond.end, %cond.end
  ret void

sw.bb.1:                                          ; preds = %cond.end, %cond.end, %cond.end
  call void @skip_matching()
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  %call2 = call i32 @yylex()
  store i32 %call2, i32* @tk, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.1
  br label %for.cond
}

; Function Attrs: nounwind uwtable
define internal void @add_declarator(%struct.sym** %cls, i8** %id, i32 %flags, i32 %sc) #0 {
entry:
  %cls.addr = alloca %struct.sym**, align 8
  %id.addr = alloca i8**, align 8
  %flags.addr = alloca i32, align 4
  %sc.addr = alloca i32, align 4
  %regexp = alloca i8*, align 8
  %pos = alloca i32, align 4
  %regexp15 = alloca i8*, align 8
  %pos17 = alloca i32, align 4
  store %struct.sym** %cls, %struct.sym*** %cls.addr, align 8
  store i8** %id, i8*** %id.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i32 %sc, i32* %sc.addr, align 4
  %0 = load i32, i32* @tk, align 4
  %cmp = icmp eq i32 %0, 59
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @tk, align 4
  %cmp1 = icmp eq i32 %1, 44
  br i1 %cmp1, label %if.then, label %if.else.7

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i8**, i8*** %id.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.then
  %call = call i8* @matching_regexp()
  store i8* %call, i8** %regexp, align 8
  %4 = load i8*, i8** @in, align 8
  %5 = load i8*, i8** @inbuffer, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %pos, align 4
  %6 = load %struct.sym**, %struct.sym*** %cls.addr, align 8
  %7 = load %struct.sym*, %struct.sym** %6, align 8
  %tobool3 = icmp ne %struct.sym* %7, null
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then.2
  %8 = load %struct.sym**, %struct.sym*** %cls.addr, align 8
  %9 = load %struct.sym*, %struct.sym** %8, align 8
  %10 = load i8**, i8*** %id.addr, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = load i8*, i8** %regexp, align 8
  %13 = load i32, i32* %pos, align 4
  %14 = load i32, i32* %flags.addr, align 4
  call void @add_member_defn(%struct.sym* %9, i8* %11, i8* %12, i32 %13, i32 0, i32 1, i32 0, i32 %14)
  br label %if.end

if.else:                                          ; preds = %if.then.2
  %15 = load i8**, i8*** %id.addr, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i8*, i8** %regexp, align 8
  %18 = load i32, i32* %pos, align 4
  %19 = load i32, i32* %sc.addr, align 4
  %20 = load i32, i32* %flags.addr, align 4
  call void @add_global_defn(i8* %16, i8* %17, i32 %18, i32 0, i32 1, i32 %19, i32 %20)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %call6 = call i32 @yylex()
  store i32 %call6, i32* @tk, align 4
  call void @print_info()
  br label %if.end.24

if.else.7:                                        ; preds = %lor.lhs.false
  %21 = load i32, i32* @tk, align 4
  %cmp8 = icmp eq i32 %21, 123
  br i1 %cmp8, label %if.then.10, label %if.end.23

if.then.10:                                       ; preds = %if.else.7
  %22 = load i32, i32* %sc.addr, align 4
  %cmp11 = icmp eq i32 %22, 4
  br i1 %cmp11, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.then.10
  %23 = load i8**, i8*** %id.addr, align 8
  %24 = load i8*, i8** %23, align 8
  %tobool13 = icmp ne i8* %24, null
  br i1 %tobool13, label %if.then.14, label %if.end.22

if.then.14:                                       ; preds = %land.lhs.true
  %call16 = call i8* @matching_regexp()
  store i8* %call16, i8** %regexp15, align 8
  %25 = load i8*, i8** @in, align 8
  %26 = load i8*, i8** @inbuffer, align 8
  %sub.ptr.lhs.cast18 = ptrtoint i8* %25 to i64
  %sub.ptr.rhs.cast19 = ptrtoint i8* %26 to i64
  %sub.ptr.sub20 = sub i64 %sub.ptr.lhs.cast18, %sub.ptr.rhs.cast19
  %conv21 = trunc i64 %sub.ptr.sub20 to i32
  store i32 %conv21, i32* %pos17, align 4
  %27 = load i8**, i8*** %id.addr, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = load i8*, i8** %regexp15, align 8
  %30 = load i32, i32* %pos17, align 4
  %31 = load i32, i32* %sc.addr, align 4
  %32 = load i32, i32* %flags.addr, align 4
  call void @add_global_defn(i8* %28, i8* %29, i32 %30, i32 0, i32 1, i32 %31, i32 %32)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.14, %land.lhs.true, %if.then.10
  call void @skip_matching()
  call void @print_info()
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.else.7
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.5
  %33 = load i8**, i8*** %id.addr, align 8
  %34 = load i8*, i8** %33, align 8
  call void @free(i8* %34) #6
  %35 = load i8**, i8*** %id.addr, align 8
  store i8* null, i8** %35, align 8
  %36 = load %struct.sym**, %struct.sym*** %cls.addr, align 8
  store %struct.sym* null, %struct.sym** %36, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.sym* @parse_qualified_ident_or_type(i8** %last_id) #0 {
entry:
  %last_id.addr = alloca i8**, align 8
  %cls = alloca %struct.sym*, align 8
  %id = alloca i8*, align 8
  %id_size = alloca i64, align 8
  %enter = alloca i32, align 4
  %len = alloca i32, align 4
  %pcn = alloca %struct.sym*, align 8
  %pna = alloca %struct.link*, align 8
  store i8** %last_id, i8*** %last_id.addr, align 8
  store %struct.sym* null, %struct.sym** %cls, align 8
  store i8* null, i8** %id, align 8
  store i64 0, i64* %id_size, align 8
  store i32 0, i32* %enter, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.32, %entry
  %0 = load i32, i32* @tk, align 4
  %cmp = icmp eq i32 %0, 264
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** @yytext, align 8
  %call = call i64 @strlen(i8* %1) #8
  %add = add i64 %call, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %len, align 4
  %2 = load i32, i32* %len, align 4
  %conv1 = sext i32 %2 to i64
  %3 = load i64, i64* %id_size, align 8
  %cmp2 = icmp ugt i64 %conv1, %3
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load i8*, i8** %id, align 8
  %5 = load i32, i32* %len, align 4
  %conv4 = sext i32 %5 to i64
  %call5 = call i8* @xrealloc(i8* %4, i64 %conv4)
  store i8* %call5, i8** %id, align 8
  %6 = load i32, i32* %len, align 4
  %conv6 = sext i32 %6 to i64
  store i64 %conv6, i64* %id_size, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %7 = load i8*, i8** %id, align 8
  %8 = load i8*, i8** @yytext, align 8
  %call7 = call i8* @strcpy(i8* %7, i8* %8) #6
  %9 = load i8*, i8** %id, align 8
  %10 = load i8**, i8*** %last_id.addr, align 8
  store i8* %9, i8** %10, align 8
  %call8 = call i32 @yylex()
  store i32 %call8, i32* @tk, align 4
  %11 = load i32, i32* @tk, align 4
  %cmp9 = icmp eq i32 %11, 60
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end
  call void @skip_matching()
  br label %if.end.12

if.else:                                          ; preds = %if.end
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.11
  %12 = load i32, i32* @tk, align 4
  %cmp13 = icmp eq i32 %12, 279
  br i1 %cmp13, label %if.then.15, label %if.else.31

if.then.15:                                       ; preds = %if.end.12
  store %struct.sym* null, %struct.sym** %pcn, align 8
  %13 = load i8*, i8** %id, align 8
  %call16 = call %struct.link* @check_namespace_alias(i8* %13)
  store %struct.link* %call16, %struct.link** %pna, align 8
  %14 = load %struct.link*, %struct.link** %pna, align 8
  %tobool = icmp ne %struct.link* %14, null
  br i1 %tobool, label %if.then.17, label %if.else.19

if.then.17:                                       ; preds = %if.then.15
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.17
  %15 = load %struct.link*, %struct.link** %pna, align 8
  %sym = getelementptr inbounds %struct.link, %struct.link* %15, i32 0, i32 0
  %16 = load %struct.sym*, %struct.sym** %sym, align 8
  %name = getelementptr inbounds %struct.sym, %struct.sym* %16, i32 0, i32 16
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %name, i32 0, i32 0
  call void @enter_namespace(i8* %arraydecay)
  %17 = load i32, i32* %enter, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %enter, align 4
  %18 = load %struct.link*, %struct.link** %pna, align 8
  %next = getelementptr inbounds %struct.link, %struct.link* %18, i32 0, i32 1
  %19 = load %struct.link*, %struct.link** %next, align 8
  store %struct.link* %19, %struct.link** %pna, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %20 = load %struct.link*, %struct.link** %pna, align 8
  %tobool18 = icmp ne %struct.link* %20, null
  br i1 %tobool18, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.29

if.else.19:                                       ; preds = %if.then.15
  %21 = load i8*, i8** %id, align 8
  %22 = load %struct.sym*, %struct.sym** @current_namespace, align 8
  %call20 = call %struct.sym* @check_namespace(i8* %21, %struct.sym* %22)
  store %struct.sym* %call20, %struct.sym** %pcn, align 8
  %tobool21 = icmp ne %struct.sym* %call20, null
  br i1 %tobool21, label %if.then.22, label %if.else.26

if.then.22:                                       ; preds = %if.else.19
  %23 = load %struct.sym*, %struct.sym** %pcn, align 8
  %name23 = getelementptr inbounds %struct.sym, %struct.sym* %23, i32 0, i32 16
  %arraydecay24 = getelementptr inbounds [0 x i8], [0 x i8]* %name23, i32 0, i32 0
  call void @enter_namespace(i8* %arraydecay24)
  %24 = load i32, i32* %enter, align 4
  %inc25 = add nsw i32 %24, 1
  store i32 %inc25, i32* %enter, align 4
  br label %if.end.28

if.else.26:                                       ; preds = %if.else.19
  %25 = load i8*, i8** %id, align 8
  %26 = load %struct.sym*, %struct.sym** %cls, align 8
  %call27 = call %struct.sym* @add_sym(i8* %25, %struct.sym* %26)
  store %struct.sym* %call27, %struct.sym** %cls, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.26, %if.then.22
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %do.end
  %27 = load i8**, i8*** %last_id.addr, align 8
  store i8* null, i8** %27, align 8
  %28 = load i8*, i8** %id, align 8
  call void @free(i8* %28) #6
  store i8* null, i8** %id, align 8
  store i64 0, i64* %id_size, align 8
  %call30 = call i32 @yylex()
  store i32 %call30, i32* @tk, align 4
  br label %if.end.32

if.else.31:                                       ; preds = %if.end.12
  br label %while.end

if.end.32:                                        ; preds = %if.end.29
  br label %while.cond

while.end:                                        ; preds = %if.else.31, %while.cond
  br label %while.cond.33

while.cond.33:                                    ; preds = %while.body.35, %while.end
  %29 = load i32, i32* %enter, align 4
  %dec = add nsw i32 %29, -1
  store i32 %dec, i32* %enter, align 4
  %tobool34 = icmp ne i32 %29, 0
  br i1 %tobool34, label %while.body.35, label %while.end.36

while.body.35:                                    ; preds = %while.cond.33
  call void @leave_namespace()
  br label %while.cond.33

while.end.36:                                     ; preds = %while.cond.33
  %30 = load %struct.sym*, %struct.sym** %cls, align 8
  ret %struct.sym* %30
}

; Function Attrs: nounwind uwtable
define internal void @add_global_decl(i8* %name, i8* %regexp, i32 %pos, i32 %hash, i32 %var, i32 %sc, i32 %flags) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %regexp.addr = alloca i8*, align 8
  %pos.addr = alloca i32, align 4
  %hash.addr = alloca i32, align 4
  %var.addr = alloca i32, align 4
  %sc.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %m = alloca %struct.member*, align 8
  %found = alloca %struct.member*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %regexp, i8** %regexp.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %hash, i32* %hash.addr, align 4
  store i32 %var, i32* %var.addr, align 4
  store i32 %sc, i32* %sc.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.sym*, %struct.sym** @global_symbols, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load i32, i32* %var.addr, align 4
  %3 = load i32, i32* %sc.addr, align 4
  %4 = load i32, i32* %hash.addr, align 4
  %call = call %struct.member* @find_member(%struct.sym* %0, i8* %1, i32 %2, i32 %3, i32 %4)
  store %struct.member* %call, %struct.member** %found, align 8
  store %struct.member* %call, %struct.member** %m, align 8
  %5 = load %struct.member*, %struct.member** %m, align 8
  %cmp = icmp eq %struct.member* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.sym*, %struct.sym** @global_symbols, align 8
  %7 = load i8*, i8** %name.addr, align 8
  %8 = load i32, i32* %var.addr, align 4
  %9 = load i32, i32* %sc.addr, align 4
  %10 = load i32, i32* %hash.addr, align 4
  %call1 = call %struct.member* @add_member(%struct.sym* %6, i8* %7, i32 %8, i32 %9, i32 %10)
  store %struct.member* %call1, %struct.member** %m, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.member*, %struct.member** %found, align 8
  %tobool = icmp ne %struct.member* %11, null
  br i1 %tobool, label %if.end.12, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %12 = load %struct.sym*, %struct.sym** @global_symbols, align 8
  %filename = getelementptr inbounds %struct.sym, %struct.sym* %12, i32 0, i32 13
  %13 = load i8*, i8** %filename, align 8
  %tobool3 = icmp ne i8* %13, null
  br i1 %tobool3, label %lor.lhs.false, label %if.then.6

lor.lhs.false:                                    ; preds = %if.then.2
  %14 = load %struct.sym*, %struct.sym** @global_symbols, align 8
  %filename4 = getelementptr inbounds %struct.sym, %struct.sym* %14, i32 0, i32 13
  %15 = load i8*, i8** %filename4, align 8
  %16 = load i8*, i8** @filename, align 8
  %call5 = call zeroext i1 @filename_eq(i8* %15, i8* %16)
  br i1 %call5, label %if.end.8, label %if.then.6

if.then.6:                                        ; preds = %lor.lhs.false, %if.then.2
  %17 = load i8*, i8** @filename, align 8
  %18 = load %struct.member*, %struct.member** %m, align 8
  %filename7 = getelementptr inbounds %struct.member, %struct.member* %18, i32 0, i32 7
  store i8* %17, i8** %filename7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %lor.lhs.false
  %19 = load i8*, i8** %regexp.addr, align 8
  %20 = load %struct.member*, %struct.member** %m, align 8
  %regexp9 = getelementptr inbounds %struct.member, %struct.member* %20, i32 0, i32 6
  store i8* %19, i8** %regexp9, align 8
  %21 = load i32, i32* %pos.addr, align 4
  %22 = load %struct.member*, %struct.member** %m, align 8
  %pos10 = getelementptr inbounds %struct.member, %struct.member* %22, i32 0, i32 8
  store i32 %21, i32* %pos10, align 4
  %23 = load %struct.member*, %struct.member** %m, align 8
  %vis = getelementptr inbounds %struct.member, %struct.member* %23, i32 0, i32 4
  store i32 0, i32* %vis, align 4
  %24 = load i32, i32* %flags.addr, align 4
  %25 = load %struct.member*, %struct.member** %m, align 8
  %flags11 = getelementptr inbounds %struct.member, %struct.member* %25, i32 0, i32 5
  store i32 %24, i32* %flags11, align 4
  store i32 2, i32* @info_where, align 4
  %26 = load %struct.sym*, %struct.sym** @global_symbols, align 8
  store %struct.sym* %26, %struct.sym** @info_cls, align 8
  %27 = load %struct.member*, %struct.member** %m, align 8
  store %struct.member* %27, %struct.member** @info_member, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.8, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @add_global_defn(i8* %name, i8* %regexp, i32 %pos, i32 %hash, i32 %var, i32 %sc, i32 %flags) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %regexp.addr = alloca i8*, align 8
  %pos.addr = alloca i32, align 4
  %hash.addr = alloca i32, align 4
  %var.addr = alloca i32, align 4
  %sc.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %sym = alloca %struct.sym*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %regexp, i8** %regexp.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %hash, i32* %hash.addr, align 4
  store i32 %var, i32* %var.addr, align 4
  store i32 %sc, i32* %sc.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i32, i32* %var.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end.12, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %if.then
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 1001
  br i1 %cmp, label %for.body, label %for.end.11

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [1001 x %struct.sym*], [1001 x %struct.sym*]* @class_table, i32 0, i64 %idxprom
  %3 = load %struct.sym*, %struct.sym** %arrayidx, align 8
  store %struct.sym* %3, %struct.sym** %sym, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %4 = load %struct.sym*, %struct.sym** %sym, align 8
  %tobool2 = icmp ne %struct.sym* %4, null
  br i1 %tobool2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %5 = load %struct.sym*, %struct.sym** %sym, align 8
  %6 = load %struct.sym*, %struct.sym** @global_symbols, align 8
  %cmp4 = icmp ne %struct.sym* %5, %6
  br i1 %cmp4, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %for.body.3
  %7 = load %struct.sym*, %struct.sym** %sym, align 8
  %friends = getelementptr inbounds %struct.sym, %struct.sym* %7, i32 0, i32 9
  %8 = load %struct.member*, %struct.member** %friends, align 8
  %tobool5 = icmp ne %struct.member* %8, null
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %land.lhs.true
  %9 = load %struct.sym*, %struct.sym** %sym, align 8
  %10 = load i8*, i8** %name.addr, align 8
  %11 = load i32, i32* %hash.addr, align 4
  %call = call %struct.member* @find_member(%struct.sym* %9, i8* %10, i32 0, i32 3, i32 %11)
  %tobool7 = icmp ne %struct.member* %call, null
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then.6
  %12 = load %struct.sym*, %struct.sym** %sym, align 8
  %13 = load i8*, i8** %name.addr, align 8
  %14 = load i8*, i8** %regexp.addr, align 8
  %15 = load i32, i32* %pos.addr, align 4
  %16 = load i32, i32* %hash.addr, align 4
  %17 = load i32, i32* %flags.addr, align 4
  call void @add_member_defn(%struct.sym* %12, i8* %13, i8* %14, i32 %15, i32 %16, i32 0, i32 3, i32 %17)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then.6
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %land.lhs.true, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %18 = load %struct.sym*, %struct.sym** %sym, align 8
  %next = getelementptr inbounds %struct.sym, %struct.sym* %18, i32 0, i32 2
  %19 = load %struct.sym*, %struct.sym** %next, align 8
  store %struct.sym* %19, %struct.sym** %sym, align 8
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.11:                                       ; preds = %for.cond
  br label %if.end.12

if.end.12:                                        ; preds = %for.end.11, %entry
  %21 = load %struct.sym*, %struct.sym** @global_symbols, align 8
  %22 = load i8*, i8** %name.addr, align 8
  %23 = load i8*, i8** %regexp.addr, align 8
  %24 = load i32, i32* %pos.addr, align 4
  %25 = load i32, i32* %hash.addr, align 4
  %26 = load i32, i32* %var.addr, align 4
  %27 = load i32, i32* %sc.addr, align 4
  %28 = load i32, i32* %flags.addr, align 4
  call void @add_member_defn(%struct.sym* %21, i8* %22, i8* %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.link* @check_namespace_alias(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %p = alloca %struct.link*, align 8
  %al = alloca %struct.alias*, align 8
  %h = alloca i32, align 4
  %s = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.link* null, %struct.link** %p, align 8
  %0 = load i8*, i8** %name.addr, align 8
  store i8* %0, i8** %s, align 8
  store i32 0, i32* %h, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8*, i8** %s, align 8
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %h, align 4
  %shl = shl i32 %3, 1
  %4 = load i8*, i8** %s, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %xor = xor i32 %shl, %conv
  store i32 %xor, i32* %h, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %h, align 4
  %rem = urem i32 %7, 1001
  store i32 %rem, i32* %h, align 4
  %8 = load i32, i32* %h, align 4
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds [1001 x %struct.alias*], [1001 x %struct.alias*]* @namespace_alias_table, i32 0, i64 %idxprom
  %9 = load %struct.alias*, %struct.alias** %arrayidx, align 8
  store %struct.alias* %9, %struct.alias** %al, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.7, %for.end
  %10 = load %struct.alias*, %struct.alias** %al, align 8
  %tobool2 = icmp ne %struct.alias* %10, null
  br i1 %tobool2, label %for.body.3, label %for.end.8

for.body.3:                                       ; preds = %for.cond.1
  %11 = load i8*, i8** %name.addr, align 8
  %12 = load %struct.alias*, %struct.alias** %al, align 8
  %name4 = getelementptr inbounds %struct.alias, %struct.alias* %12, i32 0, i32 3
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %name4, i32 0, i32 0
  %call = call zeroext i1 @streq(i8* %11, i8* %arraydecay)
  br i1 %call, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.3
  %13 = load %struct.alias*, %struct.alias** %al, align 8
  %namesp = getelementptr inbounds %struct.alias, %struct.alias* %13, i32 0, i32 1
  %14 = load %struct.sym*, %struct.sym** %namesp, align 8
  %15 = load %struct.sym*, %struct.sym** @current_namespace, align 8
  %cmp = icmp eq %struct.sym* %14, %15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %16 = load %struct.alias*, %struct.alias** %al, align 8
  %aliasee = getelementptr inbounds %struct.alias, %struct.alias* %16, i32 0, i32 2
  %17 = load %struct.link*, %struct.link** %aliasee, align 8
  store %struct.link* %17, %struct.link** %p, align 8
  br label %for.end.8

if.end:                                           ; preds = %land.lhs.true, %for.body.3
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.end
  %18 = load %struct.alias*, %struct.alias** %al, align 8
  %next = getelementptr inbounds %struct.alias, %struct.alias* %18, i32 0, i32 0
  %19 = load %struct.alias*, %struct.alias** %next, align 8
  store %struct.alias* %19, %struct.alias** %al, align 8
  br label %for.cond.1

for.end.8:                                        ; preds = %if.then, %for.cond.1
  %20 = load %struct.link*, %struct.link** %p, align 8
  ret %struct.link* %20
}

; Function Attrs: nounwind uwtable
define internal i32 @process_pp_line() #0 {
entry:
  %in_comment = alloca i32, align 4
  %in_string = alloca i32, align 4
  %c = alloca i32, align 4
  %p = alloca i8*, align 8
  %regexp = alloca i8*, align 8
  %pos = alloca i32, align 4
  store i32 0, i32* %in_comment, align 4
  store i32 0, i32* %in_string, align 4
  %0 = load i8*, i8** @yytext, align 8
  store i8* %0, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8*, i8** @in, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** @in, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  store i32 %conv, i32* %c, align 4
  %conv1 = trunc i32 %conv to i8
  %idxprom = zext i8 %conv1 to i64
  %arrayidx = getelementptr inbounds [255 x i8], [255 x i8]* @is_white, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.2

while.cond.2:                                     ; preds = %while.body.7, %while.end
  %4 = load i32, i32* %c, align 4
  %conv3 = trunc i32 %4 to i8
  %idxprom4 = zext i8 %conv3 to i64
  %arrayidx5 = getelementptr inbounds [255 x i8], [255 x i8]* @is_ident, i32 0, i64 %idxprom4
  %5 = load i8, i8* %arrayidx5, align 1
  %tobool6 = icmp ne i8 %5, 0
  br i1 %tobool6, label %while.body.7, label %while.end.12

while.body.7:                                     ; preds = %while.cond.2
  %6 = load i32, i32* %c, align 4
  %conv8 = trunc i32 %6 to i8
  %7 = load i8*, i8** %p, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr9, i8** %p, align 8
  store i8 %conv8, i8* %7, align 1
  %8 = load i8*, i8** @in, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr10, i8** @in, align 8
  %9 = load i8, i8* %8, align 1
  %conv11 = sext i8 %9 to i32
  store i32 %conv11, i32* %c, align 4
  br label %while.cond.2

while.end.12:                                     ; preds = %while.cond.2
  %10 = load i8*, i8** %p, align 8
  store i8 0, i8* %10, align 1
  %11 = load i8*, i8** @yytext, align 8
  %12 = load i8, i8* %11, align 1
  %conv13 = sext i8 %12 to i32
  %tobool14 = icmp ne i32 %conv13, 0
  br i1 %tobool14, label %land.lhs.true, label %if.end.40

land.lhs.true:                                    ; preds = %while.end.12
  %13 = load i8*, i8** @yytext, align 8
  %call = call zeroext i1 @streq(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.155, i32 0, i32 0))
  br i1 %call, label %if.then, label %if.end.40

if.then:                                          ; preds = %land.lhs.true
  %14 = load i8*, i8** @yytext, align 8
  store i8* %14, i8** %p, align 8
  br label %while.cond.16

while.cond.16:                                    ; preds = %while.body.21, %if.then
  %15 = load i32, i32* %c, align 4
  %conv17 = trunc i32 %15 to i8
  %idxprom18 = zext i8 %conv17 to i64
  %arrayidx19 = getelementptr inbounds [255 x i8], [255 x i8]* @is_white, i32 0, i64 %idxprom18
  %16 = load i8, i8* %arrayidx19, align 1
  %tobool20 = icmp ne i8 %16, 0
  br i1 %tobool20, label %while.body.21, label %while.end.24

while.body.21:                                    ; preds = %while.cond.16
  %17 = load i8*, i8** @in, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr22, i8** @in, align 8
  %18 = load i8, i8* %17, align 1
  %conv23 = sext i8 %18 to i32
  store i32 %conv23, i32* %c, align 4
  br label %while.cond.16

while.end.24:                                     ; preds = %while.cond.16
  br label %while.cond.25

while.cond.25:                                    ; preds = %while.body.30, %while.end.24
  %19 = load i32, i32* %c, align 4
  %conv26 = trunc i32 %19 to i8
  %idxprom27 = zext i8 %conv26 to i64
  %arrayidx28 = getelementptr inbounds [255 x i8], [255 x i8]* @is_ident, i32 0, i64 %idxprom27
  %20 = load i8, i8* %arrayidx28, align 1
  %tobool29 = icmp ne i8 %20, 0
  br i1 %tobool29, label %while.body.30, label %while.end.35

while.body.30:                                    ; preds = %while.cond.25
  %21 = load i32, i32* %c, align 4
  %conv31 = trunc i32 %21 to i8
  %22 = load i8*, i8** %p, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr32, i8** %p, align 8
  store i8 %conv31, i8* %22, align 1
  %23 = load i8*, i8** @in, align 8
  %incdec.ptr33 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr33, i8** @in, align 8
  %24 = load i8, i8* %23, align 1
  %conv34 = sext i8 %24 to i32
  store i32 %conv34, i32* %c, align 4
  br label %while.cond.25

while.end.35:                                     ; preds = %while.cond.25
  %25 = load i8*, i8** %p, align 8
  store i8 0, i8* %25, align 1
  %26 = load i8*, i8** @yytext, align 8
  %27 = load i8, i8* %26, align 1
  %tobool36 = icmp ne i8 %27, 0
  br i1 %tobool36, label %if.then.37, label %if.end

if.then.37:                                       ; preds = %while.end.35
  %call38 = call i8* @matching_regexp()
  store i8* %call38, i8** %regexp, align 8
  %28 = load i8*, i8** @in, align 8
  %29 = load i8*, i8** @inbuffer, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %28 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %29 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv39 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv39, i32* %pos, align 4
  %30 = load i8*, i8** @yytext, align 8
  %31 = load i8*, i8** %regexp, align 8
  %32 = load i32, i32* %pos, align 4
  call void @add_define(i8* %30, i8* %31, i32 %32)
  br label %if.end

if.end:                                           ; preds = %if.then.37, %while.end.35
  br label %if.end.40

if.end.40:                                        ; preds = %if.end, %land.lhs.true, %while.end.12
  br label %while.cond.41

while.cond.41:                                    ; preds = %if.end.87, %if.end.40
  %33 = load i32, i32* %c, align 4
  %tobool42 = icmp ne i32 %33, 0
  br i1 %tobool42, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.41
  %34 = load i32, i32* %c, align 4
  %cmp = icmp ne i32 %34, 10
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs
  %35 = load i32, i32* %in_comment, align 4
  %tobool44 = icmp ne i32 %35, 0
  br i1 %tobool44, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %36 = load i32, i32* %in_string, align 4
  %tobool45 = icmp ne i32 %36, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %land.rhs
  %37 = phi i1 [ true, %lor.lhs.false ], [ true, %land.rhs ], [ %tobool45, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond.41
  %38 = phi i1 [ false, %while.cond.41 ], [ %37, %lor.end ]
  br i1 %38, label %while.body.46, label %while.end.90

while.body.46:                                    ; preds = %land.end
  %39 = load i32, i32* %c, align 4
  %cmp47 = icmp eq i32 %39, 92
  br i1 %cmp47, label %if.then.49, label %if.else

if.then.49:                                       ; preds = %while.body.46
  %40 = load i8*, i8** @in, align 8
  %incdec.ptr50 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr50, i8** @in, align 8
  %41 = load i8, i8* %40, align 1
  %conv51 = sext i8 %41 to i32
  store i32 %conv51, i32* %c, align 4
  br label %if.end.83

if.else:                                          ; preds = %while.body.46
  %42 = load i32, i32* %c, align 4
  %cmp52 = icmp eq i32 %42, 47
  br i1 %cmp52, label %land.lhs.true.54, label %if.else.63

land.lhs.true.54:                                 ; preds = %if.else
  %43 = load i32, i32* %in_comment, align 4
  %tobool55 = icmp ne i32 %43, 0
  br i1 %tobool55, label %if.else.63, label %if.then.56

if.then.56:                                       ; preds = %land.lhs.true.54
  %44 = load i8*, i8** @in, align 8
  %incdec.ptr57 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr57, i8** @in, align 8
  %45 = load i8, i8* %44, align 1
  %conv58 = sext i8 %45 to i32
  store i32 %conv58, i32* %c, align 4
  %cmp59 = icmp eq i32 %conv58, 42
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.then.56
  store i32 1, i32* %in_comment, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %if.then.56
  br label %if.end.82

if.else.63:                                       ; preds = %land.lhs.true.54, %if.else
  %46 = load i32, i32* %c, align 4
  %cmp64 = icmp eq i32 %46, 42
  br i1 %cmp64, label %land.lhs.true.66, label %if.else.75

land.lhs.true.66:                                 ; preds = %if.else.63
  %47 = load i32, i32* %in_comment, align 4
  %tobool67 = icmp ne i32 %47, 0
  br i1 %tobool67, label %if.then.68, label %if.else.75

if.then.68:                                       ; preds = %land.lhs.true.66
  %48 = load i8*, i8** @in, align 8
  %incdec.ptr69 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr69, i8** @in, align 8
  %49 = load i8, i8* %48, align 1
  %conv70 = sext i8 %49 to i32
  store i32 %conv70, i32* %c, align 4
  %cmp71 = icmp eq i32 %conv70, 47
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.then.68
  store i32 0, i32* %in_comment, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %if.then.68
  br label %if.end.81

if.else.75:                                       ; preds = %land.lhs.true.66, %if.else.63
  %50 = load i32, i32* %c, align 4
  %cmp76 = icmp eq i32 %50, 34
  br i1 %cmp76, label %if.then.78, label %if.end.80

if.then.78:                                       ; preds = %if.else.75
  %51 = load i32, i32* %in_string, align 4
  %tobool79 = icmp ne i32 %51, 0
  %lnot = xor i1 %tobool79, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %in_string, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.78, %if.else.75
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.end.74
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.end.62
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.49
  %52 = load i32, i32* %c, align 4
  %cmp84 = icmp eq i32 %52, 10
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.end.83
  %53 = load i32, i32* @yyline, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* @yyline, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.86, %if.end.83
  %54 = load i8*, i8** @in, align 8
  %incdec.ptr88 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr88, i8** @in, align 8
  %55 = load i8, i8* %54, align 1
  %conv89 = sext i8 %55 to i32
  store i32 %conv89, i32* %c, align 4
  br label %while.cond.41

while.end.90:                                     ; preds = %land.end
  %56 = load i32, i32* %c, align 4
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define internal void @add_define(i8* %name, i8* %regexp, i32 %pos) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %regexp.addr = alloca i8*, align 8
  %pos.addr = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i8* %regexp, i8** %regexp.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i8*, i8** %regexp.addr, align 8
  %2 = load i32, i32* %pos.addr, align 4
  call void @add_global_defn(i8* %0, i8* %1, i32 %2, i32 0, i32 1, i32 3, i32 512)
  %3 = load i8*, i8** %name.addr, align 8
  %4 = load i8*, i8** %regexp.addr, align 8
  %5 = load i32, i32* %pos.addr, align 4
  call void @add_global_decl(i8* %3, i8* %4, i32 %5, i32 0, i32 1, i32 3, i32 512)
  ret void
}

declare i32 @_IO_getc(%struct._IO_FILE*) #4

; Function Attrs: nounwind uwtable
define internal void @putstr(i8* %s, %struct._IO_FILE* %fp) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  store i8* %s, i8** %s.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @_IO_putc(i32 40, %struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i32 @_IO_putc(i32 41, %struct._IO_FILE* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call2 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %3)
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call3 = call i32 @_IO_putc(i32 34, %struct._IO_FILE* %4)
  %5 = load i8*, i8** %s.addr, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i32 @fputs(i8* %5, %struct._IO_FILE* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call5 = call i32 @_IO_putc(i32 34, %struct._IO_FILE* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call6 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mark_inherited_virtual() #0 {
entry:
  %r = alloca %struct.sym*, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.4, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 1001
  br i1 %cmp, label %for.body, label %for.end.5

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [1001 x %struct.sym*], [1001 x %struct.sym*]* @class_table, i32 0, i64 %idxprom
  %2 = load %struct.sym*, %struct.sym** %arrayidx, align 8
  store %struct.sym* %2, %struct.sym** %r, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load %struct.sym*, %struct.sym** %r, align 8
  %tobool = icmp ne %struct.sym* %3, null
  br i1 %tobool, label %for.body.2, label %for.end

for.body.2:                                       ; preds = %for.cond.1
  %4 = load %struct.sym*, %struct.sym** %r, align 8
  %supers = getelementptr inbounds %struct.sym, %struct.sym* %4, i32 0, i32 4
  %5 = load %struct.link*, %struct.link** %supers, align 8
  %cmp3 = icmp eq %struct.link* %5, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.2
  %6 = load %struct.sym*, %struct.sym** %r, align 8
  call void @mark_virtual(%struct.sym* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.2
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load %struct.sym*, %struct.sym** %r, align 8
  %next = getelementptr inbounds %struct.sym, %struct.sym* %7, i32 0, i32 2
  %8 = load %struct.sym*, %struct.sym** %next, align 8
  store %struct.sym* %8, %struct.sym** %r, align 8
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.4

for.inc.4:                                        ; preds = %for.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.5:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @dump_tree(%struct._IO_FILE* %fp, %struct.sym* %root) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %root.addr = alloca %struct.sym*, align 8
  %lk = alloca %struct.link*, align 8
  %n = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.sym* %root, %struct.sym** %root.addr, align 8
  store i32 0, i32* %n, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %1 = load %struct.sym*, %struct.sym** %root.addr, align 8
  call void @dump_sym(%struct._IO_FILE* %0, %struct.sym* %1)
  %2 = load i32, i32* @f_verbose, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @putchar(i32 43)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call2 = call i32 @_IO_putc(i32 40, %struct._IO_FILE* %4)
  %5 = load %struct.sym*, %struct.sym** %root.addr, align 8
  %subs = getelementptr inbounds %struct.sym, %struct.sym* %5, i32 0, i32 3
  %6 = load %struct.link*, %struct.link** %subs, align 8
  store %struct.link* %6, %struct.link** %lk, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load %struct.link*, %struct.link** %lk, align 8
  %tobool3 = icmp ne %struct.link* %7, null
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.161, i32 0, i32 0), %struct._IO_FILE* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %10 = load %struct.link*, %struct.link** %lk, align 8
  %sym = getelementptr inbounds %struct.link, %struct.link* %10, i32 0, i32 0
  %11 = load %struct.sym*, %struct.sym** %sym, align 8
  %call5 = call i32 @dump_tree(%struct._IO_FILE* %9, %struct.sym* %11)
  %12 = load i32, i32* %n, align 4
  %add = add i32 %12, %call5
  store i32 %add, i32* %n, align 4
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call6 = call i32 @_IO_putc(i32 93, %struct._IO_FILE* %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load %struct.link*, %struct.link** %lk, align 8
  %next = getelementptr inbounds %struct.link, %struct.link* %14, i32 0, i32 1
  %15 = load %struct.link*, %struct.link** %next, align 8
  store %struct.link* %15, %struct.link** %lk, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call7 = call i32 @_IO_putc(i32 41, %struct._IO_FILE* %16)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %18 = load %struct.sym*, %struct.sym** %root.addr, align 8
  %vars = getelementptr inbounds %struct.sym, %struct.sym* %18, i32 0, i32 5
  %19 = load %struct.member*, %struct.member** %vars, align 8
  %call8 = call i32 @dump_members(%struct._IO_FILE* %17, %struct.member* %19)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %21 = load %struct.sym*, %struct.sym** %root.addr, align 8
  %fns = getelementptr inbounds %struct.sym, %struct.sym* %21, i32 0, i32 6
  %22 = load %struct.member*, %struct.member** %fns, align 8
  %call9 = call i32 @dump_members(%struct._IO_FILE* %20, %struct.member* %22)
  %23 = load i32, i32* %n, align 4
  %add10 = add i32 %23, %call9
  store i32 %add10, i32* %n, align 4
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %25 = load %struct.sym*, %struct.sym** %root.addr, align 8
  %static_vars = getelementptr inbounds %struct.sym, %struct.sym* %25, i32 0, i32 7
  %26 = load %struct.member*, %struct.member** %static_vars, align 8
  %call11 = call i32 @dump_members(%struct._IO_FILE* %24, %struct.member* %26)
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %28 = load %struct.sym*, %struct.sym** %root.addr, align 8
  %static_fns = getelementptr inbounds %struct.sym, %struct.sym* %28, i32 0, i32 8
  %29 = load %struct.member*, %struct.member** %static_fns, align 8
  %call12 = call i32 @dump_members(%struct._IO_FILE* %27, %struct.member* %29)
  %30 = load i32, i32* %n, align 4
  %add13 = add i32 %30, %call12
  store i32 %add13, i32* %n, align 4
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %32 = load %struct.sym*, %struct.sym** %root.addr, align 8
  %friends = getelementptr inbounds %struct.sym, %struct.sym* %32, i32 0, i32 9
  %33 = load %struct.member*, %struct.member** %friends, align 8
  %call14 = call i32 @dump_members(%struct._IO_FILE* %31, %struct.member* %33)
  %34 = load i32, i32* %n, align 4
  %add15 = add i32 %34, %call14
  store i32 %add15, i32* %n, align 4
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %36 = load %struct.sym*, %struct.sym** %root.addr, align 8
  %types = getelementptr inbounds %struct.sym, %struct.sym* %36, i32 0, i32 10
  %37 = load %struct.member*, %struct.member** %types, align 8
  %call16 = call i32 @dump_members(%struct._IO_FILE* %35, %struct.member* %37)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call17 = call i32 @_IO_putc(i32 40, %struct._IO_FILE* %38)
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call18 = call i32 @_IO_putc(i32 41, %struct._IO_FILE* %39)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call19 = call i32 @_IO_putc(i32 40, %struct._IO_FILE* %40)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call20 = call i32 @_IO_putc(i32 41, %struct._IO_FILE* %41)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call21 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %42)
  %43 = load i32, i32* %n, align 4
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define internal void @mark_virtual(%struct.sym* %r) #0 {
entry:
  %r.addr = alloca %struct.sym*, align 8
  %p = alloca %struct.link*, align 8
  %m = alloca %struct.member*, align 8
  %m2 = alloca %struct.member*, align 8
  store %struct.sym* %r, %struct.sym** %r.addr, align 8
  %0 = load %struct.sym*, %struct.sym** %r.addr, align 8
  %subs = getelementptr inbounds %struct.sym, %struct.sym* %0, i32 0, i32 3
  %1 = load %struct.link*, %struct.link** %subs, align 8
  store %struct.link* %1, %struct.link** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.19, %entry
  %2 = load %struct.link*, %struct.link** %p, align 8
  %tobool = icmp ne %struct.link* %2, null
  br i1 %tobool, label %for.body, label %for.end.21

for.body:                                         ; preds = %for.cond
  %3 = load %struct.sym*, %struct.sym** %r.addr, align 8
  %fns = getelementptr inbounds %struct.sym, %struct.sym* %3, i32 0, i32 6
  %4 = load %struct.member*, %struct.member** %fns, align 8
  store %struct.member* %4, %struct.member** %m, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.15, %for.body
  %5 = load %struct.member*, %struct.member** %m, align 8
  %tobool2 = icmp ne %struct.member* %5, null
  br i1 %tobool2, label %for.body.3, label %for.end.17

for.body.3:                                       ; preds = %for.cond.1
  %6 = load %struct.member*, %struct.member** %m, align 8
  %flags = getelementptr inbounds %struct.member, %struct.member* %6, i32 0, i32 5
  %7 = load i32, i32* %flags, align 4
  %call = call zeroext i1 @has_flag(i32 %7, i32 1)
  br i1 %call, label %if.then, label %if.end.14

if.then:                                          ; preds = %for.body.3
  %8 = load %struct.link*, %struct.link** %p, align 8
  %sym = getelementptr inbounds %struct.link, %struct.link* %8, i32 0, i32 0
  %9 = load %struct.sym*, %struct.sym** %sym, align 8
  %fns4 = getelementptr inbounds %struct.sym, %struct.sym* %9, i32 0, i32 6
  %10 = load %struct.member*, %struct.member** %fns4, align 8
  store %struct.member* %10, %struct.member** %m2, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %if.then
  %11 = load %struct.member*, %struct.member** %m2, align 8
  %tobool6 = icmp ne %struct.member* %11, null
  br i1 %tobool6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.5
  %12 = load %struct.member*, %struct.member** %m, align 8
  %param_hash = getelementptr inbounds %struct.member, %struct.member* %12, i32 0, i32 3
  %13 = load i32, i32* %param_hash, align 4
  %14 = load %struct.member*, %struct.member** %m2, align 8
  %param_hash8 = getelementptr inbounds %struct.member, %struct.member* %14, i32 0, i32 3
  %15 = load i32, i32* %param_hash8, align 4
  %cmp = icmp eq i32 %13, %15
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.7
  %16 = load %struct.member*, %struct.member** %m, align 8
  %name = getelementptr inbounds %struct.member, %struct.member* %16, i32 0, i32 12
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %name, i32 0, i32 0
  %17 = load %struct.member*, %struct.member** %m2, align 8
  %name9 = getelementptr inbounds %struct.member, %struct.member* %17, i32 0, i32 12
  %arraydecay10 = getelementptr inbounds [0 x i8], [0 x i8]* %name9, i32 0, i32 0
  %call11 = call zeroext i1 @streq(i8* %arraydecay, i8* %arraydecay10)
  br i1 %call11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %land.lhs.true
  %18 = load %struct.member*, %struct.member** %m2, align 8
  %flags13 = getelementptr inbounds %struct.member, %struct.member* %18, i32 0, i32 5
  call void @set_flag(i32* %flags13, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then.12, %land.lhs.true, %for.body.7
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load %struct.member*, %struct.member** %m2, align 8
  %next = getelementptr inbounds %struct.member, %struct.member* %19, i32 0, i32 0
  %20 = load %struct.member*, %struct.member** %next, align 8
  store %struct.member* %20, %struct.member** %m2, align 8
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %if.end.14

if.end.14:                                        ; preds = %for.end, %for.body.3
  br label %for.inc.15

for.inc.15:                                       ; preds = %if.end.14
  %21 = load %struct.member*, %struct.member** %m, align 8
  %next16 = getelementptr inbounds %struct.member, %struct.member* %21, i32 0, i32 0
  %22 = load %struct.member*, %struct.member** %next16, align 8
  store %struct.member* %22, %struct.member** %m, align 8
  br label %for.cond.1

for.end.17:                                       ; preds = %for.cond.1
  %23 = load %struct.link*, %struct.link** %p, align 8
  %sym18 = getelementptr inbounds %struct.link, %struct.link* %23, i32 0, i32 0
  %24 = load %struct.sym*, %struct.sym** %sym18, align 8
  call void @mark_virtual(%struct.sym* %24)
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.end.17
  %25 = load %struct.link*, %struct.link** %p, align 8
  %next20 = getelementptr inbounds %struct.link, %struct.link* %25, i32 0, i32 1
  %26 = load %struct.link*, %struct.link** %next20, align 8
  store %struct.link* %26, %struct.link** %p, align 8
  br label %for.cond

for.end.21:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dump_sym(%struct._IO_FILE* %fp, %struct.sym* %root) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %root.addr = alloca %struct.sym*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.sym* %root, %struct.sym** %root.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.162, i32 0, i32 0), %struct._IO_FILE* %0)
  %1 = load %struct.sym*, %struct.sym** %root.addr, align 8
  %name = getelementptr inbounds %struct.sym, %struct.sym* %1, i32 0, i32 16
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %name, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @putstr(i8* %arraydecay, %struct._IO_FILE* %2)
  %3 = load %struct.sym*, %struct.sym** %root.addr, align 8
  %namesp = getelementptr inbounds %struct.sym, %struct.sym* %3, i32 0, i32 15
  %4 = load %struct.sym*, %struct.sym** %namesp, align 8
  %tobool = icmp ne %struct.sym* %4, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.sym*, %struct.sym** %root.addr, align 8
  %call1 = call i8* @sym_scope(%struct.sym* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @putstr(i8* %call1, %struct._IO_FILE* %6)
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @putstr(i8* null, %struct._IO_FILE* %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %9 = load %struct.sym*, %struct.sym** %root.addr, align 8
  %flags = getelementptr inbounds %struct.sym, %struct.sym* %9, i32 0, i32 0
  %10 = load i32, i32* %flags, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.163, i32 0, i32 0), i32 %10)
  %11 = load %struct.sym*, %struct.sym** %root.addr, align 8
  %filename = getelementptr inbounds %struct.sym, %struct.sym* %11, i32 0, i32 13
  %12 = load i8*, i8** %filename, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @putstr(i8* %12, %struct._IO_FILE* %13)
  %14 = load %struct.sym*, %struct.sym** %root.addr, align 8
  %regexp = getelementptr inbounds %struct.sym, %struct.sym* %14, i32 0, i32 11
  %15 = load i8*, i8** %regexp, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @putstr(i8* %15, %struct._IO_FILE* %16)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %18 = load %struct.sym*, %struct.sym** %root.addr, align 8
  %pos = getelementptr inbounds %struct.sym, %struct.sym* %18, i32 0, i32 12
  %19 = load i32, i32* %pos, align 4
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.164, i32 0, i32 0), i32 %19)
  %20 = load %struct.sym*, %struct.sym** %root.addr, align 8
  %sfilename = getelementptr inbounds %struct.sym, %struct.sym* %20, i32 0, i32 14
  %21 = load i8*, i8** %sfilename, align 8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @putstr(i8* %21, %struct._IO_FILE* %22)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i32 @_IO_putc(i32 93, %struct._IO_FILE* %23)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call5 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %24)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @dump_members(%struct._IO_FILE* %fp, %struct.member* %m) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %m.addr = alloca %struct.member*, align 8
  %n = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.member* %m, %struct.member** %m.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @_IO_putc(i32 40, %struct._IO_FILE* %0)
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.member*, %struct.member** %m.addr, align 8
  %tobool = icmp ne %struct.member* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.165, i32 0, i32 0), %struct._IO_FILE* %2)
  %3 = load %struct.member*, %struct.member** %m.addr, align 8
  %name = getelementptr inbounds %struct.member, %struct.member* %3, i32 0, i32 12
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %name, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @putstr(i8* %arraydecay, %struct._IO_FILE* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @putstr(i8* null, %struct._IO_FILE* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %7 = load %struct.member*, %struct.member** %m.addr, align 8
  %flags = getelementptr inbounds %struct.member, %struct.member* %7, i32 0, i32 5
  %8 = load i32, i32* %flags, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.166, i32 0, i32 0), i32 %8)
  %9 = load %struct.member*, %struct.member** %m.addr, align 8
  %filename = getelementptr inbounds %struct.member, %struct.member* %9, i32 0, i32 7
  %10 = load i8*, i8** %filename, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @putstr(i8* %10, %struct._IO_FILE* %11)
  %12 = load %struct.member*, %struct.member** %m.addr, align 8
  %regexp = getelementptr inbounds %struct.member, %struct.member* %12, i32 0, i32 6
  %13 = load i8*, i8** %regexp, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @putstr(i8* %13, %struct._IO_FILE* %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %16 = load %struct.member*, %struct.member** %m.addr, align 8
  %pos = getelementptr inbounds %struct.member, %struct.member* %16, i32 0, i32 8
  %17 = load i32, i32* %pos, align 4
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.166, i32 0, i32 0), i32 %17)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %19 = load %struct.member*, %struct.member** %m.addr, align 8
  %vis = getelementptr inbounds %struct.member, %struct.member* %19, i32 0, i32 4
  %20 = load i32, i32* %vis, align 4
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.166, i32 0, i32 0), i32 %20)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call5 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %21)
  %22 = load %struct.member*, %struct.member** %m.addr, align 8
  %def_filename = getelementptr inbounds %struct.member, %struct.member* %22, i32 0, i32 10
  %23 = load i8*, i8** %def_filename, align 8
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @putstr(i8* %23, %struct._IO_FILE* %24)
  %25 = load %struct.member*, %struct.member** %m.addr, align 8
  %def_regexp = getelementptr inbounds %struct.member, %struct.member* %25, i32 0, i32 9
  %26 = load i8*, i8** %def_regexp, align 8
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @putstr(i8* %26, %struct._IO_FILE* %27)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %29 = load %struct.member*, %struct.member** %m.addr, align 8
  %def_pos = getelementptr inbounds %struct.member, %struct.member* %29, i32 0, i32 11
  %30 = load i32, i32* %def_pos, align 4
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.164, i32 0, i32 0), i32 %30)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call7 = call i32 @_IO_putc(i32 93, %struct._IO_FILE* %31)
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call8 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %32)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load %struct.member*, %struct.member** %m.addr, align 8
  %next = getelementptr inbounds %struct.member, %struct.member* %33, i32 0, i32 0
  %34 = load %struct.member*, %struct.member** %next, align 8
  store %struct.member* %34, %struct.member** %m.addr, align 8
  %35 = load i32, i32* %n, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call9 = call i32 @_IO_putc(i32 41, %struct._IO_FILE* %36)
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call10 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %37)
  %38 = load i32, i32* %n, align 4
  ret i32 %38
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
