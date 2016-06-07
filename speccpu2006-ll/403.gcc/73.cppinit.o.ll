; ModuleID = 'cppinit.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.cl_option = type { i8*, i8*, i64, i32 }
%struct.lang_flags = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.default_include = type { i8*, i8*, i32, i32 }
%struct.named_op = type { i8*, i32, i32 }
%struct.builtin = type { i8*, i8*, i8, i16, i16 }
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
%struct.cpp_hashnode = type { %struct.ht_identifier, i16, i8, i8, i8, i8, %union.anon.0 }
%struct.ht_identifier = type { i32, i8* }
%union.anon.0 = type { %struct.cpp_macro* }
%struct.cpp_macro = type opaque
%struct.tokenrun = type { %struct.tokenrun*, %struct.tokenrun*, %struct.cpp_token*, %struct.cpp_token* }
%struct.splay_tree_s = type opaque
%struct.cpp_token = type { i32, i16, i8, i8, %union.anon }
%union.anon = type { %struct.cpp_string }
%struct.cpp_string = type { i32, i8* }
%struct.deps = type opaque
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.pragma_entry = type opaque
%struct.cpp_callbacks = type { void (%struct.cpp_reader*, %struct.cpp_token*, i32)*, void (%struct.cpp_reader*, %struct.line_map*)*, void (%struct.cpp_reader*, i32, i8*, %struct.cpp_token*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_string*)*, void (%struct.cpp_reader*, i32)* }
%struct.ht = type { %struct.obstack, %struct.ht_identifier**, %struct.ht_identifier* (%struct.ht*)*, i32, i32, %struct.cpp_reader*, i32, i32 }
%struct.cpp_options = type { i8*, i8*, i32, %struct.cpp_pending*, i8*, %struct.search_path*, %struct.search_path*, %struct.file_name_map_list*, i8*, i32, i8*, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cpp_pending = type { %struct.pending_option*, %struct.pending_option*, %struct.search_path*, %struct.search_path*, %struct.search_path*, %struct.search_path*, %struct.search_path*, %struct.search_path*, %struct.search_path*, %struct.search_path*, %struct.pending_option*, %struct.pending_option*, %struct.pending_option*, %struct.pending_option* }
%struct.pending_option = type { %struct.pending_option*, i8*, void (%struct.cpp_reader*, i8*)* }
%struct.file_name_map_list = type opaque
%struct.spec_nodes = type { %struct.cpp_hashnode*, %struct.cpp_hashnode*, %struct.cpp_hashnode*, %struct.cpp_hashnode*, %struct.cpp_hashnode* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@_cpp_trigraph_map = constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00|\00\00\00\00\00^[]\00\00\00~\00\5C\00\00\00\00\00\00\00\00\00\00\00\00{#}\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [36 x i8] c"#include \22...\22 search starts here:\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"#include <...> search starts here:\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"End of search list.\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"<built-in>\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"<command line>\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"too many filenames. Type %s --help for usage info\00", align 1
@progname = external global i8*, align 8
@cl_options = internal constant [68 x %struct.cl_option] [%struct.cl_option { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.82, i32 0, i32 0), i8* null, i64 1, i32 0 }, %struct.cl_option { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83, i32 0, i32 0), i8* null, i64 1, i32 1 }, %struct.cl_option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0), i8* null, i64 5, i32 2 }, %struct.cl_option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.85, i32 0, i32 0), i8* null, i64 12, i32 3 }, %struct.cl_option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0), i8* null, i64 8, i32 4 }, %struct.cl_option { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.88, i32 0, i32 0), i64 1, i32 5 }, %struct.cl_option { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.89, i32 0, i32 0), i8* null, i64 1, i32 6 }, %struct.cl_option { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.91, i32 0, i32 0), i64 1, i32 7 }, %struct.cl_option { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.92, i32 0, i32 0), i8* null, i64 1, i32 8 }, %struct.cl_option { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.94, i32 0, i32 0), i64 1, i32 9 }, %struct.cl_option { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.95, i32 0, i32 0), i8* null, i64 1, i32 10 }, %struct.cl_option { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.97, i32 0, i32 0), i64 2, i32 11 }, %struct.cl_option { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.97, i32 0, i32 0), i64 2, i32 12 }, %struct.cl_option { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.99, i32 0, i32 0), i8* null, i64 2, i32 13 }, %struct.cl_option { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.100, i32 0, i32 0), i8* null, i64 2, i32 14 }, %struct.cl_option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.97, i32 0, i32 0), i64 3, i32 15 }, %struct.cl_option { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.102, i32 0, i32 0), i8* null, i64 2, i32 16 }, %struct.cl_option { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.104, i32 0, i32 0), i64 2, i32 17 }, %struct.cl_option { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.104, i32 0, i32 0), i64 2, i32 18 }, %struct.cl_option { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.106, i32 0, i32 0), i8* null, i64 1, i32 19 }, %struct.cl_option { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.91, i32 0, i32 0), i64 1, i32 20 }, %struct.cl_option { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.109, i32 0, i32 0), i64 1, i32 21 }, %struct.cl_option { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.109, i32 0, i32 0), i64 1, i32 22 }, %struct.cl_option { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.111, i32 0, i32 0), i8* null, i64 19, i32 23 }, %struct.cl_option { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.112, i32 0, i32 0), i8* null, i64 22, i32 24 }, %struct.cl_option { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0), i8* null, i64 18, i32 25 }, %struct.cl_option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.114, i32 0, i32 0), i8* null, i64 16, i32 26 }, %struct.cl_option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.115, i32 0, i32 0), i8* null, i64 15, i32 27 }, %struct.cl_option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.116, i32 0, i32 0), i8* null, i64 13, i32 28 }, %struct.cl_option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.117, i32 0, i32 0), i8* null, i64 12, i32 29 }, %struct.cl_option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.118, i32 0, i32 0), i8* null, i64 12, i32 30 }, %struct.cl_option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.120, i32 0, i32 0), i64 9, i32 31 }, %struct.cl_option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.121, i32 0, i32 0), i8* null, i64 14, i32 32 }, %struct.cl_option { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.122, i32 0, i32 0), i8* null, i64 1, i32 33 }, %struct.cl_option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.94, i32 0, i32 0), i64 9, i32 34 }, %struct.cl_option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.97, i32 0, i32 0), i64 7, i32 35 }, %struct.cl_option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.97, i32 0, i32 0), i64 7, i32 36 }, %struct.cl_option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.127, i32 0, i32 0), i64 7, i32 37 }, %struct.cl_option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.94, i32 0, i32 0), i64 7, i32 38 }, %struct.cl_option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.94, i32 0, i32 0), i64 11, i32 39 }, %struct.cl_option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.94, i32 0, i32 0), i64 17, i32 40 }, %struct.cl_option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.131, i32 0, i32 0), i8* null, i64 8, i32 41 }, %struct.cl_option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.132, i32 0, i32 0), i8* null, i64 6, i32 42 }, %struct.cl_option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.133, i32 0, i32 0), i8* null, i64 8, i32 43 }, %struct.cl_option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.134, i32 0, i32 0), i8* null, i64 8, i32 44 }, %struct.cl_option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.135, i32 0, i32 0), i8* null, i64 9, i32 45 }, %struct.cl_option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.136, i32 0, i32 0), i8* null, i64 11, i32 46 }, %struct.cl_option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.137, i32 0, i32 0), i8* null, i64 8, i32 47 }, %struct.cl_option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.138, i32 0, i32 0), i8* null, i64 10, i32 48 }, %struct.cl_option { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.97, i32 0, i32 0), i64 1, i32 49 }, %struct.cl_option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.140, i32 0, i32 0), i8* null, i64 8, i32 50 }, %struct.cl_option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.141, i32 0, i32 0), i8* null, i64 15, i32 51 }, %struct.cl_option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.142, i32 0, i32 0), i8* null, i64 5, i32 52 }, %struct.cl_option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.143, i32 0, i32 0), i8* null, i64 9, i32 53 }, %struct.cl_option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.144, i32 0, i32 0), i8* null, i64 7, i32 54 }, %struct.cl_option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.145, i32 0, i32 0), i8* null, i64 7, i32 55 }, %struct.cl_option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.146, i32 0, i32 0), i8* null, i64 7, i32 56 }, %struct.cl_option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.147, i32 0, i32 0), i8* null, i64 9, i32 57 }, %struct.cl_option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.148, i32 0, i32 0), i8* null, i64 9, i32 58 }, %struct.cl_option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.149, i32 0, i32 0), i8* null, i64 9, i32 59 }, %struct.cl_option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.150, i32 0, i32 0), i8* null, i64 16, i32 60 }, %struct.cl_option { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.151, i32 0, i32 0), i8* null, i64 18, i32 61 }, %struct.cl_option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.152, i32 0, i32 0), i8* null, i64 16, i32 62 }, %struct.cl_option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.153, i32 0, i32 0), i8* null, i64 16, i32 63 }, %struct.cl_option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.154, i32 0, i32 0), i8* null, i64 9, i32 64 }, %struct.cl_option { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.155, i32 0, i32 0), i8* null, i64 1, i32 65 }, %struct.cl_option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.156, i32 0, i32 0), i8* null, i64 7, i32 66 }, %struct.cl_option { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.80, i32 0, i32 0), i8* null, i64 1, i32 67 }], align 16
@.str.7 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"output filename specified twice\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"-I- specified twice\00", align 1
@cpp_GCC_INCLUDE_DIR_len = external constant i64, align 8
@cpp_GCC_INCLUDE_DIR = external constant [0 x i8], align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"-Wall\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"-Wtraditional\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"-Wtrigraphs\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"-Wcomment\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"-Wcomments\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"-Wundef\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"-Wimport\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"-Werror\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"-Wsystem-headers\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"-Wno-traditional\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"-Wno-trigraphs\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"-Wno-comment\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"-Wno-comments\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"-Wno-undef\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"-Wno-import\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"-Wno-error\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"-Wno-system-headers\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"GNU CPP version %s (cpplib)\00", align 1
@version_string = external constant i8*, align 8
@.str.30 = private unnamed_addr constant [20 x i8] c" (x86-64 Linux/ELF)\00", align 1
@.str.31 = private unnamed_addr constant [47 x i8] c"you must additionally specify either -M or -MM\00", align 1
@init_library.initialized = internal global i32 0, align 4
@lang_defaults = internal constant [10 x %struct.lang_flags] [%struct.lang_flags { i8 0, i8 0, i8 0, i8 1, i8 0, i8 1, i8 1, i8 1 }, %struct.lang_flags { i8 1, i8 0, i8 0, i8 1, i8 0, i8 1, i8 1, i8 1 }, %struct.lang_flags { i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0 }, %struct.lang_flags { i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 1 }, %struct.lang_flags { i8 1, i8 0, i8 0, i8 1, i8 1, i8 0, i8 1, i8 1 }, %struct.lang_flags { i8 0, i8 0, i8 1, i8 1, i8 0, i8 1, i8 1, i8 1 }, %struct.lang_flags { i8 0, i8 0, i8 1, i8 1, i8 1, i8 0, i8 1, i8 1 }, %struct.lang_flags { i8 0, i8 1, i8 0, i8 1, i8 0, i8 1, i8 1, i8 1 }, %struct.lang_flags { i8 0, i8 1, i8 1, i8 1, i8 0, i8 1, i8 1, i8 1 }, %struct.lang_flags { i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 1, i8 0 }], align 16
@.str.32 = private unnamed_addr constant [6 x i8] c"CPATH\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"C_INCLUDE_PATH\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"CPLUS_INCLUDE_PATH\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"OBJC_INCLUDE_PATH\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"OBJCPLUS_INCLUDE_PATH\00", align 1
@cpp_include_defaults = external constant [0 x %struct.default_include], align 8
@.str.37 = private unnamed_addr constant [48 x i8] c"changing search order for system directory \22%s\22\00", align 1
@.str.38 = private unnamed_addr constant [49 x i8] c"  as it is the same as non-system directory \22%s\22\00", align 1
@.str.39 = private unnamed_addr constant [61 x i8] c"  as it has already been specified as a non-system directory\00", align 1
@.str.40 = private unnamed_addr constant [35 x i8] c"ignoring duplicate directory \22%s\22\0A\00", align 1
@operator_array = internal constant [11 x %struct.named_op] [%struct.named_op { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i32 3, i32 17 }, %struct.named_op { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 6, i32 33 }, %struct.named_op { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 6, i32 9 }, %struct.named_op { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 5, i32 10 }, %struct.named_op { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i32 5, i32 16 }, %struct.named_op { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0), i32 3, i32 1 }, %struct.named_op { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i32 6, i32 25 }, %struct.named_op { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0), i32 2, i32 18 }, %struct.named_op { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i32 5, i32 34 }, %struct.named_op { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i32 0, i32 0), i32 3, i32 11 }, %struct.named_op { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 6, i32 35 }], align 16
@.str.41 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"and_eq\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"bitand\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"bitor\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"compl\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"not_eq\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"or_eq\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"xor_eq\00", align 1
@builtin_array = internal constant [14 x %struct.builtin] [%struct.builtin { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i32 0, i32 0), i8* null, i8 5, i16 8, i16 8 }, %struct.builtin { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i8* null, i8 1, i16 8, i16 8 }, %struct.builtin { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i32 0, i32 0), i8* null, i8 2, i16 8, i16 8 }, %struct.builtin { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i32 0, i32 0), i8* null, i8 3, i16 8, i16 13 }, %struct.builtin { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i32 0, i32 0), i8* null, i8 0, i16 8, i16 8 }, %struct.builtin { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.67, i32 0, i32 0), i8* null, i8 4, i16 8, i16 17 }, %struct.builtin { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), i8* null, i8 7, i16 8, i16 7 }, %struct.builtin { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.69, i32 0, i32 0), i8* null, i8 0, i16 1, i16 11 }, %struct.builtin { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.70, i32 0, i32 0), i8* null, i8 0, i16 2, i16 21 }, %struct.builtin { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8 0, i16 0, i16 19 }, %struct.builtin { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.73, i32 0, i32 0), i8 0, i16 0, i16 23 }, %struct.builtin { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0), i8 0, i16 0, i16 14 }, %struct.builtin { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.77, i32 0, i32 0), i8 0, i16 0, i16 13 }, %struct.builtin { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.73, i32 0, i32 0), i8 0, i16 0, i16 8 }], align 16
@.str.52 = private unnamed_addr constant [9 x i8] c"%s \22%s\22\0A\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"__cplusplus 1\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"__GXX_WEAK__ 1\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"__OBJC__ 1\00", align 1
@.str.57 = private unnamed_addr constant [25 x i8] c"__STDC_VERSION__ 199409L\00", align 1
@.str.58 = private unnamed_addr constant [25 x i8] c"__STDC_VERSION__ 199901L\00", align 1
@.str.59 = private unnamed_addr constant [20 x i8] c"__CHAR_UNSIGNED__ 1\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"__STRICT_ANSI__ 1\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"__ASSEMBLER__ 1\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"__TIME__\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"__DATE__\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"__FILE__\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"__BASE_FILE__\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"__LINE__\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c"__INCLUDE_LEVEL__\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"_Pragma\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"__VERSION__\00", align 1
@.str.70 = private unnamed_addr constant [22 x i8] c"__USER_LABEL_PREFIX__\00", align 1
@.str.71 = private unnamed_addr constant [20 x i8] c"__REGISTER_PREFIX__\00", align 1
@.str.72 = private unnamed_addr constant [24 x i8] c"__HAVE_BUILTIN_SETJMP__\00", align 1
@.str.73 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"__WCHAR_TYPE__\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.76 = private unnamed_addr constant [14 x i8] c"__WINT_TYPE__\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"__STDC__\00", align 1
@.str.79 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.80 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.81 = private unnamed_addr constant [20 x i8] c"I/O error on output\00", align 1
@.str.82 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.83 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.85 = private unnamed_addr constant [13 x i8] c"-target-help\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"-version\00", align 1
@.str.87 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.88 = private unnamed_addr constant [27 x i8] c"assertion missing after %s\00", align 1
@.str.89 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.90 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.91 = private unnamed_addr constant [28 x i8] c"macro name missing after %s\00", align 1
@.str.92 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.93 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.94 = private unnamed_addr constant [32 x i8] c"directory name missing after %s\00", align 1
@.str.95 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.96 = private unnamed_addr constant [3 x i8] c"MD\00", align 1
@.str.97 = private unnamed_addr constant [27 x i8] c"file name missing after %s\00", align 1
@.str.98 = private unnamed_addr constant [3 x i8] c"MF\00", align 1
@.str.99 = private unnamed_addr constant [3 x i8] c"MG\00", align 1
@.str.100 = private unnamed_addr constant [3 x i8] c"MM\00", align 1
@.str.101 = private unnamed_addr constant [4 x i8] c"MMD\00", align 1
@.str.102 = private unnamed_addr constant [3 x i8] c"MP\00", align 1
@.str.103 = private unnamed_addr constant [3 x i8] c"MQ\00", align 1
@.str.104 = private unnamed_addr constant [24 x i8] c"target missing after %s\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"MT\00", align 1
@.str.106 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.107 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.108 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.109 = private unnamed_addr constant [26 x i8] c"argument missing after %s\00", align 1
@.str.110 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.111 = private unnamed_addr constant [20 x i8] c"fleading-underscore\00", align 1
@.str.112 = private unnamed_addr constant [23 x i8] c"fno-leading-underscore\00", align 1
@.str.113 = private unnamed_addr constant [19 x i8] c"fno-operator-names\00", align 1
@.str.114 = private unnamed_addr constant [17 x i8] c"fno-preprocessed\00", align 1
@.str.115 = private unnamed_addr constant [16 x i8] c"fno-show-column\00", align 1
@.str.116 = private unnamed_addr constant [14 x i8] c"fpreprocessed\00", align 1
@.str.117 = private unnamed_addr constant [13 x i8] c"fshow-column\00", align 1
@.str.118 = private unnamed_addr constant [13 x i8] c"fsigned-char\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"ftabstop=\00", align 1
@.str.120 = private unnamed_addr constant [24 x i8] c"number missing after %s\00", align 1
@.str.121 = private unnamed_addr constant [15 x i8] c"funsigned-char\00", align 1
@.str.122 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"idirafter\00", align 1
@.str.124 = private unnamed_addr constant [8 x i8] c"imacros\00", align 1
@.str.125 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.126 = private unnamed_addr constant [8 x i8] c"iprefix\00", align 1
@.str.127 = private unnamed_addr constant [27 x i8] c"path name missing after %s\00", align 1
@.str.128 = private unnamed_addr constant [8 x i8] c"isystem\00", align 1
@.str.129 = private unnamed_addr constant [12 x i8] c"iwithprefix\00", align 1
@.str.130 = private unnamed_addr constant [18 x i8] c"iwithprefixbefore\00", align 1
@.str.131 = private unnamed_addr constant [9 x i8] c"lang-asm\00", align 1
@.str.132 = private unnamed_addr constant [7 x i8] c"lang-c\00", align 1
@.str.133 = private unnamed_addr constant [9 x i8] c"lang-c++\00", align 1
@.str.134 = private unnamed_addr constant [9 x i8] c"lang-c89\00", align 1
@.str.135 = private unnamed_addr constant [10 x i8] c"lang-objc\00", align 1
@.str.136 = private unnamed_addr constant [12 x i8] c"lang-objc++\00", align 1
@.str.137 = private unnamed_addr constant [9 x i8] c"nostdinc\00", align 1
@.str.138 = private unnamed_addr constant [11 x i8] c"nostdinc++\00", align 1
@.str.139 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.140 = private unnamed_addr constant [9 x i8] c"pedantic\00", align 1
@.str.141 = private unnamed_addr constant [16 x i8] c"pedantic-errors\00", align 1
@.str.142 = private unnamed_addr constant [6 x i8] c"remap\00", align 1
@.str.143 = private unnamed_addr constant [10 x i8] c"std=c++98\00", align 1
@.str.144 = private unnamed_addr constant [8 x i8] c"std=c89\00", align 1
@.str.145 = private unnamed_addr constant [8 x i8] c"std=c99\00", align 1
@.str.146 = private unnamed_addr constant [8 x i8] c"std=c9x\00", align 1
@.str.147 = private unnamed_addr constant [10 x i8] c"std=gnu89\00", align 1
@.str.148 = private unnamed_addr constant [10 x i8] c"std=gnu99\00", align 1
@.str.149 = private unnamed_addr constant [10 x i8] c"std=gnu9x\00", align 1
@.str.150 = private unnamed_addr constant [17 x i8] c"std=iso9899:1990\00", align 1
@.str.151 = private unnamed_addr constant [19 x i8] c"std=iso9899:199409\00", align 1
@.str.152 = private unnamed_addr constant [17 x i8] c"std=iso9899:1999\00", align 1
@.str.153 = private unnamed_addr constant [17 x i8] c"std=iso9899:199x\00", align 1
@.str.154 = private unnamed_addr constant [10 x i8] c"trigraphs\00", align 1
@.str.155 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.156 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.157 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.158 = private unnamed_addr constant [37 x i8] c"ignoring nonexistent directory \22%s\22\0A\00", align 1
@.str.159 = private unnamed_addr constant [20 x i8] c"%s: Not a directory\00", align 1
@.str.160 = private unnamed_addr constant [20 x i8] c"DEPENDENCIES_OUTPUT\00", align 1
@.str.161 = private unnamed_addr constant [20 x i8] c"SUNPRO_DEPENDENCIES\00", align 1
@.str.162 = private unnamed_addr constant [459 x i8] c"Switches:\0A  -include <file>           Include the contents of <file> before other files\0A  -imacros <file>           Accept definition of macros in <file>\0A  -iprefix <path>           Specify <path> as a prefix for next two options\0A  -iwithprefix <dir>        Add <dir> to the end of the system include path\0A  -iwithprefixbefore <dir>  Add <dir> to the end of the main include path\0A  -isystem <dir>            Add <dir> to the start of the system include path\0A\00", align 1
@.str.163 = private unnamed_addr constant [504 x i8] c"  -idirafter <dir>          Add <dir> to the end of the system include path\0A  -I <dir>                  Add <dir> to the end of the main include path\0A  -I-                       Fine-grained include path control; see info docs\0A  -nostdinc                 Do not search system include directories\0A                             (dirs specified with -isystem will still be used)\0A  -nostdinc++               Do not search system include directories for C++\0A  -o <file>                 Put output into <file>\0A\00", align 1
@.str.164 = private unnamed_addr constant [332 x i8] c"  -pedantic                 Issue all warnings demanded by strict ISO C\0A  -pedantic-errors          Issue -pedantic warnings as errors instead\0A  -trigraphs                Support ISO C trigraphs\0A  -lang-c                   Assume that the input sources are in C\0A  -lang-c89                 Assume that the input sources are in C89\0A\00", align 1
@.str.165 = private unnamed_addr constant [299 x i8] c"  -lang-c++                 Assume that the input sources are in C++\0A  -lang-objc                Assume that the input sources are in ObjectiveC\0A  -lang-objc++              Assume that the input sources are in ObjectiveC++\0A  -lang-asm                 Assume that the input sources are in assembler\0A\00", align 1
@.str.166 = private unnamed_addr constant [499 x i8] c"  -std=<std name>           Specify the conformance standard; one of:\0A                            gnu89, gnu99, c89, c99, iso9899:1990,\0A                            iso9899:199409, iso9899:1999\0A  -+                        Allow parsing of C++ style features\0A  -w                        Inhibit warning messages\0A  -Wtrigraphs               Warn if trigraphs are encountered\0A  -Wno-trigraphs            Do not warn about trigraphs\0A  -Wcomment{s}              Warn if one comment starts inside another\0A\00", align 1
@.str.167 = private unnamed_addr constant [406 x i8] c"  -Wno-comment{s}           Do not warn about comments\0A  -Wtraditional             Warn about features not present in traditional C\0A  -Wno-traditional          Do not warn about traditional C\0A  -Wundef                   Warn if an undefined macro is used by #if\0A  -Wno-undef                Do not warn about testing undefined macros\0A  -Wimport                  Warn about the use of the #import directive\0A\00", align 1
@.str.168 = private unnamed_addr constant [383 x i8] c"  -Wno-import               Do not warn about the use of #import\0A  -Werror                   Treat all warnings as errors\0A  -Wno-error                Do not treat warnings as errors\0A  -Wsystem-headers          Do not suppress warnings from system headers\0A  -Wno-system-headers       Suppress warnings from system headers\0A  -Wall                     Enable all preprocessor warnings\0A\00", align 1
@.str.169 = private unnamed_addr constant [399 x i8] c"  -M                        Generate make dependencies\0A  -MM                       As -M, but ignore system header files\0A  -MD                       Generate make dependencies and compile\0A  -MMD                      As -MD, but ignore system header files\0A  -MF <file>                Write dependency output to the given file\0A  -MG                       Treat missing header file as generated files\0A\00", align 1
@.str.170 = private unnamed_addr constant [156 x i8] c"  -MP\09\09\09    Generate phony targets for all headers\0A  -MQ <target>              Add a MAKE-quoted target\0A  -MT <target>              Add an unquoted target\0A\00", align 1
@.str.171 = private unnamed_addr constant [370 x i8] c"  -D<macro>                 Define a <macro> with string '1' as its value\0A  -D<macro>=<val>           Define a <macro> with <val> as its value\0A  -A<question>=<answer>     Assert the <answer> to <question>\0A  -A-<question>=<answer>    Disable the <answer> to <question>\0A  -U<macro>                 Undefine <macro> \0A  -v                        Display the version number\0A\00", align 1
@.str.172 = private unnamed_addr constant [418 x i8] c"  -H                        Print the name of header files as they are used\0A  -C                        Do not discard comments\0A  -dM                       Display a list of macro definitions active at end\0A  -dD                       Preserve macro definitions in output\0A  -dN                       As -dD except that only the names are preserved\0A  -dI                       Include #include directives in the output\0A\00", align 1
@.str.173 = private unnamed_addr constant [446 x i8] c"  -fpreprocessed            Treat the input file as already preprocessed\0A  -ftabstop=<number>        Distance between tab stops for column reporting\0A  -P                        Do not generate #line directives\0A  -$                        Do not allow '$' in identifiers\0A  -remap                    Remap file names when including files\0A  --version                 Display version information\0A  -h or --help              Display this information\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.cpp_reader* @cpp_create_reader(i32 %lang) #0 {
entry:
  %lang.addr = alloca i32, align 4
  %pfile = alloca %struct.cpp_reader*, align 8
  store i32 %lang, i32* %lang.addr, align 4
  call void @init_library()
  %call = call noalias i8* @xcalloc(i64 1, i64 832)
  %0 = bitcast i8* %call to %struct.cpp_reader*
  store %struct.cpp_reader* %0, %struct.cpp_reader** %pfile, align 8
  %1 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8
  %2 = load i32, i32* %lang.addr, align 4
  call void @set_lang(%struct.cpp_reader* %1, i32 %2)
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %3, i32 0, i32 37
  %warn_import = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 32
  store i8 1, i8* %warn_import, align 1
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8
  %opts1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %4, i32 0, i32 37
  %discard_comments = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts1, i32 0, i32 17
  store i8 1, i8* %discard_comments, align 1
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8
  %opts2 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %5, i32 0, i32 37
  %show_column = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts2, i32 0, i32 48
  store i8 1, i8* %show_column, align 1
  %6 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8
  %opts3 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %6, i32 0, i32 37
  %tabstop = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts3, i32 0, i32 2
  store i32 8, i32* %tabstop, align 4
  %7 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8
  %opts4 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %7, i32 0, i32 37
  %operator_names = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts4, i32 0, i32 49
  store i8 1, i8* %operator_names, align 1
  %8 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8
  %opts5 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %8, i32 0, i32 37
  %signed_char = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts5, i32 0, i32 13
  store i8 1, i8* %signed_char, align 1
  %call6 = call noalias i8* @xcalloc(i64 1, i64 112)
  %9 = bitcast i8* %call6 to %struct.cpp_pending*
  %10 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8
  %opts7 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %10, i32 0, i32 37
  %pending = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts7, i32 0, i32 3
  store %struct.cpp_pending* %9, %struct.cpp_pending** %pending, align 8
  %call8 = call %struct.deps* @deps_init()
  %11 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8
  %deps = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %11, i32 0, i32 31
  store %struct.deps* %call8, %struct.deps** %deps, align 8
  %12 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8
  %line_maps = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %12, i32 0, i32 2
  call void @init_line_maps(%struct.line_maps* %line_maps)
  %13 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8
  %line = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %13, i32 0, i32 4
  store i32 1, i32* %line, align 4
  %14 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8
  %opts9 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %14, i32 0, i32 37
  %discard_comments10 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts9, i32 0, i32 17
  %15 = load i8, i8* %discard_comments10, align 1
  %tobool = icmp ne i8 %15, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = trunc i32 %lnot.ext to i8
  %16 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8
  %state = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %16, i32 0, i32 1
  %save_comments = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state, i32 0, i32 3
  store i8 %conv, i8* %save_comments, align 1
  %17 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8
  %date = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %17, i32 0, i32 27
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %date, i32 0, i32 2
  store i8 67, i8* %type, align 2
  %18 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8
  %avoid_paste = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %18, i32 0, i32 29
  %type11 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %avoid_paste, i32 0, i32 2
  store i8 66, i8* %type11, align 2
  %19 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8
  %avoid_paste12 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %19, i32 0, i32 29
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %avoid_paste12, i32 0, i32 4
  %source = bitcast %union.anon* %val to %struct.cpp_token**
  store %struct.cpp_token* null, %struct.cpp_token** %source, align 8
  %20 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8
  %eof = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %20, i32 0, i32 30
  %type13 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %eof, i32 0, i32 2
  store i8 67, i8* %type13, align 2
  %21 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8
  %eof14 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %21, i32 0, i32 30
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %eof14, i32 0, i32 3
  store i8 0, i8* %flags, align 1
  %22 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8
  %base_run = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %22, i32 0, i32 16
  call void @_cpp_init_tokenrun(%struct.tokenrun* %base_run, i32 250)
  %23 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8
  %base_run15 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %23, i32 0, i32 16
  %24 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8
  %cur_run = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %24, i32 0, i32 17
  store %struct.tokenrun* %base_run15, %struct.tokenrun** %cur_run, align 8
  %25 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8
  %base_run16 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %25, i32 0, i32 16
  %base = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %base_run16, i32 0, i32 2
  %26 = load %struct.cpp_token*, %struct.cpp_token** %base, align 8
  %27 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8
  %cur_token = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %27, i32 0, i32 15
  store %struct.cpp_token* %26, %struct.cpp_token** %cur_token, align 8
  %28 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8
  %base_context = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %28, i32 0, i32 9
  %29 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8
  %context = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %29, i32 0, i32 10
  store %struct.cpp_context* %base_context, %struct.cpp_context** %context, align 8
  %30 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8
  %base_context17 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %30, i32 0, i32 9
  %macro = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %base_context17, i32 0, i32 5
  store %struct.cpp_hashnode* null, %struct.cpp_hashnode** %macro, align 8
  %31 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8
  %base_context18 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %31, i32 0, i32 9
  %next = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %base_context18, i32 0, i32 0
  store %struct.cpp_context* null, %struct.cpp_context** %next, align 8
  %32 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8
  %base_context19 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %32, i32 0, i32 9
  %prev = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %base_context19, i32 0, i32 1
  store %struct.cpp_context* null, %struct.cpp_context** %prev, align 8
  %33 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8
  %call20 = call %struct._cpp_buff* @_cpp_get_buff(%struct.cpp_reader* %33, i64 0)
  %34 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8
  %a_buff = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %34, i32 0, i32 6
  store %struct._cpp_buff* %call20, %struct._cpp_buff** %a_buff, align 8
  %35 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8
  %call21 = call %struct._cpp_buff* @_cpp_get_buff(%struct.cpp_reader* %35, i64 0)
  %36 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8
  %u_buff = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %36, i32 0, i32 7
  store %struct._cpp_buff* %call21, %struct._cpp_buff** %u_buff, align 8
  %37 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8
  %buffer_ob = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %37, i32 0, i32 33
  call void @gcc_obstack_init(%struct.obstack* %buffer_ob)
  %38 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8
  call void @_cpp_init_includes(%struct.cpp_reader* %38)
  %39 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8
  ret %struct.cpp_reader* %39
}

; Function Attrs: nounwind uwtable
define internal void @init_library() #0 {
entry:
  %0 = load i32, i32* @init_library.initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* @init_library.initialized, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare noalias i8* @xcalloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @set_lang(%struct.cpp_reader* %pfile, i32 %lang) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %lang.addr = alloca i32, align 4
  %l = alloca %struct.lang_flags*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i32 %lang, i32* %lang.addr, align 4
  %0 = load i32, i32* %lang.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.lang_flags], [10 x %struct.lang_flags]* @lang_defaults, i32 0, i64 %idxprom
  store %struct.lang_flags* %arrayidx, %struct.lang_flags** %l, align 8
  %1 = load i32, i32* %lang.addr, align 4
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %2, i32 0, i32 37
  %lang1 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 11
  store i32 %1, i32* %lang1, align 4
  %3 = load %struct.lang_flags*, %struct.lang_flags** %l, align 8
  %c99 = getelementptr inbounds %struct.lang_flags, %struct.lang_flags* %3, i32 0, i32 0
  %4 = load i8, i8* %c99, align 1
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts2 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %5, i32 0, i32 37
  %c993 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts2, i32 0, i32 41
  store i8 %4, i8* %c993, align 1
  %6 = load %struct.lang_flags*, %struct.lang_flags** %l, align 8
  %objc = getelementptr inbounds %struct.lang_flags, %struct.lang_flags* %6, i32 0, i32 1
  %7 = load i8, i8* %objc, align 1
  %8 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts4 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %8, i32 0, i32 37
  %objc5 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts4, i32 0, i32 16
  store i8 %7, i8* %objc5, align 1
  %9 = load %struct.lang_flags*, %struct.lang_flags** %l, align 8
  %cplusplus = getelementptr inbounds %struct.lang_flags, %struct.lang_flags* %9, i32 0, i32 2
  %10 = load i8, i8* %cplusplus, align 1
  %11 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts6 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %11, i32 0, i32 37
  %cplusplus7 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts6, i32 0, i32 14
  store i8 %10, i8* %cplusplus7, align 1
  %12 = load %struct.lang_flags*, %struct.lang_flags** %l, align 8
  %extended_numbers = getelementptr inbounds %struct.lang_flags, %struct.lang_flags* %12, i32 0, i32 3
  %13 = load i8, i8* %extended_numbers, align 1
  %14 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts8 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %14, i32 0, i32 37
  %extended_numbers9 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts8, i32 0, i32 20
  store i8 %13, i8* %extended_numbers9, align 1
  %15 = load %struct.lang_flags*, %struct.lang_flags** %l, align 8
  %trigraphs = getelementptr inbounds %struct.lang_flags, %struct.lang_flags* %15, i32 0, i32 4
  %16 = load i8, i8* %trigraphs, align 1
  %17 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts10 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %17, i32 0, i32 37
  %trigraphs11 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts10, i32 0, i32 18
  store i8 %16, i8* %trigraphs11, align 1
  %18 = load %struct.lang_flags*, %struct.lang_flags** %l, align 8
  %dollars_in_ident = getelementptr inbounds %struct.lang_flags, %struct.lang_flags* %18, i32 0, i32 5
  %19 = load i8, i8* %dollars_in_ident, align 1
  %20 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts12 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %20, i32 0, i32 37
  %dollars_in_ident13 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts12, i32 0, i32 39
  store i8 %19, i8* %dollars_in_ident13, align 1
  %21 = load %struct.lang_flags*, %struct.lang_flags** %l, align 8
  %cplusplus_comments = getelementptr inbounds %struct.lang_flags, %struct.lang_flags* %21, i32 0, i32 6
  %22 = load i8, i8* %cplusplus_comments, align 1
  %23 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts14 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %23, i32 0, i32 37
  %cplusplus_comments15 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts14, i32 0, i32 15
  store i8 %22, i8* %cplusplus_comments15, align 1
  %24 = load %struct.lang_flags*, %struct.lang_flags** %l, align 8
  %digraphs = getelementptr inbounds %struct.lang_flags, %struct.lang_flags* %24, i32 0, i32 7
  %25 = load i8, i8* %digraphs, align 1
  %26 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts16 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %26, i32 0, i32 37
  %digraphs17 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts16, i32 0, i32 19
  store i8 %25, i8* %digraphs17, align 1
  ret void
}

declare %struct.deps* @deps_init() #1

declare void @init_line_maps(%struct.line_maps*) #1

declare void @_cpp_init_tokenrun(%struct.tokenrun*, i32) #1

declare %struct._cpp_buff* @_cpp_get_buff(%struct.cpp_reader*, i64) #1

declare void @gcc_obstack_init(%struct.obstack*) #1

declare void @_cpp_init_includes(%struct.cpp_reader*) #1

; Function Attrs: nounwind uwtable
define i32 @cpp_destroy(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %result = alloca i32, align 4
  %dir = alloca %struct.search_path*, align 8
  %dirn = alloca %struct.search_path*, align 8
  %context = alloca %struct.cpp_context*, align 8
  %contextn = alloca %struct.cpp_context*, align 8
  %run = alloca %struct.tokenrun*, align 8
  %runn = alloca %struct.tokenrun*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__obj = alloca i8*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 0
  %1 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %cmp = icmp ne %struct.cpp_buffer* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @_cpp_pop_buffer(%struct.cpp_reader* %2)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %macro_buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %3, i32 0, i32 23
  %4 = load i8*, i8** %macro_buffer, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %macro_buffer1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %5, i32 0, i32 23
  %6 = load i8*, i8** %macro_buffer1, align 8
  call void @free(i8* %6) #4
  %7 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %macro_buffer2 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %7, i32 0, i32 23
  store i8* null, i8** %macro_buffer2, align 8
  %8 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %macro_buffer_len = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %8, i32 0, i32 24
  store i32 0, i32* %macro_buffer_len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %9 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %deps = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %9, i32 0, i32 31
  %10 = load %struct.deps*, %struct.deps** %deps, align 8
  call void @deps_free(%struct.deps* %10)
  %11 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer_ob = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %11, i32 0, i32 33
  store %struct.obstack* %buffer_ob, %struct.obstack** %__o, align 8
  store i8* null, i8** %__obj, align 8
  %12 = load i8*, i8** %__obj, align 8
  %13 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %13, i32 0, i32 1
  %14 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %15 = bitcast %struct._obstack_chunk* %14 to i8*
  %cmp3 = icmp ugt i8* %12, %15
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %16 = load i8*, i8** %__obj, align 8
  %17 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %17, i32 0, i32 4
  %18 = load i8*, i8** %chunk_limit, align 8
  %cmp4 = icmp ult i8* %16, %18
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %land.lhs.true
  %19 = load i8*, i8** %__obj, align 8
  %20 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %20, i32 0, i32 2
  store i8* %19, i8** %object_base, align 8
  %21 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %21, i32 0, i32 3
  store i8* %19, i8** %next_free, align 8
  br label %if.end.6

if.else:                                          ; preds = %land.lhs.true, %if.end
  %22 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %23 = load i8*, i8** %__obj, align 8
  call void @obstack_free(%struct.obstack* %22, i8* %23)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  %24 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @_cpp_destroy_hashtable(%struct.cpp_reader* %24)
  %25 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @_cpp_cleanup_includes(%struct.cpp_reader* %25)
  %26 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %a_buff = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %26, i32 0, i32 6
  %27 = load %struct._cpp_buff*, %struct._cpp_buff** %a_buff, align 8
  call void @_cpp_free_buff(%struct._cpp_buff* %27)
  %28 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %u_buff = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %28, i32 0, i32 7
  %29 = load %struct._cpp_buff*, %struct._cpp_buff** %u_buff, align 8
  call void @_cpp_free_buff(%struct._cpp_buff* %29)
  %30 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %free_buffs = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %30, i32 0, i32 8
  %31 = load %struct._cpp_buff*, %struct._cpp_buff** %free_buffs, align 8
  call void @_cpp_free_buff(%struct._cpp_buff* %31)
  %32 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %base_run = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %32, i32 0, i32 16
  store %struct.tokenrun* %base_run, %struct.tokenrun** %run, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %33 = load %struct.tokenrun*, %struct.tokenrun** %run, align 8
  %tobool7 = icmp ne %struct.tokenrun* %33, null
  br i1 %tobool7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load %struct.tokenrun*, %struct.tokenrun** %run, align 8
  %next = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %34, i32 0, i32 0
  %35 = load %struct.tokenrun*, %struct.tokenrun** %next, align 8
  store %struct.tokenrun* %35, %struct.tokenrun** %runn, align 8
  %36 = load %struct.tokenrun*, %struct.tokenrun** %run, align 8
  %base = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %36, i32 0, i32 2
  %37 = load %struct.cpp_token*, %struct.cpp_token** %base, align 8
  %38 = bitcast %struct.cpp_token* %37 to i8*
  call void @free(i8* %38) #4
  %39 = load %struct.tokenrun*, %struct.tokenrun** %run, align 8
  %40 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %base_run8 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %40, i32 0, i32 16
  %cmp9 = icmp ne %struct.tokenrun* %39, %base_run8
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %for.body
  %41 = load %struct.tokenrun*, %struct.tokenrun** %run, align 8
  %42 = bitcast %struct.tokenrun* %41 to i8*
  call void @free(i8* %42) #4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %43 = load %struct.tokenrun*, %struct.tokenrun** %runn, align 8
  store %struct.tokenrun* %43, %struct.tokenrun** %run, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %44, i32 0, i32 37
  %quote_include = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 5
  %45 = load %struct.search_path*, %struct.search_path** %quote_include, align 8
  store %struct.search_path* %45, %struct.search_path** %dir, align 8
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.16, %for.end
  %46 = load %struct.search_path*, %struct.search_path** %dir, align 8
  %tobool13 = icmp ne %struct.search_path* %46, null
  br i1 %tobool13, label %for.body.14, label %for.end.17

for.body.14:                                      ; preds = %for.cond.12
  %47 = load %struct.search_path*, %struct.search_path** %dir, align 8
  %next15 = getelementptr inbounds %struct.search_path, %struct.search_path* %47, i32 0, i32 0
  %48 = load %struct.search_path*, %struct.search_path** %next15, align 8
  store %struct.search_path* %48, %struct.search_path** %dirn, align 8
  %49 = load %struct.search_path*, %struct.search_path** %dir, align 8
  %name = getelementptr inbounds %struct.search_path, %struct.search_path* %49, i32 0, i32 1
  %50 = load i8*, i8** %name, align 8
  call void @free(i8* %50) #4
  %51 = load %struct.search_path*, %struct.search_path** %dir, align 8
  %52 = bitcast %struct.search_path* %51 to i8*
  call void @free(i8* %52) #4
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.body.14
  %53 = load %struct.search_path*, %struct.search_path** %dirn, align 8
  store %struct.search_path* %53, %struct.search_path** %dir, align 8
  br label %for.cond.12

for.end.17:                                       ; preds = %for.cond.12
  %54 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %base_context = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %54, i32 0, i32 9
  %next18 = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %base_context, i32 0, i32 0
  %55 = load %struct.cpp_context*, %struct.cpp_context** %next18, align 8
  store %struct.cpp_context* %55, %struct.cpp_context** %context, align 8
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.23, %for.end.17
  %56 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8
  %tobool20 = icmp ne %struct.cpp_context* %56, null
  br i1 %tobool20, label %for.body.21, label %for.end.24

for.body.21:                                      ; preds = %for.cond.19
  %57 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8
  %next22 = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %57, i32 0, i32 0
  %58 = load %struct.cpp_context*, %struct.cpp_context** %next22, align 8
  store %struct.cpp_context* %58, %struct.cpp_context** %contextn, align 8
  %59 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8
  %60 = bitcast %struct.cpp_context* %59 to i8*
  call void @free(i8* %60) #4
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.21
  %61 = load %struct.cpp_context*, %struct.cpp_context** %contextn, align 8
  store %struct.cpp_context* %61, %struct.cpp_context** %context, align 8
  br label %for.cond.19

for.end.24:                                       ; preds = %for.cond.19
  %62 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %line_maps = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %62, i32 0, i32 2
  call void @free_line_maps(%struct.line_maps* %line_maps)
  %63 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %errors = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %63, i32 0, i32 20
  %64 = load i32, i32* %errors, align 4
  store i32 %64, i32* %result, align 4
  %65 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %66 = bitcast %struct.cpp_reader* %65 to i8*
  call void @free(i8* %66) #4
  %67 = load i32, i32* %result, align 4
  ret i32 %67
}

declare void @_cpp_pop_buffer(%struct.cpp_reader*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

declare void @deps_free(%struct.deps*) #1

declare void @obstack_free(%struct.obstack*, i8*) #1

declare void @_cpp_destroy_hashtable(%struct.cpp_reader*) #1

declare void @_cpp_cleanup_includes(%struct.cpp_reader*) #1

declare void @_cpp_free_buff(%struct._cpp_buff*) #1

declare void @free_line_maps(%struct.line_maps*) #1

; Function Attrs: nounwind uwtable
define i8* @cpp_read_main_file(%struct.cpp_reader* %pfile, i8* %fname, %struct.ht* %table) #0 {
entry:
  %retval = alloca i8*, align 8
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %fname.addr = alloca i8*, align 8
  %table.addr = alloca %struct.ht*, align 8
  %l = alloca %struct.search_path*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i8* %fname, i8** %fname.addr, align 8
  store %struct.ht* %table, %struct.ht** %table.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %1 = load %struct.ht*, %struct.ht** %table.addr, align 8
  call void @_cpp_init_hashtable(%struct.cpp_reader* %0, %struct.ht* %1)
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %2, i32 0, i32 37
  %no_standard_includes = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 44
  %3 = load i8, i8* %no_standard_includes, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @init_standard_includes(%struct.cpp_reader* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @merge_include_chains(%struct.cpp_reader* %5)
  %6 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %6, i32 0, i32 37
  %verbose = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts1, i32 0, i32 12
  %7 = load i8, i8* %verbose, align 1
  %tobool2 = icmp ne i8 %7, 0
  br i1 %tobool2, label %if.then.3, label %if.end.12

if.then.3:                                        ; preds = %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0))
  %9 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts4 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %9, i32 0, i32 37
  %quote_include = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts4, i32 0, i32 5
  %10 = load %struct.search_path*, %struct.search_path** %quote_include, align 8
  store %struct.search_path* %10, %struct.search_path** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %11 = load %struct.search_path*, %struct.search_path** %l, align 8
  %tobool5 = icmp ne %struct.search_path* %11, null
  br i1 %tobool5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.search_path*, %struct.search_path** %l, align 8
  %13 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts6 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %13, i32 0, i32 37
  %bracket_include = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts6, i32 0, i32 6
  %14 = load %struct.search_path*, %struct.search_path** %bracket_include, align 8
  %cmp = icmp eq %struct.search_path* %12, %14
  br i1 %cmp, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %for.body
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %for.body
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = load %struct.search_path*, %struct.search_path** %l, align 8
  %name = getelementptr inbounds %struct.search_path, %struct.search_path* %17, i32 0, i32 1
  %18 = load i8*, i8** %name, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* %18)
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %19 = load %struct.search_path*, %struct.search_path** %l, align 8
  %next = getelementptr inbounds %struct.search_path, %struct.search_path* %19, i32 0, i32 0
  %20 = load %struct.search_path*, %struct.search_path** %next, align 8
  store %struct.search_path* %20, %struct.search_path** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.12

if.end.12:                                        ; preds = %for.end, %if.end
  %22 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts13 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %22, i32 0, i32 37
  %print_deps = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts13, i32 0, i32 21
  %23 = load i8, i8* %print_deps, align 1
  %tobool14 = icmp ne i8 %23, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  %24 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %deps = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %24, i32 0, i32 31
  %25 = load %struct.deps*, %struct.deps** %deps, align 8
  %26 = load i8*, i8** %fname.addr, align 8
  call void @deps_add_default_target(%struct.deps* %25, i8* %26)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.12
  %27 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %28 = load i8*, i8** %fname.addr, align 8
  %call17 = call zeroext i1 @_cpp_read_file(%struct.cpp_reader* %27, i8* %28)
  br i1 %call17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.end.16
  store i8* null, i8** %retval
  br label %return

if.end.19:                                        ; preds = %if.end.16
  %29 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts20 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %29, i32 0, i32 37
  %print_include_names = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts20, i32 0, i32 25
  %30 = load i8, i8* %print_include_names, align 1
  %tobool21 = icmp ne i8 %30, 0
  %31 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %line_maps = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %31, i32 0, i32 2
  %trace_includes = getelementptr inbounds %struct.line_maps, %struct.line_maps* %line_maps, i32 0, i32 5
  %frombool = zext i1 %tobool21 to i8
  store i8 %frombool, i8* %trace_includes, align 1
  %32 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts22 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %32, i32 0, i32 37
  %preprocessed = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts22, i32 0, i32 43
  %33 = load i8, i8* %preprocessed, align 1
  %tobool23 = icmp ne i8 %33, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.19
  %34 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @read_original_filename(%struct.cpp_reader* %34)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.end.19
  %35 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %map = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %35, i32 0, i32 3
  %36 = load %struct.line_map*, %struct.line_map** %map, align 8
  %to_file = getelementptr inbounds %struct.line_map, %struct.line_map* %36, i32 0, i32 0
  %37 = load i8*, i8** %to_file, align 8
  store i8* %37, i8** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.18
  %38 = load i8*, i8** %retval
  ret i8* %38
}

declare void @_cpp_init_hashtable(%struct.cpp_reader*, %struct.ht*) #1

; Function Attrs: nounwind uwtable
define internal void @init_standard_includes(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %path = alloca i8*, align 8
  %p = alloca %struct.default_include*, align 8
  %specd_prefix = alloca i8*, align 8
  %default_len = alloca i32, align 4
  %default_prefix = alloca i8*, align 8
  %specd_len = alloca i32, align 4
  %flen = alloca i32, align 4
  %this_len = alloca i32, align 4
  %str = alloca i8*, align 8
  %str89 = alloca i8*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 37
  %include_prefix = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 8
  %1 = load i8*, i8** %include_prefix, align 8
  store i8* %1, i8** %specd_prefix, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0)) #4
  store i8* %call, i8** %path, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %path, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.end
  %3 = load i8*, i8** %path, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %6 = load i8*, i8** %path, align 8
  call void @path_include(%struct.cpp_reader* %5, i8* %6, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end
  %7 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts3 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %7, i32 0, i32 37
  %objc = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts3, i32 0, i32 16
  %8 = load i8, i8* %objc, align 1
  %conv4 = zext i8 %8 to i32
  %shl = shl i32 %conv4, 1
  %9 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts5 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %9, i32 0, i32 37
  %cplusplus = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts5, i32 0, i32 14
  %10 = load i8, i8* %cplusplus, align 1
  %conv6 = zext i8 %10 to i32
  %add = add nsw i32 %shl, %conv6
  switch i32 %add, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.10
    i32 2, label %sw.bb.14
    i32 3, label %sw.bb.18
  ]

sw.bb:                                            ; preds = %if.end
  br label %do.body.7

do.body.7:                                        ; preds = %sw.bb
  %call8 = call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0)) #4
  store i8* %call8, i8** %path, align 8
  br label %do.end.9

do.end.9:                                         ; preds = %do.body.7
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.end
  br label %do.body.11

do.body.11:                                       ; preds = %sw.bb.10
  %call12 = call i8* @getenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i32 0, i32 0)) #4
  store i8* %call12, i8** %path, align 8
  br label %do.end.13

do.end.13:                                        ; preds = %do.body.11
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.end
  br label %do.body.15

do.body.15:                                       ; preds = %sw.bb.14
  %call16 = call i8* @getenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0)) #4
  store i8* %call16, i8** %path, align 8
  br label %do.end.17

do.end.17:                                        ; preds = %do.body.15
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.end
  br label %do.body.19

do.body.19:                                       ; preds = %sw.bb.18
  %call20 = call i8* @getenv(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0)) #4
  store i8* %call20, i8** %path, align 8
  br label %do.end.21

do.end.21:                                        ; preds = %do.body.19
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %do.end.21, %do.end.17, %do.end.13, %do.end.9
  %11 = load i8*, i8** %path, align 8
  %cmp22 = icmp ne i8* %11, null
  br i1 %cmp22, label %land.lhs.true.24, label %if.end.29

land.lhs.true.24:                                 ; preds = %sw.epilog
  %12 = load i8*, i8** %path, align 8
  %13 = load i8, i8* %12, align 1
  %conv25 = sext i8 %13 to i32
  %cmp26 = icmp ne i32 %conv25, 0
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %land.lhs.true.24
  %14 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %15 = load i8*, i8** %path, align 8
  call void @path_include(%struct.cpp_reader* %14, i8* %15, i32 1)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %land.lhs.true.24, %sw.epilog
  %16 = load i8*, i8** %specd_prefix, align 8
  %cmp30 = icmp ne i8* %16, null
  br i1 %cmp30, label %land.lhs.true.32, label %if.end.72

land.lhs.true.32:                                 ; preds = %if.end.29
  %17 = load i64, i64* @cpp_GCC_INCLUDE_DIR_len, align 8
  %tobool = icmp ne i64 %17, 0
  br i1 %tobool, label %if.then.33, label %if.end.72

if.then.33:                                       ; preds = %land.lhs.true.32
  %18 = load i64, i64* @cpp_GCC_INCLUDE_DIR_len, align 8
  %conv34 = trunc i64 %18 to i32
  store i32 %conv34, i32* %default_len, align 4
  %19 = load i32, i32* %default_len, align 4
  %add35 = add nsw i32 %19, 1
  %conv36 = sext i32 %add35 to i64
  %20 = alloca i8, i64 %conv36
  store i8* %20, i8** %default_prefix, align 8
  %21 = load i8*, i8** %specd_prefix, align 8
  %call37 = call i64 @strlen(i8* %21) #6
  %conv38 = trunc i64 %call37 to i32
  store i32 %conv38, i32* %specd_len, align 4
  %22 = load i8*, i8** %default_prefix, align 8
  %23 = load i32, i32* %default_len, align 4
  %conv39 = sext i32 %23 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @cpp_GCC_INCLUDE_DIR, i32 0, i32 0), i64 %conv39, i32 1, i1 false)
  %24 = load i32, i32* %default_len, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load i8*, i8** %default_prefix, align 8
  %arrayidx = getelementptr inbounds i8, i8* %25, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  store %struct.default_include* getelementptr inbounds ([0 x %struct.default_include], [0 x %struct.default_include]* @cpp_include_defaults, i32 0, i32 0), %struct.default_include** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.33
  %26 = load %struct.default_include*, %struct.default_include** %p, align 8
  %fname = getelementptr inbounds %struct.default_include, %struct.default_include* %26, i32 0, i32 0
  %27 = load i8*, i8** %fname, align 8
  %tobool40 = icmp ne i8* %27, null
  br i1 %tobool40, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load %struct.default_include*, %struct.default_include** %p, align 8
  %cplusplus41 = getelementptr inbounds %struct.default_include, %struct.default_include* %28, i32 0, i32 2
  %29 = load i32, i32* %cplusplus41, align 4
  %tobool42 = icmp ne i32 %29, 0
  br i1 %tobool42, label %lor.lhs.false, label %if.then.50

lor.lhs.false:                                    ; preds = %for.body
  %30 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts43 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %30, i32 0, i32 37
  %cplusplus44 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts43, i32 0, i32 14
  %31 = load i8, i8* %cplusplus44, align 1
  %conv45 = zext i8 %31 to i32
  %tobool46 = icmp ne i32 %conv45, 0
  br i1 %tobool46, label %land.lhs.true.47, label %if.end.71

land.lhs.true.47:                                 ; preds = %lor.lhs.false
  %32 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts48 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %32, i32 0, i32 37
  %no_standard_cplusplus_includes = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts48, i32 0, i32 45
  %33 = load i8, i8* %no_standard_cplusplus_includes, align 1
  %tobool49 = icmp ne i8 %33, 0
  br i1 %tobool49, label %if.end.71, label %if.then.50

if.then.50:                                       ; preds = %land.lhs.true.47, %for.body
  %34 = load %struct.default_include*, %struct.default_include** %p, align 8
  %fname51 = getelementptr inbounds %struct.default_include, %struct.default_include* %34, i32 0, i32 0
  %35 = load i8*, i8** %fname51, align 8
  %36 = load i8*, i8** %default_prefix, align 8
  %37 = load i32, i32* %default_len, align 4
  %conv52 = sext i32 %37 to i64
  %call53 = call i32 @memcmp(i8* %35, i8* %36, i64 %conv52) #6
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.end.70, label %if.then.55

if.then.55:                                       ; preds = %if.then.50
  %38 = load %struct.default_include*, %struct.default_include** %p, align 8
  %fname56 = getelementptr inbounds %struct.default_include, %struct.default_include* %38, i32 0, i32 0
  %39 = load i8*, i8** %fname56, align 8
  %call57 = call i64 @strlen(i8* %39) #6
  %conv58 = trunc i64 %call57 to i32
  store i32 %conv58, i32* %flen, align 4
  %40 = load i32, i32* %specd_len, align 4
  %41 = load i32, i32* %flen, align 4
  %add59 = add nsw i32 %40, %41
  %42 = load i32, i32* %default_len, align 4
  %sub = sub nsw i32 %add59, %42
  store i32 %sub, i32* %this_len, align 4
  %43 = load i32, i32* %this_len, align 4
  %add60 = add nsw i32 %43, 1
  %conv61 = sext i32 %add60 to i64
  %call62 = call noalias i8* @xmalloc(i64 %conv61)
  store i8* %call62, i8** %str, align 8
  %44 = load i8*, i8** %str, align 8
  %45 = load i8*, i8** %specd_prefix, align 8
  %46 = load i32, i32* %specd_len, align 4
  %conv63 = sext i32 %46 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 %conv63, i32 1, i1 false)
  %47 = load i8*, i8** %str, align 8
  %48 = load i32, i32* %specd_len, align 4
  %idx.ext = sext i32 %48 to i64
  %add.ptr = getelementptr inbounds i8, i8* %47, i64 %idx.ext
  %49 = load %struct.default_include*, %struct.default_include** %p, align 8
  %fname64 = getelementptr inbounds %struct.default_include, %struct.default_include* %49, i32 0, i32 0
  %50 = load i8*, i8** %fname64, align 8
  %51 = load i32, i32* %default_len, align 4
  %idx.ext65 = sext i32 %51 to i64
  %add.ptr66 = getelementptr inbounds i8, i8* %50, i64 %idx.ext65
  %52 = load i32, i32* %flen, align 4
  %53 = load i32, i32* %default_len, align 4
  %sub67 = sub nsw i32 %52, %53
  %add68 = add nsw i32 %sub67, 1
  %conv69 = sext i32 %add68 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %add.ptr66, i64 %conv69, i32 1, i1 false)
  %54 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %55 = load i8*, i8** %str, align 8
  %56 = load %struct.default_include*, %struct.default_include** %p, align 8
  %cxx_aware = getelementptr inbounds %struct.default_include, %struct.default_include* %56, i32 0, i32 3
  %57 = load i32, i32* %cxx_aware, align 4
  call void @append_include_chain(%struct.cpp_reader* %54, i8* %55, i32 1, i32 %57)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.55, %if.then.50
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %land.lhs.true.47, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.71
  %58 = load %struct.default_include*, %struct.default_include** %p, align 8
  %incdec.ptr = getelementptr inbounds %struct.default_include, %struct.default_include* %58, i32 1
  store %struct.default_include* %incdec.ptr, %struct.default_include** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.72

if.end.72:                                        ; preds = %for.end, %land.lhs.true.32, %if.end.29
  store %struct.default_include* getelementptr inbounds ([0 x %struct.default_include], [0 x %struct.default_include]* @cpp_include_defaults, i32 0, i32 0), %struct.default_include** %p, align 8
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.94, %if.end.72
  %59 = load %struct.default_include*, %struct.default_include** %p, align 8
  %fname74 = getelementptr inbounds %struct.default_include, %struct.default_include* %59, i32 0, i32 0
  %60 = load i8*, i8** %fname74, align 8
  %tobool75 = icmp ne i8* %60, null
  br i1 %tobool75, label %for.body.76, label %for.end.96

for.body.76:                                      ; preds = %for.cond.73
  %61 = load %struct.default_include*, %struct.default_include** %p, align 8
  %cplusplus77 = getelementptr inbounds %struct.default_include, %struct.default_include* %61, i32 0, i32 2
  %62 = load i32, i32* %cplusplus77, align 4
  %tobool78 = icmp ne i32 %62, 0
  br i1 %tobool78, label %lor.lhs.false.79, label %if.then.88

lor.lhs.false.79:                                 ; preds = %for.body.76
  %63 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts80 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %63, i32 0, i32 37
  %cplusplus81 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts80, i32 0, i32 14
  %64 = load i8, i8* %cplusplus81, align 1
  %conv82 = zext i8 %64 to i32
  %tobool83 = icmp ne i32 %conv82, 0
  br i1 %tobool83, label %land.lhs.true.84, label %if.end.93

land.lhs.true.84:                                 ; preds = %lor.lhs.false.79
  %65 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts85 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %65, i32 0, i32 37
  %no_standard_cplusplus_includes86 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts85, i32 0, i32 45
  %66 = load i8, i8* %no_standard_cplusplus_includes86, align 1
  %tobool87 = icmp ne i8 %66, 0
  br i1 %tobool87, label %if.end.93, label %if.then.88

if.then.88:                                       ; preds = %land.lhs.true.84, %for.body.76
  %67 = load %struct.default_include*, %struct.default_include** %p, align 8
  %fname90 = getelementptr inbounds %struct.default_include, %struct.default_include* %67, i32 0, i32 0
  %68 = load i8*, i8** %fname90, align 8
  %69 = load %struct.default_include*, %struct.default_include** %p, align 8
  %component = getelementptr inbounds %struct.default_include, %struct.default_include* %69, i32 0, i32 1
  %70 = load i8*, i8** %component, align 8
  %call91 = call i8* @update_path(i8* %68, i8* %70)
  store i8* %call91, i8** %str89, align 8
  %71 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %72 = load i8*, i8** %str89, align 8
  %73 = load %struct.default_include*, %struct.default_include** %p, align 8
  %cxx_aware92 = getelementptr inbounds %struct.default_include, %struct.default_include* %73, i32 0, i32 3
  %74 = load i32, i32* %cxx_aware92, align 4
  call void @append_include_chain(%struct.cpp_reader* %71, i8* %72, i32 1, i32 %74)
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.88, %land.lhs.true.84, %lor.lhs.false.79
  br label %for.inc.94

for.inc.94:                                       ; preds = %if.end.93
  %75 = load %struct.default_include*, %struct.default_include** %p, align 8
  %incdec.ptr95 = getelementptr inbounds %struct.default_include, %struct.default_include* %75, i32 1
  store %struct.default_include* %incdec.ptr95, %struct.default_include** %p, align 8
  br label %for.cond.73

for.end.96:                                       ; preds = %for.cond.73
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @merge_include_chains(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %quote = alloca %struct.search_path*, align 8
  %brack = alloca %struct.search_path*, align 8
  %systm = alloca %struct.search_path*, align 8
  %qtail = alloca %struct.search_path*, align 8
  %pend = alloca %struct.cpp_pending*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 37
  %pending = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 3
  %1 = load %struct.cpp_pending*, %struct.cpp_pending** %pending, align 8
  store %struct.cpp_pending* %1, %struct.cpp_pending** %pend, align 8
  %2 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %quote_head = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %2, i32 0, i32 2
  %3 = load %struct.search_path*, %struct.search_path** %quote_head, align 8
  store %struct.search_path* %3, %struct.search_path** %quote, align 8
  %4 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %brack_head = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %4, i32 0, i32 4
  %5 = load %struct.search_path*, %struct.search_path** %brack_head, align 8
  store %struct.search_path* %5, %struct.search_path** %brack, align 8
  %6 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %systm_head = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %6, i32 0, i32 6
  %7 = load %struct.search_path*, %struct.search_path** %systm_head, align 8
  store %struct.search_path* %7, %struct.search_path** %systm, align 8
  %8 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %quote_tail = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %8, i32 0, i32 3
  %9 = load %struct.search_path*, %struct.search_path** %quote_tail, align 8
  store %struct.search_path* %9, %struct.search_path** %qtail, align 8
  %10 = load %struct.search_path*, %struct.search_path** %systm, align 8
  %tobool = icmp ne %struct.search_path* %10, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %after_head = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %11, i32 0, i32 8
  %12 = load %struct.search_path*, %struct.search_path** %after_head, align 8
  %13 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %systm_tail = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %13, i32 0, i32 7
  %14 = load %struct.search_path*, %struct.search_path** %systm_tail, align 8
  %next = getelementptr inbounds %struct.search_path, %struct.search_path* %14, i32 0, i32 0
  store %struct.search_path* %12, %struct.search_path** %next, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %after_head1 = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %15, i32 0, i32 8
  %16 = load %struct.search_path*, %struct.search_path** %after_head1, align 8
  store %struct.search_path* %16, %struct.search_path** %systm, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load %struct.search_path*, %struct.search_path** %brack, align 8
  %tobool2 = icmp ne %struct.search_path* %17, null
  br i1 %tobool2, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %if.end
  %18 = load %struct.search_path*, %struct.search_path** %systm, align 8
  %19 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %brack_tail = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %19, i32 0, i32 5
  %20 = load %struct.search_path*, %struct.search_path** %brack_tail, align 8
  %next4 = getelementptr inbounds %struct.search_path, %struct.search_path* %20, i32 0, i32 0
  store %struct.search_path* %18, %struct.search_path** %next4, align 8
  br label %if.end.6

if.else.5:                                        ; preds = %if.end
  %21 = load %struct.search_path*, %struct.search_path** %systm, align 8
  store %struct.search_path* %21, %struct.search_path** %brack, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.5, %if.then.3
  %22 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %23 = load %struct.search_path*, %struct.search_path** %brack, align 8
  %call = call %struct.search_path* @remove_dup_dirs(%struct.cpp_reader* %22, %struct.search_path* %23)
  %24 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %25 = load %struct.search_path*, %struct.search_path** %quote, align 8
  %call7 = call %struct.search_path* @remove_dup_dirs(%struct.cpp_reader* %24, %struct.search_path* %25)
  store %struct.search_path* %call7, %struct.search_path** %qtail, align 8
  %26 = load %struct.search_path*, %struct.search_path** %quote, align 8
  %tobool8 = icmp ne %struct.search_path* %26, null
  br i1 %tobool8, label %if.then.9, label %if.else.19

if.then.9:                                        ; preds = %if.end.6
  %27 = load %struct.search_path*, %struct.search_path** %brack, align 8
  %28 = load %struct.search_path*, %struct.search_path** %qtail, align 8
  %next10 = getelementptr inbounds %struct.search_path, %struct.search_path* %28, i32 0, i32 0
  store %struct.search_path* %27, %struct.search_path** %next10, align 8
  %29 = load %struct.search_path*, %struct.search_path** %brack, align 8
  %tobool11 = icmp ne %struct.search_path* %29, null
  br i1 %tobool11, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.then.9
  %30 = load %struct.search_path*, %struct.search_path** %qtail, align 8
  %ino = getelementptr inbounds %struct.search_path, %struct.search_path* %30, i32 0, i32 3
  %31 = load i64, i64* %ino, align 8
  %32 = load %struct.search_path*, %struct.search_path** %brack, align 8
  %ino12 = getelementptr inbounds %struct.search_path, %struct.search_path* %32, i32 0, i32 3
  %33 = load i64, i64* %ino12, align 8
  %cmp = icmp eq i64 %31, %33
  br i1 %cmp, label %land.lhs.true.13, label %if.end.18

land.lhs.true.13:                                 ; preds = %land.lhs.true
  %34 = load %struct.search_path*, %struct.search_path** %qtail, align 8
  %dev = getelementptr inbounds %struct.search_path, %struct.search_path* %34, i32 0, i32 4
  %35 = load i64, i64* %dev, align 8
  %36 = load %struct.search_path*, %struct.search_path** %brack, align 8
  %dev14 = getelementptr inbounds %struct.search_path, %struct.search_path* %36, i32 0, i32 4
  %37 = load i64, i64* %dev14, align 8
  %cmp15 = icmp eq i64 %35, %37
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %land.lhs.true.13
  %38 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %39 = load %struct.search_path*, %struct.search_path** %qtail, align 8
  %call17 = call %struct.search_path* @remove_dup_dir(%struct.cpp_reader* %38, %struct.search_path* %39)
  store %struct.search_path* %call17, %struct.search_path** %brack, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %land.lhs.true.13, %land.lhs.true, %if.then.9
  br label %if.end.20

if.else.19:                                       ; preds = %if.end.6
  %40 = load %struct.search_path*, %struct.search_path** %brack, align 8
  store %struct.search_path* %40, %struct.search_path** %quote, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.19, %if.end.18
  %41 = load %struct.search_path*, %struct.search_path** %quote, align 8
  %42 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts21 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %42, i32 0, i32 37
  %quote_include = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts21, i32 0, i32 5
  store %struct.search_path* %41, %struct.search_path** %quote_include, align 8
  %43 = load %struct.search_path*, %struct.search_path** %brack, align 8
  %44 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts22 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %44, i32 0, i32 37
  %bracket_include = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts22, i32 0, i32 6
  store %struct.search_path* %43, %struct.search_path** %bracket_include, align 8
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @deps_add_default_target(%struct.deps*, i8*) #1

declare zeroext i1 @_cpp_read_file(%struct.cpp_reader*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @read_original_filename(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %token = alloca %struct.cpp_token*, align 8
  %token1 = alloca %struct.cpp_token*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call %struct.cpp_token* @_cpp_lex_direct(%struct.cpp_reader* %0)
  store %struct.cpp_token* %call, %struct.cpp_token** %token, align 8
  %1 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %1, i32 0, i32 2
  %bf.load = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load to i32
  %cmp = icmp eq i32 %bf.cast, 40
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call1 = call %struct.cpp_token* @_cpp_lex_direct(%struct.cpp_reader* %2)
  store %struct.cpp_token* %call1, %struct.cpp_token** %token1, align 8
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @_cpp_backup_tokens(%struct.cpp_reader* %3, i32 1)
  %4 = load %struct.cpp_token*, %struct.cpp_token** %token1, align 8
  %type2 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %4, i32 0, i32 2
  %bf.load3 = load i8, i8* %type2, align 2
  %bf.cast4 = zext i8 %bf.load3 to i32
  %cmp5 = icmp eq i32 %bf.cast4, 57
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %6 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %6, i32 0, i32 3
  %7 = load i8, i8* %flags, align 1
  %conv = zext i8 %7 to i32
  %and = and i32 %conv, 1
  %call7 = call i32 @_cpp_handle_directive(%struct.cpp_reader* %5, i32 %and)
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  %8 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @_cpp_backup_tokens(%struct.cpp_reader* %8, i32 1)
  br label %return

return:                                           ; preds = %if.end.8, %if.then.6
  ret void
}

; Function Attrs: nounwind uwtable
define void @cpp_finish_options(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %p = alloca %struct.pending_option*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 37
  %cplusplus = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 14
  %1 = load i8, i8* %cplusplus, align 1
  %conv = zext i8 %1 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %2, i32 0, i32 37
  %operator_names = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts1, i32 0, i32 49
  %3 = load i8, i8* %operator_names, align 1
  %conv2 = zext i8 %3 to i32
  %tobool3 = icmp ne i32 %conv2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @mark_named_operators(%struct.cpp_reader* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts4 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %5, i32 0, i32 37
  %preprocessed = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts4, i32 0, i32 43
  %6 = load i8, i8* %preprocessed, align 1
  %tobool5 = icmp ne i8 %6, 0
  br i1 %tobool5, label %if.end.18, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %7 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @_cpp_do_file_change(%struct.cpp_reader* %7, i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 1, i32 0)
  %8 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @init_builtins(%struct.cpp_reader* %8)
  %9 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @_cpp_do_file_change(%struct.cpp_reader* %9, i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32 1, i32 0)
  %10 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts7 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %10, i32 0, i32 37
  %pending = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts7, i32 0, i32 3
  %11 = load %struct.cpp_pending*, %struct.cpp_pending** %pending, align 8
  %directive_head = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %11, i32 0, i32 0
  %12 = load %struct.pending_option*, %struct.pending_option** %directive_head, align 8
  store %struct.pending_option* %12, %struct.pending_option** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.6
  %13 = load %struct.pending_option*, %struct.pending_option** %p, align 8
  %tobool8 = icmp ne %struct.pending_option* %13, null
  br i1 %tobool8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.pending_option*, %struct.pending_option** %p, align 8
  %handler = getelementptr inbounds %struct.pending_option, %struct.pending_option* %14, i32 0, i32 2
  %15 = load void (%struct.cpp_reader*, i8*)*, void (%struct.cpp_reader*, i8*)** %handler, align 8
  %16 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %17 = load %struct.pending_option*, %struct.pending_option** %p, align 8
  %arg = getelementptr inbounds %struct.pending_option, %struct.pending_option* %17, i32 0, i32 1
  %18 = load i8*, i8** %arg, align 8
  call void %15(%struct.cpp_reader* %16, i8* %18)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load %struct.pending_option*, %struct.pending_option** %p, align 8
  %next = getelementptr inbounds %struct.pending_option, %struct.pending_option* %19, i32 0, i32 0
  %20 = load %struct.pending_option*, %struct.pending_option** %next, align 8
  store %struct.pending_option* %20, %struct.pending_option** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %if.end.13, %for.end
  %21 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts9 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %21, i32 0, i32 37
  %pending10 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts9, i32 0, i32 3
  %22 = load %struct.cpp_pending*, %struct.cpp_pending** %pending10, align 8
  %imacros_head = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %22, i32 0, i32 10
  %23 = load %struct.pending_option*, %struct.pending_option** %imacros_head, align 8
  store %struct.pending_option* %23, %struct.pending_option** %p, align 8
  %cmp = icmp ne %struct.pending_option* %23, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %25 = load %struct.pending_option*, %struct.pending_option** %p, align 8
  %call = call zeroext i1 @push_include(%struct.cpp_reader* %24, %struct.pending_option* %25)
  br i1 %call, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %while.body
  %26 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %26, i32 0, i32 0
  %27 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %return_at_eof = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %27, i32 0, i32 14
  store i8 1, i8* %return_at_eof, align 1
  %28 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @cpp_scan_nooutput(%struct.cpp_reader* %28)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %while.body
  %29 = load %struct.pending_option*, %struct.pending_option** %p, align 8
  %next14 = getelementptr inbounds %struct.pending_option, %struct.pending_option* %29, i32 0, i32 0
  %30 = load %struct.pending_option*, %struct.pending_option** %next14, align 8
  %31 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts15 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %31, i32 0, i32 37
  %pending16 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts15, i32 0, i32 3
  %32 = load %struct.cpp_pending*, %struct.cpp_pending** %pending16, align 8
  %imacros_head17 = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %32, i32 0, i32 10
  store %struct.pending_option* %30, %struct.pending_option** %imacros_head17, align 8
  %33 = load %struct.pending_option*, %struct.pending_option** %p, align 8
  %34 = bitcast %struct.pending_option* %33 to i8*
  call void @free(i8* %34) #4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.18

if.end.18:                                        ; preds = %while.end, %if.end
  %35 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts19 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %35, i32 0, i32 37
  %pending20 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts19, i32 0, i32 3
  %36 = load %struct.cpp_pending*, %struct.cpp_pending** %pending20, align 8
  %directive_head21 = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %36, i32 0, i32 0
  %37 = load %struct.pending_option*, %struct.pending_option** %directive_head21, align 8
  call void @free_chain(%struct.pending_option* %37)
  %38 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call22 = call zeroext i1 @_cpp_push_next_buffer(%struct.cpp_reader* %38)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mark_named_operators(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %b = alloca %struct.named_op*, align 8
  %hp = alloca %struct.cpp_hashnode*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.named_op* getelementptr inbounds ([11 x %struct.named_op], [11 x %struct.named_op]* @operator_array, i32 0, i32 0), %struct.named_op** %b, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.named_op*, %struct.named_op** %b, align 8
  %cmp = icmp ult %struct.named_op* %0, getelementptr inbounds (%struct.named_op, %struct.named_op* getelementptr inbounds ([11 x %struct.named_op], [11 x %struct.named_op]* @operator_array, i32 0, i32 0), i64 11)
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %2 = load %struct.named_op*, %struct.named_op** %b, align 8
  %name = getelementptr inbounds %struct.named_op, %struct.named_op* %2, i32 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %4 = load %struct.named_op*, %struct.named_op** %b, align 8
  %len = getelementptr inbounds %struct.named_op, %struct.named_op* %4, i32 0, i32 1
  %5 = load i32, i32* %len, align 4
  %call = call %struct.cpp_hashnode* @cpp_lookup(%struct.cpp_reader* %1, i8* %3, i32 %5)
  store %struct.cpp_hashnode* %call, %struct.cpp_hashnode** %hp, align 8
  %6 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %hp, align 8
  %flags = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %6, i32 0, i32 5
  %7 = load i8, i8* %flags, align 1
  %conv = zext i8 %7 to i32
  %or = or i32 %conv, 1
  %conv1 = trunc i32 %or to i8
  store i8 %conv1, i8* %flags, align 1
  %8 = load %struct.named_op*, %struct.named_op** %b, align 8
  %value = getelementptr inbounds %struct.named_op, %struct.named_op* %8, i32 0, i32 2
  %9 = load i32, i32* %value, align 4
  %10 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %hp, align 8
  %value2 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %10, i32 0, i32 6
  %operator = bitcast %union.anon.0* %value2 to i32*
  store i32 %9, i32* %operator, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %struct.named_op*, %struct.named_op** %b, align 8
  %incdec.ptr = getelementptr inbounds %struct.named_op, %struct.named_op* %11, i32 1
  store %struct.named_op* %incdec.ptr, %struct.named_op** %b, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @_cpp_do_file_change(%struct.cpp_reader*, i32, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @init_builtins(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %b = alloca %struct.builtin*, align 8
  %hp = alloca %struct.cpp_hashnode*, align 8
  %val = alloca i8*, align 8
  %str = alloca i8*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.builtin* getelementptr inbounds ([14 x %struct.builtin], [14 x %struct.builtin]* @builtin_array, i32 0, i32 0), %struct.builtin** %b, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.builtin*, %struct.builtin** %b, align 8
  %cmp = icmp ult %struct.builtin* %0, getelementptr inbounds (%struct.builtin, %struct.builtin* getelementptr inbounds ([14 x %struct.builtin], [14 x %struct.builtin]* @builtin_array, i32 0, i32 0), i64 14)
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.builtin*, %struct.builtin** %b, align 8
  %flags = getelementptr inbounds %struct.builtin, %struct.builtin* %1, i32 0, i32 3
  %2 = load i16, i16* %flags, align 2
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %4 = load %struct.builtin*, %struct.builtin** %b, align 8
  %name = getelementptr inbounds %struct.builtin, %struct.builtin* %4, i32 0, i32 0
  %5 = load i8*, i8** %name, align 8
  %6 = load %struct.builtin*, %struct.builtin** %b, align 8
  %len = getelementptr inbounds %struct.builtin, %struct.builtin* %6, i32 0, i32 4
  %7 = load i16, i16* %len, align 2
  %conv1 = zext i16 %7 to i32
  %call = call %struct.cpp_hashnode* @cpp_lookup(%struct.cpp_reader* %3, i8* %5, i32 %conv1)
  store %struct.cpp_hashnode* %call, %struct.cpp_hashnode** %hp, align 8
  %8 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %hp, align 8
  %type = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %8, i32 0, i32 4
  store i8 1, i8* %type, align 4
  %9 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %hp, align 8
  %flags2 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %9, i32 0, i32 5
  %10 = load i8, i8* %flags2, align 1
  %conv3 = zext i8 %10 to i32
  %or = or i32 %conv3, 20
  %conv4 = trunc i32 %or to i8
  store i8 %conv4, i8* %flags2, align 1
  %11 = load %struct.builtin*, %struct.builtin** %b, align 8
  %builtin = getelementptr inbounds %struct.builtin, %struct.builtin* %11, i32 0, i32 2
  %12 = load i8, i8* %builtin, align 1
  %conv5 = zext i8 %12 to i32
  %13 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %hp, align 8
  %value = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %13, i32 0, i32 6
  %builtin6 = bitcast %union.anon.0* %value to i32*
  store i32 %conv5, i32* %builtin6, align 4
  br label %if.end.34

if.else:                                          ; preds = %for.body
  %14 = load %struct.builtin*, %struct.builtin** %b, align 8
  %flags7 = getelementptr inbounds %struct.builtin, %struct.builtin* %14, i32 0, i32 3
  %15 = load i16, i16* %flags7, align 2
  %conv8 = zext i16 %15 to i32
  %and9 = and i32 %conv8, 1
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then.11, label %if.else.18

if.then.11:                                       ; preds = %if.else
  %16 = load %struct.builtin*, %struct.builtin** %b, align 8
  %len12 = getelementptr inbounds %struct.builtin, %struct.builtin* %16, i32 0, i32 4
  %17 = load i16, i16* %len12, align 2
  %conv13 = zext i16 %17 to i64
  %18 = load i8*, i8** @version_string, align 8
  %call14 = call i64 @strlen(i8* %18) #6
  %add = add i64 %conv13, %call14
  %add15 = add i64 %add, 5
  %19 = alloca i8, i64 %add15
  store i8* %19, i8** %str, align 8
  %20 = load i8*, i8** %str, align 8
  %21 = load %struct.builtin*, %struct.builtin** %b, align 8
  %name16 = getelementptr inbounds %struct.builtin, %struct.builtin* %21, i32 0, i32 0
  %22 = load i8*, i8** %name16, align 8
  %23 = load i8*, i8** @version_string, align 8
  %call17 = call i32 (i8*, i8*, ...) @sprintf(i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), i8* %22, i8* %23) #4
  br label %if.end.33

if.else.18:                                       ; preds = %if.else
  %24 = load %struct.builtin*, %struct.builtin** %b, align 8
  %flags19 = getelementptr inbounds %struct.builtin, %struct.builtin* %24, i32 0, i32 3
  %25 = load i16, i16* %flags19, align 2
  %conv20 = zext i16 %25 to i32
  %and21 = and i32 %conv20, 2
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.else.18
  %26 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %26, i32 0, i32 37
  %user_label_prefix = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 10
  %27 = load i8*, i8** %user_label_prefix, align 8
  store i8* %27, i8** %val, align 8
  br label %if.end

if.else.24:                                       ; preds = %if.else.18
  %28 = load %struct.builtin*, %struct.builtin** %b, align 8
  %value25 = getelementptr inbounds %struct.builtin, %struct.builtin* %28, i32 0, i32 1
  %29 = load i8*, i8** %value25, align 8
  store i8* %29, i8** %val, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.24, %if.then.23
  %30 = load %struct.builtin*, %struct.builtin** %b, align 8
  %len26 = getelementptr inbounds %struct.builtin, %struct.builtin* %30, i32 0, i32 4
  %31 = load i16, i16* %len26, align 2
  %conv27 = zext i16 %31 to i64
  %32 = load i8*, i8** %val, align 8
  %call28 = call i64 @strlen(i8* %32) #6
  %add29 = add i64 %conv27, %call28
  %add30 = add i64 %add29, 3
  %33 = alloca i8, i64 %add30
  store i8* %33, i8** %str, align 8
  %34 = load i8*, i8** %str, align 8
  %35 = load %struct.builtin*, %struct.builtin** %b, align 8
  %name31 = getelementptr inbounds %struct.builtin, %struct.builtin* %35, i32 0, i32 0
  %36 = load i8*, i8** %name31, align 8
  %37 = load i8*, i8** %val, align 8
  %call32 = call i32 (i8*, i8*, ...) @sprintf(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i8* %36, i8* %37) #4
  br label %if.end.33

if.end.33:                                        ; preds = %if.end, %if.then.11
  %38 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %39 = load i8*, i8** %str, align 8
  call void @_cpp_define_builtin(%struct.cpp_reader* %38, i8* %39)
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.34
  %40 = load %struct.builtin*, %struct.builtin** %b, align 8
  %incdec.ptr = getelementptr inbounds %struct.builtin, %struct.builtin* %40, i32 1
  store %struct.builtin* %incdec.ptr, %struct.builtin** %b, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts35 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %41, i32 0, i32 37
  %cplusplus = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts35, i32 0, i32 14
  %42 = load i8, i8* %cplusplus, align 1
  %tobool36 = icmp ne i8 %42, 0
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %for.end
  %43 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @_cpp_define_builtin(%struct.cpp_reader* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0))
  %44 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @_cpp_define_builtin(%struct.cpp_reader* %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.55, i32 0, i32 0))
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %for.end
  %45 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts39 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %45, i32 0, i32 37
  %objc = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts39, i32 0, i32 16
  %46 = load i8, i8* %objc, align 1
  %tobool40 = icmp ne i8 %46, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.38
  %47 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @_cpp_define_builtin(%struct.cpp_reader* %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i32 0, i32 0))
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.end.38
  %48 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts43 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %48, i32 0, i32 37
  %lang = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts43, i32 0, i32 11
  %49 = load i32, i32* %lang, align 4
  %cmp44 = icmp eq i32 %49, 3
  br i1 %cmp44, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %if.end.42
  %50 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @_cpp_define_builtin(%struct.cpp_reader* %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.57, i32 0, i32 0))
  br label %if.end.52

if.else.47:                                       ; preds = %if.end.42
  %51 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts48 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %51, i32 0, i32 37
  %c99 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts48, i32 0, i32 41
  %52 = load i8, i8* %c99, align 1
  %tobool49 = icmp ne i8 %52, 0
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.else.47
  %53 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @_cpp_define_builtin(%struct.cpp_reader* %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.58, i32 0, i32 0))
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %if.else.47
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.46
  %54 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts53 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %54, i32 0, i32 37
  %signed_char = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts53, i32 0, i32 13
  %55 = load i8, i8* %signed_char, align 1
  %conv54 = zext i8 %55 to i32
  %cmp55 = icmp eq i32 %conv54, 0
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.52
  %56 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @_cpp_define_builtin(%struct.cpp_reader* %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.59, i32 0, i32 0))
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %if.end.52
  %57 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts59 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %57, i32 0, i32 37
  %lang60 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts59, i32 0, i32 11
  %58 = load i32, i32* %lang60, align 4
  %cmp61 = icmp eq i32 %58, 2
  br i1 %cmp61, label %if.then.72, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.58
  %59 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts63 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %59, i32 0, i32 37
  %lang64 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts63, i32 0, i32 11
  %60 = load i32, i32* %lang64, align 4
  %cmp65 = icmp eq i32 %60, 3
  br i1 %cmp65, label %if.then.72, label %lor.lhs.false.67

lor.lhs.false.67:                                 ; preds = %lor.lhs.false
  %61 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts68 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %61, i32 0, i32 37
  %lang69 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts68, i32 0, i32 11
  %62 = load i32, i32* %lang69, align 4
  %cmp70 = icmp eq i32 %62, 4
  br i1 %cmp70, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %lor.lhs.false.67, %lor.lhs.false, %if.end.58
  %63 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @_cpp_define_builtin(%struct.cpp_reader* %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.60, i32 0, i32 0))
  br label %if.end.80

if.else.73:                                       ; preds = %lor.lhs.false.67
  %64 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts74 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %64, i32 0, i32 37
  %lang75 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts74, i32 0, i32 11
  %65 = load i32, i32* %lang75, align 4
  %cmp76 = icmp eq i32 %65, 9
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.else.73
  %66 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @_cpp_define_builtin(%struct.cpp_reader* %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.61, i32 0, i32 0))
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.78, %if.else.73
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.72
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @push_include(%struct.cpp_reader* %pfile, %struct.pending_option* %p) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %p.addr = alloca %struct.pending_option*, align 8
  %header = alloca %struct.cpp_token, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.pending_option* %p, %struct.pending_option** %p.addr, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %header, i32 0, i32 2
  store i8 61, i8* %type, align 2
  %0 = load %struct.pending_option*, %struct.pending_option** %p.addr, align 8
  %arg = getelementptr inbounds %struct.pending_option, %struct.pending_option* %0, i32 0, i32 1
  %1 = load i8*, i8** %arg, align 8
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %header, i32 0, i32 4
  %str = bitcast %union.anon* %val to %struct.cpp_string*
  %text = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str, i32 0, i32 1
  store i8* %1, i8** %text, align 8
  %2 = load %struct.pending_option*, %struct.pending_option** %p.addr, align 8
  %arg1 = getelementptr inbounds %struct.pending_option, %struct.pending_option* %2, i32 0, i32 1
  %3 = load i8*, i8** %arg1, align 8
  %call = call i64 @strlen(i8* %3) #6
  %conv = trunc i64 %call to i32
  %val2 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %header, i32 0, i32 4
  %str3 = bitcast %union.anon* %val2 to %struct.cpp_string*
  %len = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str3, i32 0, i32 0
  store i32 %conv, i32* %len, align 4
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %line = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %4, i32 0, i32 4
  %5 = load i32, i32* %line, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %line, align 4
  %6 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call4 = call zeroext i1 @_cpp_execute_include(%struct.cpp_reader* %6, %struct.cpp_token* %header, i32 3)
  ret i1 %call4
}

declare void @cpp_scan_nooutput(%struct.cpp_reader*) #1

; Function Attrs: nounwind uwtable
define internal void @free_chain(%struct.pending_option* %head) #0 {
entry:
  %head.addr = alloca %struct.pending_option*, align 8
  %next = alloca %struct.pending_option*, align 8
  store %struct.pending_option* %head, %struct.pending_option** %head.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.pending_option*, %struct.pending_option** %head.addr, align 8
  %tobool = icmp ne %struct.pending_option* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.pending_option*, %struct.pending_option** %head.addr, align 8
  %next1 = getelementptr inbounds %struct.pending_option, %struct.pending_option* %1, i32 0, i32 0
  %2 = load %struct.pending_option*, %struct.pending_option** %next1, align 8
  store %struct.pending_option* %2, %struct.pending_option** %next, align 8
  %3 = load %struct.pending_option*, %struct.pending_option** %head.addr, align 8
  %4 = bitcast %struct.pending_option* %3 to i8*
  call void @free(i8* %4) #4
  %5 = load %struct.pending_option*, %struct.pending_option** %next, align 8
  store %struct.pending_option* %5, %struct.pending_option** %head.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @_cpp_push_next_buffer(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %pushed = alloca i8, align 1
  %p = alloca %struct.pending_option*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i8 0, i8* %pushed, align 1
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 37
  %pending = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 3
  %1 = load %struct.cpp_pending*, %struct.cpp_pending** %pending, align 8
  %tobool = icmp ne %struct.cpp_pending* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %2, i32 0, i32 37
  %pending2 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts1, i32 0, i32 3
  %3 = load %struct.cpp_pending*, %struct.cpp_pending** %pending2, align 8
  %imacros_head = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %3, i32 0, i32 10
  %4 = load %struct.pending_option*, %struct.pending_option** %imacros_head, align 8
  %cmp = icmp eq %struct.pending_option* %4, null
  br i1 %cmp, label %if.then, label %if.end.27

if.then:                                          ; preds = %land.lhs.true
  br label %while.cond

while.cond:                                       ; preds = %if.end.11, %if.then
  %5 = load i8, i8* %pushed, align 1
  %tobool3 = trunc i8 %5 to i1
  %lnot = xor i1 %tobool3, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts4 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %6, i32 0, i32 37
  %pending5 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts4, i32 0, i32 3
  %7 = load %struct.cpp_pending*, %struct.cpp_pending** %pending5, align 8
  %include_head = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %7, i32 0, i32 12
  %8 = load %struct.pending_option*, %struct.pending_option** %include_head, align 8
  store %struct.pending_option* %8, %struct.pending_option** %p, align 8
  %9 = load %struct.pending_option*, %struct.pending_option** %p, align 8
  %cmp6 = icmp eq %struct.pending_option* %9, null
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %10 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts8 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %10, i32 0, i32 37
  %preprocessed = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts8, i32 0, i32 43
  %11 = load i8, i8* %preprocessed, align 1
  %tobool9 = icmp ne i8 %11, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end
  %12 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %13 = load %struct.pending_option*, %struct.pending_option** %p, align 8
  %call = call zeroext i1 @push_include(%struct.cpp_reader* %12, %struct.pending_option* %13)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %pushed, align 1
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end
  %14 = load %struct.pending_option*, %struct.pending_option** %p, align 8
  %next = getelementptr inbounds %struct.pending_option, %struct.pending_option* %14, i32 0, i32 0
  %15 = load %struct.pending_option*, %struct.pending_option** %next, align 8
  %16 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts12 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %16, i32 0, i32 37
  %pending13 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts12, i32 0, i32 3
  %17 = load %struct.cpp_pending*, %struct.cpp_pending** %pending13, align 8
  %include_head14 = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %17, i32 0, i32 12
  store %struct.pending_option* %15, %struct.pending_option** %include_head14, align 8
  %18 = load %struct.pending_option*, %struct.pending_option** %p, align 8
  %19 = bitcast %struct.pending_option* %18 to i8*
  call void @free(i8* %19) #4
  br label %while.cond

while.end:                                        ; preds = %if.then.7, %while.cond
  %20 = load i8, i8* %pushed, align 1
  %tobool15 = trunc i8 %20 to i1
  br i1 %tobool15, label %if.end.26, label %if.then.16

if.then.16:                                       ; preds = %while.end
  %21 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts17 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %21, i32 0, i32 37
  %pending18 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts17, i32 0, i32 3
  %22 = load %struct.cpp_pending*, %struct.cpp_pending** %pending18, align 8
  %23 = bitcast %struct.cpp_pending* %22 to i8*
  call void @free(i8* %23) #4
  %24 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts19 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %24, i32 0, i32 37
  %pending20 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts19, i32 0, i32 3
  store %struct.cpp_pending* null, %struct.cpp_pending** %pending20, align 8
  %25 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts21 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %25, i32 0, i32 37
  %preprocessed22 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts21, i32 0, i32 43
  %26 = load i8, i8* %preprocessed22, align 1
  %tobool23 = icmp ne i8 %26, 0
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.then.16
  %27 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %28 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %line_maps = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %28, i32 0, i32 2
  %maps = getelementptr inbounds %struct.line_maps, %struct.line_maps* %line_maps, i32 0, i32 0
  %29 = load %struct.line_map*, %struct.line_map** %maps, align 8
  %arrayidx = getelementptr inbounds %struct.line_map, %struct.line_map* %29, i64 0
  %to_file = getelementptr inbounds %struct.line_map, %struct.line_map* %arrayidx, i32 0, i32 0
  %30 = load i8*, i8** %to_file, align 8
  call void @_cpp_do_file_change(%struct.cpp_reader* %27, i32 2, i8* %30, i32 1, i32 0)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.then.16
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %while.end
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %land.lhs.true, %entry
  %31 = load i8, i8* %pushed, align 1
  %tobool28 = trunc i8 %31 to i1
  ret i1 %tobool28
}

; Function Attrs: nounwind uwtable
define void @cpp_finish(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 0
  %1 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %tobool = icmp ne %struct.cpp_buffer* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @_cpp_pop_buffer(%struct.cpp_reader* %2)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %3, i32 0, i32 37
  %print_deps = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 21
  %4 = load i8, i8* %print_deps, align 1
  %conv = zext i8 %4 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %errors = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %5, i32 0, i32 20
  %6 = load i32, i32* %errors, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @output_deps(%struct.cpp_reader* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.end
  %8 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts3 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %8, i32 0, i32 37
  %print_include_names = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts3, i32 0, i32 25
  %9 = load i8, i8* %print_include_names, align 1
  %tobool4 = icmp ne i8 %9, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %10 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @_cpp_report_missing_guards(%struct.cpp_reader* %10)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @output_deps(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %deps_stream = alloca %struct._IO_FILE*, align 8
  %deps_mode = alloca i8*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %deps_stream, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 37
  %print_deps_append = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 24
  %1 = load i8, i8* %print_deps_append, align 1
  %conv = zext i8 %1 to i32
  %tobool = icmp ne i32 %conv, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.80, i32 0, i32 0)
  store i8* %cond, i8** %deps_mode, align 8
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %2, i32 0, i32 37
  %deps_file = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts1, i32 0, i32 4
  %3 = load i8*, i8** %deps_file, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %5, %struct._IO_FILE** %deps_stream, align 8
  br label %if.end.11

if.else:                                          ; preds = %entry
  %6 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts4 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %6, i32 0, i32 37
  %deps_file5 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts4, i32 0, i32 4
  %7 = load i8*, i8** %deps_file5, align 8
  %8 = load i8*, i8** %deps_mode, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %7, i8* %8)
  store %struct._IO_FILE* %call, %struct._IO_FILE** %deps_stream, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %deps_stream, align 8
  %cmp6 = icmp eq %struct._IO_FILE* %9, null
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.else
  %10 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %11 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts9 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %11, i32 0, i32 37
  %deps_file10 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts9, i32 0, i32 4
  %12 = load i8*, i8** %deps_file10, align 8
  call void @cpp_notice_from_errno(%struct.cpp_reader* %10, i8* %12)
  br label %if.end.27

if.end:                                           ; preds = %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then
  %13 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %deps = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %13, i32 0, i32 31
  %14 = load %struct.deps*, %struct.deps** %deps, align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %deps_stream, align 8
  call void @deps_write(%struct.deps* %14, %struct._IO_FILE* %15, i32 72)
  %16 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts12 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %16, i32 0, i32 37
  %deps_phony_targets = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts12, i32 0, i32 22
  %17 = load i8, i8* %deps_phony_targets, align 1
  %tobool13 = icmp ne i8 %17, 0
  br i1 %tobool13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.11
  %18 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %deps15 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %18, i32 0, i32 31
  %19 = load %struct.deps*, %struct.deps** %deps15, align 8
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %deps_stream, align 8
  call void @deps_phony_targets(%struct.deps* %19, %struct._IO_FILE* %20)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.11
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %deps_stream, align 8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %cmp17 = icmp ne %struct._IO_FILE* %21, %22
  br i1 %cmp17, label %if.then.19, label %if.end.27

if.then.19:                                       ; preds = %if.end.16
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %deps_stream, align 8
  %call20 = call i32 @ferror(%struct._IO_FILE* %23) #4
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.19
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %deps_stream, align 8
  %call22 = call i32 @fclose(%struct._IO_FILE* %24)
  %cmp23 = icmp ne i32 %call22, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %lor.lhs.false, %if.then.19
  %25 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_fatal(%struct.cpp_reader* %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.81, i32 0, i32 0))
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %lor.lhs.false
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.8, %if.end.26, %if.end.16
  ret void
}

declare void @_cpp_report_missing_guards(%struct.cpp_reader*) #1

; Function Attrs: nounwind uwtable
define i32 @cpp_handle_option(%struct.cpp_reader* %pfile, i32 %argc, i8** %argv, i32 %ignore) #0 {
entry:
  %retval = alloca i32, align 4
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %ignore.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %pend = alloca %struct.cpp_pending*, align 8
  %opt_code = alloca i32, align 4
  %opt_index = alloca i32, align 4
  %arg = alloca i8*, align 8
  %endptr = alloca i8*, align 8
  %tabstop = alloca i64, align 8
  %c = alloca i8, align 1
  %o = alloca %struct.pending_option*, align 8
  %fname = alloca i8*, align 8
  %len = alloca i32, align 4
  %ipl = alloca i64, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 %ignore, i32* %ignore.addr, align 4
  store i32 0, i32* %i, align 4
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 37
  %pending = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 3
  %1 = load %struct.cpp_pending*, %struct.cpp_pending** %pending, align 8
  store %struct.cpp_pending* %1, %struct.cpp_pending** %pend, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx1, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp ne i32 %conv, 45
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load i8**, i8*** %argv.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %7, i64 %idxprom3
  %8 = load i8*, i8** %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %9 to i32
  %cmp7 = icmp eq i32 %conv6, 0
  br i1 %cmp7, label %if.then, label %if.else.27

if.then:                                          ; preds = %lor.lhs.false, %entry
  %10 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts9 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %10, i32 0, i32 37
  %in_fname = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts9, i32 0, i32 0
  %11 = load i8*, i8** %in_fname, align 8
  %cmp10 = icmp eq i8* %11, null
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then
  %12 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %12 to i64
  %13 = load i8**, i8*** %argv.addr, align 8
  %arrayidx14 = getelementptr inbounds i8*, i8** %13, i64 %idxprom13
  %14 = load i8*, i8** %arrayidx14, align 8
  %15 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts15 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %15, i32 0, i32 37
  %in_fname16 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts15, i32 0, i32 0
  store i8* %14, i8** %in_fname16, align 8
  br label %if.end.26

if.else:                                          ; preds = %if.then
  %16 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts17 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %16, i32 0, i32 37
  %out_fname = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts17, i32 0, i32 1
  %17 = load i8*, i8** %out_fname, align 8
  %cmp18 = icmp eq i8* %17, null
  br i1 %cmp18, label %if.then.20, label %if.else.25

if.then.20:                                       ; preds = %if.else
  %18 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %18 to i64
  %19 = load i8**, i8*** %argv.addr, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %19, i64 %idxprom21
  %20 = load i8*, i8** %arrayidx22, align 8
  %21 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts23 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %21, i32 0, i32 37
  %out_fname24 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts23, i32 0, i32 1
  store i8* %20, i8** %out_fname24, align 8
  br label %if.end

if.else.25:                                       ; preds = %if.else
  %22 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %23 = load i8*, i8** @progname, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_fatal(%struct.cpp_reader* %22, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i32 0, i32 0), i8* %23)
  br label %if.end

if.end:                                           ; preds = %if.else.25, %if.then.20
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %if.then.12
  br label %if.end.466

if.else.27:                                       ; preds = %lor.lhs.false
  store i8* null, i8** %arg, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %24 to i64
  %25 = load i8**, i8*** %argv.addr, align 8
  %arrayidx29 = getelementptr inbounds i8*, i8** %25, i64 %idxprom28
  %26 = load i8*, i8** %arrayidx29, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %26, i64 1
  %call = call i32 @parse_option(i8* %arrayidx30)
  store i32 %call, i32* %opt_index, align 4
  %27 = load i32, i32* %opt_index, align 4
  %cmp31 = icmp slt i32 %27, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.else.27
  %28 = load i32, i32* %i, align 4
  store i32 %28, i32* %retval
  br label %return

if.end.34:                                        ; preds = %if.else.27
  %29 = load i32, i32* %opt_index, align 4
  %idxprom35 = sext i32 %29 to i64
  %arrayidx36 = getelementptr inbounds [68 x %struct.cl_option], [68 x %struct.cl_option]* @cl_options, i32 0, i64 %idxprom35
  %opt_code37 = getelementptr inbounds %struct.cl_option, %struct.cl_option* %arrayidx36, i32 0, i32 3
  %30 = load i32, i32* %opt_code37, align 4
  store i32 %30, i32* %opt_code, align 4
  %31 = load i32, i32* %opt_index, align 4
  %idxprom38 = sext i32 %31 to i64
  %arrayidx39 = getelementptr inbounds [68 x %struct.cl_option], [68 x %struct.cl_option]* @cl_options, i32 0, i64 %idxprom38
  %msg = getelementptr inbounds %struct.cl_option, %struct.cl_option* %arrayidx39, i32 0, i32 1
  %32 = load i8*, i8** %msg, align 8
  %tobool = icmp ne i8* %32, null
  br i1 %tobool, label %if.then.40, label %if.end.64

if.then.40:                                       ; preds = %if.end.34
  %33 = load i32, i32* %opt_index, align 4
  %idxprom41 = sext i32 %33 to i64
  %arrayidx42 = getelementptr inbounds [68 x %struct.cl_option], [68 x %struct.cl_option]* @cl_options, i32 0, i64 %idxprom41
  %opt_len = getelementptr inbounds %struct.cl_option, %struct.cl_option* %arrayidx42, i32 0, i32 2
  %34 = load i64, i64* %opt_len, align 8
  %add = add i64 %34, 1
  %35 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %35 to i64
  %36 = load i8**, i8*** %argv.addr, align 8
  %arrayidx44 = getelementptr inbounds i8*, i8** %36, i64 %idxprom43
  %37 = load i8*, i8** %arrayidx44, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %37, i64 %add
  store i8* %arrayidx45, i8** %arg, align 8
  %38 = load i8*, i8** %arg, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %38, i64 0
  %39 = load i8, i8* %arrayidx46, align 1
  %conv47 = sext i8 %39 to i32
  %cmp48 = icmp eq i32 %conv47, 0
  br i1 %cmp48, label %land.lhs.true, label %if.end.63

land.lhs.true:                                    ; preds = %if.then.40
  %40 = load i32, i32* %opt_code, align 4
  %cmp50 = icmp ne i32 %40, 21
  br i1 %cmp50, label %if.then.52, label %if.end.63

if.then.52:                                       ; preds = %land.lhs.true
  %41 = load i32, i32* %i, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %i, align 4
  %idxprom53 = sext i32 %inc to i64
  %42 = load i8**, i8*** %argv.addr, align 8
  %arrayidx54 = getelementptr inbounds i8*, i8** %42, i64 %idxprom53
  %43 = load i8*, i8** %arrayidx54, align 8
  store i8* %43, i8** %arg, align 8
  %44 = load i8*, i8** %arg, align 8
  %tobool55 = icmp ne i8* %44, null
  br i1 %tobool55, label %if.end.62, label %if.then.56

if.then.56:                                       ; preds = %if.then.52
  %45 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %46 = load i32, i32* %opt_index, align 4
  %idxprom57 = sext i32 %46 to i64
  %arrayidx58 = getelementptr inbounds [68 x %struct.cl_option], [68 x %struct.cl_option]* @cl_options, i32 0, i64 %idxprom57
  %msg59 = getelementptr inbounds %struct.cl_option, %struct.cl_option* %arrayidx58, i32 0, i32 1
  %47 = load i8*, i8** %msg59, align 8
  %48 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %48, 1
  %idxprom60 = sext i32 %sub to i64
  %49 = load i8**, i8*** %argv.addr, align 8
  %arrayidx61 = getelementptr inbounds i8*, i8** %49, i64 %idxprom60
  %50 = load i8*, i8** %arrayidx61, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_fatal(%struct.cpp_reader* %45, i8* %47, i8* %50)
  %51 = load i32, i32* %argc.addr, align 4
  store i32 %51, i32* %retval
  br label %return

if.end.62:                                        ; preds = %if.then.52
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %land.lhs.true, %if.then.40
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.end.34
  %52 = load i32, i32* %opt_code, align 4
  switch i32 %52, label %sw.epilog.465 [
    i32 68, label %sw.bb
    i32 23, label %sw.bb.65
    i32 24, label %sw.bb.67
    i32 25, label %sw.bb.70
    i32 28, label %sw.bb.72
    i32 26, label %sw.bb.74
    i32 29, label %sw.bb.77
    i32 27, label %sw.bb.79
    i32 30, label %sw.bb.82
    i32 32, label %sw.bb.84
    i32 31, label %sw.bb.87
    i32 67, label %sw.bb.109
    i32 33, label %sw.bb.111
    i32 2, label %sw.bb.111
    i32 3, label %sw.bb.113
    i32 4, label %sw.bb.116
    i32 65, label %sw.bb.119
    i32 66, label %sw.bb.122
    i32 6, label %sw.bb.124
    i32 19, label %sw.bb.126
    i32 0, label %sw.bb.128
    i32 8, label %sw.bb.130
    i32 7, label %sw.bb.132
    i32 51, label %sw.bb.133
    i32 50, label %sw.bb.135
    i32 64, label %sw.bb.137
    i32 1, label %sw.bb.139
    i32 52, label %sw.bb.142
    i32 37, label %sw.bb.144
    i32 42, label %sw.bb.149
    i32 43, label %sw.bb.150
    i32 45, label %sw.bb.151
    i32 46, label %sw.bb.152
    i32 41, label %sw.bb.153
    i32 53, label %sw.bb.154
    i32 57, label %sw.bb.155
    i32 59, label %sw.bb.156
    i32 58, label %sw.bb.156
    i32 61, label %sw.bb.157
    i32 60, label %sw.bb.158
    i32 54, label %sw.bb.158
    i32 44, label %sw.bb.158
    i32 63, label %sw.bb.159
    i32 62, label %sw.bb.159
    i32 56, label %sw.bb.159
    i32 55, label %sw.bb.159
    i32 47, label %sw.bb.160
    i32 48, label %sw.bb.162
    i32 49, label %sw.bb.164
    i32 22, label %sw.bb.174
    i32 13, label %sw.bb.189
    i32 10, label %sw.bb.191
    i32 14, label %sw.bb.194
    i32 12, label %sw.bb.199
    i32 16, label %sw.bb.201
    i32 17, label %sw.bb.203
    i32 18, label %sw.bb.203
    i32 11, label %sw.bb.206
    i32 15, label %sw.bb.211
    i32 5, label %sw.bb.216
    i32 20, label %sw.bb.232
    i32 9, label %sw.bb.233
    i32 38, label %sw.bb.249
    i32 36, label %sw.bb.251
    i32 35, label %sw.bb.251
    i32 39, label %sw.bb.275
    i32 40, label %sw.bb.275
    i32 34, label %sw.bb.311
    i32 21, label %sw.bb.313
  ]

sw.bb:                                            ; preds = %if.end.64
  br label %sw.epilog.465

sw.bb.65:                                         ; preds = %if.end.64
  %53 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts66 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %53, i32 0, i32 37
  %user_label_prefix = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts66, i32 0, i32 10
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8** %user_label_prefix, align 8
  br label %sw.epilog.465

sw.bb.67:                                         ; preds = %if.end.64
  %54 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts68 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %54, i32 0, i32 37
  %user_label_prefix69 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts68, i32 0, i32 10
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8** %user_label_prefix69, align 8
  br label %sw.epilog.465

sw.bb.70:                                         ; preds = %if.end.64
  %55 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts71 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %55, i32 0, i32 37
  %operator_names = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts71, i32 0, i32 49
  store i8 0, i8* %operator_names, align 1
  br label %sw.epilog.465

sw.bb.72:                                         ; preds = %if.end.64
  %56 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts73 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %56, i32 0, i32 37
  %preprocessed = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts73, i32 0, i32 43
  store i8 1, i8* %preprocessed, align 1
  br label %sw.epilog.465

sw.bb.74:                                         ; preds = %if.end.64
  %57 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts75 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %57, i32 0, i32 37
  %preprocessed76 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts75, i32 0, i32 43
  store i8 0, i8* %preprocessed76, align 1
  br label %sw.epilog.465

sw.bb.77:                                         ; preds = %if.end.64
  %58 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts78 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %58, i32 0, i32 37
  %show_column = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts78, i32 0, i32 48
  store i8 1, i8* %show_column, align 1
  br label %sw.epilog.465

sw.bb.79:                                         ; preds = %if.end.64
  %59 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts80 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %59, i32 0, i32 37
  %show_column81 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts80, i32 0, i32 48
  store i8 0, i8* %show_column81, align 1
  br label %sw.epilog.465

sw.bb.82:                                         ; preds = %if.end.64
  %60 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts83 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %60, i32 0, i32 37
  %signed_char = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts83, i32 0, i32 13
  store i8 1, i8* %signed_char, align 1
  br label %sw.epilog.465

sw.bb.84:                                         ; preds = %if.end.64
  %61 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts85 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %61, i32 0, i32 37
  %signed_char86 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts85, i32 0, i32 13
  store i8 0, i8* %signed_char86, align 1
  br label %sw.epilog.465

sw.bb.87:                                         ; preds = %if.end.64
  %62 = load i8*, i8** %arg, align 8
  %arrayidx88 = getelementptr inbounds i8, i8* %62, i64 0
  %63 = load i8, i8* %arrayidx88, align 1
  %conv89 = sext i8 %63 to i32
  %cmp90 = icmp ne i32 %conv89, 0
  br i1 %cmp90, label %if.then.92, label %if.end.108

if.then.92:                                       ; preds = %sw.bb.87
  %64 = load i8*, i8** %arg, align 8
  %call93 = call i64 @strtol(i8* %64, i8** %endptr, i32 10) #4
  store i64 %call93, i64* %tabstop, align 8
  %65 = load i8*, i8** %endptr, align 8
  %66 = load i8, i8* %65, align 1
  %conv94 = sext i8 %66 to i32
  %cmp95 = icmp eq i32 %conv94, 0
  br i1 %cmp95, label %land.lhs.true.97, label %if.end.107

land.lhs.true.97:                                 ; preds = %if.then.92
  %67 = load i64, i64* %tabstop, align 8
  %cmp98 = icmp sge i64 %67, 1
  br i1 %cmp98, label %land.lhs.true.100, label %if.end.107

land.lhs.true.100:                                ; preds = %land.lhs.true.97
  %68 = load i64, i64* %tabstop, align 8
  %cmp101 = icmp sle i64 %68, 100
  br i1 %cmp101, label %if.then.103, label %if.end.107

if.then.103:                                      ; preds = %land.lhs.true.100
  %69 = load i64, i64* %tabstop, align 8
  %conv104 = trunc i64 %69 to i32
  %70 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts105 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %70, i32 0, i32 37
  %tabstop106 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts105, i32 0, i32 2
  store i32 %conv104, i32* %tabstop106, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.103, %land.lhs.true.100, %land.lhs.true.97, %if.then.92
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %sw.bb.87
  br label %sw.epilog.465

sw.bb.109:                                        ; preds = %if.end.64
  %71 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts110 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %71, i32 0, i32 37
  %inhibit_warnings = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts110, i32 0, i32 27
  store i8 1, i8* %inhibit_warnings, align 1
  br label %sw.epilog.465

sw.bb.111:                                        ; preds = %if.end.64, %if.end.64
  call void @print_help()
  %72 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts112 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %72, i32 0, i32 37
  %help_only = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts112, i32 0, i32 50
  store i8 1, i8* %help_only, align 1
  br label %sw.epilog.465

sw.bb.113:                                        ; preds = %if.end.64
  %73 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts114 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %73, i32 0, i32 37
  %help_only115 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts114, i32 0, i32 50
  store i8 1, i8* %help_only115, align 1
  br label %sw.epilog.465

sw.bb.116:                                        ; preds = %if.end.64
  %74 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts117 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %74, i32 0, i32 37
  %help_only118 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts117, i32 0, i32 50
  store i8 1, i8* %help_only118, align 1
  %75 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %print_version = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %75, i32 0, i32 39
  store i8 1, i8* %print_version, align 1
  br label %sw.epilog.465

sw.bb.119:                                        ; preds = %if.end.64
  %76 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts120 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %76, i32 0, i32 37
  %verbose = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts120, i32 0, i32 12
  store i8 1, i8* %verbose, align 1
  %77 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %print_version121 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %77, i32 0, i32 39
  store i8 1, i8* %print_version121, align 1
  br label %sw.epilog.465

sw.bb.122:                                        ; preds = %if.end.64
  %78 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %print_version123 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %78, i32 0, i32 39
  store i8 1, i8* %print_version123, align 1
  br label %sw.epilog.465

sw.bb.124:                                        ; preds = %if.end.64
  %79 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts125 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %79, i32 0, i32 37
  %discard_comments = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts125, i32 0, i32 17
  store i8 0, i8* %discard_comments, align 1
  br label %sw.epilog.465

sw.bb.126:                                        ; preds = %if.end.64
  %80 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts127 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %80, i32 0, i32 37
  %no_line_commands = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts127, i32 0, i32 37
  store i8 1, i8* %no_line_commands, align 1
  br label %sw.epilog.465

sw.bb.128:                                        ; preds = %if.end.64
  %81 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts129 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %81, i32 0, i32 37
  %dollars_in_ident = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts129, i32 0, i32 39
  store i8 0, i8* %dollars_in_ident, align 1
  br label %sw.epilog.465

sw.bb.130:                                        ; preds = %if.end.64
  %82 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts131 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %82, i32 0, i32 37
  %print_include_names = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts131, i32 0, i32 25
  store i8 1, i8* %print_include_names, align 1
  br label %sw.epilog.465

sw.bb.132:                                        ; preds = %if.end.64
  %83 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %84 = load i8*, i8** %arg, align 8
  call void @new_pending_directive(%struct.cpp_pending* %83, i8* %84, void (%struct.cpp_reader*, i8*)* @cpp_define)
  br label %sw.epilog.465

sw.bb.133:                                        ; preds = %if.end.64
  %85 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts134 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %85, i32 0, i32 37
  %pedantic_errors = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts134, i32 0, i32 26
  store i8 1, i8* %pedantic_errors, align 1
  br label %sw.bb.135

sw.bb.135:                                        ; preds = %if.end.64, %sw.bb.133
  %86 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts136 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %86, i32 0, i32 37
  %pedantic = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts136, i32 0, i32 42
  store i8 1, i8* %pedantic, align 1
  br label %sw.epilog.465

sw.bb.137:                                        ; preds = %if.end.64
  %87 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts138 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %87, i32 0, i32 37
  %trigraphs = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts138, i32 0, i32 18
  store i8 1, i8* %trigraphs, align 1
  br label %sw.epilog.465

sw.bb.139:                                        ; preds = %if.end.64
  %88 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts140 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %88, i32 0, i32 37
  %cplusplus = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts140, i32 0, i32 14
  store i8 1, i8* %cplusplus, align 1
  %89 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts141 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %89, i32 0, i32 37
  %cplusplus_comments = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts141, i32 0, i32 15
  store i8 1, i8* %cplusplus_comments, align 1
  br label %sw.epilog.465

sw.bb.142:                                        ; preds = %if.end.64
  %90 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts143 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %90, i32 0, i32 37
  %remap = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts143, i32 0, i32 36
  store i8 1, i8* %remap, align 1
  br label %sw.epilog.465

sw.bb.144:                                        ; preds = %if.end.64
  %91 = load i8*, i8** %arg, align 8
  %92 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts145 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %92, i32 0, i32 37
  %include_prefix = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts145, i32 0, i32 8
  store i8* %91, i8** %include_prefix, align 8
  %93 = load i8*, i8** %arg, align 8
  %call146 = call i64 @strlen(i8* %93) #6
  %conv147 = trunc i64 %call146 to i32
  %94 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts148 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %94, i32 0, i32 37
  %include_prefix_len = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts148, i32 0, i32 9
  store i32 %conv147, i32* %include_prefix_len, align 4
  br label %sw.epilog.465

sw.bb.149:                                        ; preds = %if.end.64
  %95 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @set_lang(%struct.cpp_reader* %95, i32 0)
  br label %sw.epilog.465

sw.bb.150:                                        ; preds = %if.end.64
  %96 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @set_lang(%struct.cpp_reader* %96, i32 5)
  br label %sw.epilog.465

sw.bb.151:                                        ; preds = %if.end.64
  %97 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @set_lang(%struct.cpp_reader* %97, i32 7)
  br label %sw.epilog.465

sw.bb.152:                                        ; preds = %if.end.64
  %98 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @set_lang(%struct.cpp_reader* %98, i32 8)
  br label %sw.epilog.465

sw.bb.153:                                        ; preds = %if.end.64
  %99 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @set_lang(%struct.cpp_reader* %99, i32 9)
  br label %sw.epilog.465

sw.bb.154:                                        ; preds = %if.end.64
  %100 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @set_lang(%struct.cpp_reader* %100, i32 6)
  br label %sw.epilog.465

sw.bb.155:                                        ; preds = %if.end.64
  %101 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @set_lang(%struct.cpp_reader* %101, i32 0)
  br label %sw.epilog.465

sw.bb.156:                                        ; preds = %if.end.64, %if.end.64
  %102 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @set_lang(%struct.cpp_reader* %102, i32 1)
  br label %sw.epilog.465

sw.bb.157:                                        ; preds = %if.end.64
  %103 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @set_lang(%struct.cpp_reader* %103, i32 3)
  br label %sw.epilog.465

sw.bb.158:                                        ; preds = %if.end.64, %if.end.64, %if.end.64
  %104 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @set_lang(%struct.cpp_reader* %104, i32 2)
  br label %sw.epilog.465

sw.bb.159:                                        ; preds = %if.end.64, %if.end.64, %if.end.64, %if.end.64
  %105 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @set_lang(%struct.cpp_reader* %105, i32 4)
  br label %sw.epilog.465

sw.bb.160:                                        ; preds = %if.end.64
  %106 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts161 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %106, i32 0, i32 37
  %no_standard_includes = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts161, i32 0, i32 44
  store i8 1, i8* %no_standard_includes, align 1
  br label %sw.epilog.465

sw.bb.162:                                        ; preds = %if.end.64
  %107 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts163 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %107, i32 0, i32 37
  %no_standard_cplusplus_includes = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts163, i32 0, i32 45
  store i8 1, i8* %no_standard_cplusplus_includes, align 1
  br label %sw.epilog.465

sw.bb.164:                                        ; preds = %if.end.64
  %108 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts165 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %108, i32 0, i32 37
  %out_fname166 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts165, i32 0, i32 1
  %109 = load i8*, i8** %out_fname166, align 8
  %cmp167 = icmp eq i8* %109, null
  br i1 %cmp167, label %if.then.169, label %if.else.172

if.then.169:                                      ; preds = %sw.bb.164
  %110 = load i8*, i8** %arg, align 8
  %111 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts170 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %111, i32 0, i32 37
  %out_fname171 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts170, i32 0, i32 1
  store i8* %110, i8** %out_fname171, align 8
  br label %if.end.173

if.else.172:                                      ; preds = %sw.bb.164
  %112 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_fatal(%struct.cpp_reader* %112, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0))
  %113 = load i32, i32* %argc.addr, align 4
  store i32 %113, i32* %retval
  br label %return

if.end.173:                                       ; preds = %if.then.169
  br label %sw.epilog.465

sw.bb.174:                                        ; preds = %if.end.64
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %sw.bb.174
  %114 = load i8*, i8** %arg, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %incdec.ptr, i8** %arg, align 8
  %115 = load i8, i8* %114, align 1
  store i8 %115, i8* %c, align 1
  %conv175 = sext i8 %115 to i32
  %cmp176 = icmp ne i32 %conv175, 0
  br i1 %cmp176, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %116 = load i8, i8* %c, align 1
  %conv178 = sext i8 %116 to i32
  switch i32 %conv178, label %sw.epilog [
    i32 77, label %sw.bb.179
    i32 78, label %sw.bb.181
    i32 68, label %sw.bb.184
    i32 73, label %sw.bb.187
  ]

sw.bb.179:                                        ; preds = %while.body
  %117 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts180 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %117, i32 0, i32 37
  %dump_macros = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts180, i32 0, i32 46
  store i8 1, i8* %dump_macros, align 1
  br label %sw.epilog

sw.bb.181:                                        ; preds = %while.body
  %118 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts182 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %118, i32 0, i32 37
  %dump_macros183 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts182, i32 0, i32 46
  store i8 2, i8* %dump_macros183, align 1
  br label %sw.epilog

sw.bb.184:                                        ; preds = %while.body
  %119 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts185 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %119, i32 0, i32 37
  %dump_macros186 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts185, i32 0, i32 46
  store i8 3, i8* %dump_macros186, align 1
  br label %sw.epilog

sw.bb.187:                                        ; preds = %while.body
  %120 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts188 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %120, i32 0, i32 37
  %dump_includes = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts188, i32 0, i32 47
  store i8 1, i8* %dump_includes, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %sw.bb.187, %sw.bb.184, %sw.bb.181, %sw.bb.179
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %sw.epilog.465

sw.bb.189:                                        ; preds = %if.end.64
  %121 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts190 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %121, i32 0, i32 37
  %print_deps_missing_files = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts190, i32 0, i32 23
  store i8 1, i8* %print_deps_missing_files, align 1
  br label %sw.epilog.465

sw.bb.191:                                        ; preds = %if.end.64
  %122 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts192 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %122, i32 0, i32 37
  %print_deps = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts192, i32 0, i32 21
  store i8 2, i8* %print_deps, align 1
  %123 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts193 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %123, i32 0, i32 37
  %no_output = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts193, i32 0, i32 35
  store i8 1, i8* %no_output, align 1
  br label %sw.epilog.465

sw.bb.194:                                        ; preds = %if.end.64
  %124 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts195 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %124, i32 0, i32 37
  %print_deps196 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts195, i32 0, i32 21
  store i8 1, i8* %print_deps196, align 1
  %125 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts197 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %125, i32 0, i32 37
  %no_output198 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts197, i32 0, i32 35
  store i8 1, i8* %no_output198, align 1
  br label %sw.epilog.465

sw.bb.199:                                        ; preds = %if.end.64
  %126 = load i8*, i8** %arg, align 8
  %127 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts200 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %127, i32 0, i32 37
  %deps_file = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts200, i32 0, i32 4
  store i8* %126, i8** %deps_file, align 8
  br label %sw.epilog.465

sw.bb.201:                                        ; preds = %if.end.64
  %128 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts202 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %128, i32 0, i32 37
  %deps_phony_targets = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts202, i32 0, i32 22
  store i8 1, i8* %deps_phony_targets, align 1
  br label %sw.epilog.465

sw.bb.203:                                        ; preds = %if.end.64, %if.end.64
  %129 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %deps = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %129, i32 0, i32 31
  %130 = load %struct.deps*, %struct.deps** %deps, align 8
  %131 = load i8*, i8** %arg, align 8
  %132 = load i32, i32* %opt_code, align 4
  %cmp204 = icmp eq i32 %132, 17
  %conv205 = zext i1 %cmp204 to i32
  call void @deps_add_target(%struct.deps* %130, i8* %131, i32 %conv205)
  br label %sw.epilog.465

sw.bb.206:                                        ; preds = %if.end.64
  %133 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts207 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %133, i32 0, i32 37
  %print_deps208 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts207, i32 0, i32 21
  store i8 2, i8* %print_deps208, align 1
  %134 = load i8*, i8** %arg, align 8
  %135 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts209 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %135, i32 0, i32 37
  %deps_file210 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts209, i32 0, i32 4
  store i8* %134, i8** %deps_file210, align 8
  br label %sw.epilog.465

sw.bb.211:                                        ; preds = %if.end.64
  %136 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts212 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %136, i32 0, i32 37
  %print_deps213 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts212, i32 0, i32 21
  store i8 1, i8* %print_deps213, align 1
  %137 = load i8*, i8** %arg, align 8
  %138 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts214 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %138, i32 0, i32 37
  %deps_file215 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts214, i32 0, i32 4
  store i8* %137, i8** %deps_file215, align 8
  br label %sw.epilog.465

sw.bb.216:                                        ; preds = %if.end.64
  %139 = load i8*, i8** %arg, align 8
  %arrayidx217 = getelementptr inbounds i8, i8* %139, i64 0
  %140 = load i8, i8* %arrayidx217, align 1
  %conv218 = sext i8 %140 to i32
  %cmp219 = icmp eq i32 %conv218, 45
  br i1 %cmp219, label %if.then.221, label %if.else.230

if.then.221:                                      ; preds = %sw.bb.216
  %141 = load i8*, i8** %arg, align 8
  %arrayidx222 = getelementptr inbounds i8, i8* %141, i64 1
  %142 = load i8, i8* %arrayidx222, align 1
  %conv223 = sext i8 %142 to i32
  %cmp224 = icmp eq i32 %conv223, 0
  br i1 %cmp224, label %if.then.226, label %if.else.228

if.then.226:                                      ; preds = %if.then.221
  %143 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %directive_head = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %143, i32 0, i32 0
  %144 = load %struct.pending_option*, %struct.pending_option** %directive_head, align 8
  call void @free_chain(%struct.pending_option* %144)
  %145 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %directive_head227 = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %145, i32 0, i32 0
  store %struct.pending_option* null, %struct.pending_option** %directive_head227, align 8
  %146 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %directive_tail = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %146, i32 0, i32 1
  store %struct.pending_option* null, %struct.pending_option** %directive_tail, align 8
  br label %if.end.229

if.else.228:                                      ; preds = %if.then.221
  %147 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %148 = load i8*, i8** %arg, align 8
  %add.ptr = getelementptr inbounds i8, i8* %148, i64 1
  call void @new_pending_directive(%struct.cpp_pending* %147, i8* %add.ptr, void (%struct.cpp_reader*, i8*)* @cpp_unassert)
  br label %if.end.229

if.end.229:                                       ; preds = %if.else.228, %if.then.226
  br label %if.end.231

if.else.230:                                      ; preds = %sw.bb.216
  %149 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %150 = load i8*, i8** %arg, align 8
  call void @new_pending_directive(%struct.cpp_pending* %149, i8* %150, void (%struct.cpp_reader*, i8*)* @cpp_assert)
  br label %if.end.231

if.end.231:                                       ; preds = %if.else.230, %if.end.229
  br label %sw.epilog.465

sw.bb.232:                                        ; preds = %if.end.64
  %151 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %152 = load i8*, i8** %arg, align 8
  call void @new_pending_directive(%struct.cpp_pending* %151, i8* %152, void (%struct.cpp_reader*, i8*)* @cpp_undef)
  br label %sw.epilog.465

sw.bb.233:                                        ; preds = %if.end.64
  %153 = load i8*, i8** %arg, align 8
  %call234 = call i32 @strcmp(i8* %153, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)) #6
  %tobool235 = icmp ne i32 %call234, 0
  br i1 %tobool235, label %if.else.246, label %if.then.236

if.then.236:                                      ; preds = %sw.bb.233
  %154 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts237 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %154, i32 0, i32 37
  %ignore_srcdir = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts237, i32 0, i32 38
  %155 = load i8, i8* %ignore_srcdir, align 1
  %tobool238 = icmp ne i8 %155, 0
  br i1 %tobool238, label %if.else.244, label %if.then.239

if.then.239:                                      ; preds = %if.then.236
  %156 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %brack_head = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %156, i32 0, i32 4
  %157 = load %struct.search_path*, %struct.search_path** %brack_head, align 8
  %158 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %quote_head = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %158, i32 0, i32 2
  store %struct.search_path* %157, %struct.search_path** %quote_head, align 8
  %159 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %brack_tail = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %159, i32 0, i32 5
  %160 = load %struct.search_path*, %struct.search_path** %brack_tail, align 8
  %161 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %quote_tail = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %161, i32 0, i32 3
  store %struct.search_path* %160, %struct.search_path** %quote_tail, align 8
  %162 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %brack_head240 = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %162, i32 0, i32 4
  store %struct.search_path* null, %struct.search_path** %brack_head240, align 8
  %163 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %brack_tail241 = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %163, i32 0, i32 5
  store %struct.search_path* null, %struct.search_path** %brack_tail241, align 8
  %164 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts242 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %164, i32 0, i32 37
  %ignore_srcdir243 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts242, i32 0, i32 38
  store i8 1, i8* %ignore_srcdir243, align 1
  br label %if.end.245

if.else.244:                                      ; preds = %if.then.236
  %165 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_fatal(%struct.cpp_reader* %165, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0))
  %166 = load i32, i32* %argc.addr, align 4
  store i32 %166, i32* %retval
  br label %return

if.end.245:                                       ; preds = %if.then.239
  br label %if.end.248

if.else.246:                                      ; preds = %sw.bb.233
  %167 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %168 = load i8*, i8** %arg, align 8
  %call247 = call noalias i8* @xstrdup(i8* %168)
  call void @append_include_chain(%struct.cpp_reader* %167, i8* %call247, i32 0, i32 0)
  br label %if.end.248

if.end.248:                                       ; preds = %if.else.246, %if.end.245
  br label %sw.epilog.465

sw.bb.249:                                        ; preds = %if.end.64
  %169 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %170 = load i8*, i8** %arg, align 8
  %call250 = call noalias i8* @xstrdup(i8* %170)
  call void @append_include_chain(%struct.cpp_reader* %169, i8* %call250, i32 1, i32 0)
  br label %sw.epilog.465

sw.bb.251:                                        ; preds = %if.end.64, %if.end.64
  %call252 = call noalias i8* @xmalloc(i64 24)
  %171 = bitcast i8* %call252 to %struct.pending_option*
  store %struct.pending_option* %171, %struct.pending_option** %o, align 8
  %172 = load i8*, i8** %arg, align 8
  %173 = load %struct.pending_option*, %struct.pending_option** %o, align 8
  %arg253 = getelementptr inbounds %struct.pending_option, %struct.pending_option* %173, i32 0, i32 1
  store i8* %172, i8** %arg253, align 8
  %174 = load %struct.pending_option*, %struct.pending_option** %o, align 8
  %next = getelementptr inbounds %struct.pending_option, %struct.pending_option* %174, i32 0, i32 0
  store %struct.pending_option* null, %struct.pending_option** %next, align 8
  %175 = load i32, i32* %opt_code, align 4
  %cmp254 = icmp eq i32 %175, 36
  br i1 %cmp254, label %if.then.256, label %if.else.264

if.then.256:                                      ; preds = %sw.bb.251
  br label %do.body

do.body:                                          ; preds = %if.then.256
  %176 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %include_head = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %176, i32 0, i32 12
  %177 = load %struct.pending_option*, %struct.pending_option** %include_head, align 8
  %tobool257 = icmp ne %struct.pending_option* %177, null
  br i1 %tobool257, label %if.else.260, label %if.then.258

if.then.258:                                      ; preds = %do.body
  %178 = load %struct.pending_option*, %struct.pending_option** %o, align 8
  %179 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %include_head259 = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %179, i32 0, i32 12
  store %struct.pending_option* %178, %struct.pending_option** %include_head259, align 8
  br label %if.end.262

if.else.260:                                      ; preds = %do.body
  %180 = load %struct.pending_option*, %struct.pending_option** %o, align 8
  %181 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %include_tail = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %181, i32 0, i32 13
  %182 = load %struct.pending_option*, %struct.pending_option** %include_tail, align 8
  %next261 = getelementptr inbounds %struct.pending_option, %struct.pending_option* %182, i32 0, i32 0
  store %struct.pending_option* %180, %struct.pending_option** %next261, align 8
  br label %if.end.262

if.end.262:                                       ; preds = %if.else.260, %if.then.258
  %183 = load %struct.pending_option*, %struct.pending_option** %o, align 8
  %184 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %include_tail263 = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %184, i32 0, i32 13
  store %struct.pending_option* %183, %struct.pending_option** %include_tail263, align 8
  br label %do.end

do.end:                                           ; preds = %if.end.262
  br label %if.end.274

if.else.264:                                      ; preds = %sw.bb.251
  br label %do.body.265

do.body.265:                                      ; preds = %if.else.264
  %185 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %imacros_head = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %185, i32 0, i32 10
  %186 = load %struct.pending_option*, %struct.pending_option** %imacros_head, align 8
  %tobool266 = icmp ne %struct.pending_option* %186, null
  br i1 %tobool266, label %if.else.269, label %if.then.267

if.then.267:                                      ; preds = %do.body.265
  %187 = load %struct.pending_option*, %struct.pending_option** %o, align 8
  %188 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %imacros_head268 = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %188, i32 0, i32 10
  store %struct.pending_option* %187, %struct.pending_option** %imacros_head268, align 8
  br label %if.end.271

if.else.269:                                      ; preds = %do.body.265
  %189 = load %struct.pending_option*, %struct.pending_option** %o, align 8
  %190 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %imacros_tail = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %190, i32 0, i32 11
  %191 = load %struct.pending_option*, %struct.pending_option** %imacros_tail, align 8
  %next270 = getelementptr inbounds %struct.pending_option, %struct.pending_option* %191, i32 0, i32 0
  store %struct.pending_option* %189, %struct.pending_option** %next270, align 8
  br label %if.end.271

if.end.271:                                       ; preds = %if.else.269, %if.then.267
  %192 = load %struct.pending_option*, %struct.pending_option** %o, align 8
  %193 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %imacros_tail272 = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %193, i32 0, i32 11
  store %struct.pending_option* %192, %struct.pending_option** %imacros_tail272, align 8
  br label %do.end.273

do.end.273:                                       ; preds = %if.end.271
  br label %if.end.274

if.end.274:                                       ; preds = %do.end.273, %do.end
  br label %sw.epilog.465

sw.bb.275:                                        ; preds = %if.end.64, %if.end.64
  %194 = load i8*, i8** %arg, align 8
  %call276 = call i64 @strlen(i8* %194) #6
  %conv277 = trunc i64 %call276 to i32
  store i32 %conv277, i32* %len, align 4
  %195 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts278 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %195, i32 0, i32 37
  %include_prefix279 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts278, i32 0, i32 8
  %196 = load i8*, i8** %include_prefix279, align 8
  %cmp280 = icmp ne i8* %196, null
  br i1 %cmp280, label %if.then.282, label %if.else.295

if.then.282:                                      ; preds = %sw.bb.275
  %197 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts283 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %197, i32 0, i32 37
  %include_prefix_len284 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts283, i32 0, i32 9
  %198 = load i32, i32* %include_prefix_len284, align 4
  %conv285 = zext i32 %198 to i64
  store i64 %conv285, i64* %ipl, align 8
  %199 = load i64, i64* %ipl, align 8
  %200 = load i32, i32* %len, align 4
  %conv286 = sext i32 %200 to i64
  %add287 = add i64 %199, %conv286
  %add288 = add i64 %add287, 1
  %call289 = call noalias i8* @xmalloc(i64 %add288)
  store i8* %call289, i8** %fname, align 8
  %201 = load i8*, i8** %fname, align 8
  %202 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts290 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %202, i32 0, i32 37
  %include_prefix291 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts290, i32 0, i32 8
  %203 = load i8*, i8** %include_prefix291, align 8
  %204 = load i64, i64* %ipl, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %201, i8* %203, i64 %204, i32 1, i1 false)
  %205 = load i8*, i8** %fname, align 8
  %206 = load i64, i64* %ipl, align 8
  %add.ptr292 = getelementptr inbounds i8, i8* %205, i64 %206
  %207 = load i8*, i8** %arg, align 8
  %208 = load i32, i32* %len, align 4
  %add293 = add nsw i32 %208, 1
  %conv294 = sext i32 %add293 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr292, i8* %207, i64 %conv294, i32 1, i1 false)
  br label %if.end.308

if.else.295:                                      ; preds = %sw.bb.275
  %209 = load i64, i64* @cpp_GCC_INCLUDE_DIR_len, align 8
  %tobool296 = icmp ne i64 %209, 0
  br i1 %tobool296, label %if.then.297, label %if.else.305

if.then.297:                                      ; preds = %if.else.295
  %210 = load i64, i64* @cpp_GCC_INCLUDE_DIR_len, align 8
  %211 = load i32, i32* %len, align 4
  %conv298 = sext i32 %211 to i64
  %add299 = add i64 %210, %conv298
  %add300 = add i64 %add299, 1
  %call301 = call noalias i8* @xmalloc(i64 %add300)
  store i8* %call301, i8** %fname, align 8
  %212 = load i8*, i8** %fname, align 8
  %213 = load i64, i64* @cpp_GCC_INCLUDE_DIR_len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %212, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @cpp_GCC_INCLUDE_DIR, i32 0, i32 0), i64 %213, i32 1, i1 false)
  %214 = load i8*, i8** %fname, align 8
  %215 = load i64, i64* @cpp_GCC_INCLUDE_DIR_len, align 8
  %add.ptr302 = getelementptr inbounds i8, i8* %214, i64 %215
  %216 = load i8*, i8** %arg, align 8
  %217 = load i32, i32* %len, align 4
  %add303 = add nsw i32 %217, 1
  %conv304 = sext i32 %add303 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr302, i8* %216, i64 %conv304, i32 1, i1 false)
  br label %if.end.307

if.else.305:                                      ; preds = %if.else.295
  %218 = load i8*, i8** %arg, align 8
  %call306 = call noalias i8* @xstrdup(i8* %218)
  store i8* %call306, i8** %fname, align 8
  br label %if.end.307

if.end.307:                                       ; preds = %if.else.305, %if.then.297
  br label %if.end.308

if.end.308:                                       ; preds = %if.end.307, %if.then.282
  %219 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %220 = load i8*, i8** %fname, align 8
  %221 = load i32, i32* %opt_code, align 4
  %cmp309 = icmp eq i32 %221, 39
  %cond = select i1 %cmp309, i32 1, i32 0
  call void @append_include_chain(%struct.cpp_reader* %219, i8* %220, i32 %cond, i32 0)
  br label %sw.epilog.465

sw.bb.311:                                        ; preds = %if.end.64
  %222 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %223 = load i8*, i8** %arg, align 8
  %call312 = call noalias i8* @xstrdup(i8* %223)
  call void @append_include_chain(%struct.cpp_reader* %222, i8* %call312, i32 2, i32 0)
  br label %sw.epilog.465

sw.bb.313:                                        ; preds = %if.end.64
  %224 = load i32, i32* %i, align 4
  %idxprom314 = sext i32 %224 to i64
  %225 = load i8**, i8*** %argv.addr, align 8
  %arrayidx315 = getelementptr inbounds i8*, i8** %225, i64 %idxprom314
  %226 = load i8*, i8** %arrayidx315, align 8
  %call316 = call i32 @strcmp(i8* %226, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0)) #6
  %tobool317 = icmp ne i32 %call316, 0
  br i1 %tobool317, label %if.else.321, label %if.then.318

if.then.318:                                      ; preds = %sw.bb.313
  %227 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts319 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %227, i32 0, i32 37
  %warn_trigraphs = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts319, i32 0, i32 31
  store i8 1, i8* %warn_trigraphs, align 1
  %228 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts320 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %228, i32 0, i32 37
  %warn_comments = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts320, i32 0, i32 30
  store i8 1, i8* %warn_comments, align 1
  br label %if.end.464

if.else.321:                                      ; preds = %sw.bb.313
  %229 = load i32, i32* %i, align 4
  %idxprom322 = sext i32 %229 to i64
  %230 = load i8**, i8*** %argv.addr, align 8
  %arrayidx323 = getelementptr inbounds i8*, i8** %230, i64 %idxprom322
  %231 = load i8*, i8** %arrayidx323, align 8
  %call324 = call i32 @strcmp(i8* %231, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0)) #6
  %tobool325 = icmp ne i32 %call324, 0
  br i1 %tobool325, label %if.else.328, label %if.then.326

if.then.326:                                      ; preds = %if.else.321
  %232 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts327 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %232, i32 0, i32 37
  %warn_traditional = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts327, i32 0, i32 33
  store i8 1, i8* %warn_traditional, align 1
  br label %if.end.463

if.else.328:                                      ; preds = %if.else.321
  %233 = load i32, i32* %i, align 4
  %idxprom329 = sext i32 %233 to i64
  %234 = load i8**, i8*** %argv.addr, align 8
  %arrayidx330 = getelementptr inbounds i8*, i8** %234, i64 %idxprom329
  %235 = load i8*, i8** %arrayidx330, align 8
  %call331 = call i32 @strcmp(i8* %235, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0)) #6
  %tobool332 = icmp ne i32 %call331, 0
  br i1 %tobool332, label %if.else.336, label %if.then.333

if.then.333:                                      ; preds = %if.else.328
  %236 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts334 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %236, i32 0, i32 37
  %warn_trigraphs335 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts334, i32 0, i32 31
  store i8 1, i8* %warn_trigraphs335, align 1
  br label %if.end.462

if.else.336:                                      ; preds = %if.else.328
  %237 = load i32, i32* %i, align 4
  %idxprom337 = sext i32 %237 to i64
  %238 = load i8**, i8*** %argv.addr, align 8
  %arrayidx338 = getelementptr inbounds i8*, i8** %238, i64 %idxprom337
  %239 = load i8*, i8** %arrayidx338, align 8
  %call339 = call i32 @strcmp(i8* %239, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0)) #6
  %tobool340 = icmp ne i32 %call339, 0
  br i1 %tobool340, label %if.else.344, label %if.then.341

if.then.341:                                      ; preds = %if.else.336
  %240 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts342 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %240, i32 0, i32 37
  %warn_comments343 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts342, i32 0, i32 30
  store i8 1, i8* %warn_comments343, align 1
  br label %if.end.461

if.else.344:                                      ; preds = %if.else.336
  %241 = load i32, i32* %i, align 4
  %idxprom345 = sext i32 %241 to i64
  %242 = load i8**, i8*** %argv.addr, align 8
  %arrayidx346 = getelementptr inbounds i8*, i8** %242, i64 %idxprom345
  %243 = load i8*, i8** %arrayidx346, align 8
  %call347 = call i32 @strcmp(i8* %243, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0)) #6
  %tobool348 = icmp ne i32 %call347, 0
  br i1 %tobool348, label %if.else.352, label %if.then.349

if.then.349:                                      ; preds = %if.else.344
  %244 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts350 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %244, i32 0, i32 37
  %warn_comments351 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts350, i32 0, i32 30
  store i8 1, i8* %warn_comments351, align 1
  br label %if.end.460

if.else.352:                                      ; preds = %if.else.344
  %245 = load i32, i32* %i, align 4
  %idxprom353 = sext i32 %245 to i64
  %246 = load i8**, i8*** %argv.addr, align 8
  %arrayidx354 = getelementptr inbounds i8*, i8** %246, i64 %idxprom353
  %247 = load i8*, i8** %arrayidx354, align 8
  %call355 = call i32 @strcmp(i8* %247, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0)) #6
  %tobool356 = icmp ne i32 %call355, 0
  br i1 %tobool356, label %if.else.359, label %if.then.357

if.then.357:                                      ; preds = %if.else.352
  %248 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts358 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %248, i32 0, i32 37
  %warn_undef = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts358, i32 0, i32 40
  store i8 1, i8* %warn_undef, align 1
  br label %if.end.459

if.else.359:                                      ; preds = %if.else.352
  %249 = load i32, i32* %i, align 4
  %idxprom360 = sext i32 %249 to i64
  %250 = load i8**, i8*** %argv.addr, align 8
  %arrayidx361 = getelementptr inbounds i8*, i8** %250, i64 %idxprom360
  %251 = load i8*, i8** %arrayidx361, align 8
  %call362 = call i32 @strcmp(i8* %251, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0)) #6
  %tobool363 = icmp ne i32 %call362, 0
  br i1 %tobool363, label %if.else.366, label %if.then.364

if.then.364:                                      ; preds = %if.else.359
  %252 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts365 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %252, i32 0, i32 37
  %warn_import = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts365, i32 0, i32 32
  store i8 1, i8* %warn_import, align 1
  br label %if.end.458

if.else.366:                                      ; preds = %if.else.359
  %253 = load i32, i32* %i, align 4
  %idxprom367 = sext i32 %253 to i64
  %254 = load i8**, i8*** %argv.addr, align 8
  %arrayidx368 = getelementptr inbounds i8*, i8** %254, i64 %idxprom367
  %255 = load i8*, i8** %arrayidx368, align 8
  %call369 = call i32 @strcmp(i8* %255, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0)) #6
  %tobool370 = icmp ne i32 %call369, 0
  br i1 %tobool370, label %if.else.373, label %if.then.371

if.then.371:                                      ; preds = %if.else.366
  %256 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts372 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %256, i32 0, i32 37
  %warnings_are_errors = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts372, i32 0, i32 34
  store i8 1, i8* %warnings_are_errors, align 1
  br label %if.end.457

if.else.373:                                      ; preds = %if.else.366
  %257 = load i32, i32* %i, align 4
  %idxprom374 = sext i32 %257 to i64
  %258 = load i8**, i8*** %argv.addr, align 8
  %arrayidx375 = getelementptr inbounds i8*, i8** %258, i64 %idxprom374
  %259 = load i8*, i8** %arrayidx375, align 8
  %call376 = call i32 @strcmp(i8* %259, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0)) #6
  %tobool377 = icmp ne i32 %call376, 0
  br i1 %tobool377, label %if.else.380, label %if.then.378

if.then.378:                                      ; preds = %if.else.373
  %260 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts379 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %260, i32 0, i32 37
  %warn_system_headers = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts379, i32 0, i32 28
  store i8 1, i8* %warn_system_headers, align 1
  br label %if.end.456

if.else.380:                                      ; preds = %if.else.373
  %261 = load i32, i32* %i, align 4
  %idxprom381 = sext i32 %261 to i64
  %262 = load i8**, i8*** %argv.addr, align 8
  %arrayidx382 = getelementptr inbounds i8*, i8** %262, i64 %idxprom381
  %263 = load i8*, i8** %arrayidx382, align 8
  %call383 = call i32 @strcmp(i8* %263, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0)) #6
  %tobool384 = icmp ne i32 %call383, 0
  br i1 %tobool384, label %if.else.388, label %if.then.385

if.then.385:                                      ; preds = %if.else.380
  %264 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts386 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %264, i32 0, i32 37
  %warn_traditional387 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts386, i32 0, i32 33
  store i8 0, i8* %warn_traditional387, align 1
  br label %if.end.455

if.else.388:                                      ; preds = %if.else.380
  %265 = load i32, i32* %i, align 4
  %idxprom389 = sext i32 %265 to i64
  %266 = load i8**, i8*** %argv.addr, align 8
  %arrayidx390 = getelementptr inbounds i8*, i8** %266, i64 %idxprom389
  %267 = load i8*, i8** %arrayidx390, align 8
  %call391 = call i32 @strcmp(i8* %267, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0)) #6
  %tobool392 = icmp ne i32 %call391, 0
  br i1 %tobool392, label %if.else.396, label %if.then.393

if.then.393:                                      ; preds = %if.else.388
  %268 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts394 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %268, i32 0, i32 37
  %warn_trigraphs395 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts394, i32 0, i32 31
  store i8 0, i8* %warn_trigraphs395, align 1
  br label %if.end.454

if.else.396:                                      ; preds = %if.else.388
  %269 = load i32, i32* %i, align 4
  %idxprom397 = sext i32 %269 to i64
  %270 = load i8**, i8*** %argv.addr, align 8
  %arrayidx398 = getelementptr inbounds i8*, i8** %270, i64 %idxprom397
  %271 = load i8*, i8** %arrayidx398, align 8
  %call399 = call i32 @strcmp(i8* %271, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0)) #6
  %tobool400 = icmp ne i32 %call399, 0
  br i1 %tobool400, label %if.else.404, label %if.then.401

if.then.401:                                      ; preds = %if.else.396
  %272 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts402 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %272, i32 0, i32 37
  %warn_comments403 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts402, i32 0, i32 30
  store i8 0, i8* %warn_comments403, align 1
  br label %if.end.453

if.else.404:                                      ; preds = %if.else.396
  %273 = load i32, i32* %i, align 4
  %idxprom405 = sext i32 %273 to i64
  %274 = load i8**, i8*** %argv.addr, align 8
  %arrayidx406 = getelementptr inbounds i8*, i8** %274, i64 %idxprom405
  %275 = load i8*, i8** %arrayidx406, align 8
  %call407 = call i32 @strcmp(i8* %275, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0)) #6
  %tobool408 = icmp ne i32 %call407, 0
  br i1 %tobool408, label %if.else.412, label %if.then.409

if.then.409:                                      ; preds = %if.else.404
  %276 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts410 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %276, i32 0, i32 37
  %warn_comments411 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts410, i32 0, i32 30
  store i8 0, i8* %warn_comments411, align 1
  br label %if.end.452

if.else.412:                                      ; preds = %if.else.404
  %277 = load i32, i32* %i, align 4
  %idxprom413 = sext i32 %277 to i64
  %278 = load i8**, i8*** %argv.addr, align 8
  %arrayidx414 = getelementptr inbounds i8*, i8** %278, i64 %idxprom413
  %279 = load i8*, i8** %arrayidx414, align 8
  %call415 = call i32 @strcmp(i8* %279, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0)) #6
  %tobool416 = icmp ne i32 %call415, 0
  br i1 %tobool416, label %if.else.420, label %if.then.417

if.then.417:                                      ; preds = %if.else.412
  %280 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts418 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %280, i32 0, i32 37
  %warn_undef419 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts418, i32 0, i32 40
  store i8 0, i8* %warn_undef419, align 1
  br label %if.end.451

if.else.420:                                      ; preds = %if.else.412
  %281 = load i32, i32* %i, align 4
  %idxprom421 = sext i32 %281 to i64
  %282 = load i8**, i8*** %argv.addr, align 8
  %arrayidx422 = getelementptr inbounds i8*, i8** %282, i64 %idxprom421
  %283 = load i8*, i8** %arrayidx422, align 8
  %call423 = call i32 @strcmp(i8* %283, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0)) #6
  %tobool424 = icmp ne i32 %call423, 0
  br i1 %tobool424, label %if.else.428, label %if.then.425

if.then.425:                                      ; preds = %if.else.420
  %284 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts426 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %284, i32 0, i32 37
  %warn_import427 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts426, i32 0, i32 32
  store i8 0, i8* %warn_import427, align 1
  br label %if.end.450

if.else.428:                                      ; preds = %if.else.420
  %285 = load i32, i32* %i, align 4
  %idxprom429 = sext i32 %285 to i64
  %286 = load i8**, i8*** %argv.addr, align 8
  %arrayidx430 = getelementptr inbounds i8*, i8** %286, i64 %idxprom429
  %287 = load i8*, i8** %arrayidx430, align 8
  %call431 = call i32 @strcmp(i8* %287, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0)) #6
  %tobool432 = icmp ne i32 %call431, 0
  br i1 %tobool432, label %if.else.436, label %if.then.433

if.then.433:                                      ; preds = %if.else.428
  %288 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts434 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %288, i32 0, i32 37
  %warnings_are_errors435 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts434, i32 0, i32 34
  store i8 0, i8* %warnings_are_errors435, align 1
  br label %if.end.449

if.else.436:                                      ; preds = %if.else.428
  %289 = load i32, i32* %i, align 4
  %idxprom437 = sext i32 %289 to i64
  %290 = load i8**, i8*** %argv.addr, align 8
  %arrayidx438 = getelementptr inbounds i8*, i8** %290, i64 %idxprom437
  %291 = load i8*, i8** %arrayidx438, align 8
  %call439 = call i32 @strcmp(i8* %291, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0)) #6
  %tobool440 = icmp ne i32 %call439, 0
  br i1 %tobool440, label %if.else.444, label %if.then.441

if.then.441:                                      ; preds = %if.else.436
  %292 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts442 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %292, i32 0, i32 37
  %warn_system_headers443 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts442, i32 0, i32 28
  store i8 0, i8* %warn_system_headers443, align 1
  br label %if.end.448

if.else.444:                                      ; preds = %if.else.436
  %293 = load i32, i32* %ignore.addr, align 4
  %tobool445 = icmp ne i32 %293, 0
  br i1 %tobool445, label %if.end.447, label %if.then.446

if.then.446:                                      ; preds = %if.else.444
  %294 = load i32, i32* %i, align 4
  store i32 %294, i32* %retval
  br label %return

if.end.447:                                       ; preds = %if.else.444
  br label %if.end.448

if.end.448:                                       ; preds = %if.end.447, %if.then.441
  br label %if.end.449

if.end.449:                                       ; preds = %if.end.448, %if.then.433
  br label %if.end.450

if.end.450:                                       ; preds = %if.end.449, %if.then.425
  br label %if.end.451

if.end.451:                                       ; preds = %if.end.450, %if.then.417
  br label %if.end.452

if.end.452:                                       ; preds = %if.end.451, %if.then.409
  br label %if.end.453

if.end.453:                                       ; preds = %if.end.452, %if.then.401
  br label %if.end.454

if.end.454:                                       ; preds = %if.end.453, %if.then.393
  br label %if.end.455

if.end.455:                                       ; preds = %if.end.454, %if.then.385
  br label %if.end.456

if.end.456:                                       ; preds = %if.end.455, %if.then.378
  br label %if.end.457

if.end.457:                                       ; preds = %if.end.456, %if.then.371
  br label %if.end.458

if.end.458:                                       ; preds = %if.end.457, %if.then.364
  br label %if.end.459

if.end.459:                                       ; preds = %if.end.458, %if.then.357
  br label %if.end.460

if.end.460:                                       ; preds = %if.end.459, %if.then.349
  br label %if.end.461

if.end.461:                                       ; preds = %if.end.460, %if.then.341
  br label %if.end.462

if.end.462:                                       ; preds = %if.end.461, %if.then.333
  br label %if.end.463

if.end.463:                                       ; preds = %if.end.462, %if.then.326
  br label %if.end.464

if.end.464:                                       ; preds = %if.end.463, %if.then.318
  br label %sw.epilog.465

sw.epilog.465:                                    ; preds = %if.end.64, %if.end.464, %sw.bb.311, %if.end.308, %if.end.274, %sw.bb.249, %if.end.248, %sw.bb.232, %if.end.231, %sw.bb.211, %sw.bb.206, %sw.bb.203, %sw.bb.201, %sw.bb.199, %sw.bb.194, %sw.bb.191, %sw.bb.189, %while.end, %if.end.173, %sw.bb.162, %sw.bb.160, %sw.bb.159, %sw.bb.158, %sw.bb.157, %sw.bb.156, %sw.bb.155, %sw.bb.154, %sw.bb.153, %sw.bb.152, %sw.bb.151, %sw.bb.150, %sw.bb.149, %sw.bb.144, %sw.bb.142, %sw.bb.139, %sw.bb.137, %sw.bb.135, %sw.bb.132, %sw.bb.130, %sw.bb.128, %sw.bb.126, %sw.bb.124, %sw.bb.122, %sw.bb.119, %sw.bb.116, %sw.bb.113, %sw.bb.111, %sw.bb.109, %if.end.108, %sw.bb.84, %sw.bb.82, %sw.bb.79, %sw.bb.77, %sw.bb.74, %sw.bb.72, %sw.bb.70, %sw.bb.67, %sw.bb.65, %sw.bb
  br label %if.end.466

if.end.466:                                       ; preds = %sw.epilog.465, %if.end.26
  %295 = load i32, i32* %i, align 4
  %add467 = add nsw i32 %295, 1
  store i32 %add467, i32* %retval
  br label %return

return:                                           ; preds = %if.end.466, %if.then.446, %if.else.244, %if.else.172, %if.then.56, %if.then.33
  %296 = load i32, i32* %retval
  ret i32 %296
}

declare void @cpp_fatal(%struct.cpp_reader*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @parse_option(i8* %input) #0 {
entry:
  %retval = alloca i32, align 4
  %input.addr = alloca i8*, align 8
  %md = alloca i32, align 4
  %mn = alloca i32, align 4
  %mx = alloca i32, align 4
  %opt_len = alloca i64, align 8
  %comp = alloca i32, align 4
  store i8* %input, i8** %input.addr, align 8
  store i32 0, i32* %mn, align 4
  store i32 68, i32* %mx, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.43, %entry
  %0 = load i32, i32* %mx, align 4
  %1 = load i32, i32* %mn, align 4
  %cmp = icmp ugt i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %mn, align 4
  %3 = load i32, i32* %mx, align 4
  %add = add i32 %2, %3
  %div = udiv i32 %add, 2
  store i32 %div, i32* %md, align 4
  %4 = load i32, i32* %md, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds [68 x %struct.cl_option], [68 x %struct.cl_option]* @cl_options, i32 0, i64 %idxprom
  %opt_len1 = getelementptr inbounds %struct.cl_option, %struct.cl_option* %arrayidx, i32 0, i32 2
  %5 = load i64, i64* %opt_len1, align 8
  store i64 %5, i64* %opt_len, align 8
  %6 = load i8*, i8** %input.addr, align 8
  %7 = load i32, i32* %md, align 4
  %idxprom2 = zext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds [68 x %struct.cl_option], [68 x %struct.cl_option]* @cl_options, i32 0, i64 %idxprom2
  %opt_text = getelementptr inbounds %struct.cl_option, %struct.cl_option* %arrayidx3, i32 0, i32 0
  %8 = load i8*, i8** %opt_text, align 8
  %9 = load i64, i64* %opt_len, align 8
  %call = call i32 @memcmp(i8* %6, i8* %8, i64 %9) #6
  store i32 %call, i32* %comp, align 4
  %10 = load i32, i32* %comp, align 4
  %cmp4 = icmp sgt i32 %10, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %11 = load i32, i32* %md, align 4
  %add5 = add i32 %11, 1
  store i32 %add5, i32* %mn, align 4
  br label %if.end.43

if.else:                                          ; preds = %while.body
  %12 = load i32, i32* %comp, align 4
  %cmp6 = icmp slt i32 %12, 0
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.else
  %13 = load i32, i32* %md, align 4
  store i32 %13, i32* %mx, align 4
  br label %if.end.42

if.else.8:                                        ; preds = %if.else
  %14 = load i64, i64* %opt_len, align 8
  %15 = load i8*, i8** %input.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %15, i64 %14
  %16 = load i8, i8* %arrayidx9, align 1
  %conv = sext i8 %16 to i32
  %cmp10 = icmp eq i32 %conv, 0
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.else.8
  %17 = load i32, i32* %md, align 4
  store i32 %17, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else.8
  %18 = load i32, i32* %md, align 4
  %add13 = add i32 %18, 1
  store i32 %add13, i32* %mn, align 4
  %19 = load i32, i32* %md, align 4
  %idxprom14 = zext i32 %19 to i64
  %arrayidx15 = getelementptr inbounds [68 x %struct.cl_option], [68 x %struct.cl_option]* @cl_options, i32 0, i64 %idxprom14
  %msg = getelementptr inbounds %struct.cl_option, %struct.cl_option* %arrayidx15, i32 0, i32 1
  %20 = load i8*, i8** %msg, align 8
  %tobool = icmp ne i8* %20, null
  br i1 %tobool, label %if.then.16, label %if.end.41

if.then.16:                                       ; preds = %if.end
  %21 = load i32, i32* %md, align 4
  store i32 %21, i32* %mx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.16
  %22 = load i32, i32* %mn, align 4
  %cmp17 = icmp ult i32 %22, 68
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %mn, align 4
  %idxprom19 = zext i32 %23 to i64
  %arrayidx20 = getelementptr inbounds [68 x %struct.cl_option], [68 x %struct.cl_option]* @cl_options, i32 0, i64 %idxprom19
  %opt_len21 = getelementptr inbounds %struct.cl_option, %struct.cl_option* %arrayidx20, i32 0, i32 2
  %24 = load i64, i64* %opt_len21, align 8
  store i64 %24, i64* %opt_len, align 8
  %25 = load i8*, i8** %input.addr, align 8
  %26 = load i32, i32* %mn, align 4
  %idxprom22 = zext i32 %26 to i64
  %arrayidx23 = getelementptr inbounds [68 x %struct.cl_option], [68 x %struct.cl_option]* @cl_options, i32 0, i64 %idxprom22
  %opt_text24 = getelementptr inbounds %struct.cl_option, %struct.cl_option* %arrayidx23, i32 0, i32 0
  %27 = load i8*, i8** %opt_text24, align 8
  %28 = load i64, i64* %opt_len, align 8
  %call25 = call i32 @memcmp(i8* %25, i8* %27, i64 %28) #6
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %for.body
  br label %for.end

if.end.28:                                        ; preds = %for.body
  %29 = load i64, i64* %opt_len, align 8
  %30 = load i8*, i8** %input.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %30, i64 %29
  %31 = load i8, i8* %arrayidx29, align 1
  %conv30 = sext i8 %31 to i32
  %cmp31 = icmp eq i32 %conv30, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.28
  %32 = load i32, i32* %mn, align 4
  store i32 %32, i32* %retval
  br label %return

if.end.34:                                        ; preds = %if.end.28
  %33 = load i32, i32* %mn, align 4
  %idxprom35 = zext i32 %33 to i64
  %arrayidx36 = getelementptr inbounds [68 x %struct.cl_option], [68 x %struct.cl_option]* @cl_options, i32 0, i64 %idxprom35
  %msg37 = getelementptr inbounds %struct.cl_option, %struct.cl_option* %arrayidx36, i32 0, i32 1
  %34 = load i8*, i8** %msg37, align 8
  %tobool38 = icmp ne i8* %34, null
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.34
  %35 = load i32, i32* %mn, align 4
  store i32 %35, i32* %mx, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.end.34
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %36 = load i32, i32* %mn, align 4
  %inc = add i32 %36, 1
  store i32 %inc, i32* %mn, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.27, %for.cond
  %37 = load i32, i32* %mx, align 4
  store i32 %37, i32* %retval
  br label %return

if.end.41:                                        ; preds = %if.end
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.7
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %for.end, %if.then.33, %if.then.12
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #2

; Function Attrs: nounwind uwtable
define internal void @print_help() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([459 x i8], [459 x i8]* @.str.162, i32 0, i32 0), %struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([504 x i8], [504 x i8]* @.str.163, i32 0, i32 0), %struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2 = call i32 @fputs(i8* getelementptr inbounds ([332 x i8], [332 x i8]* @.str.164, i32 0, i32 0), %struct._IO_FILE* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call3 = call i32 @fputs(i8* getelementptr inbounds ([299 x i8], [299 x i8]* @.str.165, i32 0, i32 0), %struct._IO_FILE* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call4 = call i32 @fputs(i8* getelementptr inbounds ([499 x i8], [499 x i8]* @.str.166, i32 0, i32 0), %struct._IO_FILE* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call5 = call i32 @fputs(i8* getelementptr inbounds ([406 x i8], [406 x i8]* @.str.167, i32 0, i32 0), %struct._IO_FILE* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call6 = call i32 @fputs(i8* getelementptr inbounds ([383 x i8], [383 x i8]* @.str.168, i32 0, i32 0), %struct._IO_FILE* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call7 = call i32 @fputs(i8* getelementptr inbounds ([399 x i8], [399 x i8]* @.str.169, i32 0, i32 0), %struct._IO_FILE* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call8 = call i32 @fputs(i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.170, i32 0, i32 0), %struct._IO_FILE* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call9 = call i32 @fputs(i8* getelementptr inbounds ([370 x i8], [370 x i8]* @.str.171, i32 0, i32 0), %struct._IO_FILE* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call10 = call i32 @fputs(i8* getelementptr inbounds ([418 x i8], [418 x i8]* @.str.172, i32 0, i32 0), %struct._IO_FILE* %10)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call11 = call i32 @fputs(i8* getelementptr inbounds ([446 x i8], [446 x i8]* @.str.173, i32 0, i32 0), %struct._IO_FILE* %11)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @new_pending_directive(%struct.cpp_pending* %pend, i8* %text, void (%struct.cpp_reader*, i8*)* %handler) #0 {
entry:
  %pend.addr = alloca %struct.cpp_pending*, align 8
  %text.addr = alloca i8*, align 8
  %handler.addr = alloca void (%struct.cpp_reader*, i8*)*, align 8
  %o = alloca %struct.pending_option*, align 8
  store %struct.cpp_pending* %pend, %struct.cpp_pending** %pend.addr, align 8
  store i8* %text, i8** %text.addr, align 8
  store void (%struct.cpp_reader*, i8*)* %handler, void (%struct.cpp_reader*, i8*)** %handler.addr, align 8
  %call = call noalias i8* @xmalloc(i64 24)
  %0 = bitcast i8* %call to %struct.pending_option*
  store %struct.pending_option* %0, %struct.pending_option** %o, align 8
  %1 = load i8*, i8** %text.addr, align 8
  %2 = load %struct.pending_option*, %struct.pending_option** %o, align 8
  %arg = getelementptr inbounds %struct.pending_option, %struct.pending_option* %2, i32 0, i32 1
  store i8* %1, i8** %arg, align 8
  %3 = load %struct.pending_option*, %struct.pending_option** %o, align 8
  %next = getelementptr inbounds %struct.pending_option, %struct.pending_option* %3, i32 0, i32 0
  store %struct.pending_option* null, %struct.pending_option** %next, align 8
  %4 = load void (%struct.cpp_reader*, i8*)*, void (%struct.cpp_reader*, i8*)** %handler.addr, align 8
  %5 = load %struct.pending_option*, %struct.pending_option** %o, align 8
  %handler1 = getelementptr inbounds %struct.pending_option, %struct.pending_option* %5, i32 0, i32 2
  store void (%struct.cpp_reader*, i8*)* %4, void (%struct.cpp_reader*, i8*)** %handler1, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load %struct.cpp_pending*, %struct.cpp_pending** %pend.addr, align 8
  %directive_head = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %6, i32 0, i32 0
  %7 = load %struct.pending_option*, %struct.pending_option** %directive_head, align 8
  %tobool = icmp ne %struct.pending_option* %7, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  %8 = load %struct.pending_option*, %struct.pending_option** %o, align 8
  %9 = load %struct.cpp_pending*, %struct.cpp_pending** %pend.addr, align 8
  %directive_head2 = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %9, i32 0, i32 0
  store %struct.pending_option* %8, %struct.pending_option** %directive_head2, align 8
  br label %if.end

if.else:                                          ; preds = %do.body
  %10 = load %struct.pending_option*, %struct.pending_option** %o, align 8
  %11 = load %struct.cpp_pending*, %struct.cpp_pending** %pend.addr, align 8
  %directive_tail = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %11, i32 0, i32 1
  %12 = load %struct.pending_option*, %struct.pending_option** %directive_tail, align 8
  %next3 = getelementptr inbounds %struct.pending_option, %struct.pending_option* %12, i32 0, i32 0
  store %struct.pending_option* %10, %struct.pending_option** %next3, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load %struct.pending_option*, %struct.pending_option** %o, align 8
  %14 = load %struct.cpp_pending*, %struct.cpp_pending** %pend.addr, align 8
  %directive_tail4 = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %14, i32 0, i32 1
  store %struct.pending_option* %13, %struct.pending_option** %directive_tail4, align 8
  br label %do.end

do.end:                                           ; preds = %if.end
  ret void
}

declare void @cpp_define(%struct.cpp_reader*, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare void @deps_add_target(%struct.deps*, i8*, i32) #1

declare void @cpp_unassert(%struct.cpp_reader*, i8*) #1

declare void @cpp_assert(%struct.cpp_reader*, i8*) #1

declare void @cpp_undef(%struct.cpp_reader*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @append_include_chain(%struct.cpp_reader* %pfile, i8* %dir, i32 %path, i32 %cxx_aware) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %dir.addr = alloca i8*, align 8
  %path.addr = alloca i32, align 4
  %cxx_aware.addr = alloca i32, align 4
  %pend = alloca %struct.cpp_pending*, align 8
  %new = alloca %struct.search_path*, align 8
  %st = alloca %struct.stat, align 8
  %len = alloca i32, align 4
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i8* %dir, i8** %dir.addr, align 8
  store i32 %path, i32* %path.addr, align 4
  store i32 %cxx_aware, i32* %cxx_aware.addr, align 4
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 37
  %pending = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 3
  %1 = load %struct.cpp_pending*, %struct.cpp_pending** %pending, align 8
  store %struct.cpp_pending* %1, %struct.cpp_pending** %pend, align 8
  %2 = load i8*, i8** %dir.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %dir.addr, align 8
  call void @free(i8* %4) #4
  %call = call noalias i8* @xstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.157, i32 0, i32 0))
  store i8* %call, i8** %dir.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8*, i8** %dir.addr, align 8
  %call2 = call i8* @_cpp_simplify_pathname(i8* %5)
  %6 = load i8*, i8** %dir.addr, align 8
  %call3 = call i32 @stat(i8* %6, %struct.stat* %st) #4
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then.4, label %if.end.15

if.then.4:                                        ; preds = %if.end
  %call5 = call i32* @__errno_location() #7
  %7 = load i32, i32* %call5, align 4
  %cmp6 = icmp ne i32 %7, 2
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then.4
  %8 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %9 = load i8*, i8** %dir.addr, align 8
  call void @cpp_notice_from_errno(%struct.cpp_reader* %8, i8* %9)
  br label %if.end.14

if.else:                                          ; preds = %if.then.4
  %10 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts9 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %10, i32 0, i32 37
  %verbose = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts9, i32 0, i32 12
  %11 = load i8, i8* %verbose, align 1
  %tobool10 = icmp ne i8 %11, 0
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.else
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = load i8*, i8** %dir.addr, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.158, i32 0, i32 0), i8* %13)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.else
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.8
  %14 = load i8*, i8** %dir.addr, align 8
  call void @free(i8* %14) #4
  br label %sw.epilog

if.end.15:                                        ; preds = %if.end
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %15 = load i32, i32* %st_mode, align 4
  %and = and i32 %15, 61440
  %cmp16 = icmp eq i32 %and, 16384
  br i1 %cmp16, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.end.15
  %16 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %17 = load i8*, i8** %dir.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_notice(%struct.cpp_reader* %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.159, i32 0, i32 0), i8* %17)
  %18 = load i8*, i8** %dir.addr, align 8
  call void @free(i8* %18) #4
  br label %sw.epilog

if.end.19:                                        ; preds = %if.end.15
  %19 = load i8*, i8** %dir.addr, align 8
  %call20 = call i64 @strlen(i8* %19) #6
  %conv21 = trunc i64 %call20 to i32
  store i32 %conv21, i32* %len, align 4
  %20 = load i32, i32* %len, align 4
  %21 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %max_include_len = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %21, i32 0, i32 26
  %22 = load i32, i32* %max_include_len, align 4
  %cmp22 = icmp ugt i32 %20, %22
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.19
  %23 = load i32, i32* %len, align 4
  %24 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %max_include_len25 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %24, i32 0, i32 26
  store i32 %23, i32* %max_include_len25, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.end.19
  %call27 = call noalias i8* @xmalloc(i64 56)
  %25 = bitcast i8* %call27 to %struct.search_path*
  store %struct.search_path* %25, %struct.search_path** %new, align 8
  %26 = load i8*, i8** %dir.addr, align 8
  %27 = load %struct.search_path*, %struct.search_path** %new, align 8
  %name = getelementptr inbounds %struct.search_path, %struct.search_path* %27, i32 0, i32 1
  store i8* %26, i8** %name, align 8
  %28 = load i32, i32* %len, align 4
  %29 = load %struct.search_path*, %struct.search_path** %new, align 8
  %len28 = getelementptr inbounds %struct.search_path, %struct.search_path* %29, i32 0, i32 2
  store i32 %28, i32* %len28, align 4
  %st_ino = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 1
  %30 = load i64, i64* %st_ino, align 8
  %31 = load %struct.search_path*, %struct.search_path** %new, align 8
  %ino = getelementptr inbounds %struct.search_path, %struct.search_path* %31, i32 0, i32 3
  store i64 %30, i64* %ino, align 8
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 0
  %32 = load i64, i64* %st_dev, align 8
  %33 = load %struct.search_path*, %struct.search_path** %new, align 8
  %dev = getelementptr inbounds %struct.search_path, %struct.search_path* %33, i32 0, i32 4
  store i64 %32, i64* %dev, align 8
  %34 = load i32, i32* %path.addr, align 4
  %cmp29 = icmp eq i32 %34, 1
  br i1 %cmp29, label %if.then.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.26
  %35 = load i32, i32* %path.addr, align 4
  %cmp31 = icmp eq i32 %35, 2
  br i1 %cmp31, label %if.then.33, label %if.else.35

if.then.33:                                       ; preds = %lor.lhs.false, %if.end.26
  %36 = load i32, i32* %cxx_aware.addr, align 4
  %tobool34 = icmp ne i32 %36, 0
  %cond = select i1 %tobool34, i32 1, i32 2
  %37 = load %struct.search_path*, %struct.search_path** %new, align 8
  %sysp = getelementptr inbounds %struct.search_path, %struct.search_path* %37, i32 0, i32 5
  store i32 %cond, i32* %sysp, align 4
  br label %if.end.37

if.else.35:                                       ; preds = %lor.lhs.false
  %38 = load %struct.search_path*, %struct.search_path** %new, align 8
  %sysp36 = getelementptr inbounds %struct.search_path, %struct.search_path* %38, i32 0, i32 5
  store i32 0, i32* %sysp36, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.then.33
  %39 = load %struct.search_path*, %struct.search_path** %new, align 8
  %name_map = getelementptr inbounds %struct.search_path, %struct.search_path* %39, i32 0, i32 6
  store %struct.file_name_map* null, %struct.file_name_map** %name_map, align 8
  %40 = load %struct.search_path*, %struct.search_path** %new, align 8
  %next = getelementptr inbounds %struct.search_path, %struct.search_path* %40, i32 0, i32 0
  store %struct.search_path* null, %struct.search_path** %next, align 8
  %41 = load i32, i32* %path.addr, align 4
  switch i32 %41, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.45
    i32 2, label %sw.bb.55
  ]

sw.bb:                                            ; preds = %if.end.37
  br label %do.body

do.body:                                          ; preds = %sw.bb
  %42 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %brack_head = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %42, i32 0, i32 4
  %43 = load %struct.search_path*, %struct.search_path** %brack_head, align 8
  %tobool38 = icmp ne %struct.search_path* %43, null
  br i1 %tobool38, label %if.else.41, label %if.then.39

if.then.39:                                       ; preds = %do.body
  %44 = load %struct.search_path*, %struct.search_path** %new, align 8
  %45 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %brack_head40 = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %45, i32 0, i32 4
  store %struct.search_path* %44, %struct.search_path** %brack_head40, align 8
  br label %if.end.43

if.else.41:                                       ; preds = %do.body
  %46 = load %struct.search_path*, %struct.search_path** %new, align 8
  %47 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %brack_tail = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %47, i32 0, i32 5
  %48 = load %struct.search_path*, %struct.search_path** %brack_tail, align 8
  %next42 = getelementptr inbounds %struct.search_path, %struct.search_path* %48, i32 0, i32 0
  store %struct.search_path* %46, %struct.search_path** %next42, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.41, %if.then.39
  %49 = load %struct.search_path*, %struct.search_path** %new, align 8
  %50 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %brack_tail44 = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %50, i32 0, i32 5
  store %struct.search_path* %49, %struct.search_path** %brack_tail44, align 8
  br label %do.end

do.end:                                           ; preds = %if.end.43
  br label %sw.epilog

sw.bb.45:                                         ; preds = %if.end.37
  br label %do.body.46

do.body.46:                                       ; preds = %sw.bb.45
  %51 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %systm_head = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %51, i32 0, i32 6
  %52 = load %struct.search_path*, %struct.search_path** %systm_head, align 8
  %tobool47 = icmp ne %struct.search_path* %52, null
  br i1 %tobool47, label %if.else.50, label %if.then.48

if.then.48:                                       ; preds = %do.body.46
  %53 = load %struct.search_path*, %struct.search_path** %new, align 8
  %54 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %systm_head49 = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %54, i32 0, i32 6
  store %struct.search_path* %53, %struct.search_path** %systm_head49, align 8
  br label %if.end.52

if.else.50:                                       ; preds = %do.body.46
  %55 = load %struct.search_path*, %struct.search_path** %new, align 8
  %56 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %systm_tail = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %56, i32 0, i32 7
  %57 = load %struct.search_path*, %struct.search_path** %systm_tail, align 8
  %next51 = getelementptr inbounds %struct.search_path, %struct.search_path* %57, i32 0, i32 0
  store %struct.search_path* %55, %struct.search_path** %next51, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.50, %if.then.48
  %58 = load %struct.search_path*, %struct.search_path** %new, align 8
  %59 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %systm_tail53 = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %59, i32 0, i32 7
  store %struct.search_path* %58, %struct.search_path** %systm_tail53, align 8
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.52
  br label %sw.epilog

sw.bb.55:                                         ; preds = %if.end.37
  br label %do.body.56

do.body.56:                                       ; preds = %sw.bb.55
  %60 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %after_head = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %60, i32 0, i32 8
  %61 = load %struct.search_path*, %struct.search_path** %after_head, align 8
  %tobool57 = icmp ne %struct.search_path* %61, null
  br i1 %tobool57, label %if.else.60, label %if.then.58

if.then.58:                                       ; preds = %do.body.56
  %62 = load %struct.search_path*, %struct.search_path** %new, align 8
  %63 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %after_head59 = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %63, i32 0, i32 8
  store %struct.search_path* %62, %struct.search_path** %after_head59, align 8
  br label %if.end.62

if.else.60:                                       ; preds = %do.body.56
  %64 = load %struct.search_path*, %struct.search_path** %new, align 8
  %65 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %after_tail = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %65, i32 0, i32 9
  %66 = load %struct.search_path*, %struct.search_path** %after_tail, align 8
  %next61 = getelementptr inbounds %struct.search_path, %struct.search_path* %66, i32 0, i32 0
  store %struct.search_path* %64, %struct.search_path** %next61, align 8
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.60, %if.then.58
  %67 = load %struct.search_path*, %struct.search_path** %new, align 8
  %68 = load %struct.cpp_pending*, %struct.cpp_pending** %pend, align 8
  %after_tail63 = getelementptr inbounds %struct.cpp_pending, %struct.cpp_pending* %68, i32 0, i32 9
  store %struct.search_path* %67, %struct.search_path** %after_tail63, align 8
  br label %do.end.64

do.end.64:                                        ; preds = %if.end.62
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.14, %if.then.18, %if.end.37, %do.end.64, %do.end.54, %do.end
  ret void
}

declare noalias i8* @xstrdup(i8*) #1

declare noalias i8* @xmalloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define i32 @cpp_handle_options(%struct.cpp_reader* %pfile, i32 %argc, i8** %argv) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %strings_processed = alloca i32, align 4
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %3 = load i32, i32* %argc.addr, align 4
  %4 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %3, %4
  %5 = load i8**, i8*** %argv.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %5, i64 %idx.ext
  %call = call i32 @cpp_handle_option(%struct.cpp_reader* %2, i32 %sub, i8** %add.ptr, i32 1)
  store i32 %call, i32* %strings_processed, align 4
  %7 = load i32, i32* %strings_processed, align 4
  %cmp1 = icmp eq i32 %7, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %strings_processed, align 4
  %9 = load i32, i32* %i, align 4
  %add = add nsw i32 %9, %8
  store i32 %add, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %10 = load i32, i32* %i, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define void @cpp_post_options(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %print_version = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 39
  %1 = load i8, i8* %print_version, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load i8*, i8** @version_string, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i32 0, i32 0), i8* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 @fputc(i32 10, %struct._IO_FILE* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %6, i32 0, i32 37
  %in_fname = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 0
  %7 = load i8*, i8** %in_fname, align 8
  %cmp = icmp eq i8* %7, null
  br i1 %cmp, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %8 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts3 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %8, i32 0, i32 37
  %in_fname4 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts3, i32 0, i32 0
  %9 = load i8*, i8** %in_fname4, align 8
  %call5 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)) #6
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.10, label %if.then.7

if.then.7:                                        ; preds = %lor.lhs.false, %if.end
  %10 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts8 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %10, i32 0, i32 37
  %in_fname9 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts8, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8** %in_fname9, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %lor.lhs.false
  %11 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts11 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %11, i32 0, i32 37
  %out_fname = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts11, i32 0, i32 1
  %12 = load i8*, i8** %out_fname, align 8
  %cmp12 = icmp eq i8* %12, null
  br i1 %cmp12, label %if.then.18, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %if.end.10
  %13 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts14 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %13, i32 0, i32 37
  %out_fname15 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts14, i32 0, i32 1
  %14 = load i8*, i8** %out_fname15, align 8
  %call16 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)) #6
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.21, label %if.then.18

if.then.18:                                       ; preds = %lor.lhs.false.13, %if.end.10
  %15 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts19 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %15, i32 0, i32 37
  %out_fname20 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts19, i32 0, i32 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8** %out_fname20, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %lor.lhs.false.13
  %16 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts22 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %16, i32 0, i32 37
  %cplusplus = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts22, i32 0, i32 14
  %17 = load i8, i8* %cplusplus, align 1
  %tobool23 = icmp ne i8 %17, 0
  br i1 %tobool23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.21
  %18 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts25 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %18, i32 0, i32 37
  %warn_traditional = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts25, i32 0, i32 33
  store i8 0, i8* %warn_traditional, align 1
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.end.21
  %19 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts27 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %19, i32 0, i32 37
  %user_label_prefix = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts27, i32 0, i32 10
  %20 = load i8*, i8** %user_label_prefix, align 8
  %cmp28 = icmp eq i8* %20, null
  br i1 %cmp28, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.end.26
  %21 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts30 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %21, i32 0, i32 37
  %user_label_prefix31 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts30, i32 0, i32 10
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8** %user_label_prefix31, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.end.26
  %22 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts33 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %22, i32 0, i32 37
  %preprocessed = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts33, i32 0, i32 43
  %23 = load i8, i8* %preprocessed, align 1
  %tobool34 = icmp ne i8 %23, 0
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.32
  %24 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %24, i32 0, i32 1
  %prevent_expansion = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state, i32 0, i32 7
  store i8 1, i8* %prevent_expansion, align 1
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.end.32
  %25 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts37 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %25, i32 0, i32 37
  %dump_macros = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts37, i32 0, i32 46
  %26 = load i8, i8* %dump_macros, align 1
  %conv = zext i8 %26 to i32
  %cmp38 = icmp eq i32 %conv, 1
  br i1 %cmp38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.end.36
  %27 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts41 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %27, i32 0, i32 37
  %no_output = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts41, i32 0, i32 35
  store i8 1, i8* %no_output, align 1
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.end.36
  %28 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts43 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %28, i32 0, i32 37
  %no_output44 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts43, i32 0, i32 35
  %29 = load i8, i8* %no_output44, align 1
  %tobool45 = icmp ne i8 %29, 0
  br i1 %tobool45, label %if.then.46, label %if.end.57

if.then.46:                                       ; preds = %if.end.42
  %30 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts47 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %30, i32 0, i32 37
  %dump_macros48 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts47, i32 0, i32 46
  %31 = load i8, i8* %dump_macros48, align 1
  %conv49 = zext i8 %31 to i32
  %cmp50 = icmp ne i32 %conv49, 1
  br i1 %cmp50, label %if.then.52, label %if.end.55

if.then.52:                                       ; preds = %if.then.46
  %32 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts53 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %32, i32 0, i32 37
  %dump_macros54 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts53, i32 0, i32 46
  store i8 0, i8* %dump_macros54, align 1
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.52, %if.then.46
  %33 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts56 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %33, i32 0, i32 37
  %dump_includes = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts56, i32 0, i32 47
  store i8 0, i8* %dump_includes, align 1
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.55, %if.end.42
  %34 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @init_dependency_output(%struct.cpp_reader* %34)
  %35 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts58 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %35, i32 0, i32 37
  %print_deps = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts58, i32 0, i32 21
  %36 = load i8, i8* %print_deps, align 1
  %conv59 = zext i8 %36 to i32
  %cmp60 = icmp eq i32 %conv59, 0
  br i1 %cmp60, label %land.lhs.true, label %if.end.73

land.lhs.true:                                    ; preds = %if.end.57
  %37 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts62 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %37, i32 0, i32 37
  %print_deps_missing_files = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts62, i32 0, i32 23
  %38 = load i8, i8* %print_deps_missing_files, align 1
  %conv63 = zext i8 %38 to i32
  %tobool64 = icmp ne i32 %conv63, 0
  br i1 %tobool64, label %if.then.72, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %land.lhs.true
  %39 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts66 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %39, i32 0, i32 37
  %deps_file = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts66, i32 0, i32 4
  %40 = load i8*, i8** %deps_file, align 8
  %tobool67 = icmp ne i8* %40, null
  br i1 %tobool67, label %if.then.72, label %lor.lhs.false.68

lor.lhs.false.68:                                 ; preds = %lor.lhs.false.65
  %41 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts69 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %41, i32 0, i32 37
  %deps_phony_targets = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts69, i32 0, i32 22
  %42 = load i8, i8* %deps_phony_targets, align 1
  %conv70 = zext i8 %42 to i32
  %tobool71 = icmp ne i32 %conv70, 0
  br i1 %tobool71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %lor.lhs.false.68, %lor.lhs.false.65, %land.lhs.true
  %43 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_fatal(%struct.cpp_reader* %43, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.31, i32 0, i32 0))
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %lor.lhs.false.68, %if.end.57
  ret void
}

declare i32 @fputc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @init_dependency_output(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %spec = alloca i8*, align 8
  %s = alloca i8*, align 8
  %output_file = alloca i8*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 37
  %print_deps = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 21
  %1 = load i8, i8* %print_deps, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else.32

if.then:                                          ; preds = %entry
  %call = call i8* @getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.160, i32 0, i32 0)) #4
  store i8* %call, i8** %spec, align 8
  %2 = load i8*, i8** %spec, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts3 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %3, i32 0, i32 37
  %print_deps4 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts3, i32 0, i32 21
  store i8 1, i8* %print_deps4, align 1
  br label %if.end.11

if.else:                                          ; preds = %if.then
  %call5 = call i8* @getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.161, i32 0, i32 0)) #4
  store i8* %call5, i8** %spec, align 8
  %4 = load i8*, i8** %spec, align 8
  %tobool6 = icmp ne i8* %4, null
  br i1 %tobool6, label %if.then.7, label %if.else.10

if.then.7:                                        ; preds = %if.else
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts8 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %5, i32 0, i32 37
  %print_deps9 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts8, i32 0, i32 21
  store i8 2, i8* %print_deps9, align 1
  br label %if.end

if.else.10:                                       ; preds = %if.else
  br label %if.end.42

if.end:                                           ; preds = %if.then.7
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then.2
  %6 = load i8*, i8** %spec, align 8
  %call12 = call i8* @strchr(i8* %6, i32 32) #6
  store i8* %call12, i8** %s, align 8
  %7 = load i8*, i8** %s, align 8
  %tobool13 = icmp ne i8* %7, null
  br i1 %tobool13, label %if.then.14, label %if.else.22

if.then.14:                                       ; preds = %if.end.11
  %8 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %deps = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %8, i32 0, i32 31
  %9 = load %struct.deps*, %struct.deps** %deps, align 8
  %10 = load i8*, i8** %s, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 1
  call void @deps_add_target(%struct.deps* %9, i8* %add.ptr, i32 0)
  %11 = load i8*, i8** %s, align 8
  %12 = load i8*, i8** %spec, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 1
  %call15 = call noalias i8* @xmalloc(i64 %add)
  store i8* %call15, i8** %output_file, align 8
  %13 = load i8*, i8** %output_file, align 8
  %14 = load i8*, i8** %spec, align 8
  %15 = load i8*, i8** %s, align 8
  %16 = load i8*, i8** %spec, align 8
  %sub.ptr.lhs.cast16 = ptrtoint i8* %15 to i64
  %sub.ptr.rhs.cast17 = ptrtoint i8* %16 to i64
  %sub.ptr.sub18 = sub i64 %sub.ptr.lhs.cast16, %sub.ptr.rhs.cast17
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 %sub.ptr.sub18, i32 1, i1 false)
  %17 = load i8*, i8** %s, align 8
  %18 = load i8*, i8** %spec, align 8
  %sub.ptr.lhs.cast19 = ptrtoint i8* %17 to i64
  %sub.ptr.rhs.cast20 = ptrtoint i8* %18 to i64
  %sub.ptr.sub21 = sub i64 %sub.ptr.lhs.cast19, %sub.ptr.rhs.cast20
  %19 = load i8*, i8** %output_file, align 8
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 %sub.ptr.sub21
  store i8 0, i8* %arrayidx, align 1
  br label %if.end.23

if.else.22:                                       ; preds = %if.end.11
  %20 = load i8*, i8** %spec, align 8
  store i8* %20, i8** %output_file, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.22, %if.then.14
  %21 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts24 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %21, i32 0, i32 37
  %deps_file = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts24, i32 0, i32 4
  %22 = load i8*, i8** %deps_file, align 8
  %cmp25 = icmp eq i8* %22, null
  br i1 %cmp25, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %if.end.23
  %23 = load i8*, i8** %output_file, align 8
  %24 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts28 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %24, i32 0, i32 37
  %deps_file29 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts28, i32 0, i32 4
  store i8* %23, i8** %deps_file29, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %if.end.23
  %25 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts31 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %25, i32 0, i32 37
  %print_deps_append = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts31, i32 0, i32 24
  store i8 1, i8* %print_deps_append, align 1
  br label %if.end.42

if.else.32:                                       ; preds = %entry
  %26 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts33 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %26, i32 0, i32 37
  %deps_file34 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts33, i32 0, i32 4
  %27 = load i8*, i8** %deps_file34, align 8
  %cmp35 = icmp eq i8* %27, null
  br i1 %cmp35, label %if.then.37, label %if.end.41

if.then.37:                                       ; preds = %if.else.32
  %28 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts38 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %28, i32 0, i32 37
  %out_fname = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts38, i32 0, i32 1
  %29 = load i8*, i8** %out_fname, align 8
  %30 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts39 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %30, i32 0, i32 37
  %deps_file40 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts39, i32 0, i32 4
  store i8* %29, i8** %deps_file40, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.37, %if.else.32
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.10, %if.end.41, %if.end.30
  ret void
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @path_include(%struct.cpp_reader* %pfile, i8* %list, i32 %path) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %list.addr = alloca i8*, align 8
  %path.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %name = alloca i8*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i8* %list, i8** %list.addr, align 8
  store i32 %path, i32* %path.addr, align 4
  %0 = load i8*, i8** %list.addr, align 8
  store i8* %0, i8** %p, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i8*, i8** %p, align 8
  store i8* %1, i8** %q, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %2 = load i8*, i8** %q, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i8*, i8** %q, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp ne i32 %conv2, 58
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i8*, i8** %q, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %q, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %8 = load i8*, i8** %q, align 8
  %9 = load i8*, i8** %p, align 8
  %cmp5 = icmp eq i8* %8, %9
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %call = call noalias i8* @xmalloc(i64 2)
  store i8* %call, i8** %name, align 8
  %10 = load i8*, i8** %name, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 0
  store i8 46, i8* %arrayidx, align 1
  %11 = load i8*, i8** %name, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %11, i64 1
  store i8 0, i8* %arrayidx7, align 1
  br label %if.end

if.else:                                          ; preds = %while.end
  %12 = load i8*, i8** %q, align 8
  %13 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 1
  %call8 = call noalias i8* @xmalloc(i64 %add)
  store i8* %call8, i8** %name, align 8
  %14 = load i8*, i8** %name, align 8
  %15 = load i8*, i8** %p, align 8
  %16 = load i8*, i8** %q, align 8
  %17 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast9 = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast10 = ptrtoint i8* %17 to i64
  %sub.ptr.sub11 = sub i64 %sub.ptr.lhs.cast9, %sub.ptr.rhs.cast10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 %sub.ptr.sub11, i32 1, i1 false)
  %18 = load i8*, i8** %q, align 8
  %19 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast12 = ptrtoint i8* %18 to i64
  %sub.ptr.rhs.cast13 = ptrtoint i8* %19 to i64
  %sub.ptr.sub14 = sub i64 %sub.ptr.lhs.cast12, %sub.ptr.rhs.cast13
  %20 = load i8*, i8** %name, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %20, i64 %sub.ptr.sub14
  store i8 0, i8* %arrayidx15, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %21 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %22 = load i8*, i8** %name, align 8
  %23 = load i32, i32* %path.addr, align 4
  call void @append_include_chain(%struct.cpp_reader* %21, i8* %22, i32 %23, i32 0)
  %24 = load i8*, i8** %q, align 8
  %25 = load i8, i8* %24, align 1
  %conv16 = sext i8 %25 to i32
  %cmp17 = icmp eq i32 %conv16, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end
  br label %do.end

if.end.20:                                        ; preds = %if.end
  %26 = load i8*, i8** %q, align 8
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 1
  store i8* %add.ptr, i8** %p, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.20
  br i1 true, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.19
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

declare i8* @update_path(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct.search_path* @remove_dup_dirs(%struct.cpp_reader* %pfile, %struct.search_path* %head) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %head.addr = alloca %struct.search_path*, align 8
  %prev = alloca %struct.search_path*, align 8
  %cur = alloca %struct.search_path*, align 8
  %other = alloca %struct.search_path*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.search_path* %head, %struct.search_path** %head.addr, align 8
  store %struct.search_path* null, %struct.search_path** %prev, align 8
  %0 = load %struct.search_path*, %struct.search_path** %head.addr, align 8
  store %struct.search_path* %0, %struct.search_path** %cur, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %entry
  %1 = load %struct.search_path*, %struct.search_path** %cur, align 8
  %tobool = icmp ne %struct.search_path* %1, null
  br i1 %tobool, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  %2 = load %struct.search_path*, %struct.search_path** %head.addr, align 8
  store %struct.search_path* %2, %struct.search_path** %other, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load %struct.search_path*, %struct.search_path** %other, align 8
  %4 = load %struct.search_path*, %struct.search_path** %cur, align 8
  %cmp = icmp ne %struct.search_path* %3, %4
  br i1 %cmp, label %for.body.2, label %for.end

for.body.2:                                       ; preds = %for.cond.1
  %5 = load %struct.search_path*, %struct.search_path** %cur, align 8
  %ino = getelementptr inbounds %struct.search_path, %struct.search_path* %5, i32 0, i32 3
  %6 = load i64, i64* %ino, align 8
  %7 = load %struct.search_path*, %struct.search_path** %other, align 8
  %ino3 = getelementptr inbounds %struct.search_path, %struct.search_path* %7, i32 0, i32 3
  %8 = load i64, i64* %ino3, align 8
  %cmp4 = icmp eq i64 %6, %8
  br i1 %cmp4, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %for.body.2
  %9 = load %struct.search_path*, %struct.search_path** %cur, align 8
  %dev = getelementptr inbounds %struct.search_path, %struct.search_path* %9, i32 0, i32 4
  %10 = load i64, i64* %dev, align 8
  %11 = load %struct.search_path*, %struct.search_path** %other, align 8
  %dev5 = getelementptr inbounds %struct.search_path, %struct.search_path* %11, i32 0, i32 4
  %12 = load i64, i64* %dev5, align 8
  %cmp6 = icmp eq i64 %10, %12
  br i1 %cmp6, label %if.then, label %if.end.19

if.then:                                          ; preds = %land.lhs.true
  %13 = load %struct.search_path*, %struct.search_path** %cur, align 8
  %sysp = getelementptr inbounds %struct.search_path, %struct.search_path* %13, i32 0, i32 5
  %14 = load i32, i32* %sysp, align 4
  %tobool7 = icmp ne i32 %14, 0
  br i1 %tobool7, label %land.lhs.true.8, label %if.end.17

land.lhs.true.8:                                  ; preds = %if.then
  %15 = load %struct.search_path*, %struct.search_path** %other, align 8
  %sysp9 = getelementptr inbounds %struct.search_path, %struct.search_path* %15, i32 0, i32 5
  %16 = load i32, i32* %sysp9, align 4
  %tobool10 = icmp ne i32 %16, 0
  br i1 %tobool10, label %if.end.17, label %if.then.11

if.then.11:                                       ; preds = %land.lhs.true.8
  %17 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %18 = load %struct.search_path*, %struct.search_path** %cur, align 8
  %name = getelementptr inbounds %struct.search_path, %struct.search_path* %18, i32 0, i32 1
  %19 = load i8*, i8** %name, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_warning(%struct.cpp_reader* %17, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.37, i32 0, i32 0), i8* %19)
  %20 = load %struct.search_path*, %struct.search_path** %cur, align 8
  %name12 = getelementptr inbounds %struct.search_path, %struct.search_path* %20, i32 0, i32 1
  %21 = load i8*, i8** %name12, align 8
  %22 = load %struct.search_path*, %struct.search_path** %other, align 8
  %name13 = getelementptr inbounds %struct.search_path, %struct.search_path* %22, i32 0, i32 1
  %23 = load i8*, i8** %name13, align 8
  %call = call i32 @strcmp(i8* %21, i8* %23) #6
  %tobool14 = icmp ne i32 %call, 0
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then.11
  %24 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %25 = load %struct.search_path*, %struct.search_path** %other, align 8
  %name16 = getelementptr inbounds %struct.search_path, %struct.search_path* %25, i32 0, i32 1
  %26 = load i8*, i8** %name16, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_warning(%struct.cpp_reader* %24, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.38, i32 0, i32 0), i8* %26)
  br label %if.end

if.else:                                          ; preds = %if.then.11
  %27 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_warning(%struct.cpp_reader* %27, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.39, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.15
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %land.lhs.true.8, %if.then
  %28 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %29 = load %struct.search_path*, %struct.search_path** %prev, align 8
  %call18 = call %struct.search_path* @remove_dup_dir(%struct.cpp_reader* %28, %struct.search_path* %29)
  store %struct.search_path* %call18, %struct.search_path** %cur, align 8
  br label %for.end

if.end.19:                                        ; preds = %land.lhs.true, %for.body.2
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %30 = load %struct.search_path*, %struct.search_path** %other, align 8
  %next = getelementptr inbounds %struct.search_path, %struct.search_path* %30, i32 0, i32 0
  %31 = load %struct.search_path*, %struct.search_path** %next, align 8
  store %struct.search_path* %31, %struct.search_path** %other, align 8
  br label %for.cond.1

for.end:                                          ; preds = %if.end.17, %for.cond.1
  %32 = load %struct.search_path*, %struct.search_path** %cur, align 8
  store %struct.search_path* %32, %struct.search_path** %prev, align 8
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end
  %33 = load %struct.search_path*, %struct.search_path** %cur, align 8
  %next21 = getelementptr inbounds %struct.search_path, %struct.search_path* %33, i32 0, i32 0
  %34 = load %struct.search_path*, %struct.search_path** %next21, align 8
  store %struct.search_path* %34, %struct.search_path** %cur, align 8
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  %35 = load %struct.search_path*, %struct.search_path** %prev, align 8
  ret %struct.search_path* %35
}

; Function Attrs: nounwind uwtable
define internal %struct.search_path* @remove_dup_dir(%struct.cpp_reader* %pfile, %struct.search_path* %prev) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %prev.addr = alloca %struct.search_path*, align 8
  %cur = alloca %struct.search_path*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.search_path* %prev, %struct.search_path** %prev.addr, align 8
  %0 = load %struct.search_path*, %struct.search_path** %prev.addr, align 8
  %next = getelementptr inbounds %struct.search_path, %struct.search_path* %0, i32 0, i32 0
  %1 = load %struct.search_path*, %struct.search_path** %next, align 8
  store %struct.search_path* %1, %struct.search_path** %cur, align 8
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %2, i32 0, i32 37
  %verbose = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 12
  %3 = load i8, i8* %verbose, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load %struct.search_path*, %struct.search_path** %cur, align 8
  %name = getelementptr inbounds %struct.search_path, %struct.search_path* %5, i32 0, i32 1
  %6 = load i8*, i8** %name, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.40, i32 0, i32 0), i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.search_path*, %struct.search_path** %cur, align 8
  %next1 = getelementptr inbounds %struct.search_path, %struct.search_path* %7, i32 0, i32 0
  %8 = load %struct.search_path*, %struct.search_path** %next1, align 8
  %9 = load %struct.search_path*, %struct.search_path** %prev.addr, align 8
  %next2 = getelementptr inbounds %struct.search_path, %struct.search_path* %9, i32 0, i32 0
  store %struct.search_path* %8, %struct.search_path** %next2, align 8
  %10 = load %struct.search_path*, %struct.search_path** %cur, align 8
  %name3 = getelementptr inbounds %struct.search_path, %struct.search_path* %10, i32 0, i32 1
  %11 = load i8*, i8** %name3, align 8
  call void @free(i8* %11) #4
  %12 = load %struct.search_path*, %struct.search_path** %cur, align 8
  %13 = bitcast %struct.search_path* %12 to i8*
  call void @free(i8* %13) #4
  %14 = load %struct.search_path*, %struct.search_path** %prev.addr, align 8
  ret %struct.search_path* %14
}

declare void @cpp_warning(%struct.cpp_reader*, i8*, ...) #1

declare %struct.cpp_token* @_cpp_lex_direct(%struct.cpp_reader*) #1

declare void @_cpp_backup_tokens(%struct.cpp_reader*, i32) #1

declare i32 @_cpp_handle_directive(%struct.cpp_reader*, i32) #1

declare %struct.cpp_hashnode* @cpp_lookup(%struct.cpp_reader*, i8*, i32) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare void @_cpp_define_builtin(%struct.cpp_reader*, i8*) #1

declare zeroext i1 @_cpp_execute_include(%struct.cpp_reader*, %struct.cpp_token*, i32) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare void @cpp_notice_from_errno(%struct.cpp_reader*, i8*) #1

declare void @deps_write(%struct.deps*, %struct._IO_FILE*, i32) #1

declare void @deps_phony_targets(%struct.deps*, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #2

declare i32 @fclose(%struct._IO_FILE*) #1

declare i8* @_cpp_simplify_pathname(i8*) #1

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare void @cpp_notice(%struct.cpp_reader*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
