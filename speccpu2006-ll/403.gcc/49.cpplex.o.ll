; ModuleID = 'cpplex.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.token_spelling = type { i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.cpp_token = type { i32, i16, i8, i8, %union.anon }
%union.anon = type { %struct.cpp_string }
%struct.cpp_string = type { i32, i8* }
%struct.cpp_hashnode = type { %struct.ht_identifier, i16, i8, i8, i8, i8, %union.anon.0 }
%struct.ht_identifier = type { i32, i8* }
%union.anon.0 = type { %struct.cpp_macro* }
%struct.cpp_macro = type opaque
%struct.tokenrun = type { %struct.tokenrun*, %struct.tokenrun*, %struct.cpp_token*, %struct.cpp_token* }
%struct.cpp_reader = type { %struct.cpp_buffer*, %struct.lexer_state, %struct.line_maps, %struct.line_map*, i32, i32, %struct._cpp_buff*, %struct._cpp_buff*, %struct._cpp_buff*, %struct.cpp_context, %struct.cpp_context*, %struct.directive*, %struct.cpp_hashnode*, %struct.cpp_hashnode*, i8, %struct.cpp_token*, %struct.tokenrun, %struct.tokenrun*, i32, i32, i32, i32, i32, i8*, i32, %struct.splay_tree_s*, i32, %struct.cpp_token, %struct.cpp_token, %struct.cpp_token, %struct.cpp_token, %struct.deps*, %struct.obstack, %struct.obstack, %struct.pragma_entry*, %struct.cpp_callbacks, %struct.ht*, %struct.cpp_options, %struct.spec_nodes, i8, i8 }
%struct.cpp_buffer = type { i8*, i8*, i8*, i8*, %struct.cpp_buffer*, i8*, %struct.include_file*, %struct.if_stack*, i32, i8, i8*, i8, i8, i8, i8, %struct.search_path }
%struct.include_file = type opaque
%struct.if_stack = type opaque
%struct.search_path = type { %struct.search_path*, i8*, i32, i64, i64, i32, %struct.file_name_map* }
%struct.file_name_map = type opaque
%struct.lexer_state = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.line_maps = type { %struct.line_map*, i32, i32, i32, i32, i8 }
%struct.line_map = type { i8*, i32, i32, i32, i8, i8 }
%struct._cpp_buff = type { %struct._cpp_buff*, i8*, i8*, i8* }
%struct.cpp_context = type { %struct.cpp_context*, %struct.cpp_context*, %union.utoken, %union.utoken, %struct._cpp_buff*, %struct.cpp_hashnode*, i8 }
%union.utoken = type { %struct.cpp_token* }
%struct.directive = type opaque
%struct.splay_tree_s = type opaque
%struct.deps = type opaque
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.pragma_entry = type opaque
%struct.cpp_callbacks = type { void (%struct.cpp_reader*, %struct.cpp_token*, i32)*, void (%struct.cpp_reader*, %struct.line_map*)*, void (%struct.cpp_reader*, i32, i8*, %struct.cpp_token*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_string*)*, void (%struct.cpp_reader*, i32)* }
%struct.ht = type { %struct.obstack, %struct.ht_identifier**, %struct.ht_identifier* (%struct.ht*)*, i32, i32, %struct.cpp_reader*, i32, i32 }
%struct.cpp_options = type { i8*, i8*, i32, %struct.cpp_pending*, i8*, %struct.search_path*, %struct.search_path*, %struct.file_name_map_list*, i8*, i32, i8*, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cpp_pending = type opaque
%struct.file_name_map_list = type opaque
%struct.spec_nodes = type { %struct.cpp_hashnode*, %struct.cpp_hashnode*, %struct.cpp_hashnode*, %struct.cpp_hashnode*, %struct.cpp_hashnode* }

@.str = private unnamed_addr constant [26 x i8] c"no newline at end of file\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"unterminated comment\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"C++ style comments are not allowed in ISO C89\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"(this will be reported only once per input file)\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"multi-line comment\00", align 1
@_sch_istable = external constant [256 x i16], align 16
@token_spellings = internal constant [68 x %struct.token_spelling] [%struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.73, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.77, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.80, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.82, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.90, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i32 0, i32 0) }, %struct.token_spelling { i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.92, i32 0, i32 0) }, %struct.token_spelling { i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.93, i32 0, i32 0) }, %struct.token_spelling { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.94, i32 0, i32 0) }, %struct.token_spelling { i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.95, i32 0, i32 0) }, %struct.token_spelling { i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.96, i32 0, i32 0) }, %struct.token_spelling { i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.97, i32 0, i32 0) }, %struct.token_spelling { i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.98, i32 0, i32 0) }, %struct.token_spelling { i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.99, i32 0, i32 0) }, %struct.token_spelling { i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.100, i32 0, i32 0) }, %struct.token_spelling { i32 5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.101, i32 0, i32 0) }, %struct.token_spelling { i32 5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.102, i32 0, i32 0) }, %struct.token_spelling { i32 5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.103, i32 0, i32 0) }], align 16
@digraph_spellings = internal constant [6 x i8*] [i8* bitcast ([3 x i32]* @.str.104 to i8*), i8* bitcast ([5 x i32]* @.str.105 to i8*), i8* bitcast ([3 x i32]* @.str.106 to i8*), i8* bitcast ([3 x i32]* @.str.107 to i8*), i8* bitcast ([3 x i32]* @.str.108 to i8*), i8* bitcast ([3 x i32]* @.str.109 to i8*)], align 16
@.str.5 = private unnamed_addr constant [25 x i8] c"unknown string token %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"unspellable token %s\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [28 x i8] c"impossible STRING token %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"the meaning of '\5Ca' varies with -traditional\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"non-ISO-standard escape sequence, '\5C%c'\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"the meaning of '\5Cx' varies with -traditional\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"\5Cx used with no following hex digits\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"hex escape sequence out of range\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"octal escape sequence out of range\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"unknown escape sequence '\5C%c'\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"unknown escape sequence: '\5C%03o'\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"escape sequence out of range for character\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"empty character constant\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"character constant too long\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"multi-character character constant\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"null character(s) ignored\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"%s in preprocessing directive\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"form feed\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"vertical tab\00", align 1
@_cpp_trigraph_map = external constant [256 x i8], align 16
@.str.24 = private unnamed_addr constant [41 x i8] c"backslash and newline separated by space\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"backslash-newline at end of file\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"trigraph ??%c converted to %c\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"trigraph ??%c ignored\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"multi-line string literals are deprecated\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"null character(s) preserved in literal\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"missing terminating %c character\00", align 1
@.str.31 = private unnamed_addr constant [46 x i8] c"possible start of unterminated string literal\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"attempt to use poisoned \22%s\22\00", align 1
@.str.33 = private unnamed_addr constant [69 x i8] c"__VA_ARGS__ can only appear in the expansion of a C99 variadic macro\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"'$' character(s) in identifier\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"\22/*\22 within comment\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"<?\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c">?\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"+=\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"-=\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"*=\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"/=\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"%=\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"&=\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"|=\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"^=\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c">>=\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"<<=\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"<?=\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c">?=\00", align 1
@.str.76 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"##\00", align 1
@.str.78 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.79 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.80 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.81 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.82 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"++\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.87 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"->*\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c".*\00", align 1
@.str.91 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"CPP_NAME\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"CPP_NUMBER\00", align 1
@.str.94 = private unnamed_addr constant [9 x i8] c"CPP_CHAR\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"CPP_WCHAR\00", align 1
@.str.96 = private unnamed_addr constant [10 x i8] c"CPP_OTHER\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"CPP_STRING\00", align 1
@.str.98 = private unnamed_addr constant [12 x i8] c"CPP_WSTRING\00", align 1
@.str.99 = private unnamed_addr constant [16 x i8] c"CPP_HEADER_NAME\00", align 1
@.str.100 = private unnamed_addr constant [12 x i8] c"CPP_COMMENT\00", align 1
@.str.101 = private unnamed_addr constant [14 x i8] c"CPP_MACRO_ARG\00", align 1
@.str.102 = private unnamed_addr constant [12 x i8] c"CPP_PADDING\00", align 1
@.str.103 = private unnamed_addr constant [8 x i8] c"CPP_EOF\00", align 1
@.str.104 = private unnamed_addr constant [3 x i32] [i32 37, i32 58, i32 0], align 4
@.str.105 = private unnamed_addr constant [5 x i32] [i32 37, i32 58, i32 37, i32 58, i32 0], align 4
@.str.106 = private unnamed_addr constant [3 x i32] [i32 60, i32 58, i32 0], align 4
@.str.107 = private unnamed_addr constant [3 x i32] [i32 58, i32 62, i32 0], align 4
@.str.108 = private unnamed_addr constant [3 x i32] [i32 60, i32 37, i32 0], align 4
@.str.109 = private unnamed_addr constant [3 x i32] [i32 37, i32 62, i32 0], align 4
@.str.110 = private unnamed_addr constant [46 x i8] c"the meaning of '\5C%c' varies with -traditional\00", align 1
@.str.111 = private unnamed_addr constant [36 x i8] c"incomplete universal-character-name\00", align 1
@.str.112 = private unnamed_addr constant [47 x i8] c"non-hex digit '%c' in universal-character-name\00", align 1
@.str.113 = private unnamed_addr constant [38 x i8] c"universal-character-name out of range\00", align 1
@_hex_value = external constant [256 x i8], align 16

; Function Attrs: nounwind uwtable
define i32 @cpp_ideq(%struct.cpp_token* %token, i8* %string) #0 {
entry:
  %retval = alloca i32, align 4
  %token.addr = alloca %struct.cpp_token*, align 8
  %string.addr = alloca i8*, align 8
  store %struct.cpp_token* %token, %struct.cpp_token** %token.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  %0 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %0, i32 0, i32 2
  %bf.load = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load to i32
  %cmp = icmp ne i32 %bf.cast, 56
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %1, i32 0, i32 4
  %node = bitcast %union.anon* %val to %struct.cpp_hashnode**
  %2 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %ident = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %2, i32 0, i32 0
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident, i32 0, i32 1
  %3 = load i8*, i8** %str, align 8
  %4 = load i8*, i8** %string.addr, align 8
  %call = call i32 @ustrcmp(i8* %3, i8* %4)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ustrcmp(i8* %s1, i8* %s2) #1 {
entry:
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  %0 = load i8*, i8** %s1.addr, align 8
  %1 = load i8*, i8** %s2.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* %1) #7
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @_cpp_init_tokenrun(%struct.tokenrun* %run, i32 %count) #0 {
entry:
  %run.addr = alloca %struct.tokenrun*, align 8
  %count.addr = alloca i32, align 4
  store %struct.tokenrun* %run, %struct.tokenrun** %run.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  %0 = load i32, i32* %count.addr, align 4
  %conv = zext i32 %0 to i64
  %mul = mul i64 24, %conv
  %call = call noalias i8* @xmalloc(i64 %mul)
  %1 = bitcast i8* %call to %struct.cpp_token*
  %2 = load %struct.tokenrun*, %struct.tokenrun** %run.addr, align 8
  %base = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %2, i32 0, i32 2
  store %struct.cpp_token* %1, %struct.cpp_token** %base, align 8
  %3 = load %struct.tokenrun*, %struct.tokenrun** %run.addr, align 8
  %base1 = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %3, i32 0, i32 2
  %4 = load %struct.cpp_token*, %struct.cpp_token** %base1, align 8
  %5 = load i32, i32* %count.addr, align 4
  %idx.ext = zext i32 %5 to i64
  %add.ptr = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %4, i64 %idx.ext
  %6 = load %struct.tokenrun*, %struct.tokenrun** %run.addr, align 8
  %limit = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %6, i32 0, i32 3
  store %struct.cpp_token* %add.ptr, %struct.cpp_token** %limit, align 8
  %7 = load %struct.tokenrun*, %struct.tokenrun** %run.addr, align 8
  %next = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %7, i32 0, i32 0
  store %struct.tokenrun* null, %struct.tokenrun** %next, align 8
  ret void
}

declare noalias i8* @xmalloc(i64) #2

; Function Attrs: nounwind uwtable
define %struct.cpp_token* @_cpp_temp_token(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %old = alloca %struct.cpp_token*, align 8
  %result = alloca %struct.cpp_token*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cur_token = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 15
  %1 = load %struct.cpp_token*, %struct.cpp_token** %cur_token, align 8
  %add.ptr = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %1, i64 -1
  store %struct.cpp_token* %add.ptr, %struct.cpp_token** %old, align 8
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cur_token1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %2, i32 0, i32 15
  %3 = load %struct.cpp_token*, %struct.cpp_token** %cur_token1, align 8
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cur_run = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %4, i32 0, i32 17
  %5 = load %struct.tokenrun*, %struct.tokenrun** %cur_run, align 8
  %limit = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %5, i32 0, i32 3
  %6 = load %struct.cpp_token*, %struct.cpp_token** %limit, align 8
  %cmp = icmp eq %struct.cpp_token* %3, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cur_run2 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %7, i32 0, i32 17
  %8 = load %struct.tokenrun*, %struct.tokenrun** %cur_run2, align 8
  %call = call %struct.tokenrun* @next_tokenrun(%struct.tokenrun* %8)
  %9 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cur_run3 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %9, i32 0, i32 17
  store %struct.tokenrun* %call, %struct.tokenrun** %cur_run3, align 8
  %10 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cur_run4 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %10, i32 0, i32 17
  %11 = load %struct.tokenrun*, %struct.tokenrun** %cur_run4, align 8
  %base = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %11, i32 0, i32 2
  %12 = load %struct.cpp_token*, %struct.cpp_token** %base, align 8
  %13 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cur_token5 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %13, i32 0, i32 15
  store %struct.cpp_token* %12, %struct.cpp_token** %cur_token5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cur_token6 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %14, i32 0, i32 15
  %15 = load %struct.cpp_token*, %struct.cpp_token** %cur_token6, align 8
  %incdec.ptr = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %15, i32 1
  store %struct.cpp_token* %incdec.ptr, %struct.cpp_token** %cur_token6, align 8
  store %struct.cpp_token* %15, %struct.cpp_token** %result, align 8
  %16 = load %struct.cpp_token*, %struct.cpp_token** %old, align 8
  %line = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %16, i32 0, i32 0
  %17 = load i32, i32* %line, align 4
  %18 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %line7 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %18, i32 0, i32 0
  store i32 %17, i32* %line7, align 4
  %19 = load %struct.cpp_token*, %struct.cpp_token** %old, align 8
  %col = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %19, i32 0, i32 1
  %20 = load i16, i16* %col, align 2
  %21 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %col8 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %21, i32 0, i32 1
  store i16 %20, i16* %col8, align 2
  %22 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  ret %struct.cpp_token* %22
}

; Function Attrs: nounwind uwtable
define internal %struct.tokenrun* @next_tokenrun(%struct.tokenrun* %run) #0 {
entry:
  %run.addr = alloca %struct.tokenrun*, align 8
  store %struct.tokenrun* %run, %struct.tokenrun** %run.addr, align 8
  %0 = load %struct.tokenrun*, %struct.tokenrun** %run.addr, align 8
  %next = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %0, i32 0, i32 0
  %1 = load %struct.tokenrun*, %struct.tokenrun** %next, align 8
  %cmp = icmp eq %struct.tokenrun* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call noalias i8* @xmalloc(i64 32)
  %2 = bitcast i8* %call to %struct.tokenrun*
  %3 = load %struct.tokenrun*, %struct.tokenrun** %run.addr, align 8
  %next1 = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %3, i32 0, i32 0
  store %struct.tokenrun* %2, %struct.tokenrun** %next1, align 8
  %4 = load %struct.tokenrun*, %struct.tokenrun** %run.addr, align 8
  %5 = load %struct.tokenrun*, %struct.tokenrun** %run.addr, align 8
  %next2 = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %5, i32 0, i32 0
  %6 = load %struct.tokenrun*, %struct.tokenrun** %next2, align 8
  %prev = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %6, i32 0, i32 1
  store %struct.tokenrun* %4, %struct.tokenrun** %prev, align 8
  %7 = load %struct.tokenrun*, %struct.tokenrun** %run.addr, align 8
  %next3 = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %7, i32 0, i32 0
  %8 = load %struct.tokenrun*, %struct.tokenrun** %next3, align 8
  call void @_cpp_init_tokenrun(%struct.tokenrun* %8, i32 250)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.tokenrun*, %struct.tokenrun** %run.addr, align 8
  %next4 = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %9, i32 0, i32 0
  %10 = load %struct.tokenrun*, %struct.tokenrun** %next4, align 8
  ret %struct.tokenrun* %10
}

; Function Attrs: nounwind uwtable
define %struct.cpp_token* @_cpp_lex_token(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %result = alloca %struct.cpp_token*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.48, %if.then.21, %entry
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cur_token = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 15
  %1 = load %struct.cpp_token*, %struct.cpp_token** %cur_token, align 8
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cur_run = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %2, i32 0, i32 17
  %3 = load %struct.tokenrun*, %struct.tokenrun** %cur_run, align 8
  %limit = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %3, i32 0, i32 3
  %4 = load %struct.cpp_token*, %struct.cpp_token** %limit, align 8
  %cmp = icmp eq %struct.cpp_token* %1, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cur_run1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %5, i32 0, i32 17
  %6 = load %struct.tokenrun*, %struct.tokenrun** %cur_run1, align 8
  %call = call %struct.tokenrun* @next_tokenrun(%struct.tokenrun* %6)
  %7 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cur_run2 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %7, i32 0, i32 17
  store %struct.tokenrun* %call, %struct.tokenrun** %cur_run2, align 8
  %8 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cur_run3 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %8, i32 0, i32 17
  %9 = load %struct.tokenrun*, %struct.tokenrun** %cur_run3, align 8
  %base = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %9, i32 0, i32 2
  %10 = load %struct.cpp_token*, %struct.cpp_token** %base, align 8
  %11 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cur_token4 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %11, i32 0, i32 15
  store %struct.cpp_token* %10, %struct.cpp_token** %cur_token4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.cond
  %12 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %lookaheads = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %12, i32 0, i32 18
  %13 = load i32, i32* %lookaheads, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %14 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %lookaheads6 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %14, i32 0, i32 18
  %15 = load i32, i32* %lookaheads6, align 4
  %dec = add i32 %15, -1
  store i32 %dec, i32* %lookaheads6, align 4
  %16 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cur_token7 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %16, i32 0, i32 15
  %17 = load %struct.cpp_token*, %struct.cpp_token** %cur_token7, align 8
  %incdec.ptr = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %17, i32 1
  store %struct.cpp_token* %incdec.ptr, %struct.cpp_token** %cur_token7, align 8
  store %struct.cpp_token* %17, %struct.cpp_token** %result, align 8
  br label %if.end.9

if.else:                                          ; preds = %if.end
  %18 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call8 = call %struct.cpp_token* @_cpp_lex_direct(%struct.cpp_reader* %18)
  store %struct.cpp_token* %call8, %struct.cpp_token** %result, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.5
  %19 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %19, i32 0, i32 3
  %20 = load i8, i8* %flags, align 1
  %conv = zext i8 %20 to i32
  %and = and i32 %conv, 64
  %tobool10 = icmp ne i32 %and, 0
  br i1 %tobool10, label %if.then.11, label %if.end.34

if.then.11:                                       ; preds = %if.end.9
  %21 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %21, i32 0, i32 2
  %bf.load = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load to i32
  %cmp12 = icmp eq i32 %bf.cast, 40
  br i1 %cmp12, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.then.11
  %22 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %22, i32 0, i32 1
  %parsing_args = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state, i32 0, i32 8
  %23 = load i8, i8* %parsing_args, align 1
  %tobool14 = icmp ne i8 %23, 0
  br i1 %tobool14, label %if.end.22, label %land.lhs.true.15

land.lhs.true.15:                                 ; preds = %land.lhs.true
  %24 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %25 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %flags16 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %25, i32 0, i32 3
  %26 = load i8, i8* %flags16, align 1
  %conv17 = zext i8 %26 to i32
  %and18 = and i32 %conv17, 1
  %call19 = call i32 @_cpp_handle_directive(%struct.cpp_reader* %24, i32 %and18)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %land.lhs.true.15
  br label %for.cond

if.end.22:                                        ; preds = %land.lhs.true.15, %land.lhs.true, %if.then.11
  %27 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cb = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %27, i32 0, i32 35
  %line_change = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %cb, i32 0, i32 0
  %28 = load void (%struct.cpp_reader*, %struct.cpp_token*, i32)*, void (%struct.cpp_reader*, %struct.cpp_token*, i32)** %line_change, align 8
  %tobool23 = icmp ne void (%struct.cpp_reader*, %struct.cpp_token*, i32)* %28, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.end.33

land.lhs.true.24:                                 ; preds = %if.end.22
  %29 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state25 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %29, i32 0, i32 1
  %skipping = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state25, i32 0, i32 1
  %30 = load i8, i8* %skipping, align 1
  %tobool26 = icmp ne i8 %30, 0
  br i1 %tobool26, label %if.end.33, label %if.then.27

if.then.27:                                       ; preds = %land.lhs.true.24
  %31 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cb28 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %31, i32 0, i32 35
  %line_change29 = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %cb28, i32 0, i32 0
  %32 = load void (%struct.cpp_reader*, %struct.cpp_token*, i32)*, void (%struct.cpp_reader*, %struct.cpp_token*, i32)** %line_change29, align 8
  %33 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %34 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %35 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state30 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %35, i32 0, i32 1
  %parsing_args31 = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state30, i32 0, i32 8
  %36 = load i8, i8* %parsing_args31, align 1
  %conv32 = zext i8 %36 to i32
  call void %32(%struct.cpp_reader* %33, %struct.cpp_token* %34, i32 %conv32)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.27, %land.lhs.true.24, %if.end.22
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end.9
  %37 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state35 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %37, i32 0, i32 1
  %in_directive = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state35, i32 0, i32 0
  %38 = load i8, i8* %in_directive, align 1
  %tobool36 = icmp ne i8 %38, 0
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.34
  br label %for.end

if.end.38:                                        ; preds = %if.end.34
  %39 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %mi_valid = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %39, i32 0, i32 14
  store i8 0, i8* %mi_valid, align 1
  %40 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state39 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %40, i32 0, i32 1
  %skipping40 = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state39, i32 0, i32 1
  %41 = load i8, i8* %skipping40, align 1
  %tobool41 = icmp ne i8 %41, 0
  br i1 %tobool41, label %lor.lhs.false, label %if.then.47

lor.lhs.false:                                    ; preds = %if.end.38
  %42 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type42 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %42, i32 0, i32 2
  %bf.load43 = load i8, i8* %type42, align 2
  %bf.cast44 = zext i8 %bf.load43 to i32
  %cmp45 = icmp eq i32 %bf.cast44, 67
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %lor.lhs.false, %if.end.38
  br label %for.end

if.end.48:                                        ; preds = %lor.lhs.false
  br label %for.cond

for.end:                                          ; preds = %if.then.47, %if.then.37
  %43 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  ret %struct.cpp_token* %43
}

; Function Attrs: nounwind uwtable
define %struct.cpp_token* @_cpp_lex_direct(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %c = alloca i32, align 4
  %buffer = alloca %struct.cpp_buffer*, align 8
  %comment_start = alloca i8*, align 8
  %result = alloca %struct.cpp_token*, align 8
  %stop = alloca i8, align 1
  %line60 = alloca i32, align 4
  %pos = alloca i8*, align 8
  %pos349 = alloca i8*, align 8
  %pos395 = alloca i8*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cur_token = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 15
  %1 = load %struct.cpp_token*, %struct.cpp_token** %cur_token, align 8
  %incdec.ptr = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %1, i32 1
  store %struct.cpp_token* %incdec.ptr, %struct.cpp_token** %cur_token, align 8
  store %struct.cpp_token* %1, %struct.cpp_token** %result, align 8
  br label %fresh_line

fresh_line:                                       ; preds = %if.end.56, %if.then.31, %entry
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %2, i32 0, i32 0
  %3 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8
  store %struct.cpp_buffer* %3, %struct.cpp_buffer** %buffer, align 8
  %4 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %saved_flags = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %4, i32 0, i32 9
  %5 = load i8, i8* %saved_flags, align 1
  %6 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %6, i32 0, i32 3
  store i8 %5, i8* %flags, align 1
  %7 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %saved_flags2 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %7, i32 0, i32 9
  store i8 0, i8* %saved_flags2, align 1
  br label %update_tokens_line

update_tokens_line:                               ; preds = %if.then.174, %if.then.66, %fresh_line
  %8 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %line = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %8, i32 0, i32 4
  %9 = load i32, i32* %line, align 4
  %10 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %line3 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %10, i32 0, i32 0
  store i32 %9, i32* %line3, align 4
  br label %skipped_white

skipped_white:                                    ; preds = %if.then, %update_tokens_line
  %11 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %11, i32 0, i32 0
  %12 = load i8*, i8** %cur, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr4, i8** %cur, align 8
  %13 = load i8, i8* %12, align 1
  %conv = zext i8 %13 to i32
  store i32 %conv, i32* %c, align 4
  %14 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur5 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %14, i32 0, i32 0
  %15 = load i8*, i8** %cur5, align 8
  %16 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %line_base = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %16, i32 0, i32 3
  %17 = load i8*, i8** %line_base, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %15 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %18 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %col_adjust = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %18, i32 0, i32 8
  %19 = load i32, i32* %col_adjust, align 4
  %conv6 = zext i32 %19 to i64
  %add = add nsw i64 %sub.ptr.sub, %conv6
  %conv7 = trunc i64 %add to i16
  %20 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %col = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %20, i32 0, i32 1
  store i16 %conv7, i16* %col, align 2
  br label %trigraph

trigraph:                                         ; preds = %if.else.77, %skipped_white
  %21 = load i32, i32* %c, align 4
  switch i32 %21, label %sw.default [
    i32 32, label %sw.bb
    i32 9, label %sw.bb
    i32 12, label %sw.bb
    i32 11, label %sw.bb
    i32 0, label %sw.bb
    i32 10, label %sw.bb.35
    i32 13, label %sw.bb.35
    i32 63, label %sw.bb.59
    i32 92, label %sw.bb.59
    i32 48, label %sw.bb.79
    i32 49, label %sw.bb.79
    i32 50, label %sw.bb.79
    i32 51, label %sw.bb.79
    i32 52, label %sw.bb.79
    i32 53, label %sw.bb.79
    i32 54, label %sw.bb.79
    i32 55, label %sw.bb.79
    i32 56, label %sw.bb.79
    i32 57, label %sw.bb.79
    i32 76, label %sw.bb.81
    i32 95, label %sw.bb.94
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
    i32 39, label %sw.bb.113
    i32 34, label %sw.bb.113
    i32 47, label %sw.bb.119
    i32 60, label %sw.bb.180
    i32 62, label %sw.bb.269
    i32 37, label %sw.bb.325
    i32 46, label %sw.bb.389
    i32 43, label %sw.bb.433
    i32 45, label %sw.bb.452
    i32 38, label %sw.bb.493
    i32 124, label %sw.bb.512
    i32 58, label %sw.bb.531
    i32 42, label %sw.bb.564
    i32 61, label %sw.bb.579
    i32 33, label %sw.bb.594
    i32 94, label %sw.bb.609
    i32 35, label %sw.bb.624
    i32 126, label %sw.bb.639
    i32 44, label %sw.bb.641
    i32 40, label %sw.bb.643
    i32 41, label %sw.bb.645
    i32 91, label %sw.bb.647
    i32 93, label %sw.bb.649
    i32 123, label %sw.bb.651
    i32 125, label %sw.bb.653
    i32 59, label %sw.bb.655
    i32 64, label %sw.bb.657
    i32 36, label %sw.bb.659
  ]

sw.bb:                                            ; preds = %trigraph, %trigraph, %trigraph, %trigraph, %trigraph
  %22 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %flags8 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %22, i32 0, i32 3
  %23 = load i8, i8* %flags8, align 1
  %conv9 = zext i8 %23 to i32
  %or = or i32 %conv9, 1
  %conv10 = trunc i32 %or to i8
  store i8 %conv10, i8* %flags8, align 1
  %24 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %25 = load i32, i32* %c, align 4
  %call = call i32 @skip_whitespace(%struct.cpp_reader* %24, i32 %25)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  br label %skipped_white

if.end:                                           ; preds = %sw.bb
  %26 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur11 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %26, i32 0, i32 0
  %27 = load i8*, i8** %cur11, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %27, i32 -1
  store i8* %incdec.ptr12, i8** %cur11, align 8
  %28 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %saved_flags13 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %28, i32 0, i32 9
  store i8 64, i8* %saved_flags13, align 1
  %29 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %29, i32 0, i32 1
  %parsing_args = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state, i32 0, i32 8
  %30 = load i8, i8* %parsing_args, align 1
  %tobool14 = icmp ne i8 %30, 0
  br i1 %tobool14, label %if.end.34, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %31 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state15 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %31, i32 0, i32 1
  %in_directive = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state15, i32 0, i32 0
  %32 = load i8, i8* %in_directive, align 1
  %tobool16 = icmp ne i8 %32, 0
  br i1 %tobool16, label %if.end.34, label %if.then.17

if.then.17:                                       ; preds = %land.lhs.true
  %33 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur18 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %33, i32 0, i32 0
  %34 = load i8*, i8** %cur18, align 8
  %35 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %line_base19 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %35, i32 0, i32 3
  %36 = load i8*, i8** %line_base19, align 8
  %cmp = icmp ne i8* %34, %36
  br i1 %cmp, label %if.then.21, label %if.end.25

if.then.21:                                       ; preds = %if.then.17
  %37 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %from_stage3 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %37, i32 0, i32 12
  %38 = load i8, i8* %from_stage3, align 1
  %tobool22 = icmp ne i8 %38, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.then.21
  %39 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_pedwarn(%struct.cpp_reader* %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0))
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.then.21
  %40 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @handle_newline(%struct.cpp_reader* %40)
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.17
  %41 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %prev = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %41, i32 0, i32 4
  %42 = load %struct.cpp_buffer*, %struct.cpp_buffer** %prev, align 8
  %tobool26 = icmp ne %struct.cpp_buffer* %42, null
  br i1 %tobool26, label %if.then.27, label %if.end.33

if.then.27:                                       ; preds = %if.end.25
  %43 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %return_at_eof = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %43, i32 0, i32 14
  %44 = load i8, i8* %return_at_eof, align 1
  %tobool28 = trunc i8 %44 to i1
  %conv29 = zext i1 %tobool28 to i8
  store i8 %conv29, i8* %stop, align 1
  %45 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @_cpp_pop_buffer(%struct.cpp_reader* %45)
  %46 = load i8, i8* %stop, align 1
  %tobool30 = icmp ne i8 %46, 0
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %if.then.27
  br label %fresh_line

if.end.32:                                        ; preds = %if.then.27
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.25
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %land.lhs.true, %if.end
  %47 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %47, i32 0, i32 2
  store i8 67, i8* %type, align 2
  br label %sw.epilog

sw.bb.35:                                         ; preds = %trigraph, %trigraph
  %48 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @handle_newline(%struct.cpp_reader* %48)
  %49 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %saved_flags36 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %49, i32 0, i32 9
  store i8 64, i8* %saved_flags36, align 1
  %50 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state37 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %50, i32 0, i32 1
  %in_directive38 = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state37, i32 0, i32 0
  %51 = load i8, i8* %in_directive38, align 1
  %tobool39 = icmp ne i8 %51, 0
  br i1 %tobool39, label %if.end.57, label %if.then.40

if.then.40:                                       ; preds = %sw.bb.35
  %52 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state41 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %52, i32 0, i32 1
  %parsing_args42 = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state41, i32 0, i32 8
  %53 = load i8, i8* %parsing_args42, align 1
  %conv43 = zext i8 %53 to i32
  %cmp44 = icmp eq i32 %conv43, 2
  br i1 %cmp44, label %if.then.46, label %if.end.51

if.then.46:                                       ; preds = %if.then.40
  %54 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %saved_flags47 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %54, i32 0, i32 9
  %55 = load i8, i8* %saved_flags47, align 1
  %conv48 = zext i8 %55 to i32
  %or49 = or i32 %conv48, 1
  %conv50 = trunc i32 %or49 to i8
  store i8 %conv50, i8* %saved_flags47, align 1
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.46, %if.then.40
  %56 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %keep_tokens = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %56, i32 0, i32 19
  %57 = load i32, i32* %keep_tokens, align 4
  %tobool52 = icmp ne i32 %57, 0
  br i1 %tobool52, label %if.end.56, label %if.then.53

if.then.53:                                       ; preds = %if.end.51
  %58 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %base_run = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %58, i32 0, i32 16
  %59 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cur_run = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %59, i32 0, i32 17
  store %struct.tokenrun* %base_run, %struct.tokenrun** %cur_run, align 8
  %60 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %base_run54 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %60, i32 0, i32 16
  %base = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %base_run54, i32 0, i32 2
  %61 = load %struct.cpp_token*, %struct.cpp_token** %base, align 8
  store %struct.cpp_token* %61, %struct.cpp_token** %result, align 8
  %62 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %add.ptr = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %62, i64 1
  %63 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cur_token55 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %63, i32 0, i32 15
  store %struct.cpp_token* %add.ptr, %struct.cpp_token** %cur_token55, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.53, %if.end.51
  br label %fresh_line

if.end.57:                                        ; preds = %sw.bb.35
  %64 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type58 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %64, i32 0, i32 2
  store i8 67, i8* %type58, align 2
  br label %sw.epilog

sw.bb.59:                                         ; preds = %trigraph, %trigraph
  %65 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %line61 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %65, i32 0, i32 4
  %66 = load i32, i32* %line61, align 4
  store i32 %66, i32* %line60, align 4
  %67 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call62 = call i32 @skip_escaped_newlines(%struct.cpp_reader* %67)
  store i32 %call62, i32* %c, align 4
  %68 = load i32, i32* %line60, align 4
  %69 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %line63 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %69, i32 0, i32 4
  %70 = load i32, i32* %line63, align 4
  %cmp64 = icmp ne i32 %68, %70
  br i1 %cmp64, label %if.then.66, label %if.end.69

if.then.66:                                       ; preds = %sw.bb.59
  %71 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur67 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %71, i32 0, i32 0
  %72 = load i8*, i8** %cur67, align 8
  %incdec.ptr68 = getelementptr inbounds i8, i8* %72, i32 -1
  store i8* %incdec.ptr68, i8** %cur67, align 8
  br label %update_tokens_line

if.end.69:                                        ; preds = %sw.bb.59
  %73 = load i32, i32* %c, align 4
  %cmp70 = icmp eq i32 %73, 63
  br i1 %cmp70, label %if.then.72, label %if.else

if.then.72:                                       ; preds = %if.end.69
  %74 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type73 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %74, i32 0, i32 2
  store i8 19, i8* %type73, align 2
  br label %if.end.78

if.else:                                          ; preds = %if.end.69
  %75 = load i32, i32* %c, align 4
  %cmp74 = icmp eq i32 %75, 92
  br i1 %cmp74, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %if.else
  br label %random_char

if.else.77:                                       ; preds = %if.else
  br label %trigraph

if.end.78:                                        ; preds = %if.then.72
  br label %sw.epilog

sw.bb.79:                                         ; preds = %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph
  %76 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type80 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %76, i32 0, i32 2
  store i8 57, i8* %type80, align 2
  %77 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %78 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %78, i32 0, i32 4
  %str = bitcast %union.anon* %val to %struct.cpp_string*
  %79 = load i32, i32* %c, align 4
  call void @parse_number(%struct.cpp_reader* %77, %struct.cpp_string* %str, i32 %79, i32 0)
  br label %sw.epilog

sw.bb.81:                                         ; preds = %trigraph
  %80 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur82 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %80, i32 0, i32 0
  %81 = load i8*, i8** %cur82, align 8
  store i8* %81, i8** %pos, align 8
  %82 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call83 = call i32 @get_effective_char(%struct.cpp_reader* %82)
  store i32 %call83, i32* %c, align 4
  %83 = load i32, i32* %c, align 4
  %cmp84 = icmp eq i32 %83, 39
  br i1 %cmp84, label %if.then.88, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.81
  %84 = load i32, i32* %c, align 4
  %cmp86 = icmp eq i32 %84, 34
  br i1 %cmp86, label %if.then.88, label %if.end.92

if.then.88:                                       ; preds = %lor.lhs.false, %sw.bb.81
  %85 = load i32, i32* %c, align 4
  %cmp89 = icmp eq i32 %85, 34
  %cond = select i1 %cmp89, i32 62, i32 59
  %86 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type91 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %86, i32 0, i32 2
  %87 = trunc i32 %cond to i8
  store i8 %87, i8* %type91, align 2
  %bf.result.cast = zext i8 %87 to i32
  %88 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %89 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %90 = load i32, i32* %c, align 4
  call void @parse_string(%struct.cpp_reader* %88, %struct.cpp_token* %89, i32 %90)
  br label %sw.epilog

if.end.92:                                        ; preds = %lor.lhs.false
  %91 = load i8*, i8** %pos, align 8
  %92 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur93 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %92, i32 0, i32 0
  store i8* %91, i8** %cur93, align 8
  br label %start_ident

start_ident:                                      ; preds = %if.then.662, %if.end.92
  br label %sw.bb.94

sw.bb.94:                                         ; preds = %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %trigraph, %start_ident
  %93 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type95 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %93, i32 0, i32 2
  store i8 56, i8* %type95, align 2
  %94 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call96 = call %struct.cpp_hashnode* @parse_identifier(%struct.cpp_reader* %94)
  %95 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %val97 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %95, i32 0, i32 4
  %node = bitcast %union.anon* %val97 to %struct.cpp_hashnode**
  store %struct.cpp_hashnode* %call96, %struct.cpp_hashnode** %node, align 8
  %96 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %val98 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %96, i32 0, i32 4
  %node99 = bitcast %union.anon* %val98 to %struct.cpp_hashnode**
  %97 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node99, align 8
  %flags100 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %97, i32 0, i32 5
  %98 = load i8, i8* %flags100, align 1
  %conv101 = zext i8 %98 to i32
  %and = and i32 %conv101, 1
  %tobool102 = icmp ne i32 %and, 0
  br i1 %tobool102, label %if.then.103, label %if.end.112

if.then.103:                                      ; preds = %sw.bb.94
  %99 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %flags104 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %99, i32 0, i32 3
  %100 = load i8, i8* %flags104, align 1
  %conv105 = zext i8 %100 to i32
  %or106 = or i32 %conv105, 16
  %conv107 = trunc i32 %or106 to i8
  store i8 %conv107, i8* %flags104, align 1
  %101 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %val108 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %101, i32 0, i32 4
  %node109 = bitcast %union.anon* %val108 to %struct.cpp_hashnode**
  %102 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node109, align 8
  %value = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %102, i32 0, i32 6
  %operator = bitcast %union.anon.0* %value to i32*
  %103 = load i32, i32* %operator, align 4
  %104 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type110 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %104, i32 0, i32 2
  %105 = trunc i32 %103 to i8
  store i8 %105, i8* %type110, align 2
  %bf.result.cast111 = zext i8 %105 to i32
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.103, %sw.bb.94
  br label %sw.epilog

sw.bb.113:                                        ; preds = %trigraph, %trigraph
  %106 = load i32, i32* %c, align 4
  %cmp114 = icmp eq i32 %106, 34
  %cond116 = select i1 %cmp114, i32 61, i32 58
  %107 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type117 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %107, i32 0, i32 2
  %108 = trunc i32 %cond116 to i8
  store i8 %108, i8* %type117, align 2
  %bf.result.cast118 = zext i8 %108 to i32
  %109 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %110 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %111 = load i32, i32* %c, align 4
  call void @parse_string(%struct.cpp_reader* %109, %struct.cpp_token* %110, i32 %111)
  br label %sw.epilog

sw.bb.119:                                        ; preds = %trigraph
  %112 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur120 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %112, i32 0, i32 0
  %113 = load i8*, i8** %cur120, align 8
  store i8* %113, i8** %comment_start, align 8
  %114 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call121 = call i32 @get_effective_char(%struct.cpp_reader* %114)
  store i32 %call121, i32* %c, align 4
  %115 = load i32, i32* %c, align 4
  %cmp122 = icmp eq i32 %115, 42
  br i1 %cmp122, label %if.then.124, label %if.else.129

if.then.124:                                      ; preds = %sw.bb.119
  %116 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call125 = call i32 @skip_block_comment(%struct.cpp_reader* %116)
  %tobool126 = icmp ne i32 %call125, 0
  br i1 %tobool126, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %if.then.124
  %117 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %117, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.127, %if.then.124
  br label %if.end.171

if.else.129:                                      ; preds = %sw.bb.119
  %118 = load i32, i32* %c, align 4
  %cmp130 = icmp eq i32 %118, 47
  br i1 %cmp130, label %land.lhs.true.132, label %if.else.162

land.lhs.true.132:                                ; preds = %if.else.129
  %119 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %119, i32 0, i32 37
  %cplusplus_comments = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 15
  %120 = load i8, i8* %cplusplus_comments, align 1
  %conv133 = zext i8 %120 to i32
  %tobool134 = icmp ne i32 %conv133, 0
  br i1 %tobool134, label %if.then.141, label %lor.lhs.false.135

lor.lhs.false.135:                                ; preds = %land.lhs.true.132
  %121 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %map = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %121, i32 0, i32 3
  %122 = load %struct.line_map*, %struct.line_map** %map, align 8
  %tobool136 = icmp ne %struct.line_map* %122, null
  br i1 %tobool136, label %land.lhs.true.137, label %if.else.162

land.lhs.true.137:                                ; preds = %lor.lhs.false.135
  %123 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %map138 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %123, i32 0, i32 3
  %124 = load %struct.line_map*, %struct.line_map** %map138, align 8
  %sysp = getelementptr inbounds %struct.line_map, %struct.line_map* %124, i32 0, i32 5
  %125 = load i8, i8* %sysp, align 1
  %conv139 = zext i8 %125 to i32
  %tobool140 = icmp ne i32 %conv139, 0
  br i1 %tobool140, label %if.then.141, label %if.else.162

if.then.141:                                      ; preds = %land.lhs.true.137, %land.lhs.true.132
  %126 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts142 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %126, i32 0, i32 37
  %lang = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts142, i32 0, i32 11
  %127 = load i32, i32* %lang, align 4
  %cmp143 = icmp eq i32 %127, 0
  br i1 %cmp143, label %land.lhs.true.145, label %if.end.153

land.lhs.true.145:                                ; preds = %if.then.141
  %128 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts146 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %128, i32 0, i32 37
  %pedantic = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts146, i32 0, i32 42
  %129 = load i8, i8* %pedantic, align 1
  %conv147 = zext i8 %129 to i32
  %tobool148 = icmp ne i32 %conv147, 0
  br i1 %tobool148, label %land.lhs.true.149, label %if.end.153

land.lhs.true.149:                                ; preds = %land.lhs.true.145
  %130 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %warned_cplusplus_comments = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %130, i32 0, i32 11
  %131 = load i8, i8* %warned_cplusplus_comments, align 1
  %tobool150 = icmp ne i8 %131, 0
  br i1 %tobool150, label %if.end.153, label %if.then.151

if.then.151:                                      ; preds = %land.lhs.true.149
  %132 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_pedwarn(%struct.cpp_reader* %132, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i32 0, i32 0))
  %133 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_pedwarn(%struct.cpp_reader* %133, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i32 0, i32 0))
  %134 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %warned_cplusplus_comments152 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %134, i32 0, i32 11
  store i8 1, i8* %warned_cplusplus_comments152, align 1
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.151, %land.lhs.true.149, %land.lhs.true.145, %if.then.141
  %135 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call154 = call i32 @skip_line_comment(%struct.cpp_reader* %135)
  %tobool155 = icmp ne i32 %call154, 0
  br i1 %tobool155, label %land.lhs.true.156, label %if.end.161

land.lhs.true.156:                                ; preds = %if.end.153
  %136 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts157 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %136, i32 0, i32 37
  %warn_comments = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts157, i32 0, i32 30
  %137 = load i8, i8* %warn_comments, align 1
  %conv158 = zext i8 %137 to i32
  %tobool159 = icmp ne i32 %conv158, 0
  br i1 %tobool159, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %land.lhs.true.156
  %138 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_warning(%struct.cpp_reader* %138, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.160, %land.lhs.true.156, %if.end.153
  br label %if.end.170

if.else.162:                                      ; preds = %land.lhs.true.137, %lor.lhs.false.135, %if.else.129
  %139 = load i32, i32* %c, align 4
  %cmp163 = icmp eq i32 %139, 61
  br i1 %cmp163, label %if.then.165, label %if.else.167

if.then.165:                                      ; preds = %if.else.162
  %140 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type166 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %140, i32 0, i32 2
  store i8 31, i8* %type166, align 2
  br label %sw.epilog

if.else.167:                                      ; preds = %if.else.162
  br label %do.body

do.body:                                          ; preds = %if.else.167
  %141 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %backup_to = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %141, i32 0, i32 1
  %142 = load i8*, i8** %backup_to, align 8
  %143 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur168 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %143, i32 0, i32 0
  store i8* %142, i8** %cur168, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  %144 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type169 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %144, i32 0, i32 2
  store i8 7, i8* %type169, align 2
  br label %sw.epilog

if.end.170:                                       ; preds = %if.end.161
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.170, %if.end.128
  %145 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state172 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %145, i32 0, i32 1
  %save_comments = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state172, i32 0, i32 3
  %146 = load i8, i8* %save_comments, align 1
  %tobool173 = icmp ne i8 %146, 0
  br i1 %tobool173, label %if.end.179, label %if.then.174

if.then.174:                                      ; preds = %if.end.171
  %147 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %flags175 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %147, i32 0, i32 3
  %148 = load i8, i8* %flags175, align 1
  %conv176 = zext i8 %148 to i32
  %or177 = or i32 %conv176, 1
  %conv178 = trunc i32 %or177 to i8
  store i8 %conv178, i8* %flags175, align 1
  br label %update_tokens_line

if.end.179:                                       ; preds = %if.end.171
  %149 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %150 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %151 = load i8*, i8** %comment_start, align 8
  call void @save_comment(%struct.cpp_reader* %149, %struct.cpp_token* %150, i8* %151)
  br label %sw.epilog

sw.bb.180:                                        ; preds = %trigraph
  %152 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state181 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %152, i32 0, i32 1
  %angled_headers = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state181, i32 0, i32 2
  %153 = load i8, i8* %angled_headers, align 1
  %tobool182 = icmp ne i8 %153, 0
  br i1 %tobool182, label %if.then.183, label %if.end.185

if.then.183:                                      ; preds = %sw.bb.180
  %154 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type184 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %154, i32 0, i32 2
  store i8 63, i8* %type184, align 2
  %155 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %156 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  call void @parse_string(%struct.cpp_reader* %155, %struct.cpp_token* %156, i32 62)
  br label %sw.epilog

if.end.185:                                       ; preds = %sw.bb.180
  %157 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call186 = call i32 @get_effective_char(%struct.cpp_reader* %157)
  store i32 %call186, i32* %c, align 4
  %158 = load i32, i32* %c, align 4
  %cmp187 = icmp eq i32 %158, 61
  br i1 %cmp187, label %if.then.189, label %if.else.191

if.then.189:                                      ; preds = %if.end.185
  %159 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type190 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %159, i32 0, i32 2
  store i8 27, i8* %type190, align 2
  br label %if.end.268

if.else.191:                                      ; preds = %if.end.185
  %160 = load i32, i32* %c, align 4
  %cmp192 = icmp eq i32 %160, 60
  br i1 %cmp192, label %if.then.194, label %if.else.209

if.then.194:                                      ; preds = %if.else.191
  br label %do.body.195

do.body.195:                                      ; preds = %if.then.194
  %161 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call196 = call i32 @get_effective_char(%struct.cpp_reader* %161)
  %cmp197 = icmp eq i32 %call196, 61
  br i1 %cmp197, label %if.then.199, label %if.else.201

if.then.199:                                      ; preds = %do.body.195
  %162 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type200 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %162, i32 0, i32 2
  store i8 37, i8* %type200, align 2
  br label %if.end.207

if.else.201:                                      ; preds = %do.body.195
  br label %do.body.202

do.body.202:                                      ; preds = %if.else.201
  %163 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %backup_to203 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %163, i32 0, i32 1
  %164 = load i8*, i8** %backup_to203, align 8
  %165 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur204 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %165, i32 0, i32 0
  store i8* %164, i8** %cur204, align 8
  br label %do.end.205

do.end.205:                                       ; preds = %do.body.202
  %166 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type206 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %166, i32 0, i32 2
  store i8 13, i8* %type206, align 2
  br label %if.end.207

if.end.207:                                       ; preds = %do.end.205, %if.then.199
  br label %do.end.208

do.end.208:                                       ; preds = %if.end.207
  br label %if.end.267

if.else.209:                                      ; preds = %if.else.191
  %167 = load i32, i32* %c, align 4
  %cmp210 = icmp eq i32 %167, 63
  br i1 %cmp210, label %land.lhs.true.212, label %if.else.231

land.lhs.true.212:                                ; preds = %if.else.209
  %168 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts213 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %168, i32 0, i32 37
  %cplusplus = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts213, i32 0, i32 14
  %169 = load i8, i8* %cplusplus, align 1
  %conv214 = zext i8 %169 to i32
  %tobool215 = icmp ne i32 %conv214, 0
  br i1 %tobool215, label %if.then.216, label %if.else.231

if.then.216:                                      ; preds = %land.lhs.true.212
  br label %do.body.217

do.body.217:                                      ; preds = %if.then.216
  %170 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call218 = call i32 @get_effective_char(%struct.cpp_reader* %170)
  %cmp219 = icmp eq i32 %call218, 61
  br i1 %cmp219, label %if.then.221, label %if.else.223

if.then.221:                                      ; preds = %do.body.217
  %171 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type222 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %171, i32 0, i32 2
  store i8 38, i8* %type222, align 2
  br label %if.end.229

if.else.223:                                      ; preds = %do.body.217
  br label %do.body.224

do.body.224:                                      ; preds = %if.else.223
  %172 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %backup_to225 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %172, i32 0, i32 1
  %173 = load i8*, i8** %backup_to225, align 8
  %174 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur226 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %174, i32 0, i32 0
  store i8* %173, i8** %cur226, align 8
  br label %do.end.227

do.end.227:                                       ; preds = %do.body.224
  %175 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type228 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %175, i32 0, i32 2
  store i8 14, i8* %type228, align 2
  br label %if.end.229

if.end.229:                                       ; preds = %do.end.227, %if.then.221
  br label %do.end.230

do.end.230:                                       ; preds = %if.end.229
  br label %if.end.266

if.else.231:                                      ; preds = %land.lhs.true.212, %if.else.209
  %176 = load i32, i32* %c, align 4
  %cmp232 = icmp eq i32 %176, 58
  br i1 %cmp232, label %land.lhs.true.234, label %if.else.244

land.lhs.true.234:                                ; preds = %if.else.231
  %177 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts235 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %177, i32 0, i32 37
  %digraphs = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts235, i32 0, i32 19
  %178 = load i8, i8* %digraphs, align 1
  %conv236 = zext i8 %178 to i32
  %tobool237 = icmp ne i32 %conv236, 0
  br i1 %tobool237, label %if.then.238, label %if.else.244

if.then.238:                                      ; preds = %land.lhs.true.234
  %179 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type239 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %179, i32 0, i32 2
  store i8 42, i8* %type239, align 2
  %180 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %flags240 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %180, i32 0, i32 3
  %181 = load i8, i8* %flags240, align 1
  %conv241 = zext i8 %181 to i32
  %or242 = or i32 %conv241, 2
  %conv243 = trunc i32 %or242 to i8
  store i8 %conv243, i8* %flags240, align 1
  br label %if.end.265

if.else.244:                                      ; preds = %land.lhs.true.234, %if.else.231
  %182 = load i32, i32* %c, align 4
  %cmp245 = icmp eq i32 %182, 37
  br i1 %cmp245, label %land.lhs.true.247, label %if.else.258

land.lhs.true.247:                                ; preds = %if.else.244
  %183 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts248 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %183, i32 0, i32 37
  %digraphs249 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts248, i32 0, i32 19
  %184 = load i8, i8* %digraphs249, align 1
  %conv250 = zext i8 %184 to i32
  %tobool251 = icmp ne i32 %conv250, 0
  br i1 %tobool251, label %if.then.252, label %if.else.258

if.then.252:                                      ; preds = %land.lhs.true.247
  %185 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type253 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %185, i32 0, i32 2
  store i8 44, i8* %type253, align 2
  %186 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %flags254 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %186, i32 0, i32 3
  %187 = load i8, i8* %flags254, align 1
  %conv255 = zext i8 %187 to i32
  %or256 = or i32 %conv255, 2
  %conv257 = trunc i32 %or256 to i8
  store i8 %conv257, i8* %flags254, align 1
  br label %if.end.264

if.else.258:                                      ; preds = %land.lhs.true.247, %if.else.244
  br label %do.body.259

do.body.259:                                      ; preds = %if.else.258
  %188 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %backup_to260 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %188, i32 0, i32 1
  %189 = load i8*, i8** %backup_to260, align 8
  %190 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur261 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %190, i32 0, i32 0
  store i8* %189, i8** %cur261, align 8
  br label %do.end.262

do.end.262:                                       ; preds = %do.body.259
  %191 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type263 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %191, i32 0, i32 2
  store i8 3, i8* %type263, align 2
  br label %if.end.264

if.end.264:                                       ; preds = %do.end.262, %if.then.252
  br label %if.end.265

if.end.265:                                       ; preds = %if.end.264, %if.then.238
  br label %if.end.266

if.end.266:                                       ; preds = %if.end.265, %do.end.230
  br label %if.end.267

if.end.267:                                       ; preds = %if.end.266, %do.end.208
  br label %if.end.268

if.end.268:                                       ; preds = %if.end.267, %if.then.189
  br label %sw.epilog

sw.bb.269:                                        ; preds = %trigraph
  %192 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call270 = call i32 @get_effective_char(%struct.cpp_reader* %192)
  store i32 %call270, i32* %c, align 4
  %193 = load i32, i32* %c, align 4
  %cmp271 = icmp eq i32 %193, 61
  br i1 %cmp271, label %if.then.273, label %if.else.275

if.then.273:                                      ; preds = %sw.bb.269
  %194 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type274 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %194, i32 0, i32 2
  store i8 26, i8* %type274, align 2
  br label %if.end.324

if.else.275:                                      ; preds = %sw.bb.269
  %195 = load i32, i32* %c, align 4
  %cmp276 = icmp eq i32 %195, 62
  br i1 %cmp276, label %if.then.278, label %if.else.293

if.then.278:                                      ; preds = %if.else.275
  br label %do.body.279

do.body.279:                                      ; preds = %if.then.278
  %196 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call280 = call i32 @get_effective_char(%struct.cpp_reader* %196)
  %cmp281 = icmp eq i32 %call280, 61
  br i1 %cmp281, label %if.then.283, label %if.else.285

if.then.283:                                      ; preds = %do.body.279
  %197 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type284 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %197, i32 0, i32 2
  store i8 36, i8* %type284, align 2
  br label %if.end.291

if.else.285:                                      ; preds = %do.body.279
  br label %do.body.286

do.body.286:                                      ; preds = %if.else.285
  %198 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %backup_to287 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %198, i32 0, i32 1
  %199 = load i8*, i8** %backup_to287, align 8
  %200 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur288 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %200, i32 0, i32 0
  store i8* %199, i8** %cur288, align 8
  br label %do.end.289

do.end.289:                                       ; preds = %do.body.286
  %201 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type290 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %201, i32 0, i32 2
  store i8 12, i8* %type290, align 2
  br label %if.end.291

if.end.291:                                       ; preds = %do.end.289, %if.then.283
  br label %do.end.292

do.end.292:                                       ; preds = %if.end.291
  br label %if.end.323

if.else.293:                                      ; preds = %if.else.275
  %202 = load i32, i32* %c, align 4
  %cmp294 = icmp eq i32 %202, 63
  br i1 %cmp294, label %land.lhs.true.296, label %if.else.316

land.lhs.true.296:                                ; preds = %if.else.293
  %203 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts297 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %203, i32 0, i32 37
  %cplusplus298 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts297, i32 0, i32 14
  %204 = load i8, i8* %cplusplus298, align 1
  %conv299 = zext i8 %204 to i32
  %tobool300 = icmp ne i32 %conv299, 0
  br i1 %tobool300, label %if.then.301, label %if.else.316

if.then.301:                                      ; preds = %land.lhs.true.296
  br label %do.body.302

do.body.302:                                      ; preds = %if.then.301
  %205 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call303 = call i32 @get_effective_char(%struct.cpp_reader* %205)
  %cmp304 = icmp eq i32 %call303, 61
  br i1 %cmp304, label %if.then.306, label %if.else.308

if.then.306:                                      ; preds = %do.body.302
  %206 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type307 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %206, i32 0, i32 2
  store i8 39, i8* %type307, align 2
  br label %if.end.314

if.else.308:                                      ; preds = %do.body.302
  br label %do.body.309

do.body.309:                                      ; preds = %if.else.308
  %207 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %backup_to310 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %207, i32 0, i32 1
  %208 = load i8*, i8** %backup_to310, align 8
  %209 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur311 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %209, i32 0, i32 0
  store i8* %208, i8** %cur311, align 8
  br label %do.end.312

do.end.312:                                       ; preds = %do.body.309
  %210 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type313 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %210, i32 0, i32 2
  store i8 15, i8* %type313, align 2
  br label %if.end.314

if.end.314:                                       ; preds = %do.end.312, %if.then.306
  br label %do.end.315

do.end.315:                                       ; preds = %if.end.314
  br label %if.end.322

if.else.316:                                      ; preds = %land.lhs.true.296, %if.else.293
  br label %do.body.317

do.body.317:                                      ; preds = %if.else.316
  %211 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %backup_to318 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %211, i32 0, i32 1
  %212 = load i8*, i8** %backup_to318, align 8
  %213 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur319 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %213, i32 0, i32 0
  store i8* %212, i8** %cur319, align 8
  br label %do.end.320

do.end.320:                                       ; preds = %do.body.317
  %214 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type321 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %214, i32 0, i32 2
  store i8 2, i8* %type321, align 2
  br label %if.end.322

if.end.322:                                       ; preds = %do.end.320, %do.end.315
  br label %if.end.323

if.end.323:                                       ; preds = %if.end.322, %do.end.292
  br label %if.end.324

if.end.324:                                       ; preds = %if.end.323, %if.then.273
  br label %sw.epilog

sw.bb.325:                                        ; preds = %trigraph
  %215 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call326 = call i32 @get_effective_char(%struct.cpp_reader* %215)
  store i32 %call326, i32* %c, align 4
  %216 = load i32, i32* %c, align 4
  %cmp327 = icmp eq i32 %216, 61
  br i1 %cmp327, label %if.then.329, label %if.else.331

if.then.329:                                      ; preds = %sw.bb.325
  %217 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type330 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %217, i32 0, i32 2
  store i8 32, i8* %type330, align 2
  br label %if.end.388

if.else.331:                                      ; preds = %sw.bb.325
  %218 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts332 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %218, i32 0, i32 37
  %digraphs333 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts332, i32 0, i32 19
  %219 = load i8, i8* %digraphs333, align 1
  %conv334 = zext i8 %219 to i32
  %tobool335 = icmp ne i32 %conv334, 0
  br i1 %tobool335, label %land.lhs.true.336, label %if.else.366

land.lhs.true.336:                                ; preds = %if.else.331
  %220 = load i32, i32* %c, align 4
  %cmp337 = icmp eq i32 %220, 58
  br i1 %cmp337, label %if.then.339, label %if.else.366

if.then.339:                                      ; preds = %land.lhs.true.336
  %221 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %flags340 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %221, i32 0, i32 3
  %222 = load i8, i8* %flags340, align 1
  %conv341 = zext i8 %222 to i32
  %or342 = or i32 %conv341, 2
  %conv343 = trunc i32 %or342 to i8
  store i8 %conv343, i8* %flags340, align 1
  %223 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type344 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %223, i32 0, i32 2
  store i8 40, i8* %type344, align 2
  %224 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call345 = call i32 @get_effective_char(%struct.cpp_reader* %224)
  %cmp346 = icmp eq i32 %call345, 37
  br i1 %cmp346, label %if.then.348, label %if.else.360

if.then.348:                                      ; preds = %if.then.339
  %225 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur350 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %225, i32 0, i32 0
  %226 = load i8*, i8** %cur350, align 8
  store i8* %226, i8** %pos349, align 8
  %227 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call351 = call i32 @get_effective_char(%struct.cpp_reader* %227)
  %cmp352 = icmp eq i32 %call351, 58
  br i1 %cmp352, label %if.then.354, label %if.else.356

if.then.354:                                      ; preds = %if.then.348
  %228 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type355 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %228, i32 0, i32 2
  store i8 41, i8* %type355, align 2
  br label %if.end.359

if.else.356:                                      ; preds = %if.then.348
  %229 = load i8*, i8** %pos349, align 8
  %add.ptr357 = getelementptr inbounds i8, i8* %229, i64 -1
  %230 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur358 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %230, i32 0, i32 0
  store i8* %add.ptr357, i8** %cur358, align 8
  br label %if.end.359

if.end.359:                                       ; preds = %if.else.356, %if.then.354
  br label %if.end.365

if.else.360:                                      ; preds = %if.then.339
  br label %do.body.361

do.body.361:                                      ; preds = %if.else.360
  %231 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %backup_to362 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %231, i32 0, i32 1
  %232 = load i8*, i8** %backup_to362, align 8
  %233 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur363 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %233, i32 0, i32 0
  store i8* %232, i8** %cur363, align 8
  br label %do.end.364

do.end.364:                                       ; preds = %do.body.361
  br label %if.end.365

if.end.365:                                       ; preds = %do.end.364, %if.end.359
  br label %if.end.387

if.else.366:                                      ; preds = %land.lhs.true.336, %if.else.331
  %234 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts367 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %234, i32 0, i32 37
  %digraphs368 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts367, i32 0, i32 19
  %235 = load i8, i8* %digraphs368, align 1
  %conv369 = zext i8 %235 to i32
  %tobool370 = icmp ne i32 %conv369, 0
  br i1 %tobool370, label %land.lhs.true.371, label %if.else.380

land.lhs.true.371:                                ; preds = %if.else.366
  %236 = load i32, i32* %c, align 4
  %cmp372 = icmp eq i32 %236, 62
  br i1 %cmp372, label %if.then.374, label %if.else.380

if.then.374:                                      ; preds = %land.lhs.true.371
  %237 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %flags375 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %237, i32 0, i32 3
  %238 = load i8, i8* %flags375, align 1
  %conv376 = zext i8 %238 to i32
  %or377 = or i32 %conv376, 2
  %conv378 = trunc i32 %or377 to i8
  store i8 %conv378, i8* %flags375, align 1
  %239 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type379 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %239, i32 0, i32 2
  store i8 45, i8* %type379, align 2
  br label %if.end.386

if.else.380:                                      ; preds = %land.lhs.true.371, %if.else.366
  br label %do.body.381

do.body.381:                                      ; preds = %if.else.380
  %240 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %backup_to382 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %240, i32 0, i32 1
  %241 = load i8*, i8** %backup_to382, align 8
  %242 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur383 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %242, i32 0, i32 0
  store i8* %241, i8** %cur383, align 8
  br label %do.end.384

do.end.384:                                       ; preds = %do.body.381
  %243 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type385 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %243, i32 0, i32 2
  store i8 8, i8* %type385, align 2
  br label %if.end.386

if.end.386:                                       ; preds = %do.end.384, %if.then.374
  br label %if.end.387

if.end.387:                                       ; preds = %if.end.386, %if.end.365
  br label %if.end.388

if.end.388:                                       ; preds = %if.end.387, %if.then.329
  br label %sw.epilog

sw.bb.389:                                        ; preds = %trigraph
  %244 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type390 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %244, i32 0, i32 2
  store i8 51, i8* %type390, align 2
  %245 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call391 = call i32 @get_effective_char(%struct.cpp_reader* %245)
  store i32 %call391, i32* %c, align 4
  %246 = load i32, i32* %c, align 4
  %cmp392 = icmp eq i32 %246, 46
  br i1 %cmp392, label %if.then.394, label %if.else.406

if.then.394:                                      ; preds = %sw.bb.389
  %247 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur396 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %247, i32 0, i32 0
  %248 = load i8*, i8** %cur396, align 8
  store i8* %248, i8** %pos395, align 8
  %249 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call397 = call i32 @get_effective_char(%struct.cpp_reader* %249)
  %cmp398 = icmp eq i32 %call397, 46
  br i1 %cmp398, label %if.then.400, label %if.else.402

if.then.400:                                      ; preds = %if.then.394
  %250 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type401 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %250, i32 0, i32 2
  store i8 47, i8* %type401, align 2
  br label %if.end.405

if.else.402:                                      ; preds = %if.then.394
  %251 = load i8*, i8** %pos395, align 8
  %add.ptr403 = getelementptr inbounds i8, i8* %251, i64 -1
  %252 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur404 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %252, i32 0, i32 0
  store i8* %add.ptr403, i8** %cur404, align 8
  br label %if.end.405

if.end.405:                                       ; preds = %if.else.402, %if.then.400
  br label %if.end.432

if.else.406:                                      ; preds = %sw.bb.389
  %253 = load i32, i32* %c, align 4
  %and407 = and i32 %253, 255
  %idxprom = sext i32 %and407 to i64
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom
  %254 = load i16, i16* %arrayidx, align 2
  %conv408 = zext i16 %254 to i32
  %and409 = and i32 %conv408, 4
  %tobool410 = icmp ne i32 %and409, 0
  br i1 %tobool410, label %if.then.411, label %if.else.415

if.then.411:                                      ; preds = %if.else.406
  %255 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type412 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %255, i32 0, i32 2
  store i8 57, i8* %type412, align 2
  %256 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %257 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %val413 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %257, i32 0, i32 4
  %str414 = bitcast %union.anon* %val413 to %struct.cpp_string*
  %258 = load i32, i32* %c, align 4
  call void @parse_number(%struct.cpp_reader* %256, %struct.cpp_string* %str414, i32 %258, i32 1)
  br label %if.end.431

if.else.415:                                      ; preds = %if.else.406
  %259 = load i32, i32* %c, align 4
  %cmp416 = icmp eq i32 %259, 42
  br i1 %cmp416, label %land.lhs.true.418, label %if.else.425

land.lhs.true.418:                                ; preds = %if.else.415
  %260 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts419 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %260, i32 0, i32 37
  %cplusplus420 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts419, i32 0, i32 14
  %261 = load i8, i8* %cplusplus420, align 1
  %conv421 = zext i8 %261 to i32
  %tobool422 = icmp ne i32 %conv421, 0
  br i1 %tobool422, label %if.then.423, label %if.else.425

if.then.423:                                      ; preds = %land.lhs.true.418
  %262 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type424 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %262, i32 0, i32 2
  store i8 54, i8* %type424, align 2
  br label %if.end.430

if.else.425:                                      ; preds = %land.lhs.true.418, %if.else.415
  br label %do.body.426

do.body.426:                                      ; preds = %if.else.425
  %263 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %backup_to427 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %263, i32 0, i32 1
  %264 = load i8*, i8** %backup_to427, align 8
  %265 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur428 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %265, i32 0, i32 0
  store i8* %264, i8** %cur428, align 8
  br label %do.end.429

do.end.429:                                       ; preds = %do.body.426
  br label %if.end.430

if.end.430:                                       ; preds = %do.end.429, %if.then.423
  br label %if.end.431

if.end.431:                                       ; preds = %if.end.430, %if.then.411
  br label %if.end.432

if.end.432:                                       ; preds = %if.end.431, %if.end.405
  br label %sw.epilog

sw.bb.433:                                        ; preds = %trigraph
  %266 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call434 = call i32 @get_effective_char(%struct.cpp_reader* %266)
  store i32 %call434, i32* %c, align 4
  %267 = load i32, i32* %c, align 4
  %cmp435 = icmp eq i32 %267, 43
  br i1 %cmp435, label %if.then.437, label %if.else.439

if.then.437:                                      ; preds = %sw.bb.433
  %268 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type438 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %268, i32 0, i32 2
  store i8 48, i8* %type438, align 2
  br label %if.end.451

if.else.439:                                      ; preds = %sw.bb.433
  %269 = load i32, i32* %c, align 4
  %cmp440 = icmp eq i32 %269, 61
  br i1 %cmp440, label %if.then.442, label %if.else.444

if.then.442:                                      ; preds = %if.else.439
  %270 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type443 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %270, i32 0, i32 2
  store i8 28, i8* %type443, align 2
  br label %if.end.450

if.else.444:                                      ; preds = %if.else.439
  br label %do.body.445

do.body.445:                                      ; preds = %if.else.444
  %271 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %backup_to446 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %271, i32 0, i32 1
  %272 = load i8*, i8** %backup_to446, align 8
  %273 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur447 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %273, i32 0, i32 0
  store i8* %272, i8** %cur447, align 8
  br label %do.end.448

do.end.448:                                       ; preds = %do.body.445
  %274 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type449 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %274, i32 0, i32 2
  store i8 4, i8* %type449, align 2
  br label %if.end.450

if.end.450:                                       ; preds = %do.end.448, %if.then.442
  br label %if.end.451

if.end.451:                                       ; preds = %if.end.450, %if.then.437
  br label %sw.epilog

sw.bb.452:                                        ; preds = %trigraph
  %275 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call453 = call i32 @get_effective_char(%struct.cpp_reader* %275)
  store i32 %call453, i32* %c, align 4
  %276 = load i32, i32* %c, align 4
  %cmp454 = icmp eq i32 %276, 62
  br i1 %cmp454, label %if.then.456, label %if.else.474

if.then.456:                                      ; preds = %sw.bb.452
  %277 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type457 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %277, i32 0, i32 2
  store i8 50, i8* %type457, align 2
  %278 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts458 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %278, i32 0, i32 37
  %cplusplus459 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts458, i32 0, i32 14
  %279 = load i8, i8* %cplusplus459, align 1
  %tobool460 = icmp ne i8 %279, 0
  br i1 %tobool460, label %if.then.461, label %if.end.473

if.then.461:                                      ; preds = %if.then.456
  %280 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call462 = call i32 @get_effective_char(%struct.cpp_reader* %280)
  %cmp463 = icmp eq i32 %call462, 42
  br i1 %cmp463, label %if.then.465, label %if.else.467

if.then.465:                                      ; preds = %if.then.461
  %281 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type466 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %281, i32 0, i32 2
  store i8 53, i8* %type466, align 2
  br label %if.end.472

if.else.467:                                      ; preds = %if.then.461
  br label %do.body.468

do.body.468:                                      ; preds = %if.else.467
  %282 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %backup_to469 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %282, i32 0, i32 1
  %283 = load i8*, i8** %backup_to469, align 8
  %284 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur470 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %284, i32 0, i32 0
  store i8* %283, i8** %cur470, align 8
  br label %do.end.471

do.end.471:                                       ; preds = %do.body.468
  br label %if.end.472

if.end.472:                                       ; preds = %do.end.471, %if.then.465
  br label %if.end.473

if.end.473:                                       ; preds = %if.end.472, %if.then.456
  br label %if.end.492

if.else.474:                                      ; preds = %sw.bb.452
  %285 = load i32, i32* %c, align 4
  %cmp475 = icmp eq i32 %285, 45
  br i1 %cmp475, label %if.then.477, label %if.else.479

if.then.477:                                      ; preds = %if.else.474
  %286 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type478 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %286, i32 0, i32 2
  store i8 49, i8* %type478, align 2
  br label %if.end.491

if.else.479:                                      ; preds = %if.else.474
  %287 = load i32, i32* %c, align 4
  %cmp480 = icmp eq i32 %287, 61
  br i1 %cmp480, label %if.then.482, label %if.else.484

if.then.482:                                      ; preds = %if.else.479
  %288 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type483 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %288, i32 0, i32 2
  store i8 29, i8* %type483, align 2
  br label %if.end.490

if.else.484:                                      ; preds = %if.else.479
  br label %do.body.485

do.body.485:                                      ; preds = %if.else.484
  %289 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %backup_to486 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %289, i32 0, i32 1
  %290 = load i8*, i8** %backup_to486, align 8
  %291 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur487 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %291, i32 0, i32 0
  store i8* %290, i8** %cur487, align 8
  br label %do.end.488

do.end.488:                                       ; preds = %do.body.485
  %292 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type489 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %292, i32 0, i32 2
  store i8 5, i8* %type489, align 2
  br label %if.end.490

if.end.490:                                       ; preds = %do.end.488, %if.then.482
  br label %if.end.491

if.end.491:                                       ; preds = %if.end.490, %if.then.477
  br label %if.end.492

if.end.492:                                       ; preds = %if.end.491, %if.end.473
  br label %sw.epilog

sw.bb.493:                                        ; preds = %trigraph
  %293 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call494 = call i32 @get_effective_char(%struct.cpp_reader* %293)
  store i32 %call494, i32* %c, align 4
  %294 = load i32, i32* %c, align 4
  %cmp495 = icmp eq i32 %294, 38
  br i1 %cmp495, label %if.then.497, label %if.else.499

if.then.497:                                      ; preds = %sw.bb.493
  %295 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type498 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %295, i32 0, i32 2
  store i8 17, i8* %type498, align 2
  br label %if.end.511

if.else.499:                                      ; preds = %sw.bb.493
  %296 = load i32, i32* %c, align 4
  %cmp500 = icmp eq i32 %296, 61
  br i1 %cmp500, label %if.then.502, label %if.else.504

if.then.502:                                      ; preds = %if.else.499
  %297 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type503 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %297, i32 0, i32 2
  store i8 33, i8* %type503, align 2
  br label %if.end.510

if.else.504:                                      ; preds = %if.else.499
  br label %do.body.505

do.body.505:                                      ; preds = %if.else.504
  %298 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %backup_to506 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %298, i32 0, i32 1
  %299 = load i8*, i8** %backup_to506, align 8
  %300 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur507 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %300, i32 0, i32 0
  store i8* %299, i8** %cur507, align 8
  br label %do.end.508

do.end.508:                                       ; preds = %do.body.505
  %301 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type509 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %301, i32 0, i32 2
  store i8 9, i8* %type509, align 2
  br label %if.end.510

if.end.510:                                       ; preds = %do.end.508, %if.then.502
  br label %if.end.511

if.end.511:                                       ; preds = %if.end.510, %if.then.497
  br label %sw.epilog

sw.bb.512:                                        ; preds = %trigraph
  %302 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call513 = call i32 @get_effective_char(%struct.cpp_reader* %302)
  store i32 %call513, i32* %c, align 4
  %303 = load i32, i32* %c, align 4
  %cmp514 = icmp eq i32 %303, 124
  br i1 %cmp514, label %if.then.516, label %if.else.518

if.then.516:                                      ; preds = %sw.bb.512
  %304 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type517 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %304, i32 0, i32 2
  store i8 18, i8* %type517, align 2
  br label %if.end.530

if.else.518:                                      ; preds = %sw.bb.512
  %305 = load i32, i32* %c, align 4
  %cmp519 = icmp eq i32 %305, 61
  br i1 %cmp519, label %if.then.521, label %if.else.523

if.then.521:                                      ; preds = %if.else.518
  %306 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type522 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %306, i32 0, i32 2
  store i8 34, i8* %type522, align 2
  br label %if.end.529

if.else.523:                                      ; preds = %if.else.518
  br label %do.body.524

do.body.524:                                      ; preds = %if.else.523
  %307 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %backup_to525 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %307, i32 0, i32 1
  %308 = load i8*, i8** %backup_to525, align 8
  %309 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur526 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %309, i32 0, i32 0
  store i8* %308, i8** %cur526, align 8
  br label %do.end.527

do.end.527:                                       ; preds = %do.body.524
  %310 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type528 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %310, i32 0, i32 2
  store i8 10, i8* %type528, align 2
  br label %if.end.529

if.end.529:                                       ; preds = %do.end.527, %if.then.521
  br label %if.end.530

if.end.530:                                       ; preds = %if.end.529, %if.then.516
  br label %sw.epilog

sw.bb.531:                                        ; preds = %trigraph
  %311 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call532 = call i32 @get_effective_char(%struct.cpp_reader* %311)
  store i32 %call532, i32* %c, align 4
  %312 = load i32, i32* %c, align 4
  %cmp533 = icmp eq i32 %312, 58
  br i1 %cmp533, label %land.lhs.true.535, label %if.else.542

land.lhs.true.535:                                ; preds = %sw.bb.531
  %313 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts536 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %313, i32 0, i32 37
  %cplusplus537 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts536, i32 0, i32 14
  %314 = load i8, i8* %cplusplus537, align 1
  %conv538 = zext i8 %314 to i32
  %tobool539 = icmp ne i32 %conv538, 0
  br i1 %tobool539, label %if.then.540, label %if.else.542

if.then.540:                                      ; preds = %land.lhs.true.535
  %315 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type541 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %315, i32 0, i32 2
  store i8 52, i8* %type541, align 2
  br label %if.end.563

if.else.542:                                      ; preds = %land.lhs.true.535, %sw.bb.531
  %316 = load i32, i32* %c, align 4
  %cmp543 = icmp eq i32 %316, 62
  br i1 %cmp543, label %land.lhs.true.545, label %if.else.556

land.lhs.true.545:                                ; preds = %if.else.542
  %317 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts546 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %317, i32 0, i32 37
  %digraphs547 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts546, i32 0, i32 19
  %318 = load i8, i8* %digraphs547, align 1
  %conv548 = zext i8 %318 to i32
  %tobool549 = icmp ne i32 %conv548, 0
  br i1 %tobool549, label %if.then.550, label %if.else.556

if.then.550:                                      ; preds = %land.lhs.true.545
  %319 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %flags551 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %319, i32 0, i32 3
  %320 = load i8, i8* %flags551, align 1
  %conv552 = zext i8 %320 to i32
  %or553 = or i32 %conv552, 2
  %conv554 = trunc i32 %or553 to i8
  store i8 %conv554, i8* %flags551, align 1
  %321 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type555 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %321, i32 0, i32 2
  store i8 43, i8* %type555, align 2
  br label %if.end.562

if.else.556:                                      ; preds = %land.lhs.true.545, %if.else.542
  br label %do.body.557

do.body.557:                                      ; preds = %if.else.556
  %322 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %backup_to558 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %322, i32 0, i32 1
  %323 = load i8*, i8** %backup_to558, align 8
  %324 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur559 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %324, i32 0, i32 0
  store i8* %323, i8** %cur559, align 8
  br label %do.end.560

do.end.560:                                       ; preds = %do.body.557
  %325 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type561 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %325, i32 0, i32 2
  store i8 20, i8* %type561, align 2
  br label %if.end.562

if.end.562:                                       ; preds = %do.end.560, %if.then.550
  br label %if.end.563

if.end.563:                                       ; preds = %if.end.562, %if.then.540
  br label %sw.epilog

sw.bb.564:                                        ; preds = %trigraph
  br label %do.body.565

do.body.565:                                      ; preds = %sw.bb.564
  %326 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call566 = call i32 @get_effective_char(%struct.cpp_reader* %326)
  %cmp567 = icmp eq i32 %call566, 61
  br i1 %cmp567, label %if.then.569, label %if.else.571

if.then.569:                                      ; preds = %do.body.565
  %327 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type570 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %327, i32 0, i32 2
  store i8 30, i8* %type570, align 2
  br label %if.end.577

if.else.571:                                      ; preds = %do.body.565
  br label %do.body.572

do.body.572:                                      ; preds = %if.else.571
  %328 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %backup_to573 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %328, i32 0, i32 1
  %329 = load i8*, i8** %backup_to573, align 8
  %330 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur574 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %330, i32 0, i32 0
  store i8* %329, i8** %cur574, align 8
  br label %do.end.575

do.end.575:                                       ; preds = %do.body.572
  %331 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type576 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %331, i32 0, i32 2
  store i8 6, i8* %type576, align 2
  br label %if.end.577

if.end.577:                                       ; preds = %do.end.575, %if.then.569
  br label %do.end.578

do.end.578:                                       ; preds = %if.end.577
  br label %sw.epilog

sw.bb.579:                                        ; preds = %trigraph
  br label %do.body.580

do.body.580:                                      ; preds = %sw.bb.579
  %332 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call581 = call i32 @get_effective_char(%struct.cpp_reader* %332)
  %cmp582 = icmp eq i32 %call581, 61
  br i1 %cmp582, label %if.then.584, label %if.else.586

if.then.584:                                      ; preds = %do.body.580
  %333 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type585 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %333, i32 0, i32 2
  store i8 24, i8* %type585, align 2
  br label %if.end.592

if.else.586:                                      ; preds = %do.body.580
  br label %do.body.587

do.body.587:                                      ; preds = %if.else.586
  %334 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %backup_to588 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %334, i32 0, i32 1
  %335 = load i8*, i8** %backup_to588, align 8
  %336 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur589 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %336, i32 0, i32 0
  store i8* %335, i8** %cur589, align 8
  br label %do.end.590

do.end.590:                                       ; preds = %do.body.587
  %337 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type591 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %337, i32 0, i32 2
  store i8 0, i8* %type591, align 2
  br label %if.end.592

if.end.592:                                       ; preds = %do.end.590, %if.then.584
  br label %do.end.593

do.end.593:                                       ; preds = %if.end.592
  br label %sw.epilog

sw.bb.594:                                        ; preds = %trigraph
  br label %do.body.595

do.body.595:                                      ; preds = %sw.bb.594
  %338 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call596 = call i32 @get_effective_char(%struct.cpp_reader* %338)
  %cmp597 = icmp eq i32 %call596, 61
  br i1 %cmp597, label %if.then.599, label %if.else.601

if.then.599:                                      ; preds = %do.body.595
  %339 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type600 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %339, i32 0, i32 2
  store i8 25, i8* %type600, align 2
  br label %if.end.607

if.else.601:                                      ; preds = %do.body.595
  br label %do.body.602

do.body.602:                                      ; preds = %if.else.601
  %340 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %backup_to603 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %340, i32 0, i32 1
  %341 = load i8*, i8** %backup_to603, align 8
  %342 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur604 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %342, i32 0, i32 0
  store i8* %341, i8** %cur604, align 8
  br label %do.end.605

do.end.605:                                       ; preds = %do.body.602
  %343 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type606 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %343, i32 0, i32 2
  store i8 1, i8* %type606, align 2
  br label %if.end.607

if.end.607:                                       ; preds = %do.end.605, %if.then.599
  br label %do.end.608

do.end.608:                                       ; preds = %if.end.607
  br label %sw.epilog

sw.bb.609:                                        ; preds = %trigraph
  br label %do.body.610

do.body.610:                                      ; preds = %sw.bb.609
  %344 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call611 = call i32 @get_effective_char(%struct.cpp_reader* %344)
  %cmp612 = icmp eq i32 %call611, 61
  br i1 %cmp612, label %if.then.614, label %if.else.616

if.then.614:                                      ; preds = %do.body.610
  %345 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type615 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %345, i32 0, i32 2
  store i8 35, i8* %type615, align 2
  br label %if.end.622

if.else.616:                                      ; preds = %do.body.610
  br label %do.body.617

do.body.617:                                      ; preds = %if.else.616
  %346 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %backup_to618 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %346, i32 0, i32 1
  %347 = load i8*, i8** %backup_to618, align 8
  %348 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur619 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %348, i32 0, i32 0
  store i8* %347, i8** %cur619, align 8
  br label %do.end.620

do.end.620:                                       ; preds = %do.body.617
  %349 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type621 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %349, i32 0, i32 2
  store i8 11, i8* %type621, align 2
  br label %if.end.622

if.end.622:                                       ; preds = %do.end.620, %if.then.614
  br label %do.end.623

do.end.623:                                       ; preds = %if.end.622
  br label %sw.epilog

sw.bb.624:                                        ; preds = %trigraph
  br label %do.body.625

do.body.625:                                      ; preds = %sw.bb.624
  %350 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call626 = call i32 @get_effective_char(%struct.cpp_reader* %350)
  %cmp627 = icmp eq i32 %call626, 35
  br i1 %cmp627, label %if.then.629, label %if.else.631

if.then.629:                                      ; preds = %do.body.625
  %351 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type630 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %351, i32 0, i32 2
  store i8 41, i8* %type630, align 2
  br label %if.end.637

if.else.631:                                      ; preds = %do.body.625
  br label %do.body.632

do.body.632:                                      ; preds = %if.else.631
  %352 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %backup_to633 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %352, i32 0, i32 1
  %353 = load i8*, i8** %backup_to633, align 8
  %354 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur634 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %354, i32 0, i32 0
  store i8* %353, i8** %cur634, align 8
  br label %do.end.635

do.end.635:                                       ; preds = %do.body.632
  %355 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type636 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %355, i32 0, i32 2
  store i8 40, i8* %type636, align 2
  br label %if.end.637

if.end.637:                                       ; preds = %do.end.635, %if.then.629
  br label %do.end.638

do.end.638:                                       ; preds = %if.end.637
  br label %sw.epilog

sw.bb.639:                                        ; preds = %trigraph
  %356 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type640 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %356, i32 0, i32 2
  store i8 16, i8* %type640, align 2
  br label %sw.epilog

sw.bb.641:                                        ; preds = %trigraph
  %357 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type642 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %357, i32 0, i32 2
  store i8 21, i8* %type642, align 2
  br label %sw.epilog

sw.bb.643:                                        ; preds = %trigraph
  %358 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type644 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %358, i32 0, i32 2
  store i8 22, i8* %type644, align 2
  br label %sw.epilog

sw.bb.645:                                        ; preds = %trigraph
  %359 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type646 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %359, i32 0, i32 2
  store i8 23, i8* %type646, align 2
  br label %sw.epilog

sw.bb.647:                                        ; preds = %trigraph
  %360 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type648 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %360, i32 0, i32 2
  store i8 42, i8* %type648, align 2
  br label %sw.epilog

sw.bb.649:                                        ; preds = %trigraph
  %361 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type650 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %361, i32 0, i32 2
  store i8 43, i8* %type650, align 2
  br label %sw.epilog

sw.bb.651:                                        ; preds = %trigraph
  %362 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type652 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %362, i32 0, i32 2
  store i8 44, i8* %type652, align 2
  br label %sw.epilog

sw.bb.653:                                        ; preds = %trigraph
  %363 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type654 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %363, i32 0, i32 2
  store i8 45, i8* %type654, align 2
  br label %sw.epilog

sw.bb.655:                                        ; preds = %trigraph
  %364 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type656 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %364, i32 0, i32 2
  store i8 46, i8* %type656, align 2
  br label %sw.epilog

sw.bb.657:                                        ; preds = %trigraph
  %365 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type658 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %365, i32 0, i32 2
  store i8 55, i8* %type658, align 2
  br label %sw.epilog

sw.bb.659:                                        ; preds = %trigraph
  %366 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts660 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %366, i32 0, i32 37
  %dollars_in_ident = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts660, i32 0, i32 39
  %367 = load i8, i8* %dollars_in_ident, align 1
  %tobool661 = icmp ne i8 %367, 0
  br i1 %tobool661, label %if.then.662, label %if.end.663

if.then.662:                                      ; preds = %sw.bb.659
  br label %start_ident

if.end.663:                                       ; preds = %sw.bb.659
  br label %random_char

random_char:                                      ; preds = %if.end.663, %if.then.76
  br label %sw.default

sw.default:                                       ; preds = %trigraph, %random_char
  %368 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type664 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %368, i32 0, i32 2
  store i8 60, i8* %type664, align 2
  %369 = load i32, i32* %c, align 4
  %conv665 = trunc i32 %369 to i8
  %370 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %val666 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %370, i32 0, i32 4
  %c667 = bitcast %union.anon* %val666 to i8*
  store i8 %conv665, i8* %c667, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.657, %sw.bb.655, %sw.bb.653, %sw.bb.651, %sw.bb.649, %sw.bb.647, %sw.bb.645, %sw.bb.643, %sw.bb.641, %sw.bb.639, %do.end.638, %do.end.623, %do.end.608, %do.end.593, %do.end.578, %if.end.563, %if.end.530, %if.end.511, %if.end.492, %if.end.451, %if.end.432, %if.end.388, %if.end.324, %if.end.268, %if.then.183, %if.end.179, %do.end, %if.then.165, %sw.bb.113, %if.end.112, %if.then.88, %sw.bb.79, %if.end.78, %if.end.57, %if.end.34
  %371 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  ret %struct.cpp_token* %371
}

declare i32 @_cpp_handle_directive(%struct.cpp_reader*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @skip_whitespace(%struct.cpp_reader* %pfile, i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %c.addr = alloca i32, align 4
  %buffer = alloca %struct.cpp_buffer*, align 8
  %warned = alloca i32, align 4
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 0
  %1 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8
  store %struct.cpp_buffer* %1, %struct.cpp_buffer** %buffer, align 8
  store i32 0, i32* %warned, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %2, 32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end.24

if.else:                                          ; preds = %do.body
  %3 = load i32, i32* %c.addr, align 4
  %cmp2 = icmp eq i32 %3, 9
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @adjust_column(%struct.cpp_reader* %4)
  br label %if.end.23

if.else.4:                                        ; preds = %if.else
  %5 = load i32, i32* %c.addr, align 4
  %cmp5 = icmp eq i32 %5, 0
  br i1 %cmp5, label %if.then.6, label %if.else.11

if.then.6:                                        ; preds = %if.else.4
  %6 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %6, i32 0, i32 0
  %7 = load i8*, i8** %cur, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 -1
  %8 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %rlimit = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %8, i32 0, i32 2
  %9 = load i8*, i8** %rlimit, align 8
  %cmp7 = icmp eq i8* %add.ptr, %9
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then.6
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.6
  %10 = load i32, i32* %warned, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end
  %11 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_warning(%struct.cpp_reader* %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i32 0, i32 0))
  store i32 1, i32* %warned, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  br label %if.end.22

if.else.11:                                       ; preds = %if.else.4
  %12 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %12, i32 0, i32 1
  %in_directive = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state, i32 0, i32 0
  %13 = load i8, i8* %in_directive, align 1
  %conv = zext i8 %13 to i32
  %tobool12 = icmp ne i32 %conv, 0
  br i1 %tobool12, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %if.else.11
  %14 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %14, i32 0, i32 37
  %pedantic = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 42
  %15 = load i8, i8* %pedantic, align 1
  %conv13 = zext i8 %15 to i32
  %tobool14 = icmp ne i32 %conv13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %land.lhs.true
  %16 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %17 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %line = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %17, i32 0, i32 4
  %18 = load i32, i32* %line, align 4
  %19 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur16 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %19, i32 0, i32 0
  %20 = load i8*, i8** %cur16, align 8
  %21 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %line_base = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %21, i32 0, i32 3
  %22 = load i8*, i8** %line_base, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %20 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %23 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %col_adjust = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %23, i32 0, i32 8
  %24 = load i32, i32* %col_adjust, align 4
  %conv17 = zext i32 %24 to i64
  %add = add nsw i64 %sub.ptr.sub, %conv17
  %conv18 = trunc i64 %add to i32
  %25 = load i32, i32* %c.addr, align 4
  %cmp19 = icmp eq i32 %25, 12
  %cond = select i1 %cmp19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0)
  call void (%struct.cpp_reader*, i32, i32, i8*, ...) @cpp_pedwarn_with_line(%struct.cpp_reader* %16, i32 %18, i32 %conv18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i32 0, i32 0), i8* %cond)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.15, %land.lhs.true, %if.else.11
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end.10
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.3
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then
  %26 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur25 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %26, i32 0, i32 0
  %27 = load i8*, i8** %cur25, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %cur25, align 8
  %28 = load i8, i8* %27, align 1
  %conv26 = zext i8 %28 to i32
  store i32 %conv26, i32* %c.addr, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.24
  %29 = load i32, i32* %c.addr, align 4
  %and = and i32 %29, 255
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom
  %30 = load i16, i16* %arrayidx, align 2
  %conv27 = zext i16 %30 to i32
  %and28 = and i32 %conv27, 2048
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %31 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur30 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %31, i32 0, i32 0
  %32 = load i8*, i8** %cur30, align 8
  %incdec.ptr31 = getelementptr inbounds i8, i8* %32, i32 -1
  store i8* %incdec.ptr31, i8** %cur30, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.8
  %33 = load i32, i32* %retval
  ret i32 %33
}

declare void @cpp_pedwarn(%struct.cpp_reader*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @handle_newline(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %buffer = alloca %struct.cpp_buffer*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 0
  %1 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8
  store %struct.cpp_buffer* %1, %struct.cpp_buffer** %buffer, align 8
  %2 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %2, i32 0, i32 0
  %3 = load i8*, i8** %cur, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 -1
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %5 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur2 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %5, i32 0, i32 0
  %6 = load i8*, i8** %cur2, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %7 to i32
  %add = add nsw i32 %conv, %conv4
  %cmp = icmp eq i32 %add, 23
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur6 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %8, i32 0, i32 0
  %9 = load i8*, i8** %cur6, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %cur6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur7 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %10, i32 0, i32 0
  %11 = load i8*, i8** %cur7, align 8
  %12 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %line_base = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %12, i32 0, i32 3
  store i8* %11, i8** %line_base, align 8
  %13 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %col_adjust = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %13, i32 0, i32 8
  store i32 0, i32* %col_adjust, align 4
  %14 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %line = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %14, i32 0, i32 4
  %15 = load i32, i32* %line, align 4
  %inc = add i32 %15, 1
  store i32 %inc, i32* %line, align 4
  ret void
}

declare void @_cpp_pop_buffer(%struct.cpp_reader*) #2

; Function Attrs: nounwind uwtable
define internal i32 @skip_escaped_newlines(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %buffer = alloca %struct.cpp_buffer*, align 8
  %next = alloca i32, align 4
  %saved_cur = alloca i8*, align 8
  %next1 = alloca i32, align 4
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 0
  %1 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8
  store %struct.cpp_buffer* %1, %struct.cpp_buffer** %buffer, align 8
  %2 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %2, i32 0, i32 0
  %3 = load i8*, i8** %cur, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 -1
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  store i32 %conv, i32* %next, align 4
  %5 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %from_stage3 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %5, i32 0, i32 12
  %6 = load i8, i8* %from_stage3, align 1
  %tobool = icmp ne i8 %6, 0
  br i1 %tobool, label %if.end.70, label %if.then

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.then
  %7 = load i32, i32* %next, align 4
  %cmp = icmp eq i32 %7, 63
  br i1 %cmp, label %if.then.3, label %if.end.19

if.then.3:                                        ; preds = %do.body
  %8 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur4 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %8, i32 0, i32 0
  %9 = load i8*, i8** %cur4, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %10 to i32
  %cmp7 = icmp ne i32 %conv6, 63
  br i1 %cmp7, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.3
  %11 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call zeroext i1 @trigraph_p(%struct.cpp_reader* %11)
  br i1 %call, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %lor.lhs.false, %if.then.3
  br label %do.end.69

if.end:                                           ; preds = %lor.lhs.false
  %12 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur10 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %12, i32 0, i32 0
  %13 = load i8*, i8** %cur10, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx11, align 1
  %idxprom = zext i8 %14 to i64
  %arrayidx12 = getelementptr inbounds [256 x i8], [256 x i8]* @_cpp_trigraph_map, i32 0, i64 %idxprom
  %15 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %15 to i32
  store i32 %conv13, i32* %next, align 4
  %16 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur14 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %16, i32 0, i32 0
  %17 = load i8*, i8** %cur14, align 8
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 2
  store i8* %add.ptr, i8** %cur14, align 8
  %18 = load i32, i32* %next, align 4
  %cmp15 = icmp ne i32 %18, 92
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end
  br label %do.end.69

if.end.18:                                        ; preds = %if.end
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %do.body
  %19 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur20 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %19, i32 0, i32 0
  %20 = load i8*, i8** %cur20, align 8
  %21 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %rlimit = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %21, i32 0, i32 2
  %22 = load i8*, i8** %rlimit, align 8
  %cmp21 = icmp eq i8* %20, %22
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.19
  br label %do.end.69

if.end.24:                                        ; preds = %if.end.19
  %23 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur25 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %23, i32 0, i32 0
  %24 = load i8*, i8** %cur25, align 8
  store i8* %24, i8** %saved_cur, align 8
  br label %do.body.26

do.body.26:                                       ; preds = %land.end, %if.end.24
  %25 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur27 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %25, i32 0, i32 0
  %26 = load i8*, i8** %cur27, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr, i8** %cur27, align 8
  %27 = load i8, i8* %26, align 1
  %conv28 = zext i8 %27 to i32
  store i32 %conv28, i32* %next1, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body.26
  %28 = load i32, i32* %next1, align 4
  %and = and i32 %28, 255
  %idxprom29 = sext i32 %and to i64
  %arrayidx30 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom29
  %29 = load i16, i16* %arrayidx30, align 2
  %conv31 = zext i16 %29 to i32
  %and32 = and i32 %conv31, 2048
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %30 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur34 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %30, i32 0, i32 0
  %31 = load i8*, i8** %cur34, align 8
  %32 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %rlimit35 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %32, i32 0, i32 2
  %33 = load i8*, i8** %rlimit35, align 8
  %cmp36 = icmp ult i8* %31, %33
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %34 = phi i1 [ false, %do.cond ], [ %cmp36, %land.rhs ]
  br i1 %34, label %do.body.26, label %do.end

do.end:                                           ; preds = %land.end
  %35 = load i32, i32* %next1, align 4
  %and38 = and i32 %35, 255
  %idxprom39 = sext i32 %and38 to i64
  %arrayidx40 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom39
  %36 = load i16, i16* %arrayidx40, align 2
  %conv41 = zext i16 %36 to i32
  %and42 = and i32 %conv41, 1024
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %if.end.46, label %if.then.44

if.then.44:                                       ; preds = %do.end
  %37 = load i8*, i8** %saved_cur, align 8
  %38 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur45 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %38, i32 0, i32 0
  store i8* %37, i8** %cur45, align 8
  br label %do.end.69

if.end.46:                                        ; preds = %do.end
  %39 = load i8*, i8** %saved_cur, align 8
  %40 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur47 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %40, i32 0, i32 0
  %41 = load i8*, i8** %cur47, align 8
  %add.ptr48 = getelementptr inbounds i8, i8* %41, i64 -1
  %cmp49 = icmp ne i8* %39, %add.ptr48
  br i1 %cmp49, label %land.lhs.true, label %if.end.53

land.lhs.true:                                    ; preds = %if.end.46
  %42 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %42, i32 0, i32 1
  %lexing_comment = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state, i32 0, i32 4
  %43 = load i8, i8* %lexing_comment, align 1
  %tobool51 = icmp ne i8 %43, 0
  br i1 %tobool51, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %land.lhs.true
  %44 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_warning(%struct.cpp_reader* %44, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %land.lhs.true, %if.end.46
  %45 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @handle_newline(%struct.cpp_reader* %45)
  %46 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur54 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %46, i32 0, i32 0
  %47 = load i8*, i8** %cur54, align 8
  %48 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %backup_to = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %48, i32 0, i32 1
  store i8* %47, i8** %backup_to, align 8
  %49 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur55 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %49, i32 0, i32 0
  %50 = load i8*, i8** %cur55, align 8
  %51 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %rlimit56 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %51, i32 0, i32 2
  %52 = load i8*, i8** %rlimit56, align 8
  %cmp57 = icmp eq i8* %50, %52
  br i1 %cmp57, label %if.then.59, label %if.else

if.then.59:                                       ; preds = %if.end.53
  %53 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_pedwarn(%struct.cpp_reader* %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i32 0, i32 0))
  store i32 -1, i32* %next, align 4
  br label %if.end.63

if.else:                                          ; preds = %if.end.53
  %54 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur60 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %54, i32 0, i32 0
  %55 = load i8*, i8** %cur60, align 8
  %incdec.ptr61 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr61, i8** %cur60, align 8
  %56 = load i8, i8* %55, align 1
  %conv62 = zext i8 %56 to i32
  store i32 %conv62, i32* %next, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.else, %if.then.59
  br label %do.cond.64

do.cond.64:                                       ; preds = %if.end.63
  %57 = load i32, i32* %next, align 4
  %cmp65 = icmp eq i32 %57, 92
  br i1 %cmp65, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond.64
  %58 = load i32, i32* %next, align 4
  %cmp67 = icmp eq i32 %58, 63
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond.64
  %59 = phi i1 [ true, %do.cond.64 ], [ %cmp67, %lor.rhs ]
  br i1 %59, label %do.body, label %do.end.69

do.end.69:                                        ; preds = %lor.end, %if.then.44, %if.then.23, %if.then.17, %if.then.9
  br label %if.end.70

if.end.70:                                        ; preds = %do.end.69, %entry
  %60 = load i32, i32* %next, align 4
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define internal void @parse_number(%struct.cpp_reader* %pfile, %struct.cpp_string* %number, i32 %c, i32 %leading_period) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %number.addr = alloca %struct.cpp_string*, align 8
  %c.addr = alloca i32, align 4
  %leading_period.addr = alloca i32, align 4
  %buffer = alloca %struct.cpp_buffer*, align 8
  %dest = alloca i8*, align 8
  %limit = alloca i8*, align 8
  %len_so_far = alloca i64, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.cpp_string* %number, %struct.cpp_string** %number.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  store i32 %leading_period, i32* %leading_period.addr, align 4
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 0
  %1 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8
  store %struct.cpp_buffer* %1, %struct.cpp_buffer** %buffer, align 8
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %u_buff = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %2, i32 0, i32 7
  %3 = load %struct._cpp_buff*, %struct._cpp_buff** %u_buff, align 8
  %cur = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %3, i32 0, i32 2
  %4 = load i8*, i8** %cur, align 8
  store i8* %4, i8** %dest, align 8
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %u_buff2 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %5, i32 0, i32 7
  %6 = load %struct._cpp_buff*, %struct._cpp_buff** %u_buff2, align 8
  %limit3 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %6, i32 0, i32 3
  %7 = load i8*, i8** %limit3, align 8
  store i8* %7, i8** %limit, align 8
  %8 = load i32, i32* %leading_period.addr, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %9 = load i8*, i8** %dest, align 8
  %10 = load i8*, i8** %limit, align 8
  %cmp = icmp eq i8* %9, %10
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %11 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %12 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %u_buff5 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %12, i32 0, i32 7
  call void @_cpp_extend_buff(%struct.cpp_reader* %11, %struct._cpp_buff** %u_buff5, i64 1)
  %13 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %u_buff6 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %13, i32 0, i32 7
  %14 = load %struct._cpp_buff*, %struct._cpp_buff** %u_buff6, align 8
  %cur7 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %14, i32 0, i32 2
  %15 = load i8*, i8** %cur7, align 8
  store i8* %15, i8** %dest, align 8
  %16 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %u_buff8 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %16, i32 0, i32 7
  %17 = load %struct._cpp_buff*, %struct._cpp_buff** %u_buff8, align 8
  %limit9 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %17, i32 0, i32 3
  %18 = load i8*, i8** %limit9, align 8
  store i8* %18, i8** %limit, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %19 = load i8*, i8** %dest, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %dest, align 8
  store i8 46, i8* %19, align 1
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  br label %do.body

do.body:                                          ; preds = %lor.end.115, %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %lor.end.62, %do.body
  %20 = load i8*, i8** %limit, align 8
  %21 = load i8*, i8** %dest, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %20 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp12 = icmp ult i64 %sub.ptr.sub, 2
  br i1 %cmp12, label %if.then.13, label %if.end.24

if.then.13:                                       ; preds = %do.body.11
  %22 = load i8*, i8** %dest, align 8
  %23 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %u_buff14 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %23, i32 0, i32 7
  %24 = load %struct._cpp_buff*, %struct._cpp_buff** %u_buff14, align 8
  %cur15 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %24, i32 0, i32 2
  %25 = load i8*, i8** %cur15, align 8
  %sub.ptr.lhs.cast16 = ptrtoint i8* %22 to i64
  %sub.ptr.rhs.cast17 = ptrtoint i8* %25 to i64
  %sub.ptr.sub18 = sub i64 %sub.ptr.lhs.cast16, %sub.ptr.rhs.cast17
  store i64 %sub.ptr.sub18, i64* %len_so_far, align 8
  %26 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %27 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %u_buff19 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %27, i32 0, i32 7
  call void @_cpp_extend_buff(%struct.cpp_reader* %26, %struct._cpp_buff** %u_buff19, i64 2)
  %28 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %u_buff20 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %28, i32 0, i32 7
  %29 = load %struct._cpp_buff*, %struct._cpp_buff** %u_buff20, align 8
  %cur21 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %29, i32 0, i32 2
  %30 = load i8*, i8** %cur21, align 8
  %31 = load i64, i64* %len_so_far, align 8
  %add.ptr = getelementptr inbounds i8, i8* %30, i64 %31
  store i8* %add.ptr, i8** %dest, align 8
  %32 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %u_buff22 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %32, i32 0, i32 7
  %33 = load %struct._cpp_buff*, %struct._cpp_buff** %u_buff22, align 8
  %limit23 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %33, i32 0, i32 3
  %34 = load i8*, i8** %limit23, align 8
  store i8* %34, i8** %limit, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.13, %do.body.11
  %35 = load i32, i32* %c.addr, align 4
  %conv = trunc i32 %35 to i8
  %36 = load i8*, i8** %dest, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr25, i8** %dest, align 8
  store i8 %conv, i8* %36, align 1
  %37 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur26 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %37, i32 0, i32 0
  %38 = load i8*, i8** %cur26, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr27, i8** %cur26, align 8
  %39 = load i8, i8* %38, align 1
  %conv28 = zext i8 %39 to i32
  store i32 %conv28, i32* %c.addr, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.24
  %40 = load i32, i32* %c.addr, align 4
  %and = and i32 %40, 255
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom
  %41 = load i16, i16* %arrayidx, align 2
  %conv29 = zext i16 %41 to i32
  %and30 = and i32 %conv29, 516
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %lor.end.62, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.cond
  %42 = load i32, i32* %c.addr, align 4
  %cmp32 = icmp eq i32 %42, 46
  br i1 %cmp32, label %lor.end.62, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %43 = load i32, i32* %c.addr, align 4
  %cmp34 = icmp eq i32 %43, 43
  br i1 %cmp34, label %land.rhs, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %lor.rhs
  %44 = load i32, i32* %c.addr, align 4
  %cmp37 = icmp eq i32 %44, 45
  br i1 %cmp37, label %land.rhs, label %land.end.61

land.rhs:                                         ; preds = %lor.lhs.false.36, %lor.rhs
  %45 = load i8*, i8** %dest, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %45, i64 -1
  %46 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %46 to i32
  %cmp41 = icmp eq i32 %conv40, 101
  br i1 %cmp41, label %lor.end, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %land.rhs
  %47 = load i8*, i8** %dest, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %47, i64 -1
  %48 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %48 to i32
  %cmp46 = icmp eq i32 %conv45, 69
  br i1 %cmp46, label %lor.end, label %lor.rhs.48

lor.rhs.48:                                       ; preds = %lor.lhs.false.43
  %49 = load i8*, i8** %dest, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %49, i64 -1
  %50 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %50 to i32
  %cmp51 = icmp eq i32 %conv50, 112
  br i1 %cmp51, label %land.rhs.58, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %lor.rhs.48
  %51 = load i8*, i8** %dest, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %51, i64 -1
  %52 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %52 to i32
  %cmp56 = icmp eq i32 %conv55, 80
  br i1 %cmp56, label %land.rhs.58, label %land.end

land.rhs.58:                                      ; preds = %lor.lhs.false.53, %lor.rhs.48
  %53 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %53, i32 0, i32 37
  %extended_numbers = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 20
  %54 = load i8, i8* %extended_numbers, align 1
  %conv59 = zext i8 %54 to i32
  %tobool60 = icmp ne i32 %conv59, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs.58, %lor.lhs.false.53
  %55 = phi i1 [ false, %lor.lhs.false.53 ], [ %tobool60, %land.rhs.58 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %lor.lhs.false.43, %land.rhs
  %56 = phi i1 [ true, %lor.lhs.false.43 ], [ true, %land.rhs ], [ %55, %land.end ]
  br label %land.end.61

land.end.61:                                      ; preds = %lor.end, %lor.lhs.false.36
  %57 = phi i1 [ false, %lor.lhs.false.36 ], [ %56, %lor.end ]
  br label %lor.end.62

lor.end.62:                                       ; preds = %land.end.61, %lor.lhs.false, %do.cond
  %58 = phi i1 [ true, %lor.lhs.false ], [ true, %do.cond ], [ %57, %land.end.61 ]
  br i1 %58, label %do.body.11, label %do.end

do.end:                                           ; preds = %lor.end.62
  %59 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur63 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %59, i32 0, i32 0
  %60 = load i8*, i8** %cur63, align 8
  %add.ptr64 = getelementptr inbounds i8, i8* %60, i64 -1
  %61 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %backup_to = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %61, i32 0, i32 1
  store i8* %add.ptr64, i8** %backup_to, align 8
  %62 = load i32, i32* %c.addr, align 4
  %cmp65 = icmp ne i32 %62, 63
  br i1 %cmp65, label %land.lhs.true, label %if.end.70

land.lhs.true:                                    ; preds = %do.end
  %63 = load i32, i32* %c.addr, align 4
  %cmp67 = icmp ne i32 %63, 92
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %land.lhs.true
  br label %do.end.116

if.end.70:                                        ; preds = %land.lhs.true, %do.end
  %64 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call i32 @skip_escaped_newlines(%struct.cpp_reader* %64)
  store i32 %call, i32* %c.addr, align 4
  br label %do.cond.71

do.cond.71:                                       ; preds = %if.end.70
  %65 = load i32, i32* %c.addr, align 4
  %and72 = and i32 %65, 255
  %idxprom73 = sext i32 %and72 to i64
  %arrayidx74 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom73
  %66 = load i16, i16* %arrayidx74, align 2
  %conv75 = zext i16 %66 to i32
  %and76 = and i32 %conv75, 516
  %tobool77 = icmp ne i32 %and76, 0
  br i1 %tobool77, label %lor.end.115, label %lor.lhs.false.78

lor.lhs.false.78:                                 ; preds = %do.cond.71
  %67 = load i32, i32* %c.addr, align 4
  %cmp79 = icmp eq i32 %67, 46
  br i1 %cmp79, label %lor.end.115, label %lor.rhs.81

lor.rhs.81:                                       ; preds = %lor.lhs.false.78
  %68 = load i32, i32* %c.addr, align 4
  %cmp82 = icmp eq i32 %68, 43
  br i1 %cmp82, label %land.rhs.87, label %lor.lhs.false.84

lor.lhs.false.84:                                 ; preds = %lor.rhs.81
  %69 = load i32, i32* %c.addr, align 4
  %cmp85 = icmp eq i32 %69, 45
  br i1 %cmp85, label %land.rhs.87, label %land.end.114

land.rhs.87:                                      ; preds = %lor.lhs.false.84, %lor.rhs.81
  %70 = load i8*, i8** %dest, align 8
  %arrayidx88 = getelementptr inbounds i8, i8* %70, i64 -1
  %71 = load i8, i8* %arrayidx88, align 1
  %conv89 = zext i8 %71 to i32
  %cmp90 = icmp eq i32 %conv89, 101
  br i1 %cmp90, label %lor.end.113, label %lor.lhs.false.92

lor.lhs.false.92:                                 ; preds = %land.rhs.87
  %72 = load i8*, i8** %dest, align 8
  %arrayidx93 = getelementptr inbounds i8, i8* %72, i64 -1
  %73 = load i8, i8* %arrayidx93, align 1
  %conv94 = zext i8 %73 to i32
  %cmp95 = icmp eq i32 %conv94, 69
  br i1 %cmp95, label %lor.end.113, label %lor.rhs.97

lor.rhs.97:                                       ; preds = %lor.lhs.false.92
  %74 = load i8*, i8** %dest, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %74, i64 -1
  %75 = load i8, i8* %arrayidx98, align 1
  %conv99 = zext i8 %75 to i32
  %cmp100 = icmp eq i32 %conv99, 112
  br i1 %cmp100, label %land.rhs.107, label %lor.lhs.false.102

lor.lhs.false.102:                                ; preds = %lor.rhs.97
  %76 = load i8*, i8** %dest, align 8
  %arrayidx103 = getelementptr inbounds i8, i8* %76, i64 -1
  %77 = load i8, i8* %arrayidx103, align 1
  %conv104 = zext i8 %77 to i32
  %cmp105 = icmp eq i32 %conv104, 80
  br i1 %cmp105, label %land.rhs.107, label %land.end.112

land.rhs.107:                                     ; preds = %lor.lhs.false.102, %lor.rhs.97
  %78 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts108 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %78, i32 0, i32 37
  %extended_numbers109 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts108, i32 0, i32 20
  %79 = load i8, i8* %extended_numbers109, align 1
  %conv110 = zext i8 %79 to i32
  %tobool111 = icmp ne i32 %conv110, 0
  br label %land.end.112

land.end.112:                                     ; preds = %land.rhs.107, %lor.lhs.false.102
  %80 = phi i1 [ false, %lor.lhs.false.102 ], [ %tobool111, %land.rhs.107 ]
  br label %lor.end.113

lor.end.113:                                      ; preds = %land.end.112, %lor.lhs.false.92, %land.rhs.87
  %81 = phi i1 [ true, %lor.lhs.false.92 ], [ true, %land.rhs.87 ], [ %80, %land.end.112 ]
  br label %land.end.114

land.end.114:                                     ; preds = %lor.end.113, %lor.lhs.false.84
  %82 = phi i1 [ false, %lor.lhs.false.84 ], [ %81, %lor.end.113 ]
  br label %lor.end.115

lor.end.115:                                      ; preds = %land.end.114, %lor.lhs.false.78, %do.cond.71
  %83 = phi i1 [ true, %lor.lhs.false.78 ], [ true, %do.cond.71 ], [ %82, %land.end.114 ]
  br i1 %83, label %do.body, label %do.end.116

do.end.116:                                       ; preds = %lor.end.115, %if.then.69
  br label %do.body.117

do.body.117:                                      ; preds = %do.end.116
  %84 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %backup_to118 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %84, i32 0, i32 1
  %85 = load i8*, i8** %backup_to118, align 8
  %86 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur119 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %86, i32 0, i32 0
  store i8* %85, i8** %cur119, align 8
  br label %do.end.121

do.end.121:                                       ; preds = %do.body.117
  %87 = load i8*, i8** %dest, align 8
  store i8 0, i8* %87, align 1
  %88 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %u_buff122 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %88, i32 0, i32 7
  %89 = load %struct._cpp_buff*, %struct._cpp_buff** %u_buff122, align 8
  %cur123 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %89, i32 0, i32 2
  %90 = load i8*, i8** %cur123, align 8
  %91 = load %struct.cpp_string*, %struct.cpp_string** %number.addr, align 8
  %text = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %91, i32 0, i32 1
  store i8* %90, i8** %text, align 8
  %92 = load i8*, i8** %dest, align 8
  %93 = load %struct.cpp_string*, %struct.cpp_string** %number.addr, align 8
  %text124 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %93, i32 0, i32 1
  %94 = load i8*, i8** %text124, align 8
  %sub.ptr.lhs.cast125 = ptrtoint i8* %92 to i64
  %sub.ptr.rhs.cast126 = ptrtoint i8* %94 to i64
  %sub.ptr.sub127 = sub i64 %sub.ptr.lhs.cast125, %sub.ptr.rhs.cast126
  %conv128 = trunc i64 %sub.ptr.sub127 to i32
  %95 = load %struct.cpp_string*, %struct.cpp_string** %number.addr, align 8
  %len = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %95, i32 0, i32 0
  store i32 %conv128, i32* %len, align 4
  %96 = load i8*, i8** %dest, align 8
  %add.ptr129 = getelementptr inbounds i8, i8* %96, i64 1
  %97 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %u_buff130 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %97, i32 0, i32 7
  %98 = load %struct._cpp_buff*, %struct._cpp_buff** %u_buff130, align 8
  %cur131 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %98, i32 0, i32 2
  store i8* %add.ptr129, i8** %cur131, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @get_effective_char(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %next = alloca i32, align 4
  %buffer = alloca %struct.cpp_buffer*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 0
  %1 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8
  store %struct.cpp_buffer* %1, %struct.cpp_buffer** %buffer, align 8
  %2 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %2, i32 0, i32 0
  %3 = load i8*, i8** %cur, align 8
  %4 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %backup_to = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %4, i32 0, i32 1
  store i8* %3, i8** %backup_to, align 8
  %5 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur2 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %5, i32 0, i32 0
  %6 = load i8*, i8** %cur2, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %cur2, align 8
  %7 = load i8, i8* %6, align 1
  %conv = zext i8 %7 to i32
  store i32 %conv, i32* %next, align 4
  %8 = load i32, i32* %next, align 4
  %cmp = icmp eq i32 %8, 63
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %9 = load i32, i32* %next, align 4
  %cmp4 = icmp eq i32 %9, 92
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %10 = phi i1 [ true, %entry ], [ %cmp4, %lor.rhs ]
  %lor.ext = zext i1 %10 to i32
  %conv6 = sext i32 %lor.ext to i64
  %tobool = icmp ne i64 %conv6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  %11 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call i32 @skip_escaped_newlines(%struct.cpp_reader* %11)
  store i32 %call, i32* %next, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.end
  %12 = load i32, i32* %next, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal void @parse_string(%struct.cpp_reader* %pfile, %struct.cpp_token* %token, i32 %terminator) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %token.addr = alloca %struct.cpp_token*, align 8
  %terminator.addr = alloca i32, align 4
  %buffer = alloca %struct.cpp_buffer*, align 8
  %dest = alloca i8*, align 8
  %limit = alloca i8*, align 8
  %c = alloca i32, align 4
  %warned_nulls = alloca i8, align 1
  %warned_multi = alloca i8, align 1
  %len_so_far = alloca i64, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.cpp_token* %token, %struct.cpp_token** %token.addr, align 8
  store i32 %terminator, i32* %terminator.addr, align 4
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 0
  %1 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8
  store %struct.cpp_buffer* %1, %struct.cpp_buffer** %buffer, align 8
  store i8 0, i8* %warned_nulls, align 1
  store i8 0, i8* %warned_multi, align 1
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %u_buff = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %2, i32 0, i32 7
  %3 = load %struct._cpp_buff*, %struct._cpp_buff** %u_buff, align 8
  %cur = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %3, i32 0, i32 2
  %4 = load i8*, i8** %cur, align 8
  store i8* %4, i8** %dest, align 8
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %u_buff2 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %5, i32 0, i32 7
  %6 = load %struct._cpp_buff*, %struct._cpp_buff** %u_buff2, align 8
  %limit3 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %6, i32 0, i32 3
  %7 = load i8*, i8** %limit3, align 8
  store i8* %7, i8** %limit, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.74, %entry
  %8 = load i8*, i8** %limit, align 8
  %9 = load i8*, i8** %dest, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp ult i64 %sub.ptr.sub, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  %10 = load i8*, i8** %dest, align 8
  %11 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %u_buff4 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %11, i32 0, i32 7
  %12 = load %struct._cpp_buff*, %struct._cpp_buff** %u_buff4, align 8
  %cur5 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %12, i32 0, i32 2
  %13 = load i8*, i8** %cur5, align 8
  %sub.ptr.lhs.cast6 = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast7 = ptrtoint i8* %13 to i64
  %sub.ptr.sub8 = sub i64 %sub.ptr.lhs.cast6, %sub.ptr.rhs.cast7
  store i64 %sub.ptr.sub8, i64* %len_so_far, align 8
  %14 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %15 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %u_buff9 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %15, i32 0, i32 7
  call void @_cpp_extend_buff(%struct.cpp_reader* %14, %struct._cpp_buff** %u_buff9, i64 2)
  %16 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %u_buff10 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %16, i32 0, i32 7
  %17 = load %struct._cpp_buff*, %struct._cpp_buff** %u_buff10, align 8
  %cur11 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %17, i32 0, i32 2
  %18 = load i8*, i8** %cur11, align 8
  %19 = load i64, i64* %len_so_far, align 8
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %add.ptr, i8** %dest, align 8
  %20 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %u_buff12 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %20, i32 0, i32 7
  %21 = load %struct._cpp_buff*, %struct._cpp_buff** %u_buff12, align 8
  %limit13 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %21, i32 0, i32 3
  %22 = load i8*, i8** %limit13, align 8
  store i8* %22, i8** %limit, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.cond
  %23 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur14 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %23, i32 0, i32 0
  %24 = load i8*, i8** %cur14, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %cur14, align 8
  %25 = load i8, i8* %24, align 1
  %conv = zext i8 %25 to i32
  store i32 %conv, i32* %c, align 4
  %26 = load i32, i32* %c, align 4
  %cmp15 = icmp eq i32 %26, 63
  br i1 %cmp15, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %27 = load i32, i32* %c, align 4
  %cmp17 = icmp eq i32 %27, 92
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %lor.lhs.false, %if.end
  %28 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call i32 @skip_escaped_newlines(%struct.cpp_reader* %28)
  store i32 %call, i32* %c, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %lor.lhs.false
  %29 = load i32, i32* %c, align 4
  %30 = load i32, i32* %terminator.addr, align 4
  %cmp21 = icmp eq i32 %29, %30
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end.20
  %31 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %32 = load i8*, i8** %dest, align 8
  %call24 = call i32 @unescaped_terminator_p(%struct.cpp_reader* %31, i8* %32)
  %tobool = icmp ne i32 %call24, 0
  br i1 %tobool, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.23
  br label %for.end

if.end.26:                                        ; preds = %if.then.23
  br label %if.end.74

if.else:                                          ; preds = %if.end.20
  %33 = load i32, i32* %c, align 4
  %and = and i32 %33, 255
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom
  %34 = load i16, i16* %arrayidx, align 2
  %conv27 = zext i16 %34 to i32
  %and28 = and i32 %conv27, 1024
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %if.then.30, label %if.else.57

if.then.30:                                       ; preds = %if.else
  %35 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %35, i32 0, i32 37
  %lang = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 11
  %36 = load i32, i32* %lang, align 4
  %cmp31 = icmp eq i32 %36, 9
  br i1 %cmp31, label %land.lhs.true, label %if.end.38

land.lhs.true:                                    ; preds = %if.then.30
  %37 = load i32, i32* %terminator.addr, align 4
  %cmp33 = icmp ne i32 %37, 62
  br i1 %cmp33, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %land.lhs.true
  %38 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur36 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %38, i32 0, i32 0
  %39 = load i8*, i8** %cur36, align 8
  %incdec.ptr37 = getelementptr inbounds i8, i8* %39, i32 -1
  store i8* %incdec.ptr37, i8** %cur36, align 8
  br label %for.end

if.end.38:                                        ; preds = %land.lhs.true, %if.then.30
  %40 = load i32, i32* %terminator.addr, align 4
  %cmp39 = icmp ne i32 %40, 34
  br i1 %cmp39, label %if.then.44, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %if.end.38
  %41 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %41, i32 0, i32 1
  %angled_headers = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state, i32 0, i32 2
  %42 = load i8, i8* %angled_headers, align 1
  %conv42 = zext i8 %42 to i32
  %tobool43 = icmp ne i32 %conv42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %lor.lhs.false.41, %if.end.38
  %43 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %44 = load i32, i32* %terminator.addr, align 4
  call void @unterminated(%struct.cpp_reader* %43, i32 %44)
  %45 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur45 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %45, i32 0, i32 0
  %46 = load i8*, i8** %cur45, align 8
  %incdec.ptr46 = getelementptr inbounds i8, i8* %46, i32 -1
  store i8* %incdec.ptr46, i8** %cur45, align 8
  br label %for.end

if.end.47:                                        ; preds = %lor.lhs.false.41
  %47 = load i8, i8* %warned_multi, align 1
  %tobool48 = trunc i8 %47 to i1
  br i1 %tobool48, label %if.end.50, label %if.then.49

if.then.49:                                       ; preds = %if.end.47
  store i8 1, i8* %warned_multi, align 1
  %48 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_pedwarn(%struct.cpp_reader* %48, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.28, i32 0, i32 0))
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %if.end.47
  %49 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %mls_line = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %49, i32 0, i32 21
  %50 = load i32, i32* %mls_line, align 4
  %cmp51 = icmp eq i32 %50, 0
  br i1 %cmp51, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %if.end.50
  %51 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %line = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %51, i32 0, i32 0
  %52 = load i32, i32* %line, align 4
  %53 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %mls_line54 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %53, i32 0, i32 21
  store i32 %52, i32* %mls_line54, align 4
  %54 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %col = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %54, i32 0, i32 1
  %55 = load i16, i16* %col, align 2
  %conv55 = zext i16 %55 to i32
  %56 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %mls_col = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %56, i32 0, i32 22
  store i32 %conv55, i32* %mls_col, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.53, %if.end.50
  %57 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @handle_newline(%struct.cpp_reader* %57)
  store i32 10, i32* %c, align 4
  br label %if.end.73

if.else.57:                                       ; preds = %if.else
  %58 = load i32, i32* %c, align 4
  %cmp58 = icmp eq i32 %58, 0
  br i1 %cmp58, label %if.then.60, label %if.end.72

if.then.60:                                       ; preds = %if.else.57
  %59 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur61 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %59, i32 0, i32 0
  %60 = load i8*, i8** %cur61, align 8
  %add.ptr62 = getelementptr inbounds i8, i8* %60, i64 -1
  %61 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %rlimit = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %61, i32 0, i32 2
  %62 = load i8*, i8** %rlimit, align 8
  %cmp63 = icmp eq i8* %add.ptr62, %62
  br i1 %cmp63, label %if.then.65, label %if.end.68

if.then.65:                                       ; preds = %if.then.60
  %63 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %64 = load i32, i32* %terminator.addr, align 4
  call void @unterminated(%struct.cpp_reader* %63, i32 %64)
  %65 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur66 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %65, i32 0, i32 0
  %66 = load i8*, i8** %cur66, align 8
  %incdec.ptr67 = getelementptr inbounds i8, i8* %66, i32 -1
  store i8* %incdec.ptr67, i8** %cur66, align 8
  br label %for.end

if.end.68:                                        ; preds = %if.then.60
  %67 = load i8, i8* %warned_nulls, align 1
  %tobool69 = trunc i8 %67 to i1
  br i1 %tobool69, label %if.end.71, label %if.then.70

if.then.70:                                       ; preds = %if.end.68
  store i8 1, i8* %warned_nulls, align 1
  %68 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_warning(%struct.cpp_reader* %68, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %if.end.68
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.else.57
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.end.56
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.end.26
  %69 = load i32, i32* %c, align 4
  %conv75 = trunc i32 %69 to i8
  %70 = load i8*, i8** %dest, align 8
  %incdec.ptr76 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr76, i8** %dest, align 8
  store i8 %conv75, i8* %70, align 1
  br label %for.cond

for.end:                                          ; preds = %if.then.65, %if.then.44, %if.then.35, %if.then.25
  %71 = load i8*, i8** %dest, align 8
  store i8 0, i8* %71, align 1
  %72 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %u_buff77 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %72, i32 0, i32 7
  %73 = load %struct._cpp_buff*, %struct._cpp_buff** %u_buff77, align 8
  %cur78 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %73, i32 0, i32 2
  %74 = load i8*, i8** %cur78, align 8
  %75 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %75, i32 0, i32 4
  %str = bitcast %union.anon* %val to %struct.cpp_string*
  %text = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str, i32 0, i32 1
  store i8* %74, i8** %text, align 8
  %76 = load i8*, i8** %dest, align 8
  %77 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %u_buff79 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %77, i32 0, i32 7
  %78 = load %struct._cpp_buff*, %struct._cpp_buff** %u_buff79, align 8
  %cur80 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %78, i32 0, i32 2
  %79 = load i8*, i8** %cur80, align 8
  %sub.ptr.lhs.cast81 = ptrtoint i8* %76 to i64
  %sub.ptr.rhs.cast82 = ptrtoint i8* %79 to i64
  %sub.ptr.sub83 = sub i64 %sub.ptr.lhs.cast81, %sub.ptr.rhs.cast82
  %conv84 = trunc i64 %sub.ptr.sub83 to i32
  %80 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %val85 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %80, i32 0, i32 4
  %str86 = bitcast %union.anon* %val85 to %struct.cpp_string*
  %len = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str86, i32 0, i32 0
  store i32 %conv84, i32* %len, align 4
  %81 = load i8*, i8** %dest, align 8
  %add.ptr87 = getelementptr inbounds i8, i8* %81, i64 1
  %82 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %u_buff88 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %82, i32 0, i32 7
  %83 = load %struct._cpp_buff*, %struct._cpp_buff** %u_buff88, align 8
  %cur89 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %83, i32 0, i32 2
  store i8* %add.ptr87, i8** %cur89, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.cpp_hashnode* @parse_identifier(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %result = alloca %struct.cpp_hashnode*, align 8
  %cur = alloca i8*, align 8
  %base = alloca i8*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 0
  %1 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur1 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %1, i32 0, i32 0
  %2 = load i8*, i8** %cur1, align 8
  store i8* %2, i8** %cur, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i8*, i8** %cur, align 8
  %4 = load i8, i8* %3, align 1
  %conv = zext i8 %4 to i32
  %and = and i32 %conv, 255
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom
  %5 = load i16, i16* %arrayidx, align 2
  %conv2 = zext i16 %5 to i32
  %and3 = and i32 %conv2, 516
  %tobool = icmp ne i32 %and3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %cur, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %cur, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load i8*, i8** %cur, align 8
  %8 = load i8, i8* %7, align 1
  %conv4 = zext i8 %8 to i32
  %cmp = icmp eq i32 %conv4, 63
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %9 = load i8*, i8** %cur, align 8
  %10 = load i8, i8* %9, align 1
  %conv6 = zext i8 %10 to i32
  %cmp7 = icmp eq i32 %conv6, 92
  br i1 %cmp7, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %11 = load i8*, i8** %cur, align 8
  %12 = load i8, i8* %11, align 1
  %conv10 = zext i8 %12 to i32
  %cmp11 = icmp eq i32 %conv10, 36
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.9, %lor.lhs.false, %while.end
  %13 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %14 = load i8*, i8** %cur, align 8
  %call = call %struct.cpp_hashnode* @parse_identifier_slow(%struct.cpp_reader* %13, i8* %14)
  store %struct.cpp_hashnode* %call, %struct.cpp_hashnode** %result, align 8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.9
  %15 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer13 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %15, i32 0, i32 0
  %16 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer13, align 8
  %cur14 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %16, i32 0, i32 0
  %17 = load i8*, i8** %cur14, align 8
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 -1
  store i8* %add.ptr, i8** %base, align 8
  %18 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %hash_table = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %18, i32 0, i32 36
  %19 = load %struct.ht*, %struct.ht** %hash_table, align 8
  %20 = load i8*, i8** %base, align 8
  %21 = load i8*, i8** %cur, align 8
  %22 = load i8*, i8** %base, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv15 = trunc i64 %sub.ptr.sub to i32
  %call16 = call %struct.ht_identifier* @ht_lookup(%struct.ht* %19, i8* %20, i32 %conv15, i32 1)
  %23 = bitcast %struct.ht_identifier* %call16 to %struct.cpp_hashnode*
  store %struct.cpp_hashnode* %23, %struct.cpp_hashnode** %result, align 8
  %24 = load i8*, i8** %cur, align 8
  %25 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer17 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %25, i32 0, i32 0
  %26 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer17, align 8
  %cur18 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %26, i32 0, i32 0
  store i8* %24, i8** %cur18, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %27 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %result, align 8
  %flags = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %27, i32 0, i32 5
  %28 = load i8, i8* %flags, align 1
  %conv19 = zext i8 %28 to i32
  %and20 = and i32 %conv19, 8
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %29 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %29, i32 0, i32 1
  %skipping = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state, i32 0, i32 1
  %30 = load i8, i8* %skipping, align 1
  %tobool22 = icmp ne i8 %30, 0
  %lnot = xor i1 %tobool22, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %31 = phi i1 [ false, %if.end ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %31 to i32
  %conv23 = sext i32 %land.ext to i64
  %tobool24 = icmp ne i64 %conv23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.41

if.then.25:                                       ; preds = %land.end
  %32 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %result, align 8
  %flags26 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %32, i32 0, i32 5
  %33 = load i8, i8* %flags26, align 1
  %conv27 = zext i8 %33 to i32
  %and28 = and i32 %conv27, 2
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %land.lhs.true, label %if.end.33

land.lhs.true:                                    ; preds = %if.then.25
  %34 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state30 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %34, i32 0, i32 1
  %poisoned_ok = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state30, i32 0, i32 6
  %35 = load i8, i8* %poisoned_ok, align 1
  %tobool31 = icmp ne i8 %35, 0
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %land.lhs.true
  %36 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %37 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %result, align 8
  %ident = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %37, i32 0, i32 0
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident, i32 0, i32 1
  %38 = load i8*, i8** %str, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.32, i32 0, i32 0), i8* %38)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %land.lhs.true, %if.then.25
  %39 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %result, align 8
  %40 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %spec_nodes = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %40, i32 0, i32 38
  %n__VA_ARGS__ = getelementptr inbounds %struct.spec_nodes, %struct.spec_nodes* %spec_nodes, i32 0, i32 4
  %41 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %n__VA_ARGS__, align 8
  %cmp34 = icmp eq %struct.cpp_hashnode* %39, %41
  br i1 %cmp34, label %land.lhs.true.36, label %if.end.40

land.lhs.true.36:                                 ; preds = %if.end.33
  %42 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state37 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %42, i32 0, i32 1
  %va_args_ok = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state37, i32 0, i32 5
  %43 = load i8, i8* %va_args_ok, align 1
  %tobool38 = icmp ne i8 %43, 0
  br i1 %tobool38, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %land.lhs.true.36
  %44 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_pedwarn(%struct.cpp_reader* %44, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %land.lhs.true.36, %if.end.33
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %land.end
  %45 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %result, align 8
  ret %struct.cpp_hashnode* %45
}

; Function Attrs: nounwind uwtable
define internal i32 @skip_block_comment(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %buffer = alloca %struct.cpp_buffer*, align 8
  %c = alloca i32, align 4
  %prevc = alloca i32, align 4
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 0
  %1 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8
  store %struct.cpp_buffer* %1, %struct.cpp_buffer** %buffer, align 8
  store i32 -1, i32* %c, align 4
  store i32 -1, i32* %prevc, align 4
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %2, i32 0, i32 1
  %lexing_comment = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state, i32 0, i32 4
  store i8 1, i8* %lexing_comment, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end.41, %entry
  %3 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %3, i32 0, i32 0
  %4 = load i8*, i8** %cur, align 8
  %5 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %rlimit = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %5, i32 0, i32 2
  %6 = load i8*, i8** %rlimit, align 8
  %cmp = icmp ne i8* %4, %6
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* %c, align 4
  store i32 %7, i32* %prevc, align 4
  %8 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur2 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %8, i32 0, i32 0
  %9 = load i8*, i8** %cur2, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %cur2, align 8
  %10 = load i8, i8* %9, align 1
  %conv = zext i8 %10 to i32
  store i32 %conv, i32* %c, align 4
  %11 = load i32, i32* %c, align 4
  %cmp3 = icmp eq i32 %11, 63
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %12 = load i32, i32* %c, align 4
  %cmp5 = icmp eq i32 %12, 92
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %13 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call i32 @skip_escaped_newlines(%struct.cpp_reader* %13)
  store i32 %call, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %14 = load i32, i32* %c, align 4
  %cmp7 = icmp eq i32 %14, 47
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  %15 = load i32, i32* %prevc, align 4
  %cmp10 = icmp eq i32 %15, 42
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.9
  br label %while.end

if.end.13:                                        ; preds = %if.then.9
  %16 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %16, i32 0, i32 37
  %warn_comments = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 30
  %17 = load i8, i8* %warn_comments, align 1
  %conv14 = zext i8 %17 to i32
  %tobool = icmp ne i32 %conv14, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %if.end.13
  %18 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur15 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %18, i32 0, i32 0
  %19 = load i8*, i8** %cur15, align 8
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 0
  %20 = load i8, i8* %arrayidx, align 1
  %conv16 = zext i8 %20 to i32
  %cmp17 = icmp eq i32 %conv16, 42
  br i1 %cmp17, label %land.lhs.true.19, label %if.end.29

land.lhs.true.19:                                 ; preds = %land.lhs.true
  %21 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur20 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %21, i32 0, i32 0
  %22 = load i8*, i8** %cur20, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %23 to i32
  %cmp23 = icmp ne i32 %conv22, 47
  br i1 %cmp23, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %land.lhs.true.19
  %24 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %25 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %line = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %25, i32 0, i32 4
  %26 = load i32, i32* %line, align 4
  %27 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur26 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %27, i32 0, i32 0
  %28 = load i8*, i8** %cur26, align 8
  %29 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %line_base = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %29, i32 0, i32 3
  %30 = load i8*, i8** %line_base, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %28 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %30 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %31 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %col_adjust = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %31, i32 0, i32 8
  %32 = load i32, i32* %col_adjust, align 4
  %conv27 = zext i32 %32 to i64
  %add = add nsw i64 %sub.ptr.sub, %conv27
  %conv28 = trunc i64 %add to i32
  call void (%struct.cpp_reader*, i32, i32, i8*, ...) @cpp_warning_with_line(%struct.cpp_reader* %24, i32 %26, i32 %conv28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.25, %land.lhs.true.19, %land.lhs.true, %if.end.13
  br label %if.end.41

if.else:                                          ; preds = %if.end
  %33 = load i32, i32* %c, align 4
  %and = and i32 %33, 255
  %idxprom = sext i32 %and to i64
  %arrayidx30 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom
  %34 = load i16, i16* %arrayidx30, align 2
  %conv31 = zext i16 %34 to i32
  %and32 = and i32 %conv31, 1024
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %if.else
  %35 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @handle_newline(%struct.cpp_reader* %35)
  br label %if.end.40

if.else.35:                                       ; preds = %if.else
  %36 = load i32, i32* %c, align 4
  %cmp36 = icmp eq i32 %36, 9
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.else.35
  %37 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @adjust_column(%struct.cpp_reader* %37)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.else.35
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.34
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end.29
  br label %while.cond

while.end:                                        ; preds = %if.then.12, %while.cond
  %38 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state42 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %38, i32 0, i32 1
  %lexing_comment43 = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state42, i32 0, i32 4
  store i8 0, i8* %lexing_comment43, align 1
  %39 = load i32, i32* %c, align 4
  %cmp44 = icmp ne i32 %39, 47
  br i1 %cmp44, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.end
  %40 = load i32, i32* %prevc, align 4
  %cmp46 = icmp ne i32 %40, 42
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.end
  %41 = phi i1 [ true, %while.end ], [ %cmp46, %lor.rhs ]
  %lor.ext = zext i1 %41 to i32
  ret i32 %lor.ext
}

declare void @cpp_error(%struct.cpp_reader*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @skip_line_comment(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %buffer = alloca %struct.cpp_buffer*, align 8
  %orig_line = alloca i32, align 4
  %c = alloca i32, align 4
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 0
  %1 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8
  store %struct.cpp_buffer* %1, %struct.cpp_buffer** %buffer, align 8
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %line = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %2, i32 0, i32 4
  %3 = load i32, i32* %line, align 4
  store i32 %3, i32* %orig_line, align 4
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %4, i32 0, i32 1
  %lexing_comment = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state, i32 0, i32 4
  store i8 1, i8* %lexing_comment, align 1
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %5 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %5, i32 0, i32 0
  %6 = load i8*, i8** %cur, align 8
  %7 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %rlimit = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %7, i32 0, i32 2
  %8 = load i8*, i8** %rlimit, align 8
  %cmp = icmp eq i8* %6, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %at_eof

if.end:                                           ; preds = %do.body
  %9 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur2 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %9, i32 0, i32 0
  %10 = load i8*, i8** %cur2, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %cur2, align 8
  %11 = load i8, i8* %10, align 1
  %conv = zext i8 %11 to i32
  store i32 %conv, i32* %c, align 4
  %12 = load i32, i32* %c, align 4
  %cmp3 = icmp eq i32 %12, 63
  br i1 %cmp3, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %13 = load i32, i32* %c, align 4
  %cmp5 = icmp eq i32 %13, 92
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %lor.lhs.false, %if.end
  %14 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call i32 @skip_escaped_newlines(%struct.cpp_reader* %14)
  store i32 %call, i32* %c, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %lor.lhs.false
  br label %do.cond

do.cond:                                          ; preds = %if.end.8
  %15 = load i32, i32* %c, align 4
  %and = and i32 %15, 255
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom
  %16 = load i16, i16* %arrayidx, align 2
  %conv9 = zext i16 %16 to i32
  %and10 = and i32 %conv9, 1024
  %tobool = icmp ne i32 %and10, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %17 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur11 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %17, i32 0, i32 0
  %18 = load i8*, i8** %cur11, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %18, i32 -1
  store i8* %incdec.ptr12, i8** %cur11, align 8
  br label %at_eof

at_eof:                                           ; preds = %do.end, %if.then
  %19 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state13 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %19, i32 0, i32 1
  %lexing_comment14 = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state13, i32 0, i32 4
  store i8 0, i8* %lexing_comment14, align 1
  %20 = load i32, i32* %orig_line, align 4
  %21 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %line15 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %21, i32 0, i32 4
  %22 = load i32, i32* %line15, align 4
  %cmp16 = icmp ne i32 %20, %22
  %conv17 = zext i1 %cmp16 to i32
  ret i32 %conv17
}

declare void @cpp_warning(%struct.cpp_reader*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @save_comment(%struct.cpp_reader* %pfile, %struct.cpp_token* %token, i8* %from) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %token.addr = alloca %struct.cpp_token*, align 8
  %from.addr = alloca i8*, align 8
  %buffer = alloca i8*, align 8
  %len = alloca i32, align 4
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.cpp_token* %token, %struct.cpp_token** %token.addr, align 8
  store i8* %from, i8** %from.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 0
  %1 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8
  %cur = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %1, i32 0, i32 0
  %2 = load i8*, i8** %cur, align 8
  %3 = load i8*, i8** %from.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %len, align 4
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer2 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %4, i32 0, i32 0
  %5 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer2, align 8
  %cur3 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %5, i32 0, i32 0
  %6 = load i8*, i8** %cur3, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 -1
  %7 = load i8, i8* %arrayidx, align 1
  %conv4 = zext i8 %7 to i32
  %and = and i32 %conv4, 255
  %idxprom = sext i32 %and to i64
  %arrayidx5 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom
  %8 = load i16, i16* %arrayidx5, align 2
  %conv6 = zext i16 %8 to i32
  %and7 = and i32 %conv6, 1024
  %tobool = icmp ne i32 %and7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %len, align 4
  %dec = add i32 %9, -1
  store i32 %dec, i32* %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %11 = load i32, i32* %len, align 4
  %conv8 = zext i32 %11 to i64
  %call = call i8* @_cpp_unaligned_alloc(%struct.cpp_reader* %10, i64 %conv8)
  store i8* %call, i8** %buffer, align 8
  %12 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %12, i32 0, i32 2
  store i8 64, i8* %type, align 2
  %13 = load i32, i32* %len, align 4
  %14 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %14, i32 0, i32 4
  %str = bitcast %union.anon* %val to %struct.cpp_string*
  %len9 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str, i32 0, i32 0
  store i32 %13, i32* %len9, align 4
  %15 = load i8*, i8** %buffer, align 8
  %16 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %val10 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %16, i32 0, i32 4
  %str11 = bitcast %union.anon* %val10 to %struct.cpp_string*
  %text = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str11, i32 0, i32 1
  store i8* %15, i8** %text, align 8
  %17 = load i8*, i8** %buffer, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 47, i8* %arrayidx12, align 1
  %18 = load i8*, i8** %buffer, align 8
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 1
  %19 = load i8*, i8** %from.addr, align 8
  %20 = load i32, i32* %len, align 4
  %sub = sub i32 %20, 1
  %conv13 = zext i32 %sub to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %19, i64 %conv13, i32 1, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @cpp_token_len(%struct.cpp_token* %token) #0 {
entry:
  %token.addr = alloca %struct.cpp_token*, align 8
  %len = alloca i32, align 4
  store %struct.cpp_token* %token, %struct.cpp_token** %token.addr, align 8
  %0 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %0, i32 0, i32 2
  %bf.load = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load to i32
  %idxprom = zext i32 %bf.cast to i64
  %arrayidx = getelementptr inbounds [68 x %struct.token_spelling], [68 x %struct.token_spelling]* @token_spellings, i32 0, i64 %idxprom
  %category = getelementptr inbounds %struct.token_spelling, %struct.token_spelling* %arrayidx, i32 0, i32 0
  %1 = load i32, i32* %category, align 4
  switch i32 %1, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 2, label %sw.bb.2
  ]

sw.default:                                       ; preds = %entry
  store i32 0, i32* %len, align 4
  br label %sw.epilog

sw.bb:                                            ; preds = %entry, %entry
  %2 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %2, i32 0, i32 4
  %str = bitcast %union.anon* %val to %struct.cpp_string*
  %len1 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str, i32 0, i32 0
  %3 = load i32, i32* %len1, align 4
  store i32 %3, i32* %len, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %4 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %val3 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %4, i32 0, i32 4
  %node = bitcast %union.anon* %val3 to %struct.cpp_hashnode**
  %5 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %ident = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %5, i32 0, i32 0
  %len4 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident, i32 0, i32 0
  %6 = load i32, i32* %len4, align 4
  store i32 %6, i32* %len, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.2, %sw.bb, %sw.default
  %7 = load i32, i32* %len, align 4
  %add = add i32 %7, 5
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define i8* @cpp_spell_token(%struct.cpp_reader* %pfile, %struct.cpp_token* %token, i8* %buffer) #0 {
entry:
  %retval = alloca i8*, align 8
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %token.addr = alloca %struct.cpp_token*, align 8
  %buffer.addr = alloca i8*, align 8
  %spelling = alloca i8*, align 8
  %c = alloca i8, align 1
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %tag = alloca i32, align 4
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.cpp_token* %token, %struct.cpp_token** %token.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  %0 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %0, i32 0, i32 2
  %bf.load = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load to i32
  %idxprom = zext i32 %bf.cast to i64
  %arrayidx = getelementptr inbounds [68 x %struct.token_spelling], [68 x %struct.token_spelling]* @token_spellings, i32 0, i64 %idxprom
  %category = getelementptr inbounds %struct.token_spelling, %struct.token_spelling* %arrayidx, i32 0, i32 0
  %1 = load i32, i32* %category, align 4
  switch i32 %1, label %sw.epilog.89 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.21
    i32 2, label %sw.bb.24
    i32 3, label %sw.bb.34
    i32 4, label %sw.bb.46
    i32 5, label %sw.bb.82
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %2, i32 0, i32 3
  %3 = load i8, i8* %flags, align 1
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %4 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %4, i32 0, i32 2
  %bf.load2 = load i8, i8* %type1, align 2
  %bf.cast3 = zext i8 %bf.load2 to i32
  %sub = sub nsw i32 %bf.cast3, 40
  %idxprom4 = sext i32 %sub to i64
  %arrayidx5 = getelementptr inbounds [6 x i8*], [6 x i8*]* @digraph_spellings, i32 0, i64 %idxprom4
  %5 = load i8*, i8** %arrayidx5, align 8
  store i8* %5, i8** %spelling, align 8
  br label %if.end.17

if.else:                                          ; preds = %sw.bb
  %6 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %flags6 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %6, i32 0, i32 3
  %7 = load i8, i8* %flags6, align 1
  %conv7 = zext i8 %7 to i32
  %and8 = and i32 %conv7, 16
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.else
  br label %spell_ident

if.else.11:                                       ; preds = %if.else
  %8 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %type12 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %8, i32 0, i32 2
  %bf.load13 = load i8, i8* %type12, align 2
  %bf.cast14 = zext i8 %bf.load13 to i32
  %idxprom15 = zext i32 %bf.cast14 to i64
  %arrayidx16 = getelementptr inbounds [68 x %struct.token_spelling], [68 x %struct.token_spelling]* @token_spellings, i32 0, i64 %idxprom15
  %name = getelementptr inbounds %struct.token_spelling, %struct.token_spelling* %arrayidx16, i32 0, i32 1
  %9 = load i8*, i8** %name, align 8
  store i8* %9, i8** %spelling, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.11
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.17
  %10 = load i8*, i8** %spelling, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %spelling, align 8
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %c, align 1
  %conv18 = zext i8 %11 to i32
  %cmp = icmp ne i32 %conv18, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i8, i8* %c, align 1
  %13 = load i8*, i8** %buffer.addr, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr20, i8** %buffer.addr, align 8
  store i8 %12, i8* %13, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %sw.epilog.89

sw.bb.21:                                         ; preds = %entry
  %14 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %14, i32 0, i32 4
  %c22 = bitcast %union.anon* %val to i8*
  %15 = load i8, i8* %c22, align 1
  %16 = load i8*, i8** %buffer.addr, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr23, i8** %buffer.addr, align 8
  store i8 %15, i8* %16, align 1
  br label %sw.epilog.89

spell_ident:                                      ; preds = %if.then.10
  br label %sw.bb.24

sw.bb.24:                                         ; preds = %entry, %spell_ident
  %17 = load i8*, i8** %buffer.addr, align 8
  %18 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %val25 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %18, i32 0, i32 4
  %node = bitcast %union.anon* %val25 to %struct.cpp_hashnode**
  %19 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %ident = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %19, i32 0, i32 0
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident, i32 0, i32 1
  %20 = load i8*, i8** %str, align 8
  %21 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %val26 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %21, i32 0, i32 4
  %node27 = bitcast %union.anon* %val26 to %struct.cpp_hashnode**
  %22 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node27, align 8
  %ident28 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %22, i32 0, i32 0
  %len = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident28, i32 0, i32 0
  %23 = load i32, i32* %len, align 4
  %conv29 = zext i32 %23 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %20, i64 %conv29, i32 1, i1 false)
  %24 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %val30 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %24, i32 0, i32 4
  %node31 = bitcast %union.anon* %val30 to %struct.cpp_hashnode**
  %25 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node31, align 8
  %ident32 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %25, i32 0, i32 0
  %len33 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident32, i32 0, i32 0
  %26 = load i32, i32* %len33, align 4
  %27 = load i8*, i8** %buffer.addr, align 8
  %idx.ext = zext i32 %26 to i64
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %idx.ext
  store i8* %add.ptr, i8** %buffer.addr, align 8
  br label %sw.epilog.89

sw.bb.34:                                         ; preds = %entry
  %28 = load i8*, i8** %buffer.addr, align 8
  %29 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %val35 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %29, i32 0, i32 4
  %str36 = bitcast %union.anon* %val35 to %struct.cpp_string*
  %text = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str36, i32 0, i32 1
  %30 = load i8*, i8** %text, align 8
  %31 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %val37 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %31, i32 0, i32 4
  %str38 = bitcast %union.anon* %val37 to %struct.cpp_string*
  %len39 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str38, i32 0, i32 0
  %32 = load i32, i32* %len39, align 4
  %conv40 = zext i32 %32 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %30, i64 %conv40, i32 1, i1 false)
  %33 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %val41 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %33, i32 0, i32 4
  %str42 = bitcast %union.anon* %val41 to %struct.cpp_string*
  %len43 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str42, i32 0, i32 0
  %34 = load i32, i32* %len43, align 4
  %35 = load i8*, i8** %buffer.addr, align 8
  %idx.ext44 = zext i32 %34 to i64
  %add.ptr45 = getelementptr inbounds i8, i8* %35, i64 %idx.ext44
  store i8* %add.ptr45, i8** %buffer.addr, align 8
  br label %sw.epilog.89

sw.bb.46:                                         ; preds = %entry
  %36 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %type47 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %36, i32 0, i32 2
  %bf.load48 = load i8, i8* %type47, align 2
  %bf.cast49 = zext i8 %bf.load48 to i32
  switch i32 %bf.cast49, label %sw.default [
    i32 61, label %sw.bb.50
    i32 62, label %sw.bb.51
    i32 58, label %sw.bb.52
    i32 59, label %sw.bb.53
    i32 63, label %sw.bb.54
  ]

sw.bb.50:                                         ; preds = %sw.bb.46
  store i32 34, i32* %left, align 4
  store i32 34, i32* %right, align 4
  store i32 0, i32* %tag, align 4
  br label %sw.epilog

sw.bb.51:                                         ; preds = %sw.bb.46
  store i32 34, i32* %left, align 4
  store i32 34, i32* %right, align 4
  store i32 76, i32* %tag, align 4
  br label %sw.epilog

sw.bb.52:                                         ; preds = %sw.bb.46
  store i32 39, i32* %left, align 4
  store i32 39, i32* %right, align 4
  store i32 0, i32* %tag, align 4
  br label %sw.epilog

sw.bb.53:                                         ; preds = %sw.bb.46
  store i32 39, i32* %left, align 4
  store i32 39, i32* %right, align 4
  store i32 76, i32* %tag, align 4
  br label %sw.epilog

sw.bb.54:                                         ; preds = %sw.bb.46
  store i32 60, i32* %left, align 4
  store i32 62, i32* %right, align 4
  store i32 0, i32* %tag, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.46
  %37 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %38 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %type55 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %38, i32 0, i32 2
  %bf.load56 = load i8, i8* %type55, align 2
  %bf.cast57 = zext i8 %bf.load56 to i32
  %idxprom58 = zext i32 %bf.cast57 to i64
  %arrayidx59 = getelementptr inbounds [68 x %struct.token_spelling], [68 x %struct.token_spelling]* @token_spellings, i32 0, i64 %idxprom58
  %name60 = getelementptr inbounds %struct.token_spelling, %struct.token_spelling* %arrayidx59, i32 0, i32 1
  %39 = load i8*, i8** %name60, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_ice(%struct.cpp_reader* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i8* %39)
  %40 = load i8*, i8** %buffer.addr, align 8
  store i8* %40, i8** %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.54, %sw.bb.53, %sw.bb.52, %sw.bb.51, %sw.bb.50
  %41 = load i32, i32* %tag, align 4
  %tobool61 = icmp ne i32 %41, 0
  br i1 %tobool61, label %if.then.62, label %if.end.65

if.then.62:                                       ; preds = %sw.epilog
  %42 = load i32, i32* %tag, align 4
  %conv63 = trunc i32 %42 to i8
  %43 = load i8*, i8** %buffer.addr, align 8
  %incdec.ptr64 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr64, i8** %buffer.addr, align 8
  store i8 %conv63, i8* %43, align 1
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.62, %sw.epilog
  %44 = load i32, i32* %left, align 4
  %conv66 = trunc i32 %44 to i8
  %45 = load i8*, i8** %buffer.addr, align 8
  %incdec.ptr67 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr67, i8** %buffer.addr, align 8
  store i8 %conv66, i8* %45, align 1
  %46 = load i8*, i8** %buffer.addr, align 8
  %47 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %val68 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %47, i32 0, i32 4
  %str69 = bitcast %union.anon* %val68 to %struct.cpp_string*
  %text70 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str69, i32 0, i32 1
  %48 = load i8*, i8** %text70, align 8
  %49 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %val71 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %49, i32 0, i32 4
  %str72 = bitcast %union.anon* %val71 to %struct.cpp_string*
  %len73 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str72, i32 0, i32 0
  %50 = load i32, i32* %len73, align 4
  %conv74 = zext i32 %50 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %48, i64 %conv74, i32 1, i1 false)
  %51 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %val75 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %51, i32 0, i32 4
  %str76 = bitcast %union.anon* %val75 to %struct.cpp_string*
  %len77 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str76, i32 0, i32 0
  %52 = load i32, i32* %len77, align 4
  %53 = load i8*, i8** %buffer.addr, align 8
  %idx.ext78 = zext i32 %52 to i64
  %add.ptr79 = getelementptr inbounds i8, i8* %53, i64 %idx.ext78
  store i8* %add.ptr79, i8** %buffer.addr, align 8
  %54 = load i32, i32* %right, align 4
  %conv80 = trunc i32 %54 to i8
  %55 = load i8*, i8** %buffer.addr, align 8
  %incdec.ptr81 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr81, i8** %buffer.addr, align 8
  store i8 %conv80, i8* %55, align 1
  br label %sw.epilog.89

sw.bb.82:                                         ; preds = %entry
  %56 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %57 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %type83 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %57, i32 0, i32 2
  %bf.load84 = load i8, i8* %type83, align 2
  %bf.cast85 = zext i8 %bf.load84 to i32
  %idxprom86 = zext i32 %bf.cast85 to i64
  %arrayidx87 = getelementptr inbounds [68 x %struct.token_spelling], [68 x %struct.token_spelling]* @token_spellings, i32 0, i64 %idxprom86
  %name88 = getelementptr inbounds %struct.token_spelling, %struct.token_spelling* %arrayidx87, i32 0, i32 1
  %58 = load i8*, i8** %name88, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_ice(%struct.cpp_reader* %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i8* %58)
  br label %sw.epilog.89

sw.epilog.89:                                     ; preds = %entry, %sw.bb.82, %if.end.65, %sw.bb.34, %sw.bb.24, %sw.bb.21, %while.end
  %59 = load i8*, i8** %buffer.addr, align 8
  store i8* %59, i8** %retval
  br label %return

return:                                           ; preds = %sw.epilog.89, %sw.default
  %60 = load i8*, i8** %retval
  ret i8* %60
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare void @cpp_ice(%struct.cpp_reader*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define i8* @cpp_token_as_text(%struct.cpp_reader* %pfile, %struct.cpp_token* %token) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %token.addr = alloca %struct.cpp_token*, align 8
  %len = alloca i32, align 4
  %start = alloca i8*, align 8
  %end = alloca i8*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.cpp_token* %token, %struct.cpp_token** %token.addr, align 8
  %0 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %call = call i32 @cpp_token_len(%struct.cpp_token* %0)
  store i32 %call, i32* %len, align 4
  %1 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %2 = load i32, i32* %len, align 4
  %conv = zext i32 %2 to i64
  %call1 = call i8* @_cpp_unaligned_alloc(%struct.cpp_reader* %1, i64 %conv)
  store i8* %call1, i8** %start, align 8
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %4 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %5 = load i8*, i8** %start, align 8
  %call2 = call i8* @cpp_spell_token(%struct.cpp_reader* %3, %struct.cpp_token* %4, i8* %5)
  store i8* %call2, i8** %end, align 8
  %6 = load i8*, i8** %end, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  store i8 0, i8* %arrayidx, align 1
  %7 = load i8*, i8** %start, align 8
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define i8* @_cpp_unaligned_alloc(%struct.cpp_reader* %pfile, i64 %len) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %len.addr = alloca i64, align 8
  %buff = alloca %struct._cpp_buff*, align 8
  %result = alloca i8*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %u_buff = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 7
  %1 = load %struct._cpp_buff*, %struct._cpp_buff** %u_buff, align 8
  store %struct._cpp_buff* %1, %struct._cpp_buff** %buff, align 8
  %2 = load %struct._cpp_buff*, %struct._cpp_buff** %buff, align 8
  %cur = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %2, i32 0, i32 2
  %3 = load i8*, i8** %cur, align 8
  store i8* %3, i8** %result, align 8
  %4 = load i64, i64* %len.addr, align 8
  %5 = load %struct._cpp_buff*, %struct._cpp_buff** %buff, align 8
  %limit = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %5, i32 0, i32 3
  %6 = load i8*, i8** %limit, align 8
  %7 = load i8*, i8** %result, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp ugt i64 %4, %sub.ptr.sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %9 = load i64, i64* %len.addr, align 8
  %call = call %struct._cpp_buff* @_cpp_get_buff(%struct.cpp_reader* %8, i64 %9)
  store %struct._cpp_buff* %call, %struct._cpp_buff** %buff, align 8
  %10 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %u_buff1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %10, i32 0, i32 7
  %11 = load %struct._cpp_buff*, %struct._cpp_buff** %u_buff1, align 8
  %12 = load %struct._cpp_buff*, %struct._cpp_buff** %buff, align 8
  %next = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %12, i32 0, i32 0
  store %struct._cpp_buff* %11, %struct._cpp_buff** %next, align 8
  %13 = load %struct._cpp_buff*, %struct._cpp_buff** %buff, align 8
  %14 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %u_buff2 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %14, i32 0, i32 7
  store %struct._cpp_buff* %13, %struct._cpp_buff** %u_buff2, align 8
  %15 = load %struct._cpp_buff*, %struct._cpp_buff** %buff, align 8
  %cur3 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %15, i32 0, i32 2
  %16 = load i8*, i8** %cur3, align 8
  store i8* %16, i8** %result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load i8*, i8** %result, align 8
  %18 = load i64, i64* %len.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %18
  %19 = load %struct._cpp_buff*, %struct._cpp_buff** %buff, align 8
  %cur4 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %19, i32 0, i32 2
  store i8* %add.ptr, i8** %cur4, align 8
  %20 = load i8*, i8** %result, align 8
  ret i8* %20
}

; Function Attrs: nounwind uwtable
define i8* @cpp_type2name(i32 %type) #0 {
entry:
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [68 x %struct.token_spelling], [68 x %struct.token_spelling]* @token_spellings, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct.token_spelling, %struct.token_spelling* %arrayidx, i32 0, i32 1
  %1 = load i8*, i8** %name, align 8
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define void @cpp_output_token(%struct.cpp_token* %token, %struct._IO_FILE* %fp) #0 {
entry:
  %token.addr = alloca %struct.cpp_token*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %spelling = alloca i8*, align 8
  %c = alloca i32, align 4
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %tag = alloca i32, align 4
  store %struct.cpp_token* %token, %struct.cpp_token** %token.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %0, i32 0, i32 2
  %bf.load = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load to i32
  %idxprom = zext i32 %bf.cast to i64
  %arrayidx = getelementptr inbounds [68 x %struct.token_spelling], [68 x %struct.token_spelling]* @token_spellings, i32 0, i64 %idxprom
  %category = getelementptr inbounds %struct.token_spelling, %struct.token_spelling* %arrayidx, i32 0, i32 0
  %1 = load i32, i32* %category, align 4
  switch i32 %1, label %sw.epilog.71 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.21
    i32 2, label %sw.bb.25
    i32 3, label %sw.bb.32
    i32 4, label %sw.bb.40
    i32 5, label %sw.bb.70
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %2, i32 0, i32 3
  %3 = load i8, i8* %flags, align 1
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %4 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %4, i32 0, i32 2
  %bf.load2 = load i8, i8* %type1, align 2
  %bf.cast3 = zext i8 %bf.load2 to i32
  %sub = sub nsw i32 %bf.cast3, 40
  %idxprom4 = sext i32 %sub to i64
  %arrayidx5 = getelementptr inbounds [6 x i8*], [6 x i8*]* @digraph_spellings, i32 0, i64 %idxprom4
  %5 = load i8*, i8** %arrayidx5, align 8
  store i8* %5, i8** %spelling, align 8
  br label %if.end.17

if.else:                                          ; preds = %sw.bb
  %6 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %flags6 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %6, i32 0, i32 3
  %7 = load i8, i8* %flags6, align 1
  %conv7 = zext i8 %7 to i32
  %and8 = and i32 %conv7, 16
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.else
  br label %spell_ident

if.else.11:                                       ; preds = %if.else
  %8 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %type12 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %8, i32 0, i32 2
  %bf.load13 = load i8, i8* %type12, align 2
  %bf.cast14 = zext i8 %bf.load13 to i32
  %idxprom15 = zext i32 %bf.cast14 to i64
  %arrayidx16 = getelementptr inbounds [68 x %struct.token_spelling], [68 x %struct.token_spelling]* @token_spellings, i32 0, i64 %idxprom15
  %name = getelementptr inbounds %struct.token_spelling, %struct.token_spelling* %arrayidx16, i32 0, i32 1
  %9 = load i8*, i8** %name, align 8
  store i8* %9, i8** %spelling, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.11
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %if.then
  %10 = load i8*, i8** %spelling, align 8
  %11 = load i8, i8* %10, align 1
  %conv18 = zext i8 %11 to i32
  store i32 %conv18, i32* %c, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.17
  %12 = load i32, i32* %c, align 4
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @_IO_putc(i32 %12, %struct._IO_FILE* %13)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %14 = load i8*, i8** %spelling, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %spelling, align 8
  %15 = load i8, i8* %incdec.ptr, align 1
  %conv19 = zext i8 %15 to i32
  store i32 %conv19, i32* %c, align 4
  %cmp = icmp ne i32 %conv19, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %sw.epilog.71

sw.bb.21:                                         ; preds = %entry
  %16 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %16, i32 0, i32 4
  %c22 = bitcast %union.anon* %val to i8*
  %17 = load i8, i8* %c22, align 1
  %conv23 = zext i8 %17 to i32
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call24 = call i32 @_IO_putc(i32 %conv23, %struct._IO_FILE* %18)
  br label %sw.epilog.71

spell_ident:                                      ; preds = %if.then.10
  br label %sw.bb.25

sw.bb.25:                                         ; preds = %entry, %spell_ident
  %19 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %val26 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %19, i32 0, i32 4
  %node = bitcast %union.anon* %val26 to %struct.cpp_hashnode**
  %20 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %ident = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %20, i32 0, i32 0
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident, i32 0, i32 1
  %21 = load i8*, i8** %str, align 8
  %22 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %val27 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %22, i32 0, i32 4
  %node28 = bitcast %union.anon* %val27 to %struct.cpp_hashnode**
  %23 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node28, align 8
  %ident29 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %23, i32 0, i32 0
  %len = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident29, i32 0, i32 0
  %24 = load i32, i32* %len, align 4
  %conv30 = zext i32 %24 to i64
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call31 = call i64 @fwrite(i8* %21, i64 1, i64 %conv30, %struct._IO_FILE* %25)
  br label %sw.epilog.71

sw.bb.32:                                         ; preds = %entry
  %26 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %val33 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %26, i32 0, i32 4
  %str34 = bitcast %union.anon* %val33 to %struct.cpp_string*
  %text = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str34, i32 0, i32 1
  %27 = load i8*, i8** %text, align 8
  %28 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %val35 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %28, i32 0, i32 4
  %str36 = bitcast %union.anon* %val35 to %struct.cpp_string*
  %len37 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str36, i32 0, i32 0
  %29 = load i32, i32* %len37, align 4
  %conv38 = zext i32 %29 to i64
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call39 = call i64 @fwrite(i8* %27, i64 1, i64 %conv38, %struct._IO_FILE* %30)
  br label %sw.epilog.71

sw.bb.40:                                         ; preds = %entry
  %31 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %type41 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %31, i32 0, i32 2
  %bf.load42 = load i8, i8* %type41, align 2
  %bf.cast43 = zext i8 %bf.load42 to i32
  switch i32 %bf.cast43, label %sw.default [
    i32 61, label %sw.bb.44
    i32 62, label %sw.bb.45
    i32 58, label %sw.bb.46
    i32 59, label %sw.bb.47
    i32 63, label %sw.bb.48
  ]

sw.bb.44:                                         ; preds = %sw.bb.40
  store i32 34, i32* %left, align 4
  store i32 34, i32* %right, align 4
  store i32 0, i32* %tag, align 4
  br label %sw.epilog

sw.bb.45:                                         ; preds = %sw.bb.40
  store i32 34, i32* %left, align 4
  store i32 34, i32* %right, align 4
  store i32 76, i32* %tag, align 4
  br label %sw.epilog

sw.bb.46:                                         ; preds = %sw.bb.40
  store i32 39, i32* %left, align 4
  store i32 39, i32* %right, align 4
  store i32 0, i32* %tag, align 4
  br label %sw.epilog

sw.bb.47:                                         ; preds = %sw.bb.40
  store i32 39, i32* %left, align 4
  store i32 39, i32* %right, align 4
  store i32 76, i32* %tag, align 4
  br label %sw.epilog

sw.bb.48:                                         ; preds = %sw.bb.40
  store i32 60, i32* %left, align 4
  store i32 62, i32* %right, align 4
  store i32 0, i32* %tag, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.40
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %33 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %type49 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %33, i32 0, i32 2
  %bf.load50 = load i8, i8* %type49, align 2
  %bf.cast51 = zext i8 %bf.load50 to i32
  %idxprom52 = zext i32 %bf.cast51 to i64
  %arrayidx53 = getelementptr inbounds [68 x %struct.token_spelling], [68 x %struct.token_spelling]* @token_spellings, i32 0, i64 %idxprom52
  %name54 = getelementptr inbounds %struct.token_spelling, %struct.token_spelling* %arrayidx53, i32 0, i32 1
  %34 = load i8*, i8** %name54, align 8
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i8* %34)
  br label %sw.epilog.71

sw.epilog:                                        ; preds = %sw.bb.48, %sw.bb.47, %sw.bb.46, %sw.bb.45, %sw.bb.44
  %35 = load i32, i32* %tag, align 4
  %tobool56 = icmp ne i32 %35, 0
  br i1 %tobool56, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %sw.epilog
  %36 = load i32, i32* %tag, align 4
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call58 = call i32 @_IO_putc(i32 %36, %struct._IO_FILE* %37)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %sw.epilog
  %38 = load i32, i32* %left, align 4
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call60 = call i32 @_IO_putc(i32 %38, %struct._IO_FILE* %39)
  %40 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %val61 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %40, i32 0, i32 4
  %str62 = bitcast %union.anon* %val61 to %struct.cpp_string*
  %text63 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str62, i32 0, i32 1
  %41 = load i8*, i8** %text63, align 8
  %42 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %val64 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %42, i32 0, i32 4
  %str65 = bitcast %union.anon* %val64 to %struct.cpp_string*
  %len66 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str65, i32 0, i32 0
  %43 = load i32, i32* %len66, align 4
  %conv67 = zext i32 %43 to i64
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call68 = call i64 @fwrite(i8* %41, i64 1, i64 %conv67, %struct._IO_FILE* %44)
  %45 = load i32, i32* %right, align 4
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call69 = call i32 @_IO_putc(i32 %45, %struct._IO_FILE* %46)
  br label %sw.epilog.71

sw.bb.70:                                         ; preds = %entry
  br label %sw.epilog.71

sw.epilog.71:                                     ; preds = %sw.default, %entry, %sw.bb.70, %if.end.59, %sw.bb.32, %sw.bb.25, %sw.bb.21, %do.end
  ret void
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #2

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @_cpp_equiv_tokens(%struct.cpp_token* %a, %struct.cpp_token* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.cpp_token*, align 8
  %b.addr = alloca %struct.cpp_token*, align 8
  store %struct.cpp_token* %a, %struct.cpp_token** %a.addr, align 8
  store %struct.cpp_token* %b, %struct.cpp_token** %b.addr, align 8
  %0 = load %struct.cpp_token*, %struct.cpp_token** %a.addr, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %0, i32 0, i32 2
  %bf.load = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load to i32
  %1 = load %struct.cpp_token*, %struct.cpp_token** %b.addr, align 8
  %type1 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %1, i32 0, i32 2
  %bf.load2 = load i8, i8* %type1, align 2
  %bf.cast3 = zext i8 %bf.load2 to i32
  %cmp = icmp eq i32 %bf.cast, %bf.cast3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.cpp_token*, %struct.cpp_token** %a.addr, align 8
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %2, i32 0, i32 3
  %3 = load i8, i8* %flags, align 1
  %conv = zext i8 %3 to i32
  %4 = load %struct.cpp_token*, %struct.cpp_token** %b.addr, align 8
  %flags4 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %4, i32 0, i32 3
  %5 = load i8, i8* %flags4, align 1
  %conv5 = zext i8 %5 to i32
  %cmp6 = icmp eq i32 %conv, %conv5
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.cpp_token*, %struct.cpp_token** %a.addr, align 8
  %type8 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %6, i32 0, i32 2
  %bf.load9 = load i8, i8* %type8, align 2
  %bf.cast10 = zext i8 %bf.load9 to i32
  %idxprom = zext i32 %bf.cast10 to i64
  %arrayidx = getelementptr inbounds [68 x %struct.token_spelling], [68 x %struct.token_spelling]* @token_spellings, i32 0, i64 %idxprom
  %category = getelementptr inbounds %struct.token_spelling, %struct.token_spelling* %arrayidx, i32 0, i32 0
  %7 = load i32, i32* %category, align 4
  switch i32 %7, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.11
    i32 5, label %sw.bb.18
    i32 2, label %sw.bb.29
    i32 3, label %sw.bb.35
    i32 4, label %sw.bb.35
  ]

sw.default:                                       ; preds = %if.then
  br label %sw.bb

sw.bb:                                            ; preds = %if.then, %sw.default
  store i32 1, i32* %retval
  br label %return

sw.bb.11:                                         ; preds = %if.then
  %8 = load %struct.cpp_token*, %struct.cpp_token** %a.addr, align 8
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %8, i32 0, i32 4
  %c = bitcast %union.anon* %val to i8*
  %9 = load i8, i8* %c, align 1
  %conv12 = zext i8 %9 to i32
  %10 = load %struct.cpp_token*, %struct.cpp_token** %b.addr, align 8
  %val13 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %10, i32 0, i32 4
  %c14 = bitcast %union.anon* %val13 to i8*
  %11 = load i8, i8* %c14, align 1
  %conv15 = zext i8 %11 to i32
  %cmp16 = icmp eq i32 %conv12, %conv15
  %conv17 = zext i1 %cmp16 to i32
  store i32 %conv17, i32* %retval
  br label %return

sw.bb.18:                                         ; preds = %if.then
  %12 = load %struct.cpp_token*, %struct.cpp_token** %a.addr, align 8
  %type19 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %12, i32 0, i32 2
  %bf.load20 = load i8, i8* %type19, align 2
  %bf.cast21 = zext i8 %bf.load20 to i32
  %cmp22 = icmp ne i32 %bf.cast21, 65
  br i1 %cmp22, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %sw.bb.18
  %13 = load %struct.cpp_token*, %struct.cpp_token** %a.addr, align 8
  %val24 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %13, i32 0, i32 4
  %arg_no = bitcast %union.anon* %val24 to i32*
  %14 = load i32, i32* %arg_no, align 4
  %15 = load %struct.cpp_token*, %struct.cpp_token** %b.addr, align 8
  %val25 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %15, i32 0, i32 4
  %arg_no26 = bitcast %union.anon* %val25 to i32*
  %16 = load i32, i32* %arg_no26, align 4
  %cmp27 = icmp eq i32 %14, %16
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %sw.bb.18
  %17 = phi i1 [ true, %sw.bb.18 ], [ %cmp27, %lor.rhs ]
  %lor.ext = zext i1 %17 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

sw.bb.29:                                         ; preds = %if.then
  %18 = load %struct.cpp_token*, %struct.cpp_token** %a.addr, align 8
  %val30 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %18, i32 0, i32 4
  %node = bitcast %union.anon* %val30 to %struct.cpp_hashnode**
  %19 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %20 = load %struct.cpp_token*, %struct.cpp_token** %b.addr, align 8
  %val31 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %20, i32 0, i32 4
  %node32 = bitcast %union.anon* %val31 to %struct.cpp_hashnode**
  %21 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node32, align 8
  %cmp33 = icmp eq %struct.cpp_hashnode* %19, %21
  %conv34 = zext i1 %cmp33 to i32
  store i32 %conv34, i32* %retval
  br label %return

sw.bb.35:                                         ; preds = %if.then, %if.then
  %22 = load %struct.cpp_token*, %struct.cpp_token** %a.addr, align 8
  %val36 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %22, i32 0, i32 4
  %str = bitcast %union.anon* %val36 to %struct.cpp_string*
  %len = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str, i32 0, i32 0
  %23 = load i32, i32* %len, align 4
  %24 = load %struct.cpp_token*, %struct.cpp_token** %b.addr, align 8
  %val37 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %24, i32 0, i32 4
  %str38 = bitcast %union.anon* %val37 to %struct.cpp_string*
  %len39 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str38, i32 0, i32 0
  %25 = load i32, i32* %len39, align 4
  %cmp40 = icmp eq i32 %23, %25
  br i1 %cmp40, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %sw.bb.35
  %26 = load %struct.cpp_token*, %struct.cpp_token** %a.addr, align 8
  %val42 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %26, i32 0, i32 4
  %str43 = bitcast %union.anon* %val42 to %struct.cpp_string*
  %text = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str43, i32 0, i32 1
  %27 = load i8*, i8** %text, align 8
  %28 = load %struct.cpp_token*, %struct.cpp_token** %b.addr, align 8
  %val44 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %28, i32 0, i32 4
  %str45 = bitcast %union.anon* %val44 to %struct.cpp_string*
  %text46 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str45, i32 0, i32 1
  %29 = load i8*, i8** %text46, align 8
  %30 = load %struct.cpp_token*, %struct.cpp_token** %a.addr, align 8
  %val47 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %30, i32 0, i32 4
  %str48 = bitcast %union.anon* %val47 to %struct.cpp_string*
  %len49 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str48, i32 0, i32 0
  %31 = load i32, i32* %len49, align 4
  %conv50 = zext i32 %31 to i64
  %call = call i32 @memcmp(i8* %27, i8* %29, i64 %conv50) #7
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb.35
  %32 = phi i1 [ false, %sw.bb.35 ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %32 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %land.end, %sw.bb.29, %lor.end, %sw.bb.11, %sw.bb
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define i32 @cpp_avoid_paste(%struct.cpp_reader* %pfile, %struct.cpp_token* %token1, %struct.cpp_token* %token2) #0 {
entry:
  %retval = alloca i32, align 4
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %token1.addr = alloca %struct.cpp_token*, align 8
  %token2.addr = alloca %struct.cpp_token*, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.cpp_token* %token1, %struct.cpp_token** %token1.addr, align 8
  store %struct.cpp_token* %token2, %struct.cpp_token** %token2.addr, align 8
  %0 = load %struct.cpp_token*, %struct.cpp_token** %token1.addr, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %0, i32 0, i32 2
  %bf.load = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load to i32
  store i32 %bf.cast, i32* %a, align 4
  %1 = load %struct.cpp_token*, %struct.cpp_token** %token2.addr, align 8
  %type1 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %1, i32 0, i32 2
  %bf.load2 = load i8, i8* %type1, align 2
  %bf.cast3 = zext i8 %bf.load2 to i32
  store i32 %bf.cast3, i32* %b, align 4
  %2 = load %struct.cpp_token*, %struct.cpp_token** %token1.addr, align 8
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %2, i32 0, i32 3
  %3 = load i8, i8* %flags, align 1
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 56, i32* %a, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.cpp_token*, %struct.cpp_token** %token2.addr, align 8
  %flags4 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %4, i32 0, i32 3
  %5 = load i8, i8* %flags4, align 1
  %conv5 = zext i8 %5 to i32
  %and6 = and i32 %conv5, 16
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store i32 56, i32* %b, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  store i32 -1, i32* %c, align 4
  %6 = load %struct.cpp_token*, %struct.cpp_token** %token2.addr, align 8
  %flags10 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %6, i32 0, i32 3
  %7 = load i8, i8* %flags10, align 1
  %conv11 = zext i8 %7 to i32
  %and12 = and i32 %conv11, 2
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.9
  %8 = load i32, i32* %b, align 4
  %sub = sub nsw i32 %8, 40
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [6 x i8*], [6 x i8*]* @digraph_spellings, i32 0, i64 %idxprom
  %9 = load i8*, i8** %arrayidx, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %10 to i32
  store i32 %conv16, i32* %c, align 4
  br label %if.end.26

if.else:                                          ; preds = %if.end.9
  %11 = load i32, i32* %b, align 4
  %idxprom17 = zext i32 %11 to i64
  %arrayidx18 = getelementptr inbounds [68 x %struct.token_spelling], [68 x %struct.token_spelling]* @token_spellings, i32 0, i64 %idxprom17
  %category = getelementptr inbounds %struct.token_spelling, %struct.token_spelling* %arrayidx18, i32 0, i32 0
  %12 = load i32, i32* %category, align 4
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then.20, label %if.end.25

if.then.20:                                       ; preds = %if.else
  %13 = load i32, i32* %b, align 4
  %idxprom21 = zext i32 %13 to i64
  %arrayidx22 = getelementptr inbounds [68 x %struct.token_spelling], [68 x %struct.token_spelling]* @token_spellings, i32 0, i64 %idxprom21
  %name = getelementptr inbounds %struct.token_spelling, %struct.token_spelling* %arrayidx22, i32 0, i32 1
  %14 = load i8*, i8** %name, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %14, i64 0
  %15 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %15 to i32
  store i32 %conv24, i32* %c, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.20, %if.else
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.14
  %16 = load i32, i32* %a, align 4
  %cmp27 = icmp sle i32 %16, 15
  br i1 %cmp27, label %land.lhs.true, label %if.end.32

land.lhs.true:                                    ; preds = %if.end.26
  %17 = load i32, i32* %c, align 4
  %cmp29 = icmp eq i32 %17, 61
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end.32:                                        ; preds = %land.lhs.true, %if.end.26
  %18 = load i32, i32* %a, align 4
  switch i32 %18, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.37
    i32 4, label %sw.bb.50
    i32 5, label %sw.bb.53
    i32 7, label %sw.bb.61
    i32 8, label %sw.bb.69
    i32 9, label %sw.bb.77
    i32 10, label %sw.bb.80
    i32 20, label %sw.bb.83
    i32 50, label %sw.bb.91
    i32 51, label %sw.bb.94
    i32 40, label %sw.bb.105
    i32 56, label %sw.bb.113
    i32 57, label %sw.bb.129
    i32 60, label %sw.bb.146
  ]

sw.bb:                                            ; preds = %if.end.32
  %19 = load i32, i32* %c, align 4
  %cmp33 = icmp eq i32 %19, 62
  br i1 %cmp33, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %sw.bb
  %20 = load i32, i32* %c, align 4
  %cmp35 = icmp eq i32 %20, 63
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %sw.bb
  %21 = phi i1 [ true, %sw.bb ], [ %cmp35, %lor.rhs ]
  %lor.ext = zext i1 %21 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

sw.bb.37:                                         ; preds = %if.end.32
  %22 = load i32, i32* %c, align 4
  %cmp38 = icmp eq i32 %22, 60
  br i1 %cmp38, label %lor.end.48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.37
  %23 = load i32, i32* %c, align 4
  %cmp40 = icmp eq i32 %23, 63
  br i1 %cmp40, label %lor.end.48, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %lor.lhs.false
  %24 = load i32, i32* %c, align 4
  %cmp43 = icmp eq i32 %24, 37
  br i1 %cmp43, label %lor.end.48, label %lor.rhs.45

lor.rhs.45:                                       ; preds = %lor.lhs.false.42
  %25 = load i32, i32* %c, align 4
  %cmp46 = icmp eq i32 %25, 58
  br label %lor.end.48

lor.end.48:                                       ; preds = %lor.rhs.45, %lor.lhs.false.42, %lor.lhs.false, %sw.bb.37
  %26 = phi i1 [ true, %lor.lhs.false.42 ], [ true, %lor.lhs.false ], [ true, %sw.bb.37 ], [ %cmp46, %lor.rhs.45 ]
  %lor.ext49 = zext i1 %26 to i32
  store i32 %lor.ext49, i32* %retval
  br label %return

sw.bb.50:                                         ; preds = %if.end.32
  %27 = load i32, i32* %c, align 4
  %cmp51 = icmp eq i32 %27, 43
  %conv52 = zext i1 %cmp51 to i32
  store i32 %conv52, i32* %retval
  br label %return

sw.bb.53:                                         ; preds = %if.end.32
  %28 = load i32, i32* %c, align 4
  %cmp54 = icmp eq i32 %28, 45
  br i1 %cmp54, label %lor.end.59, label %lor.rhs.56

lor.rhs.56:                                       ; preds = %sw.bb.53
  %29 = load i32, i32* %c, align 4
  %cmp57 = icmp eq i32 %29, 62
  br label %lor.end.59

lor.end.59:                                       ; preds = %lor.rhs.56, %sw.bb.53
  %30 = phi i1 [ true, %sw.bb.53 ], [ %cmp57, %lor.rhs.56 ]
  %lor.ext60 = zext i1 %30 to i32
  store i32 %lor.ext60, i32* %retval
  br label %return

sw.bb.61:                                         ; preds = %if.end.32
  %31 = load i32, i32* %c, align 4
  %cmp62 = icmp eq i32 %31, 47
  br i1 %cmp62, label %lor.end.67, label %lor.rhs.64

lor.rhs.64:                                       ; preds = %sw.bb.61
  %32 = load i32, i32* %c, align 4
  %cmp65 = icmp eq i32 %32, 42
  br label %lor.end.67

lor.end.67:                                       ; preds = %lor.rhs.64, %sw.bb.61
  %33 = phi i1 [ true, %sw.bb.61 ], [ %cmp65, %lor.rhs.64 ]
  %lor.ext68 = zext i1 %33 to i32
  store i32 %lor.ext68, i32* %retval
  br label %return

sw.bb.69:                                         ; preds = %if.end.32
  %34 = load i32, i32* %c, align 4
  %cmp70 = icmp eq i32 %34, 58
  br i1 %cmp70, label %lor.end.75, label %lor.rhs.72

lor.rhs.72:                                       ; preds = %sw.bb.69
  %35 = load i32, i32* %c, align 4
  %cmp73 = icmp eq i32 %35, 62
  br label %lor.end.75

lor.end.75:                                       ; preds = %lor.rhs.72, %sw.bb.69
  %36 = phi i1 [ true, %sw.bb.69 ], [ %cmp73, %lor.rhs.72 ]
  %lor.ext76 = zext i1 %36 to i32
  store i32 %lor.ext76, i32* %retval
  br label %return

sw.bb.77:                                         ; preds = %if.end.32
  %37 = load i32, i32* %c, align 4
  %cmp78 = icmp eq i32 %37, 38
  %conv79 = zext i1 %cmp78 to i32
  store i32 %conv79, i32* %retval
  br label %return

sw.bb.80:                                         ; preds = %if.end.32
  %38 = load i32, i32* %c, align 4
  %cmp81 = icmp eq i32 %38, 124
  %conv82 = zext i1 %cmp81 to i32
  store i32 %conv82, i32* %retval
  br label %return

sw.bb.83:                                         ; preds = %if.end.32
  %39 = load i32, i32* %c, align 4
  %cmp84 = icmp eq i32 %39, 58
  br i1 %cmp84, label %lor.end.89, label %lor.rhs.86

lor.rhs.86:                                       ; preds = %sw.bb.83
  %40 = load i32, i32* %c, align 4
  %cmp87 = icmp eq i32 %40, 62
  br label %lor.end.89

lor.end.89:                                       ; preds = %lor.rhs.86, %sw.bb.83
  %41 = phi i1 [ true, %sw.bb.83 ], [ %cmp87, %lor.rhs.86 ]
  %lor.ext90 = zext i1 %41 to i32
  store i32 %lor.ext90, i32* %retval
  br label %return

sw.bb.91:                                         ; preds = %if.end.32
  %42 = load i32, i32* %c, align 4
  %cmp92 = icmp eq i32 %42, 42
  %conv93 = zext i1 %cmp92 to i32
  store i32 %conv93, i32* %retval
  br label %return

sw.bb.94:                                         ; preds = %if.end.32
  %43 = load i32, i32* %c, align 4
  %cmp95 = icmp eq i32 %43, 46
  br i1 %cmp95, label %lor.end.103, label %lor.lhs.false.97

lor.lhs.false.97:                                 ; preds = %sw.bb.94
  %44 = load i32, i32* %c, align 4
  %cmp98 = icmp eq i32 %44, 37
  br i1 %cmp98, label %lor.end.103, label %lor.rhs.100

lor.rhs.100:                                      ; preds = %lor.lhs.false.97
  %45 = load i32, i32* %b, align 4
  %cmp101 = icmp eq i32 %45, 57
  br label %lor.end.103

lor.end.103:                                      ; preds = %lor.rhs.100, %lor.lhs.false.97, %sw.bb.94
  %46 = phi i1 [ true, %lor.lhs.false.97 ], [ true, %sw.bb.94 ], [ %cmp101, %lor.rhs.100 ]
  %lor.ext104 = zext i1 %46 to i32
  store i32 %lor.ext104, i32* %retval
  br label %return

sw.bb.105:                                        ; preds = %if.end.32
  %47 = load i32, i32* %c, align 4
  %cmp106 = icmp eq i32 %47, 35
  br i1 %cmp106, label %lor.end.111, label %lor.rhs.108

lor.rhs.108:                                      ; preds = %sw.bb.105
  %48 = load i32, i32* %c, align 4
  %cmp109 = icmp eq i32 %48, 37
  br label %lor.end.111

lor.end.111:                                      ; preds = %lor.rhs.108, %sw.bb.105
  %49 = phi i1 [ true, %sw.bb.105 ], [ %cmp109, %lor.rhs.108 ]
  %lor.ext112 = zext i1 %49 to i32
  store i32 %lor.ext112, i32* %retval
  br label %return

sw.bb.113:                                        ; preds = %if.end.32
  %50 = load i32, i32* %b, align 4
  %cmp114 = icmp eq i32 %50, 57
  br i1 %cmp114, label %land.lhs.true.116, label %lor.lhs.false.118

land.lhs.true.116:                                ; preds = %sw.bb.113
  %51 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %52 = load %struct.cpp_token*, %struct.cpp_token** %token2.addr, align 8
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %52, i32 0, i32 4
  %str = bitcast %union.anon* %val to %struct.cpp_string*
  %call = call i32 @name_p(%struct.cpp_reader* %51, %struct.cpp_string* %str)
  %tobool117 = icmp ne i32 %call, 0
  br i1 %tobool117, label %lor.end.127, label %lor.lhs.false.118

lor.lhs.false.118:                                ; preds = %land.lhs.true.116, %sw.bb.113
  %53 = load i32, i32* %b, align 4
  %cmp119 = icmp eq i32 %53, 56
  br i1 %cmp119, label %lor.end.127, label %lor.lhs.false.121

lor.lhs.false.121:                                ; preds = %lor.lhs.false.118
  %54 = load i32, i32* %b, align 4
  %cmp122 = icmp eq i32 %54, 58
  br i1 %cmp122, label %lor.end.127, label %lor.rhs.124

lor.rhs.124:                                      ; preds = %lor.lhs.false.121
  %55 = load i32, i32* %b, align 4
  %cmp125 = icmp eq i32 %55, 61
  br label %lor.end.127

lor.end.127:                                      ; preds = %lor.rhs.124, %lor.lhs.false.121, %lor.lhs.false.118, %land.lhs.true.116
  %56 = phi i1 [ true, %lor.lhs.false.121 ], [ true, %lor.lhs.false.118 ], [ true, %land.lhs.true.116 ], [ %cmp125, %lor.rhs.124 ]
  %lor.ext128 = zext i1 %56 to i32
  store i32 %lor.ext128, i32* %retval
  br label %return

sw.bb.129:                                        ; preds = %if.end.32
  %57 = load i32, i32* %b, align 4
  %cmp130 = icmp eq i32 %57, 57
  br i1 %cmp130, label %lor.end.144, label %lor.lhs.false.132

lor.lhs.false.132:                                ; preds = %sw.bb.129
  %58 = load i32, i32* %b, align 4
  %cmp133 = icmp eq i32 %58, 56
  br i1 %cmp133, label %lor.end.144, label %lor.lhs.false.135

lor.lhs.false.135:                                ; preds = %lor.lhs.false.132
  %59 = load i32, i32* %c, align 4
  %cmp136 = icmp eq i32 %59, 46
  br i1 %cmp136, label %lor.end.144, label %lor.lhs.false.138

lor.lhs.false.138:                                ; preds = %lor.lhs.false.135
  %60 = load i32, i32* %c, align 4
  %cmp139 = icmp eq i32 %60, 43
  br i1 %cmp139, label %lor.end.144, label %lor.rhs.141

lor.rhs.141:                                      ; preds = %lor.lhs.false.138
  %61 = load i32, i32* %c, align 4
  %cmp142 = icmp eq i32 %61, 45
  br label %lor.end.144

lor.end.144:                                      ; preds = %lor.rhs.141, %lor.lhs.false.138, %lor.lhs.false.135, %lor.lhs.false.132, %sw.bb.129
  %62 = phi i1 [ true, %lor.lhs.false.138 ], [ true, %lor.lhs.false.135 ], [ true, %lor.lhs.false.132 ], [ true, %sw.bb.129 ], [ %cmp142, %lor.rhs.141 ]
  %lor.ext145 = zext i1 %62 to i32
  store i32 %lor.ext145, i32* %retval
  br label %return

sw.bb.146:                                        ; preds = %if.end.32
  %63 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %63, i32 0, i32 37
  %objc = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 16
  %64 = load i8, i8* %objc, align 1
  %conv147 = zext i8 %64 to i32
  %tobool148 = icmp ne i32 %conv147, 0
  br i1 %tobool148, label %land.lhs.true.149, label %land.end

land.lhs.true.149:                                ; preds = %sw.bb.146
  %65 = load %struct.cpp_token*, %struct.cpp_token** %token1.addr, align 8
  %val150 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %65, i32 0, i32 4
  %c151 = bitcast %union.anon* %val150 to i8*
  %66 = load i8, i8* %c151, align 1
  %conv152 = zext i8 %66 to i32
  %cmp153 = icmp eq i32 %conv152, 64
  br i1 %cmp153, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.149
  %67 = load i32, i32* %b, align 4
  %cmp155 = icmp eq i32 %67, 56
  br i1 %cmp155, label %lor.end.160, label %lor.rhs.157

lor.rhs.157:                                      ; preds = %land.rhs
  %68 = load i32, i32* %b, align 4
  %cmp158 = icmp eq i32 %68, 61
  br label %lor.end.160

lor.end.160:                                      ; preds = %lor.rhs.157, %land.rhs
  %69 = phi i1 [ true, %land.rhs ], [ %cmp158, %lor.rhs.157 ]
  br label %land.end

land.end:                                         ; preds = %lor.end.160, %land.lhs.true.149, %sw.bb.146
  %70 = phi i1 [ false, %land.lhs.true.149 ], [ false, %sw.bb.146 ], [ %69, %lor.end.160 ]
  %land.ext = zext i1 %70 to i32
  store i32 %land.ext, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end.32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %land.end, %lor.end.144, %lor.end.127, %lor.end.111, %lor.end.103, %sw.bb.91, %lor.end.89, %sw.bb.80, %sw.bb.77, %lor.end.75, %lor.end.67, %lor.end.59, %sw.bb.50, %lor.end.48, %lor.end, %if.then.31
  %71 = load i32, i32* %retval
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define internal i32 @name_p(%struct.cpp_reader* %pfile, %struct.cpp_string* %string) #0 {
entry:
  %retval = alloca i32, align 4
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %string.addr = alloca %struct.cpp_string*, align 8
  %i = alloca i32, align 4
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.cpp_string* %string, %struct.cpp_string** %string.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.cpp_string*, %struct.cpp_string** %string.addr, align 8
  %len = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %1, i32 0, i32 0
  %2 = load i32, i32* %len, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct.cpp_string*, %struct.cpp_string** %string.addr, align 8
  %text = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %4, i32 0, i32 1
  %5 = load i8*, i8** %text, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %and = and i32 %conv, 255
  %idxprom1 = sext i32 %and to i64
  %arrayidx2 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom1
  %7 = load i16, i16* %arrayidx2, align 2
  %conv3 = zext i16 %7 to i32
  %and4 = and i32 %conv3, 516
  %tobool = icmp ne i32 %and4, 0
  br i1 %tobool, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %idxprom5 = zext i32 %8 to i64
  %9 = load %struct.cpp_string*, %struct.cpp_string** %string.addr, align 8
  %text6 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %9, i32 0, i32 1
  %10 = load i8*, i8** %text6, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %10, i64 %idxprom5
  %11 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %11 to i32
  %cmp9 = icmp eq i32 %conv8, 36
  br i1 %cmp9, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %lor.lhs.false
  %12 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %12, i32 0, i32 37
  %dollars_in_ident = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 39
  %13 = load i8, i8* %dollars_in_ident, align 1
  %conv11 = zext i8 %13 to i32
  %tobool12 = icmp ne i32 %conv11, 0
  br i1 %tobool12, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @cpp_output_line(%struct.cpp_reader* %pfile, %struct._IO_FILE* %fp) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %token = alloca %struct.cpp_token*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %0)
  store %struct.cpp_token* %call, %struct.cpp_token** %token, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %1, i32 0, i32 2
  %bf.load = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load to i32
  %cmp = icmp ne i32 %bf.cast, 67
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @cpp_output_token(%struct.cpp_token* %2, %struct._IO_FILE* %3)
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call1 = call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %4)
  store %struct.cpp_token* %call1, %struct.cpp_token** %token, align 8
  %5 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %5, i32 0, i32 3
  %6 = load i8, i8* %flags, align 1
  %conv = zext i8 %6 to i32
  %and = and i32 %conv, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call2 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call3 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %8)
  ret void
}

declare %struct.cpp_token* @cpp_get_token(%struct.cpp_reader*) #2

; Function Attrs: nounwind uwtable
define i32 @cpp_parse_escape(%struct.cpp_reader* %pfile, i8** %pstr, i8* %limit, i64 %mask, i32 %traditional) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %pstr.addr = alloca i8**, align 8
  %limit.addr = alloca i8*, align 8
  %mask.addr = alloca i64, align 8
  %traditional.addr = alloca i32, align 4
  %unknown = alloca i32, align 4
  %str = alloca i8*, align 8
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %overflow = alloca i32, align 4
  %digits_found = alloca i32, align 4
  %i56 = alloca i32, align 4
  %count = alloca i32, align 4
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i8** %pstr, i8*** %pstr.addr, align 8
  store i8* %limit, i8** %limit.addr, align 8
  store i64 %mask, i64* %mask.addr, align 8
  store i32 %traditional, i32* %traditional.addr, align 4
  store i32 0, i32* %unknown, align 4
  %0 = load i8**, i8*** %pstr.addr, align 8
  %1 = load i8*, i8** %0, align 8
  store i8* %1, i8** %str, align 8
  %2 = load i8*, i8** %str, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %str, align 8
  %3 = load i8, i8* %2, align 1
  %conv = zext i8 %3 to i32
  store i32 %conv, i32* %c, align 4
  %4 = load i32, i32* %c, align 4
  switch i32 %4, label %sw.default [
    i32 92, label %sw.bb
    i32 39, label %sw.bb
    i32 34, label %sw.bb
    i32 63, label %sw.bb
    i32 98, label %sw.bb.1
    i32 102, label %sw.bb.2
    i32 110, label %sw.bb.3
    i32 114, label %sw.bb.4
    i32 116, label %sw.bb.5
    i32 118, label %sw.bb.6
    i32 40, label %sw.bb.7
    i32 123, label %sw.bb.7
    i32 91, label %sw.bb.7
    i32 37, label %sw.bb.7
    i32 97, label %sw.bb.9
    i32 101, label %sw.bb.14
    i32 69, label %sw.bb.14
    i32 117, label %sw.bb.20
    i32 85, label %sw.bb.20
    i32 120, label %sw.bb.21
    i32 48, label %sw.bb.55
    i32 49, label %sw.bb.55
    i32 50, label %sw.bb.55
    i32 51, label %sw.bb.55
    i32 52, label %sw.bb.55
    i32 53, label %sw.bb.55
    i32 54, label %sw.bb.55
    i32 55, label %sw.bb.55
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store i32 8, i32* %c, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store i32 12, i32* %c, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  store i32 10, i32* %c, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  store i32 13, i32* %c, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  store i32 9, i32* %c, align 4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  store i32 11, i32* %c, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry, %entry, %entry, %entry
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %5, i32 0, i32 37
  %pedantic = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 42
  %6 = load i8, i8* %pedantic, align 1
  %conv8 = zext i8 %6 to i32
  store i32 %conv8, i32* %unknown, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %7 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts10 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %7, i32 0, i32 37
  %warn_traditional = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts10, i32 0, i32 33
  %8 = load i8, i8* %warn_traditional, align 1
  %tobool = icmp ne i8 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.9
  %9 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_warning(%struct.cpp_reader* %9, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.9
  %10 = load i32, i32* %traditional.addr, align 4
  %tobool11 = icmp ne i32 %10, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end
  store i32 7, i32* %c, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry, %entry
  %11 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts15 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %11, i32 0, i32 37
  %pedantic16 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts15, i32 0, i32 42
  %12 = load i8, i8* %pedantic16, align 1
  %tobool17 = icmp ne i8 %12, 0
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %sw.bb.14
  %13 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %14 = load i32, i32* %c, align 4
  call void (%struct.cpp_reader*, i8*, ...) @cpp_pedwarn(%struct.cpp_reader* %13, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i32 0, i32 0), i32 %14)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %sw.bb.14
  store i32 27, i32* %c, align 4
  br label %sw.epilog

sw.bb.20:                                         ; preds = %entry, %entry
  %15 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %16 = load i8*, i8** %limit.addr, align 8
  %call = call i32 @maybe_read_ucs(%struct.cpp_reader* %15, i8** %str, i8* %16, i32* %c)
  store i32 %call, i32* %unknown, align 4
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %17 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts22 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %17, i32 0, i32 37
  %warn_traditional23 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts22, i32 0, i32 33
  %18 = load i8, i8* %warn_traditional23, align 1
  %tobool24 = icmp ne i8 %18, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %sw.bb.21
  %19 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_warning(%struct.cpp_reader* %19, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %sw.bb.21
  %20 = load i32, i32* %traditional.addr, align 4
  %tobool27 = icmp ne i32 %20, 0
  br i1 %tobool27, label %if.end.54, label %if.then.28

if.then.28:                                       ; preds = %if.end.26
  store i32 0, i32* %i, align 4
  store i32 0, i32* %overflow, align 4
  store i32 0, i32* %digits_found, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.35, %if.then.28
  %21 = load i8*, i8** %str, align 8
  %22 = load i8*, i8** %limit.addr, align 8
  %cmp = icmp ult i8* %21, %22
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load i8*, i8** %str, align 8
  %24 = load i8, i8* %23, align 1
  %conv30 = zext i8 %24 to i32
  store i32 %conv30, i32* %c, align 4
  %25 = load i32, i32* %c, align 4
  %and = and i32 %25, 255
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom
  %26 = load i16, i16* %arrayidx, align 2
  %conv31 = zext i16 %26 to i32
  %and32 = and i32 %conv31, 256
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %while.body
  br label %while.end

if.end.35:                                        ; preds = %while.body
  %27 = load i8*, i8** %str, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr36, i8** %str, align 8
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %i, align 4
  %shl = shl i32 %29, 4
  %shr = lshr i32 %shl, 4
  %xor = xor i32 %28, %shr
  %30 = load i32, i32* %overflow, align 4
  %or = or i32 %30, %xor
  store i32 %or, i32* %overflow, align 4
  %31 = load i32, i32* %i, align 4
  %shl37 = shl i32 %31, 4
  %32 = load i32, i32* %c, align 4
  %call38 = call i32 @hex_digit_value(i32 %32)
  %add = add i32 %shl37, %call38
  store i32 %add, i32* %i, align 4
  store i32 1, i32* %digits_found, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then.34, %while.cond
  %33 = load i32, i32* %digits_found, align 4
  %tobool39 = icmp ne i32 %33, 0
  br i1 %tobool39, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %while.end
  %34 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %while.end
  %35 = load i32, i32* %overflow, align 4
  %36 = load i32, i32* %i, align 4
  %conv42 = zext i32 %36 to i64
  %37 = load i32, i32* %i, align 4
  %conv43 = zext i32 %37 to i64
  %38 = load i64, i64* %mask.addr, align 8
  %and44 = and i64 %conv43, %38
  %cmp45 = icmp ne i64 %conv42, %and44
  %conv46 = zext i1 %cmp45 to i32
  %or47 = or i32 %35, %conv46
  %tobool48 = icmp ne i32 %or47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.53

if.then.49:                                       ; preds = %if.end.41
  %39 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_pedwarn(%struct.cpp_reader* %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i32 0, i32 0))
  %40 = load i64, i64* %mask.addr, align 8
  %41 = load i32, i32* %i, align 4
  %conv50 = zext i32 %41 to i64
  %and51 = and i64 %conv50, %40
  %conv52 = trunc i64 %and51 to i32
  store i32 %conv52, i32* %i, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.49, %if.end.41
  %42 = load i32, i32* %i, align 4
  store i32 %42, i32* %c, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.end.26
  br label %sw.epilog

sw.bb.55:                                         ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %43 = load i32, i32* %c, align 4
  %sub = sub i32 %43, 48
  store i32 %sub, i32* %i56, align 4
  store i32 0, i32* %count, align 4
  br label %while.cond.57

while.cond.57:                                    ; preds = %if.end.69, %sw.bb.55
  %44 = load i8*, i8** %str, align 8
  %45 = load i8*, i8** %limit.addr, align 8
  %cmp58 = icmp ult i8* %44, %45
  br i1 %cmp58, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.57
  %46 = load i32, i32* %count, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %count, align 4
  %cmp60 = icmp slt i32 %inc, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.57
  %47 = phi i1 [ false, %while.cond.57 ], [ %cmp60, %land.rhs ]
  br i1 %47, label %while.body.62, label %while.end.74

while.body.62:                                    ; preds = %land.end
  %48 = load i8*, i8** %str, align 8
  %49 = load i8, i8* %48, align 1
  %conv63 = zext i8 %49 to i32
  store i32 %conv63, i32* %c, align 4
  %50 = load i32, i32* %c, align 4
  %cmp64 = icmp ult i32 %50, 48
  br i1 %cmp64, label %if.then.68, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body.62
  %51 = load i32, i32* %c, align 4
  %cmp66 = icmp ugt i32 %51, 55
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %lor.lhs.false, %while.body.62
  br label %while.end.74

if.end.69:                                        ; preds = %lor.lhs.false
  %52 = load i8*, i8** %str, align 8
  %incdec.ptr70 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr70, i8** %str, align 8
  %53 = load i32, i32* %i56, align 4
  %shl71 = shl i32 %53, 3
  %54 = load i32, i32* %c, align 4
  %add72 = add i32 %shl71, %54
  %sub73 = sub i32 %add72, 48
  store i32 %sub73, i32* %i56, align 4
  br label %while.cond.57

while.end.74:                                     ; preds = %if.then.68, %land.end
  %55 = load i32, i32* %i56, align 4
  %conv75 = zext i32 %55 to i64
  %56 = load i32, i32* %i56, align 4
  %conv76 = zext i32 %56 to i64
  %57 = load i64, i64* %mask.addr, align 8
  %and77 = and i64 %conv76, %57
  %cmp78 = icmp ne i64 %conv75, %and77
  br i1 %cmp78, label %if.then.80, label %if.end.84

if.then.80:                                       ; preds = %while.end.74
  %58 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_pedwarn(%struct.cpp_reader* %58, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0))
  %59 = load i64, i64* %mask.addr, align 8
  %60 = load i32, i32* %i56, align 4
  %conv81 = zext i32 %60 to i64
  %and82 = and i64 %conv81, %59
  %conv83 = trunc i64 %and82 to i32
  store i32 %conv83, i32* %i56, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.80, %while.end.74
  %61 = load i32, i32* %i56, align 4
  store i32 %61, i32* %c, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 1, i32* %unknown, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.84, %if.end.54, %sw.bb.20, %if.end.19, %if.end.13, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %62 = load i32, i32* %unknown, align 4
  %tobool85 = icmp ne i32 %62, 0
  br i1 %tobool85, label %if.then.86, label %if.end.95

if.then.86:                                       ; preds = %sw.epilog
  %63 = load i32, i32* %c, align 4
  %and87 = and i32 %63, 255
  %idxprom88 = zext i32 %and87 to i64
  %arrayidx89 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom88
  %64 = load i16, i16* %arrayidx89, align 2
  %conv90 = zext i16 %64 to i32
  %and91 = and i32 %conv90, 172
  %tobool92 = icmp ne i32 %and91, 0
  br i1 %tobool92, label %if.then.93, label %if.else

if.then.93:                                       ; preds = %if.then.86
  %65 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %66 = load i32, i32* %c, align 4
  call void (%struct.cpp_reader*, i8*, ...) @cpp_pedwarn(%struct.cpp_reader* %65, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0), i32 %66)
  br label %if.end.94

if.else:                                          ; preds = %if.then.86
  %67 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %68 = load i32, i32* %c, align 4
  call void (%struct.cpp_reader*, i8*, ...) @cpp_pedwarn(%struct.cpp_reader* %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i32 0, i32 0), i32 %68)
  br label %if.end.94

if.end.94:                                        ; preds = %if.else, %if.then.93
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %sw.epilog
  %69 = load i32, i32* %c, align 4
  %conv96 = zext i32 %69 to i64
  %70 = load i64, i64* %mask.addr, align 8
  %cmp97 = icmp ugt i64 %conv96, %70
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.end.95
  %71 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_pedwarn(%struct.cpp_reader* %71, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.99, %if.end.95
  %72 = load i8*, i8** %str, align 8
  %73 = load i8**, i8*** %pstr.addr, align 8
  store i8* %72, i8** %73, align 8
  %74 = load i32, i32* %c, align 4
  ret i32 %74
}

; Function Attrs: nounwind uwtable
define internal i32 @maybe_read_ucs(%struct.cpp_reader* %pfile, i8** %pstr, i8* %limit, i32* %pc) #0 {
entry:
  %retval = alloca i32, align 4
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %pstr.addr = alloca i8**, align 8
  %limit.addr = alloca i8*, align 8
  %pc.addr = alloca i32*, align 8
  %p = alloca i8*, align 8
  %code = alloca i32, align 4
  %c = alloca i32, align 4
  %length = alloca i32, align 4
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i8** %pstr, i8*** %pstr.addr, align 8
  store i8* %limit, i8** %limit.addr, align 8
  store i32* %pc, i32** %pc.addr, align 8
  %0 = load i8**, i8*** %pstr.addr, align 8
  %1 = load i8*, i8** %0, align 8
  store i8* %1, i8** %p, align 8
  store i32 0, i32* %code, align 4
  %2 = load i32*, i32** %pc.addr, align 8
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* %c, align 4
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %4, i32 0, i32 37
  %cplusplus = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 14
  %5 = load i8, i8* %cplusplus, align 1
  %conv = zext i8 %5 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %6, i32 0, i32 37
  %c99 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts1, i32 0, i32 41
  %7 = load i8, i8* %c99, align 1
  %conv2 = zext i8 %7 to i32
  %tobool3 = icmp ne i32 %conv2, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %8 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts4 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %8, i32 0, i32 37
  %warn_traditional = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts4, i32 0, i32 33
  %9 = load i8, i8* %warn_traditional, align 1
  %tobool5 = icmp ne i8 %9, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %10 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %11 = load i32, i32* %c, align 4
  call void (%struct.cpp_reader*, i8*, ...) @cpp_warning(%struct.cpp_reader* %10, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.110, i32 0, i32 0), i32 %11)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %12 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %12, 117
  %cond = select i1 %cmp, i32 4, i32 8
  store i32 %cond, i32* %length, align 4
  %13 = load i8*, i8** %limit.addr, align 8
  %14 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %15 = load i32, i32* %length, align 4
  %conv9 = zext i32 %15 to i64
  %cmp10 = icmp ult i64 %sub.ptr.sub, %conv9
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end.7
  %16 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.111, i32 0, i32 0))
  %17 = load i8*, i8** %limit.addr, align 8
  store i8* %17, i8** %p, align 8
  br label %if.end.21

if.else:                                          ; preds = %if.end.7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %18 = load i32, i32* %length, align 4
  %tobool13 = icmp ne i32 %18, 0
  br i1 %tobool13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i8*, i8** %p, align 8
  %20 = load i8, i8* %19, align 1
  %conv14 = zext i8 %20 to i32
  store i32 %conv14, i32* %c, align 4
  %21 = load i32, i32* %c, align 4
  %and = and i32 %21, 255
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom
  %22 = load i16, i16* %arrayidx, align 2
  %conv15 = zext i16 %22 to i32
  %and16 = and i32 %conv15, 256
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %for.body
  %23 = load i32, i32* %code, align 4
  %shl = shl i32 %23, 4
  %24 = load i32, i32* %c, align 4
  %call = call i32 @hex_digit_value(i32 %24)
  %add = add i32 %shl, %call
  store i32 %add, i32* %code, align 4
  br label %if.end.20

if.else.19:                                       ; preds = %for.body
  %25 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %26 = load i32, i32* %c, align 4
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %25, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.112, i32 0, i32 0), i32 %26)
  br label %for.end

if.end.20:                                        ; preds = %if.then.18
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %27 = load i32, i32* %length, align 4
  %dec = add i32 %27, -1
  store i32 %dec, i32* %length, align 4
  %28 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %if.else.19, %for.cond
  br label %if.end.21

if.end.21:                                        ; preds = %for.end, %if.then.12
  %29 = load i32, i32* %code, align 4
  %cmp22 = icmp uge i32 %29, 160
  br i1 %cmp22, label %land.lhs.true, label %if.else.33

land.lhs.true:                                    ; preds = %if.end.21
  %30 = load i32, i32* %code, align 4
  %and24 = and i32 %30, -2147483648
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.else.33, label %land.lhs.true.26

land.lhs.true.26:                                 ; preds = %land.lhs.true
  %31 = load i32, i32* %code, align 4
  %cmp27 = icmp uge i32 %31, 55296
  br i1 %cmp27, label %land.lhs.true.29, label %if.then.32

land.lhs.true.29:                                 ; preds = %land.lhs.true.26
  %32 = load i32, i32* %code, align 4
  %cmp30 = icmp ule i32 %32, 57343
  br i1 %cmp30, label %if.else.33, label %if.then.32

if.then.32:                                       ; preds = %land.lhs.true.29, %land.lhs.true.26
  br label %if.end.49

if.else.33:                                       ; preds = %land.lhs.true.29, %land.lhs.true, %if.end.21
  %33 = load i32, i32* %code, align 4
  %cmp34 = icmp eq i32 %33, 36
  br i1 %cmp34, label %if.then.42, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %if.else.33
  %34 = load i32, i32* %code, align 4
  %cmp37 = icmp eq i32 %34, 64
  br i1 %cmp37, label %if.then.42, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %lor.lhs.false.36
  %35 = load i32, i32* %code, align 4
  %cmp40 = icmp eq i32 %35, 96
  br i1 %cmp40, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %lor.lhs.false.39, %lor.lhs.false.36, %if.else.33
  br label %if.end.48

if.else.43:                                       ; preds = %lor.lhs.false.39
  %36 = load i32, i32* %length, align 4
  %cmp44 = icmp eq i32 %36, 0
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.else.43
  %37 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.113, i32 0, i32 0))
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.else.43
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.42
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.32
  %38 = load i8*, i8** %p, align 8
  %39 = load i8**, i8*** %pstr.addr, align 8
  store i8* %38, i8** %39, align 8
  %40 = load i32, i32* %code, align 4
  %41 = load i32*, i32** %pc.addr, align 8
  store i32 %40, i32* %41, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.49, %if.then
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define internal i32 @hex_digit_value(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %conv = trunc i32 %0 to i8
  %idxprom = zext i8 %conv to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @_hex_value, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv1 = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv1, 99
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %c.addr, align 4
  %conv3 = trunc i32 %2 to i8
  %idxprom4 = zext i8 %conv3 to i64
  %arrayidx5 = getelementptr inbounds [256 x i8], [256 x i8]* @_hex_value, i32 0, i64 %idxprom4
  %3 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %3 to i32
  ret i32 %conv6

if.else:                                          ; preds = %entry
  call void @abort() #8
  unreachable
}

; Function Attrs: nounwind uwtable
define i64 @cpp_interpret_charconst(%struct.cpp_reader* %pfile, %struct.cpp_token* %token, i32 %warn_multi, i32 %traditional, i32* %pchars_seen) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %token.addr = alloca %struct.cpp_token*, align 8
  %warn_multi.addr = alloca i32, align 4
  %traditional.addr = alloca i32, align 4
  %pchars_seen.addr = alloca i32*, align 8
  %str = alloca i8*, align 8
  %limit = alloca i8*, align 8
  %chars_seen = alloca i32, align 4
  %width = alloca i32, align 4
  %max_chars = alloca i32, align 4
  %c = alloca i32, align 4
  %mask = alloca i64, align 8
  %result = alloca i64, align 8
  %unsigned_p = alloca i8, align 1
  %nbits = alloca i32, align 4
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.cpp_token* %token, %struct.cpp_token** %token.addr, align 8
  store i32 %warn_multi, i32* %warn_multi.addr, align 4
  store i32 %traditional, i32* %traditional.addr, align 4
  store i32* %pchars_seen, i32** %pchars_seen.addr, align 8
  %0 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %0, i32 0, i32 4
  %str1 = bitcast %union.anon* %val to %struct.cpp_string*
  %text = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str1, i32 0, i32 1
  %1 = load i8*, i8** %text, align 8
  store i8* %1, i8** %str, align 8
  %2 = load i8*, i8** %str, align 8
  %3 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %val2 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %3, i32 0, i32 4
  %str3 = bitcast %union.anon* %val2 to %struct.cpp_string*
  %len = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str3, i32 0, i32 0
  %4 = load i32, i32* %len, align 4
  %idx.ext = zext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  store i8* %add.ptr, i8** %limit, align 8
  store i32 0, i32* %chars_seen, align 4
  store i64 0, i64* %result, align 8
  %5 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %5, i32 0, i32 2
  %bf.load = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load to i32
  %cmp = icmp eq i32 %bf.cast, 58
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 8, i32* %width, align 4
  %6 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %6, i32 0, i32 37
  %signed_char = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 13
  %7 = load i8, i8* %signed_char, align 1
  %conv = zext i8 %7 to i32
  %cmp4 = icmp eq i32 %conv, 0
  %frombool = zext i1 %cmp4 to i8
  store i8 %frombool, i8* %unsigned_p, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 32, i32* %width, align 4
  store i8 0, i8* %unsigned_p, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* %width, align 4
  %cmp6 = icmp ult i32 %8, 64
  br i1 %cmp6, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end
  %9 = load i32, i32* %width, align 4
  %sh_prom = zext i32 %9 to i64
  %shl = shl i64 1, %sh_prom
  %sub = sub i64 %shl, 1
  store i64 %sub, i64* %mask, align 8
  br label %if.end.10

if.else.9:                                        ; preds = %if.end
  store i64 -1, i64* %mask, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.9, %if.then.8
  %10 = load i32, i32* %width, align 4
  %div = udiv i32 64, %10
  store i32 %div, i32* %max_chars, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.30, %if.end.10
  %11 = load i8*, i8** %str, align 8
  %12 = load i8*, i8** %limit, align 8
  %cmp11 = icmp ult i8* %11, %12
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i8*, i8** %str, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %str, align 8
  %14 = load i8, i8* %13, align 1
  %conv13 = zext i8 %14 to i32
  store i32 %conv13, i32* %c, align 4
  %15 = load i32, i32* %c, align 4
  %cmp14 = icmp eq i32 %15, 92
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %while.body
  %16 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %17 = load i8*, i8** %limit, align 8
  %18 = load i64, i64* %mask, align 8
  %19 = load i32, i32* %traditional.addr, align 4
  %call = call i32 @cpp_parse_escape(%struct.cpp_reader* %16, i8** %str, i8* %17, i64 %18, i32 %19)
  store i32 %call, i32* %c, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %while.body
  %20 = load i32, i32* %chars_seen, align 4
  %inc = add i32 %20, 1
  store i32 %inc, i32* %chars_seen, align 4
  %21 = load i32, i32* %max_chars, align 4
  %cmp18 = icmp ule i32 %inc, %21
  br i1 %cmp18, label %if.then.20, label %if.end.30

if.then.20:                                       ; preds = %if.end.17
  %22 = load i32, i32* %width, align 4
  %cmp21 = icmp ult i32 %22, 64
  br i1 %cmp21, label %if.then.23, label %if.else.27

if.then.23:                                       ; preds = %if.then.20
  %23 = load i64, i64* %result, align 8
  %24 = load i32, i32* %width, align 4
  %sh_prom24 = zext i32 %24 to i64
  %shl25 = shl i64 %23, %sh_prom24
  %25 = load i32, i32* %c, align 4
  %conv26 = zext i32 %25 to i64
  %26 = load i64, i64* %mask, align 8
  %and = and i64 %conv26, %26
  %or = or i64 %shl25, %and
  store i64 %or, i64* %result, align 8
  br label %if.end.29

if.else.27:                                       ; preds = %if.then.20
  %27 = load i32, i32* %c, align 4
  %conv28 = zext i32 %27 to i64
  store i64 %conv28, i64* %result, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.27, %if.then.23
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end.17
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %28 = load i32, i32* %chars_seen, align 4
  %cmp31 = icmp eq i32 %28, 0
  br i1 %cmp31, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %while.end
  %29 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.46

if.else.34:                                       ; preds = %while.end
  %30 = load i32, i32* %chars_seen, align 4
  %31 = load i32, i32* %max_chars, align 4
  %cmp35 = icmp ugt i32 %30, %31
  br i1 %cmp35, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %if.else.34
  %32 = load i32, i32* %max_chars, align 4
  store i32 %32, i32* %chars_seen, align 4
  %33 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_warning(%struct.cpp_reader* %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.45

if.else.38:                                       ; preds = %if.else.34
  %34 = load i32, i32* %chars_seen, align 4
  %cmp39 = icmp ugt i32 %34, 1
  br i1 %cmp39, label %land.lhs.true, label %if.end.44

land.lhs.true:                                    ; preds = %if.else.38
  %35 = load i32, i32* %traditional.addr, align 4
  %tobool = icmp ne i32 %35, 0
  br i1 %tobool, label %if.end.44, label %land.lhs.true.41

land.lhs.true.41:                                 ; preds = %land.lhs.true
  %36 = load i32, i32* %warn_multi.addr, align 4
  %tobool42 = icmp ne i32 %36, 0
  br i1 %tobool42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %land.lhs.true.41
  %37 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_warning(%struct.cpp_reader* %37, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %land.lhs.true.41, %land.lhs.true, %if.else.38
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.37
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.33
  %38 = load i32, i32* %chars_seen, align 4
  %tobool47 = icmp ne i32 %38, 0
  br i1 %tobool47, label %if.then.48, label %if.end.64

if.then.48:                                       ; preds = %if.end.46
  %39 = load i32, i32* %chars_seen, align 4
  %40 = load i32, i32* %width, align 4
  %mul = mul i32 %39, %40
  store i32 %mul, i32* %nbits, align 4
  %41 = load i32, i32* %nbits, align 4
  %sub49 = sub i32 64, %41
  %sh_prom50 = zext i32 %sub49 to i64
  %shr = lshr i64 -1, %sh_prom50
  store i64 %shr, i64* %mask, align 8
  %42 = load i8, i8* %unsigned_p, align 1
  %tobool51 = trunc i8 %42 to i1
  br i1 %tobool51, label %if.then.59, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.48
  %43 = load i64, i64* %result, align 8
  %44 = load i32, i32* %nbits, align 4
  %sub53 = sub i32 %44, 1
  %sh_prom54 = zext i32 %sub53 to i64
  %shr55 = ashr i64 %43, %sh_prom54
  %and56 = and i64 %shr55, 1
  %cmp57 = icmp eq i64 %and56, 0
  br i1 %cmp57, label %if.then.59, label %if.else.61

if.then.59:                                       ; preds = %lor.lhs.false, %if.then.48
  %45 = load i64, i64* %mask, align 8
  %46 = load i64, i64* %result, align 8
  %and60 = and i64 %46, %45
  store i64 %and60, i64* %result, align 8
  br label %if.end.63

if.else.61:                                       ; preds = %lor.lhs.false
  %47 = load i64, i64* %mask, align 8
  %neg = xor i64 %47, -1
  %48 = load i64, i64* %result, align 8
  %or62 = or i64 %48, %neg
  store i64 %or62, i64* %result, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.61, %if.then.59
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.end.46
  %49 = load i32, i32* %chars_seen, align 4
  %50 = load i32*, i32** %pchars_seen.addr, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i64, i64* %result, align 8
  ret i64 %51
}

; Function Attrs: nounwind uwtable
define void @_cpp_release_buff(%struct.cpp_reader* %pfile, %struct._cpp_buff* %buff) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %buff.addr = alloca %struct._cpp_buff*, align 8
  %end = alloca %struct._cpp_buff*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct._cpp_buff* %buff, %struct._cpp_buff** %buff.addr, align 8
  %0 = load %struct._cpp_buff*, %struct._cpp_buff** %buff.addr, align 8
  store %struct._cpp_buff* %0, %struct._cpp_buff** %end, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct._cpp_buff*, %struct._cpp_buff** %end, align 8
  %next = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %1, i32 0, i32 0
  %2 = load %struct._cpp_buff*, %struct._cpp_buff** %next, align 8
  %tobool = icmp ne %struct._cpp_buff* %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._cpp_buff*, %struct._cpp_buff** %end, align 8
  %next1 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %3, i32 0, i32 0
  %4 = load %struct._cpp_buff*, %struct._cpp_buff** %next1, align 8
  store %struct._cpp_buff* %4, %struct._cpp_buff** %end, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %free_buffs = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %5, i32 0, i32 8
  %6 = load %struct._cpp_buff*, %struct._cpp_buff** %free_buffs, align 8
  %7 = load %struct._cpp_buff*, %struct._cpp_buff** %end, align 8
  %next2 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %7, i32 0, i32 0
  store %struct._cpp_buff* %6, %struct._cpp_buff** %next2, align 8
  %8 = load %struct._cpp_buff*, %struct._cpp_buff** %buff.addr, align 8
  %9 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %free_buffs3 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %9, i32 0, i32 8
  store %struct._cpp_buff* %8, %struct._cpp_buff** %free_buffs3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._cpp_buff* @_cpp_get_buff(%struct.cpp_reader* %pfile, i64 %min_size) #0 {
entry:
  %retval = alloca %struct._cpp_buff*, align 8
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %min_size.addr = alloca i64, align 8
  %result = alloca %struct._cpp_buff*, align 8
  %p = alloca %struct._cpp_buff**, align 8
  %size = alloca i64, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i64 %min_size, i64* %min_size.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %free_buffs = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 8
  store %struct._cpp_buff** %free_buffs, %struct._cpp_buff*** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct._cpp_buff**, %struct._cpp_buff*** %p, align 8
  %2 = load %struct._cpp_buff*, %struct._cpp_buff** %1, align 8
  %cmp = icmp eq %struct._cpp_buff* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  %3 = load i64, i64* %min_size.addr, align 8
  %call = call %struct._cpp_buff* @new_buff(i64 %3)
  store %struct._cpp_buff* %call, %struct._cpp_buff** %retval
  br label %return

if.end:                                           ; preds = %for.cond
  %4 = load %struct._cpp_buff**, %struct._cpp_buff*** %p, align 8
  %5 = load %struct._cpp_buff*, %struct._cpp_buff** %4, align 8
  store %struct._cpp_buff* %5, %struct._cpp_buff** %result, align 8
  %6 = load %struct._cpp_buff*, %struct._cpp_buff** %result, align 8
  %limit = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %6, i32 0, i32 3
  %7 = load i8*, i8** %limit, align 8
  %8 = load %struct._cpp_buff*, %struct._cpp_buff** %result, align 8
  %base = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %8, i32 0, i32 1
  %9 = load i8*, i8** %base, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %size, align 8
  %10 = load i64, i64* %size, align 8
  %11 = load i64, i64* %min_size.addr, align 8
  %cmp1 = icmp uge i64 %10, %11
  br i1 %cmp1, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size, align 8
  %13 = load i64, i64* %min_size.addr, align 8
  %mul = mul i64 %13, 3
  %div = udiv i64 %mul, 2
  %add = add i64 8000, %div
  %cmp2 = icmp ule i64 %12, %add
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  br label %for.end

if.end.4:                                         ; preds = %land.lhs.true, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.4
  %14 = load %struct._cpp_buff**, %struct._cpp_buff*** %p, align 8
  %15 = load %struct._cpp_buff*, %struct._cpp_buff** %14, align 8
  %next = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %15, i32 0, i32 0
  store %struct._cpp_buff** %next, %struct._cpp_buff*** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.3
  %16 = load %struct._cpp_buff*, %struct._cpp_buff** %result, align 8
  %next5 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %16, i32 0, i32 0
  %17 = load %struct._cpp_buff*, %struct._cpp_buff** %next5, align 8
  %18 = load %struct._cpp_buff**, %struct._cpp_buff*** %p, align 8
  store %struct._cpp_buff* %17, %struct._cpp_buff** %18, align 8
  %19 = load %struct._cpp_buff*, %struct._cpp_buff** %result, align 8
  %next6 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %19, i32 0, i32 0
  store %struct._cpp_buff* null, %struct._cpp_buff** %next6, align 8
  %20 = load %struct._cpp_buff*, %struct._cpp_buff** %result, align 8
  %base7 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %20, i32 0, i32 1
  %21 = load i8*, i8** %base7, align 8
  %22 = load %struct._cpp_buff*, %struct._cpp_buff** %result, align 8
  %cur = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %22, i32 0, i32 2
  store i8* %21, i8** %cur, align 8
  %23 = load %struct._cpp_buff*, %struct._cpp_buff** %result, align 8
  store %struct._cpp_buff* %23, %struct._cpp_buff** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %24 = load %struct._cpp_buff*, %struct._cpp_buff** %retval
  ret %struct._cpp_buff* %24
}

; Function Attrs: nounwind uwtable
define internal %struct._cpp_buff* @new_buff(i64 %len) #0 {
entry:
  %len.addr = alloca i64, align 8
  %result = alloca %struct._cpp_buff*, align 8
  %base = alloca i8*, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %0, 8000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 8000, i64* %len.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* %len.addr, align 8
  %add = add i64 %1, 7
  %and = and i64 %add, -8
  store i64 %and, i64* %len.addr, align 8
  %2 = load i64, i64* %len.addr, align 8
  %add1 = add i64 %2, 32
  %call = call noalias i8* @xmalloc(i64 %add1)
  store i8* %call, i8** %base, align 8
  %3 = load i8*, i8** %base, align 8
  %4 = load i64, i64* %len.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4
  %5 = bitcast i8* %add.ptr to %struct._cpp_buff*
  store %struct._cpp_buff* %5, %struct._cpp_buff** %result, align 8
  %6 = load i8*, i8** %base, align 8
  %7 = load %struct._cpp_buff*, %struct._cpp_buff** %result, align 8
  %base2 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %7, i32 0, i32 1
  store i8* %6, i8** %base2, align 8
  %8 = load i8*, i8** %base, align 8
  %9 = load %struct._cpp_buff*, %struct._cpp_buff** %result, align 8
  %cur = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %9, i32 0, i32 2
  store i8* %8, i8** %cur, align 8
  %10 = load i8*, i8** %base, align 8
  %11 = load i64, i64* %len.addr, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %10, i64 %11
  %12 = load %struct._cpp_buff*, %struct._cpp_buff** %result, align 8
  %limit = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %12, i32 0, i32 3
  store i8* %add.ptr3, i8** %limit, align 8
  %13 = load %struct._cpp_buff*, %struct._cpp_buff** %result, align 8
  %next = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %13, i32 0, i32 0
  store %struct._cpp_buff* null, %struct._cpp_buff** %next, align 8
  %14 = load %struct._cpp_buff*, %struct._cpp_buff** %result, align 8
  ret %struct._cpp_buff* %14
}

; Function Attrs: nounwind uwtable
define %struct._cpp_buff* @_cpp_append_extend_buff(%struct.cpp_reader* %pfile, %struct._cpp_buff* %buff, i64 %min_extra) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %buff.addr = alloca %struct._cpp_buff*, align 8
  %min_extra.addr = alloca i64, align 8
  %size = alloca i64, align 8
  %new_buff = alloca %struct._cpp_buff*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct._cpp_buff* %buff, %struct._cpp_buff** %buff.addr, align 8
  store i64 %min_extra, i64* %min_extra.addr, align 8
  %0 = load i64, i64* %min_extra.addr, align 8
  %1 = load %struct._cpp_buff*, %struct._cpp_buff** %buff.addr, align 8
  %limit = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %1, i32 0, i32 3
  %2 = load i8*, i8** %limit, align 8
  %3 = load %struct._cpp_buff*, %struct._cpp_buff** %buff.addr, align 8
  %cur = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %3, i32 0, i32 2
  %4 = load i8*, i8** %cur, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %mul = mul nsw i64 %sub.ptr.sub, 2
  %add = add i64 %0, %mul
  store i64 %add, i64* %size, align 8
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %6 = load i64, i64* %size, align 8
  %call = call %struct._cpp_buff* @_cpp_get_buff(%struct.cpp_reader* %5, i64 %6)
  store %struct._cpp_buff* %call, %struct._cpp_buff** %new_buff, align 8
  %7 = load %struct._cpp_buff*, %struct._cpp_buff** %new_buff, align 8
  %8 = load %struct._cpp_buff*, %struct._cpp_buff** %buff.addr, align 8
  %next = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %8, i32 0, i32 0
  store %struct._cpp_buff* %7, %struct._cpp_buff** %next, align 8
  %9 = load %struct._cpp_buff*, %struct._cpp_buff** %new_buff, align 8
  %base = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %9, i32 0, i32 1
  %10 = load i8*, i8** %base, align 8
  %11 = load %struct._cpp_buff*, %struct._cpp_buff** %buff.addr, align 8
  %cur1 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %11, i32 0, i32 2
  %12 = load i8*, i8** %cur1, align 8
  %13 = load %struct._cpp_buff*, %struct._cpp_buff** %buff.addr, align 8
  %limit2 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %13, i32 0, i32 3
  %14 = load i8*, i8** %limit2, align 8
  %15 = load %struct._cpp_buff*, %struct._cpp_buff** %buff.addr, align 8
  %cur3 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %15, i32 0, i32 2
  %16 = load i8*, i8** %cur3, align 8
  %sub.ptr.lhs.cast4 = ptrtoint i8* %14 to i64
  %sub.ptr.rhs.cast5 = ptrtoint i8* %16 to i64
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %12, i64 %sub.ptr.sub6, i32 1, i1 false)
  %17 = load %struct._cpp_buff*, %struct._cpp_buff** %new_buff, align 8
  ret %struct._cpp_buff* %17
}

; Function Attrs: nounwind uwtable
define void @_cpp_extend_buff(%struct.cpp_reader* %pfile, %struct._cpp_buff** %pbuff, i64 %min_extra) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %pbuff.addr = alloca %struct._cpp_buff**, align 8
  %min_extra.addr = alloca i64, align 8
  %new_buff = alloca %struct._cpp_buff*, align 8
  %old_buff = alloca %struct._cpp_buff*, align 8
  %size = alloca i64, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct._cpp_buff** %pbuff, %struct._cpp_buff*** %pbuff.addr, align 8
  store i64 %min_extra, i64* %min_extra.addr, align 8
  %0 = load %struct._cpp_buff**, %struct._cpp_buff*** %pbuff.addr, align 8
  %1 = load %struct._cpp_buff*, %struct._cpp_buff** %0, align 8
  store %struct._cpp_buff* %1, %struct._cpp_buff** %old_buff, align 8
  %2 = load i64, i64* %min_extra.addr, align 8
  %3 = load %struct._cpp_buff*, %struct._cpp_buff** %old_buff, align 8
  %limit = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %3, i32 0, i32 3
  %4 = load i8*, i8** %limit, align 8
  %5 = load %struct._cpp_buff*, %struct._cpp_buff** %old_buff, align 8
  %cur = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %5, i32 0, i32 2
  %6 = load i8*, i8** %cur, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %mul = mul nsw i64 %sub.ptr.sub, 2
  %add = add i64 %2, %mul
  store i64 %add, i64* %size, align 8
  %7 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %8 = load i64, i64* %size, align 8
  %call = call %struct._cpp_buff* @_cpp_get_buff(%struct.cpp_reader* %7, i64 %8)
  store %struct._cpp_buff* %call, %struct._cpp_buff** %new_buff, align 8
  %9 = load %struct._cpp_buff*, %struct._cpp_buff** %new_buff, align 8
  %base = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %9, i32 0, i32 1
  %10 = load i8*, i8** %base, align 8
  %11 = load %struct._cpp_buff*, %struct._cpp_buff** %old_buff, align 8
  %cur1 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %11, i32 0, i32 2
  %12 = load i8*, i8** %cur1, align 8
  %13 = load %struct._cpp_buff*, %struct._cpp_buff** %old_buff, align 8
  %limit2 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %13, i32 0, i32 3
  %14 = load i8*, i8** %limit2, align 8
  %15 = load %struct._cpp_buff*, %struct._cpp_buff** %old_buff, align 8
  %cur3 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %15, i32 0, i32 2
  %16 = load i8*, i8** %cur3, align 8
  %sub.ptr.lhs.cast4 = ptrtoint i8* %14 to i64
  %sub.ptr.rhs.cast5 = ptrtoint i8* %16 to i64
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %12, i64 %sub.ptr.sub6, i32 1, i1 false)
  %17 = load %struct._cpp_buff*, %struct._cpp_buff** %old_buff, align 8
  %18 = load %struct._cpp_buff*, %struct._cpp_buff** %new_buff, align 8
  %next = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %18, i32 0, i32 0
  store %struct._cpp_buff* %17, %struct._cpp_buff** %next, align 8
  %19 = load %struct._cpp_buff*, %struct._cpp_buff** %new_buff, align 8
  %20 = load %struct._cpp_buff**, %struct._cpp_buff*** %pbuff.addr, align 8
  store %struct._cpp_buff* %19, %struct._cpp_buff** %20, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @_cpp_free_buff(%struct._cpp_buff* %buff) #0 {
entry:
  %buff.addr = alloca %struct._cpp_buff*, align 8
  %next = alloca %struct._cpp_buff*, align 8
  store %struct._cpp_buff* %buff, %struct._cpp_buff** %buff.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct._cpp_buff*, %struct._cpp_buff** %buff.addr, align 8
  %tobool = icmp ne %struct._cpp_buff* %0, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct._cpp_buff*, %struct._cpp_buff** %buff.addr, align 8
  %next1 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %1, i32 0, i32 0
  %2 = load %struct._cpp_buff*, %struct._cpp_buff** %next1, align 8
  store %struct._cpp_buff* %2, %struct._cpp_buff** %next, align 8
  %3 = load %struct._cpp_buff*, %struct._cpp_buff** %buff.addr, align 8
  %base = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %3, i32 0, i32 1
  %4 = load i8*, i8** %base, align 8
  call void @free(i8* %4) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct._cpp_buff*, %struct._cpp_buff** %next, align 8
  store %struct._cpp_buff* %5, %struct._cpp_buff** %buff.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: nounwind uwtable
define i8* @_cpp_aligned_alloc(%struct.cpp_reader* %pfile, i64 %len) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %len.addr = alloca i64, align 8
  %buff = alloca %struct._cpp_buff*, align 8
  %result = alloca i8*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %a_buff = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 6
  %1 = load %struct._cpp_buff*, %struct._cpp_buff** %a_buff, align 8
  store %struct._cpp_buff* %1, %struct._cpp_buff** %buff, align 8
  %2 = load %struct._cpp_buff*, %struct._cpp_buff** %buff, align 8
  %cur = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %2, i32 0, i32 2
  %3 = load i8*, i8** %cur, align 8
  store i8* %3, i8** %result, align 8
  %4 = load i64, i64* %len.addr, align 8
  %5 = load %struct._cpp_buff*, %struct._cpp_buff** %buff, align 8
  %limit = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %5, i32 0, i32 3
  %6 = load i8*, i8** %limit, align 8
  %7 = load i8*, i8** %result, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp ugt i64 %4, %sub.ptr.sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %9 = load i64, i64* %len.addr, align 8
  %call = call %struct._cpp_buff* @_cpp_get_buff(%struct.cpp_reader* %8, i64 %9)
  store %struct._cpp_buff* %call, %struct._cpp_buff** %buff, align 8
  %10 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %a_buff1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %10, i32 0, i32 6
  %11 = load %struct._cpp_buff*, %struct._cpp_buff** %a_buff1, align 8
  %12 = load %struct._cpp_buff*, %struct._cpp_buff** %buff, align 8
  %next = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %12, i32 0, i32 0
  store %struct._cpp_buff* %11, %struct._cpp_buff** %next, align 8
  %13 = load %struct._cpp_buff*, %struct._cpp_buff** %buff, align 8
  %14 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %a_buff2 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %14, i32 0, i32 6
  store %struct._cpp_buff* %13, %struct._cpp_buff** %a_buff2, align 8
  %15 = load %struct._cpp_buff*, %struct._cpp_buff** %buff, align 8
  %cur3 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %15, i32 0, i32 2
  %16 = load i8*, i8** %cur3, align 8
  store i8* %16, i8** %result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load i8*, i8** %result, align 8
  %18 = load i64, i64* %len.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %18
  %19 = load %struct._cpp_buff*, %struct._cpp_buff** %buff, align 8
  %cur4 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %19, i32 0, i32 2
  store i8* %add.ptr, i8** %cur4, align 8
  %20 = load i8*, i8** %result, align 8
  ret i8* %20
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @adjust_column(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %buffer = alloca %struct.cpp_buffer*, align 8
  %col = alloca i32, align 4
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 0
  %1 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8
  store %struct.cpp_buffer* %1, %struct.cpp_buffer** %buffer, align 8
  %2 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %2, i32 0, i32 0
  %3 = load i8*, i8** %cur, align 8
  %4 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %line_base = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %4, i32 0, i32 3
  %5 = load i8*, i8** %line_base, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %6 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %col_adjust = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %6, i32 0, i32 8
  %7 = load i32, i32* %col_adjust, align 4
  %conv = zext i32 %7 to i64
  %add = add nsw i64 %sub.ptr.sub, %conv
  %sub = sub nsw i64 %add, 1
  %conv2 = trunc i64 %sub to i32
  store i32 %conv2, i32* %col, align 4
  %8 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %8, i32 0, i32 37
  %tabstop = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 2
  %9 = load i32, i32* %tabstop, align 4
  %10 = load i32, i32* %col, align 4
  %11 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts3 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %11, i32 0, i32 37
  %tabstop4 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts3, i32 0, i32 2
  %12 = load i32, i32* %tabstop4, align 4
  %rem = urem i32 %10, %12
  %sub5 = sub i32 %9, %rem
  %sub6 = sub i32 %sub5, 1
  %13 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %col_adjust7 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %13, i32 0, i32 8
  %14 = load i32, i32* %col_adjust7, align 4
  %add8 = add i32 %14, %sub6
  store i32 %add8, i32* %col_adjust7, align 4
  ret void
}

declare void @cpp_pedwarn_with_line(%struct.cpp_reader*, i32, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @trigraph_p(%struct.cpp_reader* %pfile) #0 {
entry:
  %retval = alloca i1, align 1
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %buffer = alloca %struct.cpp_buffer*, align 8
  %from_char = alloca i32, align 4
  %accept = alloca i8, align 1
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 0
  %1 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8
  store %struct.cpp_buffer* %1, %struct.cpp_buffer** %buffer, align 8
  %2 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %2, i32 0, i32 0
  %3 = load i8*, i8** %cur, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  store i32 %conv, i32* %from_char, align 4
  %5 = load i32, i32* %from_char, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [256 x i8], [256 x i8]* @_cpp_trigraph_map, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx2, align 1
  %tobool = icmp ne i8 %6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %7, i32 0, i32 37
  %trigraphs = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 18
  %8 = load i8, i8* %trigraphs, align 1
  %tobool3 = icmp ne i8 %8, 0
  %frombool = zext i1 %tobool3 to i8
  store i8 %frombool, i8* %accept, align 1
  %9 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts4 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %9, i32 0, i32 37
  %warn_trigraphs = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts4, i32 0, i32 31
  %10 = load i8, i8* %warn_trigraphs, align 1
  %conv5 = zext i8 %10 to i32
  %tobool6 = icmp ne i32 %conv5, 0
  br i1 %tobool6, label %land.lhs.true, label %if.end.35

land.lhs.true:                                    ; preds = %if.end
  %11 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %11, i32 0, i32 1
  %lexing_comment = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state, i32 0, i32 4
  %12 = load i8, i8* %lexing_comment, align 1
  %tobool7 = icmp ne i8 %12, 0
  br i1 %tobool7, label %if.end.35, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true
  %13 = load i8, i8* %accept, align 1
  %tobool9 = trunc i8 %13 to i1
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then.8
  %14 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %15 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %line = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %15, i32 0, i32 4
  %16 = load i32, i32* %line, align 4
  %17 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur11 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %17, i32 0, i32 0
  %18 = load i8*, i8** %cur11, align 8
  %19 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %line_base = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %19, i32 0, i32 3
  %20 = load i8*, i8** %line_base, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %20 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %21 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %col_adjust = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %21, i32 0, i32 8
  %22 = load i32, i32* %col_adjust, align 4
  %conv12 = zext i32 %22 to i64
  %add = add nsw i64 %sub.ptr.sub, %conv12
  %sub = sub nsw i64 %add, 1
  %conv13 = trunc i64 %sub to i32
  %23 = load i32, i32* %from_char, align 4
  %24 = load i32, i32* %from_char, align 4
  %idxprom14 = sext i32 %24 to i64
  %arrayidx15 = getelementptr inbounds [256 x i8], [256 x i8]* @_cpp_trigraph_map, i32 0, i64 %idxprom14
  %25 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %25 to i32
  call void (%struct.cpp_reader*, i32, i32, i8*, ...) @cpp_warning_with_line(%struct.cpp_reader* %14, i32 %16, i32 %conv13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i32 0, i32 0), i32 %23, i32 %conv16)
  br label %if.end.34

if.else:                                          ; preds = %if.then.8
  %26 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur17 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %26, i32 0, i32 0
  %27 = load i8*, i8** %cur17, align 8
  %28 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %last_Wtrigraphs = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %28, i32 0, i32 10
  %29 = load i8*, i8** %last_Wtrigraphs, align 8
  %cmp = icmp ne i8* %27, %29
  br i1 %cmp, label %if.then.19, label %if.end.33

if.then.19:                                       ; preds = %if.else
  %30 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur20 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %30, i32 0, i32 0
  %31 = load i8*, i8** %cur20, align 8
  %32 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %last_Wtrigraphs21 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %32, i32 0, i32 10
  store i8* %31, i8** %last_Wtrigraphs21, align 8
  %33 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %34 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %line22 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %34, i32 0, i32 4
  %35 = load i32, i32* %line22, align 4
  %36 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur23 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %36, i32 0, i32 0
  %37 = load i8*, i8** %cur23, align 8
  %38 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %line_base24 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %38, i32 0, i32 3
  %39 = load i8*, i8** %line_base24, align 8
  %sub.ptr.lhs.cast25 = ptrtoint i8* %37 to i64
  %sub.ptr.rhs.cast26 = ptrtoint i8* %39 to i64
  %sub.ptr.sub27 = sub i64 %sub.ptr.lhs.cast25, %sub.ptr.rhs.cast26
  %40 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %col_adjust28 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %40, i32 0, i32 8
  %41 = load i32, i32* %col_adjust28, align 4
  %conv29 = zext i32 %41 to i64
  %add30 = add nsw i64 %sub.ptr.sub27, %conv29
  %sub31 = sub nsw i64 %add30, 1
  %conv32 = trunc i64 %sub31 to i32
  %42 = load i32, i32* %from_char, align 4
  call void (%struct.cpp_reader*, i32, i32, i8*, ...) @cpp_warning_with_line(%struct.cpp_reader* %33, i32 %35, i32 %conv32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i32 0, i32 0), i32 %42)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.19, %if.else
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.10
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %land.lhs.true, %if.end
  %43 = load i8, i8* %accept, align 1
  %tobool36 = trunc i8 %43 to i1
  store i1 %tobool36, i1* %retval
  br label %return

return:                                           ; preds = %if.end.35, %if.then
  %44 = load i1, i1* %retval
  ret i1 %44
}

declare void @cpp_warning_with_line(%struct.cpp_reader*, i32, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @unescaped_terminator_p(%struct.cpp_reader* %pfile, i8* %dest) #0 {
entry:
  %retval = alloca i32, align 4
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %dest.addr = alloca i8*, align 8
  %start = alloca i8*, align 8
  %temp = alloca i8*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 1
  %angled_headers = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state, i32 0, i32 2
  %1 = load i8, i8* %angled_headers, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %u_buff = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %2, i32 0, i32 7
  %3 = load %struct._cpp_buff*, %struct._cpp_buff** %u_buff, align 8
  %cur = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %3, i32 0, i32 2
  %4 = load i8*, i8** %cur, align 8
  store i8* %4, i8** %start, align 8
  %5 = load i8*, i8** %dest.addr, align 8
  store i8* %5, i8** %temp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i8*, i8** %temp, align 8
  %7 = load i8*, i8** %start, align 8
  %cmp = icmp ugt i8* %6, %7
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %8 = load i8*, i8** %temp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 -1
  %9 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %cmp1 = icmp eq i32 %conv, 92
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i8*, i8** %temp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 -1
  store i8* %incdec.ptr, i8** %temp, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %12 = load i8*, i8** %dest.addr, align 8
  %13 = load i8*, i8** %temp, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %and = and i64 %sub.ptr.sub, 1
  %cmp3 = icmp eq i64 %and, 0
  %conv4 = zext i1 %cmp3 to i32
  store i32 %conv4, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal void @unterminated(%struct.cpp_reader* %pfile, i32 %term) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %term.addr = alloca i32, align 4
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i32 %term, i32* %term.addr, align 4
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %1 = load i32, i32* %term.addr, align 4
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.30, i32 0, i32 0), i32 %1)
  %2 = load i32, i32* %term.addr, align 4
  %cmp = icmp eq i32 %2, 34
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %mls_line = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %3, i32 0, i32 21
  %4 = load i32, i32* %mls_line, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %land.lhs.true.1, label %if.end

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %mls_line2 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %5, i32 0, i32 21
  %6 = load i32, i32* %mls_line2, align 4
  %7 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %line = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %7, i32 0, i32 4
  %8 = load i32, i32* %line, align 4
  %cmp3 = icmp ne i32 %6, %8
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.1
  %9 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %10 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %mls_line4 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %10, i32 0, i32 21
  %11 = load i32, i32* %mls_line4, align 4
  %12 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %mls_col = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %12, i32 0, i32 22
  %13 = load i32, i32* %mls_col, align 4
  call void (%struct.cpp_reader*, i32, i32, i8*, ...) @cpp_error_with_line(%struct.cpp_reader* %9, i32 %11, i32 %13, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.31, i32 0, i32 0))
  %14 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %mls_line5 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %14, i32 0, i32 21
  store i32 0, i32* %mls_line5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.1, %land.lhs.true, %entry
  ret void
}

declare void @cpp_error_with_line(%struct.cpp_reader*, i32, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal %struct.cpp_hashnode* @parse_identifier_slow(%struct.cpp_reader* %pfile, i8* %cur) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %cur.addr = alloca i8*, align 8
  %buffer = alloca %struct.cpp_buffer*, align 8
  %base = alloca i8*, align 8
  %stack = alloca %struct.obstack*, align 8
  %c = alloca i32, align 4
  %saw_dollar = alloca i32, align 4
  %len = alloca i32, align 4
  %__o = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %__o19 = alloca %struct.obstack*, align 8
  %__o75 = alloca %struct.obstack*, align 8
  %tmp = alloca i32, align 4
  %__o82 = alloca %struct.obstack*, align 8
  %__o1 = alloca %struct.obstack*, align 8
  %value = alloca i8*, align 8
  %tmp127 = alloca i8*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i8* %cur, i8** %cur.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 0
  %1 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8
  store %struct.cpp_buffer* %1, %struct.cpp_buffer** %buffer, align 8
  %2 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur2 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %2, i32 0, i32 0
  %3 = load i8*, i8** %cur2, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 -1
  store i8* %add.ptr, i8** %base, align 8
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %hash_table = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %4, i32 0, i32 36
  %5 = load %struct.ht*, %struct.ht** %hash_table, align 8
  %stack3 = getelementptr inbounds %struct.ht, %struct.ht* %5, i32 0, i32 0
  store %struct.obstack* %stack3, %struct.obstack** %stack, align 8
  store i32 0, i32* %saw_dollar, align 4
  %6 = load %struct.obstack*, %struct.obstack** %stack, align 8
  store %struct.obstack* %6, %struct.obstack** %__o, align 8
  %7 = load i8*, i8** %cur.addr, align 8
  %8 = load i8*, i8** %base, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %__len, align 4
  %9 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %9, i32 0, i32 3
  %10 = load i8*, i8** %next_free, align 8
  %11 = load i32, i32* %__len, align 4
  %idx.ext = sext i32 %11 to i64
  %add.ptr4 = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  %12 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %12, i32 0, i32 4
  %13 = load i8*, i8** %chunk_limit, align 8
  %cmp = icmp ugt i8* %add.ptr4, %13
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %15 = load i32, i32* %__len, align 4
  call void @_obstack_newchunk(%struct.obstack* %14, i32 %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free6 = getelementptr inbounds %struct.obstack, %struct.obstack* %16, i32 0, i32 3
  %17 = load i8*, i8** %next_free6, align 8
  %18 = load i8*, i8** %base, align 8
  %19 = load i32, i32* %__len, align 4
  %conv7 = sext i32 %19 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 %conv7, i32 1, i1 false)
  %20 = load i32, i32* %__len, align 4
  %21 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free8 = getelementptr inbounds %struct.obstack, %struct.obstack* %21, i32 0, i32 3
  %22 = load i8*, i8** %next_free8, align 8
  %idx.ext9 = sext i32 %20 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %22, i64 %idx.ext9
  store i8* %add.ptr10, i8** %next_free8, align 8
  %23 = load i8*, i8** %cur.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %cur.addr, align 8
  %24 = load i8, i8* %23, align 1
  %conv11 = zext i8 %24 to i32
  store i32 %conv11, i32* %c, align 4
  %25 = load i8*, i8** %cur.addr, align 8
  %26 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur12 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %26, i32 0, i32 0
  store i8* %25, i8** %cur12, align 8
  br label %do.body

do.body:                                          ; preds = %lor.end.60, %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.33, %do.body
  %27 = load i32, i32* %c, align 4
  %and = and i32 %27, 255
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom
  %28 = load i16, i16* %arrayidx, align 2
  %conv13 = zext i16 %28 to i32
  %and14 = and i32 %conv13, 516
  %tobool = icmp ne i32 %and14, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %29 = load i32, i32* %c, align 4
  %cmp15 = icmp eq i32 %29, 36
  br i1 %cmp15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %30 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %30, i32 0, i32 37
  %dollars_in_ident = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 39
  %31 = load i8, i8* %dollars_in_ident, align 1
  %conv17 = zext i8 %31 to i32
  %tobool18 = icmp ne i32 %conv17, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %32 = phi i1 [ false, %lor.rhs ], [ %tobool18, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %while.cond
  %33 = phi i1 [ true, %while.cond ], [ %32, %land.end ]
  br i1 %33, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %34 = load %struct.obstack*, %struct.obstack** %stack, align 8
  store %struct.obstack* %34, %struct.obstack** %__o19, align 8
  %35 = load %struct.obstack*, %struct.obstack** %__o19, align 8
  %next_free20 = getelementptr inbounds %struct.obstack, %struct.obstack* %35, i32 0, i32 3
  %36 = load i8*, i8** %next_free20, align 8
  %add.ptr21 = getelementptr inbounds i8, i8* %36, i64 1
  %37 = load %struct.obstack*, %struct.obstack** %__o19, align 8
  %chunk_limit22 = getelementptr inbounds %struct.obstack, %struct.obstack* %37, i32 0, i32 4
  %38 = load i8*, i8** %chunk_limit22, align 8
  %cmp23 = icmp ugt i8* %add.ptr21, %38
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %while.body
  %39 = load %struct.obstack*, %struct.obstack** %__o19, align 8
  call void @_obstack_newchunk(%struct.obstack* %39, i32 1)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %while.body
  %40 = load i32, i32* %c, align 4
  %conv27 = trunc i32 %40 to i8
  %41 = load %struct.obstack*, %struct.obstack** %__o19, align 8
  %next_free28 = getelementptr inbounds %struct.obstack, %struct.obstack* %41, i32 0, i32 3
  %42 = load i8*, i8** %next_free28, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr29, i8** %next_free28, align 8
  store i8 %conv27, i8* %42, align 1
  %43 = load i32, i32* %c, align 4
  %cmp30 = icmp eq i32 %43, 36
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.26
  %44 = load i32, i32* %saw_dollar, align 4
  %inc = add i32 %44, 1
  store i32 %inc, i32* %saw_dollar, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end.26
  %45 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur34 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %45, i32 0, i32 0
  %46 = load i8*, i8** %cur34, align 8
  %incdec.ptr35 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr35, i8** %cur34, align 8
  %47 = load i8, i8* %46, align 1
  %conv36 = zext i8 %47 to i32
  store i32 %conv36, i32* %c, align 4
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %48 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur37 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %48, i32 0, i32 0
  %49 = load i8*, i8** %cur37, align 8
  %add.ptr38 = getelementptr inbounds i8, i8* %49, i64 -1
  %50 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %backup_to = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %50, i32 0, i32 1
  store i8* %add.ptr38, i8** %backup_to, align 8
  %51 = load i32, i32* %c, align 4
  %cmp39 = icmp ne i32 %51, 63
  br i1 %cmp39, label %land.lhs.true, label %if.end.44

land.lhs.true:                                    ; preds = %while.end
  %52 = load i32, i32* %c, align 4
  %cmp41 = icmp ne i32 %52, 92
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %land.lhs.true
  br label %do.end

if.end.44:                                        ; preds = %land.lhs.true, %while.end
  %53 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call i32 @skip_escaped_newlines(%struct.cpp_reader* %53)
  store i32 %call, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.44
  %54 = load i32, i32* %c, align 4
  %and45 = and i32 %54, 255
  %idxprom46 = zext i32 %and45 to i64
  %arrayidx47 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom46
  %55 = load i16, i16* %arrayidx47, align 2
  %conv48 = zext i16 %55 to i32
  %and49 = and i32 %conv48, 516
  %tobool50 = icmp ne i32 %and49, 0
  br i1 %tobool50, label %lor.end.60, label %lor.rhs.51

lor.rhs.51:                                       ; preds = %do.cond
  %56 = load i32, i32* %c, align 4
  %cmp52 = icmp eq i32 %56, 36
  br i1 %cmp52, label %land.rhs.54, label %land.end.59

land.rhs.54:                                      ; preds = %lor.rhs.51
  %57 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts55 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %57, i32 0, i32 37
  %dollars_in_ident56 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts55, i32 0, i32 39
  %58 = load i8, i8* %dollars_in_ident56, align 1
  %conv57 = zext i8 %58 to i32
  %tobool58 = icmp ne i32 %conv57, 0
  br label %land.end.59

land.end.59:                                      ; preds = %land.rhs.54, %lor.rhs.51
  %59 = phi i1 [ false, %lor.rhs.51 ], [ %tobool58, %land.rhs.54 ]
  br label %lor.end.60

lor.end.60:                                       ; preds = %land.end.59, %do.cond
  %60 = phi i1 [ true, %do.cond ], [ %59, %land.end.59 ]
  br i1 %60, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end.60, %if.then.43
  br label %do.body.61

do.body.61:                                       ; preds = %do.end
  %61 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %backup_to62 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %61, i32 0, i32 1
  %62 = load i8*, i8** %backup_to62, align 8
  %63 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cur63 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %63, i32 0, i32 0
  store i8* %62, i8** %cur63, align 8
  br label %do.end.65

do.end.65:                                        ; preds = %do.body.61
  %64 = load i32, i32* %saw_dollar, align 4
  %tobool66 = icmp ne i32 %64, 0
  br i1 %tobool66, label %land.lhs.true.67, label %if.end.74

land.lhs.true.67:                                 ; preds = %do.end.65
  %65 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts68 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %65, i32 0, i32 37
  %pedantic = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts68, i32 0, i32 42
  %66 = load i8, i8* %pedantic, align 1
  %conv69 = zext i8 %66 to i32
  %tobool70 = icmp ne i32 %conv69, 0
  br i1 %tobool70, label %land.lhs.true.71, label %if.end.74

land.lhs.true.71:                                 ; preds = %land.lhs.true.67
  %67 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %67, i32 0, i32 1
  %skipping = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state, i32 0, i32 1
  %68 = load i8, i8* %skipping, align 1
  %tobool72 = icmp ne i8 %68, 0
  br i1 %tobool72, label %if.end.74, label %if.then.73

if.then.73:                                       ; preds = %land.lhs.true.71
  %69 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_pedwarn(%struct.cpp_reader* %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %land.lhs.true.71, %land.lhs.true.67, %do.end.65
  %70 = load %struct.obstack*, %struct.obstack** %stack, align 8
  store %struct.obstack* %70, %struct.obstack** %__o75, align 8
  %71 = load %struct.obstack*, %struct.obstack** %__o75, align 8
  %next_free76 = getelementptr inbounds %struct.obstack, %struct.obstack* %71, i32 0, i32 3
  %72 = load i8*, i8** %next_free76, align 8
  %73 = load %struct.obstack*, %struct.obstack** %__o75, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %73, i32 0, i32 2
  %74 = load i8*, i8** %object_base, align 8
  %sub.ptr.lhs.cast77 = ptrtoint i8* %72 to i64
  %sub.ptr.rhs.cast78 = ptrtoint i8* %74 to i64
  %sub.ptr.sub79 = sub i64 %sub.ptr.lhs.cast77, %sub.ptr.rhs.cast78
  %conv80 = trunc i64 %sub.ptr.sub79 to i32
  store i32 %conv80, i32* %tmp
  %75 = load i32, i32* %tmp
  store i32 %75, i32* %len, align 4
  %76 = load %struct.obstack*, %struct.obstack** %stack, align 8
  store %struct.obstack* %76, %struct.obstack** %__o82, align 8
  %77 = load %struct.obstack*, %struct.obstack** %__o82, align 8
  %next_free83 = getelementptr inbounds %struct.obstack, %struct.obstack* %77, i32 0, i32 3
  %78 = load i8*, i8** %next_free83, align 8
  %add.ptr84 = getelementptr inbounds i8, i8* %78, i64 1
  %79 = load %struct.obstack*, %struct.obstack** %__o82, align 8
  %chunk_limit85 = getelementptr inbounds %struct.obstack, %struct.obstack* %79, i32 0, i32 4
  %80 = load i8*, i8** %chunk_limit85, align 8
  %cmp86 = icmp ugt i8* %add.ptr84, %80
  br i1 %cmp86, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %if.end.74
  %81 = load %struct.obstack*, %struct.obstack** %__o82, align 8
  call void @_obstack_newchunk(%struct.obstack* %81, i32 1)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.88, %if.end.74
  %82 = load %struct.obstack*, %struct.obstack** %__o82, align 8
  %next_free90 = getelementptr inbounds %struct.obstack, %struct.obstack* %82, i32 0, i32 3
  %83 = load i8*, i8** %next_free90, align 8
  %incdec.ptr91 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %incdec.ptr91, i8** %next_free90, align 8
  store i8 0, i8* %83, align 1
  %84 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %hash_table92 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %84, i32 0, i32 36
  %85 = load %struct.ht*, %struct.ht** %hash_table92, align 8
  %86 = load %struct.obstack*, %struct.obstack** %stack, align 8
  store %struct.obstack* %86, %struct.obstack** %__o1, align 8
  %87 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base95 = getelementptr inbounds %struct.obstack, %struct.obstack* %87, i32 0, i32 2
  %88 = load i8*, i8** %object_base95, align 8
  store i8* %88, i8** %value, align 8
  %89 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free96 = getelementptr inbounds %struct.obstack, %struct.obstack* %89, i32 0, i32 3
  %90 = load i8*, i8** %next_free96, align 8
  %91 = load i8*, i8** %value, align 8
  %cmp97 = icmp eq i8* %90, %91
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.end.89
  %92 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %92, i32 0, i32 10
  %bf.load = load i8, i8* %maybe_empty_object, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %maybe_empty_object, align 8
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.99, %if.end.89
  %93 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free101 = getelementptr inbounds %struct.obstack, %struct.obstack* %93, i32 0, i32 3
  %94 = load i8*, i8** %next_free101, align 8
  %sub.ptr.lhs.cast102 = ptrtoint i8* %94 to i64
  %sub.ptr.sub103 = sub i64 %sub.ptr.lhs.cast102, 0
  %95 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %95, i32 0, i32 6
  %96 = load i32, i32* %alignment_mask, align 4
  %conv104 = sext i32 %96 to i64
  %add = add nsw i64 %sub.ptr.sub103, %conv104
  %97 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask105 = getelementptr inbounds %struct.obstack, %struct.obstack* %97, i32 0, i32 6
  %98 = load i32, i32* %alignment_mask105, align 4
  %neg = xor i32 %98, -1
  %conv106 = sext i32 %neg to i64
  %and107 = and i64 %add, %conv106
  %add.ptr108 = getelementptr inbounds i8, i8* null, i64 %and107
  %99 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free109 = getelementptr inbounds %struct.obstack, %struct.obstack* %99, i32 0, i32 3
  store i8* %add.ptr108, i8** %next_free109, align 8
  %100 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free110 = getelementptr inbounds %struct.obstack, %struct.obstack* %100, i32 0, i32 3
  %101 = load i8*, i8** %next_free110, align 8
  %102 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %102, i32 0, i32 1
  %103 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %104 = bitcast %struct._obstack_chunk* %103 to i8*
  %sub.ptr.lhs.cast111 = ptrtoint i8* %101 to i64
  %sub.ptr.rhs.cast112 = ptrtoint i8* %104 to i64
  %sub.ptr.sub113 = sub i64 %sub.ptr.lhs.cast111, %sub.ptr.rhs.cast112
  %105 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit114 = getelementptr inbounds %struct.obstack, %struct.obstack* %105, i32 0, i32 4
  %106 = load i8*, i8** %chunk_limit114, align 8
  %107 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk115 = getelementptr inbounds %struct.obstack, %struct.obstack* %107, i32 0, i32 1
  %108 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk115, align 8
  %109 = bitcast %struct._obstack_chunk* %108 to i8*
  %sub.ptr.lhs.cast116 = ptrtoint i8* %106 to i64
  %sub.ptr.rhs.cast117 = ptrtoint i8* %109 to i64
  %sub.ptr.sub118 = sub i64 %sub.ptr.lhs.cast116, %sub.ptr.rhs.cast117
  %cmp119 = icmp sgt i64 %sub.ptr.sub113, %sub.ptr.sub118
  br i1 %cmp119, label %if.then.121, label %if.end.124

if.then.121:                                      ; preds = %if.end.100
  %110 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit122 = getelementptr inbounds %struct.obstack, %struct.obstack* %110, i32 0, i32 4
  %111 = load i8*, i8** %chunk_limit122, align 8
  %112 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free123 = getelementptr inbounds %struct.obstack, %struct.obstack* %112, i32 0, i32 3
  store i8* %111, i8** %next_free123, align 8
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.121, %if.end.100
  %113 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free125 = getelementptr inbounds %struct.obstack, %struct.obstack* %113, i32 0, i32 3
  %114 = load i8*, i8** %next_free125, align 8
  %115 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base126 = getelementptr inbounds %struct.obstack, %struct.obstack* %115, i32 0, i32 2
  store i8* %114, i8** %object_base126, align 8
  %116 = load i8*, i8** %value, align 8
  store i8* %116, i8** %tmp127
  %117 = load i8*, i8** %tmp127
  %118 = load i32, i32* %len, align 4
  %call128 = call %struct.ht_identifier* @ht_lookup(%struct.ht* %85, i8* %117, i32 %118, i32 2)
  %119 = bitcast %struct.ht_identifier* %call128 to %struct.cpp_hashnode*
  ret %struct.cpp_hashnode* %119
}

declare %struct.ht_identifier* @ht_lookup(%struct.ht*, i8*, i32, i32) #2

declare void @_obstack_newchunk(%struct.obstack*, i32) #2

; Function Attrs: noreturn nounwind
declare void @abort() #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
