; ModuleID = './src/lread.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.emacs_globals = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.buffer = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.buffer_text, %struct.buffer_text*, %struct.buffer*, i64, i64, i64, i64, i64, i64, %struct.buffer*, i32, i32, [50 x i8], %struct.timespec, i64, i64, i64, i64, i64, %struct.region_cache*, %struct.region_cache*, %struct.region_cache*, i8, %struct.Lisp_Overlay*, %struct.Lisp_Overlay*, i64, i64 }
%struct.vectorlike_header = type { i64 }
%struct.buffer_text = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.interval*, %struct.Lisp_Marker*, i8 }
%struct.interval = type { i64, i64, %struct.interval*, %struct.interval*, %union.anon.0, i8, i64 }
%union.anon.0 = type { %struct.interval* }
%struct.Lisp_Marker = type { i32, %struct.buffer*, %struct.Lisp_Marker*, i64, i64 }
%struct.timespec = type { i64, i64 }
%struct.region_cache = type opaque
%struct.Lisp_Overlay = type { i32, %struct.Lisp_Overlay*, i64, i64, i64 }
%struct.Lisp_Symbol = type { i16, i64, %union.anon.1, i64, i64, %struct.Lisp_Symbol* }
%union.anon.1 = type { i64 }
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon.2, i16, i16, i8*, i8*, i8* }
%union.anon.2 = type { i64 ()* }
%struct.Lisp_Objfwd = type { i32, i64* }
%struct.Lisp_Boolfwd = type { i32, i8* }
%struct.charset = type { i32, i64, i32, [15 x i32], i8*, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [190 x i8], i32 }
%struct.Lisp_Cons = type { i64, %union.anon }
%union.anon = type { i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%union.Aligned_String = type { %struct.Lisp_String }
%struct.Lisp_String = type { i64, i64, %struct.interval*, i8* }
%struct.Lisp_Intfwd = type { i32, i64* }
%union.Lisp_Fwd = type { %struct.Lisp_Intfwd }
%struct.Lisp_Kboard_Objfwd = type { i32, i32 }
%struct.Lisp_Hash_Table = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.hash_table_test, %struct.Lisp_Hash_Table* }
%struct.hash_table_test = type { i64, i64, i64, i1 (%struct.hash_table_test*, i64, i64)*, i64 (%struct.hash_table_test*, i64)* }
%struct.Lisp_Vector = type { %struct.vectorlike_header, [0 x i64] }
%union.Aligned_Cons = type { %struct.Lisp_Cons }
%struct.Lisp_Sub_Char_Table = type { %struct.vectorlike_header, i32, i32, [0 x i64] }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@instream = internal global %struct._IO_FILE* null, align 8
@globals = external global %struct.emacs_globals, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c".el\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".elc\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Cannot open load file\00", align 1
@Vloads_in_progress = internal global i64 0, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"Recursive load\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"File `%s' was not compiled in Emacs\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"File `%s' not compiled in Emacs\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"Source file `%s' newer than byte-compiled file\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Opening stdio stream\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"Loading %s (compiled; note unsafe, not compiled in Emacs)...\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Loading %s (source)...\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"Loading %s (compiled; note, source file is newer)...\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"Loading %s...\00", align 1
@saved_doc_string = internal global i8* null, align 8
@saved_doc_string_size = internal global i64 0, align 8
@prev_saved_doc_string = internal global i8* null, align 8
@prev_saved_doc_string_size = internal global i64 0, align 8
@noninteractive = external global i8, align 1
@.str.14 = private unnamed_addr constant [65 x i8] c"Loading %s (compiled; note unsafe, not compiled in Emacs)...done\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"Loading %s (source)...done\00", align 1
@.str.16 = private unnamed_addr constant [57 x i8] c"Loading %s (compiled; note, source file is newer)...done\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"Loading %s...done\00", align 1
@current_buffer = external global %struct.buffer*, align 8
@empty_unibyte_string = external global i64, align 8
@.str.18 = private unnamed_addr constant [15 x i8] c"No such buffer\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"read-minibuffer\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"Lisp expression: \00", align 1
@read_from_string_index = internal global i64 0, align 8
@fatal_error_in_progress = external global i8, align 1
@initial_obarray = internal global i64 0, align 8
@lispsym = common global [1074 x %struct.Lisp_Symbol] zeroinitializer, align 8
@oblookup_last_bucket_number = internal global i64 0, align 8
@.str.21 = private unnamed_addr constant [28 x i8] c"Bad data in guts of obarray\00", align 1
@defsym_name = internal constant [1074 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.169, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.174, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.175, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.177, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.178, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.181, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.182, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.183, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.184, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.185, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.187, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.188, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.195, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.196, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.197, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.199, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.201, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.203, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.204, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.205, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.206, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.207, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.208, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.209, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.211, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.212, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.215, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.216, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.217, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.218, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.219, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.220, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.221, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.222, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.223, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.224, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.226, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.227, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.228, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.229, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.230, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.232, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.233, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.234, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.235, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.236, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.237, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.238, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.239, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.240, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.241, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.242, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.243, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.244, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.245, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.246, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.247, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.248, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.249, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.250, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.251, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.252, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.253, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.254, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.255, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.256, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.257, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.258, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.259, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.260, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.261, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.262, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.263, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.264, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.265, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.266, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.267, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.268, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.269, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.270, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.271, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.272, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.273, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.274, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.275, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.276, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.277, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.278, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.279, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.280, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.281, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.282, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.283, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.284, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.285, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.286, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.287, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.288, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.289, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.290, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.291, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.292, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.293, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.294, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.295, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.296, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.297, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.298, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.299, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.300, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.301, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.302, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.303, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.304, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.305, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.306, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.307, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.308, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.309, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.310, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.311, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.312, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.313, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.314, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.315, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.316, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.317, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.318, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.319, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.320, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.321, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.322, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.323, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.324, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.325, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.326, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.327, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.328, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.329, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.330, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.331, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.332, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.333, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.334, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.335, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.336, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.337, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.338, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.339, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.340, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.341, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.342, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.343, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.344, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.345, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.346, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.347, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.348, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.349, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.350, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.351, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.352, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.353, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.354, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.355, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.356, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.357, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.358, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.359, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.360, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.361, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.362, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.363, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.364, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.365, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.366, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.367, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.368, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.369, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.370, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.371, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.372, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.373, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.374, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.375, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.376, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.377, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.378, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.379, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.380, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.381, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.382, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.383, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.384, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.385, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.386, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.387, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.388, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.389, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.390, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.391, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.392, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.393, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.394, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.395, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.396, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.397, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.398, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.399, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.400, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.401, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.402, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.403, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.404, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.405, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.406, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.407, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.408, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.409, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.410, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.411, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.412, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.413, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.414, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.415, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.416, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.417, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.418, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.419, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.420, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.421, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.422, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.423, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.424, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.425, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.426, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.427, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.428, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.429, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.430, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.431, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.432, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.433, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.434, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.435, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.436, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.437, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.438, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.439, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.440, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.441, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.442, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.443, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.444, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.445, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.446, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.447, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.448, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.449, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.450, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.451, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.452, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.453, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.454, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.455, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.456, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.457, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.458, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.459, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.460, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.461, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.462, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.463, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.464, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.465, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.466, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.467, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.468, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.469, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.470, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.471, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.472, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.473, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.474, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.475, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.476, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.477, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.478, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.479, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.480, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.481, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.482, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.483, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.484, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.485, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.486, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.487, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.488, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.489, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.490, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.491, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.492, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.493, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.494, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.495, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.496, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.497, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.498, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.499, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.500, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.501, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.502, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.503, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.504, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.505, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.506, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.507, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.508, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.509, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.510, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.511, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.512, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.513, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.514, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.515, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.516, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.517, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.518, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.519, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.520, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.521, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.522, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.523, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.524, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.525, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.526, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.527, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.528, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.529, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.530, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.531, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.532, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.533, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.534, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.535, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.536, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.537, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.538, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.539, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.540, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.541, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.542, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.543, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.544, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.545, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.546, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.547, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.548, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.549, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.550, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.551, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.552, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.553, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.554, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.555, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.556, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.557, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.558, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.559, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.560, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.561, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.562, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.563, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.564, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.565, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.566, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.567, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.568, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.569, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.570, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.571, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.572, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.573, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.574, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.575, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.576, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.577, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.578, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.579, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.580, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.581, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.582, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.583, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.584, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.585, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.586, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.587, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.588, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.589, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.590, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.591, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.592, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.593, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.594, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.595, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.596, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.597, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.598, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.599, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.600, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.601, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.602, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.603, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.604, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.605, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.606, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.607, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.608, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.609, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.610, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.611, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.612, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.613, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.614, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.615, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.616, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.617, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.618, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.619, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.620, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.621, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.622, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.623, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.624, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.625, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.626, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.627, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.628, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.629, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.630, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.631, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.632, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.633, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.634, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.635, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.636, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.637, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.638, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.639, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.640, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.641, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.642, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.643, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.644, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.645, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.646, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.647, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.648, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.649, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.650, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.651, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.652, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.653, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.654, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.655, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.656, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.657, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.658, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.659, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.660, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.661, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.662, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.663, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.664, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.665, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.666, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.667, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.668, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.669, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.670, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.671, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.672, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.673, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.674, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.675, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.676, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.677, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.678, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.679, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.680, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.681, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.682, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.683, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.684, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.685, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.686, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.687, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.688, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.689, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.690, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.691, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.692, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.693, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.694, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.695, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.696, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.697, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.698, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.699, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.700, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.701, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.702, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.703, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.704, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.705, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.706, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.707, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.708, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.709, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.710, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.711, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.712, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.713, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.714, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.715, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.716, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.717, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.718, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.719, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.720, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.721, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.722, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.723, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.724, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.725, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.726, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.727, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.728, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.729, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.730, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.731, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.732, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.733, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.734, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.735, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.736, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.737, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.738, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.739, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.740, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.741, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.742, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.743, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.744, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.745, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.746, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.747, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.748, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.749, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.750, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.751, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.752, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.753, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.754, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.755, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.756, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.757, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.758, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.759, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.760, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.761, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.762, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.763, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.764, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.765, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.766, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.767, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.768, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.769, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.770, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.771, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.772, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.773, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.774, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.775, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.776, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.777, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.778, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.779, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.780, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.781, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.782, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.783, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.784, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.785, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.786, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.787, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.788, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.789, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.790, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.791, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.792, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.793, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.794, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.795, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.796, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.797, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.798, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.799, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.800, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.801, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.802, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.803, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.804, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.805, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.806, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.807, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.808, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.809, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.810, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.811, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.812, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.813, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.814, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.815, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.816, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.817, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.818, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.819, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.820, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.821, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.822, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.823, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.824, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.825, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.826, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.827, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.828, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.829, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.830, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.831, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.832, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.833, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.834, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.835, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.836, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.837, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.838, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.839, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.840, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.841, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.842, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.843, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.844, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.845, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.846, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.847, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.848, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.849, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.850, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.851, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.852, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.853, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.854, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.855, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.856, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.857, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.858, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.859, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.860, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.861, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.862, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.863, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.864, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.865, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.866, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.867, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.868, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.869, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.870, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.871, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.872, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.873, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.874, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.875, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.876, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.877, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.878, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.879, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.880, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.881, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.882, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.883, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.884, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.885, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.886, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.887, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.888, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.889, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.890, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.891, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.892, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.893, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.894, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.895, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.896, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.897, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.898, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.899, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.900, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.901, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.902, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.903, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.904, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.905, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.906, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.907, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.908, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.909, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.910, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.911, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.912, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.913, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.914, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.915, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.916, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.917, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.918, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.919, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.920, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.921, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.922, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.923, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.924, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.925, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.926, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.927, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.928, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.929, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.930, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.931, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.932, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.933, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.934, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.935, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.936, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.937, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.938, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.939, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.940, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.941, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.942, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.943, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.944, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.945, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.946, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.947, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.948, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.949, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.950, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.951, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.952, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.953, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.954, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.955, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.956, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.957, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.958, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.959, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.960, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.961, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.962, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.963, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.964, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.965, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.966, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.967, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.968, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.969, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.970, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.971, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.972, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.973, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.974, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.975, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.976, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.977, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.978, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.979, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.980, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.981, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.982, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.983, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.984, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.985, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.986, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.987, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.988, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.989, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.990, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.991, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.992, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.993, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.994, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.995, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.996, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.997, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.998, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.999, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1000, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1001, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1002, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1003, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1004, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1005, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1006, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1007, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1008, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1009, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1010, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1011, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1012, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1013, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1014, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1015, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1016, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1017, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1018, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1019, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1020, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1021, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1022, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1023, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1024, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1025, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1026, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1027, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1028, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1029, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1030, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1031, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1032, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1033, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1034, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1035, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1036, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1037, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1038, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1039, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1040, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1041, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1042, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1043, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1044, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1045, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1046, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1047, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1048, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1049, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1050, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1051, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1052, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1053, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1054, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1055, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1056, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1057, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1058, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1059, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1060, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1061, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1062, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1063, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1064, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1065, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1066, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1067, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1068, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1069, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1070, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1071, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1072, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1073, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1074, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1075, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1076, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1077, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1078, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1079, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1080, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1081, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1082, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1083, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1084, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1085, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1086, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1087, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1088, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1089, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1090, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1091, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1092, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1093, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1094, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1095, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1096, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1097, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1098, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1099, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1100, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1101, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1102, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1103, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1104, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1105, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1106, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1107, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1108, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1109, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1110, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1111, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1112, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1113, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1114, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1115, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1116, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1117, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1118, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1119, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1120, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1121, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1122, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1123, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1124, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1125, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1126, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1127, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1128, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1129, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1130, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1131, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1132, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1133, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1134, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1135, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1136, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1137, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1138, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1139, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1140, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1141, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1142, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1143, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1144, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1145, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1146, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1147, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1148, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1149, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1150, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1151, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1152, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1153, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1154, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1155, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1156, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1157, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1158, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1159, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1160, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1161, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1162, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1163, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1164, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1165, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1166, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1167, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1168, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1169, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1170, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1171, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1172, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1173, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1174, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1175, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1176, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1177, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1178, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1179, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1180, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1181, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1182, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1183, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1184, i32 0, i32 0)], align 16
@read_buffer = internal global i8* null, align 8
@read_buffer_size = internal global i64 0, align 8
@.str.22 = private unnamed_addr constant [14 x i8] c"EMACSLOADPATH\00", align 1
@no_site_lisp = external global i8, align 1
@.str.23 = private unnamed_addr constant [71 x i8] c"/usr/local/share/emacs/25.1/site-lisp:/usr/local/share/emacs/site-lisp\00", align 1
@initialized = external global i8, align 1
@dir_warning.format = internal constant [22 x i8] c"Warning: %s '%s': %s\0A\00", align 16
@stderr = external global %struct._IO_FILE*, align 8
@Sget_load_suffixes = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.2 { i64 ()* @Fget_load_suffixes }, i16 0, i16 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1195, i32 0, i32 0), i8* null, i8* null }, align 8
@Sget_file_char = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.2 { i64 ()* @Fget_file_char }, i16 0, i16 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.603, i32 0, i32 0), i8* null, i8* null }, align 8
@syms_of_lread.o_fwd = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.24 = private unnamed_addr constant [8 x i8] c"obarray\00", align 1
@syms_of_lread.o_fwd.25 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.26 = private unnamed_addr constant [7 x i8] c"values\00", align 1
@syms_of_lread.o_fwd.27 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.28 = private unnamed_addr constant [15 x i8] c"standard-input\00", align 1
@syms_of_lread.o_fwd.29 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.30 = private unnamed_addr constant [27 x i8] c"read-with-symbol-positions\00", align 1
@syms_of_lread.o_fwd.31 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.32 = private unnamed_addr constant [27 x i8] c"read-symbol-positions-list\00", align 1
@syms_of_lread.o_fwd.33 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.34 = private unnamed_addr constant [12 x i8] c"read-circle\00", align 1
@syms_of_lread.o_fwd.35 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.36 = private unnamed_addr constant [10 x i8] c"load-path\00", align 1
@syms_of_lread.o_fwd.37 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.38 = private unnamed_addr constant [14 x i8] c"load-suffixes\00", align 1
@syms_of_lread.o_fwd.39 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.40 = private unnamed_addr constant [19 x i8] c"module-file-suffix\00", align 1
@syms_of_lread.o_fwd.41 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.42 = private unnamed_addr constant [23 x i8] c"load-file-rep-suffixes\00", align 1
@syms_of_lread.b_fwd = internal global %struct.Lisp_Boolfwd zeroinitializer, align 8
@.str.43 = private unnamed_addr constant [17 x i8] c"load-in-progress\00", align 1
@syms_of_lread.o_fwd.44 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.45 = private unnamed_addr constant [17 x i8] c"after-load-alist\00", align 1
@syms_of_lread.o_fwd.46 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.47 = private unnamed_addr constant [13 x i8] c"load-history\00", align 1
@syms_of_lread.o_fwd.48 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.49 = private unnamed_addr constant [15 x i8] c"load-file-name\00", align 1
@syms_of_lread.o_fwd.50 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.51 = private unnamed_addr constant [15 x i8] c"user-init-file\00", align 1
@syms_of_lread.o_fwd.52 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.53 = private unnamed_addr constant [18 x i8] c"current-load-list\00", align 1
@syms_of_lread.o_fwd.54 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.55 = private unnamed_addr constant [19 x i8] c"load-read-function\00", align 1
@syms_of_lread.o_fwd.56 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.57 = private unnamed_addr constant [26 x i8] c"load-source-file-function\00", align 1
@syms_of_lread.b_fwd.58 = internal global %struct.Lisp_Boolfwd zeroinitializer, align 8
@.str.59 = private unnamed_addr constant [23 x i8] c"load-force-doc-strings\00", align 1
@syms_of_lread.b_fwd.60 = internal global %struct.Lisp_Boolfwd zeroinitializer, align 8
@.str.61 = private unnamed_addr constant [24 x i8] c"load-convert-to-unibyte\00", align 1
@syms_of_lread.o_fwd.62 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.63 = private unnamed_addr constant [17 x i8] c"source-directory\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"../\00", align 1
@.str.65 = private unnamed_addr constant [59 x i8] c"/home/yonghyun.kim/clean-tests/clean-emacs/emacs-25.1/lisp\00", align 1
@syms_of_lread.o_fwd.66 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.67 = private unnamed_addr constant [20 x i8] c"preloaded-file-list\00", align 1
@syms_of_lread.o_fwd.68 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.69 = private unnamed_addr constant [18 x i8] c"byte-boolean-vars\00", align 1
@syms_of_lread.b_fwd.70 = internal global %struct.Lisp_Boolfwd zeroinitializer, align 8
@.str.71 = private unnamed_addr constant [25 x i8] c"load-dangerous-libraries\00", align 1
@syms_of_lread.b_fwd.72 = internal global %struct.Lisp_Boolfwd zeroinitializer, align 8
@.str.73 = private unnamed_addr constant [20 x i8] c"force-load-messages\00", align 1
@syms_of_lread.o_fwd.74 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.75 = private unnamed_addr constant [24 x i8] c"bytecomp-version-regexp\00", align 1
@.str.76 = private unnamed_addr constant [48 x i8] c"^;;;.\5C(in Emacs version\5C|bytecomp version FSF\5C)\00", align 1
@syms_of_lread.o_fwd.77 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.78 = private unnamed_addr constant [16 x i8] c"lexical-binding\00", align 1
@syms_of_lread.o_fwd.79 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.80 = private unnamed_addr constant [17 x i8] c"eval-buffer-list\00", align 1
@syms_of_lread.o_fwd.81 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.82 = private unnamed_addr constant [21 x i8] c"old-style-backquotes\00", align 1
@syms_of_lread.b_fwd.83 = internal global %struct.Lisp_Boolfwd zeroinitializer, align 8
@.str.84 = private unnamed_addr constant [18 x i8] c"load-prefer-newer\00", align 1
@read_objects = internal global i64 0, align 8
@seen_list = internal global i64 0, align 8
@.str.85 = private unnamed_addr constant [26 x i8] c"Non-character input-event\00", align 1
@unread_switch_frame = external global i64, align 8
@.str.86 = private unnamed_addr constant [45 x i8] c"Loading `%s': old-style backquotes detected!\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@readchar_count = internal global i64 0, align 8
@read_from_string_limit = internal global i64 0, align 8
@read_from_string_index_byte = internal global i64 0, align 8
@unread_char = internal global i32 0, align 4
@pending_signals = external global i8, align 1
@emacs_mule_bytes = external global [256 x i8], align 16
@charset_table = external global %struct.charset*, align 8
@emacs_mule_charset = external global [256 x i32], align 16
@Vcharset_hash_table = external global i64, align 8
@.str.88 = private unnamed_addr constant [23 x i8] c"invalid multibyte form\00", align 1
@.str.89 = private unnamed_addr constant [30 x i8] c"internal-macroexpand-for-load\00", align 1
@.str.90 = private unnamed_addr constant [27 x i8] c"Reading from killed buffer\00", align 1
@.str.91 = private unnamed_addr constant [9 x i8] c"../lisp/\00", align 1
@.str.92 = private unnamed_addr constant [19 x i8] c") or . in a vector\00", align 1
@saved_doc_string_position = internal global i64 0, align 8
@saved_doc_string_length = internal global i64 0, align 8
@prev_saved_doc_string_position = internal global i64 0, align 8
@prev_saved_doc_string_length = internal global i64 0, align 8
@.str.93 = private unnamed_addr constant [19 x i8] c". in wrong context\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"] in a list\00", align 1
@.str.95 = private unnamed_addr constant [74 x i8] c"Invalid extended read marker at head of #s list (only hash-table allowed)\00", align 1
@.str.96 = private unnamed_addr constant [41 x i8] c"Odd number of elements in hashtable data\00", align 1
@.str.97 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.98 = private unnamed_addr constant [24 x i8] c"Invalid size char-table\00", align 1
@.str.99 = private unnamed_addr constant [26 x i8] c"Zero-sized sub char-table\00", align 1
@.str.100 = private unnamed_addr constant [32 x i8] c"Invalid depth in sub char-table\00", align 1
@chartab_size = external constant [4 x i32], align 16
@.str.101 = private unnamed_addr constant [31 x i8] c"Invalid size in sub char-table\00", align 1
@.str.102 = private unnamed_addr constant [44 x i8] c"Invalid minimum character in sub-char-table\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c"#^^\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"#^\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"#&...\00", align 1
@.str.106 = private unnamed_addr constant [23 x i8] c"Empty byte-code object\00", align 1
@.str.107 = private unnamed_addr constant [29 x i8] c"Invalid string property list\00", align 1
@.str.108 = private unnamed_addr constant [11 x i8] c"\22';()[]#`,\00", align 1
@new_backquote_flag = internal global i8 0, align 1
@.str.109 = private unnamed_addr constant [13 x i8] c"\22';()[]#?`,.\00", align 1
@.str.110 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.111 = private unnamed_addr constant [27 x i8] c"Invalid modifier in string\00", align 1
@.str.112 = private unnamed_addr constant [10 x i8] c"\22';([#?`,\00", align 1
@.str.113 = private unnamed_addr constant [18 x i8] c"Invalid byte code\00", align 1
@.str.114 = private unnamed_addr constant [19 x i8] c"integer, radix %ld\00", align 1
@.str.115 = private unnamed_addr constant [36 x i8] c"Unexpected mutation error in reader\00", align 1
@.str.116 = private unnamed_addr constant [32 x i8] c"Invalid escape character syntax\00", align 1
@.str.117 = private unnamed_addr constant [36 x i8] c"Hex character out of range: \5Cx%x...\00", align 1
@.str.118 = private unnamed_addr constant [38 x i8] c"Non-hex digit used for Unicode escape\00", align 1
@.str.119 = private unnamed_addr constant [28 x i8] c"Non-Unicode character: 0x%x\00", align 1
@.str.120 = private unnamed_addr constant [5 x i8] c"ATOM\00", align 1
@.str.121 = private unnamed_addr constant [10 x i8] c"CLIPBOARD\00", align 1
@.str.122 = private unnamed_addr constant [18 x i8] c"CLIPBOARD_MANAGER\00", align 1
@.str.123 = private unnamed_addr constant [14 x i8] c"COMPOUND_TEXT\00", align 1
@.str.124 = private unnamed_addr constant [9 x i8] c":adstyle\00", align 1
@.str.125 = private unnamed_addr constant [20 x i8] c":advertised-binding\00", align 1
@.str.126 = private unnamed_addr constant [10 x i8] c":align-to\00", align 1
@.str.127 = private unnamed_addr constant [11 x i8] c":antialias\00", align 1
@.str.128 = private unnamed_addr constant [8 x i8] c":ascent\00", align 1
@.str.129 = private unnamed_addr constant [20 x i8] c":ascii-compatible-p\00", align 1
@.str.130 = private unnamed_addr constant [10 x i8] c":autohint\00", align 1
@.str.131 = private unnamed_addr constant [10 x i8] c":avgwidth\00", align 1
@.str.132 = private unnamed_addr constant [12 x i8] c":background\00", align 1
@.str.133 = private unnamed_addr constant [6 x i8] c":bold\00", align 1
@.str.134 = private unnamed_addr constant [5 x i8] c":box\00", align 1
@.str.135 = private unnamed_addr constant [8 x i8] c":buffer\00", align 1
@.str.136 = private unnamed_addr constant [8 x i8] c":button\00", align 1
@.str.137 = private unnamed_addr constant [10 x i8] c":bytesize\00", align 1
@.str.138 = private unnamed_addr constant [10 x i8] c":category\00", align 1
@.str.139 = private unnamed_addr constant [8 x i8] c":coding\00", align 1
@.str.140 = private unnamed_addr constant [7 x i8] c":color\00", align 1
@.str.141 = private unnamed_addr constant [18 x i8] c":color-adjustment\00", align 1
@.str.142 = private unnamed_addr constant [15 x i8] c":color-symbols\00", align 1
@.str.143 = private unnamed_addr constant [22 x i8] c":combining-capability\00", align 1
@.str.144 = private unnamed_addr constant [9 x i8] c":command\00", align 1
@.str.145 = private unnamed_addr constant [17 x i8] c":connection-type\00", align 1
@.str.146 = private unnamed_addr constant [12 x i8] c":conversion\00", align 1
@.str.147 = private unnamed_addr constant [6 x i8] c":crop\00", align 1
@.str.148 = private unnamed_addr constant [6 x i8] c":data\00", align 1
@.str.149 = private unnamed_addr constant [26 x i8] c":decode-translation-table\00", align 1
@.str.150 = private unnamed_addr constant [14 x i8] c":default-char\00", align 1
@.str.151 = private unnamed_addr constant [8 x i8] c":device\00", align 1
@.str.152 = private unnamed_addr constant [20 x i8] c":distant-foreground\00", align 1
@.str.153 = private unnamed_addr constant [15 x i8] c":documentation\00", align 1
@.str.154 = private unnamed_addr constant [5 x i8] c":dpi\00", align 1
@.str.155 = private unnamed_addr constant [10 x i8] c":embolden\00", align 1
@.str.156 = private unnamed_addr constant [8 x i8] c":enable\00", align 1
@.str.157 = private unnamed_addr constant [26 x i8] c":encode-translation-table\00", align 1
@.str.158 = private unnamed_addr constant [6 x i8] c":eval\00", align 1
@.str.159 = private unnamed_addr constant [8 x i8] c":family\00", align 1
@.str.160 = private unnamed_addr constant [6 x i8] c":file\00", align 1
@.str.161 = private unnamed_addr constant [8 x i8] c":filter\00", align 1
@.str.162 = private unnamed_addr constant [13 x i8] c":flowcontrol\00", align 1
@.str.163 = private unnamed_addr constant [6 x i8] c":font\00", align 1
@.str.164 = private unnamed_addr constant [13 x i8] c":font-entity\00", align 1
@.str.165 = private unnamed_addr constant [9 x i8] c":fontset\00", align 1
@.str.166 = private unnamed_addr constant [12 x i8] c":foreground\00", align 1
@.str.167 = private unnamed_addr constant [9 x i8] c":foundry\00", align 1
@.str.168 = private unnamed_addr constant [10 x i8] c":crlfiles\00", align 1
@.str.169 = private unnamed_addr constant [10 x i8] c":hostname\00", align 1
@.str.170 = private unnamed_addr constant [9 x i8] c":keylist\00", align 1
@.str.171 = private unnamed_addr constant [10 x i8] c":loglevel\00", align 1
@.str.172 = private unnamed_addr constant [16 x i8] c":min-prime-bits\00", align 1
@.str.173 = private unnamed_addr constant [10 x i8] c":priority\00", align 1
@.str.174 = private unnamed_addr constant [12 x i8] c":trustfiles\00", align 1
@.str.175 = private unnamed_addr constant [14 x i8] c":verify-error\00", align 1
@.str.176 = private unnamed_addr constant [14 x i8] c":verify-flags\00", align 1
@.str.177 = private unnamed_addr constant [8 x i8] c":height\00", align 1
@.str.178 = private unnamed_addr constant [6 x i8] c":help\00", align 1
@.str.179 = private unnamed_addr constant [16 x i8] c":heuristic-mask\00", align 1
@.str.180 = private unnamed_addr constant [9 x i8] c":hinting\00", align 1
@.str.181 = private unnamed_addr constant [11 x i8] c":hintstyle\00", align 1
@.str.182 = private unnamed_addr constant [6 x i8] c":host\00", align 1
@.str.183 = private unnamed_addr constant [16 x i8] c":ignore-defface\00", align 1
@.str.184 = private unnamed_addr constant [7 x i8] c":image\00", align 1
@.str.185 = private unnamed_addr constant [7 x i8] c":index\00", align 1
@.str.186 = private unnamed_addr constant [9 x i8] c":inherit\00", align 1
@.str.187 = private unnamed_addr constant [15 x i8] c":inverse-video\00", align 1
@.str.188 = private unnamed_addr constant [8 x i8] c":italic\00", align 1
@.str.189 = private unnamed_addr constant [14 x i8] c":key-sequence\00", align 1
@.str.190 = private unnamed_addr constant [6 x i8] c":keys\00", align 1
@.str.191 = private unnamed_addr constant [7 x i8] c":label\00", align 1
@.str.192 = private unnamed_addr constant [6 x i8] c":lang\00", align 1
@.str.193 = private unnamed_addr constant [11 x i8] c":lcdfilter\00", align 1
@.str.194 = private unnamed_addr constant [12 x i8] c":line-width\00", align 1
@.str.195 = private unnamed_addr constant [8 x i8] c":loader\00", align 1
@.str.196 = private unnamed_addr constant [7 x i8] c":local\00", align 1
@.str.197 = private unnamed_addr constant [5 x i8] c":log\00", align 1
@.str.198 = private unnamed_addr constant [5 x i8] c":map\00", align 1
@.str.199 = private unnamed_addr constant [8 x i8] c":margin\00", align 1
@.str.200 = private unnamed_addr constant [6 x i8] c":mask\00", align 1
@.str.201 = private unnamed_addr constant [8 x i8] c":matrix\00", align 1
@.str.202 = private unnamed_addr constant [12 x i8] c":max-height\00", align 1
@.str.203 = private unnamed_addr constant [11 x i8] c":max-width\00", align 1
@.str.204 = private unnamed_addr constant [10 x i8] c":mnemonic\00", align 1
@.str.205 = private unnamed_addr constant [6 x i8] c":name\00", align 1
@.str.206 = private unnamed_addr constant [9 x i8] c":noquery\00", align 1
@.str.207 = private unnamed_addr constant [8 x i8] c":nowait\00", align 1
@.str.208 = private unnamed_addr constant [5 x i8] c":otf\00", align 1
@.str.209 = private unnamed_addr constant [10 x i8] c":overline\00", align 1
@.str.210 = private unnamed_addr constant [8 x i8] c":parity\00", align 1
@.str.211 = private unnamed_addr constant [7 x i8] c":plist\00", align 1
@.str.212 = private unnamed_addr constant [9 x i8] c":pointer\00", align 1
@.str.213 = private unnamed_addr constant [6 x i8] c":port\00", align 1
@.str.214 = private unnamed_addr constant [22 x i8] c":post-read-conversion\00", align 1
@.str.215 = private unnamed_addr constant [22 x i8] c":pre-write-conversion\00", align 1
@.str.216 = private unnamed_addr constant [9 x i8] c":process\00", align 1
@.str.217 = private unnamed_addr constant [12 x i8] c":propertize\00", align 1
@.str.218 = private unnamed_addr constant [11 x i8] c":pt-height\00", align 1
@.str.219 = private unnamed_addr constant [10 x i8] c":pt-width\00", align 1
@.str.220 = private unnamed_addr constant [7 x i8] c":radio\00", align 1
@.str.221 = private unnamed_addr constant [10 x i8] c":registry\00", align 1
@.str.222 = private unnamed_addr constant [13 x i8] c":rehash-size\00", align 1
@.str.223 = private unnamed_addr constant [18 x i8] c":rehash-threshold\00", align 1
@.str.224 = private unnamed_addr constant [17 x i8] c":relative-height\00", align 1
@.str.225 = private unnamed_addr constant [16 x i8] c":relative-width\00", align 1
@.str.226 = private unnamed_addr constant [8 x i8] c":relief\00", align 1
@.str.227 = private unnamed_addr constant [8 x i8] c":remote\00", align 1
@.str.228 = private unnamed_addr constant [15 x i8] c":reverse-video\00", align 1
@.str.229 = private unnamed_addr constant [6 x i8] c":rgba\00", align 1
@.str.230 = private unnamed_addr constant [10 x i8] c":rotation\00", align 1
@.str.231 = private unnamed_addr constant [5 x i8] c":rtl\00", align 1
@.str.232 = private unnamed_addr constant [10 x i8] c":scalable\00", align 1
@.str.233 = private unnamed_addr constant [8 x i8] c":script\00", align 1
@.str.234 = private unnamed_addr constant [10 x i8] c":sentinel\00", align 1
@.str.235 = private unnamed_addr constant [8 x i8] c":server\00", align 1
@.str.236 = private unnamed_addr constant [9 x i8] c":service\00", align 1
@.str.237 = private unnamed_addr constant [6 x i8] c":size\00", align 1
@.str.238 = private unnamed_addr constant [7 x i8] c":slant\00", align 1
@.str.239 = private unnamed_addr constant [9 x i8] c":spacing\00", align 1
@.str.240 = private unnamed_addr constant [7 x i8] c":speed\00", align 1
@.str.241 = private unnamed_addr constant [8 x i8] c":stderr\00", align 1
@.str.242 = private unnamed_addr constant [9 x i8] c":stipple\00", align 1
@.str.243 = private unnamed_addr constant [6 x i8] c":stop\00", align 1
@.str.244 = private unnamed_addr constant [10 x i8] c":stopbits\00", align 1
@.str.245 = private unnamed_addr constant [16 x i8] c":strike-through\00", align 1
@.str.246 = private unnamed_addr constant [7 x i8] c":style\00", align 1
@.str.247 = private unnamed_addr constant [9 x i8] c":summary\00", align 1
@.str.248 = private unnamed_addr constant [6 x i8] c":test\00", align 1
@.str.249 = private unnamed_addr constant [8 x i8] c":toggle\00", align 1
@.str.250 = private unnamed_addr constant [6 x i8] c":type\00", align 1
@.str.251 = private unnamed_addr constant [11 x i8] c":underline\00", align 1
@.str.252 = private unnamed_addr constant [11 x i8] c":user-spec\00", align 1
@.str.253 = private unnamed_addr constant [11 x i8] c":vert-only\00", align 1
@.str.254 = private unnamed_addr constant [9 x i8] c":visible\00", align 1
@.str.255 = private unnamed_addr constant [8 x i8] c":volume\00", align 1
@.str.256 = private unnamed_addr constant [10 x i8] c":weakness\00", align 1
@.str.257 = private unnamed_addr constant [8 x i8] c":weight\00", align 1
@.str.258 = private unnamed_addr constant [7 x i8] c":width\00", align 1
@.str.259 = private unnamed_addr constant [7 x i8] c"DELETE\00", align 1
@.str.260 = private unnamed_addr constant [12 x i8] c"_EMACS_TMP_\00", align 1
@.str.261 = private unnamed_addr constant [17 x i8] c"EmacsFrameResize\00", align 1
@.str.262 = private unnamed_addr constant [5 x i8] c"INCR\00", align 1
@.str.263 = private unnamed_addr constant [8 x i8] c"INTEGER\00", align 1
@.str.264 = private unnamed_addr constant [9 x i8] c"MULTIPLE\00", align 1
@.str.265 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.266 = private unnamed_addr constant [8 x i8] c"PRIMARY\00", align 1
@.str.267 = private unnamed_addr constant [13 x i8] c"SAVE_TARGETS\00", align 1
@.str.268 = private unnamed_addr constant [10 x i8] c"SECONDARY\00", align 1
@.str.269 = private unnamed_addr constant [7 x i8] c"STRING\00", align 1
@.str.270 = private unnamed_addr constant [8 x i8] c"TARGETS\00", align 1
@.str.271 = private unnamed_addr constant [5 x i8] c"TEXT\00", align 1
@.str.272 = private unnamed_addr constant [10 x i8] c"TIMESTAMP\00", align 1
@.str.273 = private unnamed_addr constant [12 x i8] c"UTF8_STRING\00", align 1
@.str.274 = private unnamed_addr constant [6 x i8] c"above\00", align 1
@.str.275 = private unnamed_addr constant [13 x i8] c"above-handle\00", align 1
@.str.276 = private unnamed_addr constant [7 x i8] c"access\00", align 1
@.str.277 = private unnamed_addr constant [12 x i8] c"access-file\00", align 1
@.str.278 = private unnamed_addr constant [22 x i8] c"activate-input-method\00", align 1
@.str.279 = private unnamed_addr constant [22 x i8] c"activate-menubar-hook\00", align 1
@.str.280 = private unnamed_addr constant [17 x i8] c"add-name-to-file\00", align 1
@.str.281 = private unnamed_addr constant [20 x i8] c"adjust-frame-size-1\00", align 1
@.str.282 = private unnamed_addr constant [20 x i8] c"adjust-frame-size-2\00", align 1
@.str.283 = private unnamed_addr constant [20 x i8] c"adjust-frame-size-3\00", align 1
@.str.284 = private unnamed_addr constant [23 x i8] c"after-change-functions\00", align 1
@.str.285 = private unnamed_addr constant [13 x i8] c"after-handle\00", align 1
@.str.286 = private unnamed_addr constant [29 x i8] c"after-insert-file-set-coding\00", align 1
@.str.287 = private unnamed_addr constant [13 x i8] c"after-string\00", align 1
@.str.288 = private unnamed_addr constant [11 x i8] c"all-events\00", align 1
@.str.289 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.290 = private unnamed_addr constant [4 x i8] c"alt\00", align 1
@.str.291 = private unnamed_addr constant [10 x i8] c"&optional\00", align 1
@.str.292 = private unnamed_addr constant [6 x i8] c"&rest\00", align 1
@.str.293 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@.str.294 = private unnamed_addr constant [6 x i8] c"apply\00", align 1
@.str.295 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@.str.296 = private unnamed_addr constant [18 x i8] c"args-out-of-range\00", align 1
@.str.297 = private unnamed_addr constant [12 x i8] c"arith-error\00", align 1
@.str.298 = private unnamed_addr constant [7 x i8] c"arrayp\00", align 1
@.str.299 = private unnamed_addr constant [6 x i8] c"arrow\00", align 1
@.str.300 = private unnamed_addr constant [6 x i8] c"ascii\00", align 1
@.str.301 = private unnamed_addr constant [8 x i8] c"ascii-0\00", align 1
@.str.302 = private unnamed_addr constant [16 x i8] c"ascii-character\00", align 1
@.str.303 = private unnamed_addr constant [7 x i8] c"attrib\00", align 1
@.str.304 = private unnamed_addr constant [14 x i8] c"auto-composed\00", align 1
@.str.305 = private unnamed_addr constant [16 x i8] c"auto-fill-chars\00", align 1
@.str.306 = private unnamed_addr constant [18 x i8] c"auto-hscroll-mode\00", align 1
@.str.307 = private unnamed_addr constant [11 x i8] c"auto-lower\00", align 1
@.str.308 = private unnamed_addr constant [11 x i8] c"auto-raise\00", align 1
@.str.309 = private unnamed_addr constant [17 x i8] c"auto-save-coding\00", align 1
@.str.310 = private unnamed_addr constant [9 x i8] c"autoload\00", align 1
@.str.311 = private unnamed_addr constant [13 x i8] c"Automatic GC\00", align 1
@.str.312 = private unnamed_addr constant [17 x i8] c"background-color\00", align 1
@.str.313 = private unnamed_addr constant [16 x i8] c"background-mode\00", align 1
@.str.314 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.315 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.316 = private unnamed_addr constant [24 x i8] c"before-change-functions\00", align 1
@.str.317 = private unnamed_addr constant [14 x i8] c"before-handle\00", align 1
@.str.318 = private unnamed_addr constant [14 x i8] c"before-string\00", align 1
@.str.319 = private unnamed_addr constant [20 x i8] c"beginning-of-buffer\00", align 1
@.str.320 = private unnamed_addr constant [13 x i8] c"below-handle\00", align 1
@.str.321 = private unnamed_addr constant [4 x i8] c"big\00", align 1
@.str.322 = private unnamed_addr constant [5 x i8] c"big5\00", align 1
@.str.323 = private unnamed_addr constant [14 x i8] c"bitmap-spec-p\00", align 1
@.str.324 = private unnamed_addr constant [5 x i8] c"bold\00", align 1
@.str.325 = private unnamed_addr constant [12 x i8] c"bool-vector\00", align 1
@.str.326 = private unnamed_addr constant [14 x i8] c"bool-vector-p\00", align 1
@.str.327 = private unnamed_addr constant [7 x i8] c"border\00", align 1
@.str.328 = private unnamed_addr constant [13 x i8] c"border-color\00", align 1
@.str.329 = private unnamed_addr constant [13 x i8] c"border-width\00", align 1
@.str.330 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@.str.331 = private unnamed_addr constant [11 x i8] c"both-horiz\00", align 1
@.str.332 = private unnamed_addr constant [7 x i8] c"bottom\00", align 1
@.str.333 = private unnamed_addr constant [15 x i8] c"bottom-divider\00", align 1
@.str.334 = private unnamed_addr constant [21 x i8] c"bottom-divider-width\00", align 1
@.str.335 = private unnamed_addr constant [14 x i8] c"bottom-margin\00", align 1
@.str.336 = private unnamed_addr constant [9 x i8] c"boundary\00", align 1
@.str.337 = private unnamed_addr constant [4 x i8] c"box\00", align 1
@.str.338 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.339 = private unnamed_addr constant [32 x i8] c"buffer-access-fontify-functions\00", align 1
@.str.340 = private unnamed_addr constant [26 x i8] c"buffer-file-coding-system\00", align 1
@.str.341 = private unnamed_addr constant [12 x i8] c"buffer-list\00", align 1
@.str.342 = private unnamed_addr constant [24 x i8] c"buffer-list-update-hook\00", align 1
@.str.343 = private unnamed_addr constant [20 x i8] c"buffer-name-history\00", align 1
@.str.344 = private unnamed_addr constant [19 x i8] c"buffer-or-string-p\00", align 1
@.str.345 = private unnamed_addr constant [16 x i8] c"buffer-position\00", align 1
@.str.346 = private unnamed_addr constant [17 x i8] c"buffer-predicate\00", align 1
@.str.347 = private unnamed_addr constant [17 x i8] c"buffer-read-only\00", align 1
@.str.348 = private unnamed_addr constant [8 x i8] c"bufferp\00", align 1
@.str.349 = private unnamed_addr constant [8 x i8] c"buffers\00", align 1
@.str.350 = private unnamed_addr constant [19 x i8] c"buried-buffer-list\00", align 1
@.str.351 = private unnamed_addr constant [16 x i8] c"byte-code-meter\00", align 1
@.str.352 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.353 = private unnamed_addr constant [13 x i8] c"call-process\00", align 1
@.str.354 = private unnamed_addr constant [20 x i8] c"call-process-region\00", align 1
@.str.355 = private unnamed_addr constant [13 x i8] c"cancel-timer\00", align 1
@.str.356 = private unnamed_addr constant [18 x i8] c"car-less-than-car\00", align 1
@.str.357 = private unnamed_addr constant [17 x i8] c"case-fold-search\00", align 1
@.str.358 = private unnamed_addr constant [11 x i8] c"case-table\00", align 1
@.str.359 = private unnamed_addr constant [13 x i8] c"case-table-p\00", align 1
@.str.360 = private unnamed_addr constant [9 x i8] c"category\00", align 1
@.str.361 = private unnamed_addr constant [15 x i8] c"category-table\00", align 1
@.str.362 = private unnamed_addr constant [17 x i8] c"category-table-p\00", align 1
@.str.363 = private unnamed_addr constant [10 x i8] c"categoryp\00", align 1
@.str.364 = private unnamed_addr constant [13 x i8] c"categorysetp\00", align 1
@.str.365 = private unnamed_addr constant [4 x i8] c"ccl\00", align 1
@.str.366 = private unnamed_addr constant [16 x i8] c"ccl-program-idx\00", align 1
@.str.367 = private unnamed_addr constant [5 x i8] c"cclp\00", align 1
@.str.368 = private unnamed_addr constant [4 x i8] c"cdr\00", align 1
@.str.369 = private unnamed_addr constant [8 x i8] c"ceiling\00", align 1
@.str.370 = private unnamed_addr constant [7 x i8] c"center\00", align 1
@.str.371 = private unnamed_addr constant [18 x i8] c"change-frame-size\00", align 1
@.str.372 = private unnamed_addr constant [23 x i8] c"change-major-mode-hook\00", align 1
@.str.373 = private unnamed_addr constant [25 x i8] c"char-code-property-table\00", align 1
@.str.374 = private unnamed_addr constant [17 x i8] c"char-or-string-p\00", align 1
@.str.375 = private unnamed_addr constant [18 x i8] c"char-script-table\00", align 1
@.str.376 = private unnamed_addr constant [11 x i8] c"char-table\00", align 1
@.str.377 = private unnamed_addr constant [23 x i8] c"char-table-extra-slots\00", align 1
@.str.378 = private unnamed_addr constant [13 x i8] c"char-table-p\00", align 1
@.str.379 = private unnamed_addr constant [11 x i8] c"characterp\00", align 1
@.str.380 = private unnamed_addr constant [8 x i8] c"charset\00", align 1
@.str.381 = private unnamed_addr constant [9 x i8] c"charsetp\00", align 1
@.str.382 = private unnamed_addr constant [7 x i8] c"choice\00", align 1
@.str.383 = private unnamed_addr constant [7 x i8] c"circle\00", align 1
@.str.384 = private unnamed_addr constant [14 x i8] c"circular-list\00", align 1
@.str.385 = private unnamed_addr constant [9 x i8] c"clone-of\00", align 1
@.str.386 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.387 = private unnamed_addr constant [14 x i8] c"close-nowrite\00", align 1
@.str.388 = private unnamed_addr constant [12 x i8] c"close-write\00", align 1
@.str.389 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@.str.390 = private unnamed_addr constant [8 x i8] c"closure\00", align 1
@.str.391 = private unnamed_addr constant [8 x i8] c"cmajflt\00", align 1
@.str.392 = private unnamed_addr constant [8 x i8] c"cminflt\00", align 1
@.str.393 = private unnamed_addr constant [20 x i8] c"code-conversion-map\00", align 1
@.str.394 = private unnamed_addr constant [23 x i8] c"code-conversion-map-id\00", align 1
@.str.395 = private unnamed_addr constant [8 x i8] c"codeset\00", align 1
@.str.396 = private unnamed_addr constant [26 x i8] c"coding-system-define-form\00", align 1
@.str.397 = private unnamed_addr constant [20 x i8] c"coding-system-error\00", align 1
@.str.398 = private unnamed_addr constant [22 x i8] c"coding-system-history\00", align 1
@.str.399 = private unnamed_addr constant [16 x i8] c"coding-system-p\00", align 1
@.str.400 = private unnamed_addr constant [5 x i8] c"comm\00", align 1
@.str.401 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.402 = private unnamed_addr constant [3 x i8] c",@\00", align 1
@.str.403 = private unnamed_addr constant [3 x i8] c",.\00", align 1
@.str.404 = private unnamed_addr constant [16 x i8] c"command-execute\00", align 1
@.str.405 = private unnamed_addr constant [9 x i8] c"commandp\00", align 1
@.str.406 = private unnamed_addr constant [27 x i8] c"comment-end-can-be-escaped\00", align 1
@.str.407 = private unnamed_addr constant [18 x i8] c"compiled-function\00", align 1
@.str.408 = private unnamed_addr constant [23 x i8] c"completion-ignore-case\00", align 1
@.str.409 = private unnamed_addr constant [12 x i8] c"composition\00", align 1
@.str.410 = private unnamed_addr constant [14 x i8] c"compound-text\00", align 1
@.str.411 = private unnamed_addr constant [21 x i8] c"config-changed-event\00", align 1
@.str.412 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.413 = private unnamed_addr constant [5 x i8] c"cons\00", align 1
@.str.414 = private unnamed_addr constant [7 x i8] c"conses\00", align 1
@.str.415 = private unnamed_addr constant [6 x i8] c"consp\00", align 1
@.str.416 = private unnamed_addr constant [13 x i8] c"continuation\00", align 1
@.str.417 = private unnamed_addr constant [15 x i8] c"copy-directory\00", align 1
@.str.418 = private unnamed_addr constant [10 x i8] c"copy-file\00", align 1
@.str.419 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.420 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.421 = private unnamed_addr constant [7 x i8] c"cstime\00", align 1
@.str.422 = private unnamed_addr constant [6 x i8] c"ctime\00", align 1
@.str.423 = private unnamed_addr constant [21 x i8] c"current-input-method\00", align 1
@.str.424 = private unnamed_addr constant [7 x i8] c"cursor\00", align 1
@.str.425 = private unnamed_addr constant [13 x i8] c"cursor-color\00", align 1
@.str.426 = private unnamed_addr constant [20 x i8] c"cursor-in-echo-area\00", align 1
@.str.427 = private unnamed_addr constant [12 x i8] c"cursor-type\00", align 1
@.str.428 = private unnamed_addr constant [18 x i8] c"custom-variable-p\00", align 1
@.str.429 = private unnamed_addr constant [7 x i8] c"cutime\00", align 1
@.str.430 = private unnamed_addr constant [28 x i8] c"cyclic-function-indirection\00", align 1
@.str.431 = private unnamed_addr constant [28 x i8] c"cyclic-variable-indirection\00", align 1
@.str.432 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.433 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.434 = private unnamed_addr constant [9 x i8] c"datagram\00", align 1
@.str.435 = private unnamed_addr constant [5 x i8] c"days\00", align 1
@.str.436 = private unnamed_addr constant [11 x i8] c"dbus-event\00", align 1
@.str.437 = private unnamed_addr constant [16 x i8] c"deactivate-mark\00", align 1
@.str.438 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.439 = private unnamed_addr constant [19 x i8] c"debug-on-next-call\00", align 1
@.str.440 = private unnamed_addr constant [22 x i8] c"decomposed-characters\00", align 1
@.str.441 = private unnamed_addr constant [23 x i8] c"defalias-fset-function\00", align 1
@.str.442 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.443 = private unnamed_addr constant [18 x i8] c"default-directory\00", align 1
@.str.444 = private unnamed_addr constant [25 x i8] c"deferred-action-function\00", align 1
@.str.445 = private unnamed_addr constant [6 x i8] c"defun\00", align 1
@.str.446 = private unnamed_addr constant [6 x i8] c"delay\00", align 1
@.str.447 = private unnamed_addr constant [22 x i8] c"delayed-warnings-hook\00", align 1
@.str.448 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.449 = private unnamed_addr constant [26 x i8] c"delete-by-moving-to-trash\00", align 1
@.str.450 = private unnamed_addr constant [17 x i8] c"delete-directory\00", align 1
@.str.451 = private unnamed_addr constant [12 x i8] c"delete-file\00", align 1
@.str.452 = private unnamed_addr constant [13 x i8] c"delete-frame\00", align 1
@.str.453 = private unnamed_addr constant [23 x i8] c"delete-frame-functions\00", align 1
@.str.454 = private unnamed_addr constant [12 x i8] c"delete-self\00", align 1
@.str.455 = private unnamed_addr constant [26 x i8] c"delete-terminal-functions\00", align 1
@.str.456 = private unnamed_addr constant [14 x i8] c"delete-window\00", align 1
@.str.457 = private unnamed_addr constant [7 x i8] c"dir-ok\00", align 1
@.str.458 = private unnamed_addr constant [20 x i8] c"directory-file-name\00", align 1
@.str.459 = private unnamed_addr constant [16 x i8] c"directory-files\00", align 1
@.str.460 = private unnamed_addr constant [31 x i8] c"directory-files-and-attributes\00", align 1
@.str.461 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.462 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@.str.463 = private unnamed_addr constant [15 x i8] c"display-buffer\00", align 1
@.str.464 = private unnamed_addr constant [14 x i8] c"display-table\00", align 1
@.str.465 = private unnamed_addr constant [13 x i8] c"display-type\00", align 1
@.str.466 = private unnamed_addr constant [25 x i8] c"do-after-load-evaluation\00", align 1
@.str.467 = private unnamed_addr constant [13 x i8] c"domain-error\00", align 1
@.str.468 = private unnamed_addr constant [12 x i8] c"dont-follow\00", align 1
@.str.469 = private unnamed_addr constant [4 x i8] c"dos\00", align 1
@.str.470 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@.str.471 = private unnamed_addr constant [12 x i8] c"drag-n-drop\00", align 1
@.str.472 = private unnamed_addr constant [9 x i8] c"dragging\00", align 1
@.str.473 = private unnamed_addr constant [21 x i8] c"echo-area-clear-hook\00", align 1
@.str.474 = private unnamed_addr constant [16 x i8] c"echo-keystrokes\00", align 1
@.str.475 = private unnamed_addr constant [15 x i8] c"edge-detection\00", align 1
@.str.476 = private unnamed_addr constant [5 x i8] c"egid\00", align 1
@.str.477 = private unnamed_addr constant [10 x i8] c"eight-bit\00", align 1
@.str.478 = private unnamed_addr constant [6 x i8] c"emacs\00", align 1
@.str.479 = private unnamed_addr constant [11 x i8] c"emacs-mule\00", align 1
@.str.480 = private unnamed_addr constant [7 x i8] c"emboss\00", align 1
@.str.481 = private unnamed_addr constant [10 x i8] c"empty-box\00", align 1
@.str.482 = private unnamed_addr constant [11 x i8] c"empty-line\00", align 1
@.str.483 = private unnamed_addr constant [29 x i8] c"enable-recursive-minibuffers\00", align 1
@.str.484 = private unnamed_addr constant [14 x i8] c"end-of-buffer\00", align 1
@.str.485 = private unnamed_addr constant [12 x i8] c"end-of-file\00", align 1
@.str.486 = private unnamed_addr constant [11 x i8] c"end-scroll\00", align 1
@.str.487 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@.str.488 = private unnamed_addr constant [4 x i8] c"eql\00", align 1
@.str.489 = private unnamed_addr constant [6 x i8] c"equal\00", align 1
@.str.490 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.491 = private unnamed_addr constant [17 x i8] c"error-conditions\00", align 1
@.str.492 = private unnamed_addr constant [14 x i8] c"error-message\00", align 1
@.str.493 = private unnamed_addr constant [13 x i8] c"escape-glyph\00", align 1
@.str.494 = private unnamed_addr constant [6 x i8] c"etime\00", align 1
@.str.495 = private unnamed_addr constant [5 x i8] c"euid\00", align 1
@.str.496 = private unnamed_addr constant [5 x i8] c"eval\00", align 1
@.str.497 = private unnamed_addr constant [10 x i8] c"evaporate\00", align 1
@.str.498 = private unnamed_addr constant [5 x i8] c"even\00", align 1
@.str.499 = private unnamed_addr constant [11 x i8] c"event-kind\00", align 1
@.str.500 = private unnamed_addr constant [26 x i8] c"event-symbol-element-mask\00", align 1
@.str.501 = private unnamed_addr constant [22 x i8] c"event-symbol-elements\00", align 1
@.str.502 = private unnamed_addr constant [5 x i8] c"excl\00", align 1
@.str.503 = private unnamed_addr constant [12 x i8] c"excl-unlink\00", align 1
@.str.504 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.505 = private unnamed_addr constant [14 x i8] c"expand-abbrev\00", align 1
@.str.506 = private unnamed_addr constant [17 x i8] c"expand-file-name\00", align 1
@.str.507 = private unnamed_addr constant [9 x i8] c"explicit\00", align 1
@.str.508 = private unnamed_addr constant [14 x i8] c"explicit-name\00", align 1
@.str.509 = private unnamed_addr constant [15 x i8] c"extension-data\00", align 1
@.str.510 = private unnamed_addr constant [21 x i8] c"external-border-size\00", align 1
@.str.511 = private unnamed_addr constant [26 x i8] c"external-debugging-output\00", align 1
@.str.512 = private unnamed_addr constant [11 x i8] c"extra-bold\00", align 1
@.str.513 = private unnamed_addr constant [12 x i8] c"extra-light\00", align 1
@.str.514 = private unnamed_addr constant [5 x i8] c"face\00", align 1
@.str.515 = private unnamed_addr constant [11 x i8] c"face-alias\00", align 1
@.str.516 = private unnamed_addr constant [16 x i8] c"face-no-inherit\00", align 1
@.str.517 = private unnamed_addr constant [29 x i8] c"face-set-after-frame-default\00", align 1
@.str.518 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.519 = private unnamed_addr constant [8 x i8] c"fboundp\00", align 1
@.str.520 = private unnamed_addr constant [6 x i8] c"field\00", align 1
@.str.521 = private unnamed_addr constant [28 x i8] c"file-accessible-directory-p\00", align 1
@.str.522 = private unnamed_addr constant [9 x i8] c"file-acl\00", align 1
@.str.523 = private unnamed_addr constant [20 x i8] c"file-already-exists\00", align 1
@.str.524 = private unnamed_addr constant [16 x i8] c"file-attributes\00", align 1
@.str.525 = private unnamed_addr constant [22 x i8] c"file-attributes-lessp\00", align 1
@.str.526 = private unnamed_addr constant [16 x i8] c"file-date-error\00", align 1
@.str.527 = private unnamed_addr constant [17 x i8] c"file-directory-p\00", align 1
@.str.528 = private unnamed_addr constant [11 x i8] c"file-error\00", align 1
@.str.529 = private unnamed_addr constant [18 x i8] c"file-executable-p\00", align 1
@.str.530 = private unnamed_addr constant [14 x i8] c"file-exists-p\00", align 1
@.str.531 = private unnamed_addr constant [11 x i8] c"file-modes\00", align 1
@.str.532 = private unnamed_addr constant [26 x i8] c"file-name-all-completions\00", align 1
@.str.533 = private unnamed_addr constant [23 x i8] c"file-name-as-directory\00", align 1
@.str.534 = private unnamed_addr constant [21 x i8] c"file-name-completion\00", align 1
@.str.535 = private unnamed_addr constant [20 x i8] c"file-name-directory\00", align 1
@.str.536 = private unnamed_addr constant [24 x i8] c"file-name-handler-alist\00", align 1
@.str.537 = private unnamed_addr constant [18 x i8] c"file-name-history\00", align 1
@.str.538 = private unnamed_addr constant [23 x i8] c"file-name-nondirectory\00", align 1
@.str.539 = private unnamed_addr constant [23 x i8] c"file-newer-than-file-p\00", align 1
@.str.540 = private unnamed_addr constant [12 x i8] c"file-notify\00", align 1
@.str.541 = private unnamed_addr constant [18 x i8] c"file-notify-error\00", align 1
@.str.542 = private unnamed_addr constant [16 x i8] c"file-readable-p\00", align 1
@.str.543 = private unnamed_addr constant [15 x i8] c"file-regular-p\00", align 1
@.str.544 = private unnamed_addr constant [21 x i8] c"file-selinux-context\00", align 1
@.str.545 = private unnamed_addr constant [15 x i8] c"file-symlink-p\00", align 1
@.str.546 = private unnamed_addr constant [14 x i8] c"file-truename\00", align 1
@.str.547 = private unnamed_addr constant [16 x i8] c"file-writable-p\00", align 1
@.str.548 = private unnamed_addr constant [10 x i8] c"finalizer\00", align 1
@.str.549 = private unnamed_addr constant [18 x i8] c"first-change-hook\00", align 1
@.str.550 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.551 = private unnamed_addr constant [7 x i8] c"floatp\00", align 1
@.str.552 = private unnamed_addr constant [7 x i8] c"floats\00", align 1
@.str.553 = private unnamed_addr constant [6 x i8] c"floor\00", align 1
@.str.554 = private unnamed_addr constant [9 x i8] c"focus-in\00", align 1
@.str.555 = private unnamed_addr constant [10 x i8] c"focus-out\00", align 1
@.str.556 = private unnamed_addr constant [5 x i8] c"font\00", align 1
@.str.557 = private unnamed_addr constant [13 x i8] c"font-backend\00", align 1
@.str.558 = private unnamed_addr constant [12 x i8] c"font-entity\00", align 1
@.str.559 = private unnamed_addr constant [10 x i8] c"font-name\00", align 1
@.str.560 = private unnamed_addr constant [12 x i8] c"font-object\00", align 1
@.str.561 = private unnamed_addr constant [15 x i8] c"font-parameter\00", align 1
@.str.562 = private unnamed_addr constant [12 x i8] c"font-render\00", align 1
@.str.563 = private unnamed_addr constant [10 x i8] c"font-spec\00", align 1
@.str.564 = private unnamed_addr constant [24 x i8] c"fontification-functions\00", align 1
@.str.565 = private unnamed_addr constant [10 x i8] c"fontified\00", align 1
@.str.566 = private unnamed_addr constant [8 x i8] c"fontset\00", align 1
@.str.567 = private unnamed_addr constant [13 x i8] c"fontset-info\00", align 1
@.str.568 = private unnamed_addr constant [17 x i8] c"foreground-color\00", align 1
@.str.569 = private unnamed_addr constant [18 x i8] c"foreign-selection\00", align 1
@.str.570 = private unnamed_addr constant [25 x i8] c"format-annotate-function\00", align 1
@.str.571 = private unnamed_addr constant [14 x i8] c"format-decode\00", align 1
@.str.572 = private unnamed_addr constant [9 x i8] c"fraction\00", align 1
@.str.573 = private unnamed_addr constant [6 x i8] c"frame\00", align 1
@.str.574 = private unnamed_addr constant [21 x i8] c"frame-inhibit-resize\00", align 1
@.str.575 = private unnamed_addr constant [13 x i8] c"frame-live-p\00", align 1
@.str.576 = private unnamed_addr constant [26 x i8] c"frame-set-background-mode\00", align 1
@.str.577 = private unnamed_addr constant [23 x i8] c"frame-windows-min-size\00", align 1
@.str.578 = private unnamed_addr constant [7 x i8] c"framep\00", align 1
@.str.579 = private unnamed_addr constant [7 x i8] c"frames\00", align 1
@.str.580 = private unnamed_addr constant [21 x i8] c"free-frame-menubar-1\00", align 1
@.str.581 = private unnamed_addr constant [21 x i8] c"free-frame-menubar-2\00", align 1
@.str.582 = private unnamed_addr constant [20 x i8] c"free-frame-tool-bar\00", align 1
@.str.583 = private unnamed_addr constant [9 x i8] c"freetype\00", align 1
@.str.584 = private unnamed_addr constant [7 x i8] c"fringe\00", align 1
@.str.585 = private unnamed_addr constant [13 x i8] c"front-sticky\00", align 1
@.str.586 = private unnamed_addr constant [4 x i8] c"ftx\00", align 1
@.str.587 = private unnamed_addr constant [9 x i8] c"fullboth\00", align 1
@.str.588 = private unnamed_addr constant [11 x i8] c"fullheight\00", align 1
@.str.589 = private unnamed_addr constant [11 x i8] c"fullscreen\00", align 1
@.str.590 = private unnamed_addr constant [10 x i8] c"fullwidth\00", align 1
@.str.591 = private unnamed_addr constant [8 x i8] c"funcall\00", align 1
@.str.592 = private unnamed_addr constant [22 x i8] c"funcall-interactively\00", align 1
@.str.593 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.594 = private unnamed_addr constant [23 x i8] c"function-documentation\00", align 1
@.str.595 = private unnamed_addr constant [13 x i8] c"function-key\00", align 1
@.str.596 = private unnamed_addr constant [17 x i8] c"fundamental-mode\00", align 1
@.str.597 = private unnamed_addr constant [18 x i8] c"gc-cons-threshold\00", align 1
@.str.598 = private unnamed_addr constant [11 x i8] c"gdk-pixbuf\00", align 1
@.str.599 = private unnamed_addr constant [9 x i8] c"geometry\00", align 1
@.str.600 = private unnamed_addr constant [23 x i8] c"get-buffer-window-list\00", align 1
@.str.601 = private unnamed_addr constant [25 x i8] c"get-emacs-mule-file-char\00", align 1
@.str.602 = private unnamed_addr constant [16 x i8] c"get-file-buffer\00", align 1
@.str.603 = private unnamed_addr constant [14 x i8] c"get-file-char\00", align 1
@.str.604 = private unnamed_addr constant [15 x i8] c"get-mru-window\00", align 1
@.str.605 = private unnamed_addr constant [4 x i8] c"gif\00", align 1
@.str.606 = private unnamed_addr constant [5 x i8] c"glib\00", align 1
@.str.607 = private unnamed_addr constant [15 x i8] c"glyphless-char\00", align 1
@.str.608 = private unnamed_addr constant [23 x i8] c"glyphless-char-display\00", align 1
@.str.609 = private unnamed_addr constant [12 x i8] c"gnutls-anon\00", align 1
@.str.610 = private unnamed_addr constant [12 x i8] c"gnutls-code\00", align 1
@.str.611 = private unnamed_addr constant [15 x i8] c"gnutls-e-again\00", align 1
@.str.612 = private unnamed_addr constant [21 x i8] c"gnutls-e-interrupted\00", align 1
@.str.613 = private unnamed_addr constant [25 x i8] c"gnutls-e-invalid-session\00", align 1
@.str.614 = private unnamed_addr constant [33 x i8] c"gnutls-e-not-ready-for-handshake\00", align 1
@.str.615 = private unnamed_addr constant [15 x i8] c"gnutls-x509pki\00", align 1
@.str.616 = private unnamed_addr constant [8 x i8] c"gobject\00", align 1
@.str.617 = private unnamed_addr constant [6 x i8] c"grave\00", align 1
@.str.618 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.619 = private unnamed_addr constant [10 x i8] c"grow-only\00", align 1
@.str.620 = private unnamed_addr constant [18 x i8] c"gui-set-selection\00", align 1
@.str.621 = private unnamed_addr constant [5 x i8] c"hand\00", align 1
@.str.622 = private unnamed_addr constant [7 x i8] c"handle\00", align 1
@.str.623 = private unnamed_addr constant [21 x i8] c"handle-select-window\00", align 1
@.str.624 = private unnamed_addr constant [23 x i8] c"handle-shift-selection\00", align 1
@.str.625 = private unnamed_addr constant [20 x i8] c"handle-switch-frame\00", align 1
@.str.626 = private unnamed_addr constant [11 x i8] c"hash-table\00", align 1
@.str.627 = private unnamed_addr constant [13 x i8] c"hash-table-p\00", align 1
@.str.628 = private unnamed_addr constant [16 x i8] c"hash-table-test\00", align 1
@.str.629 = private unnamed_addr constant [5 x i8] c"hbar\00", align 1
@.str.630 = private unnamed_addr constant [12 x i8] c"header-line\00", align 1
@.str.631 = private unnamed_addr constant [5 x i8] c"heap\00", align 1
@.str.632 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.633 = private unnamed_addr constant [10 x i8] c"help-echo\00", align 1
@.str.634 = private unnamed_addr constant [15 x i8] c"help-form-show\00", align 1
@.str.635 = private unnamed_addr constant [10 x i8] c"heuristic\00", align 1
@.str.636 = private unnamed_addr constant [9 x i8] c"hex-code\00", align 1
@.str.637 = private unnamed_addr constant [15 x i8] c"history-length\00", align 1
@.str.638 = private unnamed_addr constant [7 x i8] c"hollow\00", align 1
@.str.639 = private unnamed_addr constant [13 x i8] c"hollow-small\00", align 1
@.str.640 = private unnamed_addr constant [18 x i8] c"horizontal-handle\00", align 1
@.str.641 = private unnamed_addr constant [22 x i8] c"horizontal-scroll-bar\00", align 1
@.str.642 = private unnamed_addr constant [23 x i8] c"horizontal-scroll-bars\00", align 1
@.str.643 = private unnamed_addr constant [3 x i8] c"hw\00", align 1
@.str.644 = private unnamed_addr constant [6 x i8] c"hyper\00", align 1
@.str.645 = private unnamed_addr constant [5 x i8] c"icon\00", align 1
@.str.646 = private unnamed_addr constant [10 x i8] c"icon-left\00", align 1
@.str.647 = private unnamed_addr constant [10 x i8] c"icon-name\00", align 1
@.str.648 = private unnamed_addr constant [9 x i8] c"icon-top\00", align 1
@.str.649 = private unnamed_addr constant [10 x i8] c"icon-type\00", align 1
@.str.650 = private unnamed_addr constant [14 x i8] c"iconify-frame\00", align 1
@.str.651 = private unnamed_addr constant [9 x i8] c"identity\00", align 1
@.str.652 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.653 = private unnamed_addr constant [8 x i8] c"ignored\00", align 1
@.str.654 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.655 = private unnamed_addr constant [12 x i8] c"imagemagick\00", align 1
@.str.656 = private unnamed_addr constant [17 x i8] c"inhibit-debugger\00", align 1
@.str.657 = private unnamed_addr constant [30 x i8] c"inhibit-eval-during-redisplay\00", align 1
@.str.658 = private unnamed_addr constant [28 x i8] c"inhibit-file-name-operation\00", align 1
@.str.659 = private unnamed_addr constant [28 x i8] c"inhibit-free-realized-faces\00", align 1
@.str.660 = private unnamed_addr constant [23 x i8] c"inhibit-menubar-update\00", align 1
@.str.661 = private unnamed_addr constant [27 x i8] c"inhibit-modification-hooks\00", align 1
@.str.662 = private unnamed_addr constant [27 x i8] c"inhibit-point-motion-hooks\00", align 1
@.str.663 = private unnamed_addr constant [13 x i8] c"inhibit-quit\00", align 1
@.str.664 = private unnamed_addr constant [18 x i8] c"inhibit-read-only\00", align 1
@.str.665 = private unnamed_addr constant [18 x i8] c"inhibit-redisplay\00", align 1
@.str.666 = private unnamed_addr constant [12 x i8] c"inner-edges\00", align 1
@.str.667 = private unnamed_addr constant [32 x i8] c"input-method-exit-on-first-char\00", align 1
@.str.668 = private unnamed_addr constant [27 x i8] c"input-method-use-echo-area\00", align 1
@.str.669 = private unnamed_addr constant [20 x i8] c"insert-behind-hooks\00", align 1
@.str.670 = private unnamed_addr constant [21 x i8] c"insert-file-contents\00", align 1
@.str.671 = private unnamed_addr constant [22 x i8] c"insert-in-front-hooks\00", align 1
@.str.672 = private unnamed_addr constant [20 x i8] c"insufficient-source\00", align 1
@.str.673 = private unnamed_addr constant [11 x i8] c"intangible\00", align 1
@.str.674 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str.675 = private unnamed_addr constant [20 x i8] c"integer-or-marker-p\00", align 1
@.str.676 = private unnamed_addr constant [9 x i8] c"integerp\00", align 1
@.str.677 = private unnamed_addr constant [12 x i8] c"interactive\00", align 1
@.str.678 = private unnamed_addr constant [17 x i8] c"interactive-form\00", align 1
@.str.679 = private unnamed_addr constant [28 x i8] c"internal--syntax-propertize\00", align 1
@.str.680 = private unnamed_addr constant [22 x i8] c"internal-border-width\00", align 1
@.str.681 = private unnamed_addr constant [32 x i8] c"internal-default-process-filter\00", align 1
@.str.682 = private unnamed_addr constant [34 x i8] c"internal-default-process-sentinel\00", align 1
@.str.683 = private unnamed_addr constant [32 x i8] c"internal-echo-keystrokes-prefix\00", align 1
@.str.684 = private unnamed_addr constant [33 x i8] c"internal-interpreter-environment\00", align 1
@.str.685 = private unnamed_addr constant [12 x i8] c"interrupted\00", align 1
@.str.686 = private unnamed_addr constant [10 x i8] c"intervals\00", align 1
@.str.687 = private unnamed_addr constant [17 x i8] c"invalid-function\00", align 1
@.str.688 = private unnamed_addr constant [20 x i8] c"invalid-read-syntax\00", align 1
@.str.689 = private unnamed_addr constant [15 x i8] c"invalid-regexp\00", align 1
@.str.690 = private unnamed_addr constant [15 x i8] c"invalid-source\00", align 1
@.str.691 = private unnamed_addr constant [10 x i8] c"invisible\00", align 1
@.str.692 = private unnamed_addr constant [5 x i8] c"ipv4\00", align 1
@.str.693 = private unnamed_addr constant [5 x i8] c"ipv6\00", align 1
@.str.694 = private unnamed_addr constant [6 x i8] c"isdir\00", align 1
@.str.695 = private unnamed_addr constant [11 x i8] c"iso10646-1\00", align 1
@.str.696 = private unnamed_addr constant [10 x i8] c"iso8859-1\00", align 1
@.str.697 = private unnamed_addr constant [9 x i8] c"iso-2022\00", align 1
@.str.698 = private unnamed_addr constant [11 x i8] c"iso-8859-1\00", align 1
@.str.699 = private unnamed_addr constant [7 x i8] c"italic\00", align 1
@.str.700 = private unnamed_addr constant [3 x i8] c"ja\00", align 1
@.str.701 = private unnamed_addr constant [5 x i8] c"jpeg\00", align 1
@.str.702 = private unnamed_addr constant [27 x i8] c"kbd-macro-termination-hook\00", align 1
@.str.703 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.704 = private unnamed_addr constant [14 x i8] c"key-and-value\00", align 1
@.str.705 = private unnamed_addr constant [13 x i8] c"key-or-value\00", align 1
@.str.706 = private unnamed_addr constant [7 x i8] c"keymap\00", align 1
@.str.707 = private unnamed_addr constant [20 x i8] c"keymap-canonicalize\00", align 1
@.str.708 = private unnamed_addr constant [8 x i8] c"keymapp\00", align 1
@.str.709 = private unnamed_addr constant [17 x i8] c"kill-buffer-hook\00", align 1
@.str.710 = private unnamed_addr constant [28 x i8] c"kill-buffer-query-functions\00", align 1
@.str.711 = private unnamed_addr constant [11 x i8] c"kill-emacs\00", align 1
@.str.712 = private unnamed_addr constant [16 x i8] c"kill-emacs-hook\00", align 1
@.str.713 = private unnamed_addr constant [19 x i8] c"kill-forward-chars\00", align 1
@.str.714 = private unnamed_addr constant [3 x i8] c"ko\00", align 1
@.str.715 = private unnamed_addr constant [7 x i8] c"lambda\00", align 1
@.str.716 = private unnamed_addr constant [10 x i8] c"landscape\00", align 1
@.str.717 = private unnamed_addr constant [16 x i8] c"language-change\00", align 1
@.str.718 = private unnamed_addr constant [8 x i8] c"laplace\00", align 1
@.str.719 = private unnamed_addr constant [20 x i8] c"last-arrow-position\00", align 1
@.str.720 = private unnamed_addr constant [18 x i8] c"last-arrow-string\00", align 1
@.str.721 = private unnamed_addr constant [19 x i8] c"last-nonmenu-event\00", align 1
@.str.722 = private unnamed_addr constant [6 x i8] c"latin\00", align 1
@.str.723 = private unnamed_addr constant [8 x i8] c"latin-1\00", align 1
@.str.724 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.725 = private unnamed_addr constant [12 x i8] c"left-fringe\00", align 1
@.str.726 = private unnamed_addr constant [12 x i8] c"left-margin\00", align 1
@.str.727 = private unnamed_addr constant [14 x i8] c"left-to-right\00", align 1
@.str.728 = private unnamed_addr constant [9 x i8] c"leftmost\00", align 1
@.str.729 = private unnamed_addr constant [4 x i8] c"let\00", align 1
@.str.730 = private unnamed_addr constant [5 x i8] c"let*\00", align 1
@.str.731 = private unnamed_addr constant [15 x i8] c"libgif-version\00", align 1
@.str.732 = private unnamed_addr constant [18 x i8] c"libgnutls-version\00", align 1
@.str.733 = private unnamed_addr constant [16 x i8] c"libjpeg-version\00", align 1
@.str.734 = private unnamed_addr constant [15 x i8] c"libpng-version\00", align 1
@.str.735 = private unnamed_addr constant [6 x i8] c"light\00", align 1
@.str.736 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.737 = private unnamed_addr constant [12 x i8] c"line-height\00", align 1
@.str.738 = private unnamed_addr constant [12 x i8] c"line-prefix\00", align 1
@.str.739 = private unnamed_addr constant [13 x i8] c"line-spacing\00", align 1
@.str.740 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.741 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.742 = private unnamed_addr constant [6 x i8] c"listp\00", align 1
@.str.743 = private unnamed_addr constant [7 x i8] c"little\00", align 1
@.str.744 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.745 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.746 = private unnamed_addr constant [10 x i8] c"local-map\00", align 1
@.str.747 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.748 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@.str.749 = private unnamed_addr constant [6 x i8] c"macro\00", align 1
@.str.750 = private unnamed_addr constant [7 x i8] c"majflt\00", align 1
@.str.751 = private unnamed_addr constant [15 x i8] c"make-directory\00", align 1
@.str.752 = private unnamed_addr constant [24 x i8] c"make-directory-internal\00", align 1
@.str.753 = private unnamed_addr constant [19 x i8] c"make-frame-visible\00", align 1
@.str.754 = private unnamed_addr constant [19 x i8] c"make-symbolic-link\00", align 1
@.str.755 = private unnamed_addr constant [5 x i8] c"many\00", align 1
@.str.756 = private unnamed_addr constant [7 x i8] c"margin\00", align 1
@.str.757 = private unnamed_addr constant [14 x i8] c"mark-inactive\00", align 1
@.str.758 = private unnamed_addr constant [7 x i8] c"marker\00", align 1
@.str.759 = private unnamed_addr constant [8 x i8] c"markerp\00", align 1
@.str.760 = private unnamed_addr constant [9 x i8] c"mask-add\00", align 1
@.str.761 = private unnamed_addr constant [10 x i8] c"maximized\00", align 1
@.str.762 = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@.str.763 = private unnamed_addr constant [5 x i8] c"menu\00", align 1
@.str.764 = private unnamed_addr constant [9 x i8] c"menu-bar\00", align 1
@.str.765 = private unnamed_addr constant [18 x i8] c"menu-bar-external\00", align 1
@.str.766 = private unnamed_addr constant [15 x i8] c"menu-bar-lines\00", align 1
@.str.767 = private unnamed_addr constant [14 x i8] c"menu-bar-size\00", align 1
@.str.768 = private unnamed_addr constant [21 x i8] c"menu-bar-update-hook\00", align 1
@.str.769 = private unnamed_addr constant [12 x i8] c"menu-enable\00", align 1
@.str.770 = private unnamed_addr constant [10 x i8] c"menu-item\00", align 1
@.str.771 = private unnamed_addr constant [5 x i8] c"meta\00", align 1
@.str.772 = private unnamed_addr constant [9 x i8] c"metadata\00", align 1
@.str.773 = private unnamed_addr constant [7 x i8] c"minflt\00", align 1
@.str.774 = private unnamed_addr constant [11 x i8] c"minibuffer\00", align 1
@.str.775 = private unnamed_addr constant [28 x i8] c"minibuffer-completion-table\00", align 1
@.str.776 = private unnamed_addr constant [19 x i8] c"minibuffer-default\00", align 1
@.str.777 = private unnamed_addr constant [21 x i8] c"minibuffer-exit-hook\00", align 1
@.str.778 = private unnamed_addr constant [19 x i8] c"minibuffer-history\00", align 1
@.str.779 = private unnamed_addr constant [18 x i8] c"minibuffer-prompt\00", align 1
@.str.780 = private unnamed_addr constant [22 x i8] c"minibuffer-setup-hook\00", align 1
@.str.781 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.782 = private unnamed_addr constant [6 x i8] c"miscs\00", align 1
@.str.783 = private unnamed_addr constant [8 x i8] c"mm-size\00", align 1
@.str.784 = private unnamed_addr constant [11 x i8] c"mode-class\00", align 1
@.str.785 = private unnamed_addr constant [10 x i8] c"mode-line\00", align 1
@.str.786 = private unnamed_addr constant [28 x i8] c"mode-line-default-help-echo\00", align 1
@.str.787 = private unnamed_addr constant [19 x i8] c"mode-line-inactive\00", align 1
@.str.788 = private unnamed_addr constant [9 x i8] c"modeline\00", align 1
@.str.789 = private unnamed_addr constant [19 x i8] c"modification-hooks\00", align 1
@.str.790 = private unnamed_addr constant [15 x i8] c"modifier-cache\00", align 1
@.str.791 = private unnamed_addr constant [15 x i8] c"modifier-value\00", align 1
@.str.792 = private unnamed_addr constant [7 x i8] c"modify\00", align 1
@.str.793 = private unnamed_addr constant [5 x i8] c"mono\00", align 1
@.str.794 = private unnamed_addr constant [10 x i8] c"monospace\00", align 1
@.str.795 = private unnamed_addr constant [20 x i8] c"monospace-font-name\00", align 1
@.str.796 = private unnamed_addr constant [7 x i8] c"months\00", align 1
@.str.797 = private unnamed_addr constant [6 x i8] c"mouse\00", align 1
@.str.798 = private unnamed_addr constant [12 x i8] c"mouse-click\00", align 1
@.str.799 = private unnamed_addr constant [12 x i8] c"mouse-color\00", align 1
@.str.800 = private unnamed_addr constant [11 x i8] c"mouse-face\00", align 1
@.str.801 = private unnamed_addr constant [25 x i8] c"mouse-fixup-help-message\00", align 1
@.str.802 = private unnamed_addr constant [24 x i8] c"mouse-leave-buffer-hook\00", align 1
@.str.803 = private unnamed_addr constant [15 x i8] c"mouse-movement\00", align 1
@.str.804 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@.str.805 = private unnamed_addr constant [19 x i8] c"move-file-to-trash\00", align 1
@.str.806 = private unnamed_addr constant [10 x i8] c"move-self\00", align 1
@.str.807 = private unnamed_addr constant [11 x i8] c"moved-from\00", align 1
@.str.808 = private unnamed_addr constant [9 x i8] c"moved-to\00", align 1
@.str.809 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.810 = private unnamed_addr constant [13 x i8] c"native-edges\00", align 1
@.str.811 = private unnamed_addr constant [8 x i8] c"natnump\00", align 1
@.str.812 = private unnamed_addr constant [8 x i8] c"network\00", align 1
@.str.813 = private unnamed_addr constant [5 x i8] c"nice\00", align 1
@.str.814 = private unnamed_addr constant [9 x i8] c"no-catch\00", align 1
@.str.815 = private unnamed_addr constant [14 x i8] c"no-conversion\00", align 1
@.str.816 = private unnamed_addr constant [14 x i8] c"nobreak-space\00", align 1
@.str.817 = private unnamed_addr constant [8 x i8] c"noelisp\00", align 1
@.str.818 = private unnamed_addr constant [10 x i8] c"non-ascii\00", align 1
@.str.819 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.820 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.821 = private unnamed_addr constant [3 x i8] c"ns\00", align 1
@.str.822 = private unnamed_addr constant [18 x i8] c"ns-parse-geometry\00", align 1
@.str.823 = private unnamed_addr constant [19 x i8] c"number-or-marker-p\00", align 1
@.str.824 = private unnamed_addr constant [8 x i8] c"numberp\00", align 1
@.str.825 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.826 = private unnamed_addr constant [8 x i8] c"oblique\00", align 1
@.str.827 = private unnamed_addr constant [4 x i8] c"odd\00", align 1
@.str.828 = private unnamed_addr constant [8 x i8] c"oneshot\00", align 1
@.str.829 = private unnamed_addr constant [5 x i8] c"only\00", align 1
@.str.830 = private unnamed_addr constant [8 x i8] c"onlydir\00", align 1
@.str.831 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.832 = private unnamed_addr constant [20 x i8] c"open-network-stream\00", align 1
@.str.833 = private unnamed_addr constant [9 x i8] c"opentype\00", align 1
@.str.834 = private unnamed_addr constant [11 x i8] c"operations\00", align 1
@.str.835 = private unnamed_addr constant [12 x i8] c"orientation\00", align 1
@.str.836 = private unnamed_addr constant [12 x i8] c"outer-edges\00", align 1
@.str.837 = private unnamed_addr constant [15 x i8] c"outer-position\00", align 1
@.str.838 = private unnamed_addr constant [11 x i8] c"outer-size\00", align 1
@.str.839 = private unnamed_addr constant [16 x i8] c"outer-window-id\00", align 1
@.str.840 = private unnamed_addr constant [15 x i8] c"overflow-error\00", align 1
@.str.841 = private unnamed_addr constant [8 x i8] c"overlay\00", align 1
@.str.842 = private unnamed_addr constant [14 x i8] c"overlay-arrow\00", align 1
@.str.843 = private unnamed_addr constant [21 x i8] c"overlay-arrow-bitmap\00", align 1
@.str.844 = private unnamed_addr constant [21 x i8] c"overlay-arrow-string\00", align 1
@.str.845 = private unnamed_addr constant [9 x i8] c"overlayp\00", align 1
@.str.846 = private unnamed_addr constant [21 x i8] c"overriding-local-map\00", align 1
@.str.847 = private unnamed_addr constant [30 x i8] c"overriding-terminal-local-map\00", align 1
@.str.848 = private unnamed_addr constant [15 x i8] c"overwrite-mode\00", align 1
@.str.849 = private unnamed_addr constant [22 x i8] c"overwrite-mode-binary\00", align 1
@.str.850 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.851 = private unnamed_addr constant [6 x i8] c"paper\00", align 1
@.str.852 = private unnamed_addr constant [19 x i8] c"paragraph-separate\00", align 1
@.str.853 = private unnamed_addr constant [16 x i8] c"paragraph-start\00", align 1
@.str.854 = private unnamed_addr constant [10 x i8] c"parent-id\00", align 1
@.str.855 = private unnamed_addr constant [4 x i8] c"pbm\00", align 1
@.str.856 = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@.str.857 = private unnamed_addr constant [5 x i8] c"pcpu\00", align 1
@.str.858 = private unnamed_addr constant [4 x i8] c"pdf\00", align 1
@.str.859 = private unnamed_addr constant [16 x i8] c"permanent-local\00", align 1
@.str.860 = private unnamed_addr constant [21 x i8] c"permanent-local-hook\00", align 1
@.str.861 = private unnamed_addr constant [5 x i8] c"pgrp\00", align 1
@.str.862 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str.863 = private unnamed_addr constant [21 x i8] c"play-sound-functions\00", align 1
@.str.864 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.865 = private unnamed_addr constant [5 x i8] c"pmem\00", align 1
@.str.866 = private unnamed_addr constant [4 x i8] c"png\00", align 1
@.str.867 = private unnamed_addr constant [14 x i8] c"point-entered\00", align 1
@.str.868 = private unnamed_addr constant [11 x i8] c"point-left\00", align 1
@.str.869 = private unnamed_addr constant [8 x i8] c"pointer\00", align 1
@.str.870 = private unnamed_addr constant [15 x i8] c"polling-period\00", align 1
@.str.871 = private unnamed_addr constant [5 x i8] c"poly\00", align 1
@.str.872 = private unnamed_addr constant [9 x i8] c"portrait\00", align 1
@.str.873 = private unnamed_addr constant [9 x i8] c"position\00", align 1
@.str.874 = private unnamed_addr constant [18 x i8] c"post-command-hook\00", align 1
@.str.875 = private unnamed_addr constant [13 x i8] c"post-gc-hook\00", align 1
@.str.876 = private unnamed_addr constant [22 x i8] c"post-self-insert-hook\00", align 1
@.str.877 = private unnamed_addr constant [11 x i8] c"postscript\00", align 1
@.str.878 = private unnamed_addr constant [5 x i8] c"ppid\00", align 1
@.str.879 = private unnamed_addr constant [17 x i8] c"pre-command-hook\00", align 1
@.str.880 = private unnamed_addr constant [15 x i8] c"pressed-button\00", align 1
@.str.881 = private unnamed_addr constant [4 x i8] c"pri\00", align 1
@.str.882 = private unnamed_addr constant [23 x i8] c"print-escape-multibyte\00", align 1
@.str.883 = private unnamed_addr constant [22 x i8] c"print-escape-newlines\00", align 1
@.str.884 = private unnamed_addr constant [22 x i8] c"print-escape-nonascii\00", align 1
@.str.885 = private unnamed_addr constant [9 x i8] c"priority\00", align 1
@.str.886 = private unnamed_addr constant [8 x i8] c"process\00", align 1
@.str.887 = private unnamed_addr constant [9 x i8] c"processp\00", align 1
@.str.888 = private unnamed_addr constant [25 x i8] c"profiler-backtrace-equal\00", align 1
@.str.889 = private unnamed_addr constant [6 x i8] c"progn\00", align 1
@.str.890 = private unnamed_addr constant [16 x i8] c"protected-field\00", align 1
@.str.891 = private unnamed_addr constant [8 x i8] c"provide\00", align 1
@.str.892 = private unnamed_addr constant [4 x i8] c"pty\00", align 1
@.str.893 = private unnamed_addr constant [11 x i8] c"q-overflow\00", align 1
@.str.894 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.895 = private unnamed_addr constant [6 x i8] c"quote\00", align 1
@.str.896 = private unnamed_addr constant [6 x i8] c"raise\00", align 1
@.str.897 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@.str.898 = private unnamed_addr constant [12 x i8] c"range-error\00", align 1
@.str.899 = private unnamed_addr constant [6 x i8] c"ratio\00", align 1
@.str.900 = private unnamed_addr constant [9 x i8] c"raw-text\00", align 1
@.str.901 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.902 = private unnamed_addr constant [10 x i8] c"read-char\00", align 1
@.str.903 = private unnamed_addr constant [12 x i8] c"read-number\00", align 1
@.str.904 = private unnamed_addr constant [10 x i8] c"read-only\00", align 1
@.str.905 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str.906 = private unnamed_addr constant [15 x i8] c"rear-nonsticky\00", align 1
@.str.907 = private unnamed_addr constant [24 x i8] c"recompute-lucid-menubar\00", align 1
@.str.908 = private unnamed_addr constant [21 x i8] c"record-window-buffer\00", align 1
@.str.909 = private unnamed_addr constant [5 x i8] c"rect\00", align 1
@.str.910 = private unnamed_addr constant [21 x i8] c"redisplay-dont-pause\00", align 1
@.str.911 = private unnamed_addr constant [32 x i8] c"redisplay-end-trigger-functions\00", align 1
@.str.912 = private unnamed_addr constant [32 x i8] c"redisplay_internal (C function)\00", align 1
@.str.913 = private unnamed_addr constant [24 x i8] c"region-extract-function\00", align 1
@.str.914 = private unnamed_addr constant [12 x i8] c"rehash-size\00", align 1
@.str.915 = private unnamed_addr constant [17 x i8] c"rehash-threshold\00", align 1
@.str.916 = private unnamed_addr constant [16 x i8] c"released-button\00", align 1
@.str.917 = private unnamed_addr constant [6 x i8] c"remap\00", align 1
@.str.918 = private unnamed_addr constant [12 x i8] c"rename-file\00", align 1
@.str.919 = private unnamed_addr constant [26 x i8] c"replace-buffer-in-windows\00", align 1
@.str.920 = private unnamed_addr constant [8 x i8] c"require\00", align 1
@.str.921 = private unnamed_addr constant [18 x i8] c"reverse-landscape\00", align 1
@.str.922 = private unnamed_addr constant [17 x i8] c"reverse-portrait\00", align 1
@.str.923 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.924 = private unnamed_addr constant [14 x i8] c"right-divider\00", align 1
@.str.925 = private unnamed_addr constant [20 x i8] c"right-divider-width\00", align 1
@.str.926 = private unnamed_addr constant [13 x i8] c"right-fringe\00", align 1
@.str.927 = private unnamed_addr constant [13 x i8] c"right-margin\00", align 1
@.str.928 = private unnamed_addr constant [14 x i8] c"right-to-left\00", align 1
@.str.929 = private unnamed_addr constant [10 x i8] c"rightmost\00", align 1
@.str.930 = private unnamed_addr constant [21 x i8] c"risky-local-variable\00", align 1
@.str.931 = private unnamed_addr constant [4 x i8] c"rss\00", align 1
@.str.932 = private unnamed_addr constant [4 x i8] c"run\00", align 1
@.str.933 = private unnamed_addr constant [19 x i8] c"run-hook-with-args\00", align 1
@.str.934 = private unnamed_addr constant [5 x i8] c"safe\00", align 1
@.str.935 = private unnamed_addr constant [5 x i8] c"sans\00", align 1
@.str.936 = private unnamed_addr constant [11 x i8] c"sans serif\00", align 1
@.str.937 = private unnamed_addr constant [11 x i8] c"sans-serif\00", align 1
@.str.938 = private unnamed_addr constant [15 x i8] c"save-excursion\00", align 1
@.str.939 = private unnamed_addr constant [13 x i8] c"save-session\00", align 1
@.str.940 = private unnamed_addr constant [11 x i8] c"scan-error\00", align 1
@.str.941 = private unnamed_addr constant [13 x i8] c"screen-gamma\00", align 1
@.str.942 = private unnamed_addr constant [11 x i8] c"scroll-bar\00", align 1
@.str.943 = private unnamed_addr constant [22 x i8] c"scroll-bar-background\00", align 1
@.str.944 = private unnamed_addr constant [22 x i8] c"scroll-bar-foreground\00", align 1
@.str.945 = private unnamed_addr constant [18 x i8] c"scroll-bar-height\00", align 1
@.str.946 = private unnamed_addr constant [20 x i8] c"scroll-bar-movement\00", align 1
@.str.947 = private unnamed_addr constant [17 x i8] c"scroll-bar-width\00", align 1
@.str.948 = private unnamed_addr constant [15 x i8] c"scroll-command\00", align 1
@.str.949 = private unnamed_addr constant [12 x i8] c"scroll-down\00", align 1
@.str.950 = private unnamed_addr constant [10 x i8] c"scroll-up\00", align 1
@.str.951 = private unnamed_addr constant [14 x i8] c"search-failed\00", align 1
@.str.952 = private unnamed_addr constant [14 x i8] c"select-window\00", align 1
@.str.953 = private unnamed_addr constant [10 x i8] c"semi-bold\00", align 1
@.str.954 = private unnamed_addr constant [11 x i8] c"semi-light\00", align 1
@.str.955 = private unnamed_addr constant [10 x i8] c"seqpacket\00", align 1
@.str.956 = private unnamed_addr constant [10 x i8] c"sequencep\00", align 1
@.str.957 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.958 = private unnamed_addr constant [5 x i8] c"sess\00", align 1
@.str.959 = private unnamed_addr constant [13 x i8] c"set-file-acl\00", align 1
@.str.960 = private unnamed_addr constant [15 x i8] c"set-file-modes\00", align 1
@.str.961 = private unnamed_addr constant [25 x i8] c"set-file-selinux-context\00", align 1
@.str.962 = private unnamed_addr constant [15 x i8] c"set-file-times\00", align 1
@.str.963 = private unnamed_addr constant [15 x i8] c"set-frame-size\00", align 1
@.str.964 = private unnamed_addr constant [25 x i8] c"set-visited-file-modtime\00", align 1
@.str.965 = private unnamed_addr constant [25 x i8] c"set-window-configuration\00", align 1
@.str.966 = private unnamed_addr constant [5 x i8] c"setq\00", align 1
@.str.967 = private unnamed_addr constant [17 x i8] c"setting-constant\00", align 1
@.str.968 = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@.str.969 = private unnamed_addr constant [7 x i8] c"sha224\00", align 1
@.str.970 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@.str.971 = private unnamed_addr constant [7 x i8] c"sha384\00", align 1
@.str.972 = private unnamed_addr constant [7 x i8] c"sha512\00", align 1
@.str.973 = private unnamed_addr constant [10 x i8] c"shift-jis\00", align 1
@.str.974 = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@.str.975 = private unnamed_addr constant [18 x i8] c"singularity-error\00", align 1
@.str.976 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.977 = private unnamed_addr constant [6 x i8] c"slice\00", align 1
@.str.978 = private unnamed_addr constant [6 x i8] c"sound\00", align 1
@.str.979 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.980 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@.str.981 = private unnamed_addr constant [12 x i8] c"space-width\00", align 1
@.str.982 = private unnamed_addr constant [16 x i8] c"standard-output\00", align 1
@.str.983 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.984 = private unnamed_addr constant [14 x i8] c"start-process\00", align 1
@.str.985 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.986 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@.str.987 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.988 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.989 = private unnamed_addr constant [7 x i8] c"sticky\00", align 1
@.str.990 = private unnamed_addr constant [6 x i8] c"stime\00", align 1
@.str.991 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.992 = private unnamed_addr constant [9 x i8] c"straight\00", align 1
@.str.993 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.994 = private unnamed_addr constant [13 x i8] c"string-bytes\00", align 1
@.str.995 = private unnamed_addr constant [13 x i8] c"string-lessp\00", align 1
@.str.996 = private unnamed_addr constant [8 x i8] c"stringp\00", align 1
@.str.997 = private unnamed_addr constant [8 x i8] c"strings\00", align 1
@.str.998 = private unnamed_addr constant [12 x i8] c"subfeatures\00", align 1
@.str.999 = private unnamed_addr constant [5 x i8] c"subr\00", align 1
@.str.1000 = private unnamed_addr constant [6 x i8] c"subrp\00", align 1
@.str.1001 = private unnamed_addr constant [28 x i8] c"substitute-env-in-file-name\00", align 1
@.str.1002 = private unnamed_addr constant [24 x i8] c"substitute-in-file-name\00", align 1
@.str.1003 = private unnamed_addr constant [6 x i8] c"super\00", align 1
@.str.1004 = private unnamed_addr constant [4 x i8] c"svg\00", align 1
@.str.1005 = private unnamed_addr constant [3 x i8] c"sw\00", align 1
@.str.1006 = private unnamed_addr constant [13 x i8] c"switch-frame\00", align 1
@.str.1007 = private unnamed_addr constant [7 x i8] c"symbol\00", align 1
@.str.1008 = private unnamed_addr constant [8 x i8] c"symbolp\00", align 1
@.str.1009 = private unnamed_addr constant [8 x i8] c"symbols\00", align 1
@.str.1010 = private unnamed_addr constant [13 x i8] c"syntax-table\00", align 1
@.str.1011 = private unnamed_addr constant [15 x i8] c"syntax-table-p\00", align 1
@.str.1012 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.1013 = private unnamed_addr constant [11 x i8] c"target-idx\00", align 1
@.str.1014 = private unnamed_addr constant [11 x i8] c"tb-size-cb\00", align 1
@.str.1015 = private unnamed_addr constant [23 x i8] c"temp-buffer-setup-hook\00", align 1
@.str.1016 = private unnamed_addr constant [22 x i8] c"temp-buffer-show-hook\00", align 1
@.str.1017 = private unnamed_addr constant [9 x i8] c"terminal\00", align 1
@.str.1018 = private unnamed_addr constant [15 x i8] c"terminal-frame\00", align 1
@.str.1019 = private unnamed_addr constant [16 x i8] c"terminal-live-p\00", align 1
@.str.1020 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.1021 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.1022 = private unnamed_addr constant [17 x i8] c"text-image-horiz\00", align 1
@.str.1023 = private unnamed_addr constant [12 x i8] c"text-pixels\00", align 1
@.str.1024 = private unnamed_addr constant [15 x i8] c"text-read-only\00", align 1
@.str.1025 = private unnamed_addr constant [8 x i8] c"thcount\00", align 1
@.str.1026 = private unnamed_addr constant [11 x i8] c"thin-space\00", align 1
@.str.1027 = private unnamed_addr constant [5 x i8] c"tiff\00", align 1
@.str.1028 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.1029 = private unnamed_addr constant [20 x i8] c"timer-event-handler\00", align 1
@.str.1030 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.1031 = private unnamed_addr constant [15 x i8] c"title-bar-size\00", align 1
@.str.1032 = private unnamed_addr constant [9 x i8] c"tool-bar\00", align 1
@.str.1033 = private unnamed_addr constant [18 x i8] c"tool-bar-external\00", align 1
@.str.1034 = private unnamed_addr constant [15 x i8] c"tool-bar-lines\00", align 1
@.str.1035 = private unnamed_addr constant [18 x i8] c"tool-bar-position\00", align 1
@.str.1036 = private unnamed_addr constant [14 x i8] c"tool-bar-size\00", align 1
@.str.1037 = private unnamed_addr constant [15 x i8] c"tool-bar-style\00", align 1
@.str.1038 = private unnamed_addr constant [8 x i8] c"tooltip\00", align 1
@.str.1039 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.1040 = private unnamed_addr constant [11 x i8] c"top-bottom\00", align 1
@.str.1041 = private unnamed_addr constant [10 x i8] c"top-level\00", align 1
@.str.1042 = private unnamed_addr constant [11 x i8] c"top-margin\00", align 1
@.str.1043 = private unnamed_addr constant [6 x i8] c"tpgid\00", align 1
@.str.1044 = private unnamed_addr constant [20 x i8] c"trailing-whitespace\00", align 1
@.str.1045 = private unnamed_addr constant [18 x i8] c"translation-table\00", align 1
@.str.1046 = private unnamed_addr constant [21 x i8] c"translation-table-id\00", align 1
@.str.1047 = private unnamed_addr constant [11 x i8] c"truncation\00", align 1
@.str.1048 = private unnamed_addr constant [7 x i8] c"ttname\00", align 1
@.str.1049 = private unnamed_addr constant [4 x i8] c"tty\00", align 1
@.str.1050 = private unnamed_addr constant [16 x i8] c"tty-color-alist\00", align 1
@.str.1051 = private unnamed_addr constant [19 x i8] c"tty-color-by-index\00", align 1
@.str.1052 = private unnamed_addr constant [15 x i8] c"tty-color-desc\00", align 1
@.str.1053 = private unnamed_addr constant [15 x i8] c"tty-color-mode\00", align 1
@.str.1054 = private unnamed_addr constant [26 x i8] c"tty-color-standard-values\00", align 1
@.str.1055 = private unnamed_addr constant [14 x i8] c"tty-menu-exit\00", align 1
@.str.1056 = private unnamed_addr constant [16 x i8] c"tty-menu-ignore\00", align 1
@.str.1057 = private unnamed_addr constant [24 x i8] c"tty-menu-mouse-movement\00", align 1
@.str.1058 = private unnamed_addr constant [24 x i8] c"tty-menu-navigation-map\00", align 1
@.str.1059 = private unnamed_addr constant [19 x i8] c"tty-menu-next-item\00", align 1
@.str.1060 = private unnamed_addr constant [19 x i8] c"tty-menu-next-menu\00", align 1
@.str.1061 = private unnamed_addr constant [19 x i8] c"tty-menu-prev-item\00", align 1
@.str.1062 = private unnamed_addr constant [19 x i8] c"tty-menu-prev-menu\00", align 1
@.str.1063 = private unnamed_addr constant [16 x i8] c"tty-menu-select\00", align 1
@.str.1064 = private unnamed_addr constant [23 x i8] c"tty-mode-reset-strings\00", align 1
@.str.1065 = private unnamed_addr constant [21 x i8] c"tty-mode-set-strings\00", align 1
@.str.1066 = private unnamed_addr constant [9 x i8] c"tty-type\00", align 1
@.str.1067 = private unnamed_addr constant [11 x i8] c"ultra-bold\00", align 1
@.str.1068 = private unnamed_addr constant [8 x i8] c"unbound\00", align 1
@.str.1069 = private unnamed_addr constant [10 x i8] c"undecided\00", align 1
@.str.1070 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.1071 = private unnamed_addr constant [16 x i8] c"undefined-color\00", align 1
@.str.1072 = private unnamed_addr constant [16 x i8] c"underflow-error\00", align 1
@.str.1073 = private unnamed_addr constant [24 x i8] c"undo-auto--add-boundary\00", align 1
@.str.1074 = private unnamed_addr constant [31 x i8] c"undo-auto--last-boundary-cause\00", align 1
@.str.1075 = private unnamed_addr constant [37 x i8] c"undo-auto--this-command-amalgamating\00", align 1
@.str.1076 = private unnamed_addr constant [27 x i8] c"undo-auto--undoable-change\00", align 1
@.str.1077 = private unnamed_addr constant [36 x i8] c"undo-auto--undoable-change-no-timer\00", align 1
@.str.1078 = private unnamed_addr constant [36 x i8] c"undo-auto--undoably-changed-buffers\00", align 1
@.str.1079 = private unnamed_addr constant [21 x i8] c"undo-auto-amalgamate\00", align 1
@.str.1080 = private unnamed_addr constant [10 x i8] c"unevalled\00", align 1
@.str.1081 = private unnamed_addr constant [30 x i8] c"unhandled-file-name-directory\00", align 1
@.str.1082 = private unnamed_addr constant [8 x i8] c"unicode\00", align 1
@.str.1083 = private unnamed_addr constant [12 x i8] c"unicode-bmp\00", align 1
@.str.1084 = private unnamed_addr constant [5 x i8] c"unix\00", align 1
@.str.1085 = private unnamed_addr constant [8 x i8] c"unmount\00", align 1
@.str.1086 = private unnamed_addr constant [12 x i8] c"unspecified\00", align 1
@.str.1087 = private unnamed_addr constant [13 x i8] c"unsplittable\00", align 1
@.str.1088 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.1089 = private unnamed_addr constant [21 x i8] c"update-frame-menubar\00", align 1
@.str.1090 = private unnamed_addr constant [22 x i8] c"update-frame-tool-bar\00", align 1
@.str.1091 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.1092 = private unnamed_addr constant [11 x i8] c"user-error\00", align 1
@.str.1093 = private unnamed_addr constant [14 x i8] c"user-position\00", align 1
@.str.1094 = private unnamed_addr constant [9 x i8] c"user-ptr\00", align 1
@.str.1095 = private unnamed_addr constant [10 x i8] c"user-ptrp\00", align 1
@.str.1096 = private unnamed_addr constant [10 x i8] c"user-size\00", align 1
@.str.1097 = private unnamed_addr constant [7 x i8] c"utf-16\00", align 1
@.str.1098 = private unnamed_addr constant [9 x i8] c"utf-16le\00", align 1
@.str.1099 = private unnamed_addr constant [6 x i8] c"utf-8\00", align 1
@.str.1100 = private unnamed_addr constant [12 x i8] c"utf-8-emacs\00", align 1
@.str.1101 = private unnamed_addr constant [6 x i8] c"utime\00", align 1
@.str.1102 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.1103 = private unnamed_addr constant [23 x i8] c"variable-documentation\00", align 1
@.str.1104 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@.str.1105 = private unnamed_addr constant [23 x i8] c"vector-or-char-table-p\00", align 1
@.str.1106 = private unnamed_addr constant [13 x i8] c"vector-slots\00", align 1
@.str.1107 = private unnamed_addr constant [8 x i8] c"vectorp\00", align 1
@.str.1108 = private unnamed_addr constant [8 x i8] c"vectors\00", align 1
@.str.1109 = private unnamed_addr constant [24 x i8] c"vendor-specific-keysyms\00", align 1
@.str.1110 = private unnamed_addr constant [28 x i8] c"verify-visited-file-modtime\00", align 1
@.str.1111 = private unnamed_addr constant [16 x i8] c"vertical-border\00", align 1
@.str.1112 = private unnamed_addr constant [14 x i8] c"vertical-line\00", align 1
@.str.1113 = private unnamed_addr constant [20 x i8] c"vertical-scroll-bar\00", align 1
@.str.1114 = private unnamed_addr constant [21 x i8] c"vertical-scroll-bars\00", align 1
@.str.1115 = private unnamed_addr constant [11 x i8] c"visibility\00", align 1
@.str.1116 = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@.str.1117 = private unnamed_addr constant [14 x i8] c"void-function\00", align 1
@.str.1118 = private unnamed_addr constant [14 x i8] c"void-variable\00", align 1
@.str.1119 = private unnamed_addr constant [6 x i8] c"vsize\00", align 1
@.str.1120 = private unnamed_addr constant [4 x i8] c"w32\00", align 1
@.str.1121 = private unnamed_addr constant [12 x i8] c"wait-for-wm\00", align 1
@.str.1122 = private unnamed_addr constant [5 x i8] c"wall\00", align 1
@.str.1123 = private unnamed_addr constant [5 x i8] c"wave\00", align 1
@.str.1124 = private unnamed_addr constant [9 x i8] c"weakness\00", align 1
@.str.1125 = private unnamed_addr constant [5 x i8] c"when\00", align 1
@.str.1126 = private unnamed_addr constant [10 x i8] c"wholenump\00", align 1
@.str.1127 = private unnamed_addr constant [12 x i8] c"widget-type\00", align 1
@.str.1128 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.1129 = private unnamed_addr constant [7 x i8] c"window\00", align 1
@.str.1130 = private unnamed_addr constant [21 x i8] c"window-configuration\00", align 1
@.str.1131 = private unnamed_addr constant [33 x i8] c"window-configuration-change-hook\00", align 1
@.str.1132 = private unnamed_addr constant [23 x i8] c"window-configuration-p\00", align 1
@.str.1133 = private unnamed_addr constant [19 x i8] c"window-deletable-p\00", align 1
@.str.1134 = private unnamed_addr constant [15 x i8] c"window-divider\00", align 1
@.str.1135 = private unnamed_addr constant [27 x i8] c"window-divider-first-pixel\00", align 1
@.str.1136 = private unnamed_addr constant [26 x i8] c"window-divider-last-pixel\00", align 1
@.str.1137 = private unnamed_addr constant [10 x i8] c"window-id\00", align 1
@.str.1138 = private unnamed_addr constant [14 x i8] c"window-live-p\00", align 1
@.str.1139 = private unnamed_addr constant [23 x i8] c"window--pixel-to-total\00", align 1
@.str.1140 = private unnamed_addr constant [28 x i8] c"window_point_insertion_type\00", align 1
@.str.1141 = private unnamed_addr constant [27 x i8] c"window--resize-root-window\00", align 1
@.str.1142 = private unnamed_addr constant [38 x i8] c"window--resize-root-window-vertically\00", align 1
@.str.1143 = private unnamed_addr constant [30 x i8] c"window--sanitize-window-sizes\00", align 1
@.str.1144 = private unnamed_addr constant [24 x i8] c"window-scroll-functions\00", align 1
@.str.1145 = private unnamed_addr constant [12 x i8] c"window-size\00", align 1
@.str.1146 = private unnamed_addr constant [29 x i8] c"window-text-change-functions\00", align 1
@.str.1147 = private unnamed_addr constant [15 x i8] c"window-valid-p\00", align 1
@.str.1148 = private unnamed_addr constant [8 x i8] c"windowp\00", align 1
@.str.1149 = private unnamed_addr constant [9 x i8] c"workarea\00", align 1
@.str.1150 = private unnamed_addr constant [12 x i8] c"wrap-prefix\00", align 1
@.str.1151 = private unnamed_addr constant [13 x i8] c"write-region\00", align 1
@.str.1152 = private unnamed_addr constant [32 x i8] c"write-region-annotate-functions\00", align 1
@.str.1153 = private unnamed_addr constant [22 x i8] c"wrong-length-argument\00", align 1
@.str.1154 = private unnamed_addr constant [26 x i8] c"wrong-number-of-arguments\00", align 1
@.str.1155 = private unnamed_addr constant [20 x i8] c"wrong-type-argument\00", align 1
@.str.1156 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.1157 = private unnamed_addr constant [19 x i8] c"x-check-fullscreen\00", align 1
@.str.1158 = private unnamed_addr constant [17 x i8] c"x-create-frame-1\00", align 1
@.str.1159 = private unnamed_addr constant [17 x i8] c"x-create-frame-2\00", align 1
@.str.1160 = private unnamed_addr constant [18 x i8] c"x-frame-parameter\00", align 1
@.str.1161 = private unnamed_addr constant [16 x i8] c"x-gtk-map-stock\00", align 1
@.str.1162 = private unnamed_addr constant [22 x i8] c"x-handle-net-wm-state\00", align 1
@.str.1163 = private unnamed_addr constant [27 x i8] c"x-lost-selection-functions\00", align 1
@.str.1164 = private unnamed_addr constant [15 x i8] c"x-net-wm-state\00", align 1
@.str.1165 = private unnamed_addr constant [16 x i8] c"x-resource-name\00", align 1
@.str.1166 = private unnamed_addr constant [27 x i8] c"x-sent-selection-functions\00", align 1
@.str.1167 = private unnamed_addr constant [23 x i8] c"x-set-frame-parameters\00", align 1
@.str.1168 = private unnamed_addr constant [17 x i8] c"x-set-fullscreen\00", align 1
@.str.1169 = private unnamed_addr constant [21 x i8] c"x-set-menu-bar-lines\00", align 1
@.str.1170 = private unnamed_addr constant [20 x i8] c"x-set-window-size-1\00", align 1
@.str.1171 = private unnamed_addr constant [20 x i8] c"x-set-window-size-2\00", align 1
@.str.1172 = private unnamed_addr constant [20 x i8] c"x-set-window-size-3\00", align 1
@.str.1173 = private unnamed_addr constant [4 x i8] c"xbm\00", align 1
@.str.1174 = private unnamed_addr constant [4 x i8] c"xft\00", align 1
@.str.1175 = private unnamed_addr constant [27 x i8] c"xg-change-toolbar-position\00", align 1
@.str.1176 = private unnamed_addr constant [17 x i8] c"xg-frame-resized\00", align 1
@.str.1177 = private unnamed_addr constant [23 x i8] c"xg-frame-set-char-size\00", align 1
@.str.1178 = private unnamed_addr constant [25 x i8] c"xg-frame-set-char-size-1\00", align 1
@.str.1179 = private unnamed_addr constant [25 x i8] c"xg-frame-set-char-size-2\00", align 1
@.str.1180 = private unnamed_addr constant [25 x i8] c"xg-frame-set-char-size-3\00", align 1
@.str.1181 = private unnamed_addr constant [4 x i8] c"xpm\00", align 1
@.str.1182 = private unnamed_addr constant [14 x i8] c"xwidget-event\00", align 1
@.str.1183 = private unnamed_addr constant [20 x i8] c"yes-or-no-p-history\00", align 1
@.str.1184 = private unnamed_addr constant [11 x i8] c"zero-width\00", align 1
@.str.1185 = private unnamed_addr constant [15 x i8] c"Lisp directory\00", align 1
@.str.1186 = private unnamed_addr constant [33 x i8] c"/usr/local/share/emacs/25.1/lisp\00", align 1
@.str.1187 = private unnamed_addr constant [5 x i8] c"lisp\00", align 1
@.str.1188 = private unnamed_addr constant [10 x i8] c"site-lisp\00", align 1
@.str.1189 = private unnamed_addr constant [13 x i8] c"src/Makefile\00", align 1
@.str.1190 = private unnamed_addr constant [16 x i8] c"src/Makefile.in\00", align 1
@Sread = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fread }, i16 0, i16 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.901, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.1191 = private unnamed_addr constant [17 x i8] c"read-from-string\00", align 1
@Sread_from_string = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fread_from_string }, i16 1, i16 3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1191, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.1192 = private unnamed_addr constant [7 x i8] c"intern\00", align 1
@Sintern = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fintern }, i16 1, i16 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1192, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.1193 = private unnamed_addr constant [12 x i8] c"intern-soft\00", align 1
@Sintern_soft = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fintern_soft }, i16 1, i16 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1193, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.1194 = private unnamed_addr constant [9 x i8] c"unintern\00", align 1
@Sunintern = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Funintern }, i16 1, i16 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1194, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.1195 = private unnamed_addr constant [18 x i8] c"get-load-suffixes\00", align 1
@Sload = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64, i64)* @Fload }, i16 1, i16 5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.744, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.1196 = private unnamed_addr constant [12 x i8] c"eval-buffer\00", align 1
@.str.1197 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@Seval_buffer = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64, i64)* @Feval_buffer }, i16 0, i16 5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1196, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1197, i32 0, i32 0), i8* null }, align 8
@.str.1198 = private unnamed_addr constant [12 x i8] c"eval-region\00", align 1
@Seval_region = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64)* @Feval_region }, i16 2, i16 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1198, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* null }, align 8
@Sread_char = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fread_char }, i16 0, i16 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.902, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.1199 = private unnamed_addr constant [20 x i8] c"read-char-exclusive\00", align 1
@Sread_char_exclusive = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fread_char_exclusive }, i16 0, i16 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1199, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.1200 = private unnamed_addr constant [11 x i8] c"read-event\00", align 1
@Sread_event = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fread_event }, i16 0, i16 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1200, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.1201 = private unnamed_addr constant [9 x i8] c"mapatoms\00", align 1
@Smapatoms = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fmapatoms }, i16 1, i16 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1201, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.1202 = private unnamed_addr constant [21 x i8] c"locate-file-internal\00", align 1
@Slocate_file_internal = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64)* @Flocate_file_internal }, i16 2, i16 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1202, i32 0, i32 0), i8* null, i8* null }, align 8

; Function Attrs: nounwind uwtable
define i64 @Fread_char(i64 %prompt, i64 %inherit_input_method, i64 %seconds) #0 {
entry:
  %prompt.addr = alloca i64, align 8
  %inherit_input_method.addr = alloca i64, align 8
  %seconds.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %prompt, i64* %prompt.addr, align 8
  store i64 %inherit_input_method, i64* %inherit_input_method.addr, align 8
  store i64 %seconds, i64* %seconds.addr, align 8
  %0 = load i64, i64* %prompt.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %prompt.addr, align 8
  call void @message_with_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i64 %1, i1 zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* %inherit_input_method.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2 = icmp eq i64 %2, %call1
  %lnot = xor i1 %cmp2, true
  %3 = load i64, i64* %seconds.addr, align 8
  %call3 = call i64 @read_filtered_event(i1 zeroext true, i1 zeroext true, i1 zeroext true, i1 zeroext %lnot, i64 %3)
  store i64 %call3, i64* %val, align 8
  %4 = load i64, i64* %val, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp5 = icmp eq i64 %4, %call4
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %5 = load i64, i64* %val, align 8
  %shr = ashr i64 %5, 2
  %call7 = call i64 @char_resolve_modifier_mask(i64 %shr) #8
  %shl = shl i64 %call7, 2
  %add = add i64 %shl, 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call6, %cond.true ], [ %add, %cond.false ]
  ret i64 %cond
}

declare i64 @builtin_lisp_symbol(i32) #1

declare void @message_with_string(i8*, i64, i1 zeroext) #1

; Function Attrs: nounwind uwtable
define internal i64 @read_filtered_event(i1 zeroext %no_switch_frame, i1 zeroext %ascii_required, i1 zeroext %error_nonascii, i1 zeroext %input_method, i64 %seconds) #0 {
entry:
  %no_switch_frame.addr = alloca i8, align 1
  %ascii_required.addr = alloca i8, align 1
  %error_nonascii.addr = alloca i8, align 1
  %input_method.addr = alloca i8, align 1
  %seconds.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %delayed_switch_frame = alloca i64, align 8
  %end_time = alloca %struct.timespec, align 8
  %duration = alloca double, align 8
  %wait_time = alloca %struct.timespec, align 8
  %agg.tmp = alloca %struct.timespec, align 8
  %coerce = alloca %struct.timespec, align 8
  %tem = alloca i64, align 8
  %tem1 = alloca i64, align 8
  %frombool = zext i1 %no_switch_frame to i8
  store i8 %frombool, i8* %no_switch_frame.addr, align 1
  %frombool1 = zext i1 %ascii_required to i8
  store i8 %frombool1, i8* %ascii_required.addr, align 1
  %frombool2 = zext i1 %error_nonascii to i8
  store i8 %frombool2, i8* %error_nonascii.addr, align 1
  %frombool3 = zext i1 %input_method to i8
  store i8 %frombool3, i8* %input_method.addr, align 1
  store i64 %seconds, i64* %seconds.addr, align 8
  %0 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 438), align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @cancel_hourglass()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %delayed_switch_frame, align 8
  %1 = load i64, i64* %seconds.addr, align 8
  %call4 = call zeroext i1 @NUMBERP(i64 %1)
  br i1 %call4, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %if.end
  %2 = load i64, i64* %seconds.addr, align 8
  %call6 = call double @extract_float(i64 %2)
  store double %call6, double* %duration, align 8
  %3 = load double, double* %duration, align 8
  %call7 = call { i64, i64 } @dtotimespec(double %3) #8
  %4 = bitcast %struct.timespec* %wait_time to { i64, i64 }*
  %5 = getelementptr { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  %6 = extractvalue { i64, i64 } %call7, 0
  store i64 %6, i64* %5, align 8
  %7 = getelementptr { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  %8 = extractvalue { i64, i64 } %call7, 1
  store i64 %8, i64* %7, align 8
  %call8 = call { i64, i64 } @current_timespec()
  %9 = bitcast %struct.timespec* %agg.tmp to { i64, i64 }*
  %10 = getelementptr { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  %11 = extractvalue { i64, i64 } %call8, 0
  store i64 %11, i64* %10, align 8
  %12 = getelementptr { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  %13 = extractvalue { i64, i64 } %call8, 1
  store i64 %13, i64* %12, align 8
  %14 = bitcast %struct.timespec* %agg.tmp to { i64, i64 }*
  %15 = getelementptr { i64, i64 }, { i64, i64 }* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 1
  %17 = getelementptr { i64, i64 }, { i64, i64 }* %14, i32 0, i32 1
  %18 = load i64, i64* %17, align 1
  %19 = bitcast %struct.timespec* %wait_time to { i64, i64 }*
  %20 = getelementptr { i64, i64 }, { i64, i64 }* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 1
  %22 = getelementptr { i64, i64 }, { i64, i64 }* %19, i32 0, i32 1
  %23 = load i64, i64* %22, align 1
  %call9 = call { i64, i64 } @timespec_add(i64 %16, i64 %18, i64 %21, i64 %23) #8
  %24 = bitcast %struct.timespec* %coerce to { i64, i64 }*
  %25 = getelementptr { i64, i64 }, { i64, i64 }* %24, i32 0, i32 0
  %26 = extractvalue { i64, i64 } %call9, 0
  store i64 %26, i64* %25, align 8
  %27 = getelementptr { i64, i64 }, { i64, i64 }* %24, i32 0, i32 1
  %28 = extractvalue { i64, i64 } %call9, 1
  store i64 %28, i64* %27, align 8
  %29 = bitcast %struct.timespec* %end_time to i8*
  %30 = bitcast %struct.timespec* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 16, i32 8, i1 false)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.5, %if.end
  br label %retry

retry:                                            ; preds = %if.else, %if.then.48, %if.then.26, %if.end.10
  br label %do.body

do.body:                                          ; preds = %land.end, %retry
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  %31 = load i8, i8* %input_method.addr, align 1
  %tobool12 = trunc i8 %31 to i1
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  %call13 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.false:                                       ; preds = %do.body
  %call14 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call13, %cond.true ], [ %call14, %cond.false ]
  %32 = load i64, i64* %seconds.addr, align 8
  %call15 = call zeroext i1 @NUMBERP(i64 %32)
  br i1 %call15, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %cond.end
  br label %cond.end.18

cond.false.17:                                    ; preds = %cond.end
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.17, %cond.true.16
  %cond19 = phi %struct.timespec* [ %end_time, %cond.true.16 ], [ null, %cond.false.17 ]
  %call20 = call i64 @read_char(i32 0, i64 %call11, i64 %cond, i8* null, %struct.timespec* %cond19)
  store i64 %call20, i64* %val, align 8
  br label %do.cond

do.cond:                                          ; preds = %cond.end.18
  %33 = load i64, i64* %val, align 8
  %and = and i64 %33, 7
  %conv = trunc i64 %and to i32
  %and21 = and i32 %conv, -5
  %cmp = icmp eq i32 %and21, 2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %34 = load i64, i64* %val, align 8
  %shr = ashr i64 %34, 2
  %cmp23 = icmp eq i64 %shr, -2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %35 = phi i1 [ false, %do.cond ], [ %cmp23, %land.rhs ]
  br i1 %35, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %36 = load i64, i64* %val, align 8
  %call25 = call zeroext i1 @BUFFERP(i64 %36)
  br i1 %call25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %do.end
  br label %retry

if.end.27:                                        ; preds = %do.end
  %37 = load i8, i8* %no_switch_frame.addr, align 1
  %tobool28 = trunc i8 %37 to i1
  br i1 %tobool28, label %land.lhs.true, label %if.end.49

land.lhs.true:                                    ; preds = %if.end.27
  %38 = load i64, i64* %val, align 8
  %and30 = and i64 %38, 7
  %conv31 = trunc i64 %and30 to i32
  %cmp32 = icmp eq i32 %conv31, 3
  br i1 %cmp32, label %land.lhs.true.34, label %if.end.49

land.lhs.true.34:                                 ; preds = %land.lhs.true
  %39 = load i64, i64* %val, align 8
  %and35 = and i64 %39, 7
  %conv36 = trunc i64 %and35 to i32
  %cmp37 = icmp eq i32 %conv36, 3
  br i1 %cmp37, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %land.lhs.true.34
  %40 = load i64, i64* %val, align 8
  %sub = sub nsw i64 %40, 3
  %41 = inttoptr i64 %sub to i8*
  %42 = bitcast i8* %41 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %42, i32 0, i32 0
  %43 = load i64, i64* %car, align 8
  br label %cond.end.41

cond.false.40:                                    ; preds = %land.lhs.true.34
  %44 = load i64, i64* %val, align 8
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.40, %cond.true.39
  %cond42 = phi i64 [ %43, %cond.true.39 ], [ %44, %cond.false.40 ]
  %call43 = call i64 @builtin_lisp_symbol(i32 382)
  %call44 = call i64 @Fget(i64 %cond42, i64 %call43)
  %call45 = call i64 @builtin_lisp_symbol(i32 895)
  %cmp46 = icmp eq i64 %call44, %call45
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %cond.end.41
  %45 = load i64, i64* %val, align 8
  store i64 %45, i64* %delayed_switch_frame, align 8
  br label %retry

if.end.49:                                        ; preds = %cond.end.41, %land.lhs.true, %if.end.27
  %46 = load i8, i8* %ascii_required.addr, align 1
  %tobool50 = trunc i8 %46 to i1
  br i1 %tobool50, label %land.lhs.true.52, label %if.end.96

land.lhs.true.52:                                 ; preds = %if.end.49
  %47 = load i64, i64* %seconds.addr, align 8
  %call53 = call zeroext i1 @NUMBERP(i64 %47)
  br i1 %call53, label %land.lhs.true.55, label %if.then.59

land.lhs.true.55:                                 ; preds = %land.lhs.true.52
  %48 = load i64, i64* %val, align 8
  %call56 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp57 = icmp eq i64 %48, %call56
  br i1 %cmp57, label %if.end.96, label %if.then.59

if.then.59:                                       ; preds = %land.lhs.true.55, %land.lhs.true.52
  %49 = load i64, i64* %val, align 8
  %and60 = and i64 %49, 7
  %conv61 = trunc i64 %and60 to i32
  %cmp62 = icmp eq i32 %conv61, 0
  br i1 %cmp62, label %if.then.64, label %if.end.85

if.then.64:                                       ; preds = %if.then.59
  %50 = load i64, i64* %val, align 8
  %call65 = call i64 @builtin_lisp_symbol(i32 383)
  %call66 = call i64 @Fget(i64 %50, i64 %call65)
  store i64 %call66, i64* %tem, align 8
  %51 = load i64, i64* %tem, align 8
  %call67 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp68 = icmp eq i64 %51, %call67
  br i1 %cmp68, label %if.end.84, label %if.then.70

if.then.70:                                       ; preds = %if.then.64
  %52 = load i64, i64* %tem, align 8
  %call71 = call i64 @Fcar(i64 %52)
  %call72 = call i64 @builtin_lisp_symbol(i32 183)
  %call73 = call i64 @Fget(i64 %call71, i64 %call72)
  store i64 %call73, i64* %tem1, align 8
  %53 = load i64, i64* %tem1, align 8
  %call74 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp75 = icmp eq i64 %53, %call74
  br i1 %cmp75, label %if.end.83, label %if.then.77

if.then.77:                                       ; preds = %if.then.70
  %54 = load i64, i64* %tem1, align 8
  %shr78 = ashr i64 %54, 2
  %55 = load i64, i64* %tem, align 8
  %call79 = call i64 @Fcdr(i64 %55)
  %call80 = call i64 @Fcar(i64 %call79)
  %shr81 = ashr i64 %call80, 2
  %or = or i64 %shr78, %shr81
  %call82 = call i64 @make_natnum(i64 %or)
  store i64 %call82, i64* %val, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.77, %if.then.70
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.64
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.then.59
  %56 = load i64, i64* %val, align 8
  %and86 = and i64 %56, 7
  %conv87 = trunc i64 %and86 to i32
  %and88 = and i32 %conv87, -5
  %cmp89 = icmp eq i32 %and88, 2
  br i1 %cmp89, label %if.end.95, label %if.then.91

if.then.91:                                       ; preds = %if.end.85
  %57 = load i8, i8* %error_nonascii.addr, align 1
  %tobool92 = trunc i8 %57 to i1
  br i1 %tobool92, label %if.then.93, label %if.else

if.then.93:                                       ; preds = %if.then.91
  %58 = load i64, i64* %val, align 8
  %call94 = call i64 @list1(i64 %58)
  store i64 %call94, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 315), align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.85, i32 0, i32 0)) #9
  unreachable

if.else:                                          ; preds = %if.then.91
  br label %retry

if.end.95:                                        ; preds = %if.end.85
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %land.lhs.true.55, %if.end.49
  %59 = load i64, i64* %delayed_switch_frame, align 8
  %call97 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp98 = icmp eq i64 %59, %call97
  br i1 %cmp98, label %if.end.101, label %if.then.100

if.then.100:                                      ; preds = %if.end.96
  %60 = load i64, i64* %delayed_switch_frame, align 8
  store i64 %60, i64* @unread_switch_frame, align 8
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.100, %if.end.96
  %61 = load i64, i64* %val, align 8
  ret i64 %61
}

; Function Attrs: nounwind readnone
declare i64 @char_resolve_modifier_mask(i64) #2

; Function Attrs: nounwind uwtable
define i64 @Fread_event(i64 %prompt, i64 %inherit_input_method, i64 %seconds) #0 {
entry:
  %prompt.addr = alloca i64, align 8
  %inherit_input_method.addr = alloca i64, align 8
  %seconds.addr = alloca i64, align 8
  store i64 %prompt, i64* %prompt.addr, align 8
  store i64 %inherit_input_method, i64* %inherit_input_method.addr, align 8
  store i64 %seconds, i64* %seconds.addr, align 8
  %0 = load i64, i64* %prompt.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %prompt.addr, align 8
  call void @message_with_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i64 %1, i1 zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* %inherit_input_method.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2 = icmp eq i64 %2, %call1
  %lnot = xor i1 %cmp2, true
  %3 = load i64, i64* %seconds.addr, align 8
  %call3 = call i64 @read_filtered_event(i1 zeroext false, i1 zeroext false, i1 zeroext false, i1 zeroext %lnot, i64 %3)
  ret i64 %call3
}

; Function Attrs: nounwind uwtable
define i64 @Fread_char_exclusive(i64 %prompt, i64 %inherit_input_method, i64 %seconds) #0 {
entry:
  %prompt.addr = alloca i64, align 8
  %inherit_input_method.addr = alloca i64, align 8
  %seconds.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %prompt, i64* %prompt.addr, align 8
  store i64 %inherit_input_method, i64* %inherit_input_method.addr, align 8
  store i64 %seconds, i64* %seconds.addr, align 8
  %0 = load i64, i64* %prompt.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %prompt.addr, align 8
  call void @message_with_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i64 %1, i1 zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* %inherit_input_method.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2 = icmp eq i64 %2, %call1
  %lnot = xor i1 %cmp2, true
  %3 = load i64, i64* %seconds.addr, align 8
  %call3 = call i64 @read_filtered_event(i1 zeroext true, i1 zeroext true, i1 zeroext false, i1 zeroext %lnot, i64 %3)
  store i64 %call3, i64* %val, align 8
  %4 = load i64, i64* %val, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp5 = icmp eq i64 %4, %call4
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %5 = load i64, i64* %val, align 8
  %shr = ashr i64 %5, 2
  %call7 = call i64 @char_resolve_modifier_mask(i64 %shr) #8
  %shl = shl i64 %call7, 2
  %add = add i64 %shl, 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call6, %cond.true ], [ %add, %cond.false ]
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define i64 @Fget_file_char() #0 {
entry:
  %val = alloca i64, align 8
  call void @block_input()
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @instream, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %0)
  %conv = sext i32 %call to i64
  %shl = shl i64 %conv, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %val, align 8
  call void @unblock_input()
  %1 = load i64, i64* %val, align 8
  ret i64 %1
}

declare void @block_input() #1

declare i32 @_IO_getc(%struct._IO_FILE*) #1

declare void @unblock_input() #1

; Function Attrs: nounwind uwtable
define i64 @Fget_load_suffixes() #0 {
entry:
  %lst = alloca i64, align 8
  %suffixes = alloca i64, align 8
  %suffix = alloca i64, align 8
  %ext = alloca i64, align 8
  %exts = alloca i64, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %lst, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 167), align 8
  store i64 %0, i64* %suffixes, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %1 = load i64, i64* %suffixes, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %while.body, label %while.end.16

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 162), align 8
  store i64 %2, i64* %exts, align 8
  %3 = load i64, i64* %suffixes, align 8
  %sub = sub nsw i64 %3, 3
  %4 = inttoptr i64 %sub to i8*
  %5 = bitcast i8* %4 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %5, i32 0, i32 0
  %6 = load i64, i64* %car, align 8
  store i64 %6, i64* %suffix, align 8
  %7 = load i64, i64* %suffixes, align 8
  %sub2 = sub nsw i64 %7, 3
  %8 = inttoptr i64 %sub2 to i8*
  %9 = bitcast i8* %8 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %9, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %10 = load i64, i64* %cdr, align 8
  store i64 %10, i64* %suffixes, align 8
  br label %while.cond.3

while.cond.3:                                     ; preds = %while.body.8, %while.body
  %11 = load i64, i64* %exts, align 8
  %and4 = and i64 %11, 7
  %conv5 = trunc i64 %and4 to i32
  %cmp6 = icmp eq i32 %conv5, 3
  br i1 %cmp6, label %while.body.8, label %while.end

while.body.8:                                     ; preds = %while.cond.3
  %12 = load i64, i64* %exts, align 8
  %sub9 = sub nsw i64 %12, 3
  %13 = inttoptr i64 %sub9 to i8*
  %14 = bitcast i8* %13 to %struct.Lisp_Cons*
  %car10 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %14, i32 0, i32 0
  %15 = load i64, i64* %car10, align 8
  store i64 %15, i64* %ext, align 8
  %16 = load i64, i64* %exts, align 8
  %sub11 = sub nsw i64 %16, 3
  %17 = inttoptr i64 %sub11 to i8*
  %18 = bitcast i8* %17 to %struct.Lisp_Cons*
  %u12 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %18, i32 0, i32 1
  %cdr13 = bitcast %union.anon* %u12 to i64*
  %19 = load i64, i64* %cdr13, align 8
  store i64 %19, i64* %exts, align 8
  %20 = load i64, i64* %suffix, align 8
  %21 = load i64, i64* %ext, align 8
  %call14 = call i64 @concat2(i64 %20, i64 %21)
  %22 = load i64, i64* %lst, align 8
  %call15 = call i64 @Fcons(i64 %call14, i64 %22)
  store i64 %call15, i64* %lst, align 8
  br label %while.cond.3

while.end:                                        ; preds = %while.cond.3
  br label %while.cond

while.end.16:                                     ; preds = %while.cond
  %23 = load i64, i64* %lst, align 8
  %call17 = call i64 @Fnreverse(i64 %23)
  ret i64 %call17
}

declare i64 @Fcons(i64, i64) #1

declare i64 @concat2(i64, i64) #1

declare i64 @Fnreverse(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fload(i64 %file, i64 %noerror, i64 %nomessage, i64 %nosuffix, i64 %must_suffix) #0 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca i64, align 8
  %noerror.addr = alloca i64, align 8
  %nomessage.addr = alloca i64, align 8
  %nosuffix.addr = alloca i64, align 8
  %must_suffix.addr = alloca i64, align 8
  %stream = alloca %struct._IO_FILE*, align 8
  %fd = alloca i32, align 4
  %fd_index = alloca i32, align 4
  %count = alloca i64, align 8
  %found = alloca i64, align 8
  %efound = alloca i64, align 8
  %hist_file_name = alloca i64, align 8
  %newer = alloca i8, align 1
  %compiled = alloca i8, align 1
  %handler = alloca i64, align 8
  %safe_p = alloca i8, align 1
  %fmode = alloca i8*, align 8
  %version = alloca i32, align 4
  %suffixes = alloca i64, align 8
  %.compoundliteral = alloca [2 x i64], align 8
  %load_count = alloca i32, align 4
  %tem = alloca i64, align 8
  %s1 = alloca %struct.stat, align 8
  %s2 = alloca %struct.stat, align 8
  %result = alloca i32, align 4
  %agg.tmp = alloca %struct.timespec, align 8
  %agg.tmp159 = alloca %struct.timespec, align 8
  %msg_file = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %file, i64* %file.addr, align 8
  store i64 %noerror, i64* %noerror.addr, align 8
  store i64 %nomessage, i64* %nomessage.addr, align 8
  store i64 %nosuffix, i64* %nosuffix.addr, align 8
  store i64 %must_suffix, i64* %must_suffix.addr, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %count, align 8
  store i8 0, i8* %newer, align 1
  store i8 0, i8* %compiled, align 1
  store i8 1, i8* %safe_p, align 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8** %fmode, align 8
  %0 = load i64, i64* %file.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i64, i64* %noerror.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call1
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %file.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 901)
  %call3 = call i64 @internal_condition_case_1(i64 (i64)* @Fsubstitute_in_file_name, i64 %2, i64 %call2, i64 (i64)* @load_error_handler)
  store i64 %call3, i64* %file.addr, align 8
  %3 = load i64, i64* %file.addr, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp5 = icmp eq i64 %3, %call4
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call7, i64* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.9

if.else:                                          ; preds = %entry
  %4 = load i64, i64* %file.addr, align 8
  %call8 = call i64 @Fsubstitute_in_file_name(i64 %4)
  store i64 %call8, i64* %file.addr, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.end
  %5 = load i64, i64* %file.addr, align 8
  %call10 = call i64 @SCHARS(i64 %5)
  %cmp11 = icmp eq i64 %call10, 0
  br i1 %cmp11, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %if.end.9
  store i32 -1, i32* %fd, align 4
  %call13 = call i32* @__errno_location() #8
  store i32 2, i32* %call13, align 4
  br label %if.end.46

if.else.14:                                       ; preds = %if.end.9
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call15, i64* %found, align 8
  %6 = load i64, i64* %must_suffix.addr, align 8
  %call16 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp17 = icmp eq i64 %6, %call16
  br i1 %cmp17, label %if.end.31, label %if.then.18

if.then.18:                                       ; preds = %if.else.14
  %7 = load i64, i64* %file.addr, align 8
  %call19 = call zeroext i1 @suffix_p(i64 %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0))
  br i1 %call19, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.18
  %8 = load i64, i64* %file.addr, align 8
  %call20 = call zeroext i1 @suffix_p(i64 %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  br i1 %call20, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %lor.lhs.false, %if.then.18
  %call22 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call22, i64* %must_suffix.addr, align 8
  br label %if.end.30

if.else.23:                                       ; preds = %lor.lhs.false
  %9 = load i64, i64* %file.addr, align 8
  %call24 = call i64 @Ffile_name_directory(i64 %9)
  %call25 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp26 = icmp eq i64 %call24, %call25
  br i1 %cmp26, label %if.end.29, label %if.then.27

if.then.27:                                       ; preds = %if.else.23
  %call28 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call28, i64* %must_suffix.addr, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.else.23
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.21
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.else.14
  %10 = load i64, i64* %nosuffix.addr, align 8
  %call32 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp33 = icmp eq i64 %10, %call32
  br i1 %cmp33, label %if.else.36, label %if.then.34

if.then.34:                                       ; preds = %if.end.31
  %call35 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call35, i64* %suffixes, align 8
  br label %if.end.43

if.else.36:                                       ; preds = %if.end.31
  %call37 = call i64 @Fget_load_suffixes()
  store i64 %call37, i64* %suffixes, align 8
  %11 = load i64, i64* %must_suffix.addr, align 8
  %call38 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp39 = icmp eq i64 %11, %call38
  br i1 %cmp39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.else.36
  %arrayinit.begin = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral, i64 0, i64 0
  %12 = load i64, i64* %suffixes, align 8
  store i64 %12, i64* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i64, i64* %arrayinit.begin, i64 1
  %13 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 162), align 8
  store i64 %13, i64* %arrayinit.element
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral, i32 0, i32 0
  %call41 = call i64 @Fappend(i64 2, i64* %arraydecay)
  store i64 %call41, i64* %suffixes, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.else.36
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.34
  %14 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 164), align 8
  %15 = load i64, i64* %file.addr, align 8
  %16 = load i64, i64* %suffixes, align 8
  %call44 = call i64 @builtin_lisp_symbol(i32 0)
  %17 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 467), align 1
  %tobool = trunc i8 %17 to i1
  %call45 = call i32 @openp(i64 %14, i64 %15, i64 %16, i64* %found, i64 %call44, i1 zeroext %tobool)
  store i32 %call45, i32* %fd, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.43, %if.then.12
  %18 = load i32, i32* %fd, align 4
  %cmp47 = icmp eq i32 %18, -1
  br i1 %cmp47, label %if.then.48, label %if.end.54

if.then.48:                                       ; preds = %if.end.46
  %19 = load i64, i64* %noerror.addr, align 8
  %call49 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp50 = icmp eq i64 %19, %call49
  br i1 %cmp50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.then.48
  %20 = load i64, i64* %file.addr, align 8
  call void @report_file_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i64 %20) #9
  unreachable

if.end.52:                                        ; preds = %if.then.48
  %call53 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call53, i64* %retval
  br label %return

if.end.54:                                        ; preds = %if.end.46
  %call55 = call i64 @builtin_lisp_symbol(i32 901)
  %21 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 320), align 8
  %cmp56 = icmp eq i64 %call55, %21
  br i1 %cmp56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.54
  %22 = load i64, i64* %found, align 8
  store i64 %22, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 320), align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %if.end.54
  %23 = load i32, i32* %fd, align 4
  %cmp59 = icmp eq i32 %23, -2
  br i1 %cmp59, label %if.then.60, label %if.end.78

if.then.60:                                       ; preds = %if.end.58
  %24 = load i64, i64* %found, align 8
  %25 = load i64, i64* %file.addr, align 8
  %call61 = call i64 @Fequal(i64 %24, i64 %25)
  %call62 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp63 = icmp eq i64 %call61, %call62
  br i1 %cmp63, label %if.then.64, label %if.else.67

if.then.64:                                       ; preds = %if.then.60
  %26 = load i64, i64* %found, align 8
  %call65 = call i64 @builtin_lisp_symbol(i32 901)
  %call66 = call i64 @Ffind_file_name_handler(i64 %26, i64 %call65)
  store i64 %call66, i64* %handler, align 8
  br label %if.end.70

if.else.67:                                       ; preds = %if.then.60
  %27 = load i64, i64* %found, align 8
  %call68 = call i64 @builtin_lisp_symbol(i32 628)
  %call69 = call i64 @Ffind_file_name_handler(i64 %27, i64 %call68)
  store i64 %call69, i64* %handler, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.67, %if.then.64
  %28 = load i64, i64* %handler, align 8
  %call71 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp72 = icmp eq i64 %28, %call71
  br i1 %cmp72, label %if.end.77, label %if.then.73

if.then.73:                                       ; preds = %if.end.70
  %29 = load i64, i64* %handler, align 8
  %call74 = call i64 @builtin_lisp_symbol(i32 628)
  %30 = load i64, i64* %found, align 8
  %31 = load i64, i64* %noerror.addr, align 8
  %32 = load i64, i64* %nomessage.addr, align 8
  %call75 = call i64 @builtin_lisp_symbol(i32 901)
  %call76 = call i64 @call5(i64 %29, i64 %call74, i64 %30, i64 %31, i64 %32, i64 %call75)
  store i64 %call76, i64* %retval
  br label %return

if.end.77:                                        ; preds = %if.end.70
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.end.58
  %33 = load i32, i32* %fd, align 4
  %cmp79 = icmp slt i32 %33, 0
  br i1 %cmp79, label %if.then.80, label %if.else.81

if.then.80:                                       ; preds = %if.end.78
  br label %if.end.83

if.else.81:                                       ; preds = %if.end.78
  %call82 = call i64 @SPECPDL_INDEX()
  %conv = trunc i64 %call82 to i32
  store i32 %conv, i32* %fd_index, align 4
  %34 = load i32, i32* %fd, align 4
  call void @record_unwind_protect_int(void (i32)* @close_file_unwind, i32 %34)
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.81, %if.then.80
  store i32 0, i32* %load_count, align 4
  %35 = load i64, i64* @Vloads_in_progress, align 8
  store i64 %35, i64* %tem, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.83
  %36 = load i64, i64* %tem, align 8
  %and = and i64 %36, 7
  %conv84 = trunc i64 %and to i32
  %cmp85 = icmp eq i32 %conv84, 3
  br i1 %cmp85, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load i64, i64* %found, align 8
  %38 = load i64, i64* %tem, align 8
  %sub = sub nsw i64 %38, 3
  %39 = inttoptr i64 %sub to i8*
  %40 = bitcast i8* %39 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %40, i32 0, i32 0
  %41 = load i64, i64* %car, align 8
  %call87 = call i64 @Fequal(i64 %37, i64 %41)
  %call88 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp89 = icmp eq i64 %call87, %call88
  br i1 %cmp89, label %if.end.95, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %42 = load i32, i32* %load_count, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %load_count, align 4
  %cmp91 = icmp sgt i32 %inc, 3
  br i1 %cmp91, label %if.then.93, label %if.end.95

if.then.93:                                       ; preds = %land.lhs.true
  %43 = load i64, i64* %found, align 8
  %44 = load i64, i64* @Vloads_in_progress, align 8
  %call94 = call i64 @Fcons(i64 %43, i64 %44)
  call void @signal_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i64 %call94) #9
  unreachable

if.end.95:                                        ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.95
  %45 = load i64, i64* %tem, align 8
  %sub96 = sub nsw i64 %45, 3
  %46 = inttoptr i64 %sub96 to i8*
  %47 = bitcast i8* %46 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %47, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %48 = load i64, i64* %cdr, align 8
  store i64 %48, i64* %tem, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %49 = load i64, i64* @Vloads_in_progress, align 8
  call void @record_unwind_protect(void (i64)* @record_load_unwind, i64 %49)
  %50 = load i64, i64* %found, align 8
  %51 = load i64, i64* @Vloads_in_progress, align 8
  %call97 = call i64 @Fcons(i64 %50, i64 %51)
  store i64 %call97, i64* @Vloads_in_progress, align 8
  %call98 = call i64 @builtin_lisp_symbol(i32 614)
  %call99 = call i64 @builtin_lisp_symbol(i32 0)
  call void @specbind(i64 %call98, i64 %call99)
  %52 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 240), align 8
  %call100 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp101 = icmp eq i64 %52, %call100
  br i1 %cmp101, label %cond.false, label %cond.true

cond.true:                                        ; preds = %for.end
  %53 = load i64, i64* %file.addr, align 8
  %call103 = call i64 @Ffile_name_directory(i64 %53)
  %54 = load i64, i64* %found, align 8
  %call104 = call i64 @Ffile_name_nondirectory(i64 %54)
  %call105 = call i64 @concat2(i64 %call103, i64 %call104)
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %55 = load i64, i64* %found, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call105, %cond.true ], [ %55, %cond.false ]
  store i64 %cond, i64* %hist_file_name, align 8
  store i32 -1, i32* %version, align 4
  %call106 = call i64 @builtin_lisp_symbol(i32 715)
  %call107 = call i64 @builtin_lisp_symbol(i32 0)
  call void @specbind(i64 %call106, i64 %call107)
  %56 = load i64, i64* %file.addr, align 8
  call void @record_unwind_protect(void (i64)* @load_warn_old_style_backquotes, i64 %56)
  %57 = load i64, i64* %found, align 8
  %call108 = call zeroext i1 @suffix_p(i64 %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  br i1 %call108, label %if.then.117, label %lor.lhs.false.110

lor.lhs.false.110:                                ; preds = %cond.end
  %58 = load i32, i32* %fd, align 4
  %cmp111 = icmp sge i32 %58, 0
  br i1 %cmp111, label %land.lhs.true.113, label %if.else.176

land.lhs.true.113:                                ; preds = %lor.lhs.false.110
  %59 = load i32, i32* %fd, align 4
  %call114 = call i32 @safe_to_load_version(i32 %59)
  store i32 %call114, i32* %version, align 4
  %cmp115 = icmp sgt i32 %call114, 0
  br i1 %cmp115, label %if.then.117, label %if.else.176

if.then.117:                                      ; preds = %land.lhs.true.113, %cond.end
  %60 = load i32, i32* %fd, align 4
  %cmp118 = icmp ne i32 %60, -2
  br i1 %cmp118, label %if.then.120, label %if.end.175

if.then.120:                                      ; preds = %if.then.117
  %61 = load i32, i32* %version, align 4
  %cmp121 = icmp slt i32 %61, 0
  br i1 %cmp121, label %land.lhs.true.123, label %if.end.139

land.lhs.true.123:                                ; preds = %if.then.120
  %62 = load i32, i32* %fd, align 4
  %call124 = call i32 @safe_to_load_version(i32 %62)
  store i32 %call124, i32* %version, align 4
  %tobool125 = icmp ne i32 %call124, 0
  br i1 %tobool125, label %if.end.139, label %if.then.126

if.then.126:                                      ; preds = %land.lhs.true.123
  store i8 0, i8* %safe_p, align 1
  %63 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 464), align 1
  %tobool127 = trunc i8 %63 to i1
  br i1 %tobool127, label %if.else.130, label %if.then.128

if.then.128:                                      ; preds = %if.then.126
  %64 = load i64, i64* %found, align 8
  %call129 = call i8* @SDATA(i64 %64)
  call void (i8*, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0), i8* %call129) #9
  unreachable

if.else.130:                                      ; preds = %if.then.126
  %65 = load i64, i64* %nomessage.addr, align 8
  %call131 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp132 = icmp eq i64 %65, %call131
  br i1 %cmp132, label %if.end.137, label %land.lhs.true.134

land.lhs.true.134:                                ; preds = %if.else.130
  %66 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 441), align 1
  %tobool135 = trunc i8 %66 to i1
  br i1 %tobool135, label %if.end.137, label %if.then.136

if.then.136:                                      ; preds = %land.lhs.true.134
  %67 = load i64, i64* %found, align 8
  call void @message_with_string(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0), i64 %67, i1 zeroext true)
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.136, %land.lhs.true.134, %if.else.130
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %land.lhs.true.123, %if.then.120
  store i8 1, i8* %compiled, align 1
  %68 = load i64, i64* %found, align 8
  %call140 = call i64 @encode_file_name(i64 %68)
  store i64 %call140, i64* %efound, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8** %fmode, align 8
  %69 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 467), align 1
  %tobool141 = trunc i8 %69 to i1
  br i1 %tobool141, label %if.end.174, label %if.then.142

if.then.142:                                      ; preds = %if.end.139
  %70 = load i64, i64* %efound, align 8
  %call143 = call i8* @SSDATA(i64 %70)
  %call144 = call i32 @stat(i8* %call143, %struct.stat* %s1) #6
  store i32 %call144, i32* %result, align 4
  %71 = load i32, i32* %result, align 4
  %cmp145 = icmp eq i32 %71, 0
  br i1 %cmp145, label %if.then.147, label %if.end.154

if.then.147:                                      ; preds = %if.then.142
  %72 = load i64, i64* %efound, align 8
  %73 = load i64, i64* %efound, align 8
  %call148 = call i64 @SBYTES(i64 %73)
  %sub149 = sub nsw i64 %call148, 1
  call void @SSET(i64 %72, i64 %sub149, i8 zeroext 0)
  %74 = load i64, i64* %efound, align 8
  %call150 = call i8* @SSDATA(i64 %74)
  %call151 = call i32 @stat(i8* %call150, %struct.stat* %s2) #6
  store i32 %call151, i32* %result, align 4
  %75 = load i64, i64* %efound, align 8
  %76 = load i64, i64* %efound, align 8
  %call152 = call i64 @SBYTES(i64 %76)
  %sub153 = sub nsw i64 %call152, 1
  call void @SSET(i64 %75, i64 %sub153, i8 zeroext 99)
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.147, %if.then.142
  %77 = load i32, i32* %result, align 4
  %cmp155 = icmp eq i32 %77, 0
  br i1 %cmp155, label %land.lhs.true.157, label %if.end.173

land.lhs.true.157:                                ; preds = %if.end.154
  %call158 = call { i64, i64 } @get_stat_mtime(%struct.stat* %s1) #10
  %78 = bitcast %struct.timespec* %agg.tmp to { i64, i64 }*
  %79 = getelementptr { i64, i64 }, { i64, i64 }* %78, i32 0, i32 0
  %80 = extractvalue { i64, i64 } %call158, 0
  store i64 %80, i64* %79, align 8
  %81 = getelementptr { i64, i64 }, { i64, i64 }* %78, i32 0, i32 1
  %82 = extractvalue { i64, i64 } %call158, 1
  store i64 %82, i64* %81, align 8
  %call160 = call { i64, i64 } @get_stat_mtime(%struct.stat* %s2) #10
  %83 = bitcast %struct.timespec* %agg.tmp159 to { i64, i64 }*
  %84 = getelementptr { i64, i64 }, { i64, i64 }* %83, i32 0, i32 0
  %85 = extractvalue { i64, i64 } %call160, 0
  store i64 %85, i64* %84, align 8
  %86 = getelementptr { i64, i64 }, { i64, i64 }* %83, i32 0, i32 1
  %87 = extractvalue { i64, i64 } %call160, 1
  store i64 %87, i64* %86, align 8
  %88 = bitcast %struct.timespec* %agg.tmp to { i64, i64 }*
  %89 = getelementptr { i64, i64 }, { i64, i64 }* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 1
  %91 = getelementptr { i64, i64 }, { i64, i64 }* %88, i32 0, i32 1
  %92 = load i64, i64* %91, align 1
  %93 = bitcast %struct.timespec* %agg.tmp159 to { i64, i64 }*
  %94 = getelementptr { i64, i64 }, { i64, i64 }* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 1
  %96 = getelementptr { i64, i64 }, { i64, i64 }* %93, i32 0, i32 1
  %97 = load i64, i64* %96, align 1
  %call161 = call i32 @timespec_cmp(i64 %90, i64 %92, i64 %95, i64 %97) #10
  %cmp162 = icmp slt i32 %call161, 0
  br i1 %cmp162, label %if.then.164, label %if.end.173

if.then.164:                                      ; preds = %land.lhs.true.157
  store i8 1, i8* %newer, align 1
  %98 = load i64, i64* %nomessage.addr, align 8
  %call165 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp166 = icmp eq i64 %98, %call165
  br i1 %cmp166, label %if.end.172, label %land.lhs.true.168

land.lhs.true.168:                                ; preds = %if.then.164
  %99 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 441), align 1
  %tobool169 = trunc i8 %99 to i1
  br i1 %tobool169, label %if.end.172, label %if.then.170

if.then.170:                                      ; preds = %land.lhs.true.168
  %100 = load i64, i64* %found, align 8
  %call171 = call i64 @Fsubstring(i64 %100, i64 2, i64 -2)
  store i64 %call171, i64* %msg_file, align 8
  %101 = load i64, i64* %msg_file, align 8
  call void @message_with_string(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i32 0, i32 0), i64 %101, i1 zeroext true)
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.170, %land.lhs.true.168, %if.then.164
  br label %if.end.173

if.end.173:                                       ; preds = %if.end.172, %land.lhs.true.157, %if.end.154
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173, %if.end.139
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174, %if.then.117
  br label %if.end.211

if.else.176:                                      ; preds = %land.lhs.true.113, %lor.lhs.false.110
  %102 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 166), align 8
  %call177 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp178 = icmp eq i64 %102, %call177
  br i1 %cmp178, label %if.end.210, label %if.then.180

if.then.180:                                      ; preds = %if.else.176
  %103 = load i32, i32* %fd, align 4
  %cmp181 = icmp sge i32 %103, 0
  br i1 %cmp181, label %if.then.183, label %if.end.186

if.then.183:                                      ; preds = %if.then.180
  %104 = load i32, i32* %fd, align 4
  %call184 = call i32 @emacs_close(i32 %104)
  %105 = load i32, i32* %fd_index, align 4
  %conv185 = sext i32 %105 to i64
  call void @clear_unwind_protect(i64 %conv185)
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.183, %if.then.180
  %106 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 166), align 8
  %107 = load i64, i64* %found, align 8
  %108 = load i64, i64* %hist_file_name, align 8
  %109 = load i64, i64* %noerror.addr, align 8
  %call187 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp188 = icmp eq i64 %109, %call187
  br i1 %cmp188, label %cond.true.190, label %cond.false.192

cond.true.190:                                    ; preds = %if.end.186
  %call191 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.194

cond.false.192:                                   ; preds = %if.end.186
  %call193 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.194

cond.end.194:                                     ; preds = %cond.false.192, %cond.true.190
  %cond195 = phi i64 [ %call191, %cond.true.190 ], [ %call193, %cond.false.192 ]
  %110 = load i64, i64* %nomessage.addr, align 8
  %call196 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp197 = icmp eq i64 %110, %call196
  br i1 %cmp197, label %cond.true.202, label %lor.lhs.false.199

lor.lhs.false.199:                                ; preds = %cond.end.194
  %111 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 441), align 1
  %tobool200 = trunc i8 %111 to i1
  br i1 %tobool200, label %cond.true.202, label %cond.false.204

cond.true.202:                                    ; preds = %lor.lhs.false.199, %cond.end.194
  %call203 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.206

cond.false.204:                                   ; preds = %lor.lhs.false.199
  %call205 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.206

cond.end.206:                                     ; preds = %cond.false.204, %cond.true.202
  %cond207 = phi i64 [ %call203, %cond.true.202 ], [ %call205, %cond.false.204 ]
  %call208 = call i64 @call4(i64 %106, i64 %107, i64 %108, i64 %cond195, i64 %cond207)
  store i64 %call208, i64* %val, align 8
  %112 = load i64, i64* %count, align 8
  %113 = load i64, i64* %val, align 8
  %call209 = call i64 @unbind_to(i64 %112, i64 %113)
  store i64 %call209, i64* %retval
  br label %return

if.end.210:                                       ; preds = %if.else.176
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.210, %if.end.175
  %114 = load i32, i32* %fd, align 4
  %cmp212 = icmp slt i32 %114, 0
  br i1 %cmp212, label %if.then.214, label %if.else.216

if.then.214:                                      ; preds = %if.end.211
  store %struct._IO_FILE* null, %struct._IO_FILE** %stream, align 8
  %call215 = call i32* @__errno_location() #8
  store i32 22, i32* %call215, align 4
  br label %if.end.218

if.else.216:                                      ; preds = %if.end.211
  %115 = load i32, i32* %fd, align 4
  %116 = load i8*, i8** %fmode, align 8
  %call217 = call %struct._IO_FILE* @fdopen(i32 %115, i8* %116) #6
  store %struct._IO_FILE* %call217, %struct._IO_FILE** %stream, align 8
  br label %if.end.218

if.end.218:                                       ; preds = %if.else.216, %if.then.214
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %tobool219 = icmp ne %struct._IO_FILE* %117, null
  br i1 %tobool219, label %if.end.221, label %if.then.220

if.then.220:                                      ; preds = %if.end.218
  %118 = load i64, i64* %file.addr, align 8
  call void @report_file_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), i64 %118) #9
  unreachable

if.end.221:                                       ; preds = %if.end.218
  %119 = load i32, i32* %fd_index, align 4
  %conv222 = sext i32 %119 to i64
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %121 = bitcast %struct._IO_FILE* %120 to i8*
  call void @set_unwind_protect_ptr(i64 %conv222, void (i8*)* @fclose_unwind, i8* %121)
  %122 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 240), align 8
  %call223 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp224 = icmp eq i64 %122, %call223
  br i1 %cmp224, label %if.end.229, label %if.then.226

if.then.226:                                      ; preds = %if.end.221
  %123 = load i64, i64* %file.addr, align 8
  %call227 = call i64 @Fpurecopy(i64 %123)
  %124 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 225), align 8
  %call228 = call i64 @Fcons(i64 %call227, i64 %124)
  store i64 %call228, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 225), align 8
  br label %if.end.229

if.end.229:                                       ; preds = %if.then.226, %if.end.221
  %125 = load i64, i64* %nomessage.addr, align 8
  %call230 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp231 = icmp eq i64 %125, %call230
  br i1 %cmp231, label %if.then.236, label %lor.lhs.false.233

lor.lhs.false.233:                                ; preds = %if.end.229
  %126 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 441), align 1
  %tobool234 = trunc i8 %126 to i1
  br i1 %tobool234, label %if.then.236, label %if.end.249

if.then.236:                                      ; preds = %lor.lhs.false.233, %if.end.229
  %127 = load i8, i8* %safe_p, align 1
  %tobool237 = trunc i8 %127 to i1
  br i1 %tobool237, label %if.else.239, label %if.then.238

if.then.238:                                      ; preds = %if.then.236
  %128 = load i64, i64* %file.addr, align 8
  call void @message_with_string(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i32 0, i32 0), i64 %128, i1 zeroext true)
  br label %if.end.248

if.else.239:                                      ; preds = %if.then.236
  %129 = load i8, i8* %compiled, align 1
  %tobool240 = trunc i8 %129 to i1
  br i1 %tobool240, label %if.else.242, label %if.then.241

if.then.241:                                      ; preds = %if.else.239
  %130 = load i64, i64* %file.addr, align 8
  call void @message_with_string(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), i64 %130, i1 zeroext true)
  br label %if.end.247

if.else.242:                                      ; preds = %if.else.239
  %131 = load i8, i8* %newer, align 1
  %tobool243 = trunc i8 %131 to i1
  br i1 %tobool243, label %if.then.244, label %if.else.245

if.then.244:                                      ; preds = %if.else.242
  %132 = load i64, i64* %file.addr, align 8
  call void @message_with_string(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i32 0, i32 0), i64 %132, i1 zeroext true)
  br label %if.end.246

if.else.245:                                      ; preds = %if.else.242
  %133 = load i64, i64* %file.addr, align 8
  call void @message_with_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i64 %133, i1 zeroext true)
  br label %if.end.246

if.end.246:                                       ; preds = %if.else.245, %if.then.244
  br label %if.end.247

if.end.247:                                       ; preds = %if.end.246, %if.then.241
  br label %if.end.248

if.end.248:                                       ; preds = %if.end.247, %if.then.238
  br label %if.end.249

if.end.249:                                       ; preds = %if.end.248, %lor.lhs.false.233
  %call250 = call i64 @builtin_lisp_symbol(i32 629)
  %134 = load i64, i64* %found, align 8
  call void @specbind(i64 %call250, i64 %134)
  %call251 = call i64 @builtin_lisp_symbol(i32 541)
  %call252 = call i64 @builtin_lisp_symbol(i32 0)
  call void @specbind(i64 %call251, i64 %call252)
  %call253 = call i64 @builtin_lisp_symbol(i32 631)
  %call254 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call253, i64 %call254)
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  store %struct._IO_FILE* %135, %struct._IO_FILE** @instream, align 8
  %call255 = call i64 @builtin_lisp_symbol(i32 486)
  %call256 = call zeroext i1 @lisp_file_lexically_bound_p(i64 %call255)
  br i1 %call256, label %if.then.257, label %if.end.261

if.then.257:                                      ; preds = %if.end.249
  %call258 = call i64 @builtin_lisp_symbol(i32 614)
  %call259 = call i64 @builtin_lisp_symbol(i32 901)
  %call260 = call i64 @Fset(i64 %call258, i64 %call259)
  br label %if.end.261

if.end.261:                                       ; preds = %if.then.257, %if.end.249
  %136 = load i32, i32* %version, align 4
  %tobool262 = icmp ne i32 %136, 0
  br i1 %tobool262, label %lor.lhs.false.263, label %if.then.266

lor.lhs.false.263:                                ; preds = %if.end.261
  %137 = load i32, i32* %version, align 4
  %cmp264 = icmp sge i32 %137, 22
  br i1 %cmp264, label %if.then.266, label %if.else.272

if.then.266:                                      ; preds = %lor.lhs.false.263, %if.end.261
  %call267 = call i64 @builtin_lisp_symbol(i32 486)
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %139 = load i64, i64* %hist_file_name, align 8
  %call268 = call i64 @builtin_lisp_symbol(i32 0)
  %call269 = call i64 @builtin_lisp_symbol(i32 0)
  %call270 = call i64 @builtin_lisp_symbol(i32 0)
  %call271 = call i64 @builtin_lisp_symbol(i32 0)
  call void @readevalloop(i64 %call267, %struct._IO_FILE* %138, i64 %139, i1 zeroext false, i64 %call268, i64 %call269, i64 %call270, i64 %call271)
  br label %if.end.280

if.else.272:                                      ; preds = %lor.lhs.false.263
  %call273 = call i64 @builtin_lisp_symbol(i32 630)
  %call274 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call273, i64 %call274)
  %call275 = call i64 @builtin_lisp_symbol(i32 484)
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %141 = load i64, i64* %hist_file_name, align 8
  %call276 = call i64 @builtin_lisp_symbol(i32 0)
  %call277 = call i64 @builtin_lisp_symbol(i32 0)
  %call278 = call i64 @builtin_lisp_symbol(i32 0)
  %call279 = call i64 @builtin_lisp_symbol(i32 0)
  call void @readevalloop(i64 %call275, %struct._IO_FILE* %140, i64 %141, i1 zeroext false, i64 %call276, i64 %call277, i64 %call278, i64 %call279)
  br label %if.end.280

if.end.280:                                       ; preds = %if.else.272, %if.then.266
  %142 = load i64, i64* %count, align 8
  %call281 = call i64 @builtin_lisp_symbol(i32 0)
  %call282 = call i64 @unbind_to(i64 %142, i64 %call281)
  %call283 = call i64 @builtin_lisp_symbol(i32 348)
  %call284 = call i64 @Ffboundp(i64 %call283)
  %call285 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp286 = icmp eq i64 %call284, %call285
  br i1 %cmp286, label %if.end.291, label %if.then.288

if.then.288:                                      ; preds = %if.end.280
  %call289 = call i64 @builtin_lisp_symbol(i32 348)
  %143 = load i64, i64* %hist_file_name, align 8
  %call290 = call i64 @call1(i64 %call289, i64 %143)
  br label %if.end.291

if.end.291:                                       ; preds = %if.then.288, %if.end.280
  %144 = load i8*, i8** @saved_doc_string, align 8
  call void @xfree(i8* %144)
  store i8* null, i8** @saved_doc_string, align 8
  store i64 0, i64* @saved_doc_string_size, align 8
  %145 = load i8*, i8** @prev_saved_doc_string, align 8
  call void @xfree(i8* %145)
  store i8* null, i8** @prev_saved_doc_string, align 8
  store i64 0, i64* @prev_saved_doc_string_size, align 8
  %146 = load i8, i8* @noninteractive, align 1
  %tobool292 = trunc i8 %146 to i1
  br i1 %tobool292, label %if.end.313, label %land.lhs.true.293

land.lhs.true.293:                                ; preds = %if.end.291
  %147 = load i64, i64* %nomessage.addr, align 8
  %call294 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp295 = icmp eq i64 %147, %call294
  br i1 %cmp295, label %if.then.300, label %lor.lhs.false.297

lor.lhs.false.297:                                ; preds = %land.lhs.true.293
  %148 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 441), align 1
  %tobool298 = trunc i8 %148 to i1
  br i1 %tobool298, label %if.then.300, label %if.end.313

if.then.300:                                      ; preds = %lor.lhs.false.297, %land.lhs.true.293
  %149 = load i8, i8* %safe_p, align 1
  %tobool301 = trunc i8 %149 to i1
  br i1 %tobool301, label %if.else.303, label %if.then.302

if.then.302:                                      ; preds = %if.then.300
  %150 = load i64, i64* %file.addr, align 8
  call void @message_with_string(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.14, i32 0, i32 0), i64 %150, i1 zeroext true)
  br label %if.end.312

if.else.303:                                      ; preds = %if.then.300
  %151 = load i8, i8* %compiled, align 1
  %tobool304 = trunc i8 %151 to i1
  br i1 %tobool304, label %if.else.306, label %if.then.305

if.then.305:                                      ; preds = %if.else.303
  %152 = load i64, i64* %file.addr, align 8
  call void @message_with_string(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i32 0, i32 0), i64 %152, i1 zeroext true)
  br label %if.end.311

if.else.306:                                      ; preds = %if.else.303
  %153 = load i8, i8* %newer, align 1
  %tobool307 = trunc i8 %153 to i1
  br i1 %tobool307, label %if.then.308, label %if.else.309

if.then.308:                                      ; preds = %if.else.306
  %154 = load i64, i64* %file.addr, align 8
  call void @message_with_string(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.16, i32 0, i32 0), i64 %154, i1 zeroext true)
  br label %if.end.310

if.else.309:                                      ; preds = %if.else.306
  %155 = load i64, i64* %file.addr, align 8
  call void @message_with_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i64 %155, i1 zeroext true)
  br label %if.end.310

if.end.310:                                       ; preds = %if.else.309, %if.then.308
  br label %if.end.311

if.end.311:                                       ; preds = %if.end.310, %if.then.305
  br label %if.end.312

if.end.312:                                       ; preds = %if.end.311, %if.then.302
  br label %if.end.313

if.end.313:                                       ; preds = %if.end.312, %lor.lhs.false.297, %if.end.291
  %call314 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call314, i64* %retval
  br label %return

return:                                           ; preds = %if.end.313, %cond.end.206, %if.then.73, %if.end.52, %if.then.6
  %156 = load i64, i64* %retval
  ret i64 %156
}

declare i64 @SPECPDL_INDEX() #1

declare void @CHECK_STRING(i64) #1

declare i64 @internal_condition_case_1(i64 (i64)*, i64, i64, i64 (i64)*) #1

declare i64 @Fsubstitute_in_file_name(i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @load_error_handler(i64 %data) #0 {
entry:
  %data.addr = alloca i64, align 8
  store i64 %data, i64* %data.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call
}

declare i64 @SCHARS(i64) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @suffix_p(i64 %string, i8* %suffix) #0 {
entry:
  %string.addr = alloca i64, align 8
  %suffix.addr = alloca i8*, align 8
  %suffix_len = alloca i64, align 8
  %string_len = alloca i64, align 8
  store i64 %string, i64* %string.addr, align 8
  store i8* %suffix, i8** %suffix.addr, align 8
  %0 = load i8*, i8** %suffix.addr, align 8
  %call = call i64 @strlen(i8* %0) #10
  store i64 %call, i64* %suffix_len, align 8
  %1 = load i64, i64* %string.addr, align 8
  %call1 = call i64 @SBYTES(i64 %1)
  store i64 %call1, i64* %string_len, align 8
  %2 = load i64, i64* %string_len, align 8
  %3 = load i64, i64* %suffix_len, align 8
  %cmp = icmp sge i64 %2, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %4 = load i64, i64* %string.addr, align 8
  %call2 = call i8* @SSDATA(i64 %4)
  %5 = load i64, i64* %string_len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %call2, i64 %5
  %6 = load i64, i64* %suffix_len, align 8
  %idx.neg = sub i64 0, %6
  %add.ptr3 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %7 = load i8*, i8** %suffix.addr, align 8
  %call4 = call i32 @strcmp(i8* %add.ptr3, i8* %7) #10
  %tobool = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %8 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  ret i1 %8
}

declare i64 @Ffile_name_directory(i64) #1

declare i64 @Fappend(i64, i64*) #1

; Function Attrs: nounwind uwtable
define i32 @openp(i64 %path, i64 %str, i64 %suffixes, i64* %storeptr, i64 %predicate, i1 zeroext %newer) #0 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca i64, align 8
  %str.addr = alloca i64, align 8
  %suffixes.addr = alloca i64, align 8
  %storeptr.addr = alloca i64*, align 8
  %predicate.addr = alloca i64, align 8
  %newer.addr = alloca i8, align 1
  %fn_size = alloca i64, align 8
  %buf = alloca [100 x i8], align 16
  %fn = alloca i8*, align 8
  %absolute = alloca i8, align 1
  %want_length = alloca i64, align 8
  %filename = alloca i64, align 8
  %string = alloca i64, align 8
  %tail = alloca i64, align 8
  %encoded_fn = alloca i64, align 8
  %save_string = alloca i64, align 8
  %max_suffix_len = alloca i64, align 8
  %last_errno = alloca i32, align 4
  %save_fd = alloca i32, align 4
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %save_mtime = alloca %struct.timespec, align 8
  %suffix = alloca i64, align 8
  %fnlen = alloca i64, align 8
  %lsuffix = alloca i64, align 8
  %handler = alloca i64, align 8
  %prefixlen = alloca i32, align 4
  %exists = alloca i8, align 1
  %tmp = alloca i64, align 8
  %fd = alloca i32, align 4
  %pfn = alloca i8*, align 8
  %st = alloca %struct.stat, align 8
  %oflags = alloca i32, align 4
  %err = alloca i32, align 4
  %mtime = alloca %struct.timespec, align 8
  store i64 %path, i64* %path.addr, align 8
  store i64 %str, i64* %str.addr, align 8
  store i64 %suffixes, i64* %suffixes.addr, align 8
  store i64* %storeptr, i64** %storeptr.addr, align 8
  store i64 %predicate, i64* %predicate.addr, align 8
  %frombool = zext i1 %newer to i8
  store i8 %frombool, i8* %newer.addr, align 1
  store i64 100, i64* %fn_size, align 8
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay, i8** %fn, align 8
  store i64 0, i64* %max_suffix_len, align 8
  store i32 2, i32* %last_errno, align 4
  store i32 -1, i32* %save_fd, align 4
  store i64 16384, i64* %sa_avail, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %call1 = call { i64, i64 } @make_timespec(i64 -9223372036854775808, i64 -1)
  %0 = bitcast %struct.timespec* %save_mtime to { i64, i64 }*
  %1 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %2 = extractvalue { i64, i64 } %call1, 0
  store i64 %2, i64* %1, align 8
  %3 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %4 = extractvalue { i64, i64 } %call1, 1
  store i64 %4, i64* %3, align 8
  %5 = load i64, i64* %str.addr, align 8
  call void @CHECK_STRING(i64 %5)
  %6 = load i64, i64* %suffixes.addr, align 8
  store i64 %6, i64* %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i64, i64* %tail, align 8
  %and = and i64 %7, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i64, i64* %tail, align 8
  call void @CHECK_STRING_CAR(i64 %8)
  %9 = load i64, i64* %max_suffix_len, align 8
  %10 = load i64, i64* %tail, align 8
  %sub = sub nsw i64 %10, 3
  %11 = inttoptr i64 %sub to i8*
  %12 = bitcast i8* %11 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %12, i32 0, i32 0
  %13 = load i64, i64* %car, align 8
  %call3 = call i64 @SBYTES(i64 %13)
  %cmp4 = icmp sgt i64 %9, %call3
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %14 = load i64, i64* %max_suffix_len, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %15 = load i64, i64* %tail, align 8
  %sub6 = sub nsw i64 %15, 3
  %16 = inttoptr i64 %sub6 to i8*
  %17 = bitcast i8* %16 to %struct.Lisp_Cons*
  %car7 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %17, i32 0, i32 0
  %18 = load i64, i64* %car7, align 8
  %call8 = call i64 @SBYTES(i64 %18)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %14, %cond.true ], [ %call8, %cond.false ]
  store i64 %cond, i64* %max_suffix_len, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %19 = load i64, i64* %tail, align 8
  %sub9 = sub nsw i64 %19, 3
  %20 = inttoptr i64 %sub9 to i8*
  %21 = bitcast i8* %20 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %21, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %22 = load i64, i64* %cdr, align 8
  store i64 %22, i64* %tail, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call10, i64* %save_string, align 8
  store i64 %call10, i64* %encoded_fn, align 8
  store i64 %call10, i64* %filename, align 8
  store i64 %call10, i64* %string, align 8
  %23 = load i64*, i64** %storeptr.addr, align 8
  %tobool = icmp ne i64* %23, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  %24 = load i64*, i64** %storeptr.addr, align 8
  store i64 %call11, i64* %24, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %25 = load i64, i64* %str.addr, align 8
  %call12 = call zeroext i1 @complete_filename_p(i64 %25)
  %frombool13 = zext i1 %call12 to i8
  store i8 %frombool13, i8* %absolute, align 1
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.274, %if.end
  %26 = load i64, i64* %path.addr, align 8
  %and15 = and i64 %26, 7
  %conv16 = trunc i64 %and15 to i32
  %cmp17 = icmp eq i32 %conv16, 3
  br i1 %cmp17, label %for.body.19, label %for.end.278

for.body.19:                                      ; preds = %for.cond.14
  %27 = load i64, i64* %str.addr, align 8
  %28 = load i64, i64* %path.addr, align 8
  %sub20 = sub nsw i64 %28, 3
  %29 = inttoptr i64 %sub20 to i8*
  %30 = bitcast i8* %29 to %struct.Lisp_Cons*
  %car21 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %30, i32 0, i32 0
  %31 = load i64, i64* %car21, align 8
  %call22 = call i64 @Fexpand_file_name(i64 %27, i64 %31)
  store i64 %call22, i64* %filename, align 8
  %32 = load i64, i64* %filename, align 8
  %call23 = call zeroext i1 @complete_filename_p(i64 %32)
  br i1 %call23, label %if.end.29, label %if.then.24

if.then.24:                                       ; preds = %for.body.19
  %33 = load i64, i64* %filename, align 8
  %34 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %directory_ = getelementptr inbounds %struct.buffer, %struct.buffer* %34, i32 0, i32 3
  %35 = load i64, i64* %directory_, align 8
  %call25 = call i64 @Fexpand_file_name(i64 %33, i64 %35)
  store i64 %call25, i64* %filename, align 8
  %36 = load i64, i64* %filename, align 8
  %call26 = call zeroext i1 @complete_filename_p(i64 %36)
  br i1 %call26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %if.then.24
  br label %for.inc.274

if.end.28:                                        ; preds = %if.then.24
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %for.body.19
  %37 = load i64, i64* %max_suffix_len, align 8
  %38 = load i64, i64* %filename, align 8
  %call30 = call i64 @SBYTES(i64 %38)
  %add = add nsw i64 %37, %call30
  store i64 %add, i64* %want_length, align 8
  %39 = load i64, i64* %fn_size, align 8
  %40 = load i64, i64* %want_length, align 8
  %cmp31 = icmp sle i64 %39, %40
  br i1 %cmp31, label %if.then.33, label %if.end.43

if.then.33:                                       ; preds = %if.end.29
  %41 = load i64, i64* %want_length, align 8
  %add34 = add nsw i64 100, %41
  store i64 %add34, i64* %fn_size, align 8
  %42 = load i64, i64* %fn_size, align 8
  %43 = load i64, i64* %sa_avail, align 8
  %cmp35 = icmp sle i64 %42, %43
  br i1 %cmp35, label %cond.true.37, label %cond.false.39

cond.true.37:                                     ; preds = %if.then.33
  %44 = load i64, i64* %fn_size, align 8
  %45 = load i64, i64* %sa_avail, align 8
  %sub38 = sub nsw i64 %45, %44
  store i64 %sub38, i64* %sa_avail, align 8
  %46 = load i64, i64* %fn_size, align 8
  %47 = alloca i8, i64 %46
  br label %cond.end.41

cond.false.39:                                    ; preds = %if.then.33
  store i8 1, i8* %sa_must_free, align 1
  %48 = load i64, i64* %fn_size, align 8
  %call40 = call i8* @record_xmalloc(i64 %48)
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.39, %cond.true.37
  %cond42 = phi i8* [ %47, %cond.true.37 ], [ %call40, %cond.false.39 ]
  store i8* %cond42, i8** %fn, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %cond.end.41, %if.end.29
  %49 = load i64, i64* %suffixes.addr, align 8
  %call44 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp45 = icmp eq i64 %49, %call44
  br i1 %cmp45, label %cond.true.47, label %cond.false.49

cond.true.47:                                     ; preds = %if.end.43
  %50 = load i64, i64* @empty_unibyte_string, align 8
  %call48 = call i64 @list1(i64 %50)
  br label %cond.end.50

cond.false.49:                                    ; preds = %if.end.43
  %51 = load i64, i64* %suffixes.addr, align 8
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.49, %cond.true.47
  %cond51 = phi i64 [ %call48, %cond.true.47 ], [ %51, %cond.false.49 ]
  store i64 %cond51, i64* %tail, align 8
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.266, %cond.end.50
  %52 = load i64, i64* %tail, align 8
  %and53 = and i64 %52, 7
  %conv54 = trunc i64 %and53 to i32
  %cmp55 = icmp eq i32 %conv54, 3
  br i1 %cmp55, label %for.body.57, label %for.end.270

for.body.57:                                      ; preds = %for.cond.52
  %53 = load i64, i64* %tail, align 8
  %sub58 = sub nsw i64 %53, 3
  %54 = inttoptr i64 %sub58 to i8*
  %55 = bitcast i8* %54 to %struct.Lisp_Cons*
  %car59 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %55, i32 0, i32 0
  %56 = load i64, i64* %car59, align 8
  store i64 %56, i64* %suffix, align 8
  %57 = load i64, i64* %suffix, align 8
  %call60 = call i64 @SBYTES(i64 %57)
  store i64 %call60, i64* %lsuffix, align 8
  %58 = load i64, i64* %filename, align 8
  %call61 = call i64 @SCHARS(i64 %58)
  %cmp62 = icmp sgt i64 %call61, 2
  br i1 %cmp62, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.body.57
  %59 = load i64, i64* %filename, align 8
  %call64 = call zeroext i8 @SREF(i64 %59, i64 0)
  %conv65 = zext i8 %call64 to i32
  %cmp66 = icmp eq i32 %conv65, 47
  br i1 %cmp66, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %60 = load i64, i64* %filename, align 8
  %call68 = call zeroext i8 @SREF(i64 %60, i64 1)
  %conv69 = zext i8 %call68 to i32
  %cmp70 = icmp eq i32 %conv69, 58
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %for.body.57
  %61 = phi i1 [ false, %land.lhs.true ], [ false, %for.body.57 ], [ %cmp70, %land.rhs ]
  %cond72 = select i1 %61, i32 2, i32 0
  store i32 %cond72, i32* %prefixlen, align 4
  %62 = load i64, i64* %filename, align 8
  %call73 = call i64 @SBYTES(i64 %62)
  %63 = load i32, i32* %prefixlen, align 4
  %conv74 = sext i32 %63 to i64
  %sub75 = sub nsw i64 %call73, %conv74
  store i64 %sub75, i64* %fnlen, align 8
  %64 = load i8*, i8** %fn, align 8
  %65 = load i64, i64* %filename, align 8
  %call76 = call i8* @SDATA(i64 %65)
  %66 = load i32, i32* %prefixlen, align 4
  %idx.ext = sext i32 %66 to i64
  %add.ptr = getelementptr inbounds i8, i8* %call76, i64 %idx.ext
  %67 = load i64, i64* %fnlen, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %add.ptr, i64 %67, i32 1, i1 false)
  %68 = load i8*, i8** %fn, align 8
  %69 = load i64, i64* %fnlen, align 8
  %add.ptr77 = getelementptr inbounds i8, i8* %68, i64 %69
  %70 = load i64, i64* %suffix, align 8
  %call78 = call i8* @SDATA(i64 %70)
  %71 = load i64, i64* %lsuffix, align 8
  %add79 = add nsw i64 %71, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr77, i8* %call78, i64 %add79, i32 1, i1 false)
  %72 = load i64, i64* %lsuffix, align 8
  %73 = load i64, i64* %fnlen, align 8
  %add80 = add nsw i64 %73, %72
  store i64 %add80, i64* %fnlen, align 8
  %74 = load i64, i64* %filename, align 8
  %call81 = call zeroext i1 @STRING_MULTIBYTE(i64 %74)
  br i1 %call81, label %if.else, label %land.lhs.true.82

land.lhs.true.82:                                 ; preds = %land.end
  %75 = load i64, i64* %suffix, align 8
  %call83 = call zeroext i1 @STRING_MULTIBYTE(i64 %75)
  br i1 %call83, label %if.else, label %if.then.84

if.then.84:                                       ; preds = %land.lhs.true.82
  %76 = load i8*, i8** %fn, align 8
  %77 = load i64, i64* %fnlen, align 8
  %call85 = call i64 @make_unibyte_string(i8* %76, i64 %77)
  store i64 %call85, i64* %string, align 8
  br label %if.end.87

if.else:                                          ; preds = %land.lhs.true.82, %land.end
  %78 = load i8*, i8** %fn, align 8
  %79 = load i64, i64* %fnlen, align 8
  %call86 = call i64 @make_string(i8* %78, i64 %79)
  store i64 %call86, i64* %string, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.else, %if.then.84
  %80 = load i64, i64* %string, align 8
  %call88 = call i64 @builtin_lisp_symbol(i32 413)
  %call89 = call i64 @Ffind_file_name_handler(i64 %80, i64 %call88)
  store i64 %call89, i64* %handler, align 8
  %81 = load i64, i64* %handler, align 8
  %call90 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp91 = icmp eq i64 %81, %call90
  br i1 %cmp91, label %lor.lhs.false, label %land.lhs.true.100

lor.lhs.false:                                    ; preds = %if.end.87
  %82 = load i64, i64* %predicate.addr, align 8
  %call93 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp94 = icmp eq i64 %82, %call93
  br i1 %cmp94, label %if.else.147, label %land.lhs.true.96

land.lhs.true.96:                                 ; preds = %lor.lhs.false
  %83 = load i64, i64* %predicate.addr, align 8
  %call97 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp98 = icmp eq i64 %83, %call97
  br i1 %cmp98, label %if.else.147, label %land.lhs.true.100

land.lhs.true.100:                                ; preds = %land.lhs.true.96, %if.end.87
  %84 = load i64, i64* %predicate.addr, align 8
  %call101 = call zeroext i1 @NATNUMP(i64 %84)
  br i1 %call101, label %if.else.147, label %if.then.102

if.then.102:                                      ; preds = %land.lhs.true.100
  %85 = load i64, i64* %predicate.addr, align 8
  %call103 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp104 = icmp eq i64 %85, %call103
  br i1 %cmp104, label %if.then.110, label %lor.lhs.false.106

lor.lhs.false.106:                                ; preds = %if.then.102
  %86 = load i64, i64* %predicate.addr, align 8
  %call107 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp108 = icmp eq i64 %86, %call107
  br i1 %cmp108, label %if.then.110, label %if.else.116

if.then.110:                                      ; preds = %lor.lhs.false.106, %if.then.102
  %87 = load i64, i64* %string, align 8
  %call111 = call i64 @Ffile_readable_p(i64 %87)
  %call112 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp113 = icmp eq i64 %call111, %call112
  %lnot = xor i1 %cmp113, true
  %frombool115 = zext i1 %lnot to i8
  store i8 %frombool115, i8* %exists, align 1
  br label %if.end.135

if.else.116:                                      ; preds = %lor.lhs.false.106
  %88 = load i64, i64* %predicate.addr, align 8
  %89 = load i64, i64* %string, align 8
  %call117 = call i64 @call1(i64 %88, i64 %89)
  store i64 %call117, i64* %tmp, align 8
  %90 = load i64, i64* %tmp, align 8
  %call118 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp119 = icmp eq i64 %90, %call118
  br i1 %cmp119, label %if.then.121, label %if.else.122

if.then.121:                                      ; preds = %if.else.116
  store i8 0, i8* %exists, align 1
  br label %if.end.134

if.else.122:                                      ; preds = %if.else.116
  %91 = load i64, i64* %tmp, align 8
  %call123 = call i64 @builtin_lisp_symbol(i32 339)
  %cmp124 = icmp eq i64 %91, %call123
  br i1 %cmp124, label %if.then.131, label %lor.lhs.false.126

lor.lhs.false.126:                                ; preds = %if.else.122
  %92 = load i64, i64* %string, align 8
  %call127 = call i64 @Ffile_directory_p(i64 %92)
  %call128 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp129 = icmp eq i64 %call127, %call128
  br i1 %cmp129, label %if.then.131, label %if.else.132

if.then.131:                                      ; preds = %lor.lhs.false.126, %if.else.122
  store i8 1, i8* %exists, align 1
  br label %if.end.133

if.else.132:                                      ; preds = %lor.lhs.false.126
  store i8 0, i8* %exists, align 1
  store i32 21, i32* %last_errno, align 4
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.132, %if.then.131
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.then.121
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.then.110
  %93 = load i8, i8* %exists, align 1
  %tobool136 = trunc i8 %93 to i1
  br i1 %tobool136, label %if.then.137, label %if.end.146

if.then.137:                                      ; preds = %if.end.135
  %94 = load i64*, i64** %storeptr.addr, align 8
  %tobool138 = icmp ne i64* %94, null
  br i1 %tobool138, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %if.then.137
  %95 = load i64, i64* %string, align 8
  %96 = load i64*, i64** %storeptr.addr, align 8
  store i64 %95, i64* %96, align 8
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.139, %if.then.137
  br label %do.body

do.body:                                          ; preds = %if.end.140
  %97 = load i8, i8* %sa_must_free, align 1
  %tobool141 = trunc i8 %97 to i1
  br i1 %tobool141, label %if.then.142, label %if.end.145

if.then.142:                                      ; preds = %do.body
  store i8 0, i8* %sa_must_free, align 1
  %98 = load i64, i64* %sa_count, align 8
  %call143 = call i64 @builtin_lisp_symbol(i32 0)
  %call144 = call i64 @unbind_to(i64 %98, i64 %call143)
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.142, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.145
  store i32 -2, i32* %retval
  br label %return

if.end.146:                                       ; preds = %if.end.135
  br label %if.end.265

if.else.147:                                      ; preds = %land.lhs.true.100, %land.lhs.true.96, %lor.lhs.false
  %99 = load i64, i64* %string, align 8
  %call151 = call i64 @encode_file_name(i64 %99)
  store i64 %call151, i64* %encoded_fn, align 8
  %100 = load i64, i64* %encoded_fn, align 8
  %call152 = call i8* @SSDATA(i64 %100)
  store i8* %call152, i8** %pfn, align 8
  %101 = load i64, i64* %predicate.addr, align 8
  %call153 = call zeroext i1 @NATNUMP(i64 %101)
  br i1 %call153, label %if.then.154, label %if.else.171

if.then.154:                                      ; preds = %if.else.147
  store i32 -1, i32* %fd, align 4
  %102 = load i64, i64* %predicate.addr, align 8
  %shr = ashr i64 %102, 2
  %cmp155 = icmp slt i64 2147483647, %shr
  br i1 %cmp155, label %if.then.157, label %if.else.158

if.then.157:                                      ; preds = %if.then.154
  store i32 22, i32* %last_errno, align 4
  br label %if.end.170

if.else.158:                                      ; preds = %if.then.154
  %103 = load i8*, i8** %pfn, align 8
  %104 = load i64, i64* %predicate.addr, align 8
  %shr159 = ashr i64 %104, 2
  %conv160 = trunc i64 %shr159 to i32
  %call161 = call i32 @faccessat(i32 -100, i8* %103, i32 %conv160, i32 512) #6
  %cmp162 = icmp eq i32 %call161, 0
  br i1 %cmp162, label %if.then.164, label %if.end.169

if.then.164:                                      ; preds = %if.else.158
  %105 = load i8*, i8** %pfn, align 8
  %call165 = call zeroext i1 @file_directory_p(i8* %105)
  br i1 %call165, label %if.then.166, label %if.else.167

if.then.166:                                      ; preds = %if.then.164
  store i32 21, i32* %last_errno, align 4
  br label %if.end.168

if.else.167:                                      ; preds = %if.then.164
  store i32 1, i32* %fd, align 4
  br label %if.end.168

if.end.168:                                       ; preds = %if.else.167, %if.then.166
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %if.else.158
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %if.then.157
  br label %if.end.207

if.else.171:                                      ; preds = %if.else.147
  %106 = load i64, i64* %predicate.addr, align 8
  %call173 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp174 = icmp eq i64 %106, %call173
  %cond176 = select i1 %cmp174, i32 0, i32 0
  %add177 = add nsw i32 0, %cond176
  store i32 %add177, i32* %oflags, align 4
  %107 = load i8*, i8** %pfn, align 8
  %108 = load i32, i32* %oflags, align 4
  %call178 = call i32 @emacs_open(i8* %107, i32 %108, i32 0)
  store i32 %call178, i32* %fd, align 4
  %109 = load i32, i32* %fd, align 4
  %cmp179 = icmp slt i32 %109, 0
  br i1 %cmp179, label %if.then.181, label %if.else.188

if.then.181:                                      ; preds = %if.else.171
  %call182 = call i32* @__errno_location() #8
  %110 = load i32, i32* %call182, align 4
  %cmp183 = icmp ne i32 %110, 2
  br i1 %cmp183, label %if.then.185, label %if.end.187

if.then.185:                                      ; preds = %if.then.181
  %call186 = call i32* @__errno_location() #8
  %111 = load i32, i32* %call186, align 4
  store i32 %111, i32* %last_errno, align 4
  br label %if.end.187

if.end.187:                                       ; preds = %if.then.185, %if.then.181
  br label %if.end.206

if.else.188:                                      ; preds = %if.else.171
  %112 = load i32, i32* %fd, align 4
  %call190 = call i32 @fstat(i32 %112, %struct.stat* %st) #6
  %cmp191 = icmp ne i32 %call190, 0
  br i1 %cmp191, label %cond.true.193, label %cond.false.195

cond.true.193:                                    ; preds = %if.else.188
  %call194 = call i32* @__errno_location() #8
  %113 = load i32, i32* %call194, align 4
  br label %cond.end.200

cond.false.195:                                   ; preds = %if.else.188
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %114 = load i32, i32* %st_mode, align 4
  %and196 = and i32 %114, 61440
  %cmp197 = icmp eq i32 %and196, 16384
  %cond199 = select i1 %cmp197, i32 21, i32 0
  br label %cond.end.200

cond.end.200:                                     ; preds = %cond.false.195, %cond.true.193
  %cond201 = phi i32 [ %113, %cond.true.193 ], [ %cond199, %cond.false.195 ]
  store i32 %cond201, i32* %err, align 4
  %115 = load i32, i32* %err, align 4
  %tobool202 = icmp ne i32 %115, 0
  br i1 %tobool202, label %if.then.203, label %if.end.205

if.then.203:                                      ; preds = %cond.end.200
  %116 = load i32, i32* %err, align 4
  store i32 %116, i32* %last_errno, align 4
  %117 = load i32, i32* %fd, align 4
  %call204 = call i32 @emacs_close(i32 %117)
  store i32 -1, i32* %fd, align 4
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.203, %cond.end.200
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %if.end.187
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.206, %if.end.170
  %118 = load i32, i32* %fd, align 4
  %cmp208 = icmp sge i32 %118, 0
  br i1 %cmp208, label %if.then.210, label %if.end.242

if.then.210:                                      ; preds = %if.end.207
  %119 = load i8, i8* %newer.addr, align 1
  %tobool211 = trunc i8 %119 to i1
  br i1 %tobool211, label %land.lhs.true.213, label %if.else.230

land.lhs.true.213:                                ; preds = %if.then.210
  %120 = load i64, i64* %predicate.addr, align 8
  %call214 = call zeroext i1 @NATNUMP(i64 %120)
  br i1 %call214, label %if.else.230, label %if.then.215

if.then.215:                                      ; preds = %land.lhs.true.213
  %call217 = call { i64, i64 } @get_stat_mtime(%struct.stat* %st) #10
  %121 = bitcast %struct.timespec* %mtime to { i64, i64 }*
  %122 = getelementptr { i64, i64 }, { i64, i64 }* %121, i32 0, i32 0
  %123 = extractvalue { i64, i64 } %call217, 0
  store i64 %123, i64* %122, align 8
  %124 = getelementptr { i64, i64 }, { i64, i64 }* %121, i32 0, i32 1
  %125 = extractvalue { i64, i64 } %call217, 1
  store i64 %125, i64* %124, align 8
  %126 = bitcast %struct.timespec* %mtime to { i64, i64 }*
  %127 = getelementptr { i64, i64 }, { i64, i64 }* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 1
  %129 = getelementptr { i64, i64 }, { i64, i64 }* %126, i32 0, i32 1
  %130 = load i64, i64* %129, align 1
  %131 = bitcast %struct.timespec* %save_mtime to { i64, i64 }*
  %132 = getelementptr { i64, i64 }, { i64, i64 }* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 1
  %134 = getelementptr { i64, i64 }, { i64, i64 }* %131, i32 0, i32 1
  %135 = load i64, i64* %134, align 1
  %call218 = call i32 @timespec_cmp(i64 %128, i64 %130, i64 %133, i64 %135) #10
  %cmp219 = icmp sle i32 %call218, 0
  br i1 %cmp219, label %if.then.221, label %if.else.223

if.then.221:                                      ; preds = %if.then.215
  %136 = load i32, i32* %fd, align 4
  %call222 = call i32 @emacs_close(i32 %136)
  br label %if.end.229

if.else.223:                                      ; preds = %if.then.215
  %137 = load i32, i32* %save_fd, align 4
  %cmp224 = icmp sle i32 0, %137
  br i1 %cmp224, label %if.then.226, label %if.end.228

if.then.226:                                      ; preds = %if.else.223
  %138 = load i32, i32* %save_fd, align 4
  %call227 = call i32 @emacs_close(i32 %138)
  br label %if.end.228

if.end.228:                                       ; preds = %if.then.226, %if.else.223
  %139 = load i32, i32* %fd, align 4
  store i32 %139, i32* %save_fd, align 4
  %140 = bitcast %struct.timespec* %save_mtime to i8*
  %141 = bitcast %struct.timespec* %mtime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %140, i8* %141, i64 16, i32 8, i1 false)
  %142 = load i64, i64* %string, align 8
  store i64 %142, i64* %save_string, align 8
  br label %if.end.229

if.end.229:                                       ; preds = %if.end.228, %if.then.221
  br label %if.end.241

if.else.230:                                      ; preds = %land.lhs.true.213, %if.then.210
  %143 = load i64*, i64** %storeptr.addr, align 8
  %tobool231 = icmp ne i64* %143, null
  br i1 %tobool231, label %if.then.232, label %if.end.233

if.then.232:                                      ; preds = %if.else.230
  %144 = load i64, i64* %string, align 8
  %145 = load i64*, i64** %storeptr.addr, align 8
  store i64 %144, i64* %145, align 8
  br label %if.end.233

if.end.233:                                       ; preds = %if.then.232, %if.else.230
  br label %do.body.234

do.body.234:                                      ; preds = %if.end.233
  %146 = load i8, i8* %sa_must_free, align 1
  %tobool235 = trunc i8 %146 to i1
  br i1 %tobool235, label %if.then.236, label %if.end.239

if.then.236:                                      ; preds = %do.body.234
  store i8 0, i8* %sa_must_free, align 1
  %147 = load i64, i64* %sa_count, align 8
  %call237 = call i64 @builtin_lisp_symbol(i32 0)
  %call238 = call i64 @unbind_to(i64 %147, i64 %call237)
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.236, %do.body.234
  br label %do.end.240

do.end.240:                                       ; preds = %if.end.239
  %148 = load i32, i32* %fd, align 4
  store i32 %148, i32* %retval
  br label %return

if.end.241:                                       ; preds = %if.end.229
  br label %if.end.242

if.end.242:                                       ; preds = %if.end.241, %if.end.207
  %149 = load i32, i32* %save_fd, align 4
  %cmp243 = icmp sle i32 0, %149
  br i1 %cmp243, label %land.lhs.true.245, label %if.end.264

land.lhs.true.245:                                ; preds = %if.end.242
  %150 = load i64, i64* %tail, align 8
  %sub246 = sub nsw i64 %150, 3
  %151 = inttoptr i64 %sub246 to i8*
  %152 = bitcast i8* %151 to %struct.Lisp_Cons*
  %u247 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %152, i32 0, i32 1
  %cdr248 = bitcast %union.anon* %u247 to i64*
  %153 = load i64, i64* %cdr248, align 8
  %and249 = and i64 %153, 7
  %conv250 = trunc i64 %and249 to i32
  %cmp251 = icmp eq i32 %conv250, 3
  br i1 %cmp251, label %if.end.264, label %if.then.253

if.then.253:                                      ; preds = %land.lhs.true.245
  %154 = load i64*, i64** %storeptr.addr, align 8
  %tobool254 = icmp ne i64* %154, null
  br i1 %tobool254, label %if.then.255, label %if.end.256

if.then.255:                                      ; preds = %if.then.253
  %155 = load i64, i64* %save_string, align 8
  %156 = load i64*, i64** %storeptr.addr, align 8
  store i64 %155, i64* %156, align 8
  br label %if.end.256

if.end.256:                                       ; preds = %if.then.255, %if.then.253
  br label %do.body.257

do.body.257:                                      ; preds = %if.end.256
  %157 = load i8, i8* %sa_must_free, align 1
  %tobool258 = trunc i8 %157 to i1
  br i1 %tobool258, label %if.then.259, label %if.end.262

if.then.259:                                      ; preds = %do.body.257
  store i8 0, i8* %sa_must_free, align 1
  %158 = load i64, i64* %sa_count, align 8
  %call260 = call i64 @builtin_lisp_symbol(i32 0)
  %call261 = call i64 @unbind_to(i64 %158, i64 %call260)
  br label %if.end.262

if.end.262:                                       ; preds = %if.then.259, %do.body.257
  br label %do.end.263

do.end.263:                                       ; preds = %if.end.262
  %159 = load i32, i32* %save_fd, align 4
  store i32 %159, i32* %retval
  br label %return

if.end.264:                                       ; preds = %land.lhs.true.245, %if.end.242
  br label %if.end.265

if.end.265:                                       ; preds = %if.end.264, %if.end.146
  br label %for.inc.266

for.inc.266:                                      ; preds = %if.end.265
  %160 = load i64, i64* %tail, align 8
  %sub267 = sub nsw i64 %160, 3
  %161 = inttoptr i64 %sub267 to i8*
  %162 = bitcast i8* %161 to %struct.Lisp_Cons*
  %u268 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %162, i32 0, i32 1
  %cdr269 = bitcast %union.anon* %u268 to i64*
  %163 = load i64, i64* %cdr269, align 8
  store i64 %163, i64* %tail, align 8
  br label %for.cond.52

for.end.270:                                      ; preds = %for.cond.52
  %164 = load i8, i8* %absolute, align 1
  %tobool271 = trunc i8 %164 to i1
  br i1 %tobool271, label %if.then.272, label %if.end.273

if.then.272:                                      ; preds = %for.end.270
  br label %for.end.278

if.end.273:                                       ; preds = %for.end.270
  br label %for.inc.274

for.inc.274:                                      ; preds = %if.end.273, %if.then.27
  %165 = load i64, i64* %path.addr, align 8
  %sub275 = sub nsw i64 %165, 3
  %166 = inttoptr i64 %sub275 to i8*
  %167 = bitcast i8* %166 to %struct.Lisp_Cons*
  %u276 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %167, i32 0, i32 1
  %cdr277 = bitcast %union.anon* %u276 to i64*
  %168 = load i64, i64* %cdr277, align 8
  store i64 %168, i64* %path.addr, align 8
  br label %for.cond.14

for.end.278:                                      ; preds = %if.then.272, %for.cond.14
  br label %do.body.279

do.body.279:                                      ; preds = %for.end.278
  %169 = load i8, i8* %sa_must_free, align 1
  %tobool280 = trunc i8 %169 to i1
  br i1 %tobool280, label %if.then.281, label %if.end.284

if.then.281:                                      ; preds = %do.body.279
  store i8 0, i8* %sa_must_free, align 1
  %170 = load i64, i64* %sa_count, align 8
  %call282 = call i64 @builtin_lisp_symbol(i32 0)
  %call283 = call i64 @unbind_to(i64 %170, i64 %call282)
  br label %if.end.284

if.end.284:                                       ; preds = %if.then.281, %do.body.279
  br label %do.end.285

do.end.285:                                       ; preds = %if.end.284
  %171 = load i32, i32* %last_errno, align 4
  %call286 = call i32* @__errno_location() #8
  store i32 %171, i32* %call286, align 4
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.285, %do.end.263, %do.end.240, %do.end
  %172 = load i32, i32* %retval
  ret i32 %172
}

; Function Attrs: noreturn
declare void @report_file_error(i8*, i64) #3

declare i64 @Fequal(i64, i64) #1

declare i64 @Ffind_file_name_handler(i64, i64) #1

declare i64 @call5(i64, i64, i64, i64, i64, i64) #1

declare void @record_unwind_protect_int(void (i32)*, i32) #1

declare void @close_file_unwind(i32) #1

; Function Attrs: noreturn
declare void @signal_error(i8*, i64) #3

declare void @record_unwind_protect(void (i64)*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @record_load_unwind(i64 %old) #0 {
entry:
  %old.addr = alloca i64, align 8
  store i64 %old, i64* %old.addr, align 8
  %0 = load i64, i64* %old.addr, align 8
  store i64 %0, i64* @Vloads_in_progress, align 8
  ret void
}

declare void @specbind(i64, i64) #1

declare i64 @Ffile_name_nondirectory(i64) #1

; Function Attrs: nounwind uwtable
define internal void @load_warn_old_style_backquotes(i64 %file) #0 {
entry:
  %file.addr = alloca i64, align 8
  %format = alloca i64, align 8
  %.compoundliteral = alloca %union.Aligned_String, align 8
  %.compoundliteral3 = alloca [2 x i64], align 8
  store i64 %file, i64* %file.addr, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 208), align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %s = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %size = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 0
  store i64 44, i64* %size, align 8
  %size_byte = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 1
  store i64 -1, i64* %size_byte, align 8
  %intervals = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals, align 8
  %data = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 3
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.86, i32 0, i32 0), i8** %data, align 8
  %s1 = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %1 = bitcast %struct.Lisp_String* %s1 to i8*
  %call2 = call i64 @make_lisp_ptr(i8* %1, i32 4)
  store i64 %call2, i64* %format, align 8
  %arrayinit.begin = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral3, i64 0, i64 0
  %2 = load i64, i64* %format, align 8
  store i64 %2, i64* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i64, i64* %arrayinit.begin, i64 1
  %3 = load i64, i64* %file.addr, align 8
  store i64 %3, i64* %arrayinit.element
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral3, i32 0, i32 0
  %call4 = call i64 @Fmessage(i64 2, i64* %arraydecay)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @safe_to_load_version(i32 %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %buf = alloca [512 x i8], align 16
  %nbytes = alloca i32, align 4
  %i = alloca i32, align 4
  %version = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i32 1, i32* %version, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call = call i64 @emacs_read(i32 %0, i8* %arraydecay, i64 512)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %nbytes, align 4
  %1 = load i32, i32* %nbytes, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.22

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %nbytes, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv4 = sext i8 %5 to i32
  %cmp5 = icmp ne i32 %conv4, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp5, %land.rhs ]
  br i1 %6, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %7 = load i32, i32* %i, align 4
  %cmp7 = icmp eq i32 %7, 4
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %8 to i64
  %arrayidx11 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i64 %idxprom10
  %9 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %9 to i32
  store i32 %conv12, i32* %version, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.9, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %nbytes, align 4
  %cmp13 = icmp sge i32 %11, %12
  br i1 %cmp13, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %13 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 22), align 8
  %arraydecay15 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %14 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay15, i64 %idx.ext
  %15 = load i32, i32* %nbytes, align 4
  %16 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %15, %16
  %conv16 = sext i32 %sub to i64
  %call17 = call i64 @fast_c_string_match_ignore_case(i64 %13, i8* %add.ptr, i64 %conv16)
  %cmp18 = icmp slt i64 %call17, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %lor.lhs.false, %for.end
  store i32 0, i32* %version, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %lor.lhs.false
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %entry
  %17 = load i32, i32* %fd.addr, align 4
  %call23 = call i64 @lseek(i32 %17, i64 0, i32 0) #6
  %18 = load i32, i32* %version, align 4
  ret i32 %18
}

; Function Attrs: noreturn
declare void @error(i8*, ...) #3

declare i8* @SDATA(i64) #1

declare i64 @encode_file_name(i64) #1

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #4

declare i8* @SSDATA(i64) #1

declare void @SSET(i64, i64, i8 zeroext) #1

declare i64 @SBYTES(i64) #1

; Function Attrs: nounwind readonly
declare i32 @timespec_cmp(i64, i64, i64, i64) #5

; Function Attrs: nounwind readonly
declare { i64, i64 } @get_stat_mtime(%struct.stat*) #5

declare i64 @Fsubstring(i64, i64, i64) #1

declare i32 @emacs_close(i32) #1

declare void @clear_unwind_protect(i64) #1

declare i64 @call4(i64, i64, i64, i64, i64) #1

declare i64 @unbind_to(i64, i64) #1

; Function Attrs: nounwind
declare %struct._IO_FILE* @fdopen(i32, i8*) #4

declare void @set_unwind_protect_ptr(i64, void (i8*)*, i8*) #1

declare void @fclose_unwind(i8*) #1

declare i64 @Fpurecopy(i64) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @lisp_file_lexically_bound_p(i64 %readcharfun) #0 {
entry:
  %retval = alloca i1, align 1
  %readcharfun.addr = alloca i64, align 8
  %ch = alloca i32, align 4
  %rv = alloca i8, align 1
  %beg_end_state = alloca i32, align 4
  %in_file_vars = alloca i8, align 1
  %var = alloca [100 x i8], align 16
  %val = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  store i64 %readcharfun, i64* %readcharfun.addr, align 8
  %0 = load i64, i64* %readcharfun.addr, align 8
  %call = call i32 @readchar(i64 %0, i8* null)
  store i32 %call, i32* %ch, align 4
  %1 = load i32, i32* %ch, align 4
  %cmp = icmp eq i32 %1, 35
  br i1 %cmp, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %readcharfun.addr, align 8
  %call1 = call i32 @readchar(i64 %2, i8* null)
  store i32 %call1, i32* %ch, align 4
  %3 = load i32, i32* %ch, align 4
  %cmp2 = icmp ne i32 %3, 33
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %4 = load i64, i64* %readcharfun.addr, align 8
  %5 = load i32, i32* %ch, align 4
  call void @unreadchar(i64 %4, i32 %5)
  %6 = load i64, i64* %readcharfun.addr, align 8
  call void @unreadchar(i64 %6, i32 35)
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %7 = load i32, i32* %ch, align 4
  %cmp4 = icmp ne i32 %7, 10
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load i32, i32* %ch, align 4
  %cmp5 = icmp ne i32 %8, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load i64, i64* %readcharfun.addr, align 8
  %call6 = call i32 @readchar(i64 %10, i8* null)
  store i32 %call6, i32* %ch, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %11 = load i32, i32* %ch, align 4
  %cmp7 = icmp eq i32 %11, 10
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %while.end
  %12 = load i64, i64* %readcharfun.addr, align 8
  %call9 = call i32 @readchar(i64 %12, i8* null)
  store i32 %call9, i32* %ch, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %while.end
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %entry
  %13 = load i32, i32* %ch, align 4
  %cmp12 = icmp ne i32 %13, 59
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end.11
  %14 = load i64, i64* %readcharfun.addr, align 8
  %15 = load i32, i32* %ch, align 4
  call void @unreadchar(i64 %14, i32 %15)
  store i1 false, i1* %retval
  br label %return

if.else:                                          ; preds = %if.end.11
  store i8 0, i8* %rv, align 1
  store i32 0, i32* %beg_end_state, align 4
  store i8 0, i8* %in_file_vars, align 1
  br label %do.body

do.body:                                          ; preds = %land.end.36, %if.else
  %16 = load i64, i64* %readcharfun.addr, align 8
  %call14 = call i32 @readchar(i64 %16, i8* null)
  store i32 %call14, i32* %ch, align 4
  %17 = load i32, i32* %beg_end_state, align 4
  %cmp15 = icmp eq i32 %17, 0
  br i1 %cmp15, label %if.then.16, label %if.else.18

if.then.16:                                       ; preds = %do.body
  %18 = load i32, i32* %ch, align 4
  %cmp17 = icmp eq i32 %18, 45
  %cond = select i1 %cmp17, i32 1, i32 0
  store i32 %cond, i32* %beg_end_state, align 4
  br label %if.end.31

if.else.18:                                       ; preds = %do.body
  %19 = load i32, i32* %beg_end_state, align 4
  %cmp19 = icmp eq i32 %19, 1
  br i1 %cmp19, label %if.then.20, label %if.else.23

if.then.20:                                       ; preds = %if.else.18
  %20 = load i32, i32* %ch, align 4
  %cmp21 = icmp eq i32 %20, 42
  %cond22 = select i1 %cmp21, i32 2, i32 0
  store i32 %cond22, i32* %beg_end_state, align 4
  br label %if.end.30

if.else.23:                                       ; preds = %if.else.18
  %21 = load i32, i32* %beg_end_state, align 4
  %cmp24 = icmp eq i32 %21, 2
  br i1 %cmp24, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %if.else.23
  %22 = load i32, i32* %ch, align 4
  %cmp26 = icmp eq i32 %22, 45
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.25
  %23 = load i8, i8* %in_file_vars, align 1
  %tobool = trunc i8 %23 to i1
  %lnot = xor i1 %tobool, true
  %frombool = zext i1 %lnot to i8
  store i8 %frombool, i8* %in_file_vars, align 1
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.then.25
  store i32 0, i32* %beg_end_state, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.else.23
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.20
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.16
  br label %do.cond

do.cond:                                          ; preds = %if.end.31
  %24 = load i8, i8* %in_file_vars, align 1
  %tobool32 = trunc i8 %24 to i1
  br i1 %tobool32, label %land.end.36, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.cond
  %25 = load i32, i32* %ch, align 4
  %cmp33 = icmp ne i32 %25, 10
  br i1 %cmp33, label %land.rhs.34, label %land.end.36

land.rhs.34:                                      ; preds = %land.lhs.true
  %26 = load i32, i32* %ch, align 4
  %cmp35 = icmp ne i32 %26, -1
  br label %land.end.36

land.end.36:                                      ; preds = %land.rhs.34, %land.lhs.true, %do.cond
  %27 = phi i1 [ false, %land.lhs.true ], [ false, %do.cond ], [ %cmp35, %land.rhs.34 ]
  br i1 %27, label %do.body, label %do.end

do.end:                                           ; preds = %land.end.36
  br label %while.cond.37

while.cond.37:                                    ; preds = %if.end.225, %do.end
  %28 = load i8, i8* %in_file_vars, align 1
  %tobool38 = trunc i8 %28 to i1
  br i1 %tobool38, label %while.body.39, label %while.end.226

while.body.39:                                    ; preds = %while.cond.37
  %29 = load i64, i64* %readcharfun.addr, align 8
  %call40 = call i32 @readchar(i64 %29, i8* null)
  store i32 %call40, i32* %ch, align 4
  br label %while.cond.41

while.cond.41:                                    ; preds = %while.body.44, %while.body.39
  %30 = load i32, i32* %ch, align 4
  %cmp42 = icmp eq i32 %30, 32
  br i1 %cmp42, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond.41
  %31 = load i32, i32* %ch, align 4
  %cmp43 = icmp eq i32 %31, 9
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond.41
  %32 = phi i1 [ true, %while.cond.41 ], [ %cmp43, %lor.rhs ]
  br i1 %32, label %while.body.44, label %while.end.46

while.body.44:                                    ; preds = %lor.end
  %33 = load i64, i64* %readcharfun.addr, align 8
  %call45 = call i32 @readchar(i64 %33, i8* null)
  store i32 %call45, i32* %ch, align 4
  br label %while.cond.41

while.end.46:                                     ; preds = %lor.end
  store i32 0, i32* %i, align 4
  br label %while.cond.47

while.cond.47:                                    ; preds = %if.end.88, %while.end.46
  %34 = load i32, i32* %ch, align 4
  %cmp48 = icmp ne i32 %34, 58
  br i1 %cmp48, label %land.lhs.true.49, label %land.end.55

land.lhs.true.49:                                 ; preds = %while.cond.47
  %35 = load i32, i32* %ch, align 4
  %cmp50 = icmp ne i32 %35, 10
  br i1 %cmp50, label %land.lhs.true.51, label %land.end.55

land.lhs.true.51:                                 ; preds = %land.lhs.true.49
  %36 = load i32, i32* %ch, align 4
  %cmp52 = icmp ne i32 %36, -1
  br i1 %cmp52, label %land.rhs.53, label %land.end.55

land.rhs.53:                                      ; preds = %land.lhs.true.51
  %37 = load i8, i8* %in_file_vars, align 1
  %tobool54 = trunc i8 %37 to i1
  br label %land.end.55

land.end.55:                                      ; preds = %land.rhs.53, %land.lhs.true.51, %land.lhs.true.49, %while.cond.47
  %38 = phi i1 [ false, %land.lhs.true.51 ], [ false, %land.lhs.true.49 ], [ false, %while.cond.47 ], [ %tobool54, %land.rhs.53 ]
  br i1 %38, label %while.body.56, label %while.end.90

while.body.56:                                    ; preds = %land.end.55
  %39 = load i32, i32* %i, align 4
  %conv = zext i32 %39 to i64
  %cmp57 = icmp ult i64 %conv, 99
  br i1 %cmp57, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %while.body.56
  %40 = load i32, i32* %ch, align 4
  %conv60 = trunc i32 %40 to i8
  %41 = load i32, i32* %i, align 4
  %inc = add i32 %41, 1
  store i32 %inc, i32* %i, align 4
  %idxprom = zext i32 %41 to i64
  %arrayidx = getelementptr inbounds [100 x i8], [100 x i8]* %var, i32 0, i64 %idxprom
  store i8 %conv60, i8* %arrayidx, align 1
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.59, %while.body.56
  %42 = load i32, i32* %beg_end_state, align 4
  %cmp62 = icmp eq i32 %42, 0
  br i1 %cmp62, label %if.then.64, label %if.else.68

if.then.64:                                       ; preds = %if.end.61
  %43 = load i32, i32* %ch, align 4
  %cmp65 = icmp eq i32 %43, 45
  %cond67 = select i1 %cmp65, i32 1, i32 0
  store i32 %cond67, i32* %beg_end_state, align 4
  br label %if.end.88

if.else.68:                                       ; preds = %if.end.61
  %44 = load i32, i32* %beg_end_state, align 4
  %cmp69 = icmp eq i32 %44, 1
  br i1 %cmp69, label %if.then.71, label %if.else.75

if.then.71:                                       ; preds = %if.else.68
  %45 = load i32, i32* %ch, align 4
  %cmp72 = icmp eq i32 %45, 42
  %cond74 = select i1 %cmp72, i32 2, i32 0
  store i32 %cond74, i32* %beg_end_state, align 4
  br label %if.end.87

if.else.75:                                       ; preds = %if.else.68
  %46 = load i32, i32* %beg_end_state, align 4
  %cmp76 = icmp eq i32 %46, 2
  br i1 %cmp76, label %if.then.78, label %if.end.86

if.then.78:                                       ; preds = %if.else.75
  %47 = load i32, i32* %ch, align 4
  %cmp79 = icmp eq i32 %47, 45
  br i1 %cmp79, label %if.then.81, label %if.end.85

if.then.81:                                       ; preds = %if.then.78
  %48 = load i8, i8* %in_file_vars, align 1
  %tobool82 = trunc i8 %48 to i1
  %lnot83 = xor i1 %tobool82, true
  %frombool84 = zext i1 %lnot83 to i8
  store i8 %frombool84, i8* %in_file_vars, align 1
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.81, %if.then.78
  store i32 0, i32* %beg_end_state, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.else.75
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.then.71
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %if.then.64
  %49 = load i64, i64* %readcharfun.addr, align 8
  %call89 = call i32 @readchar(i64 %49, i8* null)
  store i32 %call89, i32* %ch, align 4
  br label %while.cond.47

while.end.90:                                     ; preds = %land.end.55
  %50 = load i8, i8* %in_file_vars, align 1
  %tobool91 = trunc i8 %50 to i1
  br i1 %tobool91, label %lor.lhs.false, label %if.then.97

lor.lhs.false:                                    ; preds = %while.end.90
  %51 = load i32, i32* %ch, align 4
  %cmp92 = icmp eq i32 %51, 10
  br i1 %cmp92, label %if.then.97, label %lor.lhs.false.94

lor.lhs.false.94:                                 ; preds = %lor.lhs.false
  %52 = load i32, i32* %ch, align 4
  %cmp95 = icmp eq i32 %52, -1
  br i1 %cmp95, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %lor.lhs.false.94, %lor.lhs.false, %while.end.90
  br label %while.end.226

if.end.98:                                        ; preds = %lor.lhs.false.94
  br label %while.cond.99

while.cond.99:                                    ; preds = %while.body.117, %if.end.98
  %53 = load i32, i32* %i, align 4
  %cmp100 = icmp ugt i32 %53, 0
  br i1 %cmp100, label %land.rhs.102, label %land.end.116

land.rhs.102:                                     ; preds = %while.cond.99
  %54 = load i32, i32* %i, align 4
  %sub = sub i32 %54, 1
  %idxprom103 = zext i32 %sub to i64
  %arrayidx104 = getelementptr inbounds [100 x i8], [100 x i8]* %var, i32 0, i64 %idxprom103
  %55 = load i8, i8* %arrayidx104, align 1
  %conv105 = sext i8 %55 to i32
  %cmp106 = icmp eq i32 %conv105, 32
  br i1 %cmp106, label %lor.end.115, label %lor.rhs.108

lor.rhs.108:                                      ; preds = %land.rhs.102
  %56 = load i32, i32* %i, align 4
  %sub109 = sub i32 %56, 1
  %idxprom110 = zext i32 %sub109 to i64
  %arrayidx111 = getelementptr inbounds [100 x i8], [100 x i8]* %var, i32 0, i64 %idxprom110
  %57 = load i8, i8* %arrayidx111, align 1
  %conv112 = sext i8 %57 to i32
  %cmp113 = icmp eq i32 %conv112, 9
  br label %lor.end.115

lor.end.115:                                      ; preds = %lor.rhs.108, %land.rhs.102
  %58 = phi i1 [ true, %land.rhs.102 ], [ %cmp113, %lor.rhs.108 ]
  br label %land.end.116

land.end.116:                                     ; preds = %lor.end.115, %while.cond.99
  %59 = phi i1 [ false, %while.cond.99 ], [ %58, %lor.end.115 ]
  br i1 %59, label %while.body.117, label %while.end.118

while.body.117:                                   ; preds = %land.end.116
  %60 = load i32, i32* %i, align 4
  %dec = add i32 %60, -1
  store i32 %dec, i32* %i, align 4
  br label %while.cond.99

while.end.118:                                    ; preds = %land.end.116
  %61 = load i32, i32* %i, align 4
  %idxprom119 = zext i32 %61 to i64
  %arrayidx120 = getelementptr inbounds [100 x i8], [100 x i8]* %var, i32 0, i64 %idxprom119
  store i8 0, i8* %arrayidx120, align 1
  %62 = load i32, i32* %ch, align 4
  %cmp121 = icmp eq i32 %62, 58
  br i1 %cmp121, label %if.then.123, label %if.end.225

if.then.123:                                      ; preds = %while.end.118
  %63 = load i64, i64* %readcharfun.addr, align 8
  %call124 = call i32 @readchar(i64 %63, i8* null)
  store i32 %call124, i32* %ch, align 4
  br label %while.cond.125

while.cond.125:                                   ; preds = %while.body.132, %if.then.123
  %64 = load i32, i32* %ch, align 4
  %cmp126 = icmp eq i32 %64, 32
  br i1 %cmp126, label %lor.end.131, label %lor.rhs.128

lor.rhs.128:                                      ; preds = %while.cond.125
  %65 = load i32, i32* %ch, align 4
  %cmp129 = icmp eq i32 %65, 9
  br label %lor.end.131

lor.end.131:                                      ; preds = %lor.rhs.128, %while.cond.125
  %66 = phi i1 [ true, %while.cond.125 ], [ %cmp129, %lor.rhs.128 ]
  br i1 %66, label %while.body.132, label %while.end.134

while.body.132:                                   ; preds = %lor.end.131
  %67 = load i64, i64* %readcharfun.addr, align 8
  %call133 = call i32 @readchar(i64 %67, i8* null)
  store i32 %call133, i32* %ch, align 4
  br label %while.cond.125

while.end.134:                                    ; preds = %lor.end.131
  store i32 0, i32* %i, align 4
  br label %while.cond.135

while.cond.135:                                   ; preds = %if.end.184, %while.end.134
  %68 = load i32, i32* %ch, align 4
  %cmp136 = icmp ne i32 %68, 59
  br i1 %cmp136, label %land.lhs.true.138, label %land.end.147

land.lhs.true.138:                                ; preds = %while.cond.135
  %69 = load i32, i32* %ch, align 4
  %cmp139 = icmp ne i32 %69, 10
  br i1 %cmp139, label %land.lhs.true.141, label %land.end.147

land.lhs.true.141:                                ; preds = %land.lhs.true.138
  %70 = load i32, i32* %ch, align 4
  %cmp142 = icmp ne i32 %70, -1
  br i1 %cmp142, label %land.rhs.144, label %land.end.147

land.rhs.144:                                     ; preds = %land.lhs.true.141
  %71 = load i8, i8* %in_file_vars, align 1
  %tobool145 = trunc i8 %71 to i1
  br label %land.end.147

land.end.147:                                     ; preds = %land.rhs.144, %land.lhs.true.141, %land.lhs.true.138, %while.cond.135
  %72 = phi i1 [ false, %land.lhs.true.141 ], [ false, %land.lhs.true.138 ], [ false, %while.cond.135 ], [ %tobool145, %land.rhs.144 ]
  br i1 %72, label %while.body.148, label %while.end.186

while.body.148:                                   ; preds = %land.end.147
  %73 = load i32, i32* %i, align 4
  %conv149 = zext i32 %73 to i64
  %cmp150 = icmp ult i64 %conv149, 99
  br i1 %cmp150, label %if.then.152, label %if.end.157

if.then.152:                                      ; preds = %while.body.148
  %74 = load i32, i32* %ch, align 4
  %conv153 = trunc i32 %74 to i8
  %75 = load i32, i32* %i, align 4
  %inc154 = add i32 %75, 1
  store i32 %inc154, i32* %i, align 4
  %idxprom155 = zext i32 %75 to i64
  %arrayidx156 = getelementptr inbounds [100 x i8], [100 x i8]* %val, i32 0, i64 %idxprom155
  store i8 %conv153, i8* %arrayidx156, align 1
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.152, %while.body.148
  %76 = load i32, i32* %beg_end_state, align 4
  %cmp158 = icmp eq i32 %76, 0
  br i1 %cmp158, label %if.then.160, label %if.else.164

if.then.160:                                      ; preds = %if.end.157
  %77 = load i32, i32* %ch, align 4
  %cmp161 = icmp eq i32 %77, 45
  %cond163 = select i1 %cmp161, i32 1, i32 0
  store i32 %cond163, i32* %beg_end_state, align 4
  br label %if.end.184

if.else.164:                                      ; preds = %if.end.157
  %78 = load i32, i32* %beg_end_state, align 4
  %cmp165 = icmp eq i32 %78, 1
  br i1 %cmp165, label %if.then.167, label %if.else.171

if.then.167:                                      ; preds = %if.else.164
  %79 = load i32, i32* %ch, align 4
  %cmp168 = icmp eq i32 %79, 42
  %cond170 = select i1 %cmp168, i32 2, i32 0
  store i32 %cond170, i32* %beg_end_state, align 4
  br label %if.end.183

if.else.171:                                      ; preds = %if.else.164
  %80 = load i32, i32* %beg_end_state, align 4
  %cmp172 = icmp eq i32 %80, 2
  br i1 %cmp172, label %if.then.174, label %if.end.182

if.then.174:                                      ; preds = %if.else.171
  %81 = load i32, i32* %ch, align 4
  %cmp175 = icmp eq i32 %81, 45
  br i1 %cmp175, label %if.then.177, label %if.end.181

if.then.177:                                      ; preds = %if.then.174
  %82 = load i8, i8* %in_file_vars, align 1
  %tobool178 = trunc i8 %82 to i1
  %lnot179 = xor i1 %tobool178, true
  %frombool180 = zext i1 %lnot179 to i8
  store i8 %frombool180, i8* %in_file_vars, align 1
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.177, %if.then.174
  store i32 0, i32* %beg_end_state, align 4
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.181, %if.else.171
  br label %if.end.183

if.end.183:                                       ; preds = %if.end.182, %if.then.167
  br label %if.end.184

if.end.184:                                       ; preds = %if.end.183, %if.then.160
  %83 = load i64, i64* %readcharfun.addr, align 8
  %call185 = call i32 @readchar(i64 %83, i8* null)
  store i32 %call185, i32* %ch, align 4
  br label %while.cond.135

while.end.186:                                    ; preds = %land.end.147
  %84 = load i8, i8* %in_file_vars, align 1
  %tobool187 = trunc i8 %84 to i1
  br i1 %tobool187, label %if.end.190, label %if.then.188

if.then.188:                                      ; preds = %while.end.186
  %85 = load i32, i32* %i, align 4
  %sub189 = sub i32 %85, 3
  store i32 %sub189, i32* %i, align 4
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.188, %while.end.186
  br label %while.cond.191

while.cond.191:                                   ; preds = %while.body.210, %if.end.190
  %86 = load i32, i32* %i, align 4
  %cmp192 = icmp ugt i32 %86, 0
  br i1 %cmp192, label %land.rhs.194, label %land.end.209

land.rhs.194:                                     ; preds = %while.cond.191
  %87 = load i32, i32* %i, align 4
  %sub195 = sub i32 %87, 1
  %idxprom196 = zext i32 %sub195 to i64
  %arrayidx197 = getelementptr inbounds [100 x i8], [100 x i8]* %val, i32 0, i64 %idxprom196
  %88 = load i8, i8* %arrayidx197, align 1
  %conv198 = sext i8 %88 to i32
  %cmp199 = icmp eq i32 %conv198, 32
  br i1 %cmp199, label %lor.end.208, label %lor.rhs.201

lor.rhs.201:                                      ; preds = %land.rhs.194
  %89 = load i32, i32* %i, align 4
  %sub202 = sub i32 %89, 1
  %idxprom203 = zext i32 %sub202 to i64
  %arrayidx204 = getelementptr inbounds [100 x i8], [100 x i8]* %val, i32 0, i64 %idxprom203
  %90 = load i8, i8* %arrayidx204, align 1
  %conv205 = sext i8 %90 to i32
  %cmp206 = icmp eq i32 %conv205, 9
  br label %lor.end.208

lor.end.208:                                      ; preds = %lor.rhs.201, %land.rhs.194
  %91 = phi i1 [ true, %land.rhs.194 ], [ %cmp206, %lor.rhs.201 ]
  br label %land.end.209

land.end.209:                                     ; preds = %lor.end.208, %while.cond.191
  %92 = phi i1 [ false, %while.cond.191 ], [ %91, %lor.end.208 ]
  br i1 %92, label %while.body.210, label %while.end.212

while.body.210:                                   ; preds = %land.end.209
  %93 = load i32, i32* %i, align 4
  %dec211 = add i32 %93, -1
  store i32 %dec211, i32* %i, align 4
  br label %while.cond.191

while.end.212:                                    ; preds = %land.end.209
  %94 = load i32, i32* %i, align 4
  %idxprom213 = zext i32 %94 to i64
  %arrayidx214 = getelementptr inbounds [100 x i8], [100 x i8]* %val, i32 0, i64 %idxprom213
  store i8 0, i8* %arrayidx214, align 1
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %var, i32 0, i32 0
  %call215 = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.78, i32 0, i32 0)) #10
  %cmp216 = icmp eq i32 %call215, 0
  br i1 %cmp216, label %if.then.218, label %if.end.224

if.then.218:                                      ; preds = %while.end.212
  %arraydecay219 = getelementptr inbounds [100 x i8], [100 x i8]* %val, i32 0, i32 0
  %call220 = call i32 @strcmp(i8* %arraydecay219, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.87, i32 0, i32 0)) #10
  %cmp221 = icmp ne i32 %call220, 0
  %frombool223 = zext i1 %cmp221 to i8
  store i8 %frombool223, i8* %rv, align 1
  br label %while.end.226

if.end.224:                                       ; preds = %while.end.212
  br label %if.end.225

if.end.225:                                       ; preds = %if.end.224, %while.end.118
  br label %while.cond.37

while.end.226:                                    ; preds = %if.then.218, %if.then.97, %while.cond.37
  br label %while.cond.227

while.cond.227:                                   ; preds = %while.body.234, %while.end.226
  %95 = load i32, i32* %ch, align 4
  %cmp228 = icmp ne i32 %95, 10
  br i1 %cmp228, label %land.rhs.230, label %land.end.233

land.rhs.230:                                     ; preds = %while.cond.227
  %96 = load i32, i32* %ch, align 4
  %cmp231 = icmp ne i32 %96, -1
  br label %land.end.233

land.end.233:                                     ; preds = %land.rhs.230, %while.cond.227
  %97 = phi i1 [ false, %while.cond.227 ], [ %cmp231, %land.rhs.230 ]
  br i1 %97, label %while.body.234, label %while.end.236

while.body.234:                                   ; preds = %land.end.233
  %98 = load i64, i64* %readcharfun.addr, align 8
  %call235 = call i32 @readchar(i64 %98, i8* null)
  store i32 %call235, i32* %ch, align 4
  br label %while.cond.227

while.end.236:                                    ; preds = %land.end.233
  %99 = load i8, i8* %rv, align 1
  %tobool237 = trunc i8 %99 to i1
  store i1 %tobool237, i1* %retval
  br label %return

return:                                           ; preds = %while.end.236, %if.then.13, %if.then.3
  %100 = load i1, i1* %retval
  ret i1 %100
}

declare i64 @Fset(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @readevalloop(i64 %readcharfun, %struct._IO_FILE* %stream, i64 %sourcename, i1 zeroext %printflag, i64 %unibyte, i64 %readfun, i64 %start, i64 %end) #0 {
entry:
  %readcharfun.addr = alloca i64, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %sourcename.addr = alloca i64, align 8
  %printflag.addr = alloca i8, align 1
  %unibyte.addr = alloca i64, align 8
  %readfun.addr = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %c = alloca i32, align 4
  %val = alloca i64, align 8
  %count = alloca i64, align 8
  %b = alloca %struct.buffer*, align 8
  %continue_reading_p = alloca i8, align 1
  %lex_bound = alloca i64, align 8
  %whole_buffer = alloca i8, align 1
  %first_sexp = alloca i8, align 1
  %macroexpand = alloca i64, align 8
  %count1 = alloca i64, align 8
  %buf = alloca %struct.buffer*, align 8
  store i64 %readcharfun, i64* %readcharfun.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i64 %sourcename, i64* %sourcename.addr, align 8
  %frombool = zext i1 %printflag to i8
  store i8 %frombool, i8* %printflag.addr, align 1
  store i64 %unibyte, i64* %unibyte.addr, align 8
  store i64 %readfun, i64* %readfun.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %count, align 8
  store %struct.buffer* null, %struct.buffer** %b, align 8
  store i8 0, i8* %whole_buffer, align 1
  store i8 1, i8* %first_sexp, align 1
  %call1 = call i64 @intern(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.89, i32 0, i32 0))
  store i64 %call1, i64* %macroexpand, align 8
  %0 = load i64, i64* %macroexpand, align 8
  %call2 = call i64 @Ffboundp(i64 %0)
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %call2, %call3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %readcharfun.addr, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 486)
  %cmp5 = icmp eq i64 %1, %call4
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %2 = load i64, i64* %readcharfun.addr, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 484)
  %cmp8 = icmp eq i64 %2, %call7
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.6, %lor.lhs.false, %entry
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call9, i64* %macroexpand, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.6
  %3 = load i64, i64* %readcharfun.addr, align 8
  %and = and i64 %3, 7
  %conv = trunc i64 %and to i32
  %cmp10 = icmp eq i32 %conv, 1
  br i1 %cmp10, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %if.end
  %4 = load i64, i64* %readcharfun.addr, align 8
  %call12 = call i32 @XMISCTYPE(i64 %4)
  %cmp13 = icmp eq i32 %call12, 24236
  br i1 %cmp13, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %land.lhs.true
  %5 = load i64, i64* %start.addr, align 8
  %call16 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp17 = icmp eq i64 %5, %call16
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.15
  %6 = load i64, i64* %readcharfun.addr, align 8
  store i64 %6, i64* %start.addr, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.then.15
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %land.lhs.true, %if.end
  %7 = load i64, i64* %readcharfun.addr, align 8
  %call22 = call zeroext i1 @BUFFERP(i64 %7)
  br i1 %call22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end.21
  %8 = load i64, i64* %readcharfun.addr, align 8
  %call24 = call %struct.buffer* @XBUFFER(i64 %8)
  store %struct.buffer* %call24, %struct.buffer** %b, align 8
  br label %if.end.36

if.else:                                          ; preds = %if.end.21
  %9 = load i64, i64* %readcharfun.addr, align 8
  %and25 = and i64 %9, 7
  %conv26 = trunc i64 %and25 to i32
  %cmp27 = icmp eq i32 %conv26, 1
  br i1 %cmp27, label %land.lhs.true.29, label %if.end.35

land.lhs.true.29:                                 ; preds = %if.else
  %10 = load i64, i64* %readcharfun.addr, align 8
  %call30 = call i32 @XMISCTYPE(i64 %10)
  %cmp31 = icmp eq i32 %call30, 24236
  br i1 %cmp31, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %land.lhs.true.29
  %11 = load i64, i64* %readcharfun.addr, align 8
  %call34 = call %struct.Lisp_Marker* @XMARKER(i64 %11)
  %buffer = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call34, i32 0, i32 1
  %12 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  store %struct.buffer* %12, %struct.buffer** %b, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %land.lhs.true.29, %if.else
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.23
  %13 = load i64, i64* %start.addr, align 8
  %call37 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp38 = icmp eq i64 %13, %call37
  br i1 %cmp38, label %if.end.42, label %land.lhs.true.40

land.lhs.true.40:                                 ; preds = %if.end.36
  %14 = load %struct.buffer*, %struct.buffer** %b, align 8
  %tobool = icmp ne %struct.buffer* %14, null
  br i1 %tobool, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %land.lhs.true.40
  call void @emacs_abort() #9
  unreachable

if.end.42:                                        ; preds = %land.lhs.true.40, %if.end.36
  %call43 = call i64 @builtin_lisp_symbol(i32 870)
  %15 = load i64, i64* %readcharfun.addr, align 8
  call void @specbind(i64 %call43, i64 %15)
  %call44 = call i64 @builtin_lisp_symbol(i32 305)
  %call45 = call i64 @builtin_lisp_symbol(i32 0)
  call void @specbind(i64 %call44, i64 %call45)
  %16 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 463), align 1
  %tobool46 = trunc i8 %16 to i1
  %conv47 = zext i1 %tobool46 to i32
  call void @record_unwind_protect_int(void (i32)* @readevalloop_1, i32 %conv47)
  %17 = load i64, i64* %unibyte.addr, align 8
  %call48 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp49 = icmp eq i64 %17, %call48
  %lnot = xor i1 %cmp49, true
  %frombool51 = zext i1 %lnot to i8
  store i8 %frombool51, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 463), align 1
  %call52 = call i64 @builtin_lisp_symbol(i32 614)
  %call53 = call i64 @find_symbol_value(i64 %call52)
  store i64 %call53, i64* %lex_bound, align 8
  %call54 = call i64 @builtin_lisp_symbol(i32 567)
  %18 = load i64, i64* %lex_bound, align 8
  %call55 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp56 = icmp eq i64 %18, %call55
  br i1 %cmp56, label %cond.true, label %lor.lhs.false.58

lor.lhs.false.58:                                 ; preds = %if.end.42
  %19 = load i64, i64* %lex_bound, align 8
  %call59 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp60 = icmp eq i64 %19, %call59
  br i1 %cmp60, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.58, %if.end.42
  %call62 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.58
  %call63 = call i64 @builtin_lisp_symbol(i32 901)
  %call64 = call i64 @list1(i64 %call63)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call62, %cond.true ], [ %call64, %cond.false ]
  call void @specbind(i64 %call54, i64 %cond)
  %20 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 240), align 8
  %call65 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp66 = icmp eq i64 %20, %call65
  br i1 %cmp66, label %land.lhs.true.68, label %if.end.86

land.lhs.true.68:                                 ; preds = %cond.end
  %21 = load i64, i64* %sourcename.addr, align 8
  %call69 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp70 = icmp eq i64 %21, %call69
  br i1 %cmp70, label %if.end.86, label %land.lhs.true.72

land.lhs.true.72:                                 ; preds = %land.lhs.true.68
  %22 = load i64, i64* %sourcename.addr, align 8
  %call73 = call i64 @Ffile_name_absolute_p(i64 %22)
  %call74 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp75 = icmp eq i64 %call73, %call74
  br i1 %cmp75, label %if.end.86, label %land.lhs.true.77

land.lhs.true.77:                                 ; preds = %land.lhs.true.72
  %call78 = call i64 @builtin_lisp_symbol(i32 429)
  %call79 = call i64 @Ffboundp(i64 %call78)
  %call80 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp81 = icmp eq i64 %call79, %call80
  br i1 %cmp81, label %if.end.86, label %if.then.83

if.then.83:                                       ; preds = %land.lhs.true.77
  %call84 = call i64 @builtin_lisp_symbol(i32 429)
  %23 = load i64, i64* %sourcename.addr, align 8
  %call85 = call i64 @call1(i64 %call84, i64 %23)
  store i64 %call85, i64* %sourcename.addr, align 8
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.83, %land.lhs.true.77, %land.lhs.true.72, %land.lhs.true.68, %cond.end
  %24 = load i64, i64* %sourcename.addr, align 8
  call void @LOADHIST_ATTACH(i64 %24)
  store i8 1, i8* %continue_reading_p, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end.274, %if.end.86
  %25 = load i8, i8* %continue_reading_p, align 1
  %tobool87 = trunc i8 %25 to i1
  br i1 %tobool87, label %while.body, label %while.end.275

while.body:                                       ; preds = %while.cond
  %call88 = call i64 @SPECPDL_INDEX()
  store i64 %call88, i64* %count1, align 8
  %26 = load %struct.buffer*, %struct.buffer** %b, align 8
  %cmp89 = icmp ne %struct.buffer* %26, null
  br i1 %cmp89, label %land.lhs.true.91, label %if.end.96

land.lhs.true.91:                                 ; preds = %while.body
  %27 = load %struct.buffer*, %struct.buffer** %b, align 8
  %name_ = getelementptr inbounds %struct.buffer, %struct.buffer* %27, i32 0, i32 1
  %28 = load i64, i64* %name_, align 8
  %call92 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp93 = icmp eq i64 %28, %call92
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %land.lhs.true.91
  call void (i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.90, i32 0, i32 0)) #9
  unreachable

if.end.96:                                        ; preds = %land.lhs.true.91, %while.body
  %29 = load i64, i64* %start.addr, align 8
  %call97 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp98 = icmp eq i64 %29, %call97
  br i1 %cmp98, label %if.end.119, label %if.then.100

if.then.100:                                      ; preds = %if.end.96
  %call101 = call i64 @save_excursion_save()
  call void @record_unwind_protect(void (i64)* @save_excursion_restore, i64 %call101)
  %30 = load %struct.buffer*, %struct.buffer** %b, align 8
  call void @set_buffer_internal(%struct.buffer* %30)
  %call102 = call i64 @save_excursion_save()
  call void @record_unwind_protect(void (i64)* @save_excursion_restore, i64 %call102)
  %call103 = call i64 @save_restriction_save()
  call void @record_unwind_protect(void (i64)* @save_restriction_restore, i64 %call103)
  %31 = load i64, i64* %start.addr, align 8
  %call104 = call i64 @Fgoto_char(i64 %31)
  %32 = load i64, i64* %end.addr, align 8
  %call105 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp106 = icmp eq i64 %32, %call105
  br i1 %cmp106, label %if.end.110, label %if.then.108

if.then.108:                                      ; preds = %if.then.100
  %33 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %33, i32 0, i32 77
  %34 = load i64, i64* %begv, align 8
  %shl = shl i64 %34, 2
  %add = add i64 %shl, 2
  %35 = load i64, i64* %end.addr, align 8
  %call109 = call i64 @Fnarrow_to_region(i64 %add, i64 %35)
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.108, %if.then.100
  %36 = load i64, i64* %end.addr, align 8
  %and111 = and i64 %36, 7
  %conv112 = trunc i64 %and111 to i32
  %and113 = and i32 %conv112, -5
  %cmp114 = icmp eq i32 %and113, 2
  br i1 %cmp114, label %if.then.116, label %if.end.118

if.then.116:                                      ; preds = %if.end.110
  %call117 = call i64 @Fpoint_max_marker()
  store i64 %call117, i64* %end.addr, align 8
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.116, %if.end.110
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %if.end.96
  %37 = load %struct.buffer*, %struct.buffer** %b, align 8
  %tobool120 = icmp ne %struct.buffer* %37, null
  br i1 %tobool120, label %land.lhs.true.121, label %if.end.131

land.lhs.true.121:                                ; preds = %if.end.119
  %38 = load i8, i8* %first_sexp, align 1
  %tobool122 = trunc i8 %38 to i1
  br i1 %tobool122, label %if.then.124, label %if.end.131

if.then.124:                                      ; preds = %land.lhs.true.121
  %39 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %39, i32 0, i32 75
  %40 = load i64, i64* %pt, align 8
  %add125 = add nsw i64 %40, 0
  %cmp126 = icmp eq i64 %add125, 1
  br i1 %cmp126, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.124
  %41 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %41, i32 0, i32 79
  %42 = load i64, i64* %zv, align 8
  %43 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %43, i32 0, i32 73
  %44 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %44, i32 0, i32 2
  %45 = load i64, i64* %z, align 8
  %cmp128 = icmp eq i64 %42, %45
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.124
  %46 = phi i1 [ false, %if.then.124 ], [ %cmp128, %land.rhs ]
  %frombool130 = zext i1 %46 to i8
  store i8 %frombool130, i8* %whole_buffer, align 1
  br label %if.end.131

if.end.131:                                       ; preds = %land.end, %land.lhs.true.121, %if.end.119
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  store %struct._IO_FILE* %47, %struct._IO_FILE** @instream, align 8
  br label %read_next

read_next:                                        ; preds = %if.then.169, %while.end, %if.end.131
  %48 = load i64, i64* %readcharfun.addr, align 8
  %call132 = call i32 @readchar(i64 %48, i8* null)
  store i32 %call132, i32* %c, align 4
  %49 = load i32, i32* %c, align 4
  %cmp133 = icmp eq i32 %49, 59
  br i1 %cmp133, label %if.then.135, label %if.end.145

if.then.135:                                      ; preds = %read_next
  br label %while.cond.136

while.cond.136:                                   ; preds = %while.body.144, %if.then.135
  %50 = load i64, i64* %readcharfun.addr, align 8
  %call137 = call i32 @readchar(i64 %50, i8* null)
  store i32 %call137, i32* %c, align 4
  %cmp138 = icmp ne i32 %call137, 10
  br i1 %cmp138, label %land.rhs.140, label %land.end.143

land.rhs.140:                                     ; preds = %while.cond.136
  %51 = load i32, i32* %c, align 4
  %cmp141 = icmp ne i32 %51, -1
  br label %land.end.143

land.end.143:                                     ; preds = %land.rhs.140, %while.cond.136
  %52 = phi i1 [ false, %while.cond.136 ], [ %cmp141, %land.rhs.140 ]
  br i1 %52, label %while.body.144, label %while.end

while.body.144:                                   ; preds = %land.end.143
  br label %while.cond.136

while.end:                                        ; preds = %land.end.143
  br label %read_next

if.end.145:                                       ; preds = %read_next
  %53 = load i32, i32* %c, align 4
  %cmp146 = icmp slt i32 %53, 0
  br i1 %cmp146, label %if.then.148, label %if.end.151

if.then.148:                                      ; preds = %if.end.145
  %54 = load i64, i64* %count1, align 8
  %call149 = call i64 @builtin_lisp_symbol(i32 0)
  %call150 = call i64 @unbind_to(i64 %54, i64 %call149)
  br label %while.end.275

if.end.151:                                       ; preds = %if.end.145
  %55 = load i32, i32* %c, align 4
  %cmp152 = icmp eq i32 %55, 32
  br i1 %cmp152, label %if.then.169, label %lor.lhs.false.154

lor.lhs.false.154:                                ; preds = %if.end.151
  %56 = load i32, i32* %c, align 4
  %cmp155 = icmp eq i32 %56, 9
  br i1 %cmp155, label %if.then.169, label %lor.lhs.false.157

lor.lhs.false.157:                                ; preds = %lor.lhs.false.154
  %57 = load i32, i32* %c, align 4
  %cmp158 = icmp eq i32 %57, 10
  br i1 %cmp158, label %if.then.169, label %lor.lhs.false.160

lor.lhs.false.160:                                ; preds = %lor.lhs.false.157
  %58 = load i32, i32* %c, align 4
  %cmp161 = icmp eq i32 %58, 12
  br i1 %cmp161, label %if.then.169, label %lor.lhs.false.163

lor.lhs.false.163:                                ; preds = %lor.lhs.false.160
  %59 = load i32, i32* %c, align 4
  %cmp164 = icmp eq i32 %59, 13
  br i1 %cmp164, label %if.then.169, label %lor.lhs.false.166

lor.lhs.false.166:                                ; preds = %lor.lhs.false.163
  %60 = load i32, i32* %c, align 4
  %cmp167 = icmp eq i32 %60, 160
  br i1 %cmp167, label %if.then.169, label %if.end.170

if.then.169:                                      ; preds = %lor.lhs.false.166, %lor.lhs.false.163, %lor.lhs.false.160, %lor.lhs.false.157, %lor.lhs.false.154, %if.end.151
  br label %read_next

if.end.170:                                       ; preds = %lor.lhs.false.166
  %61 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 240), align 8
  %call171 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp172 = icmp eq i64 %61, %call171
  br i1 %cmp172, label %if.else.179, label %land.lhs.true.174

land.lhs.true.174:                                ; preds = %if.end.170
  %62 = load i32, i32* %c, align 4
  %cmp175 = icmp eq i32 %62, 40
  br i1 %cmp175, label %if.then.177, label %if.else.179

if.then.177:                                      ; preds = %land.lhs.true.174
  %63 = load i64, i64* %readcharfun.addr, align 8
  %call178 = call i64 @read_list(i1 zeroext false, i64 %63)
  store i64 %call178, i64* %val, align 8
  br label %if.end.241

if.else.179:                                      ; preds = %land.lhs.true.174, %if.end.170
  %64 = load i64, i64* %readcharfun.addr, align 8
  %65 = load i32, i32* %c, align 4
  call void @unreadchar(i64 %64, i32 %65)
  %call180 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call180, i64* @read_objects, align 8
  %66 = load i64, i64* %readfun.addr, align 8
  %call181 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp182 = icmp eq i64 %66, %call181
  br i1 %cmp182, label %if.else.229, label %if.then.184

if.then.184:                                      ; preds = %if.else.179
  %67 = load i64, i64* %readfun.addr, align 8
  %68 = load i64, i64* %readcharfun.addr, align 8
  %call185 = call i64 @call1(i64 %67, i64 %68)
  store i64 %call185, i64* %val, align 8
  %69 = load i64, i64* %readcharfun.addr, align 8
  %call186 = call zeroext i1 @BUFFERP(i64 %69)
  br i1 %call186, label %if.then.187, label %if.end.228

if.then.187:                                      ; preds = %if.then.184
  %70 = load i64, i64* %readcharfun.addr, align 8
  %call188 = call %struct.buffer* @XBUFFER(i64 %70)
  store %struct.buffer* %call188, %struct.buffer** %buf, align 8
  %71 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %72 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp189 = icmp eq %struct.buffer* %71, %72
  br i1 %cmp189, label %cond.true.191, label %cond.false.194

cond.true.191:                                    ; preds = %if.then.187
  %73 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt192 = getelementptr inbounds %struct.buffer, %struct.buffer* %73, i32 0, i32 75
  %74 = load i64, i64* %pt192, align 8
  %add193 = add nsw i64 %74, 0
  br label %cond.end.205

cond.false.194:                                   ; preds = %if.then.187
  %75 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %pt_marker_ = getelementptr inbounds %struct.buffer, %struct.buffer* %75, i32 0, i32 45
  %76 = load i64, i64* %pt_marker_, align 8
  %call195 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp196 = icmp eq i64 %76, %call195
  br i1 %cmp196, label %cond.true.198, label %cond.false.200

cond.true.198:                                    ; preds = %cond.false.194
  %77 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %pt199 = getelementptr inbounds %struct.buffer, %struct.buffer* %77, i32 0, i32 75
  %78 = load i64, i64* %pt199, align 8
  br label %cond.end.203

cond.false.200:                                   ; preds = %cond.false.194
  %79 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %pt_marker_201 = getelementptr inbounds %struct.buffer, %struct.buffer* %79, i32 0, i32 45
  %80 = load i64, i64* %pt_marker_201, align 8
  %call202 = call i64 @marker_position(i64 %80)
  br label %cond.end.203

cond.end.203:                                     ; preds = %cond.false.200, %cond.true.198
  %cond204 = phi i64 [ %78, %cond.true.198 ], [ %call202, %cond.false.200 ]
  br label %cond.end.205

cond.end.205:                                     ; preds = %cond.end.203, %cond.true.191
  %cond206 = phi i64 [ %add193, %cond.true.191 ], [ %cond204, %cond.end.203 ]
  %81 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %82 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp207 = icmp eq %struct.buffer* %81, %82
  br i1 %cmp207, label %cond.true.209, label %cond.false.211

cond.true.209:                                    ; preds = %cond.end.205
  %83 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv210 = getelementptr inbounds %struct.buffer, %struct.buffer* %83, i32 0, i32 79
  %84 = load i64, i64* %zv210, align 8
  br label %cond.end.222

cond.false.211:                                   ; preds = %cond.end.205
  %85 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %zv_marker_ = getelementptr inbounds %struct.buffer, %struct.buffer* %85, i32 0, i32 47
  %86 = load i64, i64* %zv_marker_, align 8
  %call212 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp213 = icmp eq i64 %86, %call212
  br i1 %cmp213, label %cond.true.215, label %cond.false.217

cond.true.215:                                    ; preds = %cond.false.211
  %87 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %zv216 = getelementptr inbounds %struct.buffer, %struct.buffer* %87, i32 0, i32 79
  %88 = load i64, i64* %zv216, align 8
  br label %cond.end.220

cond.false.217:                                   ; preds = %cond.false.211
  %89 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %zv_marker_218 = getelementptr inbounds %struct.buffer, %struct.buffer* %89, i32 0, i32 47
  %90 = load i64, i64* %zv_marker_218, align 8
  %call219 = call i64 @marker_position(i64 %90)
  br label %cond.end.220

cond.end.220:                                     ; preds = %cond.false.217, %cond.true.215
  %cond221 = phi i64 [ %88, %cond.true.215 ], [ %call219, %cond.false.217 ]
  br label %cond.end.222

cond.end.222:                                     ; preds = %cond.end.220, %cond.true.209
  %cond223 = phi i64 [ %84, %cond.true.209 ], [ %cond221, %cond.end.220 ]
  %cmp224 = icmp eq i64 %cond206, %cond223
  br i1 %cmp224, label %if.then.226, label %if.end.227

if.then.226:                                      ; preds = %cond.end.222
  store i8 0, i8* %continue_reading_p, align 1
  br label %if.end.227

if.end.227:                                       ; preds = %if.then.226, %cond.end.222
  br label %if.end.228

if.end.228:                                       ; preds = %if.end.227, %if.then.184
  br label %if.end.240

if.else.229:                                      ; preds = %if.else.179
  %91 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 165), align 8
  %call230 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp231 = icmp eq i64 %91, %call230
  br i1 %cmp231, label %if.else.235, label %if.then.233

if.then.233:                                      ; preds = %if.else.229
  %92 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 165), align 8
  %93 = load i64, i64* %readcharfun.addr, align 8
  %call234 = call i64 @call1(i64 %92, i64 %93)
  store i64 %call234, i64* %val, align 8
  br label %if.end.239

if.else.235:                                      ; preds = %if.else.229
  %94 = load i64, i64* %readcharfun.addr, align 8
  %call236 = call i64 @builtin_lisp_symbol(i32 0)
  %call237 = call i64 @builtin_lisp_symbol(i32 0)
  %call238 = call i64 @read_internal_start(i64 %94, i64 %call236, i64 %call237)
  store i64 %call238, i64* %val, align 8
  br label %if.end.239

if.end.239:                                       ; preds = %if.else.235, %if.then.233
  br label %if.end.240

if.end.240:                                       ; preds = %if.end.239, %if.end.228
  br label %if.end.241

if.end.241:                                       ; preds = %if.end.240, %if.then.177
  %95 = load i64, i64* %start.addr, align 8
  %call242 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp243 = icmp eq i64 %95, %call242
  br i1 %cmp243, label %if.end.250, label %land.lhs.true.245

land.lhs.true.245:                                ; preds = %if.end.241
  %96 = load i8, i8* %continue_reading_p, align 1
  %tobool246 = trunc i8 %96 to i1
  br i1 %tobool246, label %if.then.248, label %if.end.250

if.then.248:                                      ; preds = %land.lhs.true.245
  %call249 = call i64 @Fpoint_marker()
  store i64 %call249, i64* %start.addr, align 8
  br label %if.end.250

if.end.250:                                       ; preds = %if.then.248, %land.lhs.true.245, %if.end.241
  %97 = load i64, i64* %count1, align 8
  %call251 = call i64 @builtin_lisp_symbol(i32 0)
  %call252 = call i64 @unbind_to(i64 %97, i64 %call251)
  %98 = load i64, i64* %macroexpand, align 8
  %call253 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp254 = icmp eq i64 %98, %call253
  br i1 %cmp254, label %if.else.258, label %if.then.256

if.then.256:                                      ; preds = %if.end.250
  %99 = load i64, i64* %val, align 8
  %100 = load i64, i64* %macroexpand, align 8
  %call257 = call i64 @readevalloop_eager_expand_eval(i64 %99, i64 %100)
  store i64 %call257, i64* %val, align 8
  br label %if.end.260

if.else.258:                                      ; preds = %if.end.250
  %101 = load i64, i64* %val, align 8
  %call259 = call i64 @eval_sub(i64 %101)
  store i64 %call259, i64* %val, align 8
  br label %if.end.260

if.end.260:                                       ; preds = %if.else.258, %if.then.256
  %102 = load i8, i8* %printflag.addr, align 1
  %tobool261 = trunc i8 %102 to i1
  br i1 %tobool261, label %if.then.262, label %if.end.274

if.then.262:                                      ; preds = %if.end.260
  %103 = load i64, i64* %val, align 8
  %104 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 323), align 8
  %call263 = call i64 @Fcons(i64 %103, i64 %104)
  store i64 %call263, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 323), align 8
  %105 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 277), align 8
  %call264 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp265 = icmp eq i64 %105, %call264
  br i1 %cmp265, label %if.then.267, label %if.else.270

if.then.267:                                      ; preds = %if.then.262
  %106 = load i64, i64* %val, align 8
  %call268 = call i64 @builtin_lisp_symbol(i32 0)
  %call269 = call i64 @Fprin1(i64 %106, i64 %call268)
  br label %if.end.273

if.else.270:                                      ; preds = %if.then.262
  %107 = load i64, i64* %val, align 8
  %call271 = call i64 @builtin_lisp_symbol(i32 0)
  %call272 = call i64 @Fprint(i64 %107, i64 %call271)
  br label %if.end.273

if.end.273:                                       ; preds = %if.else.270, %if.then.267
  br label %if.end.274

if.end.274:                                       ; preds = %if.end.273, %if.end.260
  store i8 0, i8* %first_sexp, align 1
  br label %while.cond

while.end.275:                                    ; preds = %if.then.148, %while.cond
  %108 = load i64, i64* %sourcename.addr, align 8
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %tobool276 = icmp ne %struct._IO_FILE* %109, null
  br i1 %tobool276, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.end.275
  %110 = load i8, i8* %whole_buffer, align 1
  %tobool277 = trunc i8 %110 to i1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.end.275
  %111 = phi i1 [ true, %while.end.275 ], [ %tobool277, %lor.rhs ]
  call void @build_load_history(i64 %108, i1 zeroext %111)
  %112 = load i64, i64* %count, align 8
  %call279 = call i64 @builtin_lisp_symbol(i32 0)
  %call280 = call i64 @unbind_to(i64 %112, i64 %call279)
  ret void
}

declare i64 @Ffboundp(i64) #1

declare i64 @call1(i64, i64) #1

declare void @xfree(i8*) #1

; Function Attrs: nounwind uwtable
define i64 @Flocate_file_internal(i64 %filename, i64 %path, i64 %suffixes, i64 %predicate) #0 {
entry:
  %filename.addr = alloca i64, align 8
  %path.addr = alloca i64, align 8
  %suffixes.addr = alloca i64, align 8
  %predicate.addr = alloca i64, align 8
  %file = alloca i64, align 8
  %fd = alloca i32, align 4
  store i64 %filename, i64* %filename.addr, align 8
  store i64 %path, i64* %path.addr, align 8
  store i64 %suffixes, i64* %suffixes.addr, align 8
  store i64 %predicate, i64* %predicate.addr, align 8
  %0 = load i64, i64* %path.addr, align 8
  %1 = load i64, i64* %filename.addr, align 8
  %2 = load i64, i64* %suffixes.addr, align 8
  %3 = load i64, i64* %predicate.addr, align 8
  %call = call i32 @openp(i64 %0, i64 %1, i64 %2, i64* %file, i64 %3, i1 zeroext false)
  store i32 %call, i32* %fd, align 4
  %4 = load i64, i64* %predicate.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %4, %call1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %fd, align 4
  %cmp2 = icmp sge i32 %5, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load i32, i32* %fd, align 4
  %call3 = call i32 @emacs_close(i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load i64, i64* %file, align 8
  ret i64 %7
}

declare { i64, i64 } @make_timespec(i64, i64) #1

declare void @CHECK_STRING_CAR(i64) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @complete_filename_p(i64 %pathname) #0 {
entry:
  %pathname.addr = alloca i64, align 8
  %s = alloca i8*, align 8
  store i64 %pathname, i64* %pathname.addr, align 8
  %0 = load i64, i64* %pathname.addr, align 8
  %call = call i8* @SDATA(i64 %0)
  store i8* %call, i8** %s, align 8
  %1 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %3 = load i64, i64* %pathname.addr, align 8
  %call2 = call i64 @SCHARS(i64 %3)
  %cmp3 = icmp sgt i64 %call2, 2
  br i1 %cmp3, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %lor.rhs
  br i1 false, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load i8*, i8** %s, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %4, i64 2
  %5 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %5 to i32
  %cmp7 = icmp eq i32 %conv6, 47
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %lor.rhs
  %6 = phi i1 [ false, %land.lhs.true ], [ false, %lor.rhs ], [ %cmp7, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %entry
  %7 = phi i1 [ true, %entry ], [ %6, %land.end ]
  ret i1 %7
}

declare i64 @Fexpand_file_name(i64, i64) #1

declare i8* @record_xmalloc(i64) #1

declare i64 @list1(i64) #1

declare zeroext i8 @SREF(i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

declare zeroext i1 @STRING_MULTIBYTE(i64) #1

declare i64 @make_unibyte_string(i8*, i64) #1

declare i64 @make_string(i8*, i64) #1

declare zeroext i1 @NATNUMP(i64) #1

declare i64 @Ffile_readable_p(i64) #1

declare i64 @Ffile_directory_p(i64) #1

; Function Attrs: nounwind
declare i32 @faccessat(i32, i8*, i32, i32) #4

declare zeroext i1 @file_directory_p(i8*) #1

declare i32 @emacs_open(i8*, i32, i32) #1

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #4

; Function Attrs: nounwind uwtable
define i64 @Feval_buffer(i64 %buffer, i64 %printflag, i64 %filename, i64 %unibyte, i64 %do_allow_print) #0 {
entry:
  %buffer.addr = alloca i64, align 8
  %printflag.addr = alloca i64, align 8
  %filename.addr = alloca i64, align 8
  %unibyte.addr = alloca i64, align 8
  %do_allow_print.addr = alloca i64, align 8
  %count = alloca i64, align 8
  %tem = alloca i64, align 8
  %buf = alloca i64, align 8
  store i64 %buffer, i64* %buffer.addr, align 8
  store i64 %printflag, i64* %printflag.addr, align 8
  store i64 %filename, i64* %filename.addr, align 8
  store i64 %unibyte, i64* %unibyte.addr, align 8
  store i64 %do_allow_print, i64* %do_allow_print.addr, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %count, align 8
  %0 = load i64, i64* %buffer.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call i64 @Fcurrent_buffer()
  store i64 %call2, i64* %buf, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %buffer.addr, align 8
  %call3 = call i64 @Fget_buffer(i64 %1)
  store i64 %call3, i64* %buf, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i64, i64* %buf, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp5 = icmp eq i64 %2, %call4
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  call void (i8*, ...) @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0)) #9
  unreachable

if.end.7:                                         ; preds = %if.end
  %3 = load i64, i64* %printflag.addr, align 8
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp9 = icmp eq i64 %3, %call8
  br i1 %cmp9, label %land.lhs.true, label %if.else.14

land.lhs.true:                                    ; preds = %if.end.7
  %4 = load i64, i64* %do_allow_print.addr, align 8
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp11 = icmp eq i64 %4, %call10
  br i1 %cmp11, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %land.lhs.true
  %call13 = call i64 @builtin_lisp_symbol(i32 897)
  store i64 %call13, i64* %tem, align 8
  br label %if.end.15

if.else.14:                                       ; preds = %land.lhs.true, %if.end.7
  %5 = load i64, i64* %printflag.addr, align 8
  store i64 %5, i64* %tem, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.14, %if.then.12
  %6 = load i64, i64* %filename.addr, align 8
  %call16 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp17 = icmp eq i64 %6, %call16
  br i1 %cmp17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.15
  %7 = load i64, i64* %buf, align 8
  %call19 = call %struct.buffer* @XBUFFER(i64 %7)
  %filename_ = getelementptr inbounds %struct.buffer, %struct.buffer* %call19, i32 0, i32 2
  %8 = load i64, i64* %filename_, align 8
  store i64 %8, i64* %filename.addr, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end.15
  %call21 = call i64 @builtin_lisp_symbol(i32 379)
  %9 = load i64, i64* %buf, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 82), align 8
  %call22 = call i64 @Fcons(i64 %9, i64 %10)
  call void @specbind(i64 %call21, i64 %call22)
  %call23 = call i64 @builtin_lisp_symbol(i32 871)
  %11 = load i64, i64* %tem, align 8
  call void @specbind(i64 %call23, i64 %11)
  %call24 = call i64 @save_excursion_save()
  call void @record_unwind_protect(void (i64)* @save_excursion_restore, i64 %call24)
  %12 = load i64, i64* %buf, align 8
  %call25 = call %struct.buffer* @XBUFFER(i64 %12)
  %13 = load i64, i64* %buf, align 8
  %call26 = call %struct.buffer* @XBUFFER(i64 %13)
  %14 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp27 = icmp eq %struct.buffer* %call26, %14
  br i1 %cmp27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.20
  %15 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %15, i32 0, i32 77
  %16 = load i64, i64* %begv, align 8
  br label %cond.end.38

cond.false:                                       ; preds = %if.end.20
  %17 = load i64, i64* %buf, align 8
  %call28 = call %struct.buffer* @XBUFFER(i64 %17)
  %begv_marker_ = getelementptr inbounds %struct.buffer, %struct.buffer* %call28, i32 0, i32 46
  %18 = load i64, i64* %begv_marker_, align 8
  %call29 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp30 = icmp eq i64 %18, %call29
  br i1 %cmp30, label %cond.true.31, label %cond.false.34

cond.true.31:                                     ; preds = %cond.false
  %19 = load i64, i64* %buf, align 8
  %call32 = call %struct.buffer* @XBUFFER(i64 %19)
  %begv33 = getelementptr inbounds %struct.buffer, %struct.buffer* %call32, i32 0, i32 77
  %20 = load i64, i64* %begv33, align 8
  br label %cond.end

cond.false.34:                                    ; preds = %cond.false
  %21 = load i64, i64* %buf, align 8
  %call35 = call %struct.buffer* @XBUFFER(i64 %21)
  %begv_marker_36 = getelementptr inbounds %struct.buffer, %struct.buffer* %call35, i32 0, i32 46
  %22 = load i64, i64* %begv_marker_36, align 8
  %call37 = call i64 @marker_position(i64 %22)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.34, %cond.true.31
  %cond = phi i64 [ %20, %cond.true.31 ], [ %call37, %cond.false.34 ]
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.end, %cond.true
  %cond39 = phi i64 [ %16, %cond.true ], [ %cond, %cond.end ]
  call void @temp_set_point(%struct.buffer* %call25, i64 %cond39)
  %call40 = call i64 @builtin_lisp_symbol(i32 614)
  %23 = load i64, i64* %buf, align 8
  %call41 = call zeroext i1 @lisp_file_lexically_bound_p(i64 %23)
  br i1 %call41, label %cond.true.42, label %cond.false.44

cond.true.42:                                     ; preds = %cond.end.38
  %call43 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.46

cond.false.44:                                    ; preds = %cond.end.38
  %call45 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.44, %cond.true.42
  %cond47 = phi i64 [ %call43, %cond.true.42 ], [ %call45, %cond.false.44 ]
  call void @specbind(i64 %call40, i64 %cond47)
  %24 = load i64, i64* %buf, align 8
  %25 = load i64, i64* %filename.addr, align 8
  %26 = load i64, i64* %printflag.addr, align 8
  %call48 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp49 = icmp eq i64 %26, %call48
  %lnot = xor i1 %cmp49, true
  %27 = load i64, i64* %unibyte.addr, align 8
  %call50 = call i64 @builtin_lisp_symbol(i32 0)
  %call51 = call i64 @builtin_lisp_symbol(i32 0)
  %call52 = call i64 @builtin_lisp_symbol(i32 0)
  call void @readevalloop(i64 %24, %struct._IO_FILE* null, i64 %25, i1 zeroext %lnot, i64 %27, i64 %call50, i64 %call51, i64 %call52)
  %28 = load i64, i64* %count, align 8
  %call53 = call i64 @builtin_lisp_symbol(i32 0)
  %call54 = call i64 @unbind_to(i64 %28, i64 %call53)
  %call55 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call55
}

declare i64 @Fcurrent_buffer() #1

declare i64 @Fget_buffer(i64) #1

declare %struct.buffer* @XBUFFER(i64) #1

declare void @save_excursion_restore(i64) #1

declare i64 @save_excursion_save() #1

declare void @temp_set_point(%struct.buffer*, i64) #1

declare i64 @marker_position(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Feval_region(i64 %start, i64 %end, i64 %printflag, i64 %read_function) #0 {
entry:
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %printflag.addr = alloca i64, align 8
  %read_function.addr = alloca i64, align 8
  %count = alloca i64, align 8
  %tem = alloca i64, align 8
  %cbuf = alloca i64, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i64 %printflag, i64* %printflag.addr, align 8
  store i64 %read_function, i64* %read_function.addr, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %count, align 8
  %call1 = call i64 @Fcurrent_buffer()
  store i64 %call1, i64* %cbuf, align 8
  %0 = load i64, i64* %printflag.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call3 = call i64 @builtin_lisp_symbol(i32 897)
  store i64 %call3, i64* %tem, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %printflag.addr, align 8
  store i64 %1, i64* %tem, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call4 = call i64 @builtin_lisp_symbol(i32 871)
  %2 = load i64, i64* %tem, align 8
  call void @specbind(i64 %call4, i64 %2)
  %call5 = call i64 @builtin_lisp_symbol(i32 379)
  %3 = load i64, i64* %cbuf, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 82), align 8
  %call6 = call i64 @Fcons(i64 %3, i64 %4)
  call void @specbind(i64 %call5, i64 %call6)
  %5 = load i64, i64* %cbuf, align 8
  %6 = load i64, i64* %cbuf, align 8
  %call7 = call %struct.buffer* @XBUFFER(i64 %6)
  %filename_ = getelementptr inbounds %struct.buffer, %struct.buffer* %call7, i32 0, i32 2
  %7 = load i64, i64* %filename_, align 8
  %8 = load i64, i64* %printflag.addr, align 8
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp9 = icmp eq i64 %8, %call8
  %lnot = xor i1 %cmp9, true
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  %9 = load i64, i64* %read_function.addr, align 8
  %10 = load i64, i64* %start.addr, align 8
  %11 = load i64, i64* %end.addr, align 8
  call void @readevalloop(i64 %5, %struct._IO_FILE* null, i64 %7, i1 zeroext %lnot, i64 %call10, i64 %9, i64 %10, i64 %11)
  %12 = load i64, i64* %count, align 8
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  %call12 = call i64 @unbind_to(i64 %12, i64 %call11)
  ret i64 %call12
}

; Function Attrs: nounwind uwtable
define i64 @Fread(i64 %stream) #0 {
entry:
  %retval = alloca i64, align 8
  %stream.addr = alloca i64, align 8
  store i64 %stream, i64* %stream.addr, align 8
  %0 = load i64, i64* %stream.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 276), align 8
  store i64 %1, i64* %stream.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* %stream.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp2 = icmp eq i64 %2, %call1
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %call4 = call i64 @builtin_lisp_symbol(i32 790)
  store i64 %call4, i64* %stream.addr, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %3 = load i64, i64* %stream.addr, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 790)
  %cmp7 = icmp eq i64 %3, %call6
  br i1 %cmp7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end.5
  %call9 = call i64 @intern(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0))
  %call10 = call i64 @build_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0))
  %call11 = call i64 @call1(i64 %call9, i64 %call10)
  store i64 %call11, i64* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.5
  %4 = load i64, i64* %stream.addr, align 8
  %call13 = call i64 @builtin_lisp_symbol(i32 0)
  %call14 = call i64 @builtin_lisp_symbol(i32 0)
  %call15 = call i64 @read_internal_start(i64 %4, i64 %call13, i64 %call14)
  store i64 %call15, i64* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.8
  %5 = load i64, i64* %retval
  ret i64 %5
}

declare i64 @intern(i8*) #1

declare i64 @build_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal i64 @read_internal_start(i64 %stream, i64 %start, i64 %end) #0 {
entry:
  %stream.addr = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %retval1 = alloca i64, align 8
  %startval = alloca i64, align 8
  %endval = alloca i64, align 8
  %string = alloca i64, align 8
  store i64 %stream, i64* %stream.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i64 0, i64* @readchar_count, align 8
  store i8 0, i8* @new_backquote_flag, align 1
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* @read_objects, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 247), align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp = icmp eq i64 %0, %call2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 247), align 8
  %2 = load i64, i64* %stream.addr, align 8
  %cmp3 = icmp eq i64 %1, %2
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call4, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 246), align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %3 = load i64, i64* %stream.addr, align 8
  %call5 = call zeroext i1 @STRINGP(i64 %3)
  br i1 %call5, label %if.then.11, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %if.end
  %4 = load i64, i64* %stream.addr, align 8
  %and = and i64 %4, 7
  %conv = trunc i64 %and to i32
  %cmp7 = icmp eq i32 %conv, 3
  br i1 %cmp7, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %lor.lhs.false.6
  %5 = load i64, i64* %stream.addr, align 8
  %sub = sub nsw i64 %5, 3
  %6 = inttoptr i64 %sub to i8*
  %7 = bitcast i8* %6 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %7, i32 0, i32 0
  %8 = load i64, i64* %car, align 8
  %call9 = call zeroext i1 @STRINGP(i64 %8)
  br i1 %call9, label %if.then.11, label %if.end.19

if.then.11:                                       ; preds = %land.lhs.true, %if.end
  %9 = load i64, i64* %stream.addr, align 8
  %call12 = call zeroext i1 @STRINGP(i64 %9)
  br i1 %call12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then.11
  %10 = load i64, i64* %stream.addr, align 8
  store i64 %10, i64* %string, align 8
  br label %if.end.16

if.else:                                          ; preds = %if.then.11
  %11 = load i64, i64* %stream.addr, align 8
  %sub14 = sub nsw i64 %11, 3
  %12 = inttoptr i64 %sub14 to i8*
  %13 = bitcast i8* %12 to %struct.Lisp_Cons*
  %car15 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %13, i32 0, i32 0
  %14 = load i64, i64* %car15, align 8
  store i64 %14, i64* %string, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.13
  %15 = load i64, i64* %string, align 8
  %16 = load i64, i64* %start.addr, align 8
  %17 = load i64, i64* %end.addr, align 8
  %18 = load i64, i64* %string, align 8
  %call17 = call i64 @SCHARS(i64 %18)
  call void @validate_subarray(i64 %15, i64 %16, i64 %17, i64 %call17, i64* %startval, i64* %endval)
  %19 = load i64, i64* %startval, align 8
  store i64 %19, i64* @read_from_string_index, align 8
  %20 = load i64, i64* %string, align 8
  %21 = load i64, i64* %startval, align 8
  %call18 = call i64 @string_char_to_byte(i64 %20, i64 %21)
  store i64 %call18, i64* @read_from_string_index_byte, align 8
  %22 = load i64, i64* %endval, align 8
  store i64 %22, i64* @read_from_string_limit, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.16, %land.lhs.true, %lor.lhs.false.6
  %23 = load i64, i64* %stream.addr, align 8
  %call20 = call i64 @read0(i64 %23)
  store i64 %call20, i64* %retval1, align 8
  %24 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 247), align 8
  %call21 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp22 = icmp eq i64 %24, %call21
  br i1 %cmp22, label %if.then.27, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %if.end.19
  %25 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 247), align 8
  %26 = load i64, i64* %stream.addr, align 8
  %cmp25 = icmp eq i64 %25, %26
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %lor.lhs.false.24, %if.end.19
  %27 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 246), align 8
  %call28 = call i64 @Fnreverse(i64 %27)
  store i64 %call28, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 246), align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %lor.lhs.false.24
  %28 = load i64, i64* %retval1, align 8
  ret i64 %28
}

; Function Attrs: nounwind uwtable
define i64 @Fread_from_string(i64 %string, i64 %start, i64 %end) #0 {
entry:
  %string.addr = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %string, i64* %string.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  %0 = load i64, i64* %string.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i64, i64* %string.addr, align 8
  %2 = load i64, i64* %start.addr, align 8
  %3 = load i64, i64* %end.addr, align 8
  %call = call i64 @read_internal_start(i64 %1, i64 %2, i64 %3)
  store i64 %call, i64* %ret, align 8
  %4 = load i64, i64* %ret, align 8
  %5 = load i64, i64* @read_from_string_index, align 8
  %shl = shl i64 %5, 2
  %add = add i64 %shl, 2
  %call1 = call i64 @Fcons(i64 %4, i64 %add)
  ret i64 %call1
}

; Function Attrs: nounwind uwtable
define i64 @string_to_number(i8* %string, i32 %base, i1 zeroext %ignore_trailing) #0 {
entry:
  %retval = alloca i64, align 8
  %string.addr = alloca i8*, align 8
  %base.addr = alloca i32, align 4
  %ignore_trailing.addr = alloca i8, align 1
  %state = alloca i32, align 4
  %cp = alloca i8*, align 8
  %leading_digit = alloca i32, align 4
  %float_syntax = alloca i8, align 1
  %value = alloca double, align 8
  %negative = alloca i8, align 1
  %signedp = alloca i8, align 1
  %ecp = alloca i8*, align 8
  %n = alloca i64, align 8
  %signed_n = alloca i64, align 8
  store i8* %string, i8** %string.addr, align 8
  store i32 %base, i32* %base.addr, align 4
  %frombool = zext i1 %ignore_trailing to i8
  store i8 %frombool, i8* %ignore_trailing.addr, align 1
  %0 = load i8*, i8** %string.addr, align 8
  store i8* %0, i8** %cp, align 8
  store i8 0, i8* %float_syntax, align 1
  store double 0.000000e+00, double* %value, align 8
  %1 = load i8*, i8** %cp, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 45
  %frombool2 = zext i1 %cmp to i8
  store i8 %frombool2, i8* %negative, align 1
  %3 = load i8, i8* %negative, align 1
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %4 = load i8*, i8** %cp, align 8
  %5 = load i8, i8* %4, align 1
  %conv4 = sext i8 %5 to i32
  %cmp5 = icmp eq i32 %conv4, 43
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %6 = phi i1 [ true, %entry ], [ %cmp5, %lor.rhs ]
  %frombool7 = zext i1 %6 to i8
  store i8 %frombool7, i8* %signedp, align 1
  %7 = load i8, i8* %signedp, align 1
  %tobool8 = trunc i8 %7 to i1
  %conv9 = zext i1 %tobool8 to i32
  %8 = load i8*, i8** %cp, align 8
  %idx.ext = sext i32 %conv9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %idx.ext
  store i8* %add.ptr, i8** %cp, align 8
  store i32 0, i32* %state, align 4
  %9 = load i8*, i8** %cp, align 8
  %10 = load i8, i8* %9, align 1
  %conv10 = sext i8 %10 to i32
  %11 = load i32, i32* %base.addr, align 4
  %call = call i32 @digit_to_number(i32 %conv10, i32 %11)
  store i32 %call, i32* %leading_digit, align 4
  %12 = load i32, i32* %leading_digit, align 4
  %cmp11 = icmp sge i32 %12, 0
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  %13 = load i32, i32* %state, align 4
  %or = or i32 %13, 1
  store i32 %or, i32* %state, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %14 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %15 = load i8*, i8** %cp, align 8
  %16 = load i8, i8* %15, align 1
  %conv13 = sext i8 %16 to i32
  %17 = load i32, i32* %base.addr, align 4
  %call14 = call i32 @digit_to_number(i32 %conv13, i32 %17)
  %cmp15 = icmp sge i32 %call14, 0
  br i1 %cmp15, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.end
  %18 = load i8*, i8** %cp, align 8
  %19 = load i8, i8* %18, align 1
  %conv17 = sext i8 %19 to i32
  %cmp18 = icmp eq i32 %conv17, 46
  br i1 %cmp18, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end
  %20 = load i32, i32* %state, align 4
  %or21 = or i32 %20, 2
  store i32 %or21, i32* %state, align 4
  %21 = load i8*, i8** %cp, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr22, i8** %cp, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.end
  %22 = load i32, i32* %base.addr, align 4
  %cmp24 = icmp eq i32 %22, 10
  br i1 %cmp24, label %if.then.26, label %if.end.141

if.then.26:                                       ; preds = %if.end.23
  %23 = load i8*, i8** %cp, align 8
  %24 = load i8, i8* %23, align 1
  %conv27 = sext i8 %24 to i32
  %cmp28 = icmp sle i32 48, %conv27
  br i1 %cmp28, label %land.lhs.true, label %if.end.45

land.lhs.true:                                    ; preds = %if.then.26
  %25 = load i8*, i8** %cp, align 8
  %26 = load i8, i8* %25, align 1
  %conv30 = sext i8 %26 to i32
  %cmp31 = icmp sle i32 %conv30, 57
  br i1 %cmp31, label %if.then.33, label %if.end.45

if.then.33:                                       ; preds = %land.lhs.true
  %27 = load i32, i32* %state, align 4
  %or34 = or i32 %27, 4
  store i32 %or34, i32* %state, align 4
  br label %do.body.35

do.body.35:                                       ; preds = %land.end, %if.then.33
  %28 = load i8*, i8** %cp, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr36, i8** %cp, align 8
  br label %do.cond.37

do.cond.37:                                       ; preds = %do.body.35
  %29 = load i8*, i8** %cp, align 8
  %30 = load i8, i8* %29, align 1
  %conv38 = sext i8 %30 to i32
  %cmp39 = icmp sle i32 48, %conv38
  br i1 %cmp39, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond.37
  %31 = load i8*, i8** %cp, align 8
  %32 = load i8, i8* %31, align 1
  %conv41 = sext i8 %32 to i32
  %cmp42 = icmp sle i32 %conv41, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond.37
  %33 = phi i1 [ false, %do.cond.37 ], [ %cmp42, %land.rhs ]
  br i1 %33, label %do.body.35, label %do.end.44

do.end.44:                                        ; preds = %land.end
  br label %if.end.45

if.end.45:                                        ; preds = %do.end.44, %land.lhs.true, %if.then.26
  %34 = load i8*, i8** %cp, align 8
  %35 = load i8, i8* %34, align 1
  %conv46 = sext i8 %35 to i32
  %cmp47 = icmp eq i32 %conv46, 101
  br i1 %cmp47, label %if.then.52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.45
  %36 = load i8*, i8** %cp, align 8
  %37 = load i8, i8* %36, align 1
  %conv49 = sext i8 %37 to i32
  %cmp50 = icmp eq i32 %conv49, 69
  br i1 %cmp50, label %if.then.52, label %if.end.133

if.then.52:                                       ; preds = %lor.lhs.false, %if.end.45
  %38 = load i8*, i8** %cp, align 8
  store i8* %38, i8** %ecp, align 8
  %39 = load i8*, i8** %cp, align 8
  %incdec.ptr53 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr53, i8** %cp, align 8
  %40 = load i8*, i8** %cp, align 8
  %41 = load i8, i8* %40, align 1
  %conv54 = sext i8 %41 to i32
  %cmp55 = icmp eq i32 %conv54, 43
  br i1 %cmp55, label %if.then.61, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %if.then.52
  %42 = load i8*, i8** %cp, align 8
  %43 = load i8, i8* %42, align 1
  %conv58 = sext i8 %43 to i32
  %cmp59 = icmp eq i32 %conv58, 45
  br i1 %cmp59, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %lor.lhs.false.57, %if.then.52
  %44 = load i8*, i8** %cp, align 8
  %incdec.ptr62 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr62, i8** %cp, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %lor.lhs.false.57
  %45 = load i8*, i8** %cp, align 8
  %46 = load i8, i8* %45, align 1
  %conv64 = sext i8 %46 to i32
  %cmp65 = icmp sle i32 48, %conv64
  br i1 %cmp65, label %land.lhs.true.67, label %if.else

land.lhs.true.67:                                 ; preds = %if.end.63
  %47 = load i8*, i8** %cp, align 8
  %48 = load i8, i8* %47, align 1
  %conv68 = sext i8 %48 to i32
  %cmp69 = icmp sle i32 %conv68, 57
  br i1 %cmp69, label %if.then.71, label %if.else

if.then.71:                                       ; preds = %land.lhs.true.67
  %49 = load i32, i32* %state, align 4
  %or72 = or i32 %49, 16
  store i32 %or72, i32* %state, align 4
  br label %do.body.73

do.body.73:                                       ; preds = %land.end.83, %if.then.71
  %50 = load i8*, i8** %cp, align 8
  %incdec.ptr74 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr74, i8** %cp, align 8
  br label %do.cond.75

do.cond.75:                                       ; preds = %do.body.73
  %51 = load i8*, i8** %cp, align 8
  %52 = load i8, i8* %51, align 1
  %conv76 = sext i8 %52 to i32
  %cmp77 = icmp sle i32 48, %conv76
  br i1 %cmp77, label %land.rhs.79, label %land.end.83

land.rhs.79:                                      ; preds = %do.cond.75
  %53 = load i8*, i8** %cp, align 8
  %54 = load i8, i8* %53, align 1
  %conv80 = sext i8 %54 to i32
  %cmp81 = icmp sle i32 %conv80, 57
  br label %land.end.83

land.end.83:                                      ; preds = %land.rhs.79, %do.cond.75
  %55 = phi i1 [ false, %do.cond.75 ], [ %cmp81, %land.rhs.79 ]
  br i1 %55, label %do.body.73, label %do.end.84

do.end.84:                                        ; preds = %land.end.83
  br label %if.end.132

if.else:                                          ; preds = %land.lhs.true.67, %if.end.63
  %56 = load i8*, i8** %cp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %56, i64 -1
  %57 = load i8, i8* %arrayidx, align 1
  %conv85 = sext i8 %57 to i32
  %cmp86 = icmp eq i32 %conv85, 43
  br i1 %cmp86, label %land.lhs.true.88, label %if.else.106

land.lhs.true.88:                                 ; preds = %if.else
  %58 = load i8*, i8** %cp, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %58, i64 0
  %59 = load i8, i8* %arrayidx89, align 1
  %conv90 = sext i8 %59 to i32
  %cmp91 = icmp eq i32 %conv90, 73
  br i1 %cmp91, label %land.lhs.true.93, label %if.else.106

land.lhs.true.93:                                 ; preds = %land.lhs.true.88
  %60 = load i8*, i8** %cp, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %60, i64 1
  %61 = load i8, i8* %arrayidx94, align 1
  %conv95 = sext i8 %61 to i32
  %cmp96 = icmp eq i32 %conv95, 78
  br i1 %cmp96, label %land.lhs.true.98, label %if.else.106

land.lhs.true.98:                                 ; preds = %land.lhs.true.93
  %62 = load i8*, i8** %cp, align 8
  %arrayidx99 = getelementptr inbounds i8, i8* %62, i64 2
  %63 = load i8, i8* %arrayidx99, align 1
  %conv100 = sext i8 %63 to i32
  %cmp101 = icmp eq i32 %conv100, 70
  br i1 %cmp101, label %if.then.103, label %if.else.106

if.then.103:                                      ; preds = %land.lhs.true.98
  %64 = load i32, i32* %state, align 4
  %or104 = or i32 %64, 16
  store i32 %or104, i32* %state, align 4
  %65 = load i8*, i8** %cp, align 8
  %add.ptr105 = getelementptr inbounds i8, i8* %65, i64 3
  store i8* %add.ptr105, i8** %cp, align 8
  store double 0x7FF0000000000000, double* %value, align 8
  br label %if.end.131

if.else.106:                                      ; preds = %land.lhs.true.98, %land.lhs.true.93, %land.lhs.true.88, %if.else
  %66 = load i8*, i8** %cp, align 8
  %arrayidx107 = getelementptr inbounds i8, i8* %66, i64 -1
  %67 = load i8, i8* %arrayidx107, align 1
  %conv108 = sext i8 %67 to i32
  %cmp109 = icmp eq i32 %conv108, 43
  br i1 %cmp109, label %land.lhs.true.111, label %if.else.129

land.lhs.true.111:                                ; preds = %if.else.106
  %68 = load i8*, i8** %cp, align 8
  %arrayidx112 = getelementptr inbounds i8, i8* %68, i64 0
  %69 = load i8, i8* %arrayidx112, align 1
  %conv113 = sext i8 %69 to i32
  %cmp114 = icmp eq i32 %conv113, 78
  br i1 %cmp114, label %land.lhs.true.116, label %if.else.129

land.lhs.true.116:                                ; preds = %land.lhs.true.111
  %70 = load i8*, i8** %cp, align 8
  %arrayidx117 = getelementptr inbounds i8, i8* %70, i64 1
  %71 = load i8, i8* %arrayidx117, align 1
  %conv118 = sext i8 %71 to i32
  %cmp119 = icmp eq i32 %conv118, 97
  br i1 %cmp119, label %land.lhs.true.121, label %if.else.129

land.lhs.true.121:                                ; preds = %land.lhs.true.116
  %72 = load i8*, i8** %cp, align 8
  %arrayidx122 = getelementptr inbounds i8, i8* %72, i64 2
  %73 = load i8, i8* %arrayidx122, align 1
  %conv123 = sext i8 %73 to i32
  %cmp124 = icmp eq i32 %conv123, 78
  br i1 %cmp124, label %if.then.126, label %if.else.129

if.then.126:                                      ; preds = %land.lhs.true.121
  %74 = load i32, i32* %state, align 4
  %or127 = or i32 %74, 16
  store i32 %or127, i32* %state, align 4
  %75 = load i8*, i8** %cp, align 8
  %add.ptr128 = getelementptr inbounds i8, i8* %75, i64 3
  store i8* %add.ptr128, i8** %cp, align 8
  store double 0x7FF8000000000000, double* %value, align 8
  br label %if.end.130

if.else.129:                                      ; preds = %land.lhs.true.121, %land.lhs.true.116, %land.lhs.true.111, %if.else.106
  %76 = load i8*, i8** %ecp, align 8
  store i8* %76, i8** %cp, align 8
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.129, %if.then.126
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.then.103
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %do.end.84
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %lor.lhs.false
  %77 = load i32, i32* %state, align 4
  %and = and i32 %77, 6
  %cmp134 = icmp eq i32 %and, 6
  br i1 %cmp134, label %lor.end.139, label %lor.rhs.136

lor.rhs.136:                                      ; preds = %if.end.133
  %78 = load i32, i32* %state, align 4
  %cmp137 = icmp eq i32 %78, 17
  br label %lor.end.139

lor.end.139:                                      ; preds = %lor.rhs.136, %if.end.133
  %79 = phi i1 [ true, %if.end.133 ], [ %cmp137, %lor.rhs.136 ]
  %frombool140 = zext i1 %79 to i8
  store i8 %frombool140, i8* %float_syntax, align 1
  br label %if.end.141

if.end.141:                                       ; preds = %lor.end.139, %if.end.23
  %80 = load i8, i8* %ignore_trailing.addr, align 1
  %tobool142 = trunc i8 %80 to i1
  br i1 %tobool142, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.141
  %81 = load i32, i32* %state, align 4
  %and144 = and i32 %81, 1
  %cmp145 = icmp ne i32 %and144, 0
  br i1 %cmp145, label %if.end.160, label %lor.lhs.false.147

lor.lhs.false.147:                                ; preds = %cond.true
  %82 = load i8, i8* %float_syntax, align 1
  %tobool148 = trunc i8 %82 to i1
  br i1 %tobool148, label %if.end.160, label %if.then.158

cond.false:                                       ; preds = %if.end.141
  %83 = load i8*, i8** %cp, align 8
  %84 = load i8, i8* %83, align 1
  %tobool150 = icmp ne i8 %84, 0
  br i1 %tobool150, label %if.then.158, label %land.lhs.true.151

land.lhs.true.151:                                ; preds = %cond.false
  %85 = load i32, i32* %state, align 4
  %and152 = and i32 %85, -3
  %cmp153 = icmp eq i32 %and152, 1
  br i1 %cmp153, label %if.end.160, label %lor.lhs.false.155

lor.lhs.false.155:                                ; preds = %land.lhs.true.151
  %86 = load i8, i8* %float_syntax, align 1
  %tobool156 = trunc i8 %86 to i1
  br i1 %tobool156, label %if.end.160, label %if.then.158

if.then.158:                                      ; preds = %lor.lhs.false.155, %cond.false, %lor.lhs.false.147
  %call159 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call159, i64* %retval
  br label %return

if.end.160:                                       ; preds = %lor.lhs.false.155, %land.lhs.true.151, %lor.lhs.false.147, %cond.true
  %87 = load i32, i32* %leading_digit, align 4
  %cmp161 = icmp sge i32 %87, 0
  br i1 %cmp161, label %land.lhs.true.163, label %if.end.217

land.lhs.true.163:                                ; preds = %if.end.160
  %88 = load i8, i8* %float_syntax, align 1
  %tobool164 = trunc i8 %88 to i1
  br i1 %tobool164, label %if.end.217, label %if.then.165

if.then.165:                                      ; preds = %land.lhs.true.163
  %89 = load i8, i8* %signedp, align 1
  %tobool166 = trunc i8 %89 to i1
  %conv167 = zext i1 %tobool166 to i32
  %add = add nsw i32 %conv167, 1
  %idxprom = sext i32 %add to i64
  %90 = load i8*, i8** %string.addr, align 8
  %arrayidx168 = getelementptr inbounds i8, i8* %90, i64 %idxprom
  %91 = load i8, i8* %arrayidx168, align 1
  %conv169 = sext i8 %91 to i32
  %92 = load i32, i32* %base.addr, align 4
  %call170 = call i32 @digit_to_number(i32 %conv169, i32 %92)
  %cmp171 = icmp slt i32 %call170, 0
  br i1 %cmp171, label %if.then.173, label %if.end.180

if.then.173:                                      ; preds = %if.then.165
  %93 = load i8, i8* %negative, align 1
  %tobool174 = trunc i8 %93 to i1
  br i1 %tobool174, label %cond.true.176, label %cond.false.177

cond.true.176:                                    ; preds = %if.then.173
  %94 = load i32, i32* %leading_digit, align 4
  %sub = sub nsw i32 0, %94
  br label %cond.end

cond.false.177:                                   ; preds = %if.then.173
  %95 = load i32, i32* %leading_digit, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.177, %cond.true.176
  %cond = phi i32 [ %sub, %cond.true.176 ], [ %95, %cond.false.177 ]
  %conv178 = sext i32 %cond to i64
  %shl = shl i64 %conv178, 2
  %add179 = add i64 %shl, 2
  store i64 %add179, i64* %retval
  br label %return

if.end.180:                                       ; preds = %if.then.165
  %call181 = call i32* @__errno_location() #8
  store i32 0, i32* %call181, align 4
  %96 = load i8*, i8** %string.addr, align 8
  %97 = load i8, i8* %signedp, align 1
  %tobool182 = trunc i8 %97 to i1
  %conv183 = zext i1 %tobool182 to i32
  %idx.ext184 = sext i32 %conv183 to i64
  %add.ptr185 = getelementptr inbounds i8, i8* %96, i64 %idx.ext184
  %98 = load i32, i32* %base.addr, align 4
  %call186 = call i64 @strtoumax(i8* %add.ptr185, i8** null, i32 %98) #6
  store i64 %call186, i64* %n, align 8
  %call187 = call i32* @__errno_location() #8
  %99 = load i32, i32* %call187, align 4
  %cmp188 = icmp eq i32 %99, 34
  br i1 %cmp188, label %if.then.190, label %if.else.197

if.then.190:                                      ; preds = %if.end.180
  %100 = load i32, i32* %base.addr, align 4
  %cmp191 = icmp ne i32 %100, 10
  br i1 %cmp191, label %if.then.193, label %if.end.196

if.then.193:                                      ; preds = %if.then.190
  %call194 = call i64 @builtin_lisp_symbol(i32 728)
  %101 = load i8*, i8** %string.addr, align 8
  %call195 = call i64 @build_string(i8* %101)
  call void @xsignal1(i64 %call194, i64 %call195) #9
  unreachable

if.end.196:                                       ; preds = %if.then.190
  br label %if.end.216

if.else.197:                                      ; preds = %if.end.180
  %102 = load i64, i64* %n, align 8
  %103 = load i8, i8* %negative, align 1
  %tobool198 = trunc i8 %103 to i1
  %cond200 = select i1 %tobool198, i64 2305843009213693952, i64 2305843009213693951
  %cmp201 = icmp ule i64 %102, %cond200
  br i1 %cmp201, label %if.then.203, label %if.else.213

if.then.203:                                      ; preds = %if.else.197
  %104 = load i64, i64* %n, align 8
  store i64 %104, i64* %signed_n, align 8
  %105 = load i8, i8* %negative, align 1
  %tobool204 = trunc i8 %105 to i1
  br i1 %tobool204, label %cond.true.206, label %cond.false.208

cond.true.206:                                    ; preds = %if.then.203
  %106 = load i64, i64* %signed_n, align 8
  %sub207 = sub nsw i64 0, %106
  br label %cond.end.209

cond.false.208:                                   ; preds = %if.then.203
  %107 = load i64, i64* %signed_n, align 8
  br label %cond.end.209

cond.end.209:                                     ; preds = %cond.false.208, %cond.true.206
  %cond210 = phi i64 [ %sub207, %cond.true.206 ], [ %107, %cond.false.208 ]
  %shl211 = shl i64 %cond210, 2
  %add212 = add i64 %shl211, 2
  store i64 %add212, i64* %retval
  br label %return

if.else.213:                                      ; preds = %if.else.197
  %108 = load i64, i64* %n, align 8
  %conv214 = uitofp i64 %108 to double
  store double %conv214, double* %value, align 8
  br label %if.end.215

if.end.215:                                       ; preds = %if.else.213
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.215, %if.end.196
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216, %land.lhs.true.163, %if.end.160
  %109 = load double, double* %value, align 8
  %tobool218 = fcmp une double %109, 0.000000e+00
  br i1 %tobool218, label %if.end.225, label %if.then.219

if.then.219:                                      ; preds = %if.end.217
  %110 = load i8*, i8** %string.addr, align 8
  %111 = load i8, i8* %signedp, align 1
  %tobool220 = trunc i8 %111 to i1
  %conv221 = zext i1 %tobool220 to i32
  %idx.ext222 = sext i32 %conv221 to i64
  %add.ptr223 = getelementptr inbounds i8, i8* %110, i64 %idx.ext222
  %call224 = call double @atof(i8* %add.ptr223) #10
  store double %call224, double* %value, align 8
  br label %if.end.225

if.end.225:                                       ; preds = %if.then.219, %if.end.217
  %112 = load i8, i8* %negative, align 1
  %tobool226 = trunc i8 %112 to i1
  br i1 %tobool226, label %cond.true.228, label %cond.false.230

cond.true.228:                                    ; preds = %if.end.225
  %113 = load double, double* %value, align 8
  %sub229 = fsub double -0.000000e+00, %113
  br label %cond.end.231

cond.false.230:                                   ; preds = %if.end.225
  %114 = load double, double* %value, align 8
  br label %cond.end.231

cond.end.231:                                     ; preds = %cond.false.230, %cond.true.228
  %cond232 = phi double [ %sub229, %cond.true.228 ], [ %114, %cond.false.230 ]
  %call233 = call i64 @make_float(double %cond232)
  store i64 %call233, i64* %retval
  br label %return

return:                                           ; preds = %cond.end.231, %cond.end.209, %cond.end, %if.then.158
  %115 = load i64, i64* %retval
  ret i64 %115
}

; Function Attrs: nounwind uwtable
define internal i32 @digit_to_number(i32 %character, i32 %base) #0 {
entry:
  %retval = alloca i32, align 4
  %character.addr = alloca i32, align 4
  %base.addr = alloca i32, align 4
  %digit = alloca i32, align 4
  store i32 %character, i32* %character.addr, align 4
  store i32 %base, i32* %base.addr, align 4
  %0 = load i32, i32* %character.addr, align 4
  %cmp = icmp sle i32 48, %0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %character.addr, align 4
  %cmp1 = icmp sle i32 %1, 57
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* %character.addr, align 4
  %sub = sub nsw i32 %2, 48
  store i32 %sub, i32* %digit, align 4
  br label %if.end.16

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %character.addr, align 4
  %cmp2 = icmp sle i32 97, %3
  br i1 %cmp2, label %land.lhs.true.3, label %if.else.7

land.lhs.true.3:                                  ; preds = %if.else
  %4 = load i32, i32* %character.addr, align 4
  %cmp4 = icmp sle i32 %4, 122
  br i1 %cmp4, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %land.lhs.true.3
  %5 = load i32, i32* %character.addr, align 4
  %sub6 = sub nsw i32 %5, 97
  %add = add nsw i32 %sub6, 10
  store i32 %add, i32* %digit, align 4
  br label %if.end.15

if.else.7:                                        ; preds = %land.lhs.true.3, %if.else
  %6 = load i32, i32* %character.addr, align 4
  %cmp8 = icmp sle i32 65, %6
  br i1 %cmp8, label %land.lhs.true.9, label %if.else.14

land.lhs.true.9:                                  ; preds = %if.else.7
  %7 = load i32, i32* %character.addr, align 4
  %cmp10 = icmp sle i32 %7, 90
  br i1 %cmp10, label %if.then.11, label %if.else.14

if.then.11:                                       ; preds = %land.lhs.true.9
  %8 = load i32, i32* %character.addr, align 4
  %sub12 = sub nsw i32 %8, 65
  %add13 = add nsw i32 %sub12, 10
  store i32 %add13, i32* %digit, align 4
  br label %if.end

if.else.14:                                       ; preds = %land.lhs.true.9, %if.else.7
  store i32 -2, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.11
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then.5
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then
  %9 = load i32, i32* %digit, align 4
  %10 = load i32, i32* %base.addr, align 4
  %cmp17 = icmp slt i32 %9, %10
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.16
  %11 = load i32, i32* %digit, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.else.14
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind
declare i64 @strtoumax(i8*, i8**, i32) #4

; Function Attrs: noreturn
declare void @xsignal1(i64, i64) #3

; Function Attrs: nounwind readonly
declare double @atof(i8*) #5

declare i64 @make_float(double) #1

; Function Attrs: nounwind uwtable
define i64 @check_obarray(i64 %obarray) #0 {
entry:
  %obarray.addr = alloca i64, align 8
  store i64 %obarray, i64* %obarray.addr, align 8
  %0 = load i8, i8* @fatal_error_in_progress, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end.5, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %obarray.addr, align 8
  %call = call zeroext i1 @VECTORP(i64 %1)
  br i1 %call, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %2 = load i64, i64* %obarray.addr, align 8
  %call1 = call i64 @ASIZE(i64 %2)
  %cmp = icmp eq i64 %call1, 0
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %3 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 207), align 8
  %4 = load i64, i64* %obarray.addr, align 8
  %cmp2 = icmp eq i64 %3, %4
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %5 = load i64, i64* @initial_obarray, align 8
  store i64 %5, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 207), align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %call4 = call i64 @builtin_lisp_symbol(i32 996)
  %6 = load i64, i64* %obarray.addr, align 8
  %7 = call i64 @wrong_type_argument(i64 %call4, i64 %6) #9
  unreachable

if.end.5:                                         ; preds = %lor.lhs.false, %entry
  %8 = load i64, i64* %obarray.addr, align 8
  ret i64 %8
}

declare zeroext i1 @VECTORP(i64) #1

declare i64 @ASIZE(i64) #1

; Function Attrs: noreturn
declare i64 @wrong_type_argument(i64, i64) #3

; Function Attrs: nounwind uwtable
define i64 @intern_driver(i64 %string, i64 %obarray, i64 %index) #0 {
entry:
  %string.addr = alloca i64, align 8
  %obarray.addr = alloca i64, align 8
  %index.addr = alloca i64, align 8
  store i64 %string, i64* %string.addr, align 8
  store i64 %obarray, i64* %obarray.addr, align 8
  store i64 %index, i64* %index.addr, align 8
  %0 = load i64, i64* %string.addr, align 8
  %call = call i64 @Fmake_symbol(i64 %0)
  %1 = load i64, i64* %obarray.addr, align 8
  %2 = load i64, i64* %index.addr, align 8
  %call1 = call i64 @intern_sym(i64 %call, i64 %1, i64 %2)
  ret i64 %call1
}

; Function Attrs: nounwind uwtable
define internal i64 @intern_sym(i64 %sym, i64 %obarray, i64 %index) #0 {
entry:
  %sym.addr = alloca i64, align 8
  %obarray.addr = alloca i64, align 8
  %index.addr = alloca i64, align 8
  %ptr = alloca i64*, align 8
  store i64 %sym, i64* %sym.addr, align 8
  store i64 %obarray, i64* %obarray.addr, align 8
  store i64 %index, i64* %index.addr, align 8
  %0 = load i64, i64* %obarray.addr, align 8
  %1 = load i64, i64* @initial_obarray, align 8
  %cmp = icmp eq i64 %0, %1
  %cond = select i1 %cmp, i32 2, i32 1
  %2 = load i64, i64* %sym.addr, align 8
  %sub = sub nsw i64 %2, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub
  %3 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  %4 = bitcast %struct.Lisp_Symbol* %3 to i16*
  %5 = trunc i32 %cond to i16
  %bf.load = load i16, i16* %4, align 8
  %bf.value = and i16 %5, 3
  %bf.shl = shl i16 %bf.value, 6
  %bf.clear = and i16 %bf.load, -193
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, i16* %4, align 8
  %bf.result.cast = zext i16 %bf.value to i32
  %6 = load i64, i64* %sym.addr, align 8
  %call = call i64 @SYMBOL_NAME(i64 %6)
  %call1 = call zeroext i8 @SREF(i64 %call, i64 0)
  %conv = zext i8 %call1 to i32
  %cmp2 = icmp eq i32 %conv, 58
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load i64, i64* %obarray.addr, align 8
  %8 = load i64, i64* @initial_obarray, align 8
  %cmp4 = icmp eq i64 %7, %8
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load i64, i64* %sym.addr, align 8
  %sub6 = sub nsw i64 %9, 0
  %add.ptr7 = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub6
  %10 = bitcast i8* %add.ptr7 to %struct.Lisp_Symbol*
  %11 = bitcast %struct.Lisp_Symbol* %10 to i16*
  %bf.load8 = load i16, i16* %11, align 8
  %bf.clear9 = and i16 %bf.load8, -49
  %bf.set10 = or i16 %bf.clear9, 16
  store i16 %bf.set10, i16* %11, align 8
  %12 = load i64, i64* %sym.addr, align 8
  %sub11 = sub nsw i64 %12, 0
  %add.ptr12 = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub11
  %13 = bitcast i8* %add.ptr12 to %struct.Lisp_Symbol*
  %14 = bitcast %struct.Lisp_Symbol* %13 to i16*
  %bf.load13 = load i16, i16* %14, align 8
  %bf.clear14 = and i16 %bf.load13, -15
  %bf.set15 = or i16 %bf.clear14, 8
  store i16 %bf.set15, i16* %14, align 8
  %15 = load i64, i64* %sym.addr, align 8
  %16 = load i64, i64* %sym.addr, align 8
  %sub16 = sub nsw i64 %16, 0
  %add.ptr17 = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub16
  %17 = bitcast i8* %add.ptr17 to %struct.Lisp_Symbol*
  %val = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %17, i32 0, i32 2
  %value = bitcast %union.anon.1* %val to i64*
  store i64 %15, i64* %value, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %18 = load i64, i64* %obarray.addr, align 8
  %19 = load i64, i64* %index.addr, align 8
  %shr = ashr i64 %19, 2
  %call18 = call i64* @aref_addr(i64 %18, i64 %shr)
  store i64* %call18, i64** %ptr, align 8
  %20 = load i64, i64* %sym.addr, align 8
  %21 = load i64*, i64** %ptr, align 8
  %22 = load i64, i64* %21, align 8
  %and = and i64 %22, 7
  %conv19 = trunc i64 %and to i32
  %cmp20 = icmp eq i32 %conv19, 0
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %23 = load i64*, i64** %ptr, align 8
  %24 = load i64, i64* %23, align 8
  %sub22 = sub nsw i64 %24, 0
  %add.ptr23 = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub22
  %25 = bitcast i8* %add.ptr23 to %struct.Lisp_Symbol*
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond24 = phi %struct.Lisp_Symbol* [ %25, %cond.true ], [ null, %cond.false ]
  call void @set_symbol_next(i64 %20, %struct.Lisp_Symbol* %cond24)
  %26 = load i64, i64* %sym.addr, align 8
  %27 = load i64*, i64** %ptr, align 8
  store i64 %26, i64* %27, align 8
  %28 = load i64, i64* %sym.addr, align 8
  ret i64 %28
}

declare i64 @Fmake_symbol(i64) #1

; Function Attrs: nounwind uwtable
define i64 @intern_1(i8* %str, i64 %len) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %obarray = alloca i64, align 8
  %tem = alloca i64, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 207), align 8
  %call = call i64 @check_obarray(i64 %0)
  store i64 %call, i64* %obarray, align 8
  %1 = load i64, i64* %obarray, align 8
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i64, i64* %len.addr, align 8
  %4 = load i64, i64* %len.addr, align 8
  %call1 = call i64 @oblookup(i64 %1, i8* %2, i64 %3, i64 %4)
  store i64 %call1, i64* %tem, align 8
  %5 = load i64, i64* %tem, align 8
  %and = and i64 %5, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load i64, i64* %tem, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load i8*, i8** %str.addr, align 8
  %8 = load i64, i64* %len.addr, align 8
  %call3 = call i64 @make_unibyte_string(i8* %7, i64 %8)
  %9 = load i64, i64* %obarray, align 8
  %10 = load i64, i64* %tem, align 8
  %call4 = call i64 @intern_driver(i64 %call3, i64 %9, i64 %10)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %6, %cond.true ], [ %call4, %cond.false ]
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define i64 @oblookup(i64 %obarray, i8* %ptr, i64 %size, i64 %size_byte) #0 {
entry:
  %retval = alloca i64, align 8
  %obarray.addr = alloca i64, align 8
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %size_byte.addr = alloca i64, align 8
  %hash = alloca i64, align 8
  %obsize = alloca i64, align 8
  %tail = alloca i64, align 8
  %bucket = alloca i64, align 8
  %tem = alloca i64, align 8
  store i64 %obarray, i64* %obarray.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i64 %size_byte, i64* %size_byte.addr, align 8
  %0 = load i64, i64* %obarray.addr, align 8
  %call = call i64 @check_obarray(i64 %0)
  store i64 %call, i64* %obarray.addr, align 8
  %1 = load i64, i64* %obarray.addr, align 8
  %call1 = call i64 @gc_asize(i64 %1)
  store i64 %call1, i64* %obsize, align 8
  %2 = load i8*, i8** %ptr.addr, align 8
  %3 = load i64, i64* %size_byte.addr, align 8
  %call2 = call i64 @hash_string(i8* %2, i64 %3)
  %4 = load i64, i64* %obsize, align 8
  %rem = urem i64 %call2, %4
  store i64 %rem, i64* %hash, align 8
  %5 = load i64, i64* %obarray.addr, align 8
  %6 = load i64, i64* %hash, align 8
  %call3 = call i64 @AREF(i64 %5, i64 %6)
  store i64 %call3, i64* %bucket, align 8
  %7 = load i64, i64* %hash, align 8
  store i64 %7, i64* @oblookup_last_bucket_number, align 8
  %8 = load i64, i64* %bucket, align 8
  %cmp = icmp eq i64 %8, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end.31

if.else:                                          ; preds = %entry
  %9 = load i64, i64* %bucket, align 8
  %and = and i64 %9, 7
  %conv = trunc i64 %and to i32
  %cmp4 = icmp eq i32 %conv, 0
  br i1 %cmp4, label %if.else.7, label %if.then.6

if.then.6:                                        ; preds = %if.else
  call void (i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i32 0, i32 0)) #9
  unreachable

if.else.7:                                        ; preds = %if.else
  %10 = load i64, i64* %bucket, align 8
  store i64 %10, i64* %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.7
  %11 = load i64, i64* %tail, align 8
  %call8 = call i64 @SYMBOL_NAME(i64 %11)
  %call9 = call i64 @SBYTES(i64 %call8)
  %12 = load i64, i64* %size_byte.addr, align 8
  %cmp10 = icmp eq i64 %call9, %12
  br i1 %cmp10, label %land.lhs.true, label %if.else.21

land.lhs.true:                                    ; preds = %for.cond
  %13 = load i64, i64* %tail, align 8
  %call12 = call i64 @SYMBOL_NAME(i64 %13)
  %call13 = call i64 @SCHARS(i64 %call12)
  %14 = load i64, i64* %size.addr, align 8
  %cmp14 = icmp eq i64 %call13, %14
  br i1 %cmp14, label %land.lhs.true.16, label %if.else.21

land.lhs.true.16:                                 ; preds = %land.lhs.true
  %15 = load i64, i64* %tail, align 8
  %call17 = call i64 @SYMBOL_NAME(i64 %15)
  %call18 = call i8* @SDATA(i64 %call17)
  %16 = load i8*, i8** %ptr.addr, align 8
  %17 = load i64, i64* %size_byte.addr, align 8
  %call19 = call i32 @memcmp(i8* %call18, i8* %16, i64 %17) #10
  %tobool = icmp ne i32 %call19, 0
  br i1 %tobool, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %land.lhs.true.16
  %18 = load i64, i64* %tail, align 8
  store i64 %18, i64* %retval
  br label %return

if.else.21:                                       ; preds = %land.lhs.true.16, %land.lhs.true, %for.cond
  %19 = load i64, i64* %tail, align 8
  %sub = sub nsw i64 %19, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub
  %20 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  %next = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %20, i32 0, i32 5
  %21 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %next, align 8
  %cmp22 = icmp eq %struct.Lisp_Symbol* %21, null
  br i1 %cmp22, label %if.then.24, label %if.end

if.then.24:                                       ; preds = %if.else.21
  br label %for.end

if.end:                                           ; preds = %if.else.21
  br label %if.end.25

if.end.25:                                        ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %22 = load i64, i64* %tail, align 8
  %sub26 = sub nsw i64 %22, 0
  %add.ptr27 = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub26
  %23 = bitcast i8* %add.ptr27 to %struct.Lisp_Symbol*
  %next28 = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %23, i32 0, i32 5
  %24 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %next28, align 8
  %call29 = call i64 @make_lisp_symbol(%struct.Lisp_Symbol* %24)
  store i64 %call29, i64* %tail, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.24
  br label %if.end.30

if.end.30:                                        ; preds = %for.end
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then
  %25 = load i64, i64* %hash, align 8
  %shl = shl i64 %25, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %tem, align 8
  %26 = load i64, i64* %tem, align 8
  store i64 %26, i64* %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.then.20
  %27 = load i64, i64* %retval
  ret i64 %27
}

; Function Attrs: nounwind uwtable
define i64 @intern_c_string_1(i8* %str, i64 %len) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %obarray = alloca i64, align 8
  %tem = alloca i64, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 207), align 8
  %call = call i64 @check_obarray(i64 %0)
  store i64 %call, i64* %obarray, align 8
  %1 = load i64, i64* %obarray, align 8
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i64, i64* %len.addr, align 8
  %4 = load i64, i64* %len.addr, align 8
  %call1 = call i64 @oblookup(i64 %1, i8* %2, i64 %3, i64 %4)
  store i64 %call1, i64* %tem, align 8
  %5 = load i64, i64* %tem, align 8
  %and = and i64 %5, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** %str.addr, align 8
  %7 = load i64, i64* %len.addr, align 8
  %call3 = call i64 @make_pure_c_string(i8* %6, i64 %7)
  %8 = load i64, i64* %obarray, align 8
  %9 = load i64, i64* %tem, align 8
  %call4 = call i64 @intern_driver(i64 %call3, i64 %8, i64 %9)
  store i64 %call4, i64* %tem, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i64, i64* %tem, align 8
  ret i64 %10
}

declare i64 @make_pure_c_string(i8*, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fintern(i64 %string, i64 %obarray) #0 {
entry:
  %string.addr = alloca i64, align 8
  %obarray.addr = alloca i64, align 8
  %tem = alloca i64, align 8
  store i64 %string, i64* %string.addr, align 8
  store i64 %obarray, i64* %obarray.addr, align 8
  %0 = load i64, i64* %obarray.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 207), align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i64, i64* %obarray.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %1, %cond.true ], [ %2, %cond.false ]
  %call1 = call i64 @check_obarray(i64 %cond)
  store i64 %call1, i64* %obarray.addr, align 8
  %3 = load i64, i64* %string.addr, align 8
  call void @CHECK_STRING(i64 %3)
  %4 = load i64, i64* %obarray.addr, align 8
  %5 = load i64, i64* %string.addr, align 8
  %call2 = call i8* @SSDATA(i64 %5)
  %6 = load i64, i64* %string.addr, align 8
  %call3 = call i64 @SCHARS(i64 %6)
  %7 = load i64, i64* %string.addr, align 8
  %call4 = call i64 @SBYTES(i64 %7)
  %call5 = call i64 @oblookup(i64 %4, i8* %call2, i64 %call3, i64 %call4)
  store i64 %call5, i64* %tem, align 8
  %8 = load i64, i64* %tem, align 8
  %and = and i64 %8, 7
  %conv = trunc i64 %and to i32
  %cmp6 = icmp eq i32 %conv, 0
  br i1 %cmp6, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %9 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 240), align 8
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp9 = icmp eq i64 %9, %call8
  br i1 %cmp9, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %if.then
  %10 = load i64, i64* %string.addr, align 8
  br label %cond.end.14

cond.false.12:                                    ; preds = %if.then
  %11 = load i64, i64* %string.addr, align 8
  %call13 = call i64 @Fpurecopy(i64 %11)
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.12, %cond.true.11
  %cond15 = phi i64 [ %10, %cond.true.11 ], [ %call13, %cond.false.12 ]
  %12 = load i64, i64* %obarray.addr, align 8
  %13 = load i64, i64* %tem, align 8
  %call16 = call i64 @intern_driver(i64 %cond15, i64 %12, i64 %13)
  store i64 %call16, i64* %tem, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end.14, %cond.end
  %14 = load i64, i64* %tem, align 8
  ret i64 %14
}

; Function Attrs: nounwind uwtable
define i64 @Fintern_soft(i64 %name, i64 %obarray) #0 {
entry:
  %retval = alloca i64, align 8
  %name.addr = alloca i64, align 8
  %obarray.addr = alloca i64, align 8
  %tem = alloca i64, align 8
  %string = alloca i64, align 8
  store i64 %name, i64* %name.addr, align 8
  store i64 %obarray, i64* %obarray.addr, align 8
  %0 = load i64, i64* %obarray.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 207), align 8
  store i64 %1, i64* %obarray.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* %obarray.addr, align 8
  %call1 = call i64 @check_obarray(i64 %2)
  store i64 %call1, i64* %obarray.addr, align 8
  %3 = load i64, i64* %name.addr, align 8
  %and = and i64 %3, 7
  %conv = trunc i64 %and to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %if.else, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %4 = load i64, i64* %name.addr, align 8
  call void @CHECK_STRING(i64 %4)
  %5 = load i64, i64* %name.addr, align 8
  store i64 %5, i64* %string, align 8
  br label %if.end.6

if.else:                                          ; preds = %if.end
  %6 = load i64, i64* %name.addr, align 8
  %call5 = call i64 @SYMBOL_NAME(i64 %6)
  store i64 %call5, i64* %string, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.4
  %7 = load i64, i64* %obarray.addr, align 8
  %8 = load i64, i64* %string, align 8
  %call7 = call i8* @SSDATA(i64 %8)
  %9 = load i64, i64* %string, align 8
  %call8 = call i64 @SCHARS(i64 %9)
  %10 = load i64, i64* %string, align 8
  %call9 = call i64 @SBYTES(i64 %10)
  %call10 = call i64 @oblookup(i64 %7, i8* %call7, i64 %call8, i64 %call9)
  store i64 %call10, i64* %tem, align 8
  %11 = load i64, i64* %tem, align 8
  %and11 = and i64 %11, 7
  %conv12 = trunc i64 %and11 to i32
  %and13 = and i32 %conv12, -5
  %cmp14 = icmp eq i32 %and13, 2
  br i1 %cmp14, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.6
  %12 = load i64, i64* %name.addr, align 8
  %and16 = and i64 %12, 7
  %conv17 = trunc i64 %and16 to i32
  %cmp18 = icmp eq i32 %conv17, 0
  br i1 %cmp18, label %land.lhs.true, label %if.else.24

land.lhs.true:                                    ; preds = %lor.lhs.false
  %13 = load i64, i64* %name.addr, align 8
  %14 = load i64, i64* %tem, align 8
  %cmp20 = icmp eq i64 %13, %14
  br i1 %cmp20, label %if.else.24, label %if.then.22

if.then.22:                                       ; preds = %land.lhs.true, %if.end.6
  %call23 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call23, i64* %retval
  br label %return

if.else.24:                                       ; preds = %land.lhs.true, %lor.lhs.false
  %15 = load i64, i64* %tem, align 8
  store i64 %15, i64* %retval
  br label %return

return:                                           ; preds = %if.else.24, %if.then.22
  %16 = load i64, i64* %retval
  ret i64 %16
}

declare i64 @SYMBOL_NAME(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Funintern(i64 %name, i64 %obarray) #0 {
entry:
  %retval = alloca i64, align 8
  %name.addr = alloca i64, align 8
  %obarray.addr = alloca i64, align 8
  %string = alloca i64, align 8
  %tem = alloca i64, align 8
  %hash = alloca i64, align 8
  %sym = alloca i64, align 8
  %tail = alloca i64, align 8
  %following = alloca i64, align 8
  store i64 %name, i64* %name.addr, align 8
  store i64 %obarray, i64* %obarray.addr, align 8
  %0 = load i64, i64* %obarray.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 207), align 8
  store i64 %1, i64* %obarray.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* %obarray.addr, align 8
  %call1 = call i64 @check_obarray(i64 %2)
  store i64 %call1, i64* %obarray.addr, align 8
  %3 = load i64, i64* %name.addr, align 8
  %and = and i64 %3, 7
  %conv = trunc i64 %and to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %4 = load i64, i64* %name.addr, align 8
  %call5 = call i64 @SYMBOL_NAME(i64 %4)
  store i64 %call5, i64* %string, align 8
  br label %if.end.6

if.else:                                          ; preds = %if.end
  %5 = load i64, i64* %name.addr, align 8
  call void @CHECK_STRING(i64 %5)
  %6 = load i64, i64* %name.addr, align 8
  store i64 %6, i64* %string, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.4
  %7 = load i64, i64* %obarray.addr, align 8
  %8 = load i64, i64* %string, align 8
  %call7 = call i8* @SSDATA(i64 %8)
  %9 = load i64, i64* %string, align 8
  %call8 = call i64 @SCHARS(i64 %9)
  %10 = load i64, i64* %string, align 8
  %call9 = call i64 @SBYTES(i64 %10)
  %call10 = call i64 @oblookup(i64 %7, i8* %call7, i64 %call8, i64 %call9)
  store i64 %call10, i64* %tem, align 8
  %11 = load i64, i64* %tem, align 8
  %and11 = and i64 %11, 7
  %conv12 = trunc i64 %and11 to i32
  %and13 = and i32 %conv12, -5
  %cmp14 = icmp eq i32 %and13, 2
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.6
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call17, i64* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.6
  %12 = load i64, i64* %name.addr, align 8
  %and19 = and i64 %12, 7
  %conv20 = trunc i64 %and19 to i32
  %cmp21 = icmp eq i32 %conv20, 0
  br i1 %cmp21, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %if.end.18
  %13 = load i64, i64* %name.addr, align 8
  %14 = load i64, i64* %tem, align 8
  %cmp23 = icmp eq i64 %13, %14
  br i1 %cmp23, label %if.end.27, label %if.then.25

if.then.25:                                       ; preds = %land.lhs.true
  %call26 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call26, i64* %retval
  br label %return

if.end.27:                                        ; preds = %land.lhs.true, %if.end.18
  %15 = load i64, i64* %tem, align 8
  %sub = sub nsw i64 %15, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub
  %16 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  %17 = bitcast %struct.Lisp_Symbol* %16 to i16*
  %bf.load = load i16, i16* %17, align 8
  %bf.clear = and i16 %bf.load, -193
  store i16 %bf.clear, i16* %17, align 8
  %18 = load i64, i64* @oblookup_last_bucket_number, align 8
  store i64 %18, i64* %hash, align 8
  %19 = load i64, i64* %obarray.addr, align 8
  %20 = load i64, i64* %hash, align 8
  %call28 = call i64 @AREF(i64 %19, i64 %20)
  %21 = load i64, i64* %tem, align 8
  %cmp29 = icmp eq i64 %call28, %21
  br i1 %cmp29, label %if.then.31, label %if.else.41

if.then.31:                                       ; preds = %if.end.27
  %22 = load i64, i64* %tem, align 8
  %sub32 = sub nsw i64 %22, 0
  %add.ptr33 = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub32
  %23 = bitcast i8* %add.ptr33 to %struct.Lisp_Symbol*
  %next = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %23, i32 0, i32 5
  %24 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %next, align 8
  %tobool = icmp ne %struct.Lisp_Symbol* %24, null
  br i1 %tobool, label %if.then.34, label %if.else.39

if.then.34:                                       ; preds = %if.then.31
  %25 = load i64, i64* %tem, align 8
  %sub35 = sub nsw i64 %25, 0
  %add.ptr36 = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub35
  %26 = bitcast i8* %add.ptr36 to %struct.Lisp_Symbol*
  %next37 = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %26, i32 0, i32 5
  %27 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %next37, align 8
  %call38 = call i64 @make_lisp_symbol(%struct.Lisp_Symbol* %27)
  store i64 %call38, i64* %sym, align 8
  %28 = load i64, i64* %obarray.addr, align 8
  %29 = load i64, i64* %hash, align 8
  %30 = load i64, i64* %sym, align 8
  call void @ASET(i64 %28, i64 %29, i64 %30)
  br label %if.end.40

if.else.39:                                       ; preds = %if.then.31
  %31 = load i64, i64* %obarray.addr, align 8
  %32 = load i64, i64* %hash, align 8
  call void @ASET(i64 %31, i64 %32, i64 2)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.39, %if.then.34
  br label %if.end.58

if.else.41:                                       ; preds = %if.end.27
  %33 = load i64, i64* %obarray.addr, align 8
  %34 = load i64, i64* %hash, align 8
  %call42 = call i64 @AREF(i64 %33, i64 %34)
  store i64 %call42, i64* %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.41
  %35 = load i64, i64* %tail, align 8
  %sub43 = sub nsw i64 %35, 0
  %add.ptr44 = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub43
  %36 = bitcast i8* %add.ptr44 to %struct.Lisp_Symbol*
  %next45 = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %36, i32 0, i32 5
  %37 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %next45, align 8
  %tobool46 = icmp ne %struct.Lisp_Symbol* %37, null
  br i1 %tobool46, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load i64, i64* %tail, align 8
  %sub47 = sub nsw i64 %38, 0
  %add.ptr48 = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub47
  %39 = bitcast i8* %add.ptr48 to %struct.Lisp_Symbol*
  %next49 = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %39, i32 0, i32 5
  %40 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %next49, align 8
  %call50 = call i64 @make_lisp_symbol(%struct.Lisp_Symbol* %40)
  store i64 %call50, i64* %following, align 8
  %41 = load i64, i64* %following, align 8
  %42 = load i64, i64* %tem, align 8
  %cmp51 = icmp eq i64 %41, %42
  br i1 %cmp51, label %if.then.53, label %if.end.57

if.then.53:                                       ; preds = %for.body
  %43 = load i64, i64* %tail, align 8
  %44 = load i64, i64* %following, align 8
  %sub54 = sub nsw i64 %44, 0
  %add.ptr55 = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub54
  %45 = bitcast i8* %add.ptr55 to %struct.Lisp_Symbol*
  %next56 = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %45, i32 0, i32 5
  %46 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %next56, align 8
  call void @set_symbol_next(i64 %43, %struct.Lisp_Symbol* %46)
  br label %for.end

if.end.57:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.57
  %47 = load i64, i64* %following, align 8
  store i64 %47, i64* %tail, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.53, %for.cond
  br label %if.end.58

if.end.58:                                        ; preds = %for.end, %if.end.40
  %call59 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call59, i64* %retval
  br label %return

return:                                           ; preds = %if.end.58, %if.then.25, %if.then.16
  %48 = load i64, i64* %retval
  ret i64 %48
}

declare i64 @AREF(i64, i64) #1

declare i64 @make_lisp_symbol(%struct.Lisp_Symbol*) #1

declare void @ASET(i64, i64, i64) #1

declare void @set_symbol_next(i64, %struct.Lisp_Symbol*) #1

declare i64 @gc_asize(i64) #1

declare i64 @hash_string(i8*, i64) #1

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #5

; Function Attrs: nounwind uwtable
define void @map_obarray(i64 %obarray, void (i64, i64)* %fn, i64 %arg) #0 {
entry:
  %obarray.addr = alloca i64, align 8
  %fn.addr = alloca void (i64, i64)*, align 8
  %arg.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %tail = alloca i64, align 8
  store i64 %obarray, i64* %obarray.addr, align 8
  store void (i64, i64)* %fn, void (i64, i64)** %fn.addr, align 8
  store i64 %arg, i64* %arg.addr, align 8
  %0 = load i64, i64* %obarray.addr, align 8
  call void @CHECK_VECTOR(i64 %0)
  %1 = load i64, i64* %obarray.addr, align 8
  %call = call i64 @ASIZE(i64 %1)
  %sub = sub nsw i64 %call, 1
  store i64 %sub, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %i, align 8
  %cmp = icmp sge i64 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %obarray.addr, align 8
  %4 = load i64, i64* %i, align 8
  %call1 = call i64 @AREF(i64 %3, i64 %4)
  store i64 %call1, i64* %tail, align 8
  %5 = load i64, i64* %tail, align 8
  %and = and i64 %5, 7
  %conv = trunc i64 %and to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %if.then, label %if.end.12

if.then:                                          ; preds = %for.body
  br label %while.body

while.body:                                       ; preds = %if.then, %if.end
  %6 = load void (i64, i64)*, void (i64, i64)** %fn.addr, align 8
  %7 = load i64, i64* %tail, align 8
  %8 = load i64, i64* %arg.addr, align 8
  call void %6(i64 %7, i64 %8)
  %9 = load i64, i64* %tail, align 8
  %sub4 = sub nsw i64 %9, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub4
  %10 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  %next = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %10, i32 0, i32 5
  %11 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %next, align 8
  %cmp5 = icmp eq %struct.Lisp_Symbol* %11, null
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %12 = load i64, i64* %tail, align 8
  %sub8 = sub nsw i64 %12, 0
  %add.ptr9 = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub8
  %13 = bitcast i8* %add.ptr9 to %struct.Lisp_Symbol*
  %next10 = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %13, i32 0, i32 5
  %14 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %next10, align 8
  %call11 = call i64 @make_lisp_symbol(%struct.Lisp_Symbol* %14)
  store i64 %call11, i64* %tail, align 8
  br label %while.body

while.end:                                        ; preds = %if.then.7
  br label %if.end.12

if.end.12:                                        ; preds = %while.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %15 = load i64, i64* %i, align 8
  %dec = add nsw i64 %15, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @CHECK_VECTOR(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fmapatoms(i64 %function, i64 %obarray) #0 {
entry:
  %function.addr = alloca i64, align 8
  %obarray.addr = alloca i64, align 8
  store i64 %function, i64* %function.addr, align 8
  store i64 %obarray, i64* %obarray.addr, align 8
  %0 = load i64, i64* %obarray.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 207), align 8
  store i64 %1, i64* %obarray.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* %obarray.addr, align 8
  %call1 = call i64 @check_obarray(i64 %2)
  store i64 %call1, i64* %obarray.addr, align 8
  %3 = load i64, i64* %obarray.addr, align 8
  %4 = load i64, i64* %function.addr, align 8
  call void @map_obarray(i64 %3, void (i64, i64)* @mapatoms_1, i64 %4)
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call2
}

; Function Attrs: nounwind uwtable
define internal void @mapatoms_1(i64 %sym, i64 %function) #0 {
entry:
  %sym.addr = alloca i64, align 8
  %function.addr = alloca i64, align 8
  store i64 %sym, i64* %sym.addr, align 8
  store i64 %function, i64* %function.addr, align 8
  %0 = load i64, i64* %function.addr, align 8
  %1 = load i64, i64* %sym.addr, align 8
  %call = call i64 @call1(i64 %0, i64 %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_obarray() #0 {
entry:
  %oblength = alloca i64, align 8
  %size = alloca i64, align 8
  %i = alloca i32, align 4
  store i64 105, i64* %size, align 8
  %call = call i64 @make_natnum(i64 1511)
  store i64 %call, i64* %oblength, align 8
  %0 = load i64, i64* %oblength, align 8
  %call1 = call i64 @Fmake_vector(i64 %0, i64 2)
  store i64 %call1, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 207), align 8
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 207), align 8
  store i64 %1, i64* @initial_obarray, align 8
  call void @staticpro(i64* @initial_obarray)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %conv = sext i32 %2 to i64
  %cmp = icmp ult i64 %conv, 1074
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %call3 = call i64 @builtin_lisp_symbol(i32 %3)
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [1074 x i8*], [1074 x i8*]* @defsym_name, i32 0, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  call void @define_symbol(i64 %call3, i8* %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %sub = sub nsw i64 %call5, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub
  %7 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  %val = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %7, i32 0, i32 2
  %value = bitcast %union.anon.1* %val to i64*
  store i64 %call4, i64* %value, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %sub7 = sub nsw i64 %call6, 0
  %add.ptr8 = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub7
  %8 = bitcast i8* %add.ptr8 to %struct.Lisp_Symbol*
  %9 = bitcast %struct.Lisp_Symbol* %8 to i16*
  %bf.load = load i16, i16* %9, align 8
  %bf.clear = and i16 %bf.load, -49
  %bf.set = or i16 %bf.clear, 16
  store i16 %bf.set, i16* %9, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %sub10 = sub nsw i64 %call9, 0
  %add.ptr11 = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub10
  %10 = bitcast i8* %add.ptr11 to %struct.Lisp_Symbol*
  %11 = bitcast %struct.Lisp_Symbol* %10 to i16*
  %bf.load12 = load i16, i16* %11, align 8
  %bf.clear13 = and i16 %bf.load12, -257
  %bf.set14 = or i16 %bf.clear13, 256
  store i16 %bf.set14, i16* %11, align 8
  %call15 = call i64 @builtin_lisp_symbol(i32 901)
  %call16 = call i64 @builtin_lisp_symbol(i32 901)
  %sub17 = sub nsw i64 %call16, 0
  %add.ptr18 = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub17
  %12 = bitcast i8* %add.ptr18 to %struct.Lisp_Symbol*
  %val19 = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %12, i32 0, i32 2
  %value20 = bitcast %union.anon.1* %val19 to i64*
  store i64 %call15, i64* %value20, align 8
  %call21 = call i64 @builtin_lisp_symbol(i32 901)
  %sub22 = sub nsw i64 %call21, 0
  %add.ptr23 = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub22
  %13 = bitcast i8* %add.ptr23 to %struct.Lisp_Symbol*
  %14 = bitcast %struct.Lisp_Symbol* %13 to i16*
  %bf.load24 = load i16, i16* %14, align 8
  %bf.clear25 = and i16 %bf.load24, -49
  %bf.set26 = or i16 %bf.clear25, 16
  store i16 %bf.set26, i16* %14, align 8
  %call27 = call i64 @builtin_lisp_symbol(i32 901)
  %sub28 = sub nsw i64 %call27, 0
  %add.ptr29 = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub28
  %15 = bitcast i8* %add.ptr29 to %struct.Lisp_Symbol*
  %16 = bitcast %struct.Lisp_Symbol* %15 to i16*
  %bf.load30 = load i16, i16* %16, align 8
  %bf.clear31 = and i16 %bf.load30, -257
  %bf.set32 = or i16 %bf.clear31, 256
  store i16 %bf.set32, i16* %16, align 8
  %call33 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call33, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 240), align 8
  %17 = load i64, i64* %size, align 8
  %call34 = call noalias i8* @xmalloc(i64 %17)
  store i8* %call34, i8** @read_buffer, align 8
  %18 = load i64, i64* %size, align 8
  store i64 %18, i64* @read_buffer_size, align 8
  ret void
}

declare i64 @make_natnum(i64) #1

declare i64 @Fmake_vector(i64, i64) #1

declare void @staticpro(i64*) #1

; Function Attrs: nounwind uwtable
define internal void @define_symbol(i64 %sym, i8* %str) #0 {
entry:
  %sym.addr = alloca i64, align 8
  %str.addr = alloca i8*, align 8
  %len = alloca i64, align 8
  %string = alloca i64, align 8
  %bucket = alloca i64, align 8
  store i64 %sym, i64* %sym.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #10
  store i64 %call, i64* %len, align 8
  %1 = load i8*, i8** %str.addr, align 8
  %2 = load i64, i64* %len, align 8
  %call1 = call i64 @make_pure_c_string(i8* %1, i64 %2)
  store i64 %call1, i64* %string, align 8
  %3 = load i64, i64* %sym.addr, align 8
  %4 = load i64, i64* %string, align 8
  call void @init_symbol(i64 %3, i64 %4)
  %5 = load i64, i64* %sym.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp = icmp eq i64 %5, %call2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load i64, i64* @initial_obarray, align 8
  %7 = load i8*, i8** %str.addr, align 8
  %8 = load i64, i64* %len, align 8
  %9 = load i64, i64* %len, align 8
  %call3 = call i64 @oblookup(i64 %6, i8* %7, i64 %8, i64 %9)
  store i64 %call3, i64* %bucket, align 8
  %10 = load i64, i64* %sym.addr, align 8
  %11 = load i64, i64* @initial_obarray, align 8
  %12 = load i64, i64* %bucket, align 8
  %call4 = call i64 @intern_sym(i64 %10, i64 %11, i64 %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare noalias i8* @xmalloc(i64) #1

; Function Attrs: nounwind uwtable
define void @defsubr(%struct.Lisp_Subr* %sname) #0 {
entry:
  %sname.addr = alloca %struct.Lisp_Subr*, align 8
  %sym = alloca i64, align 8
  %tem = alloca i64, align 8
  store %struct.Lisp_Subr* %sname, %struct.Lisp_Subr** %sname.addr, align 8
  %0 = load %struct.Lisp_Subr*, %struct.Lisp_Subr** %sname.addr, align 8
  %symbol_name = getelementptr inbounds %struct.Lisp_Subr, %struct.Lisp_Subr* %0, i32 0, i32 4
  %1 = load i8*, i8** %symbol_name, align 8
  %call = call i64 @intern_c_string(i8* %1)
  store i64 %call, i64* %sym, align 8
  %2 = load %struct.Lisp_Subr*, %struct.Lisp_Subr** %sname.addr, align 8
  %header = getelementptr inbounds %struct.Lisp_Subr, %struct.Lisp_Subr* %2, i32 0, i32 0
  %size = getelementptr inbounds %struct.vectorlike_header, %struct.vectorlike_header* %header, i32 0, i32 0
  %3 = load i64, i64* %size, align 8
  %or = or i64 %3, 4611686018595160064
  store i64 %or, i64* %size, align 8
  %4 = load %struct.Lisp_Subr*, %struct.Lisp_Subr** %sname.addr, align 8
  %5 = bitcast %struct.Lisp_Subr* %4 to i8*
  %call1 = call i64 @make_lisp_ptr(i8* %5, i32 5)
  store i64 %call1, i64* %tem, align 8
  %6 = load i64, i64* %sym, align 8
  %7 = load i64, i64* %tem, align 8
  call void @set_symbol_function(i64 %6, i64 %7)
  ret void
}

declare i64 @intern_c_string(i8*) #1

declare i64 @make_lisp_ptr(i8*, i32) #1

declare void @set_symbol_function(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @defvar_int(%struct.Lisp_Intfwd* %i_fwd, i8* %namestring, i64* %address) #0 {
entry:
  %i_fwd.addr = alloca %struct.Lisp_Intfwd*, align 8
  %namestring.addr = alloca i8*, align 8
  %address.addr = alloca i64*, align 8
  %sym = alloca i64, align 8
  store %struct.Lisp_Intfwd* %i_fwd, %struct.Lisp_Intfwd** %i_fwd.addr, align 8
  store i8* %namestring, i8** %namestring.addr, align 8
  store i64* %address, i64** %address.addr, align 8
  %0 = load i8*, i8** %namestring.addr, align 8
  %call = call i64 @intern_c_string(i8* %0)
  store i64 %call, i64* %sym, align 8
  %1 = load %struct.Lisp_Intfwd*, %struct.Lisp_Intfwd** %i_fwd.addr, align 8
  %type = getelementptr inbounds %struct.Lisp_Intfwd, %struct.Lisp_Intfwd* %1, i32 0, i32 0
  store i32 0, i32* %type, align 4
  %2 = load i64*, i64** %address.addr, align 8
  %3 = load %struct.Lisp_Intfwd*, %struct.Lisp_Intfwd** %i_fwd.addr, align 8
  %intvar = getelementptr inbounds %struct.Lisp_Intfwd, %struct.Lisp_Intfwd* %3, i32 0, i32 1
  store i64* %2, i64** %intvar, align 8
  %4 = load i64, i64* %sym, align 8
  %sub = sub nsw i64 %4, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub
  %5 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  %6 = bitcast %struct.Lisp_Symbol* %5 to i16*
  %bf.load = load i16, i16* %6, align 8
  %bf.clear = and i16 %bf.load, -257
  %bf.set = or i16 %bf.clear, 256
  store i16 %bf.set, i16* %6, align 8
  %7 = load i64, i64* %sym, align 8
  %sub1 = sub nsw i64 %7, 0
  %add.ptr2 = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub1
  %8 = bitcast i8* %add.ptr2 to %struct.Lisp_Symbol*
  %9 = bitcast %struct.Lisp_Symbol* %8 to i16*
  %bf.load3 = load i16, i16* %9, align 8
  %bf.clear4 = and i16 %bf.load3, -15
  %bf.set5 = or i16 %bf.clear4, 6
  store i16 %bf.set5, i16* %9, align 8
  %10 = load i64, i64* %sym, align 8
  %sub6 = sub nsw i64 %10, 0
  %add.ptr7 = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub6
  %11 = bitcast i8* %add.ptr7 to %struct.Lisp_Symbol*
  %12 = load %struct.Lisp_Intfwd*, %struct.Lisp_Intfwd** %i_fwd.addr, align 8
  %13 = bitcast %struct.Lisp_Intfwd* %12 to %union.Lisp_Fwd*
  call void @SET_SYMBOL_FWD(%struct.Lisp_Symbol* %11, %union.Lisp_Fwd* %13)
  ret void
}

declare void @SET_SYMBOL_FWD(%struct.Lisp_Symbol*, %union.Lisp_Fwd*) #1

; Function Attrs: nounwind uwtable
define void @defvar_bool(%struct.Lisp_Boolfwd* %b_fwd, i8* %namestring, i8* %address) #0 {
entry:
  %b_fwd.addr = alloca %struct.Lisp_Boolfwd*, align 8
  %namestring.addr = alloca i8*, align 8
  %address.addr = alloca i8*, align 8
  %sym = alloca i64, align 8
  store %struct.Lisp_Boolfwd* %b_fwd, %struct.Lisp_Boolfwd** %b_fwd.addr, align 8
  store i8* %namestring, i8** %namestring.addr, align 8
  store i8* %address, i8** %address.addr, align 8
  %0 = load i8*, i8** %namestring.addr, align 8
  %call = call i64 @intern_c_string(i8* %0)
  store i64 %call, i64* %sym, align 8
  %1 = load %struct.Lisp_Boolfwd*, %struct.Lisp_Boolfwd** %b_fwd.addr, align 8
  %type = getelementptr inbounds %struct.Lisp_Boolfwd, %struct.Lisp_Boolfwd* %1, i32 0, i32 0
  store i32 1, i32* %type, align 4
  %2 = load i8*, i8** %address.addr, align 8
  %3 = load %struct.Lisp_Boolfwd*, %struct.Lisp_Boolfwd** %b_fwd.addr, align 8
  %boolvar = getelementptr inbounds %struct.Lisp_Boolfwd, %struct.Lisp_Boolfwd* %3, i32 0, i32 1
  store i8* %2, i8** %boolvar, align 8
  %4 = load i64, i64* %sym, align 8
  %sub = sub nsw i64 %4, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub
  %5 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  %6 = bitcast %struct.Lisp_Symbol* %5 to i16*
  %bf.load = load i16, i16* %6, align 8
  %bf.clear = and i16 %bf.load, -257
  %bf.set = or i16 %bf.clear, 256
  store i16 %bf.set, i16* %6, align 8
  %7 = load i64, i64* %sym, align 8
  %sub1 = sub nsw i64 %7, 0
  %add.ptr2 = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub1
  %8 = bitcast i8* %add.ptr2 to %struct.Lisp_Symbol*
  %9 = bitcast %struct.Lisp_Symbol* %8 to i16*
  %bf.load3 = load i16, i16* %9, align 8
  %bf.clear4 = and i16 %bf.load3, -15
  %bf.set5 = or i16 %bf.clear4, 6
  store i16 %bf.set5, i16* %9, align 8
  %10 = load i64, i64* %sym, align 8
  %sub6 = sub nsw i64 %10, 0
  %add.ptr7 = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub6
  %11 = bitcast i8* %add.ptr7 to %struct.Lisp_Symbol*
  %12 = load %struct.Lisp_Boolfwd*, %struct.Lisp_Boolfwd** %b_fwd.addr, align 8
  %13 = bitcast %struct.Lisp_Boolfwd* %12 to %union.Lisp_Fwd*
  call void @SET_SYMBOL_FWD(%struct.Lisp_Symbol* %11, %union.Lisp_Fwd* %13)
  %14 = load i64, i64* %sym, align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 20), align 8
  %call8 = call i64 @Fcons(i64 %14, i64 %15)
  store i64 %call8, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 20), align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @defvar_lisp_nopro(%struct.Lisp_Objfwd* %o_fwd, i8* %namestring, i64* %address) #0 {
entry:
  %o_fwd.addr = alloca %struct.Lisp_Objfwd*, align 8
  %namestring.addr = alloca i8*, align 8
  %address.addr = alloca i64*, align 8
  %sym = alloca i64, align 8
  store %struct.Lisp_Objfwd* %o_fwd, %struct.Lisp_Objfwd** %o_fwd.addr, align 8
  store i8* %namestring, i8** %namestring.addr, align 8
  store i64* %address, i64** %address.addr, align 8
  %0 = load i8*, i8** %namestring.addr, align 8
  %call = call i64 @intern_c_string(i8* %0)
  store i64 %call, i64* %sym, align 8
  %1 = load %struct.Lisp_Objfwd*, %struct.Lisp_Objfwd** %o_fwd.addr, align 8
  %type = getelementptr inbounds %struct.Lisp_Objfwd, %struct.Lisp_Objfwd* %1, i32 0, i32 0
  store i32 2, i32* %type, align 4
  %2 = load i64*, i64** %address.addr, align 8
  %3 = load %struct.Lisp_Objfwd*, %struct.Lisp_Objfwd** %o_fwd.addr, align 8
  %objvar = getelementptr inbounds %struct.Lisp_Objfwd, %struct.Lisp_Objfwd* %3, i32 0, i32 1
  store i64* %2, i64** %objvar, align 8
  %4 = load i64, i64* %sym, align 8
  %sub = sub nsw i64 %4, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub
  %5 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  %6 = bitcast %struct.Lisp_Symbol* %5 to i16*
  %bf.load = load i16, i16* %6, align 8
  %bf.clear = and i16 %bf.load, -257
  %bf.set = or i16 %bf.clear, 256
  store i16 %bf.set, i16* %6, align 8
  %7 = load i64, i64* %sym, align 8
  %sub1 = sub nsw i64 %7, 0
  %add.ptr2 = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub1
  %8 = bitcast i8* %add.ptr2 to %struct.Lisp_Symbol*
  %9 = bitcast %struct.Lisp_Symbol* %8 to i16*
  %bf.load3 = load i16, i16* %9, align 8
  %bf.clear4 = and i16 %bf.load3, -15
  %bf.set5 = or i16 %bf.clear4, 6
  store i16 %bf.set5, i16* %9, align 8
  %10 = load i64, i64* %sym, align 8
  %sub6 = sub nsw i64 %10, 0
  %add.ptr7 = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub6
  %11 = bitcast i8* %add.ptr7 to %struct.Lisp_Symbol*
  %12 = load %struct.Lisp_Objfwd*, %struct.Lisp_Objfwd** %o_fwd.addr, align 8
  %13 = bitcast %struct.Lisp_Objfwd* %12 to %union.Lisp_Fwd*
  call void @SET_SYMBOL_FWD(%struct.Lisp_Symbol* %11, %union.Lisp_Fwd* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define void @defvar_lisp(%struct.Lisp_Objfwd* %o_fwd, i8* %namestring, i64* %address) #0 {
entry:
  %o_fwd.addr = alloca %struct.Lisp_Objfwd*, align 8
  %namestring.addr = alloca i8*, align 8
  %address.addr = alloca i64*, align 8
  store %struct.Lisp_Objfwd* %o_fwd, %struct.Lisp_Objfwd** %o_fwd.addr, align 8
  store i8* %namestring, i8** %namestring.addr, align 8
  store i64* %address, i64** %address.addr, align 8
  %0 = load %struct.Lisp_Objfwd*, %struct.Lisp_Objfwd** %o_fwd.addr, align 8
  %1 = load i8*, i8** %namestring.addr, align 8
  %2 = load i64*, i64** %address.addr, align 8
  call void @defvar_lisp_nopro(%struct.Lisp_Objfwd* %0, i8* %1, i64* %2)
  %3 = load i64*, i64** %address.addr, align 8
  call void @staticpro(i64* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define void @defvar_kboard(%struct.Lisp_Kboard_Objfwd* %ko_fwd, i8* %namestring, i32 %offset) #0 {
entry:
  %ko_fwd.addr = alloca %struct.Lisp_Kboard_Objfwd*, align 8
  %namestring.addr = alloca i8*, align 8
  %offset.addr = alloca i32, align 4
  %sym = alloca i64, align 8
  store %struct.Lisp_Kboard_Objfwd* %ko_fwd, %struct.Lisp_Kboard_Objfwd** %ko_fwd.addr, align 8
  store i8* %namestring, i8** %namestring.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  %0 = load i8*, i8** %namestring.addr, align 8
  %call = call i64 @intern_c_string(i8* %0)
  store i64 %call, i64* %sym, align 8
  %1 = load %struct.Lisp_Kboard_Objfwd*, %struct.Lisp_Kboard_Objfwd** %ko_fwd.addr, align 8
  %type = getelementptr inbounds %struct.Lisp_Kboard_Objfwd, %struct.Lisp_Kboard_Objfwd* %1, i32 0, i32 0
  store i32 4, i32* %type, align 4
  %2 = load i32, i32* %offset.addr, align 4
  %3 = load %struct.Lisp_Kboard_Objfwd*, %struct.Lisp_Kboard_Objfwd** %ko_fwd.addr, align 8
  %offset1 = getelementptr inbounds %struct.Lisp_Kboard_Objfwd, %struct.Lisp_Kboard_Objfwd* %3, i32 0, i32 1
  store i32 %2, i32* %offset1, align 4
  %4 = load i64, i64* %sym, align 8
  %sub = sub nsw i64 %4, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub
  %5 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  %6 = bitcast %struct.Lisp_Symbol* %5 to i16*
  %bf.load = load i16, i16* %6, align 8
  %bf.clear = and i16 %bf.load, -257
  %bf.set = or i16 %bf.clear, 256
  store i16 %bf.set, i16* %6, align 8
  %7 = load i64, i64* %sym, align 8
  %sub2 = sub nsw i64 %7, 0
  %add.ptr3 = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub2
  %8 = bitcast i8* %add.ptr3 to %struct.Lisp_Symbol*
  %9 = bitcast %struct.Lisp_Symbol* %8 to i16*
  %bf.load4 = load i16, i16* %9, align 8
  %bf.clear5 = and i16 %bf.load4, -15
  %bf.set6 = or i16 %bf.clear5, 6
  store i16 %bf.set6, i16* %9, align 8
  %10 = load i64, i64* %sym, align 8
  %sub7 = sub nsw i64 %10, 0
  %add.ptr8 = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub7
  %11 = bitcast i8* %add.ptr8 to %struct.Lisp_Symbol*
  %12 = load %struct.Lisp_Kboard_Objfwd*, %struct.Lisp_Kboard_Objfwd** %ko_fwd.addr, align 8
  %13 = bitcast %struct.Lisp_Kboard_Objfwd* %12 to %union.Lisp_Fwd*
  call void @SET_SYMBOL_FWD(%struct.Lisp_Symbol* %11, %union.Lisp_Fwd* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_lread() #0 {
entry:
  %use_loadpath = alloca i8, align 1
  %elem = alloca i64, align 8
  %elpath = alloca i64, align 8
  %default_lpath = alloca i64, align 8
  %sitelisp = alloca i64, align 8
  %.compoundliteral = alloca [2 x i64], align 8
  %sitelisp43 = alloca i64, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 240), align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %use_loadpath, align 1
  %1 = load i8, i8* %use_loadpath, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %call1 = call i8* @egetenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0))
  %tobool2 = icmp ne i8* %call1, null
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call3 = call i64 @decode_env_path(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0), i8* null, i1 zeroext true)
  store i64 %call3, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 164), align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 164), align 8
  call void @load_path_check(i64 %2)
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %3 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 164), align 8
  %call5 = call i64 @Fmemq(i64 %call4, i64 %3)
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp7 = icmp eq i64 %call5, %call6
  br i1 %cmp7, label %if.end.32, label %if.then.8

if.then.8:                                        ; preds = %if.then
  %4 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 164), align 8
  store i64 %4, i64* %elpath, align 8
  %call9 = call i64 @load_path_default()
  store i64 %call9, i64* %default_lpath, align 8
  %5 = load i64, i64* %default_lpath, align 8
  call void @load_path_check(i64 %5)
  %6 = load i8, i8* @no_site_lisp, align 1
  %tobool10 = trunc i8 %6 to i1
  br i1 %tobool10, label %if.end.21, label %land.lhs.true.11

land.lhs.true.11:                                 ; preds = %if.then.8
  %7 = load i8, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.23, i32 0, i64 0), align 1
  %conv = sext i8 %7 to i32
  %cmp12 = icmp ne i32 %conv, 0
  br i1 %cmp12, label %if.then.14, label %if.end.21

if.then.14:                                       ; preds = %land.lhs.true.11
  %call15 = call i64 @decode_env_path(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.23, i32 0, i32 0), i1 zeroext false)
  store i64 %call15, i64* %sitelisp, align 8
  %8 = load i64, i64* %sitelisp, align 8
  %call16 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp17 = icmp eq i64 %8, %call16
  br i1 %cmp17, label %if.end, label %if.then.19

if.then.19:                                       ; preds = %if.then.14
  %9 = load i64, i64* %sitelisp, align 8
  %10 = load i64, i64* %default_lpath, align 8
  %call20 = call i64 @nconc2(i64 %9, i64 %10)
  store i64 %call20, i64* %default_lpath, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.19, %if.then.14
  br label %if.end.21

if.end.21:                                        ; preds = %if.end, %land.lhs.true.11, %if.then.8
  %call22 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call22, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 164), align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %if.end.21
  %11 = load i64, i64* %elpath, align 8
  %and = and i64 %11, 7
  %conv23 = trunc i64 %and to i32
  %cmp24 = icmp eq i32 %conv23, 3
  br i1 %cmp24, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i64, i64* %elpath, align 8
  %sub = sub nsw i64 %12, 3
  %13 = inttoptr i64 %sub to i8*
  %14 = bitcast i8* %13 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %14, i32 0, i32 0
  %15 = load i64, i64* %car, align 8
  store i64 %15, i64* %elem, align 8
  %16 = load i64, i64* %elpath, align 8
  %sub26 = sub nsw i64 %16, 3
  %17 = inttoptr i64 %sub26 to i8*
  %18 = bitcast i8* %17 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %18, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %19 = load i64, i64* %cdr, align 8
  store i64 %19, i64* %elpath, align 8
  %arrayinit.begin = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral, i64 0, i64 0
  %20 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 164), align 8
  store i64 %20, i64* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i64, i64* %arrayinit.begin, i64 1
  %21 = load i64, i64* %elem, align 8
  %call27 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp28 = icmp eq i64 %21, %call27
  br i1 %cmp28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %22 = load i64, i64* %default_lpath, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %23 = load i64, i64* %elem, align 8
  %call30 = call i64 @list1(i64 %23)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %22, %cond.true ], [ %call30, %cond.false ]
  store i64 %cond, i64* %arrayinit.element
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral, i32 0, i32 0
  %call31 = call i64 @Fappend(i64 2, i64* %arraydecay)
  store i64 %call31, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 164), align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.32

if.end.32:                                        ; preds = %while.end, %if.then
  br label %if.end.52

if.else:                                          ; preds = %land.lhs.true, %entry
  %call33 = call i64 @load_path_default()
  store i64 %call33, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 164), align 8
  %24 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 164), align 8
  call void @load_path_check(i64 %24)
  %25 = load i8, i8* @initialized, align 1
  %tobool34 = trunc i8 %25 to i1
  br i1 %tobool34, label %land.lhs.true.36, label %if.end.51

land.lhs.true.36:                                 ; preds = %if.else
  %26 = load i8, i8* @no_site_lisp, align 1
  %tobool37 = trunc i8 %26 to i1
  br i1 %tobool37, label %if.end.51, label %land.lhs.true.38

land.lhs.true.38:                                 ; preds = %land.lhs.true.36
  %27 = load i8, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.23, i32 0, i64 0), align 1
  %conv39 = sext i8 %27 to i32
  %cmp40 = icmp ne i32 %conv39, 0
  br i1 %cmp40, label %if.then.42, label %if.end.51

if.then.42:                                       ; preds = %land.lhs.true.38
  %call44 = call i64 @decode_env_path(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.23, i32 0, i32 0), i1 zeroext false)
  store i64 %call44, i64* %sitelisp43, align 8
  %28 = load i64, i64* %sitelisp43, align 8
  %call45 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp46 = icmp eq i64 %28, %call45
  br i1 %cmp46, label %if.end.50, label %if.then.48

if.then.48:                                       ; preds = %if.then.42
  %29 = load i64, i64* %sitelisp43, align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 164), align 8
  %call49 = call i64 @nconc2(i64 %29, i64 %30)
  store i64 %call49, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 164), align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %if.then.42
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %land.lhs.true.38, %land.lhs.true.36, %if.else
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.end.32
  %call53 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call53, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 323), align 8
  store i8 0, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 466), align 1
  %call54 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call54, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 161), align 8
  %call55 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call55, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 276), align 8
  %call56 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call56, i64* @Vloads_in_progress, align 8
  ret void
}

declare i8* @egetenv(i8*) #1

declare i64 @decode_env_path(i8*, i8*, i1 zeroext) #1

; Function Attrs: nounwind uwtable
define internal void @load_path_check(i64 %lpath) #0 {
entry:
  %lpath.addr = alloca i64, align 8
  %path_tail = alloca i64, align 8
  %dirfile = alloca i64, align 8
  store i64 %lpath, i64* %lpath.addr, align 8
  %0 = load i64, i64* %lpath.addr, align 8
  store i64 %0, i64* %path_tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %path_tail, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call
  %lnot = xor i1 %cmp, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %path_tail, align 8
  %call1 = call i64 @Fcar(i64 %2)
  store i64 %call1, i64* %dirfile, align 8
  %3 = load i64, i64* %dirfile, align 8
  %call2 = call zeroext i1 @STRINGP(i64 %3)
  br i1 %call2, label %if.then, label %if.end.6

if.then:                                          ; preds = %for.body
  %4 = load i64, i64* %dirfile, align 8
  %call3 = call i64 @Fdirectory_file_name(i64 %4)
  store i64 %call3, i64* %dirfile, align 8
  %5 = load i64, i64* %dirfile, align 8
  %call4 = call zeroext i1 @file_accessible_directory_p(i64 %5)
  br i1 %call4, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.then
  %6 = load i64, i64* %path_tail, align 8
  %sub = sub nsw i64 %6, 3
  %7 = inttoptr i64 %sub to i8*
  %8 = bitcast i8* %7 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %8, i32 0, i32 0
  %9 = load i64, i64* %car, align 8
  call void @dir_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1185, i32 0, i32 0), i64 %9)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %10 = load i64, i64* %path_tail, align 8
  %sub7 = sub nsw i64 %10, 3
  %11 = inttoptr i64 %sub7 to i8*
  %12 = bitcast i8* %11 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %12, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %13 = load i64, i64* %cdr, align 8
  store i64 %13, i64* %path_tail, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i64 @Fmemq(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @load_path_default() #0 {
entry:
  %lpath = alloca i64, align 8
  %normal = alloca i8*, align 8
  %tem = alloca i64, align 8
  %tem1 = alloca i64, align 8
  %dump_path = alloca i64, align 8
  %tem2 = alloca i64, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %lpath, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 240), align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call1
  %cond = select i1 %cmp, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1186, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.65, i32 0, i32 0)
  store i8* %cond, i8** %normal, align 8
  %1 = load i8, i8* @initialized, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.else.78

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %normal, align 8
  %call2 = call i64 @decode_env_path(i8* null, i8* %2, i1 zeroext false)
  store i64 %call2, i64* %lpath, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 145), align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4 = icmp eq i64 %3, %call3
  br i1 %cmp4, label %if.end.77, label %if.then.5

if.then.5:                                        ; preds = %if.then
  %call6 = call i64 @build_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1187, i32 0, i32 0))
  %4 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 145), align 8
  %call7 = call i64 @Fexpand_file_name(i64 %call6, i64 %4)
  store i64 %call7, i64* %tem, align 8
  %5 = load i64, i64* %tem, align 8
  %call8 = call i64 @Ffile_accessible_directory_p(i64 %5)
  store i64 %call8, i64* %tem1, align 8
  %6 = load i64, i64* %tem1, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp10 = icmp eq i64 %6, %call9
  br i1 %cmp10, label %if.else, label %if.then.11

if.then.11:                                       ; preds = %if.then.5
  %7 = load i64, i64* %tem, align 8
  %8 = load i64, i64* %lpath, align 8
  %call12 = call i64 @Fmember(i64 %7, i64 %8)
  %call13 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp14 = icmp eq i64 %call12, %call13
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.then.11
  %9 = load i64, i64* %tem, align 8
  %call16 = call i64 @list1(i64 %9)
  store i64 %call16, i64* %lpath, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.then.11
  br label %if.end.19

if.else:                                          ; preds = %if.then.5
  %call17 = call i64 @decode_env_path(i8* null, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.65, i32 0, i32 0), i1 zeroext false)
  store i64 %call17, i64* %dump_path, align 8
  %10 = load i64, i64* %lpath, align 8
  %11 = load i64, i64* %dump_path, align 8
  %call18 = call i64 @nconc2(i64 %10, i64 %11)
  store i64 %call18, i64* %lpath, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.end
  %12 = load i8, i8* @no_site_lisp, align 1
  %tobool20 = trunc i8 %12 to i1
  br i1 %tobool20, label %if.end.35, label %if.then.21

if.then.21:                                       ; preds = %if.end.19
  %call22 = call i64 @build_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1188, i32 0, i32 0))
  %13 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 145), align 8
  %call23 = call i64 @Fexpand_file_name(i64 %call22, i64 %13)
  store i64 %call23, i64* %tem, align 8
  %14 = load i64, i64* %tem, align 8
  %call24 = call i64 @Ffile_accessible_directory_p(i64 %14)
  store i64 %call24, i64* %tem1, align 8
  %15 = load i64, i64* %tem1, align 8
  %call25 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp26 = icmp eq i64 %15, %call25
  br i1 %cmp26, label %if.end.34, label %if.then.27

if.then.27:                                       ; preds = %if.then.21
  %16 = load i64, i64* %tem, align 8
  %17 = load i64, i64* %lpath, align 8
  %call28 = call i64 @Fmember(i64 %16, i64 %17)
  %call29 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp30 = icmp eq i64 %call28, %call29
  br i1 %cmp30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.then.27
  %18 = load i64, i64* %tem, align 8
  %19 = load i64, i64* %lpath, align 8
  %call32 = call i64 @Fcons(i64 %18, i64 %19)
  store i64 %call32, i64* %lpath, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.then.27
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.21
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end.19
  %20 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 145), align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 273), align 8
  %call36 = call i64 @Fequal(i64 %20, i64 %21)
  %call37 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp38 = icmp eq i64 %call36, %call37
  br i1 %cmp38, label %if.then.39, label %if.end.76

if.then.39:                                       ; preds = %if.end.35
  %call40 = call i64 @build_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1189, i32 0, i32 0))
  %22 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 145), align 8
  %call41 = call i64 @Fexpand_file_name(i64 %call40, i64 %22)
  store i64 %call41, i64* %tem, align 8
  %23 = load i64, i64* %tem, align 8
  %call42 = call i64 @Ffile_exists_p(i64 %23)
  store i64 %call42, i64* %tem1, align 8
  %call43 = call i64 @build_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1190, i32 0, i32 0))
  %24 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 145), align 8
  %call44 = call i64 @Fexpand_file_name(i64 %call43, i64 %24)
  store i64 %call44, i64* %tem, align 8
  %25 = load i64, i64* %tem, align 8
  %call45 = call i64 @Ffile_exists_p(i64 %25)
  store i64 %call45, i64* %tem2, align 8
  %26 = load i64, i64* %tem1, align 8
  %call46 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp47 = icmp eq i64 %26, %call46
  br i1 %cmp47, label %if.end.75, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.39
  %27 = load i64, i64* %tem2, align 8
  %call48 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp49 = icmp eq i64 %27, %call48
  br i1 %cmp49, label %if.then.50, label %if.end.75

if.then.50:                                       ; preds = %land.lhs.true
  %call51 = call i64 @build_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1187, i32 0, i32 0))
  %28 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 273), align 8
  %call52 = call i64 @Fexpand_file_name(i64 %call51, i64 %28)
  store i64 %call52, i64* %tem, align 8
  %29 = load i64, i64* %tem, align 8
  %30 = load i64, i64* %lpath, align 8
  %call53 = call i64 @Fmember(i64 %29, i64 %30)
  %call54 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp55 = icmp eq i64 %call53, %call54
  br i1 %cmp55, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.then.50
  %31 = load i64, i64* %tem, align 8
  %32 = load i64, i64* %lpath, align 8
  %call57 = call i64 @Fcons(i64 %31, i64 %32)
  store i64 %call57, i64* %lpath, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %if.then.50
  %33 = load i8, i8* @no_site_lisp, align 1
  %tobool59 = trunc i8 %33 to i1
  br i1 %tobool59, label %if.end.74, label %if.then.60

if.then.60:                                       ; preds = %if.end.58
  %call61 = call i64 @build_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1188, i32 0, i32 0))
  %34 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 273), align 8
  %call62 = call i64 @Fexpand_file_name(i64 %call61, i64 %34)
  store i64 %call62, i64* %tem, align 8
  %35 = load i64, i64* %tem, align 8
  %call63 = call i64 @Ffile_accessible_directory_p(i64 %35)
  store i64 %call63, i64* %tem1, align 8
  %36 = load i64, i64* %tem1, align 8
  %call64 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp65 = icmp eq i64 %36, %call64
  br i1 %cmp65, label %if.end.73, label %if.then.66

if.then.66:                                       ; preds = %if.then.60
  %37 = load i64, i64* %tem, align 8
  %38 = load i64, i64* %lpath, align 8
  %call67 = call i64 @Fmember(i64 %37, i64 %38)
  %call68 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp69 = icmp eq i64 %call67, %call68
  br i1 %cmp69, label %if.then.70, label %if.end.72

if.then.70:                                       ; preds = %if.then.66
  %39 = load i64, i64* %tem, align 8
  %40 = load i64, i64* %lpath, align 8
  %call71 = call i64 @Fcons(i64 %39, i64 %40)
  store i64 %call71, i64* %lpath, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.70, %if.then.66
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.then.60
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.end.58
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %land.lhs.true, %if.then.39
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.end.35
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then
  br label %if.end.80

if.else.78:                                       ; preds = %entry
  %41 = load i8*, i8** %normal, align 8
  %call79 = call i64 @decode_env_path(i8* null, i8* %41, i1 zeroext false)
  store i64 %call79, i64* %lpath, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.78, %if.end.77
  %42 = load i64, i64* %lpath, align 8
  ret i64 %42
}

declare i64 @nconc2(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @dir_warning(i8* %use, i64 %dirname) #0 {
entry:
  %use.addr = alloca i8*, align 8
  %dirname.addr = alloca i64, align 8
  %access_errno = alloca i32, align 4
  %diagnostic = alloca i8*, align 8
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %buffer = alloca i8*, align 8
  %message_len = alloca i64, align 8
  store i8* %use, i8** %use.addr, align 8
  store i64 %dirname, i64* %dirname.addr, align 8
  %call = call i32* @__errno_location() #8
  %0 = load i32, i32* %call, align 4
  store i32 %0, i32* %access_errno, align 4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** %use.addr, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 168), align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %3, %call1
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %4 = load i64, i64* %dirname.addr, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 168), align 8
  %call2 = call i64 @code_convert_string_norecord(i64 %4, i64 %5, i1 zeroext true)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load i64, i64* %dirname.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call2, %cond.true ], [ %6, %cond.false ]
  %call3 = call i8* @SSDATA(i64 %cond)
  %7 = load i32, i32* %access_errno, align 4
  %call4 = call i8* @strerror(i32 %7) #6
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @dir_warning.format, i32 0, i32 0), i8* %2, i8* %call3, i8* %call4)
  %8 = load i8, i8* @initialized, align 1
  %tobool = trunc i8 %8 to i1
  br i1 %tobool, label %if.then, label %if.end.44

if.then:                                          ; preds = %cond.end
  %9 = load i32, i32* %access_errno, align 4
  %call6 = call i8* @emacs_strerror(i32 %9)
  store i8* %call6, i8** %diagnostic, align 8
  store i64 16384, i64* %sa_avail, align 8
  %call7 = call i64 @SPECPDL_INDEX()
  store i64 %call7, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %10 = load i8*, i8** %use.addr, align 8
  %call8 = call i64 @strlen(i8* %10) #10
  %add = add i64 16, %call8
  %11 = load i64, i64* %dirname.addr, align 8
  %call9 = call i64 @SBYTES(i64 %11)
  %add10 = add i64 %add, %call9
  %12 = load i8*, i8** %diagnostic, align 8
  %call11 = call i64 @strlen(i8* %12) #10
  %add12 = add i64 %add10, %call11
  %13 = load i64, i64* %sa_avail, align 8
  %cmp13 = icmp ule i64 %add12, %13
  br i1 %cmp13, label %cond.true.14, label %cond.false.27

cond.true.14:                                     ; preds = %if.then
  %14 = load i8*, i8** %use.addr, align 8
  %call15 = call i64 @strlen(i8* %14) #10
  %add16 = add i64 16, %call15
  %15 = load i64, i64* %dirname.addr, align 8
  %call17 = call i64 @SBYTES(i64 %15)
  %add18 = add i64 %add16, %call17
  %16 = load i8*, i8** %diagnostic, align 8
  %call19 = call i64 @strlen(i8* %16) #10
  %add20 = add i64 %add18, %call19
  %17 = load i64, i64* %sa_avail, align 8
  %sub = sub i64 %17, %add20
  store i64 %sub, i64* %sa_avail, align 8
  %18 = load i8*, i8** %use.addr, align 8
  %call21 = call i64 @strlen(i8* %18) #10
  %add22 = add i64 16, %call21
  %19 = load i64, i64* %dirname.addr, align 8
  %call23 = call i64 @SBYTES(i64 %19)
  %add24 = add i64 %add22, %call23
  %20 = load i8*, i8** %diagnostic, align 8
  %call25 = call i64 @strlen(i8* %20) #10
  %add26 = add i64 %add24, %call25
  %21 = alloca i8, i64 %add26
  br label %cond.end.35

cond.false.27:                                    ; preds = %if.then
  store i8 1, i8* %sa_must_free, align 1
  %22 = load i8*, i8** %use.addr, align 8
  %call28 = call i64 @strlen(i8* %22) #10
  %add29 = add i64 16, %call28
  %23 = load i64, i64* %dirname.addr, align 8
  %call30 = call i64 @SBYTES(i64 %23)
  %add31 = add i64 %add29, %call30
  %24 = load i8*, i8** %diagnostic, align 8
  %call32 = call i64 @strlen(i8* %24) #10
  %add33 = add i64 %add31, %call32
  %call34 = call i8* @record_xmalloc(i64 %add33)
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.27, %cond.true.14
  %cond36 = phi i8* [ %21, %cond.true.14 ], [ %call34, %cond.false.27 ]
  store i8* %cond36, i8** %buffer, align 8
  %25 = load i8*, i8** %buffer, align 8
  %26 = load i8*, i8** %use.addr, align 8
  %27 = load i64, i64* %dirname.addr, align 8
  %call37 = call i8* @SSDATA(i64 %27)
  %28 = load i8*, i8** %diagnostic, align 8
  %call38 = call i64 (i8*, i8*, ...) @esprintf(i8* %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @dir_warning.format, i32 0, i32 0), i8* %26, i8* %call37, i8* %28)
  store i64 %call38, i64* %message_len, align 8
  %29 = load i8*, i8** %buffer, align 8
  %30 = load i64, i64* %message_len, align 8
  %31 = load i64, i64* %dirname.addr, align 8
  %call39 = call zeroext i1 @STRING_MULTIBYTE(i64 %31)
  call void @message_dolog(i8* %29, i64 %30, i1 zeroext false, i1 zeroext %call39)
  br label %do.body

do.body:                                          ; preds = %cond.end.35
  %32 = load i8, i8* %sa_must_free, align 1
  %tobool40 = trunc i8 %32 to i1
  br i1 %tobool40, label %if.then.41, label %if.end

if.then.41:                                       ; preds = %do.body
  store i8 0, i8* %sa_must_free, align 1
  %33 = load i64, i64* %sa_count, align 8
  %call42 = call i64 @builtin_lisp_symbol(i32 0)
  %call43 = call i64 @unbind_to(i64 %33, i64 %call42)
  br label %if.end

if.end:                                           ; preds = %if.then.41, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.44

if.end.44:                                        ; preds = %do.end, %cond.end
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i64 @code_convert_string_norecord(i64, i64, i1 zeroext) #1

; Function Attrs: nounwind
declare i8* @strerror(i32) #4

declare i8* @emacs_strerror(i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare i64 @esprintf(i8*, i8*, ...) #1

declare void @message_dolog(i8*, i64, i1 zeroext, i1 zeroext) #1

; Function Attrs: nounwind uwtable
define void @syms_of_lread() #0 {
entry:
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sread to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sread_from_string to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sintern to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sintern_soft to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sunintern to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* @Sget_load_suffixes)
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sload to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Seval_buffer to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Seval_region to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sread_char to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sread_char_exclusive to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sread_event to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* @Sget_file_char)
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Smapatoms to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Slocate_file_internal to %struct.Lisp_Subr*))
  br label %do.body

do.body:                                          ; preds = %entry
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_lread.o_fwd, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 207))
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_lread.o_fwd.25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 323))
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  %call = call i64 @intern(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0))
  %sub = sub nsw i64 %call, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub
  %0 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  %1 = bitcast %struct.Lisp_Symbol* %0 to i16*
  %bf.load = load i16, i16* %1, align 8
  %bf.clear = and i16 %bf.load, -257
  store i16 %bf.clear, i16* %1, align 8
  br label %do.body.3

do.body.3:                                        ; preds = %do.end.2
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_lread.o_fwd.27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 276))
  br label %do.end.4

do.end.4:                                         ; preds = %do.body.3
  %call5 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call5, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 276), align 8
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.4
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_lread.o_fwd.29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 247))
  br label %do.end.7

do.end.7:                                         ; preds = %do.body.6
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call8, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 247), align 8
  br label %do.body.9

do.body.9:                                        ; preds = %do.end.7
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_lread.o_fwd.31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 246))
  br label %do.end.10

do.end.10:                                        ; preds = %do.body.9
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call11, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 246), align 8
  br label %do.body.12

do.body.12:                                       ; preds = %do.end.10
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_lread.o_fwd.33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 243))
  br label %do.end.13

do.end.13:                                        ; preds = %do.body.12
  %call14 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call14, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 243), align 8
  br label %do.body.15

do.body.15:                                       ; preds = %do.end.13
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_lread.o_fwd.35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 164))
  br label %do.end.16

do.end.16:                                        ; preds = %do.body.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_lread.o_fwd.37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 167))
  br label %do.end.18

do.end.18:                                        ; preds = %do.body.17
  %call19 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  %call20 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0))
  %call21 = call i64 @list2(i64 %call19, i64 %call20)
  store i64 %call21, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 167), align 8
  br label %do.body.22

do.body.22:                                       ; preds = %do.end.18
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_lread.o_fwd.39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.40, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 197))
  br label %do.end.23

do.end.23:                                        ; preds = %do.body.22
  %call24 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call24, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 197), align 8
  br label %do.body.25

do.body.25:                                       ; preds = %do.end.23
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_lread.o_fwd.41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.42, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 162))
  br label %do.end.26

do.end.26:                                        ; preds = %do.body.25
  %2 = load i64, i64* @empty_unibyte_string, align 8
  %call27 = call i64 @list1(i64 %2)
  store i64 %call27, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 162), align 8
  br label %do.body.28

do.body.28:                                       ; preds = %do.end.26
  call void @defvar_bool(%struct.Lisp_Boolfwd* @syms_of_lread.b_fwd, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 466))
  br label %do.end.29

do.end.29:                                        ; preds = %do.body.28
  br label %do.body.30

do.body.30:                                       ; preds = %do.end.29
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_lread.o_fwd.44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 3))
  br label %do.end.31

do.end.31:                                        ; preds = %do.body.30
  %call32 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call32, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 3), align 8
  br label %do.body.33

do.body.33:                                       ; preds = %do.end.31
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_lread.o_fwd.46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 163))
  br label %do.end.34

do.end.34:                                        ; preds = %do.body.33
  %call35 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call35, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 163), align 8
  br label %do.body.36

do.body.36:                                       ; preds = %do.end.34
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_lread.o_fwd.48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 161))
  br label %do.end.37

do.end.37:                                        ; preds = %do.body.36
  %call38 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call38, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 161), align 8
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.37
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_lread.o_fwd.50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 320))
  br label %do.end.40

do.end.40:                                        ; preds = %do.body.39
  %call41 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call41, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 320), align 8
  br label %do.body.42

do.body.42:                                       ; preds = %do.end.40
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_lread.o_fwd.52, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.53, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 49))
  br label %do.end.43

do.end.43:                                        ; preds = %do.body.42
  %call44 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call44, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 49), align 8
  br label %do.body.45

do.body.45:                                       ; preds = %do.end.43
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_lread.o_fwd.54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.55, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 165))
  br label %do.end.46

do.end.46:                                        ; preds = %do.body.45
  %call47 = call i64 @builtin_lisp_symbol(i32 789)
  store i64 %call47, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 165), align 8
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.46
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_lread.o_fwd.56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.57, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 166))
  br label %do.end.49

do.end.49:                                        ; preds = %do.body.48
  %call50 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call50, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 166), align 8
  br label %do.body.51

do.body.51:                                       ; preds = %do.end.49
  call void @defvar_bool(%struct.Lisp_Boolfwd* @syms_of_lread.b_fwd.58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 465))
  br label %do.end.52

do.end.52:                                        ; preds = %do.body.51
  store i8 0, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 465), align 1
  br label %do.body.53

do.body.53:                                       ; preds = %do.end.52
  call void @defvar_bool(%struct.Lisp_Boolfwd* @syms_of_lread.b_fwd.60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 463))
  br label %do.end.54

do.end.54:                                        ; preds = %do.body.53
  store i8 0, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 463), align 1
  br label %do.body.55

do.body.55:                                       ; preds = %do.end.54
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_lread.o_fwd.62, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.63, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 273))
  br label %do.end.56

do.end.56:                                        ; preds = %do.body.55
  %call57 = call i64 @build_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i32 0, i32 0))
  %call58 = call i64 @decode_env_path(i8* null, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.65, i32 0, i32 0), i1 zeroext false)
  %call59 = call i64 @Fcar(i64 %call58)
  %call60 = call i64 @Fexpand_file_name(i64 %call57, i64 %call59)
  store i64 %call60, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 273), align 8
  br label %do.body.61

do.body.61:                                       ; preds = %do.end.56
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_lread.o_fwd.66, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.67, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 225))
  br label %do.end.62

do.end.62:                                        ; preds = %do.body.61
  %call63 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call63, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 225), align 8
  br label %do.body.64

do.body.64:                                       ; preds = %do.end.62
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_lread.o_fwd.68, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.69, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 20))
  br label %do.end.65

do.end.65:                                        ; preds = %do.body.64
  %call66 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call66, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 20), align 8
  br label %do.body.67

do.body.67:                                       ; preds = %do.end.65
  call void @defvar_bool(%struct.Lisp_Boolfwd* @syms_of_lread.b_fwd.70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 464))
  br label %do.end.68

do.end.68:                                        ; preds = %do.body.67
  store i8 0, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 464), align 1
  br label %do.body.69

do.body.69:                                       ; preds = %do.end.68
  call void @defvar_bool(%struct.Lisp_Boolfwd* @syms_of_lread.b_fwd.72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 441))
  br label %do.end.70

do.end.70:                                        ; preds = %do.body.69
  store i8 0, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 441), align 1
  br label %do.body.71

do.body.71:                                       ; preds = %do.end.70
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_lread.o_fwd.74, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.75, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 22))
  br label %do.end.72

do.end.72:                                        ; preds = %do.body.71
  %call73 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.76, i32 0, i32 0))
  store i64 %call73, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 22), align 8
  br label %do.body.74

do.body.74:                                       ; preds = %do.end.72
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_lread.o_fwd.77, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.78, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 158))
  br label %do.end.75

do.end.75:                                        ; preds = %do.body.74
  %call76 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call76, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 158), align 8
  %call77 = call i64 @builtin_lisp_symbol(i32 614)
  %call78 = call i64 @Fmake_variable_buffer_local(i64 %call77)
  br label %do.body.79

do.body.79:                                       ; preds = %do.end.75
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_lread.o_fwd.79, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.80, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 82))
  br label %do.end.80

do.end.80:                                        ; preds = %do.body.79
  %call81 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call81, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 82), align 8
  br label %do.body.82

do.body.82:                                       ; preds = %do.end.80
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_lread.o_fwd.81, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.82, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 208))
  br label %do.end.83

do.end.83:                                        ; preds = %do.body.82
  %call84 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call84, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 208), align 8
  br label %do.body.85

do.body.85:                                       ; preds = %do.end.83
  call void @defvar_bool(%struct.Lisp_Boolfwd* @syms_of_lread.b_fwd.83, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 467))
  br label %do.end.86

do.end.86:                                        ; preds = %do.body.85
  store i8 0, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 467), align 1
  call void @staticpro(i64* @read_objects)
  %call87 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call87, i64* @read_objects, align 8
  call void @staticpro(i64* @seen_list)
  %call88 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call88, i64* @seen_list, align 8
  %call89 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call89, i64* @Vloads_in_progress, align 8
  call void @staticpro(i64* @Vloads_in_progress)
  ret void
}

declare i64 @list2(i64, i64) #1

declare i64 @build_pure_c_string(i8*) #1

declare i64 @Fcar(i64) #1

declare i64 @Fmake_variable_buffer_local(i64) #1

declare void @cancel_hourglass() #1

declare zeroext i1 @NUMBERP(i64) #1

declare double @extract_float(i64) #1

; Function Attrs: nounwind readnone
declare { i64, i64 } @dtotimespec(double) #2

; Function Attrs: nounwind readnone
declare { i64, i64 } @timespec_add(i64, i64, i64, i64) #2

declare { i64, i64 } @current_timespec() #1

declare i64 @read_char(i32, i64, i64, i8*, %struct.timespec*) #1

declare zeroext i1 @BUFFERP(i64) #1

declare i64 @Fget(i64, i64) #1

declare i64 @Fcdr(i64) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare i64 @Fmessage(i64, i64*) #1

declare i64 @emacs_read(i32, i8*, i64) #1

declare i64 @fast_c_string_match_ignore_case(i64, i8*, i64) #1

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #4

; Function Attrs: nounwind uwtable
define internal i32 @readchar(i64 %readcharfun, i8* %multibyte) #0 {
entry:
  %retval = alloca i32, align 4
  %readcharfun.addr = alloca i64, align 8
  %multibyte.addr = alloca i8*, align 8
  %tem = alloca i64, align 8
  %c = alloca i32, align 4
  %readbyte = alloca i32 (i32, i64)*, align 8
  %buf = alloca [5 x i8], align 1
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %emacs_mule_encoding = alloca i8, align 1
  %inbuffer = alloca %struct.buffer*, align 8
  %pt_byte = alloca i64, align 8
  %p = alloca i8*, align 8
  %chp = alloca i8*, align 8
  %inbuffer199 = alloca %struct.buffer*, align 8
  %bytepos = alloca i64, align 8
  %p229 = alloca i8*, align 8
  %chp246 = alloca i8*, align 8
  %fetch_ptr = alloca i8*, align 8
  %fetch_len = alloca i32, align 4
  store i64 %readcharfun, i64* %readcharfun.addr, align 8
  store i8* %multibyte, i8** %multibyte.addr, align 8
  store i8 0, i8* %emacs_mule_encoding, align 1
  %0 = load i8*, i8** %multibyte.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %multibyte.addr, align 8
  store i8 0, i8* %1, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* @readchar_count, align 8
  %inc = add nsw i64 %2, 1
  store i64 %inc, i64* @readchar_count, align 8
  %3 = load i64, i64* %readcharfun.addr, align 8
  %call = call zeroext i1 @BUFFERP(i64 %3)
  br i1 %call, label %if.then.1, label %if.end.190

if.then.1:                                        ; preds = %if.end
  %4 = load i64, i64* %readcharfun.addr, align 8
  %call2 = call %struct.buffer* @XBUFFER(i64 %4)
  store %struct.buffer* %call2, %struct.buffer** %inbuffer, align 8
  %5 = load %struct.buffer*, %struct.buffer** %inbuffer, align 8
  %6 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp = icmp eq %struct.buffer* %5, %6
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.1
  %7 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte3 = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 76
  %8 = load i64, i64* %pt_byte3, align 8
  %add = add nsw i64 %8, 0
  br label %cond.end.11

cond.false:                                       ; preds = %if.then.1
  %9 = load %struct.buffer*, %struct.buffer** %inbuffer, align 8
  %pt_marker_ = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 45
  %10 = load i64, i64* %pt_marker_, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp5 = icmp eq i64 %10, %call4
  br i1 %cmp5, label %cond.true.6, label %cond.false.8

cond.true.6:                                      ; preds = %cond.false
  %11 = load %struct.buffer*, %struct.buffer** %inbuffer, align 8
  %pt_byte7 = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 76
  %12 = load i64, i64* %pt_byte7, align 8
  br label %cond.end

cond.false.8:                                     ; preds = %cond.false
  %13 = load %struct.buffer*, %struct.buffer** %inbuffer, align 8
  %pt_marker_9 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i32 0, i32 45
  %14 = load i64, i64* %pt_marker_9, align 8
  %call10 = call i64 @marker_byte_position(i64 %14)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.8, %cond.true.6
  %cond = phi i64 [ %12, %cond.true.6 ], [ %call10, %cond.false.8 ]
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.end, %cond.true
  %cond12 = phi i64 [ %add, %cond.true ], [ %cond, %cond.end ]
  store i64 %cond12, i64* %pt_byte, align 8
  %15 = load %struct.buffer*, %struct.buffer** %inbuffer, align 8
  %name_ = getelementptr inbounds %struct.buffer, %struct.buffer* %15, i32 0, i32 1
  %16 = load i64, i64* %name_, align 8
  %call13 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp14 = icmp eq i64 %16, %call13
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %cond.end.11
  store i32 -1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %cond.end.11
  %17 = load i64, i64* %pt_byte, align 8
  %18 = load %struct.buffer*, %struct.buffer** %inbuffer, align 8
  %19 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp17 = icmp eq %struct.buffer* %18, %19
  br i1 %cmp17, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %if.end.16
  %20 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %20, i32 0, i32 80
  %21 = load i64, i64* %zv_byte, align 8
  br label %cond.end.29

cond.false.19:                                    ; preds = %if.end.16
  %22 = load %struct.buffer*, %struct.buffer** %inbuffer, align 8
  %zv_marker_ = getelementptr inbounds %struct.buffer, %struct.buffer* %22, i32 0, i32 47
  %23 = load i64, i64* %zv_marker_, align 8
  %call20 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp21 = icmp eq i64 %23, %call20
  br i1 %cmp21, label %cond.true.22, label %cond.false.24

cond.true.22:                                     ; preds = %cond.false.19
  %24 = load %struct.buffer*, %struct.buffer** %inbuffer, align 8
  %zv_byte23 = getelementptr inbounds %struct.buffer, %struct.buffer* %24, i32 0, i32 80
  %25 = load i64, i64* %zv_byte23, align 8
  br label %cond.end.27

cond.false.24:                                    ; preds = %cond.false.19
  %26 = load %struct.buffer*, %struct.buffer** %inbuffer, align 8
  %zv_marker_25 = getelementptr inbounds %struct.buffer, %struct.buffer* %26, i32 0, i32 47
  %27 = load i64, i64* %zv_marker_25, align 8
  %call26 = call i64 @marker_byte_position(i64 %27)
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.24, %cond.true.22
  %cond28 = phi i64 [ %25, %cond.true.22 ], [ %call26, %cond.false.24 ]
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.end.27, %cond.true.18
  %cond30 = phi i64 [ %21, %cond.true.18 ], [ %cond28, %cond.end.27 ]
  %cmp31 = icmp sge i64 %17, %cond30
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %cond.end.29
  store i32 -1, i32* %retval
  br label %return

if.end.33:                                        ; preds = %cond.end.29
  %28 = load %struct.buffer*, %struct.buffer** %inbuffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %28, i32 0, i32 39
  %29 = load i64, i64* %enable_multibyte_characters_, align 8
  %call34 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp35 = icmp eq i64 %29, %call34
  br i1 %cmp35, label %if.else, label %if.then.36

if.then.36:                                       ; preds = %if.end.33
  %30 = load %struct.buffer*, %struct.buffer** %inbuffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %30, i32 0, i32 73
  %31 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %31, i32 0, i32 0
  %32 = load i8*, i8** %beg, align 8
  %33 = load i64, i64* %pt_byte, align 8
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 %33
  %add.ptr37 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %34 = load i64, i64* %pt_byte, align 8
  %35 = load %struct.buffer*, %struct.buffer** %inbuffer, align 8
  %text38 = getelementptr inbounds %struct.buffer, %struct.buffer* %35, i32 0, i32 73
  %36 = load %struct.buffer_text*, %struct.buffer_text** %text38, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %36, i32 0, i32 3
  %37 = load i64, i64* %gpt_byte, align 8
  %cmp39 = icmp sge i64 %34, %37
  br i1 %cmp39, label %cond.true.40, label %cond.false.42

cond.true.40:                                     ; preds = %if.then.36
  %38 = load %struct.buffer*, %struct.buffer** %inbuffer, align 8
  %text41 = getelementptr inbounds %struct.buffer, %struct.buffer* %38, i32 0, i32 73
  %39 = load %struct.buffer_text*, %struct.buffer_text** %text41, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %39, i32 0, i32 5
  %40 = load i64, i64* %gap_size, align 8
  br label %cond.end.43

cond.false.42:                                    ; preds = %if.then.36
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.42, %cond.true.40
  %cond44 = phi i64 [ %40, %cond.true.40 ], [ 0, %cond.false.42 ]
  %add.ptr45 = getelementptr inbounds i8, i8* %add.ptr37, i64 %cond44
  store i8* %add.ptr45, i8** %p, align 8
  br label %do.body

do.body:                                          ; preds = %cond.end.43
  %41 = load %struct.buffer*, %struct.buffer** %inbuffer, align 8
  %text46 = getelementptr inbounds %struct.buffer, %struct.buffer* %41, i32 0, i32 73
  %42 = load %struct.buffer_text*, %struct.buffer_text** %text46, align 8
  %beg47 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %42, i32 0, i32 0
  %43 = load i8*, i8** %beg47, align 8
  %44 = load i64, i64* %pt_byte, align 8
  %add.ptr48 = getelementptr inbounds i8, i8* %43, i64 %44
  %add.ptr49 = getelementptr inbounds i8, i8* %add.ptr48, i64 -1
  %45 = load i64, i64* %pt_byte, align 8
  %46 = load %struct.buffer*, %struct.buffer** %inbuffer, align 8
  %text50 = getelementptr inbounds %struct.buffer, %struct.buffer* %46, i32 0, i32 73
  %47 = load %struct.buffer_text*, %struct.buffer_text** %text50, align 8
  %gpt_byte51 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %47, i32 0, i32 3
  %48 = load i64, i64* %gpt_byte51, align 8
  %cmp52 = icmp sge i64 %45, %48
  br i1 %cmp52, label %cond.true.53, label %cond.false.56

cond.true.53:                                     ; preds = %do.body
  %49 = load %struct.buffer*, %struct.buffer** %inbuffer, align 8
  %text54 = getelementptr inbounds %struct.buffer, %struct.buffer* %49, i32 0, i32 73
  %50 = load %struct.buffer_text*, %struct.buffer_text** %text54, align 8
  %gap_size55 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %50, i32 0, i32 5
  %51 = load i64, i64* %gap_size55, align 8
  br label %cond.end.57

cond.false.56:                                    ; preds = %do.body
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.56, %cond.true.53
  %cond58 = phi i64 [ %51, %cond.true.53 ], [ 0, %cond.false.56 ]
  %add.ptr59 = getelementptr inbounds i8, i8* %add.ptr49, i64 %cond58
  store i8* %add.ptr59, i8** %chp, align 8
  %52 = load i8*, i8** %chp, align 8
  %53 = load i8, i8* %52, align 1
  %conv = zext i8 %53 to i32
  %and = and i32 %conv, 128
  %tobool60 = icmp ne i32 %and, 0
  br i1 %tobool60, label %cond.false.62, label %cond.true.61

cond.true.61:                                     ; preds = %cond.end.57
  br label %cond.end.81

cond.false.62:                                    ; preds = %cond.end.57
  %54 = load i8*, i8** %chp, align 8
  %55 = load i8, i8* %54, align 1
  %conv63 = zext i8 %55 to i32
  %and64 = and i32 %conv63, 32
  %tobool65 = icmp ne i32 %and64, 0
  br i1 %tobool65, label %cond.false.67, label %cond.true.66

cond.true.66:                                     ; preds = %cond.false.62
  br label %cond.end.79

cond.false.67:                                    ; preds = %cond.false.62
  %56 = load i8*, i8** %chp, align 8
  %57 = load i8, i8* %56, align 1
  %conv68 = zext i8 %57 to i32
  %and69 = and i32 %conv68, 16
  %tobool70 = icmp ne i32 %and69, 0
  br i1 %tobool70, label %cond.false.72, label %cond.true.71

cond.true.71:                                     ; preds = %cond.false.67
  br label %cond.end.77

cond.false.72:                                    ; preds = %cond.false.67
  %58 = load i8*, i8** %chp, align 8
  %59 = load i8, i8* %58, align 1
  %conv73 = zext i8 %59 to i32
  %and74 = and i32 %conv73, 8
  %tobool75 = icmp ne i32 %and74, 0
  %lnot = xor i1 %tobool75, true
  %cond76 = select i1 %lnot, i32 4, i32 5
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.72, %cond.true.71
  %cond78 = phi i32 [ 3, %cond.true.71 ], [ %cond76, %cond.false.72 ]
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.end.77, %cond.true.66
  %cond80 = phi i32 [ 2, %cond.true.66 ], [ %cond78, %cond.end.77 ]
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.end.79, %cond.true.61
  %cond82 = phi i32 [ 1, %cond.true.61 ], [ %cond80, %cond.end.79 ]
  %conv83 = sext i32 %cond82 to i64
  %60 = load i64, i64* %pt_byte, align 8
  %add84 = add nsw i64 %60, %conv83
  store i64 %add84, i64* %pt_byte, align 8
  br label %do.end

do.end:                                           ; preds = %cond.end.81
  %61 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %61, i64 0
  %62 = load i8, i8* %arrayidx, align 1
  %conv85 = zext i8 %62 to i32
  %and86 = and i32 %conv85, 128
  %tobool87 = icmp ne i32 %and86, 0
  br i1 %tobool87, label %cond.false.91, label %cond.true.88

cond.true.88:                                     ; preds = %do.end
  %63 = load i8*, i8** %p, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %63, i64 0
  %64 = load i8, i8* %arrayidx89, align 1
  %conv90 = zext i8 %64 to i32
  br label %cond.end.134

cond.false.91:                                    ; preds = %do.end
  %65 = load i8*, i8** %p, align 8
  %arrayidx92 = getelementptr inbounds i8, i8* %65, i64 0
  %66 = load i8, i8* %arrayidx92, align 1
  %conv93 = zext i8 %66 to i32
  %and94 = and i32 %conv93, 32
  %tobool95 = icmp ne i32 %and94, 0
  br i1 %tobool95, label %cond.false.109, label %cond.true.96

cond.true.96:                                     ; preds = %cond.false.91
  %67 = load i8*, i8** %p, align 8
  %arrayidx97 = getelementptr inbounds i8, i8* %67, i64 0
  %68 = load i8, i8* %arrayidx97, align 1
  %conv98 = zext i8 %68 to i32
  %and99 = and i32 %conv98, 31
  %shl = shl i32 %and99, 6
  %69 = load i8*, i8** %p, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %69, i64 1
  %70 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %70 to i32
  %and102 = and i32 %conv101, 63
  %or = or i32 %shl, %and102
  %71 = load i8*, i8** %p, align 8
  %arrayidx103 = getelementptr inbounds i8, i8* %71, i64 0
  %72 = load i8, i8* %arrayidx103, align 1
  %conv104 = zext i8 %72 to i32
  %cmp105 = icmp slt i32 %conv104, 194
  %cond107 = select i1 %cmp105, i32 4194176, i32 0
  %add108 = add nsw i32 %or, %cond107
  br label %cond.end.132

cond.false.109:                                   ; preds = %cond.false.91
  %73 = load i8*, i8** %p, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %73, i64 0
  %74 = load i8, i8* %arrayidx110, align 1
  %conv111 = zext i8 %74 to i32
  %and112 = and i32 %conv111, 16
  %tobool113 = icmp ne i32 %and112, 0
  br i1 %tobool113, label %cond.false.128, label %cond.true.114

cond.true.114:                                    ; preds = %cond.false.109
  %75 = load i8*, i8** %p, align 8
  %arrayidx115 = getelementptr inbounds i8, i8* %75, i64 0
  %76 = load i8, i8* %arrayidx115, align 1
  %conv116 = zext i8 %76 to i32
  %and117 = and i32 %conv116, 15
  %shl118 = shl i32 %and117, 12
  %77 = load i8*, i8** %p, align 8
  %arrayidx119 = getelementptr inbounds i8, i8* %77, i64 1
  %78 = load i8, i8* %arrayidx119, align 1
  %conv120 = zext i8 %78 to i32
  %and121 = and i32 %conv120, 63
  %shl122 = shl i32 %and121, 6
  %or123 = or i32 %shl118, %shl122
  %79 = load i8*, i8** %p, align 8
  %arrayidx124 = getelementptr inbounds i8, i8* %79, i64 2
  %80 = load i8, i8* %arrayidx124, align 1
  %conv125 = zext i8 %80 to i32
  %and126 = and i32 %conv125, 63
  %or127 = or i32 %or123, %and126
  br label %cond.end.130

cond.false.128:                                   ; preds = %cond.false.109
  %81 = load i8*, i8** %p, align 8
  %call129 = call i32 @string_char(i8* %81, i8** null, i32* null)
  br label %cond.end.130

cond.end.130:                                     ; preds = %cond.false.128, %cond.true.114
  %cond131 = phi i32 [ %or127, %cond.true.114 ], [ %call129, %cond.false.128 ]
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.end.130, %cond.true.96
  %cond133 = phi i32 [ %add108, %cond.true.96 ], [ %cond131, %cond.end.130 ]
  br label %cond.end.134

cond.end.134:                                     ; preds = %cond.end.132, %cond.true.88
  %cond135 = phi i32 [ %conv90, %cond.true.88 ], [ %cond133, %cond.end.132 ]
  store i32 %cond135, i32* %c, align 4
  %82 = load i8*, i8** %multibyte.addr, align 8
  %tobool136 = icmp ne i8* %82, null
  br i1 %tobool136, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %cond.end.134
  %83 = load i8*, i8** %multibyte.addr, align 8
  store i8 1, i8* %83, align 1
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.137, %cond.end.134
  br label %if.end.168

if.else:                                          ; preds = %if.end.33
  %84 = load %struct.buffer*, %struct.buffer** %inbuffer, align 8
  %text139 = getelementptr inbounds %struct.buffer, %struct.buffer* %84, i32 0, i32 73
  %85 = load %struct.buffer_text*, %struct.buffer_text** %text139, align 8
  %beg140 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %85, i32 0, i32 0
  %86 = load i8*, i8** %beg140, align 8
  %87 = load i64, i64* %pt_byte, align 8
  %add.ptr141 = getelementptr inbounds i8, i8* %86, i64 %87
  %add.ptr142 = getelementptr inbounds i8, i8* %add.ptr141, i64 -1
  %88 = load i64, i64* %pt_byte, align 8
  %89 = load %struct.buffer*, %struct.buffer** %inbuffer, align 8
  %text143 = getelementptr inbounds %struct.buffer, %struct.buffer* %89, i32 0, i32 73
  %90 = load %struct.buffer_text*, %struct.buffer_text** %text143, align 8
  %gpt_byte144 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %90, i32 0, i32 3
  %91 = load i64, i64* %gpt_byte144, align 8
  %cmp145 = icmp sge i64 %88, %91
  br i1 %cmp145, label %cond.true.147, label %cond.false.150

cond.true.147:                                    ; preds = %if.else
  %92 = load %struct.buffer*, %struct.buffer** %inbuffer, align 8
  %text148 = getelementptr inbounds %struct.buffer, %struct.buffer* %92, i32 0, i32 73
  %93 = load %struct.buffer_text*, %struct.buffer_text** %text148, align 8
  %gap_size149 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %93, i32 0, i32 5
  %94 = load i64, i64* %gap_size149, align 8
  br label %cond.end.151

cond.false.150:                                   ; preds = %if.else
  br label %cond.end.151

cond.end.151:                                     ; preds = %cond.false.150, %cond.true.147
  %cond152 = phi i64 [ %94, %cond.true.147 ], [ 0, %cond.false.150 ]
  %add.ptr153 = getelementptr inbounds i8, i8* %add.ptr142, i64 %cond152
  %95 = load i8, i8* %add.ptr153, align 1
  %conv154 = zext i8 %95 to i32
  store i32 %conv154, i32* %c, align 4
  br i1 true, label %cond.true.155, label %cond.false.159

cond.true.155:                                    ; preds = %cond.end.151
  %96 = load i32, i32* %c, align 4
  %add156 = add i32 %96, 0
  %cmp157 = icmp ult i32 %add156, 128
  br i1 %cmp157, label %if.end.166, label %if.then.164

cond.false.159:                                   ; preds = %cond.end.151
  %97 = load i32, i32* %c, align 4
  %conv160 = sext i32 %97 to i64
  %add161 = add i64 %conv160, 0
  %cmp162 = icmp ult i64 %add161, 128
  br i1 %cmp162, label %if.end.166, label %if.then.164

if.then.164:                                      ; preds = %cond.false.159, %cond.true.155
  %98 = load i32, i32* %c, align 4
  %add165 = add nsw i32 %98, 4194048
  store i32 %add165, i32* %c, align 4
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.164, %cond.false.159, %cond.true.155
  %99 = load i64, i64* %pt_byte, align 8
  %inc167 = add nsw i64 %99, 1
  store i64 %inc167, i64* %pt_byte, align 8
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.166, %if.end.138
  %100 = load %struct.buffer*, %struct.buffer** %inbuffer, align 8
  %101 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp169 = icmp eq %struct.buffer* %100, %101
  br i1 %cmp169, label %cond.true.171, label %cond.false.173

cond.true.171:                                    ; preds = %if.end.168
  %102 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %102, i32 0, i32 75
  %103 = load i64, i64* %pt, align 8
  %add172 = add nsw i64 %103, 0
  br label %cond.end.185

cond.false.173:                                   ; preds = %if.end.168
  %104 = load %struct.buffer*, %struct.buffer** %inbuffer, align 8
  %pt_marker_174 = getelementptr inbounds %struct.buffer, %struct.buffer* %104, i32 0, i32 45
  %105 = load i64, i64* %pt_marker_174, align 8
  %call175 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp176 = icmp eq i64 %105, %call175
  br i1 %cmp176, label %cond.true.178, label %cond.false.180

cond.true.178:                                    ; preds = %cond.false.173
  %106 = load %struct.buffer*, %struct.buffer** %inbuffer, align 8
  %pt179 = getelementptr inbounds %struct.buffer, %struct.buffer* %106, i32 0, i32 75
  %107 = load i64, i64* %pt179, align 8
  br label %cond.end.183

cond.false.180:                                   ; preds = %cond.false.173
  %108 = load %struct.buffer*, %struct.buffer** %inbuffer, align 8
  %pt_marker_181 = getelementptr inbounds %struct.buffer, %struct.buffer* %108, i32 0, i32 45
  %109 = load i64, i64* %pt_marker_181, align 8
  %call182 = call i64 @marker_position(i64 %109)
  br label %cond.end.183

cond.end.183:                                     ; preds = %cond.false.180, %cond.true.178
  %cond184 = phi i64 [ %107, %cond.true.178 ], [ %call182, %cond.false.180 ]
  br label %cond.end.185

cond.end.185:                                     ; preds = %cond.end.183, %cond.true.171
  %cond186 = phi i64 [ %add172, %cond.true.171 ], [ %cond184, %cond.end.183 ]
  %add187 = add nsw i64 %cond186, 1
  %110 = load %struct.buffer*, %struct.buffer** %inbuffer, align 8
  %pt188 = getelementptr inbounds %struct.buffer, %struct.buffer* %110, i32 0, i32 75
  store i64 %add187, i64* %pt188, align 8
  %111 = load i64, i64* %pt_byte, align 8
  %112 = load %struct.buffer*, %struct.buffer** %inbuffer, align 8
  %pt_byte189 = getelementptr inbounds %struct.buffer, %struct.buffer* %112, i32 0, i32 76
  store i64 %111, i64* %pt_byte189, align 8
  %113 = load i32, i32* %c, align 4
  store i32 %113, i32* %retval
  br label %return

if.end.190:                                       ; preds = %if.end
  %114 = load i64, i64* %readcharfun.addr, align 8
  %and191 = and i64 %114, 7
  %conv192 = trunc i64 %and191 to i32
  %cmp193 = icmp eq i32 %conv192, 1
  br i1 %cmp193, label %land.lhs.true, label %if.end.383

land.lhs.true:                                    ; preds = %if.end.190
  %115 = load i64, i64* %readcharfun.addr, align 8
  %call195 = call i32 @XMISCTYPE(i64 %115)
  %cmp196 = icmp eq i32 %call195, 24236
  br i1 %cmp196, label %if.then.198, label %if.end.383

if.then.198:                                      ; preds = %land.lhs.true
  %116 = load i64, i64* %readcharfun.addr, align 8
  %call200 = call %struct.Lisp_Marker* @XMARKER(i64 %116)
  %buffer = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call200, i32 0, i32 1
  %117 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  store %struct.buffer* %117, %struct.buffer** %inbuffer199, align 8
  %118 = load i64, i64* %readcharfun.addr, align 8
  %call201 = call i64 @marker_byte_position(i64 %118)
  store i64 %call201, i64* %bytepos, align 8
  %119 = load i64, i64* %bytepos, align 8
  %120 = load %struct.buffer*, %struct.buffer** %inbuffer199, align 8
  %121 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp202 = icmp eq %struct.buffer* %120, %121
  br i1 %cmp202, label %cond.true.204, label %cond.false.206

cond.true.204:                                    ; preds = %if.then.198
  %122 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte205 = getelementptr inbounds %struct.buffer, %struct.buffer* %122, i32 0, i32 80
  %123 = load i64, i64* %zv_byte205, align 8
  br label %cond.end.218

cond.false.206:                                   ; preds = %if.then.198
  %124 = load %struct.buffer*, %struct.buffer** %inbuffer199, align 8
  %zv_marker_207 = getelementptr inbounds %struct.buffer, %struct.buffer* %124, i32 0, i32 47
  %125 = load i64, i64* %zv_marker_207, align 8
  %call208 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp209 = icmp eq i64 %125, %call208
  br i1 %cmp209, label %cond.true.211, label %cond.false.213

cond.true.211:                                    ; preds = %cond.false.206
  %126 = load %struct.buffer*, %struct.buffer** %inbuffer199, align 8
  %zv_byte212 = getelementptr inbounds %struct.buffer, %struct.buffer* %126, i32 0, i32 80
  %127 = load i64, i64* %zv_byte212, align 8
  br label %cond.end.216

cond.false.213:                                   ; preds = %cond.false.206
  %128 = load %struct.buffer*, %struct.buffer** %inbuffer199, align 8
  %zv_marker_214 = getelementptr inbounds %struct.buffer, %struct.buffer* %128, i32 0, i32 47
  %129 = load i64, i64* %zv_marker_214, align 8
  %call215 = call i64 @marker_byte_position(i64 %129)
  br label %cond.end.216

cond.end.216:                                     ; preds = %cond.false.213, %cond.true.211
  %cond217 = phi i64 [ %127, %cond.true.211 ], [ %call215, %cond.false.213 ]
  br label %cond.end.218

cond.end.218:                                     ; preds = %cond.end.216, %cond.true.204
  %cond219 = phi i64 [ %123, %cond.true.204 ], [ %cond217, %cond.end.216 ]
  %cmp220 = icmp sge i64 %119, %cond219
  br i1 %cmp220, label %if.then.222, label %if.end.223

if.then.222:                                      ; preds = %cond.end.218
  store i32 -1, i32* %retval
  br label %return

if.end.223:                                       ; preds = %cond.end.218
  %130 = load %struct.buffer*, %struct.buffer** %inbuffer199, align 8
  %enable_multibyte_characters_224 = getelementptr inbounds %struct.buffer, %struct.buffer* %130, i32 0, i32 39
  %131 = load i64, i64* %enable_multibyte_characters_224, align 8
  %call225 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp226 = icmp eq i64 %131, %call225
  br i1 %cmp226, label %if.else.348, label %if.then.228

if.then.228:                                      ; preds = %if.end.223
  %132 = load %struct.buffer*, %struct.buffer** %inbuffer199, align 8
  %text230 = getelementptr inbounds %struct.buffer, %struct.buffer* %132, i32 0, i32 73
  %133 = load %struct.buffer_text*, %struct.buffer_text** %text230, align 8
  %beg231 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %133, i32 0, i32 0
  %134 = load i8*, i8** %beg231, align 8
  %135 = load i64, i64* %bytepos, align 8
  %add.ptr232 = getelementptr inbounds i8, i8* %134, i64 %135
  %add.ptr233 = getelementptr inbounds i8, i8* %add.ptr232, i64 -1
  %136 = load i64, i64* %bytepos, align 8
  %137 = load %struct.buffer*, %struct.buffer** %inbuffer199, align 8
  %text234 = getelementptr inbounds %struct.buffer, %struct.buffer* %137, i32 0, i32 73
  %138 = load %struct.buffer_text*, %struct.buffer_text** %text234, align 8
  %gpt_byte235 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %138, i32 0, i32 3
  %139 = load i64, i64* %gpt_byte235, align 8
  %cmp236 = icmp sge i64 %136, %139
  br i1 %cmp236, label %cond.true.238, label %cond.false.241

cond.true.238:                                    ; preds = %if.then.228
  %140 = load %struct.buffer*, %struct.buffer** %inbuffer199, align 8
  %text239 = getelementptr inbounds %struct.buffer, %struct.buffer* %140, i32 0, i32 73
  %141 = load %struct.buffer_text*, %struct.buffer_text** %text239, align 8
  %gap_size240 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %141, i32 0, i32 5
  %142 = load i64, i64* %gap_size240, align 8
  br label %cond.end.242

cond.false.241:                                   ; preds = %if.then.228
  br label %cond.end.242

cond.end.242:                                     ; preds = %cond.false.241, %cond.true.238
  %cond243 = phi i64 [ %142, %cond.true.238 ], [ 0, %cond.false.241 ]
  %add.ptr244 = getelementptr inbounds i8, i8* %add.ptr233, i64 %cond243
  store i8* %add.ptr244, i8** %p229, align 8
  br label %do.body.245

do.body.245:                                      ; preds = %cond.end.242
  %143 = load %struct.buffer*, %struct.buffer** %inbuffer199, align 8
  %text247 = getelementptr inbounds %struct.buffer, %struct.buffer* %143, i32 0, i32 73
  %144 = load %struct.buffer_text*, %struct.buffer_text** %text247, align 8
  %beg248 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %144, i32 0, i32 0
  %145 = load i8*, i8** %beg248, align 8
  %146 = load i64, i64* %bytepos, align 8
  %add.ptr249 = getelementptr inbounds i8, i8* %145, i64 %146
  %add.ptr250 = getelementptr inbounds i8, i8* %add.ptr249, i64 -1
  %147 = load i64, i64* %bytepos, align 8
  %148 = load %struct.buffer*, %struct.buffer** %inbuffer199, align 8
  %text251 = getelementptr inbounds %struct.buffer, %struct.buffer* %148, i32 0, i32 73
  %149 = load %struct.buffer_text*, %struct.buffer_text** %text251, align 8
  %gpt_byte252 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %149, i32 0, i32 3
  %150 = load i64, i64* %gpt_byte252, align 8
  %cmp253 = icmp sge i64 %147, %150
  br i1 %cmp253, label %cond.true.255, label %cond.false.258

cond.true.255:                                    ; preds = %do.body.245
  %151 = load %struct.buffer*, %struct.buffer** %inbuffer199, align 8
  %text256 = getelementptr inbounds %struct.buffer, %struct.buffer* %151, i32 0, i32 73
  %152 = load %struct.buffer_text*, %struct.buffer_text** %text256, align 8
  %gap_size257 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %152, i32 0, i32 5
  %153 = load i64, i64* %gap_size257, align 8
  br label %cond.end.259

cond.false.258:                                   ; preds = %do.body.245
  br label %cond.end.259

cond.end.259:                                     ; preds = %cond.false.258, %cond.true.255
  %cond260 = phi i64 [ %153, %cond.true.255 ], [ 0, %cond.false.258 ]
  %add.ptr261 = getelementptr inbounds i8, i8* %add.ptr250, i64 %cond260
  store i8* %add.ptr261, i8** %chp246, align 8
  %154 = load i8*, i8** %chp246, align 8
  %155 = load i8, i8* %154, align 1
  %conv262 = zext i8 %155 to i32
  %and263 = and i32 %conv262, 128
  %tobool264 = icmp ne i32 %and263, 0
  br i1 %tobool264, label %cond.false.266, label %cond.true.265

cond.true.265:                                    ; preds = %cond.end.259
  br label %cond.end.286

cond.false.266:                                   ; preds = %cond.end.259
  %156 = load i8*, i8** %chp246, align 8
  %157 = load i8, i8* %156, align 1
  %conv267 = zext i8 %157 to i32
  %and268 = and i32 %conv267, 32
  %tobool269 = icmp ne i32 %and268, 0
  br i1 %tobool269, label %cond.false.271, label %cond.true.270

cond.true.270:                                    ; preds = %cond.false.266
  br label %cond.end.284

cond.false.271:                                   ; preds = %cond.false.266
  %158 = load i8*, i8** %chp246, align 8
  %159 = load i8, i8* %158, align 1
  %conv272 = zext i8 %159 to i32
  %and273 = and i32 %conv272, 16
  %tobool274 = icmp ne i32 %and273, 0
  br i1 %tobool274, label %cond.false.276, label %cond.true.275

cond.true.275:                                    ; preds = %cond.false.271
  br label %cond.end.282

cond.false.276:                                   ; preds = %cond.false.271
  %160 = load i8*, i8** %chp246, align 8
  %161 = load i8, i8* %160, align 1
  %conv277 = zext i8 %161 to i32
  %and278 = and i32 %conv277, 8
  %tobool279 = icmp ne i32 %and278, 0
  %lnot280 = xor i1 %tobool279, true
  %cond281 = select i1 %lnot280, i32 4, i32 5
  br label %cond.end.282

cond.end.282:                                     ; preds = %cond.false.276, %cond.true.275
  %cond283 = phi i32 [ 3, %cond.true.275 ], [ %cond281, %cond.false.276 ]
  br label %cond.end.284

cond.end.284:                                     ; preds = %cond.end.282, %cond.true.270
  %cond285 = phi i32 [ 2, %cond.true.270 ], [ %cond283, %cond.end.282 ]
  br label %cond.end.286

cond.end.286:                                     ; preds = %cond.end.284, %cond.true.265
  %cond287 = phi i32 [ 1, %cond.true.265 ], [ %cond285, %cond.end.284 ]
  %conv288 = sext i32 %cond287 to i64
  %162 = load i64, i64* %bytepos, align 8
  %add289 = add nsw i64 %162, %conv288
  store i64 %add289, i64* %bytepos, align 8
  br label %do.end.290

do.end.290:                                       ; preds = %cond.end.286
  %163 = load i8*, i8** %p229, align 8
  %arrayidx291 = getelementptr inbounds i8, i8* %163, i64 0
  %164 = load i8, i8* %arrayidx291, align 1
  %conv292 = zext i8 %164 to i32
  %and293 = and i32 %conv292, 128
  %tobool294 = icmp ne i32 %and293, 0
  br i1 %tobool294, label %cond.false.298, label %cond.true.295

cond.true.295:                                    ; preds = %do.end.290
  %165 = load i8*, i8** %p229, align 8
  %arrayidx296 = getelementptr inbounds i8, i8* %165, i64 0
  %166 = load i8, i8* %arrayidx296, align 1
  %conv297 = zext i8 %166 to i32
  br label %cond.end.343

cond.false.298:                                   ; preds = %do.end.290
  %167 = load i8*, i8** %p229, align 8
  %arrayidx299 = getelementptr inbounds i8, i8* %167, i64 0
  %168 = load i8, i8* %arrayidx299, align 1
  %conv300 = zext i8 %168 to i32
  %and301 = and i32 %conv300, 32
  %tobool302 = icmp ne i32 %and301, 0
  br i1 %tobool302, label %cond.false.318, label %cond.true.303

cond.true.303:                                    ; preds = %cond.false.298
  %169 = load i8*, i8** %p229, align 8
  %arrayidx304 = getelementptr inbounds i8, i8* %169, i64 0
  %170 = load i8, i8* %arrayidx304, align 1
  %conv305 = zext i8 %170 to i32
  %and306 = and i32 %conv305, 31
  %shl307 = shl i32 %and306, 6
  %171 = load i8*, i8** %p229, align 8
  %arrayidx308 = getelementptr inbounds i8, i8* %171, i64 1
  %172 = load i8, i8* %arrayidx308, align 1
  %conv309 = zext i8 %172 to i32
  %and310 = and i32 %conv309, 63
  %or311 = or i32 %shl307, %and310
  %173 = load i8*, i8** %p229, align 8
  %arrayidx312 = getelementptr inbounds i8, i8* %173, i64 0
  %174 = load i8, i8* %arrayidx312, align 1
  %conv313 = zext i8 %174 to i32
  %cmp314 = icmp slt i32 %conv313, 194
  %cond316 = select i1 %cmp314, i32 4194176, i32 0
  %add317 = add nsw i32 %or311, %cond316
  br label %cond.end.341

cond.false.318:                                   ; preds = %cond.false.298
  %175 = load i8*, i8** %p229, align 8
  %arrayidx319 = getelementptr inbounds i8, i8* %175, i64 0
  %176 = load i8, i8* %arrayidx319, align 1
  %conv320 = zext i8 %176 to i32
  %and321 = and i32 %conv320, 16
  %tobool322 = icmp ne i32 %and321, 0
  br i1 %tobool322, label %cond.false.337, label %cond.true.323

cond.true.323:                                    ; preds = %cond.false.318
  %177 = load i8*, i8** %p229, align 8
  %arrayidx324 = getelementptr inbounds i8, i8* %177, i64 0
  %178 = load i8, i8* %arrayidx324, align 1
  %conv325 = zext i8 %178 to i32
  %and326 = and i32 %conv325, 15
  %shl327 = shl i32 %and326, 12
  %179 = load i8*, i8** %p229, align 8
  %arrayidx328 = getelementptr inbounds i8, i8* %179, i64 1
  %180 = load i8, i8* %arrayidx328, align 1
  %conv329 = zext i8 %180 to i32
  %and330 = and i32 %conv329, 63
  %shl331 = shl i32 %and330, 6
  %or332 = or i32 %shl327, %shl331
  %181 = load i8*, i8** %p229, align 8
  %arrayidx333 = getelementptr inbounds i8, i8* %181, i64 2
  %182 = load i8, i8* %arrayidx333, align 1
  %conv334 = zext i8 %182 to i32
  %and335 = and i32 %conv334, 63
  %or336 = or i32 %or332, %and335
  br label %cond.end.339

cond.false.337:                                   ; preds = %cond.false.318
  %183 = load i8*, i8** %p229, align 8
  %call338 = call i32 @string_char(i8* %183, i8** null, i32* null)
  br label %cond.end.339

cond.end.339:                                     ; preds = %cond.false.337, %cond.true.323
  %cond340 = phi i32 [ %or336, %cond.true.323 ], [ %call338, %cond.false.337 ]
  br label %cond.end.341

cond.end.341:                                     ; preds = %cond.end.339, %cond.true.303
  %cond342 = phi i32 [ %add317, %cond.true.303 ], [ %cond340, %cond.end.339 ]
  br label %cond.end.343

cond.end.343:                                     ; preds = %cond.end.341, %cond.true.295
  %cond344 = phi i32 [ %conv297, %cond.true.295 ], [ %cond342, %cond.end.341 ]
  store i32 %cond344, i32* %c, align 4
  %184 = load i8*, i8** %multibyte.addr, align 8
  %tobool345 = icmp ne i8* %184, null
  br i1 %tobool345, label %if.then.346, label %if.end.347

if.then.346:                                      ; preds = %cond.end.343
  %185 = load i8*, i8** %multibyte.addr, align 8
  store i8 1, i8* %185, align 1
  br label %if.end.347

if.end.347:                                       ; preds = %if.then.346, %cond.end.343
  br label %if.end.378

if.else.348:                                      ; preds = %if.end.223
  %186 = load %struct.buffer*, %struct.buffer** %inbuffer199, align 8
  %text349 = getelementptr inbounds %struct.buffer, %struct.buffer* %186, i32 0, i32 73
  %187 = load %struct.buffer_text*, %struct.buffer_text** %text349, align 8
  %beg350 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %187, i32 0, i32 0
  %188 = load i8*, i8** %beg350, align 8
  %189 = load i64, i64* %bytepos, align 8
  %add.ptr351 = getelementptr inbounds i8, i8* %188, i64 %189
  %add.ptr352 = getelementptr inbounds i8, i8* %add.ptr351, i64 -1
  %190 = load i64, i64* %bytepos, align 8
  %191 = load %struct.buffer*, %struct.buffer** %inbuffer199, align 8
  %text353 = getelementptr inbounds %struct.buffer, %struct.buffer* %191, i32 0, i32 73
  %192 = load %struct.buffer_text*, %struct.buffer_text** %text353, align 8
  %gpt_byte354 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %192, i32 0, i32 3
  %193 = load i64, i64* %gpt_byte354, align 8
  %cmp355 = icmp sge i64 %190, %193
  br i1 %cmp355, label %cond.true.357, label %cond.false.360

cond.true.357:                                    ; preds = %if.else.348
  %194 = load %struct.buffer*, %struct.buffer** %inbuffer199, align 8
  %text358 = getelementptr inbounds %struct.buffer, %struct.buffer* %194, i32 0, i32 73
  %195 = load %struct.buffer_text*, %struct.buffer_text** %text358, align 8
  %gap_size359 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %195, i32 0, i32 5
  %196 = load i64, i64* %gap_size359, align 8
  br label %cond.end.361

cond.false.360:                                   ; preds = %if.else.348
  br label %cond.end.361

cond.end.361:                                     ; preds = %cond.false.360, %cond.true.357
  %cond362 = phi i64 [ %196, %cond.true.357 ], [ 0, %cond.false.360 ]
  %add.ptr363 = getelementptr inbounds i8, i8* %add.ptr352, i64 %cond362
  %197 = load i8, i8* %add.ptr363, align 1
  %conv364 = zext i8 %197 to i32
  store i32 %conv364, i32* %c, align 4
  br i1 true, label %cond.true.365, label %cond.false.369

cond.true.365:                                    ; preds = %cond.end.361
  %198 = load i32, i32* %c, align 4
  %add366 = add i32 %198, 0
  %cmp367 = icmp ult i32 %add366, 128
  br i1 %cmp367, label %if.end.376, label %if.then.374

cond.false.369:                                   ; preds = %cond.end.361
  %199 = load i32, i32* %c, align 4
  %conv370 = sext i32 %199 to i64
  %add371 = add i64 %conv370, 0
  %cmp372 = icmp ult i64 %add371, 128
  br i1 %cmp372, label %if.end.376, label %if.then.374

if.then.374:                                      ; preds = %cond.false.369, %cond.true.365
  %200 = load i32, i32* %c, align 4
  %add375 = add nsw i32 %200, 4194048
  store i32 %add375, i32* %c, align 4
  br label %if.end.376

if.end.376:                                       ; preds = %if.then.374, %cond.false.369, %cond.true.365
  %201 = load i64, i64* %bytepos, align 8
  %inc377 = add nsw i64 %201, 1
  store i64 %inc377, i64* %bytepos, align 8
  br label %if.end.378

if.end.378:                                       ; preds = %if.end.376, %if.end.347
  %202 = load i64, i64* %bytepos, align 8
  %203 = load i64, i64* %readcharfun.addr, align 8
  %call379 = call %struct.Lisp_Marker* @XMARKER(i64 %203)
  %bytepos380 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call379, i32 0, i32 4
  store i64 %202, i64* %bytepos380, align 8
  %204 = load i64, i64* %readcharfun.addr, align 8
  %call381 = call %struct.Lisp_Marker* @XMARKER(i64 %204)
  %charpos = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call381, i32 0, i32 3
  %205 = load i64, i64* %charpos, align 8
  %inc382 = add nsw i64 %205, 1
  store i64 %inc382, i64* %charpos, align 8
  %206 = load i32, i32* %c, align 4
  store i32 %206, i32* %retval
  br label %return

if.end.383:                                       ; preds = %land.lhs.true, %if.end.190
  %207 = load i64, i64* %readcharfun.addr, align 8
  %call384 = call i64 @builtin_lisp_symbol(i32 598)
  %cmp385 = icmp eq i64 %207, %call384
  br i1 %cmp385, label %if.then.387, label %if.end.388

if.then.387:                                      ; preds = %if.end.383
  store i32 (i32, i64)* @readbyte_for_lambda, i32 (i32, i64)** %readbyte, align 8
  br label %read_multibyte

if.end.388:                                       ; preds = %if.end.383
  %208 = load i64, i64* %readcharfun.addr, align 8
  %call389 = call i64 @builtin_lisp_symbol(i32 486)
  %cmp390 = icmp eq i64 %208, %call389
  br i1 %cmp390, label %if.then.392, label %if.end.393

if.then.392:                                      ; preds = %if.end.388
  store i32 (i32, i64)* @readbyte_from_file, i32 (i32, i64)** %readbyte, align 8
  br label %read_multibyte

if.end.393:                                       ; preds = %if.end.388
  %209 = load i64, i64* %readcharfun.addr, align 8
  %call394 = call zeroext i1 @STRINGP(i64 %209)
  br i1 %call394, label %if.then.395, label %if.end.473

if.then.395:                                      ; preds = %if.end.393
  %210 = load i64, i64* @read_from_string_index, align 8
  %211 = load i64, i64* @read_from_string_limit, align 8
  %cmp396 = icmp sge i64 %210, %211
  br i1 %cmp396, label %if.then.398, label %if.else.399

if.then.398:                                      ; preds = %if.then.395
  store i32 -1, i32* %c, align 4
  br label %if.end.472

if.else.399:                                      ; preds = %if.then.395
  %212 = load i64, i64* %readcharfun.addr, align 8
  %call400 = call zeroext i1 @STRING_MULTIBYTE(i64 %212)
  br i1 %call400, label %if.then.401, label %if.else.466

if.then.401:                                      ; preds = %if.else.399
  %213 = load i8*, i8** %multibyte.addr, align 8
  %tobool402 = icmp ne i8* %213, null
  br i1 %tobool402, label %if.then.403, label %if.end.404

if.then.403:                                      ; preds = %if.then.401
  %214 = load i8*, i8** %multibyte.addr, align 8
  store i8 1, i8* %214, align 1
  br label %if.end.404

if.end.404:                                       ; preds = %if.then.403, %if.then.401
  br label %do.body.405

do.body.405:                                      ; preds = %if.end.404
  %215 = load i64, i64* @read_from_string_index_byte, align 8
  %216 = load i64, i64* %readcharfun.addr, align 8
  %call406 = call i8* @SDATA(i64 %216)
  %arrayidx407 = getelementptr inbounds i8, i8* %call406, i64 %215
  store i8* %arrayidx407, i8** %fetch_ptr, align 8
  %217 = load i8*, i8** %fetch_ptr, align 8
  %arrayidx408 = getelementptr inbounds i8, i8* %217, i64 0
  %218 = load i8, i8* %arrayidx408, align 1
  %conv409 = zext i8 %218 to i32
  %and410 = and i32 %conv409, 128
  %tobool411 = icmp ne i32 %and410, 0
  br i1 %tobool411, label %cond.false.415, label %cond.true.412

cond.true.412:                                    ; preds = %do.body.405
  store i32 1, i32* %fetch_len, align 4
  %219 = load i8*, i8** %fetch_ptr, align 8
  %arrayidx413 = getelementptr inbounds i8, i8* %219, i64 0
  %220 = load i8, i8* %arrayidx413, align 1
  %conv414 = zext i8 %220 to i32
  br label %cond.end.460

cond.false.415:                                   ; preds = %do.body.405
  %221 = load i8*, i8** %fetch_ptr, align 8
  %arrayidx416 = getelementptr inbounds i8, i8* %221, i64 0
  %222 = load i8, i8* %arrayidx416, align 1
  %conv417 = zext i8 %222 to i32
  %and418 = and i32 %conv417, 32
  %tobool419 = icmp ne i32 %and418, 0
  br i1 %tobool419, label %cond.false.435, label %cond.true.420

cond.true.420:                                    ; preds = %cond.false.415
  store i32 2, i32* %fetch_len, align 4
  %223 = load i8*, i8** %fetch_ptr, align 8
  %arrayidx421 = getelementptr inbounds i8, i8* %223, i64 0
  %224 = load i8, i8* %arrayidx421, align 1
  %conv422 = zext i8 %224 to i32
  %and423 = and i32 %conv422, 31
  %shl424 = shl i32 %and423, 6
  %225 = load i8*, i8** %fetch_ptr, align 8
  %arrayidx425 = getelementptr inbounds i8, i8* %225, i64 1
  %226 = load i8, i8* %arrayidx425, align 1
  %conv426 = zext i8 %226 to i32
  %and427 = and i32 %conv426, 63
  %or428 = or i32 %shl424, %and427
  %227 = load i8*, i8** %fetch_ptr, align 8
  %arrayidx429 = getelementptr inbounds i8, i8* %227, i64 0
  %228 = load i8, i8* %arrayidx429, align 1
  %conv430 = zext i8 %228 to i32
  %cmp431 = icmp slt i32 %conv430, 194
  %cond433 = select i1 %cmp431, i32 4194176, i32 0
  %add434 = add nsw i32 %or428, %cond433
  br label %cond.end.458

cond.false.435:                                   ; preds = %cond.false.415
  %229 = load i8*, i8** %fetch_ptr, align 8
  %arrayidx436 = getelementptr inbounds i8, i8* %229, i64 0
  %230 = load i8, i8* %arrayidx436, align 1
  %conv437 = zext i8 %230 to i32
  %and438 = and i32 %conv437, 16
  %tobool439 = icmp ne i32 %and438, 0
  br i1 %tobool439, label %cond.false.454, label %cond.true.440

cond.true.440:                                    ; preds = %cond.false.435
  store i32 3, i32* %fetch_len, align 4
  %231 = load i8*, i8** %fetch_ptr, align 8
  %arrayidx441 = getelementptr inbounds i8, i8* %231, i64 0
  %232 = load i8, i8* %arrayidx441, align 1
  %conv442 = zext i8 %232 to i32
  %and443 = and i32 %conv442, 15
  %shl444 = shl i32 %and443, 12
  %233 = load i8*, i8** %fetch_ptr, align 8
  %arrayidx445 = getelementptr inbounds i8, i8* %233, i64 1
  %234 = load i8, i8* %arrayidx445, align 1
  %conv446 = zext i8 %234 to i32
  %and447 = and i32 %conv446, 63
  %shl448 = shl i32 %and447, 6
  %or449 = or i32 %shl444, %shl448
  %235 = load i8*, i8** %fetch_ptr, align 8
  %arrayidx450 = getelementptr inbounds i8, i8* %235, i64 2
  %236 = load i8, i8* %arrayidx450, align 1
  %conv451 = zext i8 %236 to i32
  %and452 = and i32 %conv451, 63
  %or453 = or i32 %or449, %and452
  br label %cond.end.456

cond.false.454:                                   ; preds = %cond.false.435
  %237 = load i8*, i8** %fetch_ptr, align 8
  %call455 = call i32 @string_char(i8* %237, i8** null, i32* %fetch_len)
  br label %cond.end.456

cond.end.456:                                     ; preds = %cond.false.454, %cond.true.440
  %cond457 = phi i32 [ %or453, %cond.true.440 ], [ %call455, %cond.false.454 ]
  br label %cond.end.458

cond.end.458:                                     ; preds = %cond.end.456, %cond.true.420
  %cond459 = phi i32 [ %add434, %cond.true.420 ], [ %cond457, %cond.end.456 ]
  br label %cond.end.460

cond.end.460:                                     ; preds = %cond.end.458, %cond.true.412
  %cond461 = phi i32 [ %conv414, %cond.true.412 ], [ %cond459, %cond.end.458 ]
  store i32 %cond461, i32* %c, align 4
  %238 = load i32, i32* %fetch_len, align 4
  %conv462 = sext i32 %238 to i64
  %239 = load i64, i64* @read_from_string_index_byte, align 8
  %add463 = add nsw i64 %239, %conv462
  store i64 %add463, i64* @read_from_string_index_byte, align 8
  %240 = load i64, i64* @read_from_string_index, align 8
  %inc464 = add nsw i64 %240, 1
  store i64 %inc464, i64* @read_from_string_index, align 8
  br label %do.end.465

do.end.465:                                       ; preds = %cond.end.460
  br label %if.end.471

if.else.466:                                      ; preds = %if.else.399
  %241 = load i64, i64* %readcharfun.addr, align 8
  %242 = load i64, i64* @read_from_string_index_byte, align 8
  %call467 = call zeroext i8 @SREF(i64 %241, i64 %242)
  %conv468 = zext i8 %call467 to i32
  store i32 %conv468, i32* %c, align 4
  %243 = load i64, i64* @read_from_string_index, align 8
  %inc469 = add nsw i64 %243, 1
  store i64 %inc469, i64* @read_from_string_index, align 8
  %244 = load i64, i64* @read_from_string_index_byte, align 8
  %inc470 = add nsw i64 %244, 1
  store i64 %inc470, i64* @read_from_string_index_byte, align 8
  br label %if.end.471

if.end.471:                                       ; preds = %if.else.466, %do.end.465
  br label %if.end.472

if.end.472:                                       ; preds = %if.end.471, %if.then.398
  %245 = load i32, i32* %c, align 4
  store i32 %245, i32* %retval
  br label %return

if.end.473:                                       ; preds = %if.end.393
  %246 = load i64, i64* %readcharfun.addr, align 8
  %and474 = and i64 %246, 7
  %conv475 = trunc i64 %and474 to i32
  %cmp476 = icmp eq i32 %conv475, 3
  br i1 %cmp476, label %land.lhs.true.478, label %if.end.488

land.lhs.true.478:                                ; preds = %if.end.473
  %247 = load i64, i64* %readcharfun.addr, align 8
  %sub = sub nsw i64 %247, 3
  %248 = inttoptr i64 %sub to i8*
  %249 = bitcast i8* %248 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %249, i32 0, i32 0
  %250 = load i64, i64* %car, align 8
  %call479 = call zeroext i1 @STRINGP(i64 %250)
  br i1 %call479, label %if.then.481, label %if.end.488

if.then.481:                                      ; preds = %land.lhs.true.478
  store i32 (i32, i64)* @readbyte_from_string, i32 (i32, i64)** %readbyte, align 8
  %251 = load i64, i64* %readcharfun.addr, align 8
  %sub482 = sub nsw i64 %251, 3
  %252 = inttoptr i64 %sub482 to i8*
  %253 = bitcast i8* %252 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %253, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %254 = load i64, i64* %cdr, align 8
  %call483 = call i64 @builtin_lisp_symbol(i32 484)
  %cmp484 = icmp eq i64 %254, %call483
  br i1 %cmp484, label %if.then.486, label %if.end.487

if.then.486:                                      ; preds = %if.then.481
  store i8 1, i8* %emacs_mule_encoding, align 1
  br label %if.end.487

if.end.487:                                       ; preds = %if.then.486, %if.then.481
  br label %read_multibyte

if.end.488:                                       ; preds = %land.lhs.true.478, %if.end.473
  %255 = load i64, i64* %readcharfun.addr, align 8
  %call489 = call i64 @builtin_lisp_symbol(i32 484)
  %cmp490 = icmp eq i64 %255, %call489
  br i1 %cmp490, label %if.then.492, label %if.end.493

if.then.492:                                      ; preds = %if.end.488
  store i32 (i32, i64)* @readbyte_from_file, i32 (i32, i64)** %readbyte, align 8
  store i8 1, i8* %emacs_mule_encoding, align 1
  br label %read_multibyte

if.end.493:                                       ; preds = %if.end.488
  %256 = load i64, i64* %readcharfun.addr, align 8
  %call494 = call i64 @call0(i64 %256)
  store i64 %call494, i64* %tem, align 8
  %257 = load i64, i64* %tem, align 8
  %call495 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp496 = icmp eq i64 %257, %call495
  br i1 %cmp496, label %if.then.498, label %if.end.499

if.then.498:                                      ; preds = %if.end.493
  store i32 -1, i32* %retval
  br label %return

if.end.499:                                       ; preds = %if.end.493
  %258 = load i64, i64* %tem, align 8
  %shr = ashr i64 %258, 2
  %conv500 = trunc i64 %shr to i32
  store i32 %conv500, i32* %retval
  br label %return

read_multibyte:                                   ; preds = %if.then.492, %if.end.487, %if.then.392, %if.then.387
  %259 = load i32, i32* @unread_char, align 4
  %cmp501 = icmp sge i32 %259, 0
  br i1 %cmp501, label %if.then.503, label %if.end.504

if.then.503:                                      ; preds = %read_multibyte
  %260 = load i32, i32* @unread_char, align 4
  store i32 %260, i32* %c, align 4
  store i32 -1, i32* @unread_char, align 4
  %261 = load i32, i32* %c, align 4
  store i32 %261, i32* %retval
  br label %return

if.end.504:                                       ; preds = %read_multibyte
  %262 = load i32 (i32, i64)*, i32 (i32, i64)** %readbyte, align 8
  %263 = load i64, i64* %readcharfun.addr, align 8
  %call505 = call i32 %262(i32 -1, i64 %263)
  store i32 %call505, i32* %c, align 4
  %264 = load i32, i32* %c, align 4
  %cmp506 = icmp slt i32 %264, 0
  br i1 %cmp506, label %if.then.508, label %if.end.509

if.then.508:                                      ; preds = %if.end.504
  %265 = load i32, i32* %c, align 4
  store i32 %265, i32* %retval
  br label %return

if.end.509:                                       ; preds = %if.end.504
  %266 = load i8*, i8** %multibyte.addr, align 8
  %tobool510 = icmp ne i8* %266, null
  br i1 %tobool510, label %if.then.511, label %if.end.512

if.then.511:                                      ; preds = %if.end.509
  %267 = load i8*, i8** %multibyte.addr, align 8
  store i8 1, i8* %267, align 1
  br label %if.end.512

if.end.512:                                       ; preds = %if.then.511, %if.end.509
  br i1 true, label %cond.true.513, label %cond.false.517

cond.true.513:                                    ; preds = %if.end.512
  %268 = load i32, i32* %c, align 4
  %add514 = add i32 %268, 0
  %cmp515 = icmp ult i32 %add514, 128
  br i1 %cmp515, label %if.then.522, label %if.end.523

cond.false.517:                                   ; preds = %if.end.512
  %269 = load i32, i32* %c, align 4
  %conv518 = sext i32 %269 to i64
  %add519 = add i64 %conv518, 0
  %cmp520 = icmp ult i64 %add519, 128
  br i1 %cmp520, label %if.then.522, label %if.end.523

if.then.522:                                      ; preds = %cond.false.517, %cond.true.513
  %270 = load i32, i32* %c, align 4
  store i32 %270, i32* %retval
  br label %return

if.end.523:                                       ; preds = %cond.false.517, %cond.true.513
  %271 = load i8, i8* %emacs_mule_encoding, align 1
  %tobool524 = trunc i8 %271 to i1
  br i1 %tobool524, label %if.then.525, label %if.end.527

if.then.525:                                      ; preds = %if.end.523
  %272 = load i32, i32* %c, align 4
  %273 = load i32 (i32, i64)*, i32 (i32, i64)** %readbyte, align 8
  %274 = load i64, i64* %readcharfun.addr, align 8
  %call526 = call i32 @read_emacs_mule_char(i32 %272, i32 (i32, i64)* %273, i64 %274)
  store i32 %call526, i32* %retval
  br label %return

if.end.527:                                       ; preds = %if.end.523
  store i32 0, i32* %i, align 4
  %275 = load i32, i32* %c, align 4
  %conv528 = trunc i32 %275 to i8
  %276 = load i32, i32* %i, align 4
  %inc529 = add nsw i32 %276, 1
  store i32 %inc529, i32* %i, align 4
  %idxprom = sext i32 %276 to i64
  %arrayidx530 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i32 0, i64 %idxprom
  store i8 %conv528, i8* %arrayidx530, align 1
  %277 = load i32, i32* %c, align 4
  %and531 = and i32 %277, 128
  %tobool532 = icmp ne i32 %and531, 0
  br i1 %tobool532, label %cond.false.534, label %cond.true.533

cond.true.533:                                    ; preds = %if.end.527
  br label %cond.end.551

cond.false.534:                                   ; preds = %if.end.527
  %278 = load i32, i32* %c, align 4
  %and535 = and i32 %278, 32
  %tobool536 = icmp ne i32 %and535, 0
  br i1 %tobool536, label %cond.false.538, label %cond.true.537

cond.true.537:                                    ; preds = %cond.false.534
  br label %cond.end.549

cond.false.538:                                   ; preds = %cond.false.534
  %279 = load i32, i32* %c, align 4
  %and539 = and i32 %279, 16
  %tobool540 = icmp ne i32 %and539, 0
  br i1 %tobool540, label %cond.false.542, label %cond.true.541

cond.true.541:                                    ; preds = %cond.false.538
  br label %cond.end.547

cond.false.542:                                   ; preds = %cond.false.538
  %280 = load i32, i32* %c, align 4
  %and543 = and i32 %280, 8
  %tobool544 = icmp ne i32 %and543, 0
  %lnot545 = xor i1 %tobool544, true
  %cond546 = select i1 %lnot545, i32 4, i32 5
  br label %cond.end.547

cond.end.547:                                     ; preds = %cond.false.542, %cond.true.541
  %cond548 = phi i32 [ 3, %cond.true.541 ], [ %cond546, %cond.false.542 ]
  br label %cond.end.549

cond.end.549:                                     ; preds = %cond.end.547, %cond.true.537
  %cond550 = phi i32 [ 2, %cond.true.537 ], [ %cond548, %cond.end.547 ]
  br label %cond.end.551

cond.end.551:                                     ; preds = %cond.end.549, %cond.true.533
  %cond552 = phi i32 [ 1, %cond.true.533 ], [ %cond550, %cond.end.549 ]
  store i32 %cond552, i32* %len, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.573, %cond.end.551
  %281 = load i32, i32* %i, align 4
  %282 = load i32, i32* %len, align 4
  %cmp553 = icmp slt i32 %281, %282
  br i1 %cmp553, label %while.body, label %while.end.578

while.body:                                       ; preds = %while.cond
  %283 = load i32 (i32, i64)*, i32 (i32, i64)** %readbyte, align 8
  %284 = load i64, i64* %readcharfun.addr, align 8
  %call555 = call i32 %283(i32 -1, i64 %284)
  store i32 %call555, i32* %c, align 4
  %285 = load i32, i32* %c, align 4
  %cmp556 = icmp slt i32 %285, 0
  br i1 %cmp556, label %if.then.561, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %286 = load i32, i32* %c, align 4
  %and558 = and i32 %286, 192
  %cmp559 = icmp eq i32 %and558, 128
  br i1 %cmp559, label %if.end.573, label %if.then.561

if.then.561:                                      ; preds = %lor.lhs.false, %while.body
  br label %while.cond.562

while.cond.562:                                   ; preds = %while.body.565, %if.then.561
  %287 = load i32, i32* %i, align 4
  %dec = add nsw i32 %287, -1
  store i32 %dec, i32* %i, align 4
  %cmp563 = icmp sgt i32 %dec, 1
  br i1 %cmp563, label %while.body.565, label %while.end

while.body.565:                                   ; preds = %while.cond.562
  %288 = load i32 (i32, i64)*, i32 (i32, i64)** %readbyte, align 8
  %289 = load i32, i32* %i, align 4
  %idxprom566 = sext i32 %289 to i64
  %arrayidx567 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i32 0, i64 %idxprom566
  %290 = load i8, i8* %arrayidx567, align 1
  %conv568 = zext i8 %290 to i32
  %291 = load i64, i64* %readcharfun.addr, align 8
  %call569 = call i32 %288(i32 %conv568, i64 %291)
  br label %while.cond.562

while.end:                                        ; preds = %while.cond.562
  %arrayidx570 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i32 0, i64 0
  %292 = load i8, i8* %arrayidx570, align 1
  %conv571 = zext i8 %292 to i32
  %add572 = add nsw i32 %conv571, 4194048
  store i32 %add572, i32* %retval
  br label %return

if.end.573:                                       ; preds = %lor.lhs.false
  %293 = load i32, i32* %c, align 4
  %conv574 = trunc i32 %293 to i8
  %294 = load i32, i32* %i, align 4
  %inc575 = add nsw i32 %294, 1
  store i32 %inc575, i32* %i, align 4
  %idxprom576 = sext i32 %294 to i64
  %arrayidx577 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i32 0, i64 %idxprom576
  store i8 %conv574, i8* %arrayidx577, align 1
  br label %while.cond

while.end.578:                                    ; preds = %while.cond
  %arrayidx579 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i32 0, i64 0
  %295 = load i8, i8* %arrayidx579, align 1
  %conv580 = zext i8 %295 to i32
  %and581 = and i32 %conv580, 128
  %tobool582 = icmp ne i32 %and581, 0
  br i1 %tobool582, label %cond.false.586, label %cond.true.583

cond.true.583:                                    ; preds = %while.end.578
  %arrayidx584 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i32 0, i64 0
  %296 = load i8, i8* %arrayidx584, align 1
  %conv585 = zext i8 %296 to i32
  br label %cond.end.631

cond.false.586:                                   ; preds = %while.end.578
  %arrayidx587 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i32 0, i64 0
  %297 = load i8, i8* %arrayidx587, align 1
  %conv588 = zext i8 %297 to i32
  %and589 = and i32 %conv588, 32
  %tobool590 = icmp ne i32 %and589, 0
  br i1 %tobool590, label %cond.false.606, label %cond.true.591

cond.true.591:                                    ; preds = %cond.false.586
  %arrayidx592 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i32 0, i64 0
  %298 = load i8, i8* %arrayidx592, align 1
  %conv593 = zext i8 %298 to i32
  %and594 = and i32 %conv593, 31
  %shl595 = shl i32 %and594, 6
  %arrayidx596 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i32 0, i64 1
  %299 = load i8, i8* %arrayidx596, align 1
  %conv597 = zext i8 %299 to i32
  %and598 = and i32 %conv597, 63
  %or599 = or i32 %shl595, %and598
  %arrayidx600 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i32 0, i64 0
  %300 = load i8, i8* %arrayidx600, align 1
  %conv601 = zext i8 %300 to i32
  %cmp602 = icmp slt i32 %conv601, 194
  %cond604 = select i1 %cmp602, i32 4194176, i32 0
  %add605 = add nsw i32 %or599, %cond604
  br label %cond.end.629

cond.false.606:                                   ; preds = %cond.false.586
  %arrayidx607 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i32 0, i64 0
  %301 = load i8, i8* %arrayidx607, align 1
  %conv608 = zext i8 %301 to i32
  %and609 = and i32 %conv608, 16
  %tobool610 = icmp ne i32 %and609, 0
  br i1 %tobool610, label %cond.false.625, label %cond.true.611

cond.true.611:                                    ; preds = %cond.false.606
  %arrayidx612 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i32 0, i64 0
  %302 = load i8, i8* %arrayidx612, align 1
  %conv613 = zext i8 %302 to i32
  %and614 = and i32 %conv613, 15
  %shl615 = shl i32 %and614, 12
  %arrayidx616 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i32 0, i64 1
  %303 = load i8, i8* %arrayidx616, align 1
  %conv617 = zext i8 %303 to i32
  %and618 = and i32 %conv617, 63
  %shl619 = shl i32 %and618, 6
  %or620 = or i32 %shl615, %shl619
  %arrayidx621 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i32 0, i64 2
  %304 = load i8, i8* %arrayidx621, align 1
  %conv622 = zext i8 %304 to i32
  %and623 = and i32 %conv622, 63
  %or624 = or i32 %or620, %and623
  br label %cond.end.627

cond.false.625:                                   ; preds = %cond.false.606
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i32 0, i32 0
  %call626 = call i32 @string_char(i8* %arraydecay, i8** null, i32* null)
  br label %cond.end.627

cond.end.627:                                     ; preds = %cond.false.625, %cond.true.611
  %cond628 = phi i32 [ %or624, %cond.true.611 ], [ %call626, %cond.false.625 ]
  br label %cond.end.629

cond.end.629:                                     ; preds = %cond.end.627, %cond.true.591
  %cond630 = phi i32 [ %add605, %cond.true.591 ], [ %cond628, %cond.end.627 ]
  br label %cond.end.631

cond.end.631:                                     ; preds = %cond.end.629, %cond.true.583
  %cond632 = phi i32 [ %conv585, %cond.true.583 ], [ %cond630, %cond.end.629 ]
  store i32 %cond632, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.631, %while.end, %if.then.525, %if.then.522, %if.then.508, %if.then.503, %if.end.499, %if.then.498, %if.end.472, %if.end.378, %if.then.222, %cond.end.185, %if.then.32, %if.then.15
  %305 = load i32, i32* %retval
  ret i32 %305
}

; Function Attrs: nounwind uwtable
define internal void @unreadchar(i64 %readcharfun, i32 %c) #0 {
entry:
  %readcharfun.addr = alloca i64, align 8
  %c.addr = alloca i32, align 4
  %b = alloca %struct.buffer*, align 8
  %charpos = alloca i64, align 8
  %bytepos = alloca i64, align 8
  %chp = alloca i8*, align 8
  %b61 = alloca %struct.buffer*, align 8
  %bytepos63 = alloca i64, align 8
  %chp75 = alloca i8*, align 8
  store i64 %readcharfun, i64* %readcharfun.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load i64, i64* @readchar_count, align 8
  %dec = add nsw i64 %0, -1
  store i64 %dec, i64* @readchar_count, align 8
  %1 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end.149

if.else:                                          ; preds = %entry
  %2 = load i64, i64* %readcharfun.addr, align 8
  %call = call zeroext i1 @BUFFERP(i64 %2)
  br i1 %call, label %if.then.1, label %if.else.52

if.then.1:                                        ; preds = %if.else
  %3 = load i64, i64* %readcharfun.addr, align 8
  %call2 = call %struct.buffer* @XBUFFER(i64 %3)
  store %struct.buffer* %call2, %struct.buffer** %b, align 8
  %4 = load %struct.buffer*, %struct.buffer** %b, align 8
  %5 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp3 = icmp eq %struct.buffer* %4, %5
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.1
  %6 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 75
  %7 = load i64, i64* %pt, align 8
  %add = add nsw i64 %7, 0
  br label %cond.end.11

cond.false:                                       ; preds = %if.then.1
  %8 = load %struct.buffer*, %struct.buffer** %b, align 8
  %pt_marker_ = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 45
  %9 = load i64, i64* %pt_marker_, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp5 = icmp eq i64 %9, %call4
  br i1 %cmp5, label %cond.true.6, label %cond.false.8

cond.true.6:                                      ; preds = %cond.false
  %10 = load %struct.buffer*, %struct.buffer** %b, align 8
  %pt7 = getelementptr inbounds %struct.buffer, %struct.buffer* %10, i32 0, i32 75
  %11 = load i64, i64* %pt7, align 8
  br label %cond.end

cond.false.8:                                     ; preds = %cond.false
  %12 = load %struct.buffer*, %struct.buffer** %b, align 8
  %pt_marker_9 = getelementptr inbounds %struct.buffer, %struct.buffer* %12, i32 0, i32 45
  %13 = load i64, i64* %pt_marker_9, align 8
  %call10 = call i64 @marker_position(i64 %13)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.8, %cond.true.6
  %cond = phi i64 [ %11, %cond.true.6 ], [ %call10, %cond.false.8 ]
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.end, %cond.true
  %cond12 = phi i64 [ %add, %cond.true ], [ %cond, %cond.end ]
  store i64 %cond12, i64* %charpos, align 8
  %14 = load %struct.buffer*, %struct.buffer** %b, align 8
  %15 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp13 = icmp eq %struct.buffer* %14, %15
  br i1 %cmp13, label %cond.true.14, label %cond.false.16

cond.true.14:                                     ; preds = %cond.end.11
  %16 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %16, i32 0, i32 76
  %17 = load i64, i64* %pt_byte, align 8
  %add15 = add nsw i64 %17, 0
  br label %cond.end.27

cond.false.16:                                    ; preds = %cond.end.11
  %18 = load %struct.buffer*, %struct.buffer** %b, align 8
  %pt_marker_17 = getelementptr inbounds %struct.buffer, %struct.buffer* %18, i32 0, i32 45
  %19 = load i64, i64* %pt_marker_17, align 8
  %call18 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp19 = icmp eq i64 %19, %call18
  br i1 %cmp19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %cond.false.16
  %20 = load %struct.buffer*, %struct.buffer** %b, align 8
  %pt_byte21 = getelementptr inbounds %struct.buffer, %struct.buffer* %20, i32 0, i32 76
  %21 = load i64, i64* %pt_byte21, align 8
  br label %cond.end.25

cond.false.22:                                    ; preds = %cond.false.16
  %22 = load %struct.buffer*, %struct.buffer** %b, align 8
  %pt_marker_23 = getelementptr inbounds %struct.buffer, %struct.buffer* %22, i32 0, i32 45
  %23 = load i64, i64* %pt_marker_23, align 8
  %call24 = call i64 @marker_byte_position(i64 %23)
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.22, %cond.true.20
  %cond26 = phi i64 [ %21, %cond.true.20 ], [ %call24, %cond.false.22 ]
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.end.25, %cond.true.14
  %cond28 = phi i64 [ %add15, %cond.true.14 ], [ %cond26, %cond.end.25 ]
  store i64 %cond28, i64* %bytepos, align 8
  %24 = load %struct.buffer*, %struct.buffer** %b, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %24, i32 0, i32 39
  %25 = load i64, i64* %enable_multibyte_characters_, align 8
  %call29 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp30 = icmp eq i64 %25, %call29
  br i1 %cmp30, label %if.else.47, label %if.then.31

if.then.31:                                       ; preds = %cond.end.27
  br label %do.body

do.body:                                          ; preds = %if.then.31
  %26 = load i64, i64* %bytepos, align 8
  %dec32 = add nsw i64 %26, -1
  store i64 %dec32, i64* %bytepos, align 8
  %27 = load i64, i64* %bytepos, align 8
  %28 = load %struct.buffer*, %struct.buffer** %b, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %28, i32 0, i32 73
  %29 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %29, i32 0, i32 3
  %30 = load i64, i64* %gpt_byte, align 8
  %cmp33 = icmp slt i64 %27, %30
  br i1 %cmp33, label %if.then.34, label %if.else.37

if.then.34:                                       ; preds = %do.body
  %31 = load %struct.buffer*, %struct.buffer** %b, align 8
  %text35 = getelementptr inbounds %struct.buffer, %struct.buffer* %31, i32 0, i32 73
  %32 = load %struct.buffer_text*, %struct.buffer_text** %text35, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %32, i32 0, i32 0
  %33 = load i8*, i8** %beg, align 8
  %34 = load i64, i64* %bytepos, align 8
  %add.ptr = getelementptr inbounds i8, i8* %33, i64 %34
  %add.ptr36 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr36, i8** %chp, align 8
  br label %if.end

if.else.37:                                       ; preds = %do.body
  %35 = load %struct.buffer*, %struct.buffer** %b, align 8
  %text38 = getelementptr inbounds %struct.buffer, %struct.buffer* %35, i32 0, i32 73
  %36 = load %struct.buffer_text*, %struct.buffer_text** %text38, align 8
  %beg39 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %36, i32 0, i32 0
  %37 = load i8*, i8** %beg39, align 8
  %38 = load %struct.buffer*, %struct.buffer** %b, align 8
  %text40 = getelementptr inbounds %struct.buffer, %struct.buffer* %38, i32 0, i32 73
  %39 = load %struct.buffer_text*, %struct.buffer_text** %text40, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %39, i32 0, i32 5
  %40 = load i64, i64* %gap_size, align 8
  %add.ptr41 = getelementptr inbounds i8, i8* %37, i64 %40
  %41 = load i64, i64* %bytepos, align 8
  %add.ptr42 = getelementptr inbounds i8, i8* %add.ptr41, i64 %41
  %add.ptr43 = getelementptr inbounds i8, i8* %add.ptr42, i64 -1
  store i8* %add.ptr43, i8** %chp, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.37, %if.then.34
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %42 = load i8*, i8** %chp, align 8
  %43 = load i8, i8* %42, align 1
  %conv = zext i8 %43 to i32
  %and = and i32 %conv, 192
  %cmp44 = icmp ne i32 %and, 128
  %lnot = xor i1 %cmp44, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %44 = load i8*, i8** %chp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %44, i32 -1
  store i8* %incdec.ptr, i8** %chp, align 8
  %45 = load i64, i64* %bytepos, align 8
  %dec46 = add nsw i64 %45, -1
  store i64 %dec46, i64* %bytepos, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end.49

if.else.47:                                       ; preds = %cond.end.27
  %46 = load i64, i64* %bytepos, align 8
  %dec48 = add nsw i64 %46, -1
  store i64 %dec48, i64* %bytepos, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.47, %do.end
  %47 = load i64, i64* %charpos, align 8
  %sub = sub nsw i64 %47, 1
  %48 = load %struct.buffer*, %struct.buffer** %b, align 8
  %pt50 = getelementptr inbounds %struct.buffer, %struct.buffer* %48, i32 0, i32 75
  store i64 %sub, i64* %pt50, align 8
  %49 = load i64, i64* %bytepos, align 8
  %50 = load %struct.buffer*, %struct.buffer** %b, align 8
  %pt_byte51 = getelementptr inbounds %struct.buffer, %struct.buffer* %50, i32 0, i32 76
  store i64 %49, i64* %pt_byte51, align 8
  br label %if.end.148

if.else.52:                                       ; preds = %if.else
  %51 = load i64, i64* %readcharfun.addr, align 8
  %and53 = and i64 %51, 7
  %conv54 = trunc i64 %and53 to i32
  %cmp55 = icmp eq i32 %conv54, 1
  br i1 %cmp55, label %land.lhs.true, label %if.else.111

land.lhs.true:                                    ; preds = %if.else.52
  %52 = load i64, i64* %readcharfun.addr, align 8
  %call57 = call i32 @XMISCTYPE(i64 %52)
  %cmp58 = icmp eq i32 %call57, 24236
  br i1 %cmp58, label %if.then.60, label %if.else.111

if.then.60:                                       ; preds = %land.lhs.true
  %53 = load i64, i64* %readcharfun.addr, align 8
  %call62 = call %struct.Lisp_Marker* @XMARKER(i64 %53)
  %buffer = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call62, i32 0, i32 1
  %54 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  store %struct.buffer* %54, %struct.buffer** %b61, align 8
  %55 = load i64, i64* %readcharfun.addr, align 8
  %call64 = call %struct.Lisp_Marker* @XMARKER(i64 %55)
  %bytepos65 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call64, i32 0, i32 4
  %56 = load i64, i64* %bytepos65, align 8
  store i64 %56, i64* %bytepos63, align 8
  %57 = load i64, i64* %readcharfun.addr, align 8
  %call66 = call %struct.Lisp_Marker* @XMARKER(i64 %57)
  %charpos67 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call66, i32 0, i32 3
  %58 = load i64, i64* %charpos67, align 8
  %dec68 = add nsw i64 %58, -1
  store i64 %dec68, i64* %charpos67, align 8
  %59 = load %struct.buffer*, %struct.buffer** %b61, align 8
  %enable_multibyte_characters_69 = getelementptr inbounds %struct.buffer, %struct.buffer* %59, i32 0, i32 39
  %60 = load i64, i64* %enable_multibyte_characters_69, align 8
  %call70 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp71 = icmp eq i64 %60, %call70
  br i1 %cmp71, label %if.else.106, label %if.then.73

if.then.73:                                       ; preds = %if.then.60
  br label %do.body.74

do.body.74:                                       ; preds = %if.then.73
  %61 = load i64, i64* %bytepos63, align 8
  %dec76 = add nsw i64 %61, -1
  store i64 %dec76, i64* %bytepos63, align 8
  %62 = load i64, i64* %bytepos63, align 8
  %63 = load %struct.buffer*, %struct.buffer** %b61, align 8
  %text77 = getelementptr inbounds %struct.buffer, %struct.buffer* %63, i32 0, i32 73
  %64 = load %struct.buffer_text*, %struct.buffer_text** %text77, align 8
  %gpt_byte78 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %64, i32 0, i32 3
  %65 = load i64, i64* %gpt_byte78, align 8
  %cmp79 = icmp slt i64 %62, %65
  br i1 %cmp79, label %if.then.81, label %if.else.86

if.then.81:                                       ; preds = %do.body.74
  %66 = load %struct.buffer*, %struct.buffer** %b61, align 8
  %text82 = getelementptr inbounds %struct.buffer, %struct.buffer* %66, i32 0, i32 73
  %67 = load %struct.buffer_text*, %struct.buffer_text** %text82, align 8
  %beg83 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %67, i32 0, i32 0
  %68 = load i8*, i8** %beg83, align 8
  %69 = load i64, i64* %bytepos63, align 8
  %add.ptr84 = getelementptr inbounds i8, i8* %68, i64 %69
  %add.ptr85 = getelementptr inbounds i8, i8* %add.ptr84, i64 -1
  store i8* %add.ptr85, i8** %chp75, align 8
  br label %if.end.94

if.else.86:                                       ; preds = %do.body.74
  %70 = load %struct.buffer*, %struct.buffer** %b61, align 8
  %text87 = getelementptr inbounds %struct.buffer, %struct.buffer* %70, i32 0, i32 73
  %71 = load %struct.buffer_text*, %struct.buffer_text** %text87, align 8
  %beg88 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %71, i32 0, i32 0
  %72 = load i8*, i8** %beg88, align 8
  %73 = load %struct.buffer*, %struct.buffer** %b61, align 8
  %text89 = getelementptr inbounds %struct.buffer, %struct.buffer* %73, i32 0, i32 73
  %74 = load %struct.buffer_text*, %struct.buffer_text** %text89, align 8
  %gap_size90 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %74, i32 0, i32 5
  %75 = load i64, i64* %gap_size90, align 8
  %add.ptr91 = getelementptr inbounds i8, i8* %72, i64 %75
  %76 = load i64, i64* %bytepos63, align 8
  %add.ptr92 = getelementptr inbounds i8, i8* %add.ptr91, i64 %76
  %add.ptr93 = getelementptr inbounds i8, i8* %add.ptr92, i64 -1
  store i8* %add.ptr93, i8** %chp75, align 8
  br label %if.end.94

if.end.94:                                        ; preds = %if.else.86, %if.then.81
  br label %while.cond.95

while.cond.95:                                    ; preds = %while.body.101, %if.end.94
  %77 = load i8*, i8** %chp75, align 8
  %78 = load i8, i8* %77, align 1
  %conv96 = zext i8 %78 to i32
  %and97 = and i32 %conv96, 192
  %cmp98 = icmp ne i32 %and97, 128
  %lnot100 = xor i1 %cmp98, true
  br i1 %lnot100, label %while.body.101, label %while.end.104

while.body.101:                                   ; preds = %while.cond.95
  %79 = load i8*, i8** %chp75, align 8
  %incdec.ptr102 = getelementptr inbounds i8, i8* %79, i32 -1
  store i8* %incdec.ptr102, i8** %chp75, align 8
  %80 = load i64, i64* %bytepos63, align 8
  %dec103 = add nsw i64 %80, -1
  store i64 %dec103, i64* %bytepos63, align 8
  br label %while.cond.95

while.end.104:                                    ; preds = %while.cond.95
  br label %do.end.105

do.end.105:                                       ; preds = %while.end.104
  br label %if.end.108

if.else.106:                                      ; preds = %if.then.60
  %81 = load i64, i64* %bytepos63, align 8
  %dec107 = add nsw i64 %81, -1
  store i64 %dec107, i64* %bytepos63, align 8
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.106, %do.end.105
  %82 = load i64, i64* %bytepos63, align 8
  %83 = load i64, i64* %readcharfun.addr, align 8
  %call109 = call %struct.Lisp_Marker* @XMARKER(i64 %83)
  %bytepos110 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call109, i32 0, i32 4
  store i64 %82, i64* %bytepos110, align 8
  br label %if.end.147

if.else.111:                                      ; preds = %land.lhs.true, %if.else.52
  %84 = load i64, i64* %readcharfun.addr, align 8
  %call112 = call zeroext i1 @STRINGP(i64 %84)
  br i1 %call112, label %if.then.113, label %if.else.116

if.then.113:                                      ; preds = %if.else.111
  %85 = load i64, i64* @read_from_string_index, align 8
  %dec114 = add nsw i64 %85, -1
  store i64 %dec114, i64* @read_from_string_index, align 8
  %86 = load i64, i64* %readcharfun.addr, align 8
  %87 = load i64, i64* @read_from_string_index, align 8
  %call115 = call i64 @string_char_to_byte(i64 %86, i64 %87)
  store i64 %call115, i64* @read_from_string_index_byte, align 8
  br label %if.end.146

if.else.116:                                      ; preds = %if.else.111
  %88 = load i64, i64* %readcharfun.addr, align 8
  %and117 = and i64 %88, 7
  %conv118 = trunc i64 %and117 to i32
  %cmp119 = icmp eq i32 %conv118, 3
  br i1 %cmp119, label %land.lhs.true.121, label %if.else.126

land.lhs.true.121:                                ; preds = %if.else.116
  %89 = load i64, i64* %readcharfun.addr, align 8
  %sub122 = sub nsw i64 %89, 3
  %90 = inttoptr i64 %sub122 to i8*
  %91 = bitcast i8* %90 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %91, i32 0, i32 0
  %92 = load i64, i64* %car, align 8
  %call123 = call zeroext i1 @STRINGP(i64 %92)
  br i1 %call123, label %if.then.125, label %if.else.126

if.then.125:                                      ; preds = %land.lhs.true.121
  %93 = load i32, i32* %c.addr, align 4
  store i32 %93, i32* @unread_char, align 4
  br label %if.end.145

if.else.126:                                      ; preds = %land.lhs.true.121, %if.else.116
  %94 = load i64, i64* %readcharfun.addr, align 8
  %call127 = call i64 @builtin_lisp_symbol(i32 598)
  %cmp128 = icmp eq i64 %94, %call127
  br i1 %cmp128, label %if.then.130, label %if.else.131

if.then.130:                                      ; preds = %if.else.126
  %95 = load i32, i32* %c.addr, align 4
  store i32 %95, i32* @unread_char, align 4
  br label %if.end.144

if.else.131:                                      ; preds = %if.else.126
  %96 = load i64, i64* %readcharfun.addr, align 8
  %call132 = call i64 @builtin_lisp_symbol(i32 486)
  %cmp133 = icmp eq i64 %96, %call132
  br i1 %cmp133, label %if.then.138, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.131
  %97 = load i64, i64* %readcharfun.addr, align 8
  %call135 = call i64 @builtin_lisp_symbol(i32 484)
  %cmp136 = icmp eq i64 %97, %call135
  br i1 %cmp136, label %if.then.138, label %if.else.139

if.then.138:                                      ; preds = %lor.lhs.false, %if.else.131
  %98 = load i32, i32* %c.addr, align 4
  store i32 %98, i32* @unread_char, align 4
  br label %if.end.143

if.else.139:                                      ; preds = %lor.lhs.false
  %99 = load i64, i64* %readcharfun.addr, align 8
  %100 = load i32, i32* %c.addr, align 4
  %conv140 = sext i32 %100 to i64
  %shl = shl i64 %conv140, 2
  %add141 = add i64 %shl, 2
  %call142 = call i64 @call1(i64 %99, i64 %add141)
  br label %if.end.143

if.end.143:                                       ; preds = %if.else.139, %if.then.138
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %if.then.130
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %if.then.125
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %if.then.113
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %if.end.108
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %if.end.49
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %if.then
  ret void
}

declare i64 @marker_byte_position(i64) #1

declare i32 @string_char(i8*, i8**, i32*) #1

declare i32 @XMISCTYPE(i64) #1

declare %struct.Lisp_Marker* @XMARKER(i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @readbyte_for_lambda(i32 %c, i64 %readcharfun) #0 {
entry:
  %c.addr = alloca i32, align 4
  %readcharfun.addr = alloca i64, align 8
  store i32 %c, i32* %c.addr, align 4
  store i64 %readcharfun, i64* %readcharfun.addr, align 8
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp sge i32 %0, 0
  %call = call i32 @read_bytecode_char(i1 zeroext %cmp)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @readbyte_from_file(i32 %c, i64 %readcharfun) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %readcharfun.addr = alloca i64, align 8
  store i32 %c, i32* %c.addr, align 4
  store i64 %readcharfun, i64* %readcharfun.addr, align 8
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @block_input()
  %1 = load i32, i32* %c.addr, align 4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @instream, align 8
  %call = call i32 @ungetc(i32 %1, %struct._IO_FILE* %2)
  call void @unblock_input()
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  call void @block_input()
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @instream, align 8
  %call1 = call i32 @_IO_getc(%struct._IO_FILE* %3)
  store i32 %call1, i32* %c.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %do.end, %if.end
  %4 = load i32, i32* %c.addr, align 4
  %cmp2 = icmp eq i32 %4, -1
  br i1 %cmp2, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @instream, align 8
  %call3 = call i32 @ferror(%struct._IO_FILE* %5) #6
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %call4 = call i32* @__errno_location() #8
  %6 = load i32, i32* %call4, align 4
  %cmp5 = icmp eq i32 %6, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %7 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  call void @unblock_input()
  br label %do.body

do.body:                                          ; preds = %while.body
  %8 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp7 = icmp eq i64 %8, %call6
  br i1 %cmp7, label %if.else, label %land.lhs.true.8

land.lhs.true.8:                                  ; preds = %do.body
  %9 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp10 = icmp eq i64 %9, %call9
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %land.lhs.true.8
  call void @process_quit_flag()
  br label %if.end.15

if.else:                                          ; preds = %land.lhs.true.8, %do.body
  %10 = load volatile i8, i8* @pending_signals, align 1
  %tobool12 = trunc i8 %10 to i1
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.else
  call void @process_pending_signals()
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.15
  call void @block_input()
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @instream, align 8
  call void @clearerr(%struct._IO_FILE* %11) #6
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @instream, align 8
  %call16 = call i32 @_IO_getc(%struct._IO_FILE* %12)
  store i32 %call16, i32* %c.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  call void @unblock_input()
  %13 = load i32, i32* %c.addr, align 4
  %cmp17 = icmp eq i32 %13, -1
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  br label %cond.end

cond.false:                                       ; preds = %while.end
  %14 = load i32, i32* %c.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %14, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare zeroext i1 @STRINGP(i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @readbyte_from_string(i32 %c, i64 %readcharfun) #0 {
entry:
  %c.addr = alloca i32, align 4
  %readcharfun.addr = alloca i64, align 8
  %string = alloca i64, align 8
  %chp = alloca i8*, align 8
  %chlen = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i64 %readcharfun, i64* %readcharfun.addr, align 8
  %0 = load i64, i64* %readcharfun.addr, align 8
  %sub = sub nsw i64 %0, 3
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %2, i32 0, i32 0
  %3 = load i64, i64* %car, align 8
  store i64 %3, i64* %string, align 8
  %4 = load i32, i32* %c.addr, align 4
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i64, i64* @read_from_string_index, align 8
  %dec = add nsw i64 %5, -1
  store i64 %dec, i64* @read_from_string_index, align 8
  %6 = load i64, i64* %string, align 8
  %7 = load i64, i64* @read_from_string_index, align 8
  %call = call i64 @string_char_to_byte(i64 %6, i64 %7)
  store i64 %call, i64* @read_from_string_index_byte, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i64, i64* @read_from_string_index, align 8
  %9 = load i64, i64* @read_from_string_limit, align 8
  %cmp1 = icmp sge i64 %8, %9
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  store i32 -1, i32* %c.addr, align 4
  br label %if.end.57

if.else:                                          ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.else
  %10 = load i64, i64* @read_from_string_index, align 8
  %inc = add nsw i64 %10, 1
  store i64 %inc, i64* @read_from_string_index, align 8
  %11 = load i64, i64* %string, align 8
  %call3 = call zeroext i1 @STRING_MULTIBYTE(i64 %11)
  br i1 %call3, label %if.then.4, label %if.else.52

if.then.4:                                        ; preds = %do.body
  %12 = load i64, i64* @read_from_string_index_byte, align 8
  %13 = load i64, i64* %string, align 8
  %call5 = call i8* @SDATA(i64 %13)
  %arrayidx = getelementptr inbounds i8, i8* %call5, i64 %12
  store i8* %arrayidx, i8** %chp, align 8
  %14 = load i8*, i8** %chp, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %14, i64 0
  %15 = load i8, i8* %arrayidx6, align 1
  %conv = zext i8 %15 to i32
  %and = and i32 %conv, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.4
  store i32 1, i32* %chlen, align 4
  %16 = load i8*, i8** %chp, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %16, i64 0
  %17 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %17 to i32
  br label %cond.end.48

cond.false:                                       ; preds = %if.then.4
  %18 = load i8*, i8** %chp, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %18, i64 0
  %19 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %19 to i32
  %and11 = and i32 %conv10, 32
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %cond.false.24, label %cond.true.13

cond.true.13:                                     ; preds = %cond.false
  store i32 2, i32* %chlen, align 4
  %20 = load i8*, i8** %chp, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %20, i64 0
  %21 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %21 to i32
  %and16 = and i32 %conv15, 31
  %shl = shl i32 %and16, 6
  %22 = load i8*, i8** %chp, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %23 to i32
  %and19 = and i32 %conv18, 63
  %or = or i32 %shl, %and19
  %24 = load i8*, i8** %chp, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %24, i64 0
  %25 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %25 to i32
  %cmp22 = icmp slt i32 %conv21, 194
  %cond = select i1 %cmp22, i32 4194176, i32 0
  %add = add nsw i32 %or, %cond
  br label %cond.end.46

cond.false.24:                                    ; preds = %cond.false
  %26 = load i8*, i8** %chp, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %26, i64 0
  %27 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %27 to i32
  %and27 = and i32 %conv26, 16
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %cond.false.43, label %cond.true.29

cond.true.29:                                     ; preds = %cond.false.24
  store i32 3, i32* %chlen, align 4
  %28 = load i8*, i8** %chp, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %28, i64 0
  %29 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %29 to i32
  %and32 = and i32 %conv31, 15
  %shl33 = shl i32 %and32, 12
  %30 = load i8*, i8** %chp, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %30, i64 1
  %31 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %31 to i32
  %and36 = and i32 %conv35, 63
  %shl37 = shl i32 %and36, 6
  %or38 = or i32 %shl33, %shl37
  %32 = load i8*, i8** %chp, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %32, i64 2
  %33 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %33 to i32
  %and41 = and i32 %conv40, 63
  %or42 = or i32 %or38, %and41
  br label %cond.end

cond.false.43:                                    ; preds = %cond.false.24
  %34 = load i8*, i8** %chp, align 8
  %call44 = call i32 @string_char(i8* %34, i8** null, i32* %chlen)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.43, %cond.true.29
  %cond45 = phi i32 [ %or42, %cond.true.29 ], [ %call44, %cond.false.43 ]
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.end, %cond.true.13
  %cond47 = phi i32 [ %add, %cond.true.13 ], [ %cond45, %cond.end ]
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.end.46, %cond.true
  %cond49 = phi i32 [ %conv8, %cond.true ], [ %cond47, %cond.end.46 ]
  store i32 %cond49, i32* %c.addr, align 4
  %35 = load i32, i32* %chlen, align 4
  %conv50 = sext i32 %35 to i64
  %36 = load i64, i64* @read_from_string_index_byte, align 8
  %add51 = add nsw i64 %36, %conv50
  store i64 %add51, i64* @read_from_string_index_byte, align 8
  br label %if.end.56

if.else.52:                                       ; preds = %do.body
  %37 = load i64, i64* %string, align 8
  %38 = load i64, i64* @read_from_string_index_byte, align 8
  %call53 = call zeroext i8 @SREF(i64 %37, i64 %38)
  %conv54 = zext i8 %call53 to i32
  store i32 %conv54, i32* %c.addr, align 4
  %39 = load i64, i64* @read_from_string_index_byte, align 8
  %inc55 = add nsw i64 %39, 1
  store i64 %inc55, i64* @read_from_string_index_byte, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.52, %cond.end.48
  br label %do.end

do.end:                                           ; preds = %if.end.56
  br label %if.end.57

if.end.57:                                        ; preds = %do.end, %if.then.2
  %40 = load i32, i32* %c.addr, align 4
  ret i32 %40
}

declare i64 @call0(i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @read_emacs_mule_char(i32 %c, i32 (i32, i64)* %readbyte, i64 %readcharfun) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %readbyte.addr = alloca i32 (i32, i64)*, align 8
  %readcharfun.addr = alloca i64, align 8
  %buf = alloca [4 x i8], align 1
  %len = alloca i32, align 4
  %charset = alloca %struct.charset*, align 8
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 (i32, i64)* %readbyte, i32 (i32, i64)** %readbyte.addr, align 8
  store i64 %readcharfun, i64* %readcharfun.addr, align 8
  %0 = load i32, i32* %c.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @emacs_mule_bytes, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  store i32 %conv, i32* %len, align 4
  %2 = load i32, i32* %len, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %c.addr, align 4
  %add = add nsw i32 %3, 4194048
  store i32 %add, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  %4 = load i32, i32* %c.addr, align 4
  %conv2 = trunc i32 %4 to i8
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 %idxprom3
  store i8 %conv2, i8* %arrayidx4, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end.21, %if.end
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %len, align 4
  %cmp5 = icmp slt i32 %6, %7
  br i1 %cmp5, label %while.body, label %while.end.26

while.body:                                       ; preds = %while.cond
  %8 = load i32 (i32, i64)*, i32 (i32, i64)** %readbyte.addr, align 8
  %9 = load i64, i64* %readcharfun.addr, align 8
  %call = call i32 %8(i32 -1, i64 %9)
  store i32 %call, i32* %c.addr, align 4
  %10 = load i32, i32* %c.addr, align 4
  %cmp7 = icmp slt i32 %10, 160
  br i1 %cmp7, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %while.body
  br label %while.cond.10

while.cond.10:                                    ; preds = %while.body.13, %if.then.9
  %11 = load i32, i32* %i, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %i, align 4
  %cmp11 = icmp sgt i32 %dec, 1
  br i1 %cmp11, label %while.body.13, label %while.end

while.body.13:                                    ; preds = %while.cond.10
  %12 = load i32 (i32, i64)*, i32 (i32, i64)** %readbyte.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 %idxprom14
  %14 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %14 to i32
  %15 = load i64, i64* %readcharfun.addr, align 8
  %call17 = call i32 %12(i32 %conv16, i64 %15)
  br label %while.cond.10

while.end:                                        ; preds = %while.cond.10
  %arrayidx18 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 0
  %16 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %16 to i32
  %add20 = add nsw i32 %conv19, 4194048
  store i32 %add20, i32* %retval
  br label %return

if.end.21:                                        ; preds = %while.body
  %17 = load i32, i32* %c.addr, align 4
  %conv22 = trunc i32 %17 to i8
  %18 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %18, 1
  store i32 %inc23, i32* %i, align 4
  %idxprom24 = sext i32 %18 to i64
  %arrayidx25 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 %idxprom24
  store i8 %conv22, i8* %arrayidx25, align 1
  br label %while.cond

while.end.26:                                     ; preds = %while.cond
  %19 = load i32, i32* %len, align 4
  %cmp27 = icmp eq i32 %19, 2
  br i1 %cmp27, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %while.end.26
  %20 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %arrayidx30 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 0
  %21 = load i8, i8* %arrayidx30, align 1
  %idxprom31 = zext i8 %21 to i64
  %arrayidx32 = getelementptr inbounds [256 x i32], [256 x i32]* @emacs_mule_charset, i32 0, i64 %idxprom31
  %22 = load i32, i32* %arrayidx32, align 4
  %idx.ext = sext i32 %22 to i64
  %add.ptr = getelementptr inbounds %struct.charset, %struct.charset* %20, i64 %idx.ext
  store %struct.charset* %add.ptr, %struct.charset** %charset, align 8
  %arrayidx33 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 1
  %23 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %23 to i32
  %and = and i32 %conv34, 127
  store i32 %and, i32* %code, align 4
  br label %if.end.81

if.else:                                          ; preds = %while.end.26
  %24 = load i32, i32* %len, align 4
  %cmp35 = icmp eq i32 %24, 3
  br i1 %cmp35, label %if.then.37, label %if.else.67

if.then.37:                                       ; preds = %if.else
  %arrayidx38 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 0
  %25 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %25 to i32
  %cmp40 = icmp eq i32 %conv39, 154
  br i1 %cmp40, label %if.then.46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.37
  %arrayidx42 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 0
  %26 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %26 to i32
  %cmp44 = icmp eq i32 %conv43, 155
  br i1 %cmp44, label %if.then.46, label %if.else.55

if.then.46:                                       ; preds = %lor.lhs.false, %if.then.37
  %27 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %arrayidx47 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 1
  %28 = load i8, i8* %arrayidx47, align 1
  %idxprom48 = zext i8 %28 to i64
  %arrayidx49 = getelementptr inbounds [256 x i32], [256 x i32]* @emacs_mule_charset, i32 0, i64 %idxprom48
  %29 = load i32, i32* %arrayidx49, align 4
  %idx.ext50 = sext i32 %29 to i64
  %add.ptr51 = getelementptr inbounds %struct.charset, %struct.charset* %27, i64 %idx.ext50
  store %struct.charset* %add.ptr51, %struct.charset** %charset, align 8
  %arrayidx52 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 2
  %30 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %30 to i32
  %and54 = and i32 %conv53, 127
  store i32 %and54, i32* %code, align 4
  br label %if.end.66

if.else.55:                                       ; preds = %lor.lhs.false
  %31 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %arrayidx56 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 0
  %32 = load i8, i8* %arrayidx56, align 1
  %idxprom57 = zext i8 %32 to i64
  %arrayidx58 = getelementptr inbounds [256 x i32], [256 x i32]* @emacs_mule_charset, i32 0, i64 %idxprom57
  %33 = load i32, i32* %arrayidx58, align 4
  %idx.ext59 = sext i32 %33 to i64
  %add.ptr60 = getelementptr inbounds %struct.charset, %struct.charset* %31, i64 %idx.ext59
  store %struct.charset* %add.ptr60, %struct.charset** %charset, align 8
  %arrayidx61 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 1
  %34 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %34 to i32
  %shl = shl i32 %conv62, 8
  %arrayidx63 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 2
  %35 = load i8, i8* %arrayidx63, align 1
  %conv64 = zext i8 %35 to i32
  %or = or i32 %shl, %conv64
  %and65 = and i32 %or, 32639
  store i32 %and65, i32* %code, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.55, %if.then.46
  br label %if.end.80

if.else.67:                                       ; preds = %if.else
  %36 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %arrayidx68 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 1
  %37 = load i8, i8* %arrayidx68, align 1
  %idxprom69 = zext i8 %37 to i64
  %arrayidx70 = getelementptr inbounds [256 x i32], [256 x i32]* @emacs_mule_charset, i32 0, i64 %idxprom69
  %38 = load i32, i32* %arrayidx70, align 4
  %idx.ext71 = sext i32 %38 to i64
  %add.ptr72 = getelementptr inbounds %struct.charset, %struct.charset* %36, i64 %idx.ext71
  store %struct.charset* %add.ptr72, %struct.charset** %charset, align 8
  %arrayidx73 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 2
  %39 = load i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %39 to i32
  %shl75 = shl i32 %conv74, 8
  %arrayidx76 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 3
  %40 = load i8, i8* %arrayidx76, align 1
  %conv77 = zext i8 %40 to i32
  %or78 = or i32 %shl75, %conv77
  %and79 = and i32 %or78, 32639
  store i32 %and79, i32* %code, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.67, %if.end.66
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then.29
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.81
  %41 = load i32, i32* %code, align 4
  %add82 = add i32 %41, 0
  %cmp83 = icmp ult i32 %add82, 128
  br i1 %cmp83, label %land.lhs.true, label %cond.false.92

cond.false:                                       ; preds = %if.end.81
  %42 = load i32, i32* %code, align 4
  %conv85 = zext i32 %42 to i64
  %add86 = add i64 %conv85, 0
  %cmp87 = icmp ult i64 %add86, 128
  br i1 %cmp87, label %land.lhs.true, label %cond.false.92

land.lhs.true:                                    ; preds = %cond.false, %cond.true
  %43 = load %struct.charset*, %struct.charset** %charset, align 8
  %ascii_compatible_p = getelementptr inbounds %struct.charset, %struct.charset* %43, i32 0, i32 5
  %bf.load = load i8, i8* %ascii_compatible_p, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %cond.true.90, label %cond.false.92

cond.true.90:                                     ; preds = %land.lhs.true
  %44 = load i32, i32* %code, align 4
  %conv91 = zext i32 %44 to i64
  br label %cond.end.163

cond.false.92:                                    ; preds = %land.lhs.true, %cond.false, %cond.true
  %45 = load i32, i32* %code, align 4
  %46 = load %struct.charset*, %struct.charset** %charset, align 8
  %min_code = getelementptr inbounds %struct.charset, %struct.charset* %46, i32 0, i32 10
  %47 = load i32, i32* %min_code, align 4
  %cmp93 = icmp ult i32 %45, %47
  br i1 %cmp93, label %cond.true.98, label %lor.lhs.false.95

lor.lhs.false.95:                                 ; preds = %cond.false.92
  %48 = load i32, i32* %code, align 4
  %49 = load %struct.charset*, %struct.charset** %charset, align 8
  %max_code = getelementptr inbounds %struct.charset, %struct.charset* %49, i32 0, i32 11
  %50 = load i32, i32* %max_code, align 4
  %cmp96 = icmp ugt i32 %48, %50
  br i1 %cmp96, label %cond.true.98, label %cond.false.99

cond.true.98:                                     ; preds = %lor.lhs.false.95, %cond.false.92
  br label %cond.end.161

cond.false.99:                                    ; preds = %lor.lhs.false.95
  %51 = load %struct.charset*, %struct.charset** %charset, align 8
  %unified_p = getelementptr inbounds %struct.charset, %struct.charset* %51, i32 0, i32 5
  %bf.load100 = load i8, i8* %unified_p, align 8
  %bf.lshr101 = lshr i8 %bf.load100, 5
  %bf.clear102 = and i8 %bf.lshr101, 1
  %bf.cast103 = trunc i8 %bf.clear102 to i1
  br i1 %bf.cast103, label %cond.true.105, label %cond.false.108

cond.true.105:                                    ; preds = %cond.false.99
  %52 = load %struct.charset*, %struct.charset** %charset, align 8
  %53 = load i32, i32* %code, align 4
  %call106 = call i32 @decode_char(%struct.charset* %52, i32 %53)
  %conv107 = sext i32 %call106 to i64
  br label %cond.end.159

cond.false.108:                                   ; preds = %cond.false.99
  %54 = load %struct.charset*, %struct.charset** %charset, align 8
  %method = getelementptr inbounds %struct.charset, %struct.charset* %54, i32 0, i32 9
  %55 = load i32, i32* %method, align 4
  %cmp109 = icmp eq i32 %55, 0
  br i1 %cmp109, label %cond.true.111, label %cond.false.122

cond.true.111:                                    ; preds = %cond.false.108
  %56 = load %struct.charset*, %struct.charset** %charset, align 8
  %code_linear_p = getelementptr inbounds %struct.charset, %struct.charset* %56, i32 0, i32 5
  %bf.load112 = load i8, i8* %code_linear_p, align 8
  %bf.clear113 = and i8 %bf.load112, 1
  %bf.cast114 = trunc i8 %bf.clear113 to i1
  br i1 %bf.cast114, label %cond.true.116, label %cond.false.119

cond.true.116:                                    ; preds = %cond.true.111
  %57 = load i32, i32* %code, align 4
  %58 = load %struct.charset*, %struct.charset** %charset, align 8
  %min_code117 = getelementptr inbounds %struct.charset, %struct.charset* %58, i32 0, i32 10
  %59 = load i32, i32* %min_code117, align 4
  %sub = sub i32 %57, %59
  %60 = load %struct.charset*, %struct.charset** %charset, align 8
  %code_offset = getelementptr inbounds %struct.charset, %struct.charset* %60, i32 0, i32 17
  %61 = load i32, i32* %code_offset, align 4
  %add118 = add nsw i32 %sub, %61
  br label %cond.end

cond.false.119:                                   ; preds = %cond.true.111
  %62 = load %struct.charset*, %struct.charset** %charset, align 8
  %63 = load i32, i32* %code, align 4
  %call120 = call i32 @decode_char(%struct.charset* %62, i32 %63)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.119, %cond.true.116
  %cond = phi i32 [ %add118, %cond.true.116 ], [ %call120, %cond.false.119 ]
  %conv121 = sext i32 %cond to i64
  br label %cond.end.157

cond.false.122:                                   ; preds = %cond.false.108
  %64 = load %struct.charset*, %struct.charset** %charset, align 8
  %method123 = getelementptr inbounds %struct.charset, %struct.charset* %64, i32 0, i32 9
  %65 = load i32, i32* %method123, align 4
  %cmp124 = icmp eq i32 %65, 1
  br i1 %cmp124, label %cond.true.126, label %cond.false.152

cond.true.126:                                    ; preds = %cond.false.122
  %66 = load %struct.charset*, %struct.charset** %charset, align 8
  %code_linear_p127 = getelementptr inbounds %struct.charset, %struct.charset* %66, i32 0, i32 5
  %bf.load128 = load i8, i8* %code_linear_p127, align 8
  %bf.clear129 = and i8 %bf.load128, 1
  %bf.cast130 = trunc i8 %bf.clear129 to i1
  br i1 %bf.cast130, label %land.lhs.true.132, label %cond.false.147

land.lhs.true.132:                                ; preds = %cond.true.126
  %67 = load i64, i64* @Vcharset_hash_table, align 8
  %call133 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %67)
  %68 = load %struct.charset*, %struct.charset** %charset, align 8
  %hash_index = getelementptr inbounds %struct.charset, %struct.charset* %68, i32 0, i32 1
  %69 = load i64, i64* %hash_index, align 8
  %call134 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call133, i64 %69)
  %call135 = call i64 @AREF(i64 %call134, i64 4)
  %call136 = call zeroext i1 @VECTORP(i64 %call135)
  br i1 %call136, label %cond.true.138, label %cond.false.147

cond.true.138:                                    ; preds = %land.lhs.true.132
  %70 = load i64, i64* @Vcharset_hash_table, align 8
  %call139 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %70)
  %71 = load %struct.charset*, %struct.charset** %charset, align 8
  %hash_index140 = getelementptr inbounds %struct.charset, %struct.charset* %71, i32 0, i32 1
  %72 = load i64, i64* %hash_index140, align 8
  %call141 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call139, i64 %72)
  %call142 = call i64 @AREF(i64 %call141, i64 4)
  %73 = load i32, i32* %code, align 4
  %74 = load %struct.charset*, %struct.charset** %charset, align 8
  %min_code143 = getelementptr inbounds %struct.charset, %struct.charset* %74, i32 0, i32 10
  %75 = load i32, i32* %min_code143, align 4
  %sub144 = sub i32 %73, %75
  %conv145 = zext i32 %sub144 to i64
  %call146 = call i64 @AREF(i64 %call142, i64 %conv145)
  %shr = ashr i64 %call146, 2
  br label %cond.end.150

cond.false.147:                                   ; preds = %land.lhs.true.132, %cond.true.126
  %76 = load %struct.charset*, %struct.charset** %charset, align 8
  %77 = load i32, i32* %code, align 4
  %call148 = call i32 @decode_char(%struct.charset* %76, i32 %77)
  %conv149 = sext i32 %call148 to i64
  br label %cond.end.150

cond.end.150:                                     ; preds = %cond.false.147, %cond.true.138
  %cond151 = phi i64 [ %shr, %cond.true.138 ], [ %conv149, %cond.false.147 ]
  br label %cond.end.155

cond.false.152:                                   ; preds = %cond.false.122
  %78 = load %struct.charset*, %struct.charset** %charset, align 8
  %79 = load i32, i32* %code, align 4
  %call153 = call i32 @decode_char(%struct.charset* %78, i32 %79)
  %conv154 = sext i32 %call153 to i64
  br label %cond.end.155

cond.end.155:                                     ; preds = %cond.false.152, %cond.end.150
  %cond156 = phi i64 [ %cond151, %cond.end.150 ], [ %conv154, %cond.false.152 ]
  br label %cond.end.157

cond.end.157:                                     ; preds = %cond.end.155, %cond.end
  %cond158 = phi i64 [ %conv121, %cond.end ], [ %cond156, %cond.end.155 ]
  br label %cond.end.159

cond.end.159:                                     ; preds = %cond.end.157, %cond.true.105
  %cond160 = phi i64 [ %conv107, %cond.true.105 ], [ %cond158, %cond.end.157 ]
  br label %cond.end.161

cond.end.161:                                     ; preds = %cond.end.159, %cond.true.98
  %cond162 = phi i64 [ -1, %cond.true.98 ], [ %cond160, %cond.end.159 ]
  br label %cond.end.163

cond.end.163:                                     ; preds = %cond.end.161, %cond.true.90
  %cond164 = phi i64 [ %conv91, %cond.true.90 ], [ %cond162, %cond.end.161 ]
  %conv165 = trunc i64 %cond164 to i32
  store i32 %conv165, i32* %c.addr, align 4
  %80 = load i32, i32* %c.addr, align 4
  %cmp166 = icmp slt i32 %80, 0
  br i1 %cmp166, label %if.then.168, label %if.end.173

if.then.168:                                      ; preds = %cond.end.163
  %call169 = call i64 @builtin_lisp_symbol(i32 571)
  %call170 = call i64 @build_string(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.88, i32 0, i32 0))
  %call171 = call i64 @list1(i64 %call170)
  %call172 = call i64 @Fsignal(i64 %call169, i64 %call171)
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.168, %cond.end.163
  %81 = load i32, i32* %c.addr, align 4
  store i32 %81, i32* %retval
  br label %return

return:                                           ; preds = %if.end.173, %while.end, %if.then
  %82 = load i32, i32* %retval
  ret i32 %82
}

declare i32 @read_bytecode_char(i1 zeroext) #1

declare i32 @ungetc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #4

declare void @process_quit_flag() #1

declare void @process_pending_signals() #1

; Function Attrs: nounwind
declare void @clearerr(%struct._IO_FILE*) #4

declare i64 @string_char_to_byte(i64, i64) #1

declare i32 @decode_char(%struct.charset*, i32) #1

declare i64 @HASH_VALUE(%struct.Lisp_Hash_Table*, i64) #1

declare %struct.Lisp_Hash_Table* @XHASH_TABLE(i64) #1

declare i64 @Fsignal(i64, i64) #1

; Function Attrs: noreturn
declare void @emacs_abort() #3

; Function Attrs: nounwind uwtable
define internal void @readevalloop_1(i32 %old) #0 {
entry:
  %old.addr = alloca i32, align 4
  store i32 %old, i32* %old.addr, align 4
  %0 = load i32, i32* %old.addr, align 4
  %tobool = icmp ne i32 %0, 0
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 463), align 1
  ret void
}

declare i64 @find_symbol_value(i64) #1

declare i64 @Ffile_name_absolute_p(i64) #1

declare void @LOADHIST_ATTACH(i64) #1

declare void @set_buffer_internal(%struct.buffer*) #1

declare void @save_restriction_restore(i64) #1

declare i64 @save_restriction_save() #1

declare i64 @Fgoto_char(i64) #1

declare i64 @Fnarrow_to_region(i64, i64) #1

declare i64 @Fpoint_max_marker() #1

; Function Attrs: nounwind uwtable
define internal i64 @read_list(i1 zeroext %flag, i64 %readcharfun) #0 {
entry:
  %retval = alloca i64, align 8
  %flag.addr = alloca i8, align 1
  %readcharfun.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %tail = alloca i64, align 8
  %elt = alloca i64, align 8
  %tem = alloca i64, align 8
  %doc_reference = alloca i32, align 4
  %first_in_list = alloca i8, align 1
  %ch = alloca i32, align 4
  %dot_dot_lisp = alloca i64, align 8
  %.compoundliteral = alloca %union.Aligned_String, align 8
  %saved = alloca i8*, align 8
  %saved_position = alloca i64, align 8
  %pos = alloca i64, align 8
  %start = alloca i64, align 8
  %from = alloca i64, align 8
  %to = alloca i64, align 8
  %c = alloca i32, align 4
  %frombool = zext i1 %flag to i8
  store i8 %frombool, i8* %flag.addr, align 1
  store i64 %readcharfun, i64* %readcharfun.addr, align 8
  store i32 0, i32* %doc_reference, align 4
  %0 = load i8, i8* %flag.addr, align 1
  %tobool = trunc i8 %0 to i1
  %conv = zext i1 %tobool to i32
  %cmp = icmp sle i32 %conv, 0
  %frombool2 = zext i1 %cmp to i8
  store i8 %frombool2, i8* %first_in_list, align 1
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %val, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call3, i64* %tail, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.163
  %1 = load i64, i64* %readcharfun.addr, align 8
  %2 = load i8, i8* %first_in_list, align 1
  %tobool4 = trunc i8 %2 to i1
  %call5 = call i64 @read1(i64 %1, i32* %ch, i1 zeroext %tobool4)
  store i64 %call5, i64* %elt, align 8
  store i8 0, i8* %first_in_list, align 1
  %3 = load i64, i64* %elt, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 161), align 8
  %cmp6 = icmp eq i64 %3, %4
  br i1 %cmp6, label %land.lhs.true, label %if.else.23

land.lhs.true:                                    ; preds = %while.body
  %5 = load i64, i64* %elt, align 8
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp9 = icmp eq i64 %5, %call8
  br i1 %cmp9, label %if.else.23, label %land.lhs.true.11

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %6 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 240), align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp13 = icmp eq i64 %6, %call12
  br i1 %cmp13, label %if.else.23, label %if.then

if.then:                                          ; preds = %land.lhs.true.11
  %7 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 73), align 8
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp16 = icmp eq i64 %7, %call15
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.then
  store i32 1, i32* %doc_reference, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %s = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %size = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 0
  store i64 8, i64* %size, align 8
  %size_byte = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 1
  store i64 -1, i64* %size_byte, align 8
  %intervals = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals, align 8
  %data = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.91, i32 0, i32 0), i8** %data, align 8
  %s19 = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %8 = bitcast %struct.Lisp_String* %s19 to i8*
  %call20 = call i64 @make_lisp_ptr(i8* %8, i32 4)
  store i64 %call20, i64* %dot_dot_lisp, align 8
  %9 = load i64, i64* %dot_dot_lisp, align 8
  %10 = load i64, i64* %elt, align 8
  %call21 = call i64 @Ffile_name_nondirectory(i64 %10)
  %call22 = call i64 @concat2(i64 %9, i64 %call21)
  store i64 %call22, i64* %elt, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.18
  br label %if.end.35

if.else.23:                                       ; preds = %land.lhs.true.11, %land.lhs.true, %while.body
  %11 = load i64, i64* %elt, align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 161), align 8
  %cmp24 = icmp eq i64 %11, %12
  br i1 %cmp24, label %land.lhs.true.26, label %if.end.34

land.lhs.true.26:                                 ; preds = %if.else.23
  %13 = load i64, i64* %elt, align 8
  %call27 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp28 = icmp eq i64 %13, %call27
  br i1 %cmp28, label %if.end.34, label %land.lhs.true.30

land.lhs.true.30:                                 ; preds = %land.lhs.true.26
  %14 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 465), align 1
  %tobool31 = trunc i8 %14 to i1
  br i1 %tobool31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %land.lhs.true.30
  store i32 2, i32* %doc_reference, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %land.lhs.true.30, %land.lhs.true.26, %if.else.23
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end
  %15 = load i32, i32* %ch, align 4
  %tobool36 = icmp ne i32 %15, 0
  br i1 %tobool36, label %if.then.37, label %if.end.156

if.then.37:                                       ; preds = %if.end.35
  %16 = load i8, i8* %flag.addr, align 1
  %tobool38 = trunc i8 %16 to i1
  %conv39 = zext i1 %tobool38 to i32
  %cmp40 = icmp sgt i32 %conv39, 0
  br i1 %cmp40, label %if.then.42, label %if.end.47

if.then.42:                                       ; preds = %if.then.37
  %17 = load i32, i32* %ch, align 4
  %cmp43 = icmp eq i32 %17, 93
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.then.42
  %18 = load i64, i64* %val, align 8
  store i64 %18, i64* %retval
  br label %return

if.end.46:                                        ; preds = %if.then.42
  call void @invalid_syntax(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.92, i32 0, i32 0)) #9
  unreachable

if.end.47:                                        ; preds = %if.then.37
  %19 = load i32, i32* %ch, align 4
  %cmp48 = icmp eq i32 %19, 41
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.47
  %20 = load i64, i64* %val, align 8
  store i64 %20, i64* %retval
  br label %return

if.end.51:                                        ; preds = %if.end.47
  %21 = load i32, i32* %ch, align 4
  %cmp52 = icmp eq i32 %21, 46
  br i1 %cmp52, label %if.then.54, label %if.end.155

if.then.54:                                       ; preds = %if.end.51
  %22 = load i64, i64* %tail, align 8
  %call55 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp56 = icmp eq i64 %22, %call55
  br i1 %cmp56, label %if.else.60, label %if.then.58

if.then.58:                                       ; preds = %if.then.54
  %23 = load i64, i64* %tail, align 8
  %24 = load i64, i64* %readcharfun.addr, align 8
  %call59 = call i64 @read0(i64 %24)
  call void @XSETCDR(i64 %23, i64 %call59)
  br label %if.end.62

if.else.60:                                       ; preds = %if.then.54
  %25 = load i64, i64* %readcharfun.addr, align 8
  %call61 = call i64 @read0(i64 %25)
  store i64 %call61, i64* %val, align 8
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.60, %if.then.58
  %26 = load i64, i64* %readcharfun.addr, align 8
  %call63 = call i64 @read1(i64 %26, i32* %ch, i1 zeroext false)
  %27 = load i32, i32* %ch, align 4
  %cmp64 = icmp eq i32 %27, 41
  br i1 %cmp64, label %if.then.66, label %if.end.154

if.then.66:                                       ; preds = %if.end.62
  %28 = load i32, i32* %doc_reference, align 4
  %cmp67 = icmp eq i32 %28, 1
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.then.66
  store i64 2, i64* %retval
  br label %return

if.end.70:                                        ; preds = %if.then.66
  %29 = load i32, i32* %doc_reference, align 4
  %cmp71 = icmp eq i32 %29, 2
  br i1 %cmp71, label %land.lhs.true.73, label %if.end.153

land.lhs.true.73:                                 ; preds = %if.end.70
  %30 = load i64, i64* %val, align 8
  %sub = sub nsw i64 %30, 3
  %31 = inttoptr i64 %sub to i8*
  %32 = bitcast i8* %31 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %32, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %33 = load i64, i64* %cdr, align 8
  %and = and i64 %33, 7
  %conv74 = trunc i64 %and to i32
  %and75 = and i32 %conv74, -5
  %cmp76 = icmp eq i32 %and75, 2
  br i1 %cmp76, label %if.then.78, label %if.end.153

if.then.78:                                       ; preds = %land.lhs.true.73
  store i8* null, i8** %saved, align 8
  %34 = load i64, i64* %val, align 8
  %sub79 = sub nsw i64 %34, 3
  %35 = inttoptr i64 %sub79 to i8*
  %36 = bitcast i8* %35 to %struct.Lisp_Cons*
  %u80 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %36, i32 0, i32 1
  %cdr81 = bitcast %union.anon* %u80 to i64*
  %37 = load i64, i64* %cdr81, align 8
  %shr = ashr i64 %37, 2
  %cmp82 = icmp slt i64 %shr, 0
  br i1 %cmp82, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.78
  %38 = load i64, i64* %val, align 8
  %sub84 = sub nsw i64 %38, 3
  %39 = inttoptr i64 %sub84 to i8*
  %40 = bitcast i8* %39 to %struct.Lisp_Cons*
  %u85 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %40, i32 0, i32 1
  %cdr86 = bitcast %union.anon* %u85 to i64*
  %41 = load i64, i64* %cdr86, align 8
  %shr87 = ashr i64 %41, 2
  %sub88 = sub nsw i64 0, %shr87
  br label %cond.end

cond.false:                                       ; preds = %if.then.78
  %42 = load i64, i64* %val, align 8
  %sub89 = sub nsw i64 %42, 3
  %43 = inttoptr i64 %sub89 to i8*
  %44 = bitcast i8* %43 to %struct.Lisp_Cons*
  %u90 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %44, i32 0, i32 1
  %cdr91 = bitcast %union.anon* %u90 to i64*
  %45 = load i64, i64* %cdr91, align 8
  %shr92 = ashr i64 %45, 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub88, %cond.true ], [ %shr92, %cond.false ]
  store i64 %cond, i64* %pos, align 8
  %46 = load i64, i64* %pos, align 8
  %47 = load i64, i64* @saved_doc_string_position, align 8
  %cmp93 = icmp sge i64 %46, %47
  br i1 %cmp93, label %land.lhs.true.95, label %if.else.99

land.lhs.true.95:                                 ; preds = %cond.end
  %48 = load i64, i64* %pos, align 8
  %49 = load i64, i64* @saved_doc_string_position, align 8
  %50 = load i64, i64* @saved_doc_string_length, align 8
  %add = add nsw i64 %49, %50
  %cmp96 = icmp slt i64 %48, %add
  br i1 %cmp96, label %if.then.98, label %if.else.99

if.then.98:                                       ; preds = %land.lhs.true.95
  %51 = load i8*, i8** @saved_doc_string, align 8
  store i8* %51, i8** %saved, align 8
  %52 = load i64, i64* @saved_doc_string_position, align 8
  store i64 %52, i64* %saved_position, align 8
  br label %if.end.108

if.else.99:                                       ; preds = %land.lhs.true.95, %cond.end
  %53 = load i64, i64* %pos, align 8
  %54 = load i64, i64* @prev_saved_doc_string_position, align 8
  %cmp100 = icmp sge i64 %53, %54
  br i1 %cmp100, label %land.lhs.true.102, label %if.end.107

land.lhs.true.102:                                ; preds = %if.else.99
  %55 = load i64, i64* %pos, align 8
  %56 = load i64, i64* @prev_saved_doc_string_position, align 8
  %57 = load i64, i64* @prev_saved_doc_string_length, align 8
  %add103 = add nsw i64 %56, %57
  %cmp104 = icmp slt i64 %55, %add103
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %land.lhs.true.102
  %58 = load i8*, i8** @prev_saved_doc_string, align 8
  store i8* %58, i8** %saved, align 8
  %59 = load i64, i64* @prev_saved_doc_string_position, align 8
  store i64 %59, i64* %saved_position, align 8
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.106, %land.lhs.true.102, %if.else.99
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.then.98
  %60 = load i8*, i8** %saved, align 8
  %tobool109 = icmp ne i8* %60, null
  br i1 %tobool109, label %if.then.110, label %if.else.151

if.then.110:                                      ; preds = %if.end.108
  %61 = load i64, i64* %pos, align 8
  %62 = load i64, i64* %saved_position, align 8
  %sub111 = sub nsw i64 %61, %62
  store i64 %sub111, i64* %start, align 8
  %63 = load i64, i64* %start, align 8
  store i64 %63, i64* %from, align 8
  %64 = load i64, i64* %start, align 8
  store i64 %64, i64* %to, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.148, %if.then.110
  %65 = load i64, i64* %from, align 8
  %66 = load i8*, i8** %saved, align 8
  %arrayidx = getelementptr inbounds i8, i8* %66, i64 %65
  %67 = load i8, i8* %arrayidx, align 1
  %conv112 = sext i8 %67 to i32
  %cmp113 = icmp ne i32 %conv112, 31
  br i1 %cmp113, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %68 = load i64, i64* %from, align 8
  %inc = add nsw i64 %68, 1
  store i64 %inc, i64* %from, align 8
  %69 = load i8*, i8** %saved, align 8
  %arrayidx115 = getelementptr inbounds i8, i8* %69, i64 %68
  %70 = load i8, i8* %arrayidx115, align 1
  %conv116 = sext i8 %70 to i32
  store i32 %conv116, i32* %c, align 4
  %71 = load i32, i32* %c, align 4
  %cmp117 = icmp eq i32 %71, 1
  br i1 %cmp117, label %if.then.119, label %if.else.144

if.then.119:                                      ; preds = %for.body
  %72 = load i64, i64* %from, align 8
  %inc120 = add nsw i64 %72, 1
  store i64 %inc120, i64* %from, align 8
  %73 = load i8*, i8** %saved, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %73, i64 %72
  %74 = load i8, i8* %arrayidx121, align 1
  %conv122 = sext i8 %74 to i32
  store i32 %conv122, i32* %c, align 4
  %75 = load i32, i32* %c, align 4
  %cmp123 = icmp eq i32 %75, 1
  br i1 %cmp123, label %cond.true.125, label %cond.false.126

cond.true.125:                                    ; preds = %if.then.119
  %76 = load i32, i32* %c, align 4
  br label %cond.end.139

cond.false.126:                                   ; preds = %if.then.119
  %77 = load i32, i32* %c, align 4
  %cmp127 = icmp eq i32 %77, 48
  br i1 %cmp127, label %cond.true.129, label %cond.false.130

cond.true.129:                                    ; preds = %cond.false.126
  br label %cond.end.137

cond.false.130:                                   ; preds = %cond.false.126
  %78 = load i32, i32* %c, align 4
  %cmp131 = icmp eq i32 %78, 95
  br i1 %cmp131, label %cond.true.133, label %cond.false.134

cond.true.133:                                    ; preds = %cond.false.130
  br label %cond.end.135

cond.false.134:                                   ; preds = %cond.false.130
  %79 = load i32, i32* %c, align 4
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.false.134, %cond.true.133
  %cond136 = phi i32 [ 31, %cond.true.133 ], [ %79, %cond.false.134 ]
  br label %cond.end.137

cond.end.137:                                     ; preds = %cond.end.135, %cond.true.129
  %cond138 = phi i32 [ 0, %cond.true.129 ], [ %cond136, %cond.end.135 ]
  br label %cond.end.139

cond.end.139:                                     ; preds = %cond.end.137, %cond.true.125
  %cond140 = phi i32 [ %76, %cond.true.125 ], [ %cond138, %cond.end.137 ]
  %conv141 = trunc i32 %cond140 to i8
  %80 = load i64, i64* %to, align 8
  %inc142 = add nsw i64 %80, 1
  store i64 %inc142, i64* %to, align 8
  %81 = load i8*, i8** %saved, align 8
  %arrayidx143 = getelementptr inbounds i8, i8* %81, i64 %80
  store i8 %conv141, i8* %arrayidx143, align 1
  br label %if.end.148

if.else.144:                                      ; preds = %for.body
  %82 = load i32, i32* %c, align 4
  %conv145 = trunc i32 %82 to i8
  %83 = load i64, i64* %to, align 8
  %inc146 = add nsw i64 %83, 1
  store i64 %inc146, i64* %to, align 8
  %84 = load i8*, i8** %saved, align 8
  %arrayidx147 = getelementptr inbounds i8, i8* %84, i64 %83
  store i8 %conv145, i8* %arrayidx147, align 1
  br label %if.end.148

if.end.148:                                       ; preds = %if.else.144, %cond.end.139
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %85 = load i8*, i8** %saved, align 8
  %86 = load i64, i64* %start, align 8
  %add.ptr = getelementptr inbounds i8, i8* %85, i64 %86
  %87 = load i64, i64* %to, align 8
  %88 = load i64, i64* %start, align 8
  %sub149 = sub nsw i64 %87, %88
  %call150 = call i64 @make_unibyte_string(i8* %add.ptr, i64 %sub149)
  store i64 %call150, i64* %retval
  br label %return

if.else.151:                                      ; preds = %if.end.108
  %89 = load i64, i64* %val, align 8
  %call152 = call i64 @get_doc_string(i64 %89, i1 zeroext true, i1 zeroext false)
  store i64 %call152, i64* %retval
  br label %return

if.end.153:                                       ; preds = %land.lhs.true.73, %if.end.70
  %90 = load i64, i64* %val, align 8
  store i64 %90, i64* %retval
  br label %return

if.end.154:                                       ; preds = %if.end.62
  call void @invalid_syntax(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.93, i32 0, i32 0)) #9
  unreachable

if.end.155:                                       ; preds = %if.end.51
  call void @invalid_syntax(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i32 0, i32 0)) #9
  unreachable

if.end.156:                                       ; preds = %if.end.35
  %91 = load i64, i64* %elt, align 8
  %call157 = call i64 @list1(i64 %91)
  store i64 %call157, i64* %tem, align 8
  %92 = load i64, i64* %tail, align 8
  %call158 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp159 = icmp eq i64 %92, %call158
  br i1 %cmp159, label %if.else.162, label %if.then.161

if.then.161:                                      ; preds = %if.end.156
  %93 = load i64, i64* %tail, align 8
  %94 = load i64, i64* %tem, align 8
  call void @XSETCDR(i64 %93, i64 %94)
  br label %if.end.163

if.else.162:                                      ; preds = %if.end.156
  %95 = load i64, i64* %tem, align 8
  store i64 %95, i64* %val, align 8
  br label %if.end.163

if.end.163:                                       ; preds = %if.else.162, %if.then.161
  %96 = load i64, i64* %tem, align 8
  store i64 %96, i64* %tail, align 8
  br label %while.body

return:                                           ; preds = %if.end.153, %if.else.151, %for.end, %if.then.69, %if.then.50, %if.then.45
  %97 = load i64, i64* %retval
  ret i64 %97
}

declare i64 @Fpoint_marker() #1

; Function Attrs: nounwind uwtable
define internal i64 @readevalloop_eager_expand_eval(i64 %val, i64 %macroexpand) #0 {
entry:
  %val.addr = alloca i64, align 8
  %macroexpand.addr = alloca i64, align 8
  %subforms = alloca i64, align 8
  store i64 %val, i64* %val.addr, align 8
  store i64 %macroexpand, i64* %macroexpand.addr, align 8
  %0 = load i64, i64* %macroexpand.addr, align 8
  %1 = load i64, i64* %val.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %call1 = call i64 @call2(i64 %0, i64 %1, i64 %call)
  store i64 %call1, i64* %val.addr, align 8
  %2 = load i64, i64* %val.addr, align 8
  %call2 = call i64 @CAR_SAFE(i64 %2)
  %call3 = call i64 @builtin_lisp_symbol(i32 777)
  %cmp = icmp eq i64 %call2, %call3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %val.addr, align 8
  %sub = sub nsw i64 %3, 3
  %4 = inttoptr i64 %sub to i8*
  %5 = bitcast i8* %4 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %5, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %6 = load i64, i64* %cdr, align 8
  store i64 %6, i64* %subforms, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call4, i64* %val.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i64, i64* %subforms, align 8
  %and = and i64 %7, 7
  %conv = trunc i64 %and to i32
  %cmp5 = icmp eq i32 %conv, 3
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i64, i64* %subforms, align 8
  %sub7 = sub nsw i64 %8, 3
  %9 = inttoptr i64 %sub7 to i8*
  %10 = bitcast i8* %9 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %10, i32 0, i32 0
  %11 = load i64, i64* %car, align 8
  %12 = load i64, i64* %macroexpand.addr, align 8
  %call8 = call i64 @readevalloop_eager_expand_eval(i64 %11, i64 %12)
  store i64 %call8, i64* %val.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i64, i64* %subforms, align 8
  %sub9 = sub nsw i64 %13, 3
  %14 = inttoptr i64 %sub9 to i8*
  %15 = bitcast i8* %14 to %struct.Lisp_Cons*
  %u10 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %15, i32 0, i32 1
  %cdr11 = bitcast %union.anon* %u10 to i64*
  %16 = load i64, i64* %cdr11, align 8
  store i64 %16, i64* %subforms, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %17 = load i64, i64* %macroexpand.addr, align 8
  %18 = load i64, i64* %val.addr, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 901)
  %call13 = call i64 @call2(i64 %17, i64 %18, i64 %call12)
  %call14 = call i64 @eval_sub(i64 %call13)
  store i64 %call14, i64* %val.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %19 = load i64, i64* %val.addr, align 8
  ret i64 %19
}

declare i64 @eval_sub(i64) #1

declare i64 @Fprin1(i64, i64) #1

declare i64 @Fprint(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @build_load_history(i64 %filename, i1 zeroext %entire) #0 {
entry:
  %filename.addr = alloca i64, align 8
  %entire.addr = alloca i8, align 1
  %tail = alloca i64, align 8
  %prev = alloca i64, align 8
  %newelt = alloca i64, align 8
  %tem = alloca i64, align 8
  %tem2 = alloca i64, align 8
  %foundit = alloca i8, align 1
  store i64 %filename, i64* %filename.addr, align 8
  %frombool = zext i1 %entire to i8
  store i8 %frombool, i8* %entire.addr, align 1
  store i8 0, i8* %foundit, align 1
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 163), align 8
  store i64 %0, i64* %tail, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %prev, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end.75, %entry
  %1 = load i64, i64* %tail, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %while.body, label %while.end.76

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %tail, align 8
  %sub = sub nsw i64 %2, 3
  %3 = inttoptr i64 %sub to i8*
  %4 = bitcast i8* %3 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %4, i32 0, i32 0
  %5 = load i64, i64* %car, align 8
  store i64 %5, i64* %tem, align 8
  %6 = load i64, i64* %filename.addr, align 8
  %7 = load i64, i64* %tem, align 8
  %call2 = call i64 @Fcar(i64 %7)
  %call3 = call i64 @Fequal(i64 %6, i64 %call2)
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp5 = icmp eq i64 %call3, %call4
  br i1 %cmp5, label %if.else.56, label %if.then

if.then:                                          ; preds = %while.body
  store i8 1, i8* %foundit, align 1
  %8 = load i8, i8* %entire.addr, align 1
  %tobool = trunc i8 %8 to i1
  br i1 %tobool, label %if.then.7, label %if.else.17

if.then.7:                                        ; preds = %if.then
  %9 = load i64, i64* %prev, align 8
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp9 = icmp eq i64 %9, %call8
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then.7
  %10 = load i64, i64* %tail, align 8
  %sub12 = sub nsw i64 %10, 3
  %11 = inttoptr i64 %sub12 to i8*
  %12 = bitcast i8* %11 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %12, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %13 = load i64, i64* %cdr, align 8
  store i64 %13, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 163), align 8
  br label %if.end

if.else:                                          ; preds = %if.then.7
  %14 = load i64, i64* %prev, align 8
  %15 = load i64, i64* %tail, align 8
  %sub13 = sub nsw i64 %15, 3
  %16 = inttoptr i64 %sub13 to i8*
  %17 = bitcast i8* %16 to %struct.Lisp_Cons*
  %u14 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %17, i32 0, i32 1
  %cdr15 = bitcast %union.anon* %u14 to i64*
  %18 = load i64, i64* %cdr15, align 8
  %call16 = call i64 @Fsetcdr(i64 %14, i64 %18)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.11
  br label %if.end.55

if.else.17:                                       ; preds = %if.then
  %19 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 49), align 8
  store i64 %19, i64* %tem2, align 8
  br label %while.cond.18

while.cond.18:                                    ; preds = %do.end, %if.else.17
  %20 = load i64, i64* %tem2, align 8
  %and19 = and i64 %20, 7
  %conv20 = trunc i64 %and19 to i32
  %cmp21 = icmp eq i32 %conv20, 3
  br i1 %cmp21, label %while.body.23, label %while.end

while.body.23:                                    ; preds = %while.cond.18
  %21 = load i64, i64* %tem2, align 8
  %sub24 = sub nsw i64 %21, 3
  %22 = inttoptr i64 %sub24 to i8*
  %23 = bitcast i8* %22 to %struct.Lisp_Cons*
  %car25 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %23, i32 0, i32 0
  %24 = load i64, i64* %car25, align 8
  store i64 %24, i64* %newelt, align 8
  %25 = load i64, i64* %newelt, align 8
  %26 = load i64, i64* %tem, align 8
  %call26 = call i64 @Fmember(i64 %25, i64 %26)
  %call27 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp28 = icmp eq i64 %call26, %call27
  br i1 %cmp28, label %if.then.30, label %if.end.39

if.then.30:                                       ; preds = %while.body.23
  %27 = load i64, i64* %tail, align 8
  %28 = load i64, i64* %tem, align 8
  %sub31 = sub nsw i64 %28, 3
  %29 = inttoptr i64 %sub31 to i8*
  %30 = bitcast i8* %29 to %struct.Lisp_Cons*
  %car32 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %30, i32 0, i32 0
  %31 = load i64, i64* %car32, align 8
  %32 = load i64, i64* %newelt, align 8
  %33 = load i64, i64* %tem, align 8
  %sub33 = sub nsw i64 %33, 3
  %34 = inttoptr i64 %sub33 to i8*
  %35 = bitcast i8* %34 to %struct.Lisp_Cons*
  %u34 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %35, i32 0, i32 1
  %cdr35 = bitcast %union.anon* %u34 to i64*
  %36 = load i64, i64* %cdr35, align 8
  %call36 = call i64 @Fcons(i64 %32, i64 %36)
  %call37 = call i64 @Fcons(i64 %31, i64 %call36)
  %call38 = call i64 @Fsetcar(i64 %27, i64 %call37)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.30, %while.body.23
  %37 = load i64, i64* %tem2, align 8
  %sub40 = sub nsw i64 %37, 3
  %38 = inttoptr i64 %sub40 to i8*
  %39 = bitcast i8* %38 to %struct.Lisp_Cons*
  %u41 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %39, i32 0, i32 1
  %cdr42 = bitcast %union.anon* %u41 to i64*
  %40 = load i64, i64* %cdr42, align 8
  store i64 %40, i64* %tem2, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.39
  %41 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call43 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp44 = icmp eq i64 %41, %call43
  br i1 %cmp44, label %if.else.50, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body
  %42 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call46 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp47 = icmp eq i64 %42, %call46
  br i1 %cmp47, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %land.lhs.true
  call void @process_quit_flag()
  br label %if.end.54

if.else.50:                                       ; preds = %land.lhs.true, %do.body
  %43 = load volatile i8, i8* @pending_signals, align 1
  %tobool51 = trunc i8 %43 to i1
  br i1 %tobool51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.else.50
  call void @process_pending_signals()
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.else.50
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.49
  br label %do.end

do.end:                                           ; preds = %if.end.54
  br label %while.cond.18

while.end:                                        ; preds = %while.cond.18
  br label %if.end.55

if.end.55:                                        ; preds = %while.end, %if.end
  br label %if.end.57

if.else.56:                                       ; preds = %while.body
  %44 = load i64, i64* %tail, align 8
  store i64 %44, i64* %prev, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.56, %if.end.55
  %45 = load i64, i64* %tail, align 8
  %sub58 = sub nsw i64 %45, 3
  %46 = inttoptr i64 %sub58 to i8*
  %47 = bitcast i8* %46 to %struct.Lisp_Cons*
  %u59 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %47, i32 0, i32 1
  %cdr60 = bitcast %union.anon* %u59 to i64*
  %48 = load i64, i64* %cdr60, align 8
  store i64 %48, i64* %tail, align 8
  br label %do.body.61

do.body.61:                                       ; preds = %if.end.57
  %49 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call62 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp63 = icmp eq i64 %49, %call62
  br i1 %cmp63, label %if.else.70, label %land.lhs.true.65

land.lhs.true.65:                                 ; preds = %do.body.61
  %50 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call66 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp67 = icmp eq i64 %50, %call66
  br i1 %cmp67, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %land.lhs.true.65
  call void @process_quit_flag()
  br label %if.end.74

if.else.70:                                       ; preds = %land.lhs.true.65, %do.body.61
  %51 = load volatile i8, i8* @pending_signals, align 1
  %tobool71 = trunc i8 %51 to i1
  br i1 %tobool71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.else.70
  call void @process_pending_signals()
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %if.else.70
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.69
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  br label %while.cond

while.end.76:                                     ; preds = %while.cond
  %52 = load i8, i8* %entire.addr, align 1
  %tobool77 = trunc i8 %52 to i1
  br i1 %tobool77, label %if.then.80, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end.76
  %53 = load i8, i8* %foundit, align 1
  %tobool79 = trunc i8 %53 to i1
  br i1 %tobool79, label %if.end.83, label %if.then.80

if.then.80:                                       ; preds = %lor.lhs.false, %while.end.76
  %54 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 49), align 8
  %call81 = call i64 @Fnreverse(i64 %54)
  %55 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 163), align 8
  %call82 = call i64 @Fcons(i64 %call81, i64 %55)
  store i64 %call82, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 163), align 8
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.80, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @read1(i64 %readcharfun, i32* %pch, i1 zeroext %first_in_list) #0 {
entry:
  %retval = alloca i64, align 8
  %readcharfun.addr = alloca i64, align 8
  %pch.addr = alloca i32*, align 8
  %first_in_list.addr = alloca i8, align 1
  %c = alloca i32, align 4
  %uninterned_symbol = alloca i8, align 1
  %multibyte = alloca i8, align 1
  %tmp = alloca i64, align 8
  %head = alloca i64, align 8
  %data = alloca i64, align 8
  %val = alloca i64, align 8
  %params = alloca [10 x i64], align 16
  %ht = alloca i64, align 8
  %key = alloca i64, align 8
  %param_count = alloca i32, align 4
  %tmp136 = alloca i64, align 8
  %tbl = alloca i64, align 8
  %tmp153 = alloca i64, align 8
  %size156 = alloca i64, align 8
  %i = alloca i32, align 4
  %depth = alloca i32, align 4
  %min_char = alloca i32, align 4
  %cell = alloca %struct.Lisp_Cons*, align 8
  %length = alloca i64, align 8
  %tmp228 = alloca i64, align 8
  %val230 = alloca i64, align 8
  %size_in_chars = alloca i64, align 8
  %data235 = alloca i8*, align 8
  %tmp273 = alloca i64, align 8
  %vec = alloca %struct.Lisp_Vector*, align 8
  %tmp288 = alloca i64, align 8
  %ch = alloca i32, align 4
  %beg = alloca i64, align 8
  %end = alloca i64, align 8
  %plist = alloca i64, align 8
  %i328 = alloca i64, align 8
  %nskip = alloca i64, align 8
  %digits = alloca i64, align 8
  %temp = alloca i8*, align 8
  %temp_size = alloca i64, align 8
  %temp_pos = alloca i64, align 8
  %temp_len = alloca i64, align 8
  %n = alloca i64, align 8
  %tem = alloca i64, align 8
  %placeholder = alloca i64, align 8
  %.compoundliteral = alloca %union.Aligned_Cons, align 8
  %cell524 = alloca i64, align 8
  %next_char = alloca i32, align 4
  %value = alloca i64, align 8
  %saved_new_backquote_flag = alloca i8, align 1
  %next_char617 = alloca i32, align 4
  %comma_type = alloca i64, align 8
  %value633 = alloca i64, align 8
  %ch635 = alloca i32, align 4
  %modifiers = alloca i32, align 4
  %next_char661 = alloca i32, align 4
  %ok = alloca i8, align 1
  %p = alloca i8*, align 8
  %end714 = alloca i8*, align 8
  %ch716 = alloca i32, align 4
  %force_multibyte = alloca i8, align 1
  %force_singlebyte = alloca i8, align 1
  %cancel = alloca i8, align 1
  %nchars = alloca i64, align 8
  %offset = alloca i64, align 8
  %modifiers744 = alloca i32, align 4
  %next_char1009 = alloca i32, align 4
  %p1032 = alloca i8*, align 8
  %quoted = alloca i8, align 1
  %start_position = alloca i64, align 8
  %end1037 = alloca i8*, align 8
  %offset1046 = alloca i64, align 8
  %offset1151 = alloca i64, align 8
  %result = alloca i64, align 8
  %name = alloca i64, align 8
  %result1172 = alloca i64, align 8
  %nbytes = alloca i64, align 8
  %nchars1178 = alloca i64, align 8
  store i64 %readcharfun, i64* %readcharfun.addr, align 8
  store i32* %pch, i32** %pch.addr, align 8
  %frombool = zext i1 %first_in_list to i8
  store i8 %frombool, i8* %first_in_list.addr, align 1
  store i8 0, i8* %uninterned_symbol, align 1
  %0 = load i32*, i32** %pch.addr, align 8
  store i32 0, i32* %0, align 4
  br label %retry

retry:                                            ; preds = %if.then.1029, %if.then.1025, %while.end.588, %while.end.424, %if.end.410, %entry
  %1 = load i64, i64* %readcharfun.addr, align 8
  %call = call i32 @readchar(i64 %1, i8* %multibyte)
  store i32 %call, i32* %c, align 4
  %2 = load i32, i32* %c, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %retry
  call void @end_of_file_error() #9
  unreachable

if.end:                                           ; preds = %retry
  %3 = load i32, i32* %c, align 4
  switch i32 %3, label %sw.default [
    i32 40, label %sw.bb
    i32 91, label %sw.bb.2
    i32 41, label %sw.bb.4
    i32 93, label %sw.bb.4
    i32 35, label %sw.bb.6
    i32 59, label %sw.bb.578
    i32 39, label %sw.bb.589
    i32 96, label %sw.bb.593
    i32 44, label %sw.bb.615
    i32 63, label %sw.bb.658
    i32 34, label %sw.bb.711
    i32 46, label %sw.bb.1007
  ]

sw.bb:                                            ; preds = %if.end
  %4 = load i64, i64* %readcharfun.addr, align 8
  %call1 = call i64 @read_list(i1 zeroext false, i64 %4)
  store i64 %call1, i64* %retval
  br label %return

sw.bb.2:                                          ; preds = %if.end
  %5 = load i64, i64* %readcharfun.addr, align 8
  %call3 = call i64 @read_vector(i64 %5, i1 zeroext false)
  store i64 %call3, i64* %retval
  br label %return

sw.bb.4:                                          ; preds = %if.end, %if.end
  %6 = load i32, i32* %c, align 4
  %7 = load i32*, i32** %pch.addr, align 8
  store i32 %6, i32* %7, align 4
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call5, i64* %retval
  br label %return

sw.bb.6:                                          ; preds = %if.end
  %8 = load i64, i64* %readcharfun.addr, align 8
  %call7 = call i32 @readchar(i64 %8, i8* null)
  store i32 %call7, i32* %c, align 4
  %9 = load i32, i32* %c, align 4
  %cmp8 = icmp eq i32 %9, 115
  br i1 %cmp8, label %if.then.9, label %if.end.127

if.then.9:                                        ; preds = %sw.bb.6
  %10 = load i64, i64* %readcharfun.addr, align 8
  %call10 = call i32 @readchar(i64 %10, i8* null)
  store i32 %call10, i32* %c, align 4
  %11 = load i32, i32* %c, align 4
  %cmp11 = icmp eq i32 %11, 40
  br i1 %cmp11, label %if.then.12, label %if.end.126

if.then.12:                                       ; preds = %if.then.9
  %12 = load i64, i64* %readcharfun.addr, align 8
  %call13 = call i64 @read_list(i1 zeroext false, i64 %12)
  store i64 %call13, i64* %tmp, align 8
  %13 = load i64, i64* %tmp, align 8
  %call15 = call i64 @CAR_SAFE(i64 %13)
  store i64 %call15, i64* %head, align 8
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call17, i64* %data, align 8
  %call19 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call19, i64* %val, align 8
  %call23 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call23, i64* %key, align 8
  store i32 0, i32* %param_count, align 4
  %14 = load i64, i64* %head, align 8
  %call25 = call i64 @builtin_lisp_symbol(i32 509)
  %cmp26 = icmp eq i64 %14, %call25
  br i1 %cmp26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %if.then.12
  call void (i8*, ...) @error(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.95, i32 0, i32 0)) #9
  unreachable

if.end.28:                                        ; preds = %if.then.12
  %15 = load i64, i64* %tmp, align 8
  %call29 = call i64 @CDR_SAFE(i64 %15)
  store i64 %call29, i64* %tmp, align 8
  %call30 = call i64 @builtin_lisp_symbol(i32 118)
  %16 = load i32, i32* %param_count, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds [10 x i64], [10 x i64]* %params, i32 0, i64 %idxprom
  store i64 %call30, i64* %arrayidx, align 8
  %17 = load i64, i64* %tmp, align 8
  %call31 = call i64 @builtin_lisp_symbol(i32 864)
  %call32 = call i64 @Fplist_get(i64 %17, i64 %call31)
  %18 = load i32, i32* %param_count, align 4
  %add = add nsw i32 %18, 1
  %idxprom33 = sext i32 %add to i64
  %arrayidx34 = getelementptr inbounds [10 x i64], [10 x i64]* %params, i32 0, i64 %idxprom33
  store i64 %call32, i64* %arrayidx34, align 8
  %19 = load i32, i32* %param_count, align 4
  %add35 = add nsw i32 %19, 1
  %idxprom36 = sext i32 %add35 to i64
  %arrayidx37 = getelementptr inbounds [10 x i64], [10 x i64]* %params, i32 0, i64 %idxprom36
  %20 = load i64, i64* %arrayidx37, align 8
  %call38 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp39 = icmp eq i64 %20, %call38
  br i1 %cmp39, label %if.end.42, label %if.then.40

if.then.40:                                       ; preds = %if.end.28
  %21 = load i32, i32* %param_count, align 4
  %add41 = add nsw i32 %21, 2
  store i32 %add41, i32* %param_count, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.end.28
  %call43 = call i64 @builtin_lisp_symbol(i32 129)
  %22 = load i32, i32* %param_count, align 4
  %idxprom44 = sext i32 %22 to i64
  %arrayidx45 = getelementptr inbounds [10 x i64], [10 x i64]* %params, i32 0, i64 %idxprom44
  store i64 %call43, i64* %arrayidx45, align 8
  %23 = load i64, i64* %tmp, align 8
  %call46 = call i64 @builtin_lisp_symbol(i32 909)
  %call47 = call i64 @Fplist_get(i64 %23, i64 %call46)
  %24 = load i32, i32* %param_count, align 4
  %add48 = add nsw i32 %24, 1
  %idxprom49 = sext i32 %add48 to i64
  %arrayidx50 = getelementptr inbounds [10 x i64], [10 x i64]* %params, i32 0, i64 %idxprom49
  store i64 %call47, i64* %arrayidx50, align 8
  %25 = load i32, i32* %param_count, align 4
  %add51 = add nsw i32 %25, 1
  %idxprom52 = sext i32 %add51 to i64
  %arrayidx53 = getelementptr inbounds [10 x i64], [10 x i64]* %params, i32 0, i64 %idxprom52
  %26 = load i64, i64* %arrayidx53, align 8
  %call54 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp55 = icmp eq i64 %26, %call54
  br i1 %cmp55, label %if.end.58, label %if.then.56

if.then.56:                                       ; preds = %if.end.42
  %27 = load i32, i32* %param_count, align 4
  %add57 = add nsw i32 %27, 2
  store i32 %add57, i32* %param_count, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %if.end.42
  %call59 = call i64 @builtin_lisp_symbol(i32 137)
  %28 = load i32, i32* %param_count, align 4
  %idxprom60 = sext i32 %28 to i64
  %arrayidx61 = getelementptr inbounds [10 x i64], [10 x i64]* %params, i32 0, i64 %idxprom60
  store i64 %call59, i64* %arrayidx61, align 8
  %29 = load i64, i64* %tmp, align 8
  %call62 = call i64 @builtin_lisp_symbol(i32 1013)
  %call63 = call i64 @Fplist_get(i64 %29, i64 %call62)
  %30 = load i32, i32* %param_count, align 4
  %add64 = add nsw i32 %30, 1
  %idxprom65 = sext i32 %add64 to i64
  %arrayidx66 = getelementptr inbounds [10 x i64], [10 x i64]* %params, i32 0, i64 %idxprom65
  store i64 %call63, i64* %arrayidx66, align 8
  %31 = load i32, i32* %param_count, align 4
  %add67 = add nsw i32 %31, 1
  %idxprom68 = sext i32 %add67 to i64
  %arrayidx69 = getelementptr inbounds [10 x i64], [10 x i64]* %params, i32 0, i64 %idxprom68
  %32 = load i64, i64* %arrayidx69, align 8
  %call70 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp71 = icmp eq i64 %32, %call70
  br i1 %cmp71, label %if.end.74, label %if.then.72

if.then.72:                                       ; preds = %if.end.58
  %33 = load i32, i32* %param_count, align 4
  %add73 = add nsw i32 %33, 2
  store i32 %add73, i32* %param_count, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %if.end.58
  %call75 = call i64 @builtin_lisp_symbol(i32 103)
  %34 = load i32, i32* %param_count, align 4
  %idxprom76 = sext i32 %34 to i64
  %arrayidx77 = getelementptr inbounds [10 x i64], [10 x i64]* %params, i32 0, i64 %idxprom76
  store i64 %call75, i64* %arrayidx77, align 8
  %35 = load i64, i64* %tmp, align 8
  %call78 = call i64 @builtin_lisp_symbol(i32 802)
  %call79 = call i64 @Fplist_get(i64 %35, i64 %call78)
  %36 = load i32, i32* %param_count, align 4
  %add80 = add nsw i32 %36, 1
  %idxprom81 = sext i32 %add80 to i64
  %arrayidx82 = getelementptr inbounds [10 x i64], [10 x i64]* %params, i32 0, i64 %idxprom81
  store i64 %call79, i64* %arrayidx82, align 8
  %37 = load i32, i32* %param_count, align 4
  %add83 = add nsw i32 %37, 1
  %idxprom84 = sext i32 %add83 to i64
  %arrayidx85 = getelementptr inbounds [10 x i64], [10 x i64]* %params, i32 0, i64 %idxprom84
  %38 = load i64, i64* %arrayidx85, align 8
  %call86 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp87 = icmp eq i64 %38, %call86
  br i1 %cmp87, label %if.end.90, label %if.then.88

if.then.88:                                       ; preds = %if.end.74
  %39 = load i32, i32* %param_count, align 4
  %add89 = add nsw i32 %39, 2
  store i32 %add89, i32* %param_count, align 4
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.88, %if.end.74
  %call91 = call i64 @builtin_lisp_symbol(i32 104)
  %40 = load i32, i32* %param_count, align 4
  %idxprom92 = sext i32 %40 to i64
  %arrayidx93 = getelementptr inbounds [10 x i64], [10 x i64]* %params, i32 0, i64 %idxprom92
  store i64 %call91, i64* %arrayidx93, align 8
  %41 = load i64, i64* %tmp, align 8
  %call94 = call i64 @builtin_lisp_symbol(i32 803)
  %call95 = call i64 @Fplist_get(i64 %41, i64 %call94)
  %42 = load i32, i32* %param_count, align 4
  %add96 = add nsw i32 %42, 1
  %idxprom97 = sext i32 %add96 to i64
  %arrayidx98 = getelementptr inbounds [10 x i64], [10 x i64]* %params, i32 0, i64 %idxprom97
  store i64 %call95, i64* %arrayidx98, align 8
  %43 = load i32, i32* %param_count, align 4
  %add99 = add nsw i32 %43, 1
  %idxprom100 = sext i32 %add99 to i64
  %arrayidx101 = getelementptr inbounds [10 x i64], [10 x i64]* %params, i32 0, i64 %idxprom100
  %44 = load i64, i64* %arrayidx101, align 8
  %call102 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp103 = icmp eq i64 %44, %call102
  br i1 %cmp103, label %if.end.106, label %if.then.104

if.then.104:                                      ; preds = %if.end.90
  %45 = load i32, i32* %param_count, align 4
  %add105 = add nsw i32 %45, 2
  store i32 %add105, i32* %param_count, align 4
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.104, %if.end.90
  %46 = load i64, i64* %tmp, align 8
  %call107 = call i64 @builtin_lisp_symbol(i32 315)
  %call108 = call i64 @Fplist_get(i64 %46, i64 %call107)
  store i64 %call108, i64* %data, align 8
  %47 = load i32, i32* %param_count, align 4
  %conv = sext i32 %47 to i64
  %arraydecay = getelementptr inbounds [10 x i64], [10 x i64]* %params, i32 0, i32 0
  %call109 = call i64 @Fmake_hash_table(i64 %conv, i64* %arraydecay)
  store i64 %call109, i64* %ht, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.119, %if.end.106
  %48 = load i64, i64* %data, align 8
  %and = and i64 %48, 7
  %conv110 = trunc i64 %and to i32
  %cmp111 = icmp eq i32 %conv110, 3
  br i1 %cmp111, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %49 = load i64, i64* %data, align 8
  %sub = sub nsw i64 %49, 3
  %50 = inttoptr i64 %sub to i8*
  %51 = bitcast i8* %50 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %51, i32 0, i32 0
  %52 = load i64, i64* %car, align 8
  store i64 %52, i64* %key, align 8
  %53 = load i64, i64* %data, align 8
  %sub113 = sub nsw i64 %53, 3
  %54 = inttoptr i64 %sub113 to i8*
  %55 = bitcast i8* %54 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %55, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %56 = load i64, i64* %cdr, align 8
  store i64 %56, i64* %data, align 8
  %57 = load i64, i64* %data, align 8
  %and114 = and i64 %57, 7
  %conv115 = trunc i64 %and114 to i32
  %cmp116 = icmp eq i32 %conv115, 3
  br i1 %cmp116, label %if.end.119, label %if.then.118

if.then.118:                                      ; preds = %while.body
  call void (i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.96, i32 0, i32 0)) #9
  unreachable

if.end.119:                                       ; preds = %while.body
  %58 = load i64, i64* %data, align 8
  %sub120 = sub nsw i64 %58, 3
  %59 = inttoptr i64 %sub120 to i8*
  %60 = bitcast i8* %59 to %struct.Lisp_Cons*
  %car121 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %60, i32 0, i32 0
  %61 = load i64, i64* %car121, align 8
  store i64 %61, i64* %val, align 8
  %62 = load i64, i64* %data, align 8
  %sub122 = sub nsw i64 %62, 3
  %63 = inttoptr i64 %sub122 to i8*
  %64 = bitcast i8* %63 to %struct.Lisp_Cons*
  %u123 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %64, i32 0, i32 1
  %cdr124 = bitcast %union.anon* %u123 to i64*
  %65 = load i64, i64* %cdr124, align 8
  store i64 %65, i64* %data, align 8
  %66 = load i64, i64* %key, align 8
  %67 = load i64, i64* %val, align 8
  %68 = load i64, i64* %ht, align 8
  %call125 = call i64 @Fputhash(i64 %66, i64 %67, i64 %68)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %69 = load i64, i64* %ht, align 8
  store i64 %69, i64* %retval
  br label %return

if.end.126:                                       ; preds = %if.then.9
  %70 = load i64, i64* %readcharfun.addr, align 8
  %71 = load i32, i32* %c, align 4
  call void @unreadchar(i64 %70, i32 %71)
  call void @invalid_syntax(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0)) #9
  unreachable

if.end.127:                                       ; preds = %sw.bb.6
  %72 = load i32, i32* %c, align 4
  %cmp128 = icmp eq i32 %72, 94
  br i1 %cmp128, label %if.then.130, label %if.end.217

if.then.130:                                      ; preds = %if.end.127
  %73 = load i64, i64* %readcharfun.addr, align 8
  %call131 = call i32 @readchar(i64 %73, i8* null)
  store i32 %call131, i32* %c, align 4
  %74 = load i32, i32* %c, align 4
  %cmp132 = icmp eq i32 %74, 91
  br i1 %cmp132, label %if.then.134, label %if.else

if.then.134:                                      ; preds = %if.then.130
  %75 = load i64, i64* %readcharfun.addr, align 8
  %call137 = call i64 @read_vector(i64 %75, i1 zeroext false)
  store i64 %call137, i64* %tmp136, align 8
  %76 = load i64, i64* %tmp136, align 8
  %call138 = call i64 @ASIZE(i64 %76)
  %cmp139 = icmp slt i64 %call138, 68
  br i1 %cmp139, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %if.then.134
  call void (i8*, ...) @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.98, i32 0, i32 0)) #9
  unreachable

if.end.142:                                       ; preds = %if.then.134
  %77 = load i64, i64* %tmp136, align 8
  %call143 = call %struct.Lisp_Vector* @XVECTOR(i64 %77)
  %header = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %call143, i32 0, i32 0
  %size = getelementptr inbounds %struct.vectorlike_header, %struct.vectorlike_header* %header, i32 0, i32 0
  %78 = load i64, i64* %size, align 8
  %or = or i64 %78, 4611686018679046144
  store i64 %or, i64* %size, align 8
  %79 = load i64, i64* %tmp136, align 8
  store i64 %79, i64* %retval
  br label %return

if.else:                                          ; preds = %if.then.130
  %80 = load i32, i32* %c, align 4
  %cmp144 = icmp eq i32 %80, 94
  br i1 %cmp144, label %if.then.146, label %if.end.215

if.then.146:                                      ; preds = %if.else
  %81 = load i64, i64* %readcharfun.addr, align 8
  %call147 = call i32 @readchar(i64 %81, i8* null)
  store i32 %call147, i32* %c, align 4
  %82 = load i32, i32* %c, align 4
  %cmp148 = icmp eq i32 %82, 91
  br i1 %cmp148, label %if.then.150, label %if.end.214

if.then.150:                                      ; preds = %if.then.146
  %83 = load i64, i64* %readcharfun.addr, align 8
  %call154 = call i64 @read_list(i1 zeroext true, i64 %83)
  store i64 %call154, i64* %tmp153, align 8
  %84 = load i64, i64* %tmp153, align 8
  %call157 = call i64 @Flength(i64 %84)
  %shr = ashr i64 %call157, 2
  store i64 %shr, i64* %size156, align 8
  %85 = load i64, i64* %size156, align 8
  %cmp162 = icmp eq i64 %85, 0
  br i1 %cmp162, label %if.then.164, label %if.end.165

if.then.164:                                      ; preds = %if.then.150
  call void (i8*, ...) @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.99, i32 0, i32 0)) #9
  unreachable

if.end.165:                                       ; preds = %if.then.150
  %86 = load i64, i64* %tmp153, align 8
  %sub166 = sub nsw i64 %86, 3
  %87 = inttoptr i64 %sub166 to i8*
  %88 = bitcast i8* %87 to %struct.Lisp_Cons*
  %car167 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %88, i32 0, i32 0
  %89 = load i64, i64* %car167, align 8
  %call168 = call zeroext i1 @RANGED_INTEGERP(i64 1, i64 %89, i64 3)
  br i1 %call168, label %if.end.170, label %if.then.169

if.then.169:                                      ; preds = %if.end.165
  call void (i8*, ...) @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.100, i32 0, i32 0)) #9
  unreachable

if.end.170:                                       ; preds = %if.end.165
  %90 = load i64, i64* %tmp153, align 8
  %sub171 = sub nsw i64 %90, 3
  %91 = inttoptr i64 %sub171 to i8*
  %92 = bitcast i8* %91 to %struct.Lisp_Cons*
  %car172 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %92, i32 0, i32 0
  %93 = load i64, i64* %car172, align 8
  %shr173 = ashr i64 %93, 2
  %conv174 = trunc i64 %shr173 to i32
  store i32 %conv174, i32* %depth, align 4
  %94 = load i32, i32* %depth, align 4
  %idxprom175 = sext i32 %94 to i64
  %arrayidx176 = getelementptr inbounds [4 x i32], [4 x i32]* @chartab_size, i32 0, i64 %idxprom175
  %95 = load i32, i32* %arrayidx176, align 4
  %conv177 = sext i32 %95 to i64
  %96 = load i64, i64* %size156, align 8
  %sub178 = sub nsw i64 %96, 2
  %cmp179 = icmp ne i64 %conv177, %sub178
  br i1 %cmp179, label %if.then.181, label %if.end.182

if.then.181:                                      ; preds = %if.end.170
  call void (i8*, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.101, i32 0, i32 0)) #9
  unreachable

if.end.182:                                       ; preds = %if.end.170
  %97 = load i64, i64* %tmp153, align 8
  %sub183 = sub nsw i64 %97, 3
  %98 = inttoptr i64 %sub183 to i8*
  %99 = bitcast i8* %98 to %struct.Lisp_Cons*
  store %struct.Lisp_Cons* %99, %struct.Lisp_Cons** %cell, align 8
  %100 = load i64, i64* %tmp153, align 8
  %sub184 = sub nsw i64 %100, 3
  %101 = inttoptr i64 %sub184 to i8*
  %102 = bitcast i8* %101 to %struct.Lisp_Cons*
  %u185 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %102, i32 0, i32 1
  %cdr186 = bitcast %union.anon* %u185 to i64*
  %103 = load i64, i64* %cdr186, align 8
  store i64 %103, i64* %tmp153, align 8
  %104 = load i64, i64* %size156, align 8
  %dec = add nsw i64 %104, -1
  store i64 %dec, i64* %size156, align 8
  %105 = load %struct.Lisp_Cons*, %struct.Lisp_Cons** %cell, align 8
  call void @free_cons(%struct.Lisp_Cons* %105)
  %106 = load i64, i64* %tmp153, align 8
  %sub187 = sub nsw i64 %106, 3
  %107 = inttoptr i64 %sub187 to i8*
  %108 = bitcast i8* %107 to %struct.Lisp_Cons*
  %car188 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %108, i32 0, i32 0
  %109 = load i64, i64* %car188, align 8
  %call189 = call zeroext i1 @RANGED_INTEGERP(i64 0, i64 %109, i64 4194303)
  br i1 %call189, label %if.end.191, label %if.then.190

if.then.190:                                      ; preds = %if.end.182
  call void (i8*, ...) @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.102, i32 0, i32 0)) #9
  unreachable

if.end.191:                                       ; preds = %if.end.182
  %110 = load i64, i64* %tmp153, align 8
  %sub192 = sub nsw i64 %110, 3
  %111 = inttoptr i64 %sub192 to i8*
  %112 = bitcast i8* %111 to %struct.Lisp_Cons*
  %car193 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %112, i32 0, i32 0
  %113 = load i64, i64* %car193, align 8
  %shr194 = ashr i64 %113, 2
  %conv195 = trunc i64 %shr194 to i32
  store i32 %conv195, i32* %min_char, align 4
  %114 = load i64, i64* %tmp153, align 8
  %sub196 = sub nsw i64 %114, 3
  %115 = inttoptr i64 %sub196 to i8*
  %116 = bitcast i8* %115 to %struct.Lisp_Cons*
  store %struct.Lisp_Cons* %116, %struct.Lisp_Cons** %cell, align 8
  %117 = load i64, i64* %tmp153, align 8
  %sub197 = sub nsw i64 %117, 3
  %118 = inttoptr i64 %sub197 to i8*
  %119 = bitcast i8* %118 to %struct.Lisp_Cons*
  %u198 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %119, i32 0, i32 1
  %cdr199 = bitcast %union.anon* %u198 to i64*
  %120 = load i64, i64* %cdr199, align 8
  store i64 %120, i64* %tmp153, align 8
  %121 = load i64, i64* %size156, align 8
  %dec200 = add nsw i64 %121, -1
  store i64 %dec200, i64* %size156, align 8
  %122 = load %struct.Lisp_Cons*, %struct.Lisp_Cons** %cell, align 8
  call void @free_cons(%struct.Lisp_Cons* %122)
  %123 = load i32, i32* %depth, align 4
  %124 = load i32, i32* %min_char, align 4
  %call201 = call i64 @make_uninit_sub_char_table(i32 %123, i32 %124)
  store i64 %call201, i64* %tbl, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.191
  %125 = load i32, i32* %i, align 4
  %conv202 = sext i32 %125 to i64
  %126 = load i64, i64* %size156, align 8
  %cmp203 = icmp slt i64 %conv202, %126
  br i1 %cmp203, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %127 = load i64, i64* %tmp153, align 8
  %sub205 = sub nsw i64 %127, 3
  %128 = inttoptr i64 %sub205 to i8*
  %129 = bitcast i8* %128 to %struct.Lisp_Cons*
  %car206 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %129, i32 0, i32 0
  %130 = load i64, i64* %car206, align 8
  %131 = load i32, i32* %i, align 4
  %idxprom207 = sext i32 %131 to i64
  %132 = load i64, i64* %tbl, align 8
  %call208 = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %132)
  %contents = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %call208, i32 0, i32 3
  %arrayidx209 = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i64 %idxprom207
  store i64 %130, i64* %arrayidx209, align 8
  %133 = load i64, i64* %tmp153, align 8
  %sub210 = sub nsw i64 %133, 3
  %134 = inttoptr i64 %sub210 to i8*
  %135 = bitcast i8* %134 to %struct.Lisp_Cons*
  store %struct.Lisp_Cons* %135, %struct.Lisp_Cons** %cell, align 8
  %136 = load i64, i64* %tmp153, align 8
  %sub211 = sub nsw i64 %136, 3
  %137 = inttoptr i64 %sub211 to i8*
  %138 = bitcast i8* %137 to %struct.Lisp_Cons*
  %u212 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %138, i32 0, i32 1
  %cdr213 = bitcast %union.anon* %u212 to i64*
  %139 = load i64, i64* %cdr213, align 8
  store i64 %139, i64* %tmp153, align 8
  %140 = load %struct.Lisp_Cons*, %struct.Lisp_Cons** %cell, align 8
  call void @free_cons(%struct.Lisp_Cons* %140)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %141 = load i32, i32* %i, align 4
  %inc = add nsw i32 %141, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %142 = load i64, i64* %tbl, align 8
  store i64 %142, i64* %retval
  br label %return

if.end.214:                                       ; preds = %if.then.146
  call void @invalid_syntax(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.103, i32 0, i32 0)) #9
  unreachable

if.end.215:                                       ; preds = %if.else
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.215
  call void @invalid_syntax(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i32 0, i32 0)) #9
  unreachable

if.end.217:                                       ; preds = %if.end.127
  %143 = load i32, i32* %c, align 4
  %cmp218 = icmp eq i32 %143, 38
  br i1 %cmp218, label %if.then.220, label %if.end.268

if.then.220:                                      ; preds = %if.end.217
  %144 = load i64, i64* %readcharfun.addr, align 8
  %145 = load i32*, i32** %pch.addr, align 8
  %146 = load i8, i8* %first_in_list.addr, align 1
  %tobool = trunc i8 %146 to i1
  %call222 = call i64 @read1(i64 %144, i32* %145, i1 zeroext %tobool)
  store i64 %call222, i64* %length, align 8
  %147 = load i64, i64* %readcharfun.addr, align 8
  %call223 = call i32 @readchar(i64 %147, i8* null)
  store i32 %call223, i32* %c, align 4
  %148 = load i32, i32* %c, align 4
  %cmp224 = icmp eq i32 %148, 34
  br i1 %cmp224, label %if.then.226, label %if.end.267

if.then.226:                                      ; preds = %if.then.220
  %149 = load i64, i64* %length, align 8
  %shr232 = ashr i64 %149, 2
  %call233 = call i64 @bool_vector_bytes(i64 %shr232)
  store i64 %call233, i64* %size_in_chars, align 8
  %150 = load i64, i64* %readcharfun.addr, align 8
  %151 = load i32, i32* %c, align 4
  call void @unreadchar(i64 %150, i32 %151)
  %152 = load i64, i64* %readcharfun.addr, align 8
  %153 = load i32*, i32** %pch.addr, align 8
  %154 = load i8, i8* %first_in_list.addr, align 1
  %tobool236 = trunc i8 %154 to i1
  %call237 = call i64 @read1(i64 %152, i32* %153, i1 zeroext %tobool236)
  store i64 %call237, i64* %tmp228, align 8
  %155 = load i64, i64* %tmp228, align 8
  %call238 = call zeroext i1 @STRING_MULTIBYTE(i64 %155)
  br i1 %call238, label %if.then.248, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.226
  %156 = load i64, i64* %size_in_chars, align 8
  %157 = load i64, i64* %tmp228, align 8
  %call240 = call i64 @SCHARS(i64 %157)
  %cmp241 = icmp ne i64 %156, %call240
  br i1 %cmp241, label %land.lhs.true, label %if.end.249

land.lhs.true:                                    ; preds = %lor.lhs.false
  %158 = load i64, i64* %length, align 8
  %shr243 = ashr i64 %158, 2
  %159 = load i64, i64* %tmp228, align 8
  %call244 = call i64 @SCHARS(i64 %159)
  %sub245 = sub nsw i64 %call244, 1
  %mul = mul nsw i64 %sub245, 8
  %cmp246 = icmp eq i64 %shr243, %mul
  br i1 %cmp246, label %if.end.249, label %if.then.248

if.then.248:                                      ; preds = %land.lhs.true, %if.then.226
  call void @invalid_syntax(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.105, i32 0, i32 0)) #9
  unreachable

if.end.249:                                       ; preds = %land.lhs.true, %lor.lhs.false
  %160 = load i64, i64* %length, align 8
  %shr250 = ashr i64 %160, 2
  %call251 = call i64 @make_uninit_bool_vector(i64 %shr250)
  store i64 %call251, i64* %val230, align 8
  %161 = load i64, i64* %val230, align 8
  %call252 = call i8* @bool_vector_uchar_data(i64 %161)
  store i8* %call252, i8** %data235, align 8
  %162 = load i8*, i8** %data235, align 8
  %163 = load i64, i64* %tmp228, align 8
  %call253 = call i8* @SDATA(i64 %163)
  %164 = load i64, i64* %size_in_chars, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %162, i8* %call253, i64 %164, i32 1, i1 false)
  %165 = load i64, i64* %length, align 8
  %shr254 = ashr i64 %165, 2
  %166 = load i64, i64* %size_in_chars, align 8
  %mul255 = mul nsw i64 %166, 8
  %cmp256 = icmp ne i64 %shr254, %mul255
  br i1 %cmp256, label %if.then.258, label %if.end.266

if.then.258:                                      ; preds = %if.end.249
  %167 = load i64, i64* %length, align 8
  %shr259 = ashr i64 %167, 2
  %rem = srem i64 %shr259, 8
  %sh_prom = trunc i64 %rem to i32
  %shl = shl i32 1, %sh_prom
  %sub260 = sub nsw i32 %shl, 1
  %168 = load i64, i64* %size_in_chars, align 8
  %sub261 = sub nsw i64 %168, 1
  %169 = load i8*, i8** %data235, align 8
  %arrayidx262 = getelementptr inbounds i8, i8* %169, i64 %sub261
  %170 = load i8, i8* %arrayidx262, align 1
  %conv263 = zext i8 %170 to i32
  %and264 = and i32 %conv263, %sub260
  %conv265 = trunc i32 %and264 to i8
  store i8 %conv265, i8* %arrayidx262, align 1
  br label %if.end.266

if.end.266:                                       ; preds = %if.then.258, %if.end.249
  %171 = load i64, i64* %val230, align 8
  store i64 %171, i64* %retval
  br label %return

if.end.267:                                       ; preds = %if.then.220
  call void @invalid_syntax(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.105, i32 0, i32 0)) #9
  unreachable

if.end.268:                                       ; preds = %if.end.217
  %172 = load i32, i32* %c, align 4
  %cmp269 = icmp eq i32 %172, 91
  br i1 %cmp269, label %if.then.271, label %if.end.283

if.then.271:                                      ; preds = %if.end.268
  %173 = load i64, i64* %readcharfun.addr, align 8
  %call275 = call i64 @read_vector(i64 %173, i1 zeroext true)
  store i64 %call275, i64* %tmp273, align 8
  %174 = load i64, i64* %tmp273, align 8
  %call276 = call %struct.Lisp_Vector* @XVECTOR(i64 %174)
  store %struct.Lisp_Vector* %call276, %struct.Lisp_Vector** %vec, align 8
  %175 = load %struct.Lisp_Vector*, %struct.Lisp_Vector** %vec, align 8
  %header277 = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %175, i32 0, i32 0
  %size278 = getelementptr inbounds %struct.vectorlike_header, %struct.vectorlike_header* %header277, i32 0, i32 0
  %176 = load i64, i64* %size278, align 8
  %cmp279 = icmp eq i64 %176, 0
  br i1 %cmp279, label %if.then.281, label %if.end.282

if.then.281:                                      ; preds = %if.then.271
  call void @invalid_syntax(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.106, i32 0, i32 0)) #9
  unreachable

if.end.282:                                       ; preds = %if.then.271
  %177 = load %struct.Lisp_Vector*, %struct.Lisp_Vector** %vec, align 8
  call void @make_byte_code(%struct.Lisp_Vector* %177)
  %178 = load i64, i64* %tmp273, align 8
  store i64 %178, i64* %retval
  br label %return

if.end.283:                                       ; preds = %if.end.268
  %179 = load i32, i32* %c, align 4
  %cmp284 = icmp eq i32 %179, 40
  br i1 %cmp284, label %if.then.286, label %if.end.323

if.then.286:                                      ; preds = %if.end.283
  %180 = load i64, i64* %readcharfun.addr, align 8
  %call290 = call i64 @read1(i64 %180, i32* %ch, i1 zeroext false)
  store i64 %call290, i64* %tmp288, align 8
  %181 = load i32, i32* %ch, align 4
  %cmp291 = icmp ne i32 %181, 0
  br i1 %cmp291, label %if.then.295, label %lor.lhs.false.293

lor.lhs.false.293:                                ; preds = %if.then.286
  %182 = load i64, i64* %tmp288, align 8
  %call294 = call zeroext i1 @STRINGP(i64 %182)
  br i1 %call294, label %if.end.296, label %if.then.295

if.then.295:                                      ; preds = %lor.lhs.false.293, %if.then.286
  call void @invalid_syntax(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0)) #9
  unreachable

if.end.296:                                       ; preds = %lor.lhs.false.293
  br label %while.body.298

while.body.298:                                   ; preds = %if.end.296, %if.end.320
  %183 = load i64, i64* %readcharfun.addr, align 8
  %call302 = call i64 @read1(i64 %183, i32* %ch, i1 zeroext false)
  store i64 %call302, i64* %beg, align 8
  %call303 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call303, i64* %plist, align 8
  store i64 %call303, i64* %end, align 8
  %184 = load i32, i32* %ch, align 4
  %cmp304 = icmp eq i32 %184, 41
  br i1 %cmp304, label %if.then.306, label %if.end.307

if.then.306:                                      ; preds = %while.body.298
  br label %while.end.322

if.end.307:                                       ; preds = %while.body.298
  %185 = load i32, i32* %ch, align 4
  %cmp308 = icmp eq i32 %185, 0
  br i1 %cmp308, label %if.then.310, label %if.end.312

if.then.310:                                      ; preds = %if.end.307
  %186 = load i64, i64* %readcharfun.addr, align 8
  %call311 = call i64 @read1(i64 %186, i32* %ch, i1 zeroext false)
  store i64 %call311, i64* %end, align 8
  br label %if.end.312

if.end.312:                                       ; preds = %if.then.310, %if.end.307
  %187 = load i32, i32* %ch, align 4
  %cmp313 = icmp eq i32 %187, 0
  br i1 %cmp313, label %if.then.315, label %if.end.317

if.then.315:                                      ; preds = %if.end.312
  %188 = load i64, i64* %readcharfun.addr, align 8
  %call316 = call i64 @read1(i64 %188, i32* %ch, i1 zeroext false)
  store i64 %call316, i64* %plist, align 8
  br label %if.end.317

if.end.317:                                       ; preds = %if.then.315, %if.end.312
  %189 = load i32, i32* %ch, align 4
  %tobool318 = icmp ne i32 %189, 0
  br i1 %tobool318, label %if.then.319, label %if.end.320

if.then.319:                                      ; preds = %if.end.317
  call void @invalid_syntax(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.107, i32 0, i32 0)) #9
  unreachable

if.end.320:                                       ; preds = %if.end.317
  %190 = load i64, i64* %beg, align 8
  %191 = load i64, i64* %end, align 8
  %192 = load i64, i64* %plist, align 8
  %193 = load i64, i64* %tmp288, align 8
  %call321 = call i64 @Fset_text_properties(i64 %190, i64 %191, i64 %192, i64 %193)
  br label %while.body.298

while.end.322:                                    ; preds = %if.then.306
  %194 = load i64, i64* %tmp288, align 8
  store i64 %194, i64* %retval
  br label %return

if.end.323:                                       ; preds = %if.end.283
  %195 = load i32, i32* %c, align 4
  %cmp324 = icmp eq i32 %195, 64
  br i1 %cmp324, label %if.then.326, label %if.end.411

if.then.326:                                      ; preds = %if.end.323
  store i64 0, i64* %nskip, align 8
  store i64 0, i64* %digits, align 8
  br label %while.cond.331

while.cond.331:                                   ; preds = %if.end.357, %if.then.326
  %196 = load i64, i64* %readcharfun.addr, align 8
  %call332 = call i32 @readchar(i64 %196, i8* null)
  store i32 %call332, i32* %c, align 4
  %cmp333 = icmp sge i32 %call332, 0
  br i1 %cmp333, label %land.lhs.true.335, label %land.end

land.lhs.true.335:                                ; preds = %while.cond.331
  %197 = load i32, i32* %c, align 4
  %cmp336 = icmp sge i32 %197, 48
  br i1 %cmp336, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.335
  %198 = load i32, i32* %c, align 4
  %cmp338 = icmp sle i32 %198, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.335, %while.cond.331
  %199 = phi i1 [ false, %land.lhs.true.335 ], [ false, %while.cond.331 ], [ %cmp338, %land.rhs ]
  br i1 %199, label %while.body.340, label %while.end.358

while.body.340:                                   ; preds = %land.end
  %200 = load i64, i64* %nskip, align 8
  %cmp341 = icmp sle i64 230584300921369385, %200
  br i1 %cmp341, label %if.then.343, label %if.end.344

if.then.343:                                      ; preds = %while.body.340
  call void @string_overflow() #9
  unreachable

if.end.344:                                       ; preds = %while.body.340
  %201 = load i64, i64* %digits, align 8
  %inc345 = add nsw i64 %201, 1
  store i64 %inc345, i64* %digits, align 8
  %202 = load i64, i64* %nskip, align 8
  %mul346 = mul nsw i64 %202, 10
  store i64 %mul346, i64* %nskip, align 8
  %203 = load i32, i32* %c, align 4
  %sub347 = sub nsw i32 %203, 48
  %conv348 = sext i32 %sub347 to i64
  %204 = load i64, i64* %nskip, align 8
  %add349 = add nsw i64 %204, %conv348
  store i64 %add349, i64* %nskip, align 8
  %205 = load i64, i64* %digits, align 8
  %cmp350 = icmp eq i64 %205, 2
  br i1 %cmp350, label %land.lhs.true.352, label %if.end.357

land.lhs.true.352:                                ; preds = %if.end.344
  %206 = load i64, i64* %nskip, align 8
  %cmp353 = icmp eq i64 %206, 0
  br i1 %cmp353, label %if.then.355, label %if.end.357

if.then.355:                                      ; preds = %land.lhs.true.352
  %207 = load i64, i64* %readcharfun.addr, align 8
  call void @skip_dyn_eof(i64 %207)
  %call356 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call356, i64* %retval
  br label %return

if.end.357:                                       ; preds = %land.lhs.true.352, %if.end.344
  br label %while.cond.331

while.end.358:                                    ; preds = %land.end
  %208 = load i64, i64* %nskip, align 8
  %cmp359 = icmp sgt i64 %208, 0
  br i1 %cmp359, label %if.then.361, label %if.else.363

if.then.361:                                      ; preds = %while.end.358
  %209 = load i64, i64* %nskip, align 8
  %dec362 = add nsw i64 %209, -1
  store i64 %dec362, i64* %nskip, align 8
  br label %if.end.364

if.else.363:                                      ; preds = %while.end.358
  %210 = load i64, i64* %readcharfun.addr, align 8
  %211 = load i32, i32* %c, align 4
  call void @unreadchar(i64 %210, i32 %211)
  br label %if.end.364

if.end.364:                                       ; preds = %if.else.363, %if.then.361
  %212 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 465), align 1
  %tobool365 = trunc i8 %212 to i1
  br i1 %tobool365, label %land.lhs.true.367, label %if.else.409

land.lhs.true.367:                                ; preds = %if.end.364
  %213 = load i64, i64* %readcharfun.addr, align 8
  %call368 = call i64 @builtin_lisp_symbol(i32 486)
  %cmp369 = icmp eq i64 %213, %call368
  br i1 %cmp369, label %if.then.375, label %lor.lhs.false.371

lor.lhs.false.371:                                ; preds = %land.lhs.true.367
  %214 = load i64, i64* %readcharfun.addr, align 8
  %call372 = call i64 @builtin_lisp_symbol(i32 484)
  %cmp373 = icmp eq i64 %214, %call372
  br i1 %cmp373, label %if.then.375, label %if.else.409

if.then.375:                                      ; preds = %lor.lhs.false.371, %land.lhs.true.367
  %215 = load i8*, i8** @saved_doc_string, align 8
  store i8* %215, i8** %temp, align 8
  %216 = load i64, i64* @saved_doc_string_size, align 8
  store i64 %216, i64* %temp_size, align 8
  %217 = load i64, i64* @saved_doc_string_position, align 8
  store i64 %217, i64* %temp_pos, align 8
  %218 = load i64, i64* @saved_doc_string_length, align 8
  store i64 %218, i64* %temp_len, align 8
  %219 = load i8*, i8** @prev_saved_doc_string, align 8
  store i8* %219, i8** @saved_doc_string, align 8
  %220 = load i64, i64* @prev_saved_doc_string_size, align 8
  store i64 %220, i64* @saved_doc_string_size, align 8
  %221 = load i64, i64* @prev_saved_doc_string_position, align 8
  store i64 %221, i64* @saved_doc_string_position, align 8
  %222 = load i64, i64* @prev_saved_doc_string_length, align 8
  store i64 %222, i64* @saved_doc_string_length, align 8
  %223 = load i8*, i8** %temp, align 8
  store i8* %223, i8** @prev_saved_doc_string, align 8
  %224 = load i64, i64* %temp_size, align 8
  store i64 %224, i64* @prev_saved_doc_string_size, align 8
  %225 = load i64, i64* %temp_pos, align 8
  store i64 %225, i64* @prev_saved_doc_string_position, align 8
  %226 = load i64, i64* %temp_len, align 8
  store i64 %226, i64* @prev_saved_doc_string_length, align 8
  %227 = load i64, i64* @saved_doc_string_size, align 8
  %cmp380 = icmp eq i64 %227, 0
  br i1 %cmp380, label %if.then.382, label %if.end.386

if.then.382:                                      ; preds = %if.then.375
  %228 = load i64, i64* %nskip, align 8
  %add383 = add nsw i64 %228, 100
  %call384 = call noalias i8* @xmalloc(i64 %add383)
  store i8* %call384, i8** @saved_doc_string, align 8
  %229 = load i64, i64* %nskip, align 8
  %add385 = add nsw i64 %229, 100
  store i64 %add385, i64* @saved_doc_string_size, align 8
  br label %if.end.386

if.end.386:                                       ; preds = %if.then.382, %if.then.375
  %230 = load i64, i64* %nskip, align 8
  %231 = load i64, i64* @saved_doc_string_size, align 8
  %cmp387 = icmp sgt i64 %230, %231
  br i1 %cmp387, label %if.then.389, label %if.end.393

if.then.389:                                      ; preds = %if.end.386
  %232 = load i8*, i8** @saved_doc_string, align 8
  %233 = load i64, i64* %nskip, align 8
  %add390 = add nsw i64 %233, 100
  %call391 = call i8* @xrealloc(i8* %232, i64 %add390)
  store i8* %call391, i8** @saved_doc_string, align 8
  %234 = load i64, i64* %nskip, align 8
  %add392 = add nsw i64 %234, 100
  store i64 %add392, i64* @saved_doc_string_size, align 8
  br label %if.end.393

if.end.393:                                       ; preds = %if.then.389, %if.end.386
  %235 = load %struct._IO_FILE*, %struct._IO_FILE** @instream, align 8
  %call394 = call i64 @ftello(%struct._IO_FILE* %235)
  store i64 %call394, i64* @saved_doc_string_position, align 8
  call void @block_input()
  store i64 0, i64* %i328, align 8
  br label %for.cond.395

for.cond.395:                                     ; preds = %for.inc.406, %if.end.393
  %236 = load i64, i64* %i328, align 8
  %237 = load i64, i64* %nskip, align 8
  %cmp396 = icmp slt i64 %236, %237
  br i1 %cmp396, label %land.rhs.398, label %land.end.401

land.rhs.398:                                     ; preds = %for.cond.395
  %238 = load i32, i32* %c, align 4
  %cmp399 = icmp sge i32 %238, 0
  br label %land.end.401

land.end.401:                                     ; preds = %land.rhs.398, %for.cond.395
  %239 = phi i1 [ false, %for.cond.395 ], [ %cmp399, %land.rhs.398 ]
  br i1 %239, label %for.body.402, label %for.end.408

for.body.402:                                     ; preds = %land.end.401
  %240 = load %struct._IO_FILE*, %struct._IO_FILE** @instream, align 8
  %call403 = call i32 @_IO_getc(%struct._IO_FILE* %240)
  store i32 %call403, i32* %c, align 4
  %conv404 = trunc i32 %call403 to i8
  %241 = load i64, i64* %i328, align 8
  %242 = load i8*, i8** @saved_doc_string, align 8
  %arrayidx405 = getelementptr inbounds i8, i8* %242, i64 %241
  store i8 %conv404, i8* %arrayidx405, align 1
  br label %for.inc.406

for.inc.406:                                      ; preds = %for.body.402
  %243 = load i64, i64* %i328, align 8
  %inc407 = add nsw i64 %243, 1
  store i64 %inc407, i64* %i328, align 8
  br label %for.cond.395

for.end.408:                                      ; preds = %land.end.401
  call void @unblock_input()
  %244 = load i64, i64* %i328, align 8
  store i64 %244, i64* @saved_doc_string_length, align 8
  br label %if.end.410

if.else.409:                                      ; preds = %lor.lhs.false.371, %if.end.364
  %245 = load i64, i64* %readcharfun.addr, align 8
  %246 = load i64, i64* %nskip, align 8
  call void @skip_dyn_bytes(i64 %245, i64 %246)
  br label %if.end.410

if.end.410:                                       ; preds = %if.else.409, %for.end.408
  br label %retry

if.end.411:                                       ; preds = %if.end.323
  %247 = load i32, i32* %c, align 4
  %cmp412 = icmp eq i32 %247, 33
  br i1 %cmp412, label %if.then.414, label %if.end.425

if.then.414:                                      ; preds = %if.end.411
  br label %while.cond.415

while.cond.415:                                   ; preds = %while.body.422, %if.then.414
  %248 = load i32, i32* %c, align 4
  %cmp416 = icmp ne i32 %248, 10
  br i1 %cmp416, label %land.rhs.418, label %land.end.421

land.rhs.418:                                     ; preds = %while.cond.415
  %249 = load i32, i32* %c, align 4
  %cmp419 = icmp sge i32 %249, 0
  br label %land.end.421

land.end.421:                                     ; preds = %land.rhs.418, %while.cond.415
  %250 = phi i1 [ false, %while.cond.415 ], [ %cmp419, %land.rhs.418 ]
  br i1 %250, label %while.body.422, label %while.end.424

while.body.422:                                   ; preds = %land.end.421
  %251 = load i64, i64* %readcharfun.addr, align 8
  %call423 = call i32 @readchar(i64 %251, i8* null)
  store i32 %call423, i32* %c, align 4
  br label %while.cond.415

while.end.424:                                    ; preds = %land.end.421
  br label %retry

if.end.425:                                       ; preds = %if.end.411
  %252 = load i32, i32* %c, align 4
  %cmp426 = icmp eq i32 %252, 36
  br i1 %cmp426, label %if.then.428, label %if.end.429

if.then.428:                                      ; preds = %if.end.425
  %253 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 161), align 8
  store i64 %253, i64* %retval
  br label %return

if.end.429:                                       ; preds = %if.end.425
  %254 = load i32, i32* %c, align 4
  %cmp430 = icmp eq i32 %254, 39
  br i1 %cmp430, label %if.then.432, label %if.end.436

if.then.432:                                      ; preds = %if.end.429
  %call433 = call i64 @builtin_lisp_symbol(i32 476)
  %255 = load i64, i64* %readcharfun.addr, align 8
  %call434 = call i64 @read0(i64 %255)
  %call435 = call i64 @list2(i64 %call433, i64 %call434)
  store i64 %call435, i64* %retval
  br label %return

if.end.436:                                       ; preds = %if.end.429
  %256 = load i32, i32* %c, align 4
  %cmp437 = icmp eq i32 %256, 58
  br i1 %cmp437, label %if.then.439, label %if.end.456

if.then.439:                                      ; preds = %if.end.436
  store i8 1, i8* %uninterned_symbol, align 1
  %257 = load i64, i64* %readcharfun.addr, align 8
  %call440 = call i32 @readchar(i64 %257, i8* null)
  store i32 %call440, i32* %c, align 4
  %258 = load i32, i32* %c, align 4
  %cmp441 = icmp sgt i32 %258, 32
  br i1 %cmp441, label %land.lhs.true.443, label %if.then.453

land.lhs.true.443:                                ; preds = %if.then.439
  %259 = load i32, i32* %c, align 4
  %cmp444 = icmp ne i32 %259, 160
  br i1 %cmp444, label %land.lhs.true.446, label %if.then.453

land.lhs.true.446:                                ; preds = %land.lhs.true.443
  %260 = load i32, i32* %c, align 4
  %cmp447 = icmp sge i32 %260, 128
  br i1 %cmp447, label %if.end.455, label %lor.lhs.false.449

lor.lhs.false.449:                                ; preds = %land.lhs.true.446
  %261 = load i32, i32* %c, align 4
  %call450 = call i8* @strchr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.108, i32 0, i32 0), i32 %261) #10
  %cmp451 = icmp eq i8* %call450, null
  br i1 %cmp451, label %if.end.455, label %if.then.453

if.then.453:                                      ; preds = %lor.lhs.false.449, %land.lhs.true.443, %if.then.439
  %262 = load i64, i64* %readcharfun.addr, align 8
  %263 = load i32, i32* %c, align 4
  call void @unreadchar(i64 %262, i32 %263)
  %264 = load i64, i64* @empty_unibyte_string, align 8
  %call454 = call i64 @Fmake_symbol(i64 %264)
  store i64 %call454, i64* %retval
  br label %return

if.end.455:                                       ; preds = %lor.lhs.false.449, %land.lhs.true.446
  br label %read_symbol

if.end.456:                                       ; preds = %if.end.436
  %265 = load i32, i32* %c, align 4
  %cmp457 = icmp eq i32 %265, 35
  br i1 %cmp457, label %if.then.459, label %if.end.462

if.then.459:                                      ; preds = %if.end.456
  %266 = load i64, i64* @empty_unibyte_string, align 8
  %call460 = call i64 @builtin_lisp_symbol(i32 0)
  %call461 = call i64 @Fintern(i64 %266, i64 %call460)
  store i64 %call461, i64* %retval
  br label %return

if.end.462:                                       ; preds = %if.end.456
  %267 = load i32, i32* %c, align 4
  %cmp463 = icmp sge i32 %267, 48
  br i1 %cmp463, label %land.lhs.true.465, label %if.else.550

land.lhs.true.465:                                ; preds = %if.end.462
  %268 = load i32, i32* %c, align 4
  %cmp466 = icmp sle i32 %268, 57
  br i1 %cmp466, label %if.then.468, label %if.else.550

if.then.468:                                      ; preds = %land.lhs.true.465
  store i64 0, i64* %n, align 8
  br label %while.cond.471

while.cond.471:                                   ; preds = %if.end.494, %if.then.468
  %269 = load i32, i32* %c, align 4
  %cmp472 = icmp sge i32 %269, 48
  br i1 %cmp472, label %land.rhs.474, label %land.end.477

land.rhs.474:                                     ; preds = %while.cond.471
  %270 = load i32, i32* %c, align 4
  %cmp475 = icmp sle i32 %270, 57
  br label %land.end.477

land.end.477:                                     ; preds = %land.rhs.474, %while.cond.471
  %271 = phi i1 [ false, %while.cond.471 ], [ %cmp475, %land.rhs.474 ]
  br i1 %271, label %while.body.478, label %while.end.496

while.body.478:                                   ; preds = %land.end.477
  %272 = load i64, i64* %n, align 8
  %cmp479 = icmp slt i64 230584300921369395, %272
  br i1 %cmp479, label %if.then.488, label %lor.lhs.false.481

lor.lhs.false.481:                                ; preds = %while.body.478
  %273 = load i64, i64* %n, align 8
  %mul482 = mul nsw i64 %273, 10
  %274 = load i32, i32* %c, align 4
  %conv483 = sext i32 %274 to i64
  %add484 = add nsw i64 %mul482, %conv483
  %sub485 = sub nsw i64 %add484, 48
  %cmp486 = icmp slt i64 2305843009213693951, %sub485
  br i1 %cmp486, label %if.then.488, label %if.else.489

if.then.488:                                      ; preds = %lor.lhs.false.481, %while.body.478
  store i64 2305843009213693952, i64* %n, align 8
  br label %if.end.494

if.else.489:                                      ; preds = %lor.lhs.false.481
  %275 = load i64, i64* %n, align 8
  %mul490 = mul nsw i64 %275, 10
  %276 = load i32, i32* %c, align 4
  %conv491 = sext i32 %276 to i64
  %add492 = add nsw i64 %mul490, %conv491
  %sub493 = sub nsw i64 %add492, 48
  store i64 %sub493, i64* %n, align 8
  br label %if.end.494

if.end.494:                                       ; preds = %if.else.489, %if.then.488
  %277 = load i64, i64* %readcharfun.addr, align 8
  %call495 = call i32 @readchar(i64 %277, i8* null)
  store i32 %call495, i32* %c, align 4
  br label %while.cond.471

while.end.496:                                    ; preds = %land.end.477
  %278 = load i64, i64* %n, align 8
  %cmp497 = icmp sle i64 %278, 2305843009213693951
  br i1 %cmp497, label %if.then.499, label %if.end.549

if.then.499:                                      ; preds = %while.end.496
  %279 = load i32, i32* %c, align 4
  %cmp500 = icmp eq i32 %279, 114
  br i1 %cmp500, label %if.then.505, label %lor.lhs.false.502

lor.lhs.false.502:                                ; preds = %if.then.499
  %280 = load i32, i32* %c, align 4
  %cmp503 = icmp eq i32 %280, 82
  br i1 %cmp503, label %if.then.505, label %if.end.507

if.then.505:                                      ; preds = %lor.lhs.false.502, %if.then.499
  %281 = load i64, i64* %readcharfun.addr, align 8
  %282 = load i64, i64* %n, align 8
  %call506 = call i64 @read_integer(i64 %281, i64 %282)
  store i64 %call506, i64* %retval
  br label %return

if.end.507:                                       ; preds = %lor.lhs.false.502
  %283 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 243), align 8
  %call508 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp509 = icmp eq i64 %283, %call508
  br i1 %cmp509, label %if.end.548, label %if.then.511

if.then.511:                                      ; preds = %if.end.507
  %284 = load i32, i32* %c, align 4
  %cmp512 = icmp eq i32 %284, 61
  br i1 %cmp512, label %if.then.514, label %if.end.531

if.then.514:                                      ; preds = %if.then.511
  %s = bitcast %union.Aligned_Cons* %.compoundliteral to %struct.Lisp_Cons*
  %car516 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s, i32 0, i32 0
  %call517 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call517, i64* %car516, align 8
  %u518 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s, i32 0, i32 1
  %cdr519 = bitcast %union.anon* %u518 to i64*
  %call520 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call520, i64* %cdr519, align 8
  %s521 = bitcast %union.Aligned_Cons* %.compoundliteral to %struct.Lisp_Cons*
  %285 = bitcast %struct.Lisp_Cons* %s521 to i8*
  %call522 = call i64 @make_lisp_ptr(i8* %285, i32 3)
  store i64 %call522, i64* %placeholder, align 8
  %286 = load i64, i64* %n, align 8
  %shl525 = shl i64 %286, 2
  %add526 = add i64 %shl525, 2
  %287 = load i64, i64* %placeholder, align 8
  %call527 = call i64 @Fcons(i64 %add526, i64 %287)
  store i64 %call527, i64* %cell524, align 8
  %288 = load i64, i64* %cell524, align 8
  %289 = load i64, i64* @read_objects, align 8
  %call528 = call i64 @Fcons(i64 %288, i64 %289)
  store i64 %call528, i64* @read_objects, align 8
  %290 = load i64, i64* %readcharfun.addr, align 8
  %call529 = call i64 @read0(i64 %290)
  store i64 %call529, i64* %tem, align 8
  %291 = load i64, i64* %tem, align 8
  %292 = load i64, i64* %placeholder, align 8
  call void @substitute_object_in_subtree(i64 %291, i64 %292)
  %293 = load i64, i64* %cell524, align 8
  %294 = load i64, i64* %tem, align 8
  %call530 = call i64 @Fsetcdr(i64 %293, i64 %294)
  %295 = load i64, i64* %tem, align 8
  store i64 %295, i64* %retval
  br label %return

if.end.531:                                       ; preds = %if.then.511
  %296 = load i32, i32* %c, align 4
  %cmp532 = icmp eq i32 %296, 35
  br i1 %cmp532, label %if.then.534, label %if.end.547

if.then.534:                                      ; preds = %if.end.531
  %297 = load i64, i64* %n, align 8
  %shl535 = shl i64 %297, 2
  %add536 = add i64 %shl535, 2
  %298 = load i64, i64* @read_objects, align 8
  %call537 = call i64 @Fassq(i64 %add536, i64 %298)
  store i64 %call537, i64* %tem, align 8
  %299 = load i64, i64* %tem, align 8
  %and538 = and i64 %299, 7
  %conv539 = trunc i64 %and538 to i32
  %cmp540 = icmp eq i32 %conv539, 3
  br i1 %cmp540, label %if.then.542, label %if.end.546

if.then.542:                                      ; preds = %if.then.534
  %300 = load i64, i64* %tem, align 8
  %sub543 = sub nsw i64 %300, 3
  %301 = inttoptr i64 %sub543 to i8*
  %302 = bitcast i8* %301 to %struct.Lisp_Cons*
  %u544 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %302, i32 0, i32 1
  %cdr545 = bitcast %union.anon* %u544 to i64*
  %303 = load i64, i64* %cdr545, align 8
  store i64 %303, i64* %retval
  br label %return

if.end.546:                                       ; preds = %if.then.534
  br label %if.end.547

if.end.547:                                       ; preds = %if.end.546, %if.end.531
  br label %if.end.548

if.end.548:                                       ; preds = %if.end.547, %if.end.507
  br label %if.end.549

if.end.549:                                       ; preds = %if.end.548, %while.end.496
  br label %if.end.577

if.else.550:                                      ; preds = %land.lhs.true.465, %if.end.462
  %304 = load i32, i32* %c, align 4
  %cmp551 = icmp eq i32 %304, 120
  br i1 %cmp551, label %if.then.556, label %lor.lhs.false.553

lor.lhs.false.553:                                ; preds = %if.else.550
  %305 = load i32, i32* %c, align 4
  %cmp554 = icmp eq i32 %305, 88
  br i1 %cmp554, label %if.then.556, label %if.else.558

if.then.556:                                      ; preds = %lor.lhs.false.553, %if.else.550
  %306 = load i64, i64* %readcharfun.addr, align 8
  %call557 = call i64 @read_integer(i64 %306, i64 16)
  store i64 %call557, i64* %retval
  br label %return

if.else.558:                                      ; preds = %lor.lhs.false.553
  %307 = load i32, i32* %c, align 4
  %cmp559 = icmp eq i32 %307, 111
  br i1 %cmp559, label %if.then.564, label %lor.lhs.false.561

lor.lhs.false.561:                                ; preds = %if.else.558
  %308 = load i32, i32* %c, align 4
  %cmp562 = icmp eq i32 %308, 79
  br i1 %cmp562, label %if.then.564, label %if.else.566

if.then.564:                                      ; preds = %lor.lhs.false.561, %if.else.558
  %309 = load i64, i64* %readcharfun.addr, align 8
  %call565 = call i64 @read_integer(i64 %309, i64 8)
  store i64 %call565, i64* %retval
  br label %return

if.else.566:                                      ; preds = %lor.lhs.false.561
  %310 = load i32, i32* %c, align 4
  %cmp567 = icmp eq i32 %310, 98
  br i1 %cmp567, label %if.then.572, label %lor.lhs.false.569

lor.lhs.false.569:                                ; preds = %if.else.566
  %311 = load i32, i32* %c, align 4
  %cmp570 = icmp eq i32 %311, 66
  br i1 %cmp570, label %if.then.572, label %if.end.574

if.then.572:                                      ; preds = %lor.lhs.false.569, %if.else.566
  %312 = load i64, i64* %readcharfun.addr, align 8
  %call573 = call i64 @read_integer(i64 %312, i64 2)
  store i64 %call573, i64* %retval
  br label %return

if.end.574:                                       ; preds = %lor.lhs.false.569
  br label %if.end.575

if.end.575:                                       ; preds = %if.end.574
  br label %if.end.576

if.end.576:                                       ; preds = %if.end.575
  br label %if.end.577

if.end.577:                                       ; preds = %if.end.576, %if.end.549
  %313 = load i64, i64* %readcharfun.addr, align 8
  %314 = load i32, i32* %c, align 4
  call void @unreadchar(i64 %313, i32 %314)
  call void @invalid_syntax(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0)) #9
  unreachable

sw.bb.578:                                        ; preds = %if.end
  br label %while.cond.579

while.cond.579:                                   ; preds = %while.body.587, %sw.bb.578
  %315 = load i64, i64* %readcharfun.addr, align 8
  %call580 = call i32 @readchar(i64 %315, i8* null)
  store i32 %call580, i32* %c, align 4
  %cmp581 = icmp sge i32 %call580, 0
  br i1 %cmp581, label %land.rhs.583, label %land.end.586

land.rhs.583:                                     ; preds = %while.cond.579
  %316 = load i32, i32* %c, align 4
  %cmp584 = icmp ne i32 %316, 10
  br label %land.end.586

land.end.586:                                     ; preds = %land.rhs.583, %while.cond.579
  %317 = phi i1 [ false, %while.cond.579 ], [ %cmp584, %land.rhs.583 ]
  br i1 %317, label %while.body.587, label %while.end.588

while.body.587:                                   ; preds = %land.end.586
  br label %while.cond.579

while.end.588:                                    ; preds = %land.end.586
  br label %retry

sw.bb.589:                                        ; preds = %if.end
  %call590 = call i64 @builtin_lisp_symbol(i32 783)
  %318 = load i64, i64* %readcharfun.addr, align 8
  %call591 = call i64 @read0(i64 %318)
  %call592 = call i64 @list2(i64 %call590, i64 %call591)
  store i64 %call592, i64* %retval
  br label %return

sw.bb.593:                                        ; preds = %if.end
  %319 = load i64, i64* %readcharfun.addr, align 8
  %call595 = call i32 @readchar(i64 %319, i8* null)
  store i32 %call595, i32* %next_char, align 4
  %320 = load i64, i64* %readcharfun.addr, align 8
  %321 = load i32, i32* %next_char, align 4
  call void @unreadchar(i64 %320, i32 %321)
  %322 = load i8, i8* @new_backquote_flag, align 1
  %tobool596 = trunc i8 %322 to i1
  br i1 %tobool596, label %if.else.605, label %land.lhs.true.597

land.lhs.true.597:                                ; preds = %sw.bb.593
  %323 = load i8, i8* %first_in_list.addr, align 1
  %tobool598 = trunc i8 %323 to i1
  br i1 %tobool598, label %land.lhs.true.600, label %if.else.605

land.lhs.true.600:                                ; preds = %land.lhs.true.597
  %324 = load i32, i32* %next_char, align 4
  %cmp601 = icmp eq i32 %324, 32
  br i1 %cmp601, label %if.then.603, label %if.else.605

if.then.603:                                      ; preds = %land.lhs.true.600
  %call604 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call604, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 208), align 8
  br label %default_label

if.else.605:                                      ; preds = %land.lhs.true.600, %land.lhs.true.597, %sw.bb.593
  %325 = load i8, i8* @new_backquote_flag, align 1
  %tobool608 = trunc i8 %325 to i1
  %frombool609 = zext i1 %tobool608 to i8
  store i8 %frombool609, i8* %saved_new_backquote_flag, align 1
  store i8 1, i8* @new_backquote_flag, align 1
  %326 = load i64, i64* %readcharfun.addr, align 8
  %call610 = call i64 @read0(i64 %326)
  store i64 %call610, i64* %value, align 8
  %327 = load i8, i8* %saved_new_backquote_flag, align 1
  %tobool611 = trunc i8 %327 to i1
  %frombool612 = zext i1 %tobool611 to i8
  store i8 %frombool612, i8* @new_backquote_flag, align 1
  %call613 = call i64 @builtin_lisp_symbol(i32 195)
  %328 = load i64, i64* %value, align 8
  %call614 = call i64 @list2(i64 %call613, i64 %328)
  store i64 %call614, i64* %retval
  br label %return

sw.bb.615:                                        ; preds = %if.end
  %329 = load i64, i64* %readcharfun.addr, align 8
  %call618 = call i32 @readchar(i64 %329, i8* null)
  store i32 %call618, i32* %next_char617, align 4
  %330 = load i64, i64* %readcharfun.addr, align 8
  %331 = load i32, i32* %next_char617, align 4
  call void @unreadchar(i64 %330, i32 %331)
  %332 = load i8, i8* @new_backquote_flag, align 1
  %tobool619 = trunc i8 %332 to i1
  br i1 %tobool619, label %if.then.629, label %lor.lhs.false.621

lor.lhs.false.621:                                ; preds = %sw.bb.615
  %333 = load i8, i8* %first_in_list.addr, align 1
  %tobool622 = trunc i8 %333 to i1
  br i1 %tobool622, label %lor.lhs.false.623, label %if.then.629

lor.lhs.false.623:                                ; preds = %lor.lhs.false.621
  %334 = load i32, i32* %next_char617, align 4
  %cmp624 = icmp ne i32 %334, 32
  br i1 %cmp624, label %land.lhs.true.626, label %if.else.656

land.lhs.true.626:                                ; preds = %lor.lhs.false.623
  %335 = load i32, i32* %next_char617, align 4
  %cmp627 = icmp ne i32 %335, 64
  br i1 %cmp627, label %if.then.629, label %if.else.656

if.then.629:                                      ; preds = %land.lhs.true.626, %lor.lhs.false.621, %sw.bb.615
  %call631 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call631, i64* %comma_type, align 8
  %336 = load i64, i64* %readcharfun.addr, align 8
  %call636 = call i32 @readchar(i64 %336, i8* null)
  store i32 %call636, i32* %ch635, align 4
  %337 = load i32, i32* %ch635, align 4
  %cmp637 = icmp eq i32 %337, 64
  br i1 %cmp637, label %if.then.639, label %if.else.641

if.then.639:                                      ; preds = %if.then.629
  %call640 = call i64 @builtin_lisp_symbol(i32 283)
  store i64 %call640, i64* %comma_type, align 8
  br label %if.end.653

if.else.641:                                      ; preds = %if.then.629
  %338 = load i32, i32* %ch635, align 4
  %cmp642 = icmp eq i32 %338, 46
  br i1 %cmp642, label %if.then.644, label %if.else.646

if.then.644:                                      ; preds = %if.else.641
  %call645 = call i64 @builtin_lisp_symbol(i32 284)
  store i64 %call645, i64* %comma_type, align 8
  br label %if.end.652

if.else.646:                                      ; preds = %if.else.641
  %339 = load i32, i32* %ch635, align 4
  %cmp647 = icmp sge i32 %339, 0
  br i1 %cmp647, label %if.then.649, label %if.end.650

if.then.649:                                      ; preds = %if.else.646
  %340 = load i64, i64* %readcharfun.addr, align 8
  %341 = load i32, i32* %ch635, align 4
  call void @unreadchar(i64 %340, i32 %341)
  br label %if.end.650

if.end.650:                                       ; preds = %if.then.649, %if.else.646
  %call651 = call i64 @builtin_lisp_symbol(i32 282)
  store i64 %call651, i64* %comma_type, align 8
  br label %if.end.652

if.end.652:                                       ; preds = %if.end.650, %if.then.644
  br label %if.end.653

if.end.653:                                       ; preds = %if.end.652, %if.then.639
  %342 = load i64, i64* %readcharfun.addr, align 8
  %call654 = call i64 @read0(i64 %342)
  store i64 %call654, i64* %value633, align 8
  %343 = load i64, i64* %comma_type, align 8
  %344 = load i64, i64* %value633, align 8
  %call655 = call i64 @list2(i64 %343, i64 %344)
  store i64 %call655, i64* %retval
  br label %return

if.else.656:                                      ; preds = %land.lhs.true.626, %lor.lhs.false.623
  %call657 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call657, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 208), align 8
  br label %default_label

sw.bb.658:                                        ; preds = %if.end
  %345 = load i64, i64* %readcharfun.addr, align 8
  %call663 = call i32 @readchar(i64 %345, i8* null)
  store i32 %call663, i32* %c, align 4
  %346 = load i32, i32* %c, align 4
  %cmp664 = icmp slt i32 %346, 0
  br i1 %cmp664, label %if.then.666, label %if.end.667

if.then.666:                                      ; preds = %sw.bb.658
  call void @end_of_file_error() #9
  unreachable

if.end.667:                                       ; preds = %sw.bb.658
  %347 = load i32, i32* %c, align 4
  %cmp668 = icmp eq i32 %347, 32
  br i1 %cmp668, label %if.then.673, label %lor.lhs.false.670

lor.lhs.false.670:                                ; preds = %if.end.667
  %348 = load i32, i32* %c, align 4
  %cmp671 = icmp eq i32 %348, 9
  br i1 %cmp671, label %if.then.673, label %if.end.677

if.then.673:                                      ; preds = %lor.lhs.false.670, %if.end.667
  %349 = load i32, i32* %c, align 4
  %conv674 = sext i32 %349 to i64
  %shl675 = shl i64 %conv674, 2
  %add676 = add i64 %shl675, 2
  store i64 %add676, i64* %retval
  br label %return

if.end.677:                                       ; preds = %lor.lhs.false.670
  %350 = load i32, i32* %c, align 4
  %cmp678 = icmp eq i32 %350, 92
  br i1 %cmp678, label %if.then.680, label %if.end.682

if.then.680:                                      ; preds = %if.end.677
  %351 = load i64, i64* %readcharfun.addr, align 8
  %call681 = call i32 @read_escape(i64 %351, i1 zeroext false)
  store i32 %call681, i32* %c, align 4
  br label %if.end.682

if.end.682:                                       ; preds = %if.then.680, %if.end.677
  %352 = load i32, i32* %c, align 4
  %and683 = and i32 %352, 264241152
  store i32 %and683, i32* %modifiers, align 4
  %353 = load i32, i32* %c, align 4
  %and684 = and i32 %353, -264241153
  store i32 %and684, i32* %c, align 4
  %354 = load i32, i32* %c, align 4
  %cmp685 = icmp sgt i32 %354, 4194175
  br i1 %cmp685, label %if.then.687, label %if.end.692

if.then.687:                                      ; preds = %if.end.682
  %355 = load i32, i32* %c, align 4
  %cmp688 = icmp sgt i32 %355, 4194175
  br i1 %cmp688, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.687
  %356 = load i32, i32* %c, align 4
  %sub690 = sub nsw i32 %356, 4194048
  br label %cond.end

cond.false:                                       ; preds = %if.then.687
  %357 = load i32, i32* %c, align 4
  %and691 = and i32 %357, 255
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub690, %cond.true ], [ %and691, %cond.false ]
  store i32 %cond, i32* %c, align 4
  br label %if.end.692

if.end.692:                                       ; preds = %cond.end, %if.end.682
  %358 = load i32, i32* %modifiers, align 4
  %359 = load i32, i32* %c, align 4
  %or693 = or i32 %359, %358
  store i32 %or693, i32* %c, align 4
  %360 = load i64, i64* %readcharfun.addr, align 8
  %call694 = call i32 @readchar(i64 %360, i8* null)
  store i32 %call694, i32* %next_char661, align 4
  %361 = load i32, i32* %next_char661, align 4
  %cmp695 = icmp sle i32 %361, 32
  br i1 %cmp695, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.692
  %362 = load i32, i32* %next_char661, align 4
  %cmp697 = icmp slt i32 %362, 128
  br i1 %cmp697, label %land.rhs.699, label %land.end.703

land.rhs.699:                                     ; preds = %lor.rhs
  %363 = load i32, i32* %next_char661, align 4
  %call700 = call i8* @strchr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.109, i32 0, i32 0), i32 %363) #10
  %cmp701 = icmp ne i8* %call700, null
  br label %land.end.703

land.end.703:                                     ; preds = %land.rhs.699, %lor.rhs
  %364 = phi i1 [ false, %lor.rhs ], [ %cmp701, %land.rhs.699 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end.703, %if.end.692
  %365 = phi i1 [ true, %if.end.692 ], [ %364, %land.end.703 ]
  %frombool704 = zext i1 %365 to i8
  store i8 %frombool704, i8* %ok, align 1
  %366 = load i64, i64* %readcharfun.addr, align 8
  %367 = load i32, i32* %next_char661, align 4
  call void @unreadchar(i64 %366, i32 %367)
  %368 = load i8, i8* %ok, align 1
  %tobool705 = trunc i8 %368 to i1
  br i1 %tobool705, label %if.then.706, label %if.end.710

if.then.706:                                      ; preds = %lor.end
  %369 = load i32, i32* %c, align 4
  %conv707 = sext i32 %369 to i64
  %shl708 = shl i64 %conv707, 2
  %add709 = add i64 %shl708, 2
  store i64 %add709, i64* %retval
  br label %return

if.end.710:                                       ; preds = %lor.end
  call void @invalid_syntax(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.110, i32 0, i32 0)) #9
  unreachable

sw.bb.711:                                        ; preds = %if.end
  %370 = load i8*, i8** @read_buffer, align 8
  store i8* %370, i8** %p, align 8
  %371 = load i8*, i8** @read_buffer, align 8
  %372 = load i64, i64* @read_buffer_size, align 8
  %add.ptr = getelementptr inbounds i8, i8* %371, i64 %372
  store i8* %add.ptr, i8** %end714, align 8
  store i8 0, i8* %force_multibyte, align 1
  store i8 0, i8* %force_singlebyte, align 1
  store i8 0, i8* %cancel, align 1
  store i64 0, i64* %nchars, align 8
  br label %while.cond.721

while.cond.721:                                   ; preds = %if.end.964, %if.end.752, %sw.bb.711
  %373 = load i64, i64* %readcharfun.addr, align 8
  %call722 = call i32 @readchar(i64 %373, i8* null)
  store i32 %call722, i32* %ch716, align 4
  %cmp723 = icmp sge i32 %call722, 0
  br i1 %cmp723, label %land.rhs.725, label %land.end.728

land.rhs.725:                                     ; preds = %while.cond.721
  %374 = load i32, i32* %ch716, align 4
  %cmp726 = icmp ne i32 %374, 34
  br label %land.end.728

land.end.728:                                     ; preds = %land.rhs.725, %while.cond.721
  %375 = phi i1 [ false, %while.cond.721 ], [ %cmp726, %land.rhs.725 ]
  br i1 %375, label %while.body.729, label %while.end.966

while.body.729:                                   ; preds = %land.end.728
  %376 = load i8*, i8** %end714, align 8
  %377 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %376 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %377 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp730 = icmp slt i64 %sub.ptr.sub, 5
  br i1 %cmp730, label %if.then.732, label %if.end.739

if.then.732:                                      ; preds = %while.body.729
  %378 = load i8*, i8** %p, align 8
  %379 = load i8*, i8** @read_buffer, align 8
  %sub.ptr.lhs.cast734 = ptrtoint i8* %378 to i64
  %sub.ptr.rhs.cast735 = ptrtoint i8* %379 to i64
  %sub.ptr.sub736 = sub i64 %sub.ptr.lhs.cast734, %sub.ptr.rhs.cast735
  store i64 %sub.ptr.sub736, i64* %offset, align 8
  call void @grow_read_buffer()
  %380 = load i8*, i8** @read_buffer, align 8
  %381 = load i64, i64* %offset, align 8
  %add.ptr737 = getelementptr inbounds i8, i8* %380, i64 %381
  store i8* %add.ptr737, i8** %p, align 8
  %382 = load i8*, i8** @read_buffer, align 8
  %383 = load i64, i64* @read_buffer_size, align 8
  %add.ptr738 = getelementptr inbounds i8, i8* %382, i64 %383
  store i8* %add.ptr738, i8** %end714, align 8
  br label %if.end.739

if.end.739:                                       ; preds = %if.then.732, %while.body.729
  %384 = load i32, i32* %ch716, align 4
  %cmp740 = icmp eq i32 %384, 92
  br i1 %cmp740, label %if.then.742, label %if.else.882

if.then.742:                                      ; preds = %if.end.739
  %385 = load i64, i64* %readcharfun.addr, align 8
  %call745 = call i32 @read_escape(i64 %385, i1 zeroext true)
  store i32 %call745, i32* %ch716, align 4
  %386 = load i32, i32* %ch716, align 4
  %cmp746 = icmp eq i32 %386, -1
  br i1 %cmp746, label %if.then.748, label %if.end.753

if.then.748:                                      ; preds = %if.then.742
  %387 = load i8*, i8** %p, align 8
  %388 = load i8*, i8** @read_buffer, align 8
  %cmp749 = icmp eq i8* %387, %388
  br i1 %cmp749, label %if.then.751, label %if.end.752

if.then.751:                                      ; preds = %if.then.748
  store i8 1, i8* %cancel, align 1
  br label %if.end.752

if.end.752:                                       ; preds = %if.then.751, %if.then.748
  br label %while.cond.721

if.end.753:                                       ; preds = %if.then.742
  %389 = load i32, i32* %ch716, align 4
  %and754 = and i32 %389, 264241152
  store i32 %and754, i32* %modifiers744, align 4
  %390 = load i32, i32* %ch716, align 4
  %and755 = and i32 %390, -264241153
  store i32 %and755, i32* %ch716, align 4
  %391 = load i32, i32* %ch716, align 4
  %cmp756 = icmp sgt i32 %391, 4194175
  br i1 %cmp756, label %if.then.758, label %if.else.759

if.then.758:                                      ; preds = %if.end.753
  store i8 1, i8* %force_singlebyte, align 1
  br label %if.end.814

if.else.759:                                      ; preds = %if.end.753
  br i1 true, label %cond.true.760, label %cond.false.764

cond.true.760:                                    ; preds = %if.else.759
  %392 = load i32, i32* %ch716, align 4
  %add761 = add i32 %392, 0
  %cmp762 = icmp ult i32 %add761, 128
  br i1 %cmp762, label %if.else.770, label %if.then.769

cond.false.764:                                   ; preds = %if.else.759
  %393 = load i32, i32* %ch716, align 4
  %conv765 = sext i32 %393 to i64
  %add766 = add i64 %conv765, 0
  %cmp767 = icmp ult i64 %add766, 128
  br i1 %cmp767, label %if.else.770, label %if.then.769

if.then.769:                                      ; preds = %cond.false.764, %cond.true.760
  store i8 1, i8* %force_multibyte, align 1
  br label %if.end.813

if.else.770:                                      ; preds = %cond.false.764, %cond.true.760
  %394 = load i32, i32* %modifiers744, align 4
  %cmp771 = icmp eq i32 %394, 67108864
  br i1 %cmp771, label %if.then.773, label %if.end.783

if.then.773:                                      ; preds = %if.else.770
  %395 = load i32, i32* %ch716, align 4
  %cmp774 = icmp eq i32 %395, 32
  br i1 %cmp774, label %if.then.776, label %if.else.777

if.then.776:                                      ; preds = %if.then.773
  store i32 0, i32* %ch716, align 4
  store i32 0, i32* %modifiers744, align 4
  br label %if.end.782

if.else.777:                                      ; preds = %if.then.773
  %396 = load i32, i32* %ch716, align 4
  %cmp778 = icmp eq i32 %396, 63
  br i1 %cmp778, label %if.then.780, label %if.end.781

if.then.780:                                      ; preds = %if.else.777
  store i32 127, i32* %ch716, align 4
  store i32 0, i32* %modifiers744, align 4
  br label %if.end.781

if.end.781:                                       ; preds = %if.then.780, %if.else.777
  br label %if.end.782

if.end.782:                                       ; preds = %if.end.781, %if.then.776
  br label %if.end.783

if.end.783:                                       ; preds = %if.end.782, %if.else.770
  %397 = load i32, i32* %modifiers744, align 4
  %and784 = and i32 %397, 33554432
  %tobool785 = icmp ne i32 %and784, 0
  br i1 %tobool785, label %if.then.786, label %if.end.805

if.then.786:                                      ; preds = %if.end.783
  %398 = load i32, i32* %ch716, align 4
  %cmp787 = icmp sge i32 %398, 65
  br i1 %cmp787, label %land.lhs.true.789, label %if.else.794

land.lhs.true.789:                                ; preds = %if.then.786
  %399 = load i32, i32* %ch716, align 4
  %cmp790 = icmp sle i32 %399, 90
  br i1 %cmp790, label %if.then.792, label %if.else.794

if.then.792:                                      ; preds = %land.lhs.true.789
  %400 = load i32, i32* %modifiers744, align 4
  %and793 = and i32 %400, -33554433
  store i32 %and793, i32* %modifiers744, align 4
  br label %if.end.804

if.else.794:                                      ; preds = %land.lhs.true.789, %if.then.786
  %401 = load i32, i32* %ch716, align 4
  %cmp795 = icmp sge i32 %401, 97
  br i1 %cmp795, label %land.lhs.true.797, label %if.end.803

land.lhs.true.797:                                ; preds = %if.else.794
  %402 = load i32, i32* %ch716, align 4
  %cmp798 = icmp sle i32 %402, 122
  br i1 %cmp798, label %if.then.800, label %if.end.803

if.then.800:                                      ; preds = %land.lhs.true.797
  %403 = load i32, i32* %ch716, align 4
  %sub801 = sub nsw i32 %403, 32
  store i32 %sub801, i32* %ch716, align 4
  %404 = load i32, i32* %modifiers744, align 4
  %and802 = and i32 %404, -33554433
  store i32 %and802, i32* %modifiers744, align 4
  br label %if.end.803

if.end.803:                                       ; preds = %if.then.800, %land.lhs.true.797, %if.else.794
  br label %if.end.804

if.end.804:                                       ; preds = %if.end.803, %if.then.792
  br label %if.end.805

if.end.805:                                       ; preds = %if.end.804, %if.end.783
  %405 = load i32, i32* %modifiers744, align 4
  %and806 = and i32 %405, 134217728
  %tobool807 = icmp ne i32 %and806, 0
  br i1 %tobool807, label %if.then.808, label %if.end.812

if.then.808:                                      ; preds = %if.end.805
  %406 = load i32, i32* %modifiers744, align 4
  %and809 = and i32 %406, -134217729
  store i32 %and809, i32* %modifiers744, align 4
  %407 = load i32, i32* %ch716, align 4
  %or810 = or i32 %407, 128
  %add811 = add nsw i32 %or810, 4194048
  store i32 %add811, i32* %ch716, align 4
  store i8 1, i8* %force_singlebyte, align 1
  br label %if.end.812

if.end.812:                                       ; preds = %if.then.808, %if.end.805
  br label %if.end.813

if.end.813:                                       ; preds = %if.end.812, %if.then.769
  br label %if.end.814

if.end.814:                                       ; preds = %if.end.813, %if.then.758
  %408 = load i32, i32* %modifiers744, align 4
  %tobool815 = icmp ne i32 %408, 0
  br i1 %tobool815, label %if.then.816, label %if.end.817

if.then.816:                                      ; preds = %if.end.814
  call void (i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.111, i32 0, i32 0)) #9
  unreachable

if.end.817:                                       ; preds = %if.end.814
  br i1 true, label %cond.true.818, label %cond.false.822

cond.true.818:                                    ; preds = %if.end.817
  %409 = load i32, i32* %ch716, align 4
  %add819 = add i32 %409, 0
  %cmp820 = icmp ule i32 %add819, 127
  br i1 %cmp820, label %cond.true.827, label %cond.false.830

cond.false.822:                                   ; preds = %if.end.817
  %410 = load i32, i32* %ch716, align 4
  %conv823 = sext i32 %410 to i64
  %add824 = add i64 %conv823, 0
  %cmp825 = icmp ule i64 %add824, 127
  br i1 %cmp825, label %cond.true.827, label %cond.false.830

cond.true.827:                                    ; preds = %cond.false.822, %cond.true.818
  %411 = load i32, i32* %ch716, align 4
  %conv828 = trunc i32 %411 to i8
  %412 = load i8*, i8** %p, align 8
  %arrayidx829 = getelementptr inbounds i8, i8* %412, i64 0
  store i8 %conv828, i8* %arrayidx829, align 1
  br label %cond.end.879

cond.false.830:                                   ; preds = %cond.false.822, %cond.true.818
  br i1 true, label %cond.true.831, label %cond.false.835

cond.true.831:                                    ; preds = %cond.false.830
  %413 = load i32, i32* %ch716, align 4
  %add832 = add i32 %413, 0
  %cmp833 = icmp ule i32 %add832, 2047
  br i1 %cmp833, label %cond.true.840, label %cond.false.849

cond.false.835:                                   ; preds = %cond.false.830
  %414 = load i32, i32* %ch716, align 4
  %conv836 = sext i32 %414 to i64
  %add837 = add i64 %conv836, 0
  %cmp838 = icmp ule i64 %add837, 2047
  br i1 %cmp838, label %cond.true.840, label %cond.false.849

cond.true.840:                                    ; preds = %cond.false.835, %cond.true.831
  %415 = load i32, i32* %ch716, align 4
  %shr841 = ashr i32 %415, 6
  %or842 = or i32 192, %shr841
  %conv843 = trunc i32 %or842 to i8
  %416 = load i8*, i8** %p, align 8
  %arrayidx844 = getelementptr inbounds i8, i8* %416, i64 0
  store i8 %conv843, i8* %arrayidx844, align 1
  %417 = load i32, i32* %ch716, align 4
  %and845 = and i32 %417, 63
  %or846 = or i32 128, %and845
  %conv847 = trunc i32 %or846 to i8
  %418 = load i8*, i8** %p, align 8
  %arrayidx848 = getelementptr inbounds i8, i8* %418, i64 1
  store i8 %conv847, i8* %arrayidx848, align 1
  br label %cond.end.877

cond.false.849:                                   ; preds = %cond.false.835, %cond.true.831
  br i1 true, label %cond.true.850, label %cond.false.854

cond.true.850:                                    ; preds = %cond.false.849
  %419 = load i32, i32* %ch716, align 4
  %add851 = add i32 %419, 0
  %cmp852 = icmp ule i32 %add851, 65535
  br i1 %cmp852, label %cond.true.859, label %cond.false.873

cond.false.854:                                   ; preds = %cond.false.849
  %420 = load i32, i32* %ch716, align 4
  %conv855 = sext i32 %420 to i64
  %add856 = add i64 %conv855, 0
  %cmp857 = icmp ule i64 %add856, 65535
  br i1 %cmp857, label %cond.true.859, label %cond.false.873

cond.true.859:                                    ; preds = %cond.false.854, %cond.true.850
  %421 = load i32, i32* %ch716, align 4
  %shr860 = ashr i32 %421, 12
  %or861 = or i32 224, %shr860
  %conv862 = trunc i32 %or861 to i8
  %422 = load i8*, i8** %p, align 8
  %arrayidx863 = getelementptr inbounds i8, i8* %422, i64 0
  store i8 %conv862, i8* %arrayidx863, align 1
  %423 = load i32, i32* %ch716, align 4
  %shr864 = ashr i32 %423, 6
  %and865 = and i32 %shr864, 63
  %or866 = or i32 128, %and865
  %conv867 = trunc i32 %or866 to i8
  %424 = load i8*, i8** %p, align 8
  %arrayidx868 = getelementptr inbounds i8, i8* %424, i64 1
  store i8 %conv867, i8* %arrayidx868, align 1
  %425 = load i32, i32* %ch716, align 4
  %and869 = and i32 %425, 63
  %or870 = or i32 128, %and869
  %conv871 = trunc i32 %or870 to i8
  %426 = load i8*, i8** %p, align 8
  %arrayidx872 = getelementptr inbounds i8, i8* %426, i64 2
  store i8 %conv871, i8* %arrayidx872, align 1
  br label %cond.end.875

cond.false.873:                                   ; preds = %cond.false.854, %cond.true.850
  %427 = load i32, i32* %ch716, align 4
  %428 = load i8*, i8** %p, align 8
  %call874 = call i32 @char_string(i32 %427, i8* %428)
  br label %cond.end.875

cond.end.875:                                     ; preds = %cond.false.873, %cond.true.859
  %cond876 = phi i32 [ 3, %cond.true.859 ], [ %call874, %cond.false.873 ]
  br label %cond.end.877

cond.end.877:                                     ; preds = %cond.end.875, %cond.true.840
  %cond878 = phi i32 [ 2, %cond.true.840 ], [ %cond876, %cond.end.875 ]
  br label %cond.end.879

cond.end.879:                                     ; preds = %cond.end.877, %cond.true.827
  %cond880 = phi i32 [ 1, %cond.true.827 ], [ %cond878, %cond.end.877 ]
  %429 = load i8*, i8** %p, align 8
  %idx.ext = sext i32 %cond880 to i64
  %add.ptr881 = getelementptr inbounds i8, i8* %429, i64 %idx.ext
  store i8* %add.ptr881, i8** %p, align 8
  br label %if.end.964

if.else.882:                                      ; preds = %if.end.739
  br i1 true, label %cond.true.883, label %cond.false.887

cond.true.883:                                    ; preds = %if.else.882
  %430 = load i32, i32* %ch716, align 4
  %add884 = add i32 %430, 0
  %cmp885 = icmp ule i32 %add884, 127
  br i1 %cmp885, label %cond.true.892, label %cond.false.895

cond.false.887:                                   ; preds = %if.else.882
  %431 = load i32, i32* %ch716, align 4
  %conv888 = sext i32 %431 to i64
  %add889 = add i64 %conv888, 0
  %cmp890 = icmp ule i64 %add889, 127
  br i1 %cmp890, label %cond.true.892, label %cond.false.895

cond.true.892:                                    ; preds = %cond.false.887, %cond.true.883
  %432 = load i32, i32* %ch716, align 4
  %conv893 = trunc i32 %432 to i8
  %433 = load i8*, i8** %p, align 8
  %arrayidx894 = getelementptr inbounds i8, i8* %433, i64 0
  store i8 %conv893, i8* %arrayidx894, align 1
  br label %cond.end.944

cond.false.895:                                   ; preds = %cond.false.887, %cond.true.883
  br i1 true, label %cond.true.896, label %cond.false.900

cond.true.896:                                    ; preds = %cond.false.895
  %434 = load i32, i32* %ch716, align 4
  %add897 = add i32 %434, 0
  %cmp898 = icmp ule i32 %add897, 2047
  br i1 %cmp898, label %cond.true.905, label %cond.false.914

cond.false.900:                                   ; preds = %cond.false.895
  %435 = load i32, i32* %ch716, align 4
  %conv901 = sext i32 %435 to i64
  %add902 = add i64 %conv901, 0
  %cmp903 = icmp ule i64 %add902, 2047
  br i1 %cmp903, label %cond.true.905, label %cond.false.914

cond.true.905:                                    ; preds = %cond.false.900, %cond.true.896
  %436 = load i32, i32* %ch716, align 4
  %shr906 = ashr i32 %436, 6
  %or907 = or i32 192, %shr906
  %conv908 = trunc i32 %or907 to i8
  %437 = load i8*, i8** %p, align 8
  %arrayidx909 = getelementptr inbounds i8, i8* %437, i64 0
  store i8 %conv908, i8* %arrayidx909, align 1
  %438 = load i32, i32* %ch716, align 4
  %and910 = and i32 %438, 63
  %or911 = or i32 128, %and910
  %conv912 = trunc i32 %or911 to i8
  %439 = load i8*, i8** %p, align 8
  %arrayidx913 = getelementptr inbounds i8, i8* %439, i64 1
  store i8 %conv912, i8* %arrayidx913, align 1
  br label %cond.end.942

cond.false.914:                                   ; preds = %cond.false.900, %cond.true.896
  br i1 true, label %cond.true.915, label %cond.false.919

cond.true.915:                                    ; preds = %cond.false.914
  %440 = load i32, i32* %ch716, align 4
  %add916 = add i32 %440, 0
  %cmp917 = icmp ule i32 %add916, 65535
  br i1 %cmp917, label %cond.true.924, label %cond.false.938

cond.false.919:                                   ; preds = %cond.false.914
  %441 = load i32, i32* %ch716, align 4
  %conv920 = sext i32 %441 to i64
  %add921 = add i64 %conv920, 0
  %cmp922 = icmp ule i64 %add921, 65535
  br i1 %cmp922, label %cond.true.924, label %cond.false.938

cond.true.924:                                    ; preds = %cond.false.919, %cond.true.915
  %442 = load i32, i32* %ch716, align 4
  %shr925 = ashr i32 %442, 12
  %or926 = or i32 224, %shr925
  %conv927 = trunc i32 %or926 to i8
  %443 = load i8*, i8** %p, align 8
  %arrayidx928 = getelementptr inbounds i8, i8* %443, i64 0
  store i8 %conv927, i8* %arrayidx928, align 1
  %444 = load i32, i32* %ch716, align 4
  %shr929 = ashr i32 %444, 6
  %and930 = and i32 %shr929, 63
  %or931 = or i32 128, %and930
  %conv932 = trunc i32 %or931 to i8
  %445 = load i8*, i8** %p, align 8
  %arrayidx933 = getelementptr inbounds i8, i8* %445, i64 1
  store i8 %conv932, i8* %arrayidx933, align 1
  %446 = load i32, i32* %ch716, align 4
  %and934 = and i32 %446, 63
  %or935 = or i32 128, %and934
  %conv936 = trunc i32 %or935 to i8
  %447 = load i8*, i8** %p, align 8
  %arrayidx937 = getelementptr inbounds i8, i8* %447, i64 2
  store i8 %conv936, i8* %arrayidx937, align 1
  br label %cond.end.940

cond.false.938:                                   ; preds = %cond.false.919, %cond.true.915
  %448 = load i32, i32* %ch716, align 4
  %449 = load i8*, i8** %p, align 8
  %call939 = call i32 @char_string(i32 %448, i8* %449)
  br label %cond.end.940

cond.end.940:                                     ; preds = %cond.false.938, %cond.true.924
  %cond941 = phi i32 [ 3, %cond.true.924 ], [ %call939, %cond.false.938 ]
  br label %cond.end.942

cond.end.942:                                     ; preds = %cond.end.940, %cond.true.905
  %cond943 = phi i32 [ 2, %cond.true.905 ], [ %cond941, %cond.end.940 ]
  br label %cond.end.944

cond.end.944:                                     ; preds = %cond.end.942, %cond.true.892
  %cond945 = phi i32 [ 1, %cond.true.892 ], [ %cond943, %cond.end.942 ]
  %450 = load i8*, i8** %p, align 8
  %idx.ext946 = sext i32 %cond945 to i64
  %add.ptr947 = getelementptr inbounds i8, i8* %450, i64 %idx.ext946
  store i8* %add.ptr947, i8** %p, align 8
  %451 = load i32, i32* %ch716, align 4
  %cmp948 = icmp sgt i32 %451, 4194175
  br i1 %cmp948, label %if.then.950, label %if.else.951

if.then.950:                                      ; preds = %cond.end.944
  store i8 1, i8* %force_singlebyte, align 1
  br label %if.end.963

if.else.951:                                      ; preds = %cond.end.944
  br i1 true, label %cond.true.952, label %cond.false.956

cond.true.952:                                    ; preds = %if.else.951
  %452 = load i32, i32* %ch716, align 4
  %add953 = add i32 %452, 0
  %cmp954 = icmp ult i32 %add953, 128
  br i1 %cmp954, label %if.end.962, label %if.then.961

cond.false.956:                                   ; preds = %if.else.951
  %453 = load i32, i32* %ch716, align 4
  %conv957 = sext i32 %453 to i64
  %add958 = add i64 %conv957, 0
  %cmp959 = icmp ult i64 %add958, 128
  br i1 %cmp959, label %if.end.962, label %if.then.961

if.then.961:                                      ; preds = %cond.false.956, %cond.true.952
  store i8 1, i8* %force_multibyte, align 1
  br label %if.end.962

if.end.962:                                       ; preds = %if.then.961, %cond.false.956, %cond.true.952
  br label %if.end.963

if.end.963:                                       ; preds = %if.end.962, %if.then.950
  br label %if.end.964

if.end.964:                                       ; preds = %if.end.963, %cond.end.879
  %454 = load i64, i64* %nchars, align 8
  %inc965 = add nsw i64 %454, 1
  store i64 %inc965, i64* %nchars, align 8
  br label %while.cond.721

while.end.966:                                    ; preds = %land.end.728
  %455 = load i32, i32* %ch716, align 4
  %cmp967 = icmp slt i32 %455, 0
  br i1 %cmp967, label %if.then.969, label %if.end.970

if.then.969:                                      ; preds = %while.end.966
  call void @end_of_file_error() #9
  unreachable

if.end.970:                                       ; preds = %while.end.966
  %456 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 240), align 8
  %call971 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp972 = icmp eq i64 %456, %call971
  br i1 %cmp972, label %if.end.982, label %land.lhs.true.974

land.lhs.true.974:                                ; preds = %if.end.970
  %457 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 73), align 8
  %call975 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp976 = icmp eq i64 %457, %call975
  br i1 %cmp976, label %land.lhs.true.978, label %if.end.982

land.lhs.true.978:                                ; preds = %land.lhs.true.974
  %458 = load i8, i8* %cancel, align 1
  %tobool979 = trunc i8 %458 to i1
  br i1 %tobool979, label %if.then.981, label %if.end.982

if.then.981:                                      ; preds = %land.lhs.true.978
  store i64 2, i64* %retval
  br label %return

if.end.982:                                       ; preds = %land.lhs.true.978, %land.lhs.true.974, %if.end.970
  %459 = load i8, i8* %force_multibyte, align 1
  %tobool983 = trunc i8 %459 to i1
  br i1 %tobool983, label %if.end.993, label %land.lhs.true.984

land.lhs.true.984:                                ; preds = %if.end.982
  %460 = load i8, i8* %force_singlebyte, align 1
  %tobool985 = trunc i8 %460 to i1
  br i1 %tobool985, label %if.then.987, label %if.end.993

if.then.987:                                      ; preds = %land.lhs.true.984
  %461 = load i8*, i8** @read_buffer, align 8
  %462 = load i8*, i8** %p, align 8
  %463 = load i8*, i8** @read_buffer, align 8
  %sub.ptr.lhs.cast988 = ptrtoint i8* %462 to i64
  %sub.ptr.rhs.cast989 = ptrtoint i8* %463 to i64
  %sub.ptr.sub990 = sub i64 %sub.ptr.lhs.cast988, %sub.ptr.rhs.cast989
  %call991 = call i64 @str_as_unibyte(i8* %461, i64 %sub.ptr.sub990)
  store i64 %call991, i64* %nchars, align 8
  %464 = load i8*, i8** @read_buffer, align 8
  %465 = load i64, i64* %nchars, align 8
  %add.ptr992 = getelementptr inbounds i8, i8* %464, i64 %465
  store i8* %add.ptr992, i8** %p, align 8
  br label %if.end.993

if.end.993:                                       ; preds = %if.then.987, %land.lhs.true.984, %if.end.982
  %466 = load i8*, i8** @read_buffer, align 8
  %467 = load i64, i64* %nchars, align 8
  %468 = load i8*, i8** %p, align 8
  %469 = load i8*, i8** @read_buffer, align 8
  %sub.ptr.lhs.cast994 = ptrtoint i8* %468 to i64
  %sub.ptr.rhs.cast995 = ptrtoint i8* %469 to i64
  %sub.ptr.sub996 = sub i64 %sub.ptr.lhs.cast994, %sub.ptr.rhs.cast995
  %470 = load i8, i8* %force_multibyte, align 1
  %tobool997 = trunc i8 %470 to i1
  br i1 %tobool997, label %lor.end.1005, label %lor.rhs.999

lor.rhs.999:                                      ; preds = %if.end.993
  %471 = load i8*, i8** %p, align 8
  %472 = load i8*, i8** @read_buffer, align 8
  %sub.ptr.lhs.cast1000 = ptrtoint i8* %471 to i64
  %sub.ptr.rhs.cast1001 = ptrtoint i8* %472 to i64
  %sub.ptr.sub1002 = sub i64 %sub.ptr.lhs.cast1000, %sub.ptr.rhs.cast1001
  %473 = load i64, i64* %nchars, align 8
  %cmp1003 = icmp ne i64 %sub.ptr.sub1002, %473
  br label %lor.end.1005

lor.end.1005:                                     ; preds = %lor.rhs.999, %if.end.993
  %474 = phi i1 [ true, %if.end.993 ], [ %cmp1003, %lor.rhs.999 ]
  %call1006 = call i64 @make_specified_string(i8* %466, i64 %467, i64 %sub.ptr.sub996, i1 zeroext %474)
  store i64 %call1006, i64* %retval
  br label %return

sw.bb.1007:                                       ; preds = %if.end
  %475 = load i64, i64* %readcharfun.addr, align 8
  %call1010 = call i32 @readchar(i64 %475, i8* null)
  store i32 %call1010, i32* %next_char1009, align 4
  %476 = load i64, i64* %readcharfun.addr, align 8
  %477 = load i32, i32* %next_char1009, align 4
  call void @unreadchar(i64 %476, i32 %477)
  %478 = load i32, i32* %next_char1009, align 4
  %cmp1011 = icmp sle i32 %478, 32
  br i1 %cmp1011, label %if.then.1020, label %lor.lhs.false.1013

lor.lhs.false.1013:                               ; preds = %sw.bb.1007
  %479 = load i32, i32* %next_char1009, align 4
  %cmp1014 = icmp slt i32 %479, 128
  br i1 %cmp1014, label %land.lhs.true.1016, label %if.end.1022

land.lhs.true.1016:                               ; preds = %lor.lhs.false.1013
  %480 = load i32, i32* %next_char1009, align 4
  %call1017 = call i8* @strchr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.112, i32 0, i32 0), i32 %480) #10
  %cmp1018 = icmp ne i8* %call1017, null
  br i1 %cmp1018, label %if.then.1020, label %if.end.1022

if.then.1020:                                     ; preds = %land.lhs.true.1016, %sw.bb.1007
  %481 = load i32, i32* %c, align 4
  %482 = load i32*, i32** %pch.addr, align 8
  store i32 %481, i32* %482, align 4
  %call1021 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1021, i64* %retval
  br label %return

if.end.1022:                                      ; preds = %land.lhs.true.1016, %lor.lhs.false.1013
  br label %sw.default

sw.default:                                       ; preds = %if.end, %if.end.1022
  br label %default_label

default_label:                                    ; preds = %sw.default, %if.else.656, %if.then.603
  %483 = load i32, i32* %c, align 4
  %cmp1023 = icmp sle i32 %483, 32
  br i1 %cmp1023, label %if.then.1025, label %if.end.1026

if.then.1025:                                     ; preds = %default_label
  br label %retry

if.end.1026:                                      ; preds = %default_label
  %484 = load i32, i32* %c, align 4
  %cmp1027 = icmp eq i32 %484, 160
  br i1 %cmp1027, label %if.then.1029, label %if.end.1030

if.then.1029:                                     ; preds = %if.end.1026
  br label %retry

if.end.1030:                                      ; preds = %if.end.1026
  br label %read_symbol

read_symbol:                                      ; preds = %if.end.1030, %if.end.455
  %485 = load i8*, i8** @read_buffer, align 8
  store i8* %485, i8** %p1032, align 8
  store i8 0, i8* %quoted, align 1
  %486 = load i64, i64* @readchar_count, align 8
  %sub1035 = sub nsw i64 %486, 1
  store i64 %sub1035, i64* %start_position, align 8
  %487 = load i8*, i8** @read_buffer, align 8
  %488 = load i64, i64* @read_buffer_size, align 8
  %add.ptr1038 = getelementptr inbounds i8, i8* %487, i64 %488
  store i8* %add.ptr1038, i8** %end1037, align 8
  br label %do.body

do.body:                                          ; preds = %land.end.1146, %read_symbol
  %489 = load i8*, i8** %end1037, align 8
  %490 = load i8*, i8** %p1032, align 8
  %sub.ptr.lhs.cast1039 = ptrtoint i8* %489 to i64
  %sub.ptr.rhs.cast1040 = ptrtoint i8* %490 to i64
  %sub.ptr.sub1041 = sub i64 %sub.ptr.lhs.cast1039, %sub.ptr.rhs.cast1040
  %cmp1042 = icmp slt i64 %sub.ptr.sub1041, 5
  br i1 %cmp1042, label %if.then.1044, label %if.end.1052

if.then.1044:                                     ; preds = %do.body
  %491 = load i8*, i8** %p1032, align 8
  %492 = load i8*, i8** @read_buffer, align 8
  %sub.ptr.lhs.cast1047 = ptrtoint i8* %491 to i64
  %sub.ptr.rhs.cast1048 = ptrtoint i8* %492 to i64
  %sub.ptr.sub1049 = sub i64 %sub.ptr.lhs.cast1047, %sub.ptr.rhs.cast1048
  store i64 %sub.ptr.sub1049, i64* %offset1046, align 8
  call void @grow_read_buffer()
  %493 = load i8*, i8** @read_buffer, align 8
  %494 = load i64, i64* %offset1046, align 8
  %add.ptr1050 = getelementptr inbounds i8, i8* %493, i64 %494
  store i8* %add.ptr1050, i8** %p1032, align 8
  %495 = load i8*, i8** @read_buffer, align 8
  %496 = load i64, i64* @read_buffer_size, align 8
  %add.ptr1051 = getelementptr inbounds i8, i8* %495, i64 %496
  store i8* %add.ptr1051, i8** %end1037, align 8
  br label %if.end.1052

if.end.1052:                                      ; preds = %if.then.1044, %do.body
  %497 = load i32, i32* %c, align 4
  %cmp1053 = icmp eq i32 %497, 92
  br i1 %cmp1053, label %if.then.1055, label %if.end.1061

if.then.1055:                                     ; preds = %if.end.1052
  %498 = load i64, i64* %readcharfun.addr, align 8
  %call1056 = call i32 @readchar(i64 %498, i8* null)
  store i32 %call1056, i32* %c, align 4
  %499 = load i32, i32* %c, align 4
  %cmp1057 = icmp eq i32 %499, -1
  br i1 %cmp1057, label %if.then.1059, label %if.end.1060

if.then.1059:                                     ; preds = %if.then.1055
  call void @end_of_file_error() #9
  unreachable

if.end.1060:                                      ; preds = %if.then.1055
  store i8 1, i8* %quoted, align 1
  br label %if.end.1061

if.end.1061:                                      ; preds = %if.end.1060, %if.end.1052
  %500 = load i8, i8* %multibyte, align 1
  %tobool1062 = trunc i8 %500 to i1
  br i1 %tobool1062, label %if.then.1063, label %if.else.1129

if.then.1063:                                     ; preds = %if.end.1061
  br i1 true, label %cond.true.1064, label %cond.false.1068

cond.true.1064:                                   ; preds = %if.then.1063
  %501 = load i32, i32* %c, align 4
  %add1065 = add i32 %501, 0
  %cmp1066 = icmp ule i32 %add1065, 127
  br i1 %cmp1066, label %cond.true.1073, label %cond.false.1076

cond.false.1068:                                  ; preds = %if.then.1063
  %502 = load i32, i32* %c, align 4
  %conv1069 = sext i32 %502 to i64
  %add1070 = add i64 %conv1069, 0
  %cmp1071 = icmp ule i64 %add1070, 127
  br i1 %cmp1071, label %cond.true.1073, label %cond.false.1076

cond.true.1073:                                   ; preds = %cond.false.1068, %cond.true.1064
  %503 = load i32, i32* %c, align 4
  %conv1074 = trunc i32 %503 to i8
  %504 = load i8*, i8** %p1032, align 8
  %arrayidx1075 = getelementptr inbounds i8, i8* %504, i64 0
  store i8 %conv1074, i8* %arrayidx1075, align 1
  br label %cond.end.1125

cond.false.1076:                                  ; preds = %cond.false.1068, %cond.true.1064
  br i1 true, label %cond.true.1077, label %cond.false.1081

cond.true.1077:                                   ; preds = %cond.false.1076
  %505 = load i32, i32* %c, align 4
  %add1078 = add i32 %505, 0
  %cmp1079 = icmp ule i32 %add1078, 2047
  br i1 %cmp1079, label %cond.true.1086, label %cond.false.1095

cond.false.1081:                                  ; preds = %cond.false.1076
  %506 = load i32, i32* %c, align 4
  %conv1082 = sext i32 %506 to i64
  %add1083 = add i64 %conv1082, 0
  %cmp1084 = icmp ule i64 %add1083, 2047
  br i1 %cmp1084, label %cond.true.1086, label %cond.false.1095

cond.true.1086:                                   ; preds = %cond.false.1081, %cond.true.1077
  %507 = load i32, i32* %c, align 4
  %shr1087 = ashr i32 %507, 6
  %or1088 = or i32 192, %shr1087
  %conv1089 = trunc i32 %or1088 to i8
  %508 = load i8*, i8** %p1032, align 8
  %arrayidx1090 = getelementptr inbounds i8, i8* %508, i64 0
  store i8 %conv1089, i8* %arrayidx1090, align 1
  %509 = load i32, i32* %c, align 4
  %and1091 = and i32 %509, 63
  %or1092 = or i32 128, %and1091
  %conv1093 = trunc i32 %or1092 to i8
  %510 = load i8*, i8** %p1032, align 8
  %arrayidx1094 = getelementptr inbounds i8, i8* %510, i64 1
  store i8 %conv1093, i8* %arrayidx1094, align 1
  br label %cond.end.1123

cond.false.1095:                                  ; preds = %cond.false.1081, %cond.true.1077
  br i1 true, label %cond.true.1096, label %cond.false.1100

cond.true.1096:                                   ; preds = %cond.false.1095
  %511 = load i32, i32* %c, align 4
  %add1097 = add i32 %511, 0
  %cmp1098 = icmp ule i32 %add1097, 65535
  br i1 %cmp1098, label %cond.true.1105, label %cond.false.1119

cond.false.1100:                                  ; preds = %cond.false.1095
  %512 = load i32, i32* %c, align 4
  %conv1101 = sext i32 %512 to i64
  %add1102 = add i64 %conv1101, 0
  %cmp1103 = icmp ule i64 %add1102, 65535
  br i1 %cmp1103, label %cond.true.1105, label %cond.false.1119

cond.true.1105:                                   ; preds = %cond.false.1100, %cond.true.1096
  %513 = load i32, i32* %c, align 4
  %shr1106 = ashr i32 %513, 12
  %or1107 = or i32 224, %shr1106
  %conv1108 = trunc i32 %or1107 to i8
  %514 = load i8*, i8** %p1032, align 8
  %arrayidx1109 = getelementptr inbounds i8, i8* %514, i64 0
  store i8 %conv1108, i8* %arrayidx1109, align 1
  %515 = load i32, i32* %c, align 4
  %shr1110 = ashr i32 %515, 6
  %and1111 = and i32 %shr1110, 63
  %or1112 = or i32 128, %and1111
  %conv1113 = trunc i32 %or1112 to i8
  %516 = load i8*, i8** %p1032, align 8
  %arrayidx1114 = getelementptr inbounds i8, i8* %516, i64 1
  store i8 %conv1113, i8* %arrayidx1114, align 1
  %517 = load i32, i32* %c, align 4
  %and1115 = and i32 %517, 63
  %or1116 = or i32 128, %and1115
  %conv1117 = trunc i32 %or1116 to i8
  %518 = load i8*, i8** %p1032, align 8
  %arrayidx1118 = getelementptr inbounds i8, i8* %518, i64 2
  store i8 %conv1117, i8* %arrayidx1118, align 1
  br label %cond.end.1121

cond.false.1119:                                  ; preds = %cond.false.1100, %cond.true.1096
  %519 = load i32, i32* %c, align 4
  %520 = load i8*, i8** %p1032, align 8
  %call1120 = call i32 @char_string(i32 %519, i8* %520)
  br label %cond.end.1121

cond.end.1121:                                    ; preds = %cond.false.1119, %cond.true.1105
  %cond1122 = phi i32 [ 3, %cond.true.1105 ], [ %call1120, %cond.false.1119 ]
  br label %cond.end.1123

cond.end.1123:                                    ; preds = %cond.end.1121, %cond.true.1086
  %cond1124 = phi i32 [ 2, %cond.true.1086 ], [ %cond1122, %cond.end.1121 ]
  br label %cond.end.1125

cond.end.1125:                                    ; preds = %cond.end.1123, %cond.true.1073
  %cond1126 = phi i32 [ 1, %cond.true.1073 ], [ %cond1124, %cond.end.1123 ]
  %521 = load i8*, i8** %p1032, align 8
  %idx.ext1127 = sext i32 %cond1126 to i64
  %add.ptr1128 = getelementptr inbounds i8, i8* %521, i64 %idx.ext1127
  store i8* %add.ptr1128, i8** %p1032, align 8
  br label %if.end.1131

if.else.1129:                                     ; preds = %if.end.1061
  %522 = load i32, i32* %c, align 4
  %conv1130 = trunc i32 %522 to i8
  %523 = load i8*, i8** %p1032, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %523, i32 1
  store i8* %incdec.ptr, i8** %p1032, align 8
  store i8 %conv1130, i8* %523, align 1
  br label %if.end.1131

if.end.1131:                                      ; preds = %if.else.1129, %cond.end.1125
  %524 = load i64, i64* %readcharfun.addr, align 8
  %call1132 = call i32 @readchar(i64 %524, i8* null)
  store i32 %call1132, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.1131
  %525 = load i32, i32* %c, align 4
  %cmp1133 = icmp sgt i32 %525, 32
  br i1 %cmp1133, label %land.lhs.true.1135, label %land.end.1146

land.lhs.true.1135:                               ; preds = %do.cond
  %526 = load i32, i32* %c, align 4
  %cmp1136 = icmp ne i32 %526, 160
  br i1 %cmp1136, label %land.rhs.1138, label %land.end.1146

land.rhs.1138:                                    ; preds = %land.lhs.true.1135
  %527 = load i32, i32* %c, align 4
  %cmp1139 = icmp sge i32 %527, 128
  br i1 %cmp1139, label %lor.end.1145, label %lor.rhs.1141

lor.rhs.1141:                                     ; preds = %land.rhs.1138
  %528 = load i32, i32* %c, align 4
  %call1142 = call i8* @strchr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.108, i32 0, i32 0), i32 %528) #10
  %cmp1143 = icmp eq i8* %call1142, null
  br label %lor.end.1145

lor.end.1145:                                     ; preds = %lor.rhs.1141, %land.rhs.1138
  %529 = phi i1 [ true, %land.rhs.1138 ], [ %cmp1143, %lor.rhs.1141 ]
  br label %land.end.1146

land.end.1146:                                    ; preds = %lor.end.1145, %land.lhs.true.1135, %do.cond
  %530 = phi i1 [ false, %land.lhs.true.1135 ], [ false, %do.cond ], [ %529, %lor.end.1145 ]
  br i1 %530, label %do.body, label %do.end

do.end:                                           ; preds = %land.end.1146
  %531 = load i8*, i8** %p1032, align 8
  %532 = load i8*, i8** %end1037, align 8
  %cmp1147 = icmp eq i8* %531, %532
  br i1 %cmp1147, label %if.then.1149, label %if.end.1157

if.then.1149:                                     ; preds = %do.end
  %533 = load i8*, i8** %p1032, align 8
  %534 = load i8*, i8** @read_buffer, align 8
  %sub.ptr.lhs.cast1152 = ptrtoint i8* %533 to i64
  %sub.ptr.rhs.cast1153 = ptrtoint i8* %534 to i64
  %sub.ptr.sub1154 = sub i64 %sub.ptr.lhs.cast1152, %sub.ptr.rhs.cast1153
  store i64 %sub.ptr.sub1154, i64* %offset1151, align 8
  call void @grow_read_buffer()
  %535 = load i8*, i8** @read_buffer, align 8
  %536 = load i64, i64* %offset1151, align 8
  %add.ptr1155 = getelementptr inbounds i8, i8* %535, i64 %536
  store i8* %add.ptr1155, i8** %p1032, align 8
  %537 = load i8*, i8** @read_buffer, align 8
  %538 = load i64, i64* @read_buffer_size, align 8
  %add.ptr1156 = getelementptr inbounds i8, i8* %537, i64 %538
  store i8* %add.ptr1156, i8** %end1037, align 8
  br label %if.end.1157

if.end.1157:                                      ; preds = %if.then.1149, %do.end
  %539 = load i8*, i8** %p1032, align 8
  store i8 0, i8* %539, align 1
  %540 = load i64, i64* %readcharfun.addr, align 8
  %541 = load i32, i32* %c, align 4
  call void @unreadchar(i64 %540, i32 %541)
  %542 = load i8, i8* %quoted, align 1
  %tobool1158 = trunc i8 %542 to i1
  br i1 %tobool1158, label %if.end.1169, label %land.lhs.true.1159

land.lhs.true.1159:                               ; preds = %if.end.1157
  %543 = load i8, i8* %uninterned_symbol, align 1
  %tobool1160 = trunc i8 %543 to i1
  br i1 %tobool1160, label %if.end.1169, label %if.then.1161

if.then.1161:                                     ; preds = %land.lhs.true.1159
  %544 = load i8*, i8** @read_buffer, align 8
  %call1163 = call i64 @string_to_number(i8* %544, i32 10, i1 zeroext false)
  store i64 %call1163, i64* %result, align 8
  %545 = load i64, i64* %result, align 8
  %call1164 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1165 = icmp eq i64 %545, %call1164
  br i1 %cmp1165, label %if.end.1168, label %if.then.1167

if.then.1167:                                     ; preds = %if.then.1161
  %546 = load i64, i64* %result, align 8
  store i64 %546, i64* %retval
  br label %return

if.end.1168:                                      ; preds = %if.then.1161
  br label %if.end.1169

if.end.1169:                                      ; preds = %if.end.1168, %land.lhs.true.1159, %if.end.1157
  %547 = load i8*, i8** %p1032, align 8
  %548 = load i8*, i8** @read_buffer, align 8
  %sub.ptr.lhs.cast1174 = ptrtoint i8* %547 to i64
  %sub.ptr.rhs.cast1175 = ptrtoint i8* %548 to i64
  %sub.ptr.sub1176 = sub i64 %sub.ptr.lhs.cast1174, %sub.ptr.rhs.cast1175
  store i64 %sub.ptr.sub1176, i64* %nbytes, align 8
  %549 = load i8, i8* %multibyte, align 1
  %tobool1179 = trunc i8 %549 to i1
  br i1 %tobool1179, label %cond.true.1181, label %cond.false.1183

cond.true.1181:                                   ; preds = %if.end.1169
  %550 = load i8*, i8** @read_buffer, align 8
  %551 = load i64, i64* %nbytes, align 8
  %call1182 = call i64 @multibyte_chars_in_text(i8* %550, i64 %551)
  br label %cond.end.1184

cond.false.1183:                                  ; preds = %if.end.1169
  %552 = load i64, i64* %nbytes, align 8
  br label %cond.end.1184

cond.end.1184:                                    ; preds = %cond.false.1183, %cond.true.1181
  %cond1185 = phi i64 [ %call1182, %cond.true.1181 ], [ %552, %cond.false.1183 ]
  store i64 %cond1185, i64* %nchars1178, align 8
  %553 = load i8, i8* %uninterned_symbol, align 1
  %tobool1186 = trunc i8 %553 to i1
  br i1 %tobool1186, label %land.rhs.1188, label %land.end.1192

land.rhs.1188:                                    ; preds = %cond.end.1184
  %554 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 240), align 8
  %call1189 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1190 = icmp eq i64 %554, %call1189
  %lnot = xor i1 %cmp1190, true
  br label %land.end.1192

land.end.1192:                                    ; preds = %land.rhs.1188, %cond.end.1184
  %555 = phi i1 [ false, %cond.end.1184 ], [ %lnot, %land.rhs.1188 ]
  %cond1193 = select i1 %555, i64 (i8*, i64, i64, i1)* @make_pure_string, i64 (i8*, i64, i64, i1)* @make_specified_string
  %556 = load i8*, i8** @read_buffer, align 8
  %557 = load i64, i64* %nchars1178, align 8
  %558 = load i64, i64* %nbytes, align 8
  %559 = load i8, i8* %multibyte, align 1
  %tobool1194 = trunc i8 %559 to i1
  %call1195 = call i64 %cond1193(i8* %556, i64 %557, i64 %558, i1 zeroext %tobool1194)
  store i64 %call1195, i64* %name, align 8
  %560 = load i8, i8* %uninterned_symbol, align 1
  %tobool1196 = trunc i8 %560 to i1
  br i1 %tobool1196, label %cond.true.1198, label %cond.false.1200

cond.true.1198:                                   ; preds = %land.end.1192
  %561 = load i64, i64* %name, align 8
  %call1199 = call i64 @Fmake_symbol(i64 %561)
  br label %cond.end.1203

cond.false.1200:                                  ; preds = %land.end.1192
  %562 = load i64, i64* %name, align 8
  %call1201 = call i64 @builtin_lisp_symbol(i32 0)
  %call1202 = call i64 @Fintern(i64 %562, i64 %call1201)
  br label %cond.end.1203

cond.end.1203:                                    ; preds = %cond.false.1200, %cond.true.1198
  %cond1204 = phi i64 [ %call1199, %cond.true.1198 ], [ %call1202, %cond.false.1200 ]
  store i64 %cond1204, i64* %result1172, align 8
  %563 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 247), align 8
  %call1205 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp1206 = icmp eq i64 %563, %call1205
  br i1 %cmp1206, label %if.then.1211, label %lor.lhs.false.1208

lor.lhs.false.1208:                               ; preds = %cond.end.1203
  %564 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 247), align 8
  %565 = load i64, i64* %readcharfun.addr, align 8
  %cmp1209 = icmp eq i64 %564, %565
  br i1 %cmp1209, label %if.then.1211, label %if.end.1216

if.then.1211:                                     ; preds = %lor.lhs.false.1208, %cond.end.1203
  %566 = load i64, i64* %result1172, align 8
  %567 = load i64, i64* %start_position, align 8
  %shl1212 = shl i64 %567, 2
  %add1213 = add i64 %shl1212, 2
  %call1214 = call i64 @Fcons(i64 %566, i64 %add1213)
  %568 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 246), align 8
  %call1215 = call i64 @Fcons(i64 %call1214, i64 %568)
  store i64 %call1215, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 246), align 8
  br label %if.end.1216

if.end.1216:                                      ; preds = %if.then.1211, %lor.lhs.false.1208
  %569 = load i64, i64* %result1172, align 8
  store i64 %569, i64* %retval
  br label %return

return:                                           ; preds = %if.end.1216, %if.then.1167, %if.then.1020, %lor.end.1005, %if.then.981, %if.then.706, %if.then.673, %if.end.653, %if.else.605, %sw.bb.589, %if.then.572, %if.then.564, %if.then.556, %if.then.542, %if.then.514, %if.then.505, %if.then.459, %if.then.453, %if.then.432, %if.then.428, %if.then.355, %while.end.322, %if.end.282, %if.end.266, %for.end, %if.end.142, %while.end, %sw.bb.4, %sw.bb.2, %sw.bb
  %570 = load i64, i64* %retval
  ret i64 %570
}

; Function Attrs: noreturn nounwind uwtable
define internal void @invalid_syntax(i8* %s) #7 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 571)
  %0 = load i8*, i8** %s.addr, align 8
  %call1 = call i64 @build_string(i8* %0)
  call void @xsignal1(i64 %call, i64 %call1) #9
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare void @XSETCDR(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @read0(i64 %readcharfun) #0 {
entry:
  %readcharfun.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %c = alloca i32, align 4
  store i64 %readcharfun, i64* %readcharfun.addr, align 8
  %0 = load i64, i64* %readcharfun.addr, align 8
  %call = call i64 @read1(i64 %0, i32* %c, i1 zeroext false)
  store i64 %call, i64* %val, align 8
  %1 = load i32, i32* %c, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %val, align 8
  ret i64 %2

if.end:                                           ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 571)
  %3 = load i32, i32* %c, align 4
  %conv = sext i32 %3 to i64
  %shl = shl i64 %conv, 2
  %add = add i64 %shl, 2
  %call2 = call i64 @Fmake_string(i64 6, i64 %add)
  call void @xsignal1(i64 %call1, i64 %call2) #9
  unreachable
}

declare i64 @get_doc_string(i64, i1 zeroext, i1 zeroext) #1

; Function Attrs: noreturn nounwind uwtable
define internal void @end_of_file_error() #7 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 161), align 8
  %call = call zeroext i1 @STRINGP(i64 %0)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 367)
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 161), align 8
  call void @xsignal1(i64 %call1, i64 %1) #9
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 367)
  call void @xsignal0(i64 %call2) #9
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @read_vector(i64 %readcharfun, i1 zeroext %bytecodeflag) #0 {
entry:
  %readcharfun.addr = alloca i64, align 8
  %bytecodeflag.addr = alloca i8, align 1
  %i = alloca i64, align 8
  %size = alloca i64, align 8
  %ptr = alloca i64*, align 8
  %tem = alloca i64, align 8
  %item = alloca i64, align 8
  %vector = alloca i64, align 8
  %otem = alloca %struct.Lisp_Cons*, align 8
  %len = alloca i64, align 8
  %bytestr = alloca i64, align 8
  store i64 %readcharfun, i64* %readcharfun.addr, align 8
  %frombool = zext i1 %bytecodeflag to i8
  store i8 %frombool, i8* %bytecodeflag.addr, align 1
  %0 = load i64, i64* %readcharfun.addr, align 8
  %call = call i64 @read_list(i1 zeroext true, i64 %0)
  store i64 %call, i64* %tem, align 8
  %1 = load i64, i64* %tem, align 8
  %call1 = call i64 @Flength(i64 %1)
  store i64 %call1, i64* %len, align 8
  %2 = load i64, i64* %len, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %call3 = call i64 @Fmake_vector(i64 %2, i64 %call2)
  store i64 %call3, i64* %vector, align 8
  %3 = load i64, i64* %vector, align 8
  %call4 = call i64 @ASIZE(i64 %3)
  store i64 %call4, i64* %size, align 8
  %4 = load i64, i64* %vector, align 8
  %call5 = call %struct.Lisp_Vector* @XVECTOR(i64 %4)
  %contents = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %call5, i32 0, i32 1
  %arraydecay = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i32 0
  store i64* %arraydecay, i64** %ptr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i64, i64* %i, align 8
  %6 = load i64, i64* %size, align 8
  %cmp = icmp slt i64 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i64, i64* %tem, align 8
  %call6 = call i64 @Fcar(i64 %7)
  store i64 %call6, i64* %item, align 8
  %8 = load i8, i8* %bytecodeflag.addr, align 1
  %tobool = trunc i8 %8 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end.58

land.lhs.true:                                    ; preds = %for.body
  %9 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 465), align 1
  %tobool7 = trunc i8 %9 to i1
  br i1 %tobool7, label %if.then, label %if.end.58

if.then:                                          ; preds = %land.lhs.true
  %10 = load i64, i64* %i, align 8
  %cmp8 = icmp eq i64 %10, 1
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %11 = load i64, i64* %item, align 8
  %call10 = call zeroext i1 @STRINGP(i64 %11)
  br i1 %call10, label %if.end, label %if.then.11

if.then.11:                                       ; preds = %if.then.9
  call void (i8*, ...) @error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.113, i32 0, i32 0)) #9
  unreachable

if.end:                                           ; preds = %if.then.9
  %12 = load i64, i64* %vector, align 8
  %13 = load i64, i64* %item, align 8
  call void @ASET(i64 %12, i64 2, i64 %13)
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call12, i64* %item, align 8
  br label %if.end.57

if.else:                                          ; preds = %if.then
  %14 = load i64, i64* %i, align 8
  %cmp13 = icmp eq i64 %14, 2
  br i1 %cmp13, label %if.then.14, label %if.else.35

if.then.14:                                       ; preds = %if.else
  %15 = load i64*, i64** %ptr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %15, i64 2
  %16 = load i64, i64* %arrayidx, align 8
  store i64 %16, i64* %bytestr, align 8
  %17 = load i64, i64* %item, align 8
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp16 = icmp eq i64 %17, %call15
  br i1 %cmp16, label %if.then.17, label %if.end.34

if.then.17:                                       ; preds = %if.then.14
  %18 = load i64, i64* %bytestr, align 8
  %19 = load i64, i64* %bytestr, align 8
  %call18 = call i64 @SBYTES(i64 %19)
  call void @STRING_SET_CHARS(i64 %18, i64 %call18)
  br label %do.body

do.body:                                          ; preds = %if.then.17
  %20 = load i64, i64* %bytestr, align 8
  %call19 = call %struct.Lisp_String* @XSTRING(i64 %20)
  %size20 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %call19, i32 0, i32 0
  %21 = load i64, i64* %size20, align 8
  %cmp21 = icmp eq i64 %21, 0
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body
  %22 = load i64, i64* @empty_unibyte_string, align 8
  store i64 %22, i64* %bytestr, align 8
  br label %if.end.25

if.else.23:                                       ; preds = %do.body
  %23 = load i64, i64* %bytestr, align 8
  %call24 = call %struct.Lisp_String* @XSTRING(i64 %23)
  %size_byte = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %call24, i32 0, i32 1
  store i64 -1, i64* %size_byte, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.23, %if.then.22
  br label %do.end

do.end:                                           ; preds = %if.end.25
  %24 = load i64, i64* %bytestr, align 8
  %25 = load i64, i64* %readcharfun.addr, align 8
  %call26 = call i64 @Fcons(i64 %24, i64 %25)
  %call27 = call i64 @Fread(i64 %call26)
  store i64 %call27, i64* %item, align 8
  %26 = load i64, i64* %item, align 8
  %and = and i64 %26, 7
  %conv = trunc i64 %and to i32
  %cmp28 = icmp eq i32 %conv, 3
  br i1 %cmp28, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %do.end
  call void (i8*, ...) @error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.113, i32 0, i32 0)) #9
  unreachable

if.end.31:                                        ; preds = %do.end
  %27 = load i64, i64* %item, align 8
  %sub = sub nsw i64 %27, 3
  %28 = inttoptr i64 %sub to i8*
  %29 = bitcast i8* %28 to %struct.Lisp_Cons*
  store %struct.Lisp_Cons* %29, %struct.Lisp_Cons** %otem, align 8
  %30 = load i64, i64* %item, align 8
  %sub32 = sub nsw i64 %30, 3
  %31 = inttoptr i64 %sub32 to i8*
  %32 = bitcast i8* %31 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %32, i32 0, i32 0
  %33 = load i64, i64* %car, align 8
  store i64 %33, i64* %bytestr, align 8
  %34 = load i64, i64* %item, align 8
  %sub33 = sub nsw i64 %34, 3
  %35 = inttoptr i64 %sub33 to i8*
  %36 = bitcast i8* %35 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %36, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %37 = load i64, i64* %cdr, align 8
  store i64 %37, i64* %item, align 8
  %38 = load %struct.Lisp_Cons*, %struct.Lisp_Cons** %otem, align 8
  call void @free_cons(%struct.Lisp_Cons* %38)
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.31, %if.then.14
  %39 = load i64, i64* %vector, align 8
  %40 = load i64, i64* %bytestr, align 8
  call void @ASET(i64 %39, i64 1, i64 %40)
  br label %if.end.56

if.else.35:                                       ; preds = %if.else
  %41 = load i64, i64* %i, align 8
  %cmp36 = icmp eq i64 %41, 4
  br i1 %cmp36, label %land.lhs.true.38, label %if.end.55

land.lhs.true.38:                                 ; preds = %if.else.35
  %42 = load i64, i64* %item, align 8
  %call39 = call zeroext i1 @STRINGP(i64 %42)
  br i1 %call39, label %land.lhs.true.41, label %if.end.55

land.lhs.true.41:                                 ; preds = %land.lhs.true.38
  %43 = load i64, i64* %item, align 8
  %call42 = call zeroext i1 @STRING_MULTIBYTE(i64 %43)
  br i1 %call42, label %if.end.55, label %if.then.43

if.then.43:                                       ; preds = %land.lhs.true.41
  %44 = load i64, i64* %readcharfun.addr, align 8
  %call44 = call i64 @builtin_lisp_symbol(i32 484)
  %cmp45 = icmp eq i64 %44, %call44
  br i1 %cmp45, label %if.then.47, label %if.else.52

if.then.47:                                       ; preds = %if.then.43
  %45 = load i64, i64* %item, align 8
  %call48 = call i64 @builtin_lisp_symbol(i32 361)
  %call49 = call i64 @builtin_lisp_symbol(i32 0)
  %call50 = call i64 @builtin_lisp_symbol(i32 0)
  %call51 = call i64 @Fdecode_coding_string(i64 %45, i64 %call48, i64 %call49, i64 %call50)
  store i64 %call51, i64* %item, align 8
  br label %if.end.54

if.else.52:                                       ; preds = %if.then.43
  %46 = load i64, i64* %item, align 8
  %call53 = call i64 @Fstring_as_multibyte(i64 %46)
  store i64 %call53, i64* %item, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.52, %if.then.47
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %land.lhs.true.41, %land.lhs.true.38, %if.else.35
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end.34
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %land.lhs.true, %for.body
  %47 = load i64, i64* %vector, align 8
  %48 = load i64, i64* %i, align 8
  %49 = load i64, i64* %item, align 8
  call void @ASET(i64 %47, i64 %48, i64 %49)
  %50 = load i64, i64* %tem, align 8
  %sub59 = sub nsw i64 %50, 3
  %51 = inttoptr i64 %sub59 to i8*
  %52 = bitcast i8* %51 to %struct.Lisp_Cons*
  store %struct.Lisp_Cons* %52, %struct.Lisp_Cons** %otem, align 8
  %53 = load i64, i64* %tem, align 8
  %call60 = call i64 @Fcdr(i64 %53)
  store i64 %call60, i64* %tem, align 8
  %54 = load %struct.Lisp_Cons*, %struct.Lisp_Cons** %otem, align 8
  call void @free_cons(%struct.Lisp_Cons* %54)
  br label %for.inc

for.inc:                                          ; preds = %if.end.58
  %55 = load i64, i64* %i, align 8
  %inc = add nsw i64 %55, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %56 = load i64, i64* %vector, align 8
  ret i64 %56
}

declare i64 @CAR_SAFE(i64) #1

declare i64 @CDR_SAFE(i64) #1

declare i64 @Fplist_get(i64, i64) #1

declare i64 @Fmake_hash_table(i64, i64*) #1

declare i64 @Fputhash(i64, i64, i64) #1

declare %struct.Lisp_Vector* @XVECTOR(i64) #1

declare i64 @Flength(i64) #1

declare zeroext i1 @RANGED_INTEGERP(i64, i64, i64) #1

declare void @free_cons(%struct.Lisp_Cons*) #1

declare i64 @make_uninit_sub_char_table(i32, i32) #1

declare %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64) #1

declare i64 @bool_vector_bytes(i64) #1

declare i64 @make_uninit_bool_vector(i64) #1

declare i8* @bool_vector_uchar_data(i64) #1

declare void @make_byte_code(%struct.Lisp_Vector*) #1

declare i64 @Fset_text_properties(i64, i64, i64, i64) #1

; Function Attrs: noreturn
declare void @string_overflow() #3

; Function Attrs: nounwind uwtable
define internal void @skip_dyn_eof(i64 %readcharfun) #0 {
entry:
  %readcharfun.addr = alloca i64, align 8
  store i64 %readcharfun, i64* %readcharfun.addr, align 8
  %0 = load i64, i64* %readcharfun.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 486)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %readcharfun.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 484)
  %cmp2 = icmp eq i64 %1, %call1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @block_input()
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @instream, align 8
  %call3 = call i32 @fseek(%struct._IO_FILE* %2, i64 0, i32 2)
  call void @unblock_input()
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %3 = load i64, i64* %readcharfun.addr, align 8
  %call4 = call i32 @readchar(i64 %3, i8* null)
  %cmp5 = icmp sge i32 %call4, 0
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  ret void
}

declare i8* @xrealloc(i8*, i64) #1

declare i64 @ftello(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @skip_dyn_bytes(i64 %readcharfun, i64 %n) #0 {
entry:
  %readcharfun.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %c = alloca i32, align 4
  store i64 %readcharfun, i64* %readcharfun.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %readcharfun.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 486)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %readcharfun.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 484)
  %cmp2 = icmp eq i64 %1, %call1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @block_input()
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @instream, align 8
  %3 = load i64, i64* %n.addr, align 8
  %call3 = call i32 @fseek(%struct._IO_FILE* %2, i64 %3, i32 1)
  call void @unblock_input()
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %land.end, %if.else
  %4 = load i64, i64* %readcharfun.addr, align 8
  %call4 = call i32 @readchar(i64 %4, i8* null)
  store i32 %call4, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %5 = load i32, i32* %c, align 4
  %cmp5 = icmp sge i32 %5, 0
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %6 = load i32, i32* %c, align 4
  %cmp6 = icmp ne i32 %6, 31
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %7 = phi i1 [ false, %do.cond ], [ %cmp6, %land.rhs ]
  br i1 %7, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #5

; Function Attrs: nounwind uwtable
define internal i64 @read_integer(i64 %readcharfun, i64 %radix) #0 {
entry:
  %readcharfun.addr = alloca i64, align 8
  %radix.addr = alloca i64, align 8
  %buf = alloca [67 x i8], align 16
  %valid = alloca i32, align 4
  %p = alloca i8*, align 8
  %c = alloca i32, align 4
  %digit = alloca i32, align 4
  store i64 %readcharfun, i64* %readcharfun.addr, align 8
  store i64 %radix, i64* %radix.addr, align 8
  store i32 -1, i32* %valid, align 4
  %0 = load i64, i64* %radix.addr, align 8
  %cmp = icmp slt i64 %0, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %radix.addr, align 8
  %cmp1 = icmp sgt i64 %1, 36
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %valid, align 4
  br label %if.end.38

if.else:                                          ; preds = %lor.lhs.false
  %arraydecay = getelementptr inbounds [67 x i8], [67 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay, i8** %p, align 8
  %2 = load i64, i64* %readcharfun.addr, align 8
  %call = call i32 @readchar(i64 %2, i8* null)
  store i32 %call, i32* %c, align 4
  %3 = load i32, i32* %c, align 4
  %cmp2 = icmp eq i32 %3, 45
  br i1 %cmp2, label %if.then.5, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %if.else
  %4 = load i32, i32* %c, align 4
  %cmp4 = icmp eq i32 %4, 43
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %lor.lhs.false.3, %if.else
  %5 = load i32, i32* %c, align 4
  %conv = trunc i32 %5 to i8
  %6 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %conv, i8* %6, align 1
  %7 = load i64, i64* %readcharfun.addr, align 8
  %call6 = call i32 @readchar(i64 %7, i8* null)
  store i32 %call6, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %lor.lhs.false.3
  %8 = load i32, i32* %c, align 4
  %cmp7 = icmp eq i32 %8, 48
  br i1 %cmp7, label %if.then.9, label %if.end.15

if.then.9:                                        ; preds = %if.end
  %9 = load i32, i32* %c, align 4
  %conv10 = trunc i32 %9 to i8
  %10 = load i8*, i8** %p, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr11, i8** %p, align 8
  store i8 %conv10, i8* %10, align 1
  store i32 1, i32* %valid, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.9
  %11 = load i64, i64* %readcharfun.addr, align 8
  %call12 = call i32 @readchar(i64 %11, i8* null)
  store i32 %call12, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %12 = load i32, i32* %c, align 4
  %cmp13 = icmp eq i32 %12, 48
  br i1 %cmp13, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.15

if.end.15:                                        ; preds = %do.end, %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.36, %if.end.15
  %13 = load i32, i32* %c, align 4
  %14 = load i64, i64* %radix.addr, align 8
  %conv16 = trunc i64 %14 to i32
  %call17 = call i32 @digit_to_number(i32 %13, i32 %conv16)
  store i32 %call17, i32* %digit, align 4
  %cmp18 = icmp sge i32 %call17, -1
  br i1 %cmp18, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i32, i32* %digit, align 4
  %cmp20 = icmp eq i32 %15, -1
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %while.body
  store i32 0, i32* %valid, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %while.body
  %16 = load i32, i32* %valid, align 4
  %cmp24 = icmp slt i32 %16, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.23
  store i32 1, i32* %valid, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.23
  %17 = load i8*, i8** %p, align 8
  %arraydecay28 = getelementptr inbounds [67 x i8], [67 x i8]* %buf, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay28, i64 67
  %add.ptr29 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %cmp30 = icmp ult i8* %17, %add.ptr29
  br i1 %cmp30, label %if.then.32, label %if.else.35

if.then.32:                                       ; preds = %if.end.27
  %18 = load i32, i32* %c, align 4
  %conv33 = trunc i32 %18 to i8
  %19 = load i8*, i8** %p, align 8
  %incdec.ptr34 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr34, i8** %p, align 8
  store i8 %conv33, i8* %19, align 1
  br label %if.end.36

if.else.35:                                       ; preds = %if.end.27
  store i32 0, i32* %valid, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.35, %if.then.32
  %20 = load i64, i64* %readcharfun.addr, align 8
  %call37 = call i32 @readchar(i64 %20, i8* null)
  store i32 %call37, i32* %c, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %21 = load i64, i64* %readcharfun.addr, align 8
  %22 = load i32, i32* %c, align 4
  call void @unreadchar(i64 %21, i32 %22)
  %23 = load i8*, i8** %p, align 8
  store i8 0, i8* %23, align 1
  br label %if.end.38

if.end.38:                                        ; preds = %while.end, %if.then
  %24 = load i32, i32* %valid, align 4
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.end.43, label %if.then.39

if.then.39:                                       ; preds = %if.end.38
  %arraydecay40 = getelementptr inbounds [67 x i8], [67 x i8]* %buf, i32 0, i32 0
  %25 = load i64, i64* %radix.addr, align 8
  %call41 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.114, i32 0, i32 0), i64 %25) #6
  %arraydecay42 = getelementptr inbounds [67 x i8], [67 x i8]* %buf, i32 0, i32 0
  call void @invalid_syntax(i8* %arraydecay42) #9
  unreachable

if.end.43:                                        ; preds = %if.end.38
  %arraydecay44 = getelementptr inbounds [67 x i8], [67 x i8]* %buf, i32 0, i32 0
  %26 = load i64, i64* %radix.addr, align 8
  %conv45 = trunc i64 %26 to i32
  %call46 = call i64 @string_to_number(i8* %arraydecay44, i32 %conv45, i1 zeroext false)
  ret i64 %call46
}

; Function Attrs: nounwind uwtable
define internal void @substitute_object_in_subtree(i64 %object, i64 %placeholder) #0 {
entry:
  %object.addr = alloca i64, align 8
  %placeholder.addr = alloca i64, align 8
  %check_object = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  store i64 %placeholder, i64* %placeholder.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* @seen_list, align 8
  %0 = load i64, i64* %object.addr, align 8
  %1 = load i64, i64* %placeholder.addr, align 8
  %2 = load i64, i64* %object.addr, align 8
  %call1 = call i64 @substitute_object_recurse(i64 %0, i64 %1, i64 %2)
  store i64 %call1, i64* %check_object, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* @seen_list, align 8
  %3 = load i64, i64* %check_object, align 8
  %4 = load i64, i64* %object.addr, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.115, i32 0, i32 0)) #9
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

declare i64 @Fsetcdr(i64, i64) #1

declare i64 @Fassq(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @read_escape(i64 %readcharfun, i1 zeroext %stringp) #0 {
entry:
  %retval = alloca i32, align 4
  %readcharfun.addr = alloca i64, align 8
  %stringp.addr = alloca i8, align 1
  %c = alloca i32, align 4
  %unicode_hex_count = alloca i32, align 4
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %i133 = alloca i32, align 4
  %count134 = alloca i32, align 4
  %i196 = alloca i32, align 4
  %count197 = alloca i32, align 4
  store i64 %readcharfun, i64* %readcharfun.addr, align 8
  %frombool = zext i1 %stringp to i8
  store i8 %frombool, i8* %stringp.addr, align 1
  %0 = load i64, i64* %readcharfun.addr, align 8
  %call = call i32 @readchar(i64 %0, i8* null)
  store i32 %call, i32* %c, align 4
  store i32 4, i32* %unicode_hex_count, align 4
  %1 = load i32, i32* %c, align 4
  switch i32 %1, label %sw.default [
    i32 -1, label %sw.bb
    i32 97, label %sw.bb.1
    i32 98, label %sw.bb.2
    i32 100, label %sw.bb.3
    i32 101, label %sw.bb.4
    i32 102, label %sw.bb.5
    i32 110, label %sw.bb.6
    i32 114, label %sw.bb.7
    i32 116, label %sw.bb.8
    i32 118, label %sw.bb.9
    i32 10, label %sw.bb.10
    i32 32, label %sw.bb.11
    i32 77, label %sw.bb.12
    i32 83, label %sw.bb.21
    i32 72, label %sw.bb.32
    i32 65, label %sw.bb.43
    i32 115, label %sw.bb.54
    i32 67, label %sw.bb.66
    i32 94, label %sw.bb.71
    i32 48, label %sw.bb.110
    i32 49, label %sw.bb.110
    i32 50, label %sw.bb.110
    i32 51, label %sw.bb.110
    i32 52, label %sw.bb.110
    i32 53, label %sw.bb.110
    i32 54, label %sw.bb.110
    i32 55, label %sw.bb.110
    i32 120, label %sw.bb.132
    i32 85, label %sw.bb.194
    i32 117, label %sw.bb.195
  ]

sw.bb:                                            ; preds = %entry
  call void @end_of_file_error() #9
  unreachable

sw.bb.1:                                          ; preds = %entry
  store i32 7, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i32 8, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i32 127, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  store i32 27, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  store i32 12, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  store i32 10, i32* %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  store i32 13, i32* %retval
  br label %return

sw.bb.8:                                          ; preds = %entry
  store i32 9, i32* %retval
  br label %return

sw.bb.9:                                          ; preds = %entry
  store i32 11, i32* %retval
  br label %return

sw.bb.10:                                         ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

sw.bb.11:                                         ; preds = %entry
  %2 = load i8, i8* %stringp.addr, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.11
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb.11
  store i32 32, i32* %retval
  br label %return

sw.bb.12:                                         ; preds = %entry
  %3 = load i64, i64* %readcharfun.addr, align 8
  %call13 = call i32 @readchar(i64 %3, i8* null)
  store i32 %call13, i32* %c, align 4
  %4 = load i32, i32* %c, align 4
  %cmp = icmp ne i32 %4, 45
  br i1 %cmp, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %sw.bb.12
  call void (i8*, ...) @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.116, i32 0, i32 0)) #9
  unreachable

if.end.15:                                        ; preds = %sw.bb.12
  %5 = load i64, i64* %readcharfun.addr, align 8
  %call16 = call i32 @readchar(i64 %5, i8* null)
  store i32 %call16, i32* %c, align 4
  %6 = load i32, i32* %c, align 4
  %cmp17 = icmp eq i32 %6, 92
  br i1 %cmp17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.15
  %7 = load i64, i64* %readcharfun.addr, align 8
  %call19 = call i32 @read_escape(i64 %7, i1 zeroext false)
  store i32 %call19, i32* %c, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end.15
  %8 = load i32, i32* %c, align 4
  %or = or i32 %8, 134217728
  store i32 %or, i32* %retval
  br label %return

sw.bb.21:                                         ; preds = %entry
  %9 = load i64, i64* %readcharfun.addr, align 8
  %call22 = call i32 @readchar(i64 %9, i8* null)
  store i32 %call22, i32* %c, align 4
  %10 = load i32, i32* %c, align 4
  %cmp23 = icmp ne i32 %10, 45
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %sw.bb.21
  call void (i8*, ...) @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.116, i32 0, i32 0)) #9
  unreachable

if.end.25:                                        ; preds = %sw.bb.21
  %11 = load i64, i64* %readcharfun.addr, align 8
  %call26 = call i32 @readchar(i64 %11, i8* null)
  store i32 %call26, i32* %c, align 4
  %12 = load i32, i32* %c, align 4
  %cmp27 = icmp eq i32 %12, 92
  br i1 %cmp27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.end.25
  %13 = load i64, i64* %readcharfun.addr, align 8
  %call29 = call i32 @read_escape(i64 %13, i1 zeroext false)
  store i32 %call29, i32* %c, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.end.25
  %14 = load i32, i32* %c, align 4
  %or31 = or i32 %14, 33554432
  store i32 %or31, i32* %retval
  br label %return

sw.bb.32:                                         ; preds = %entry
  %15 = load i64, i64* %readcharfun.addr, align 8
  %call33 = call i32 @readchar(i64 %15, i8* null)
  store i32 %call33, i32* %c, align 4
  %16 = load i32, i32* %c, align 4
  %cmp34 = icmp ne i32 %16, 45
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %sw.bb.32
  call void (i8*, ...) @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.116, i32 0, i32 0)) #9
  unreachable

if.end.36:                                        ; preds = %sw.bb.32
  %17 = load i64, i64* %readcharfun.addr, align 8
  %call37 = call i32 @readchar(i64 %17, i8* null)
  store i32 %call37, i32* %c, align 4
  %18 = load i32, i32* %c, align 4
  %cmp38 = icmp eq i32 %18, 92
  br i1 %cmp38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.36
  %19 = load i64, i64* %readcharfun.addr, align 8
  %call40 = call i32 @read_escape(i64 %19, i1 zeroext false)
  store i32 %call40, i32* %c, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.end.36
  %20 = load i32, i32* %c, align 4
  %or42 = or i32 %20, 16777216
  store i32 %or42, i32* %retval
  br label %return

sw.bb.43:                                         ; preds = %entry
  %21 = load i64, i64* %readcharfun.addr, align 8
  %call44 = call i32 @readchar(i64 %21, i8* null)
  store i32 %call44, i32* %c, align 4
  %22 = load i32, i32* %c, align 4
  %cmp45 = icmp ne i32 %22, 45
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %sw.bb.43
  call void (i8*, ...) @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.116, i32 0, i32 0)) #9
  unreachable

if.end.47:                                        ; preds = %sw.bb.43
  %23 = load i64, i64* %readcharfun.addr, align 8
  %call48 = call i32 @readchar(i64 %23, i8* null)
  store i32 %call48, i32* %c, align 4
  %24 = load i32, i32* %c, align 4
  %cmp49 = icmp eq i32 %24, 92
  br i1 %cmp49, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.end.47
  %25 = load i64, i64* %readcharfun.addr, align 8
  %call51 = call i32 @read_escape(i64 %25, i1 zeroext false)
  store i32 %call51, i32* %c, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %if.end.47
  %26 = load i32, i32* %c, align 4
  %or53 = or i32 %26, 4194304
  store i32 %or53, i32* %retval
  br label %return

sw.bb.54:                                         ; preds = %entry
  %27 = load i64, i64* %readcharfun.addr, align 8
  %call55 = call i32 @readchar(i64 %27, i8* null)
  store i32 %call55, i32* %c, align 4
  %28 = load i8, i8* %stringp.addr, align 1
  %tobool56 = trunc i8 %28 to i1
  br i1 %tobool56, label %if.then.58, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.54
  %29 = load i32, i32* %c, align 4
  %cmp57 = icmp ne i32 %29, 45
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %lor.lhs.false, %sw.bb.54
  %30 = load i64, i64* %readcharfun.addr, align 8
  %31 = load i32, i32* %c, align 4
  call void @unreadchar(i64 %30, i32 %31)
  store i32 32, i32* %retval
  br label %return

if.end.59:                                        ; preds = %lor.lhs.false
  %32 = load i64, i64* %readcharfun.addr, align 8
  %call60 = call i32 @readchar(i64 %32, i8* null)
  store i32 %call60, i32* %c, align 4
  %33 = load i32, i32* %c, align 4
  %cmp61 = icmp eq i32 %33, 92
  br i1 %cmp61, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %if.end.59
  %34 = load i64, i64* %readcharfun.addr, align 8
  %call63 = call i32 @read_escape(i64 %34, i1 zeroext false)
  store i32 %call63, i32* %c, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %if.end.59
  %35 = load i32, i32* %c, align 4
  %or65 = or i32 %35, 8388608
  store i32 %or65, i32* %retval
  br label %return

sw.bb.66:                                         ; preds = %entry
  %36 = load i64, i64* %readcharfun.addr, align 8
  %call67 = call i32 @readchar(i64 %36, i8* null)
  store i32 %call67, i32* %c, align 4
  %37 = load i32, i32* %c, align 4
  %cmp68 = icmp ne i32 %37, 45
  br i1 %cmp68, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %sw.bb.66
  call void (i8*, ...) @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.116, i32 0, i32 0)) #9
  unreachable

if.end.70:                                        ; preds = %sw.bb.66
  br label %sw.bb.71

sw.bb.71:                                         ; preds = %entry, %if.end.70
  %38 = load i64, i64* %readcharfun.addr, align 8
  %call72 = call i32 @readchar(i64 %38, i8* null)
  store i32 %call72, i32* %c, align 4
  %39 = load i32, i32* %c, align 4
  %cmp73 = icmp eq i32 %39, 92
  br i1 %cmp73, label %if.then.74, label %if.end.76

if.then.74:                                       ; preds = %sw.bb.71
  %40 = load i64, i64* %readcharfun.addr, align 8
  %call75 = call i32 @read_escape(i64 %40, i1 zeroext false)
  store i32 %call75, i32* %c, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.74, %sw.bb.71
  %41 = load i32, i32* %c, align 4
  %and = and i32 %41, -264241153
  %cmp77 = icmp eq i32 %and, 63
  br i1 %cmp77, label %if.then.78, label %if.else

if.then.78:                                       ; preds = %if.end.76
  %42 = load i32, i32* %c, align 4
  %and79 = and i32 %42, 264241152
  %or80 = or i32 127, %and79
  store i32 %or80, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end.76
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %43 = load i32, i32* %c, align 4
  %and81 = and i32 %43, -264241153
  %add = add i32 %and81, 0
  %cmp82 = icmp ult i32 %add, 256
  br i1 %cmp82, label %if.else.89, label %if.then.87

cond.false:                                       ; preds = %if.else
  %44 = load i32, i32* %c, align 4
  %and83 = and i32 %44, -264241153
  %conv = sext i32 %and83 to i64
  %add84 = add i64 %conv, 0
  %cmp85 = icmp ult i64 %add84, 256
  br i1 %cmp85, label %if.else.89, label %if.then.87

if.then.87:                                       ; preds = %cond.false, %cond.true
  %45 = load i32, i32* %c, align 4
  %or88 = or i32 %45, 67108864
  store i32 %or88, i32* %retval
  br label %return

if.else.89:                                       ; preds = %cond.false, %cond.true
  %46 = load i32, i32* %c, align 4
  %and90 = and i32 %46, 95
  %cmp91 = icmp sge i32 %and90, 65
  br i1 %cmp91, label %land.lhs.true, label %if.else.98

land.lhs.true:                                    ; preds = %if.else.89
  %47 = load i32, i32* %c, align 4
  %and93 = and i32 %47, 95
  %cmp94 = icmp sle i32 %and93, 90
  br i1 %cmp94, label %if.then.96, label %if.else.98

if.then.96:                                       ; preds = %land.lhs.true
  %48 = load i32, i32* %c, align 4
  %and97 = and i32 %48, -97
  store i32 %and97, i32* %retval
  br label %return

if.else.98:                                       ; preds = %land.lhs.true, %if.else.89
  %49 = load i32, i32* %c, align 4
  %and99 = and i32 %49, 127
  %cmp100 = icmp sge i32 %and99, 64
  br i1 %cmp100, label %land.lhs.true.102, label %if.else.108

land.lhs.true.102:                                ; preds = %if.else.98
  %50 = load i32, i32* %c, align 4
  %and103 = and i32 %50, 127
  %cmp104 = icmp sle i32 %and103, 95
  br i1 %cmp104, label %if.then.106, label %if.else.108

if.then.106:                                      ; preds = %land.lhs.true.102
  %51 = load i32, i32* %c, align 4
  %and107 = and i32 %51, -97
  store i32 %and107, i32* %retval
  br label %return

if.else.108:                                      ; preds = %land.lhs.true.102, %if.else.98
  %52 = load i32, i32* %c, align 4
  %or109 = or i32 %52, 67108864
  store i32 %or109, i32* %retval
  br label %return

sw.bb.110:                                        ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %53 = load i32, i32* %c, align 4
  %sub = sub nsw i32 %53, 48
  store i32 %sub, i32* %i, align 4
  store i32 0, i32* %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.123, %sw.bb.110
  %54 = load i32, i32* %count, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %count, align 4
  %cmp111 = icmp slt i32 %inc, 3
  br i1 %cmp111, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %55 = load i64, i64* %readcharfun.addr, align 8
  %call113 = call i32 @readchar(i64 %55, i8* null)
  store i32 %call113, i32* %c, align 4
  %cmp114 = icmp sge i32 %call113, 48
  br i1 %cmp114, label %land.lhs.true.116, label %if.else.122

land.lhs.true.116:                                ; preds = %while.body
  %56 = load i32, i32* %c, align 4
  %cmp117 = icmp sle i32 %56, 55
  br i1 %cmp117, label %if.then.119, label %if.else.122

if.then.119:                                      ; preds = %land.lhs.true.116
  %57 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %57, 8
  store i32 %mul, i32* %i, align 4
  %58 = load i32, i32* %c, align 4
  %sub120 = sub nsw i32 %58, 48
  %59 = load i32, i32* %i, align 4
  %add121 = add nsw i32 %59, %sub120
  store i32 %add121, i32* %i, align 4
  br label %if.end.123

if.else.122:                                      ; preds = %land.lhs.true.116, %while.body
  %60 = load i64, i64* %readcharfun.addr, align 8
  %61 = load i32, i32* %c, align 4
  call void @unreadchar(i64 %60, i32 %61)
  br label %while.end

if.end.123:                                       ; preds = %if.then.119
  br label %while.cond

while.end:                                        ; preds = %if.else.122, %while.cond
  %62 = load i32, i32* %i, align 4
  %cmp124 = icmp sge i32 %62, 128
  br i1 %cmp124, label %land.lhs.true.126, label %if.end.131

land.lhs.true.126:                                ; preds = %while.end
  %63 = load i32, i32* %i, align 4
  %cmp127 = icmp slt i32 %63, 256
  br i1 %cmp127, label %if.then.129, label %if.end.131

if.then.129:                                      ; preds = %land.lhs.true.126
  %64 = load i32, i32* %i, align 4
  %add130 = add nsw i32 %64, 4194048
  store i32 %add130, i32* %i, align 4
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.129, %land.lhs.true.126, %while.end
  %65 = load i32, i32* %i, align 4
  store i32 %65, i32* %retval
  br label %return

sw.bb.132:                                        ; preds = %entry
  store i32 0, i32* %i133, align 4
  store i32 0, i32* %count134, align 4
  br label %while.body.136

while.body.136:                                   ; preds = %sw.bb.132, %if.end.181
  %66 = load i64, i64* %readcharfun.addr, align 8
  %call137 = call i32 @readchar(i64 %66, i8* null)
  store i32 %call137, i32* %c, align 4
  %67 = load i32, i32* %c, align 4
  %cmp138 = icmp sge i32 %67, 48
  br i1 %cmp138, label %land.lhs.true.140, label %if.else.147

land.lhs.true.140:                                ; preds = %while.body.136
  %68 = load i32, i32* %c, align 4
  %cmp141 = icmp sle i32 %68, 57
  br i1 %cmp141, label %if.then.143, label %if.else.147

if.then.143:                                      ; preds = %land.lhs.true.140
  %69 = load i32, i32* %i133, align 4
  %mul144 = mul i32 %69, 16
  store i32 %mul144, i32* %i133, align 4
  %70 = load i32, i32* %c, align 4
  %sub145 = sub nsw i32 %70, 48
  %71 = load i32, i32* %i133, align 4
  %add146 = add i32 %71, %sub145
  store i32 %add146, i32* %i133, align 4
  br label %if.end.177

if.else.147:                                      ; preds = %land.lhs.true.140, %while.body.136
  %72 = load i32, i32* %c, align 4
  %cmp148 = icmp sge i32 %72, 97
  br i1 %cmp148, label %land.lhs.true.150, label %lor.lhs.false.153

land.lhs.true.150:                                ; preds = %if.else.147
  %73 = load i32, i32* %c, align 4
  %cmp151 = icmp sle i32 %73, 102
  br i1 %cmp151, label %if.then.159, label %lor.lhs.false.153

lor.lhs.false.153:                                ; preds = %land.lhs.true.150, %if.else.147
  %74 = load i32, i32* %c, align 4
  %cmp154 = icmp sge i32 %74, 65
  br i1 %cmp154, label %land.lhs.true.156, label %if.else.175

land.lhs.true.156:                                ; preds = %lor.lhs.false.153
  %75 = load i32, i32* %c, align 4
  %cmp157 = icmp sle i32 %75, 70
  br i1 %cmp157, label %if.then.159, label %if.else.175

if.then.159:                                      ; preds = %land.lhs.true.156, %land.lhs.true.150
  %76 = load i32, i32* %i133, align 4
  %mul160 = mul i32 %76, 16
  store i32 %mul160, i32* %i133, align 4
  %77 = load i32, i32* %c, align 4
  %cmp161 = icmp sge i32 %77, 97
  br i1 %cmp161, label %land.lhs.true.163, label %if.else.170

land.lhs.true.163:                                ; preds = %if.then.159
  %78 = load i32, i32* %c, align 4
  %cmp164 = icmp sle i32 %78, 102
  br i1 %cmp164, label %if.then.166, label %if.else.170

if.then.166:                                      ; preds = %land.lhs.true.163
  %79 = load i32, i32* %c, align 4
  %sub167 = sub nsw i32 %79, 97
  %add168 = add nsw i32 %sub167, 10
  %80 = load i32, i32* %i133, align 4
  %add169 = add i32 %80, %add168
  store i32 %add169, i32* %i133, align 4
  br label %if.end.174

if.else.170:                                      ; preds = %land.lhs.true.163, %if.then.159
  %81 = load i32, i32* %c, align 4
  %sub171 = sub nsw i32 %81, 65
  %add172 = add nsw i32 %sub171, 10
  %82 = load i32, i32* %i133, align 4
  %add173 = add i32 %82, %add172
  store i32 %add173, i32* %i133, align 4
  br label %if.end.174

if.end.174:                                       ; preds = %if.else.170, %if.then.166
  br label %if.end.176

if.else.175:                                      ; preds = %land.lhs.true.156, %lor.lhs.false.153
  %83 = load i64, i64* %readcharfun.addr, align 8
  %84 = load i32, i32* %c, align 4
  call void @unreadchar(i64 %83, i32 %84)
  br label %while.end.185

if.end.176:                                       ; preds = %if.end.174
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.176, %if.then.143
  %85 = load i32, i32* %i133, align 4
  %cmp178 = icmp ult i32 268435455, %85
  br i1 %cmp178, label %if.then.180, label %if.end.181

if.then.180:                                      ; preds = %if.end.177
  %86 = load i32, i32* %i133, align 4
  call void (i8*, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.117, i32 0, i32 0), i32 %86) #9
  unreachable

if.end.181:                                       ; preds = %if.end.177
  %87 = load i32, i32* %count134, align 4
  %cmp182 = icmp slt i32 %87, 3
  %conv183 = zext i1 %cmp182 to i32
  %88 = load i32, i32* %count134, align 4
  %add184 = add nsw i32 %88, %conv183
  store i32 %add184, i32* %count134, align 4
  br label %while.body.136

while.end.185:                                    ; preds = %if.else.175
  %89 = load i32, i32* %count134, align 4
  %cmp186 = icmp slt i32 %89, 3
  br i1 %cmp186, label %land.lhs.true.188, label %if.end.193

land.lhs.true.188:                                ; preds = %while.end.185
  %90 = load i32, i32* %i133, align 4
  %cmp189 = icmp uge i32 %90, 128
  br i1 %cmp189, label %if.then.191, label %if.end.193

if.then.191:                                      ; preds = %land.lhs.true.188
  %91 = load i32, i32* %i133, align 4
  %add192 = add i32 %91, 4194048
  store i32 %add192, i32* %retval
  br label %return

if.end.193:                                       ; preds = %land.lhs.true.188, %while.end.185
  %92 = load i32, i32* %i133, align 4
  store i32 %92, i32* %retval
  br label %return

sw.bb.194:                                        ; preds = %entry
  store i32 8, i32* %unicode_hex_count, align 4
  br label %sw.bb.195

sw.bb.195:                                        ; preds = %entry, %sw.bb.194
  store i32 0, i32* %i196, align 4
  store i32 0, i32* %count197, align 4
  br label %while.cond.198

while.cond.198:                                   ; preds = %if.end.237, %sw.bb.195
  %93 = load i32, i32* %count197, align 4
  %inc199 = add nsw i32 %93, 1
  store i32 %inc199, i32* %count197, align 4
  %94 = load i32, i32* %unicode_hex_count, align 4
  %cmp200 = icmp sle i32 %inc199, %94
  br i1 %cmp200, label %while.body.202, label %while.end.238

while.body.202:                                   ; preds = %while.cond.198
  %95 = load i64, i64* %readcharfun.addr, align 8
  %call203 = call i32 @readchar(i64 %95, i8* null)
  store i32 %call203, i32* %c, align 4
  %96 = load i32, i32* %c, align 4
  %cmp204 = icmp sge i32 %96, 48
  br i1 %cmp204, label %land.lhs.true.206, label %if.else.212

land.lhs.true.206:                                ; preds = %while.body.202
  %97 = load i32, i32* %c, align 4
  %cmp207 = icmp sle i32 %97, 57
  br i1 %cmp207, label %if.then.209, label %if.else.212

if.then.209:                                      ; preds = %land.lhs.true.206
  %98 = load i32, i32* %i196, align 4
  %shl = shl i32 %98, 4
  %99 = load i32, i32* %c, align 4
  %sub210 = sub nsw i32 %99, 48
  %add211 = add i32 %shl, %sub210
  store i32 %add211, i32* %i196, align 4
  br label %if.end.237

if.else.212:                                      ; preds = %land.lhs.true.206, %while.body.202
  %100 = load i32, i32* %c, align 4
  %cmp213 = icmp sge i32 %100, 97
  br i1 %cmp213, label %land.lhs.true.215, label %if.else.223

land.lhs.true.215:                                ; preds = %if.else.212
  %101 = load i32, i32* %c, align 4
  %cmp216 = icmp sle i32 %101, 102
  br i1 %cmp216, label %if.then.218, label %if.else.223

if.then.218:                                      ; preds = %land.lhs.true.215
  %102 = load i32, i32* %i196, align 4
  %shl219 = shl i32 %102, 4
  %103 = load i32, i32* %c, align 4
  %sub220 = sub nsw i32 %103, 97
  %add221 = add i32 %shl219, %sub220
  %add222 = add i32 %add221, 10
  store i32 %add222, i32* %i196, align 4
  br label %if.end.236

if.else.223:                                      ; preds = %land.lhs.true.215, %if.else.212
  %104 = load i32, i32* %c, align 4
  %cmp224 = icmp sge i32 %104, 65
  br i1 %cmp224, label %land.lhs.true.226, label %if.else.234

land.lhs.true.226:                                ; preds = %if.else.223
  %105 = load i32, i32* %c, align 4
  %cmp227 = icmp sle i32 %105, 70
  br i1 %cmp227, label %if.then.229, label %if.else.234

if.then.229:                                      ; preds = %land.lhs.true.226
  %106 = load i32, i32* %i196, align 4
  %shl230 = shl i32 %106, 4
  %107 = load i32, i32* %c, align 4
  %sub231 = sub nsw i32 %107, 65
  %add232 = add i32 %shl230, %sub231
  %add233 = add i32 %add232, 10
  store i32 %add233, i32* %i196, align 4
  br label %if.end.235

if.else.234:                                      ; preds = %land.lhs.true.226, %if.else.223
  call void (i8*, ...) @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.118, i32 0, i32 0)) #9
  unreachable

if.end.235:                                       ; preds = %if.then.229
  br label %if.end.236

if.end.236:                                       ; preds = %if.end.235, %if.then.218
  br label %if.end.237

if.end.237:                                       ; preds = %if.end.236, %if.then.209
  br label %while.cond.198

while.end.238:                                    ; preds = %while.cond.198
  %108 = load i32, i32* %i196, align 4
  %cmp239 = icmp ugt i32 %108, 1114111
  br i1 %cmp239, label %if.then.241, label %if.end.242

if.then.241:                                      ; preds = %while.end.238
  %109 = load i32, i32* %i196, align 4
  call void (i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.119, i32 0, i32 0), i32 %109) #9
  unreachable

if.end.242:                                       ; preds = %while.end.238
  %110 = load i32, i32* %i196, align 4
  store i32 %110, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  %111 = load i32, i32* %c, align 4
  store i32 %111, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %if.end.242, %if.end.193, %if.then.191, %if.end.131, %if.else.108, %if.then.106, %if.then.96, %if.then.87, %if.then.78, %if.end.64, %if.then.58, %if.end.52, %if.end.41, %if.end.30, %if.end.20, %if.end, %if.then, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1
  %112 = load i32, i32* %retval
  ret i32 %112
}

; Function Attrs: nounwind uwtable
define internal void @grow_read_buffer() #0 {
entry:
  %0 = load i8*, i8** @read_buffer, align 8
  %call = call i8* @xpalloc(i8* %0, i64* @read_buffer_size, i64 5, i64 -1, i64 1)
  store i8* %call, i8** @read_buffer, align 8
  ret void
}

declare i32 @char_string(i32, i8*) #1

declare i64 @str_as_unibyte(i8*, i64) #1

declare i64 @make_specified_string(i8*, i64, i64, i1 zeroext) #1

declare i64 @multibyte_chars_in_text(i8*, i64) #1

declare i64 @make_pure_string(i8*, i64, i64, i1 zeroext) #1

; Function Attrs: noreturn
declare void @xsignal0(i64) #3

declare void @STRING_SET_CHARS(i64, i64) #1

declare %struct.Lisp_String* @XSTRING(i64) #1

declare i64 @Fdecode_coding_string(i64, i64, i64, i64) #1

declare i64 @Fstring_as_multibyte(i64) #1

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

; Function Attrs: nounwind uwtable
define internal i64 @substitute_object_recurse(i64 %object, i64 %placeholder, i64 %subtree) #0 {
entry:
  %retval = alloca i64, align 8
  %object.addr = alloca i64, align 8
  %placeholder.addr = alloca i64, align 8
  %subtree.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %length = alloca i64, align 8
  %old_value = alloca i64, align 8
  %true_value = alloca i64, align 8
  %old_value48 = alloca i64, align 8
  %true_value49 = alloca i64, align 8
  %old_value57 = alloca i64, align 8
  %true_value59 = alloca i64, align 8
  %root_interval = alloca %struct.interval*, align 8
  %arg = alloca i64, align 8
  %.compoundliteral = alloca %union.Aligned_Cons, align 8
  store i64 %object, i64* %object.addr, align 8
  store i64 %placeholder, i64* %placeholder.addr, align 8
  store i64 %subtree, i64* %subtree.addr, align 8
  %0 = load i64, i64* %placeholder.addr, align 8
  %1 = load i64, i64* %subtree.addr, align 8
  %cmp = icmp eq i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %object.addr, align 8
  store i64 %2, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %3 = load i64, i64* %subtree.addr, align 8
  %4 = load i64, i64* @seen_list, align 8
  %call1 = call i64 @Fmemq(i64 %3, i64 %4)
  %cmp2 = icmp eq i64 %call, %call1
  br i1 %cmp2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %5 = load i64, i64* %subtree.addr, align 8
  store i64 %5, i64* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %6 = load i64, i64* %subtree.addr, align 8
  %7 = load i64, i64* @read_objects, align 8
  %call6 = call i64 @Frassq(i64 %6, i64 %7)
  %cmp7 = icmp eq i64 %call5, %call6
  br i1 %cmp7, label %if.end.10, label %if.then.8

if.then.8:                                        ; preds = %if.end.4
  %8 = load i64, i64* %subtree.addr, align 8
  %9 = load i64, i64* @seen_list, align 8
  %call9 = call i64 @Fcons(i64 %8, i64 %9)
  store i64 %call9, i64* @seen_list, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.4
  %10 = load i64, i64* %subtree.addr, align 8
  %and = and i64 %10, 7
  %conv = trunc i64 %and to i32
  switch i32 %conv, label %sw.default [
    i32 5, label %sw.bb
    i32 3, label %sw.bb.46
    i32 4, label %sw.bb.66
  ]

sw.bb:                                            ; preds = %if.end.10
  store i64 0, i64* %i, align 8
  store i64 0, i64* %length, align 8
  %11 = load i64, i64* %subtree.addr, align 8
  %call11 = call zeroext i1 @BOOL_VECTOR_P(i64 %11)
  br i1 %call11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %sw.bb
  %12 = load i64, i64* %subtree.addr, align 8
  store i64 %12, i64* %retval
  br label %return

if.else:                                          ; preds = %sw.bb
  %13 = load i64, i64* %subtree.addr, align 8
  %call13 = call zeroext i1 @CHAR_TABLE_P(i64 %13)
  br i1 %call13, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %14 = load i64, i64* %subtree.addr, align 8
  %call15 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %14)
  br i1 %call15, label %if.then.23, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false
  %15 = load i64, i64* %subtree.addr, align 8
  %call18 = call zeroext i1 @COMPILEDP(i64 %15)
  br i1 %call18, label %if.then.23, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.17
  %16 = load i64, i64* %subtree.addr, align 8
  %call21 = call zeroext i1 @HASH_TABLE_P(i64 %16)
  br i1 %call21, label %if.then.23, label %if.else.26

if.then.23:                                       ; preds = %lor.lhs.false.20, %lor.lhs.false.17, %lor.lhs.false, %if.else
  %17 = load i64, i64* %subtree.addr, align 8
  %call24 = call i64 @ASIZE(i64 %17)
  %and25 = and i64 %call24, 4095
  store i64 %and25, i64* %length, align 8
  br label %if.end.33

if.else.26:                                       ; preds = %lor.lhs.false.20
  %18 = load i64, i64* %subtree.addr, align 8
  %call27 = call zeroext i1 @VECTORP(i64 %18)
  br i1 %call27, label %if.then.28, label %if.else.30

if.then.28:                                       ; preds = %if.else.26
  %19 = load i64, i64* %subtree.addr, align 8
  %call29 = call i64 @ASIZE(i64 %19)
  store i64 %call29, i64* %length, align 8
  br label %if.end.32

if.else.30:                                       ; preds = %if.else.26
  %call31 = call i64 @builtin_lisp_symbol(i32 844)
  %20 = load i64, i64* %subtree.addr, align 8
  %21 = call i64 @wrong_type_argument(i64 %call31, i64 %20) #9
  unreachable

if.end.32:                                        ; preds = %if.then.28
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.23
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33
  %22 = load i64, i64* %subtree.addr, align 8
  %call35 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %22)
  br i1 %call35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.34
  store i64 2, i64* %i, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.34
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.37
  %23 = load i64, i64* %i, align 8
  %24 = load i64, i64* %length, align 8
  %cmp38 = icmp slt i64 %23, %24
  br i1 %cmp38, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %25 = load i64, i64* %subtree.addr, align 8
  %26 = load i64, i64* %i, align 8
  %call40 = call i64 @AREF(i64 %25, i64 %26)
  store i64 %call40, i64* %old_value, align 8
  %27 = load i64, i64* %object.addr, align 8
  %28 = load i64, i64* %placeholder.addr, align 8
  %29 = load i64, i64* %old_value, align 8
  %call41 = call i64 @substitute_object_recurse(i64 %27, i64 %28, i64 %29)
  store i64 %call41, i64* %true_value, align 8
  %30 = load i64, i64* %old_value, align 8
  %31 = load i64, i64* %true_value, align 8
  %cmp42 = icmp eq i64 %30, %31
  br i1 %cmp42, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %do.body
  %32 = load i64, i64* %subtree.addr, align 8
  %33 = load i64, i64* %i, align 8
  %34 = load i64, i64* %true_value, align 8
  call void @ASET(i64 %32, i64 %33, i64 %34)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.45
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %35 = load i64, i64* %i, align 8
  %inc = add nsw i64 %35, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load i64, i64* %subtree.addr, align 8
  store i64 %36, i64* %retval
  br label %return

sw.bb.46:                                         ; preds = %if.end.10
  br label %do.body.47

do.body.47:                                       ; preds = %sw.bb.46
  %37 = load i64, i64* %subtree.addr, align 8
  %sub = sub nsw i64 %37, 3
  %38 = inttoptr i64 %sub to i8*
  %39 = bitcast i8* %38 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %39, i32 0, i32 0
  %40 = load i64, i64* %car, align 8
  store i64 %40, i64* %old_value48, align 8
  %41 = load i64, i64* %object.addr, align 8
  %42 = load i64, i64* %placeholder.addr, align 8
  %43 = load i64, i64* %old_value48, align 8
  %call50 = call i64 @substitute_object_recurse(i64 %41, i64 %42, i64 %43)
  store i64 %call50, i64* %true_value49, align 8
  %44 = load i64, i64* %old_value48, align 8
  %45 = load i64, i64* %true_value49, align 8
  %cmp51 = icmp eq i64 %44, %45
  br i1 %cmp51, label %if.end.54, label %if.then.53

if.then.53:                                       ; preds = %do.body.47
  %46 = load i64, i64* %subtree.addr, align 8
  %47 = load i64, i64* %true_value49, align 8
  call void @XSETCAR(i64 %46, i64 %47)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %do.body.47
  br label %do.end.55

do.end.55:                                        ; preds = %if.end.54
  br label %do.body.56

do.body.56:                                       ; preds = %do.end.55
  %48 = load i64, i64* %subtree.addr, align 8
  %sub58 = sub nsw i64 %48, 3
  %49 = inttoptr i64 %sub58 to i8*
  %50 = bitcast i8* %49 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %50, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %51 = load i64, i64* %cdr, align 8
  store i64 %51, i64* %old_value57, align 8
  %52 = load i64, i64* %object.addr, align 8
  %53 = load i64, i64* %placeholder.addr, align 8
  %54 = load i64, i64* %old_value57, align 8
  %call60 = call i64 @substitute_object_recurse(i64 %52, i64 %53, i64 %54)
  store i64 %call60, i64* %true_value59, align 8
  %55 = load i64, i64* %old_value57, align 8
  %56 = load i64, i64* %true_value59, align 8
  %cmp61 = icmp eq i64 %55, %56
  br i1 %cmp61, label %if.end.64, label %if.then.63

if.then.63:                                       ; preds = %do.body.56
  %57 = load i64, i64* %subtree.addr, align 8
  %58 = load i64, i64* %true_value59, align 8
  call void @XSETCDR(i64 %57, i64 %58)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %do.body.56
  br label %do.end.65

do.end.65:                                        ; preds = %if.end.64
  %59 = load i64, i64* %subtree.addr, align 8
  store i64 %59, i64* %retval
  br label %return

sw.bb.66:                                         ; preds = %if.end.10
  %60 = load i64, i64* %subtree.addr, align 8
  %call67 = call %struct.interval* @string_intervals(i64 %60)
  store %struct.interval* %call67, %struct.interval** %root_interval, align 8
  %s = bitcast %union.Aligned_Cons* %.compoundliteral to %struct.Lisp_Cons*
  %car68 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s, i32 0, i32 0
  %61 = load i64, i64* %object.addr, align 8
  store i64 %61, i64* %car68, align 8
  %u69 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s, i32 0, i32 1
  %cdr70 = bitcast %union.anon* %u69 to i64*
  %62 = load i64, i64* %placeholder.addr, align 8
  store i64 %62, i64* %cdr70, align 8
  %s71 = bitcast %union.Aligned_Cons* %.compoundliteral to %struct.Lisp_Cons*
  %63 = bitcast %struct.Lisp_Cons* %s71 to i8*
  %call72 = call i64 @make_lisp_ptr(i8* %63, i32 3)
  store i64 %call72, i64* %arg, align 8
  %64 = load %struct.interval*, %struct.interval** %root_interval, align 8
  %65 = load i64, i64* %arg, align 8
  call void @traverse_intervals_noorder(%struct.interval* %64, void (%struct.interval*, i64)* @substitute_in_interval, i64 %65)
  %66 = load i64, i64* %subtree.addr, align 8
  store i64 %66, i64* %retval
  br label %return

sw.default:                                       ; preds = %if.end.10
  %67 = load i64, i64* %subtree.addr, align 8
  store i64 %67, i64* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.66, %do.end.65, %for.end, %if.then.12, %if.then.3, %if.then
  %68 = load i64, i64* %retval
  ret i64 %68
}

declare i64 @Frassq(i64, i64) #1

declare zeroext i1 @BOOL_VECTOR_P(i64) #1

declare zeroext i1 @CHAR_TABLE_P(i64) #1

declare zeroext i1 @SUB_CHAR_TABLE_P(i64) #1

declare zeroext i1 @COMPILEDP(i64) #1

declare zeroext i1 @HASH_TABLE_P(i64) #1

declare void @XSETCAR(i64, i64) #1

declare %struct.interval* @string_intervals(i64) #1

declare void @traverse_intervals_noorder(%struct.interval*, void (%struct.interval*, i64)*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @substitute_in_interval(%struct.interval* %interval, i64 %arg) #0 {
entry:
  %interval.addr = alloca %struct.interval*, align 8
  %arg.addr = alloca i64, align 8
  %object = alloca i64, align 8
  %placeholder = alloca i64, align 8
  %old_value = alloca i64, align 8
  %true_value = alloca i64, align 8
  store %struct.interval* %interval, %struct.interval** %interval.addr, align 8
  store i64 %arg, i64* %arg.addr, align 8
  %0 = load i64, i64* %arg.addr, align 8
  %call = call i64 @Fcar(i64 %0)
  store i64 %call, i64* %object, align 8
  %1 = load i64, i64* %arg.addr, align 8
  %call1 = call i64 @Fcdr(i64 %1)
  store i64 %call1, i64* %placeholder, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %plist = getelementptr inbounds %struct.interval, %struct.interval* %2, i32 0, i32 6
  %3 = load i64, i64* %plist, align 8
  store i64 %3, i64* %old_value, align 8
  %4 = load i64, i64* %object, align 8
  %5 = load i64, i64* %placeholder, align 8
  %6 = load i64, i64* %old_value, align 8
  %call2 = call i64 @substitute_object_recurse(i64 %4, i64 %5, i64 %6)
  store i64 %call2, i64* %true_value, align 8
  %7 = load i64, i64* %old_value, align 8
  %8 = load i64, i64* %true_value, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %9 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %10 = load i64, i64* %true_value, align 8
  call void @set_interval_plist(%struct.interval* %9, i64 %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  ret void
}

declare void @set_interval_plist(%struct.interval*, i64) #1

declare i8* @xpalloc(i8*, i64*, i64, i64, i64) #1

declare i64 @Fmake_string(i64, i64) #1

declare i64 @call2(i64, i64, i64) #1

declare i64 @Fmember(i64, i64) #1

declare i64 @Fsetcar(i64, i64) #1

declare void @validate_subarray(i64, i64, i64, i64, i64*, i64*) #1

declare i64* @aref_addr(i64, i64) #1

declare void @init_symbol(i64, i64) #1

declare i64 @Fdirectory_file_name(i64) #1

declare zeroext i1 @file_accessible_directory_p(i64) #1

declare i64 @Ffile_accessible_directory_p(i64) #1

declare i64 @Ffile_exists_p(i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { noreturn }
attributes #10 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
