; ModuleID = './MultiSource.Benchmarks.MiBench/79.consumer-typeset.z36.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FILE_POS = type { i8, i8, i16, i32 }
%struct.trie_rec = type { i32, i32, [256 x i8], i16*, i32, i32, i8*, i32, i32 }
%union.rec = type { %struct.head_type }
%struct.head_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.13, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i32 }
%struct.LIST = type { %union.rec*, %union.rec* }
%union.FIRST_UNION = type { %struct.FILE_POS }
%union.SECOND_UNION = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%union.THIRD_UNION = type { %struct._IO_FILE*, [8 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.FOURTH_UNION = type { %struct.STYLE }
%struct.STYLE = type { %union.anon, %union.anon.10, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.10 = type { %struct.GAP }
%union.anon.13 = type { %union.rec* }
%struct.font_rec = type { %struct.metrics*, i8*, i16*, %struct.composite_rec*, i32, %union.rec*, %union.rec*, i16, i16, i16*, i8*, i8*, i16* }
%struct.metrics = type { i16, i16, i16, i16, i16 }
%struct.composite_rec = type { i8, i16, i16 }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon = type { i8, i8, i32 }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, %union.rec*, %union.rec* }
%struct.anon.0 = type { i8, i8, i8 }

@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"ReadHyphTable: lnum <= 0!\00", align 1
@HyphTables = internal global [64 x %struct.trie_rec*] zeroinitializer, align 16
@TriedFile = internal global [64 x i32] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [15 x i8] c"ReadHyphTable!\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Hyphenate: type(x) != ACAT!\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"no current language for word %s\00", align 1
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@xx_link = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"0ch\00", align 1
@finfo = external global %struct.font_rec*, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"TrieRead: fname!\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c".lp\00", align 1
@InitializeAll = external global i32, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c".lh\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"cannot open hyphenation file %s\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Lout hyphenation information\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Lout hyphenation placeholder\0A\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"header line of hyphenation file %s missing\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%s%n\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"Classes:\00", align 1
@.str.16 = private unnamed_addr constant [47 x i8] c"Classes heading of hyphenation file %s missing\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"Exceptions:\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"Patterns:\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"LengthLimit:\00", align 1
@.str.20 = private unnamed_addr constant [48 x i8] c"hyphenation file %s%s is too large (at line %d)\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.22 = private unnamed_addr constant [51 x i8] c"bad LengthLimit in hyphenation file %s%s (line %d)\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"TrieRead: state\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"format error in hyphenation file %s\00", align 1
@.str.25 = private unnamed_addr constant [55 x i8] c"run out of memory while constructing hyphenation table\00", align 1
@tex_codes = internal global [138 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.162, i32 0, i32 0)], align 16
@.str.26 = private unnamed_addr constant [58 x i8] c"in hyphenation file %s, unknown escape sequence (line %d)\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"Agrave\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"`A\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"Aacute\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"'A\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"\C1\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"Acircumflex\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"^A\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"\C2\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"Atilde\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"~A\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"\C3\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"Adieresis\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"\22A\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"\C4\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"agrave\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"`a\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"\E0\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"aacute\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"'a\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"\E1\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"acircumflex\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"^a\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"\E2\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"atilde\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"~a\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"\E3\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"adieresis\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"\22a\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"\E4\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"ccedilla\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"cc\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"\E7\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"Egrave\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"`E\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"\C8\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"Eacute\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"'E\00", align 1
@.str.65 = private unnamed_addr constant [2 x i8] c"\C9\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"Ecircumflex\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"^E\00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c"\CA\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"Edieresis\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"\22E\00", align 1
@.str.71 = private unnamed_addr constant [2 x i8] c"\CB\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"egrave\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"`e\00", align 1
@.str.74 = private unnamed_addr constant [2 x i8] c"\E8\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"eacute\00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c"'e\00", align 1
@.str.77 = private unnamed_addr constant [2 x i8] c"\E9\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"ecircumflex\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"^e\00", align 1
@.str.80 = private unnamed_addr constant [2 x i8] c"\EA\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"edieresis\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"\22e\00", align 1
@.str.83 = private unnamed_addr constant [2 x i8] c"\EB\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"Igrave\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"`I\00", align 1
@.str.86 = private unnamed_addr constant [2 x i8] c"\CC\00", align 1
@.str.87 = private unnamed_addr constant [7 x i8] c"Iacute\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"'I\00", align 1
@.str.89 = private unnamed_addr constant [2 x i8] c"\CD\00", align 1
@.str.90 = private unnamed_addr constant [12 x i8] c"Icircumflex\00", align 1
@.str.91 = private unnamed_addr constant [3 x i8] c"^I\00", align 1
@.str.92 = private unnamed_addr constant [2 x i8] c"\CE\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"Idieresis\00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c"\22I\00", align 1
@.str.95 = private unnamed_addr constant [2 x i8] c"\CF\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c"igrave\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"`\5Ci\00", align 1
@.str.98 = private unnamed_addr constant [2 x i8] c"\EC\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"iacute\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c"'\5Ci\00", align 1
@.str.101 = private unnamed_addr constant [2 x i8] c"\ED\00", align 1
@.str.102 = private unnamed_addr constant [12 x i8] c"icircumflex\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c"^\5Ci\00", align 1
@.str.104 = private unnamed_addr constant [2 x i8] c"\EE\00", align 1
@.str.105 = private unnamed_addr constant [10 x i8] c"idieresis\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c"\22\5Ci\00", align 1
@.str.107 = private unnamed_addr constant [2 x i8] c"\EF\00", align 1
@.str.108 = private unnamed_addr constant [7 x i8] c"Ograve\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c"`O\00", align 1
@.str.110 = private unnamed_addr constant [2 x i8] c"\D2\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"Oacute\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c"'O\00", align 1
@.str.113 = private unnamed_addr constant [2 x i8] c"\D3\00", align 1
@.str.114 = private unnamed_addr constant [12 x i8] c"Ocircumflex\00", align 1
@.str.115 = private unnamed_addr constant [3 x i8] c"^O\00", align 1
@.str.116 = private unnamed_addr constant [2 x i8] c"\D4\00", align 1
@.str.117 = private unnamed_addr constant [7 x i8] c"Otilde\00", align 1
@.str.118 = private unnamed_addr constant [3 x i8] c"~O\00", align 1
@.str.119 = private unnamed_addr constant [2 x i8] c"\D5\00", align 1
@.str.120 = private unnamed_addr constant [10 x i8] c"Odieresis\00", align 1
@.str.121 = private unnamed_addr constant [3 x i8] c"\22O\00", align 1
@.str.122 = private unnamed_addr constant [2 x i8] c"\D6\00", align 1
@.str.123 = private unnamed_addr constant [7 x i8] c"ograve\00", align 1
@.str.124 = private unnamed_addr constant [3 x i8] c"`o\00", align 1
@.str.125 = private unnamed_addr constant [2 x i8] c"\F2\00", align 1
@.str.126 = private unnamed_addr constant [7 x i8] c"oacute\00", align 1
@.str.127 = private unnamed_addr constant [3 x i8] c"'o\00", align 1
@.str.128 = private unnamed_addr constant [2 x i8] c"\F3\00", align 1
@.str.129 = private unnamed_addr constant [12 x i8] c"ocircumflex\00", align 1
@.str.130 = private unnamed_addr constant [3 x i8] c"^o\00", align 1
@.str.131 = private unnamed_addr constant [2 x i8] c"\F4\00", align 1
@.str.132 = private unnamed_addr constant [7 x i8] c"otilde\00", align 1
@.str.133 = private unnamed_addr constant [3 x i8] c"~o\00", align 1
@.str.134 = private unnamed_addr constant [2 x i8] c"\F5\00", align 1
@.str.135 = private unnamed_addr constant [10 x i8] c"odieresis\00", align 1
@.str.136 = private unnamed_addr constant [3 x i8] c"\22o\00", align 1
@.str.137 = private unnamed_addr constant [2 x i8] c"\F6\00", align 1
@.str.138 = private unnamed_addr constant [7 x i8] c"Ugrave\00", align 1
@.str.139 = private unnamed_addr constant [3 x i8] c"`U\00", align 1
@.str.140 = private unnamed_addr constant [2 x i8] c"\D9\00", align 1
@.str.141 = private unnamed_addr constant [7 x i8] c"Uacute\00", align 1
@.str.142 = private unnamed_addr constant [3 x i8] c"'U\00", align 1
@.str.143 = private unnamed_addr constant [2 x i8] c"\DA\00", align 1
@.str.144 = private unnamed_addr constant [12 x i8] c"Ucircumflex\00", align 1
@.str.145 = private unnamed_addr constant [3 x i8] c"^U\00", align 1
@.str.146 = private unnamed_addr constant [2 x i8] c"\DB\00", align 1
@.str.147 = private unnamed_addr constant [10 x i8] c"Udieresis\00", align 1
@.str.148 = private unnamed_addr constant [3 x i8] c"\22U\00", align 1
@.str.149 = private unnamed_addr constant [2 x i8] c"\DC\00", align 1
@.str.150 = private unnamed_addr constant [7 x i8] c"ugrave\00", align 1
@.str.151 = private unnamed_addr constant [3 x i8] c"`u\00", align 1
@.str.152 = private unnamed_addr constant [2 x i8] c"\F9\00", align 1
@.str.153 = private unnamed_addr constant [7 x i8] c"uacute\00", align 1
@.str.154 = private unnamed_addr constant [3 x i8] c"'u\00", align 1
@.str.155 = private unnamed_addr constant [2 x i8] c"\FA\00", align 1
@.str.156 = private unnamed_addr constant [12 x i8] c"ucircumflex\00", align 1
@.str.157 = private unnamed_addr constant [3 x i8] c"^u\00", align 1
@.str.158 = private unnamed_addr constant [2 x i8] c"\FB\00", align 1
@.str.159 = private unnamed_addr constant [10 x i8] c"udieresis\00", align 1
@.str.160 = private unnamed_addr constant [3 x i8] c"\22u\00", align 1
@.str.161 = private unnamed_addr constant [2 x i8] c"\FC\00", align 1
@.str.162 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.163 = private unnamed_addr constant [32 x i8] c"AddClassToTrie: after insertion\00", align 1
@.str.164 = private unnamed_addr constant [43 x i8] c"hyphenation class of %c may not be changed\00", align 1
@.str.165 = private unnamed_addr constant [74 x i8] c"in hyphenation file %s, line %d: character (octal %o) is not in any class\00", align 1
@.str.166 = private unnamed_addr constant [39 x i8] c"hyphenation string %s already inserted\00", align 1
@.str.167 = private unnamed_addr constant [37 x i8] c"hyphenation trie node limit exceeded\00", align 1

; Function Attrs: nounwind uwtable
define i32 @ReadHyphTable(i32 %lnum) #0 {
entry:
  %lnum.addr = alloca i32, align 4
  %res = alloca i32, align 4
  store i32 %lnum, i32* %lnum.addr, align 4
  %0 = load i32, i32* %lnum.addr, align 4
  %cmp = icmp ugt i32 %0, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %lnum.addr, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [64 x %struct.trie_rec*], [64 x %struct.trie_rec*]* @HyphTables, i32 0, i64 %idxprom
  %3 = load %struct.trie_rec*, %struct.trie_rec** %arrayidx, align 8
  %cmp1 = icmp eq %struct.trie_rec* %3, null
  br i1 %cmp1, label %land.lhs.true, label %if.then.4

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32, i32* %lnum.addr, align 4
  %idxprom2 = zext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [64 x i32], [64 x i32]* @TriedFile, i32 0, i64 %idxprom2
  %5 = load i32, i32* %arrayidx3, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %land.lhs.true, %if.end
  %6 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call5 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %land.lhs.true
  %7 = load i32, i32* %lnum.addr, align 4
  %call7 = call %struct.trie_rec* @TrieRead(i32 %7, i32* %res)
  %8 = load i32, i32* %lnum.addr, align 4
  %idxprom8 = zext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [64 x %struct.trie_rec*], [64 x %struct.trie_rec*]* @HyphTables, i32 0, i64 %idxprom8
  store %struct.trie_rec* %call7, %struct.trie_rec** %arrayidx9, align 8
  %9 = load i32, i32* %lnum.addr, align 4
  %idxprom10 = zext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [64 x i32], [64 x i32]* @TriedFile, i32 0, i64 %idxprom10
  store i32 1, i32* %arrayidx11, align 4
  %10 = load i32, i32* %res, align 4
  ret i32 %10
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct.trie_rec* @TrieRead(i32 %lnum, i32* %success) #0 {
entry:
  %retval = alloca %struct.trie_rec*, align 8
  %lnum.addr = alloca i32, align 4
  %success.addr = alloca i32*, align 8
  %T = alloca %struct.trie_rec*, align 8
  %unpacked_fnum = alloca i16, align 2
  %packed_fnum = alloca i16, align 2
  %fname = alloca %union.rec*, align 8
  %unpacked_fp = alloca %struct._IO_FILE*, align 8
  %packed_fp = alloca %struct._IO_FILE*, align 8
  %len = alloca i32, align 4
  %prev = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %c = alloca i32, align 4
  %state = alloca i32, align 4
  %hline_num = alloca i32, align 4
  %length_limit = alloca i32, align 4
  %str = alloca [512 x i8], align 16
  %key = alloca [512 x i8], align 16
  %value = alloca [512 x i8], align 16
  %buff = alloca [522 x i8], align 16
  %bpos = alloca i32, align 4
  %bcount = alloca i32, align 4
  store i32 %lnum, i32* %lnum.addr, align 4
  store i32* %success, i32** %success.addr, align 8
  %0 = load i32, i32* %lnum.addr, align 4
  %call = call %union.rec* @LanguageHyph(i32 %0)
  store %union.rec* %call, %union.rec** %fname, align 8
  %1 = load %union.rec*, %union.rec** %fname, align 8
  %cmp = icmp eq %union.rec* %1, null
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %union.rec*, %union.rec** %fname, align 8
  %os1 = bitcast %union.rec* %2 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %3 = load i8, i8* %otype, align 1
  %conv = zext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 11
  br i1 %cmp1, label %if.end, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %4 = load %union.rec*, %union.rec** %fname, align 8
  %os14 = bitcast %union.rec* %4 to %struct.word_type*
  %ou15 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14, i32 0, i32 1
  %os116 = bitcast %union.FIRST_UNION* %ou15 to %struct.anon*
  %otype7 = getelementptr inbounds %struct.anon, %struct.anon* %os116, i32 0, i32 0
  %5 = load i8, i8* %otype7, align 1
  %conv8 = zext i8 %5 to i32
  %cmp9 = icmp eq i32 %conv8, 12
  br i1 %cmp9, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.3
  %6 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call11 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.3, %lor.lhs.false, %entry
  %7 = load %union.rec*, %union.rec** %fname, align 8
  %cmp12 = icmp eq %union.rec* %7, null
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end
  %8 = load i32*, i32** %success.addr, align 8
  store i32 0, i32* %8, align 4
  store %struct.trie_rec* null, %struct.trie_rec** %retval
  br label %return

if.end.15:                                        ; preds = %if.end
  %9 = load %union.rec*, %union.rec** %fname, align 8
  %os117 = bitcast %union.rec* %9 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os117, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %10 = load %union.rec*, %union.rec** %fname, align 8
  %os118 = bitcast %union.rec* %10 to %struct.word_type*
  %ou119 = getelementptr inbounds %struct.word_type, %struct.word_type* %os118, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou119 to %struct.FILE_POS*
  %call20 = call zeroext i16 @DefineFile(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), %struct.FILE_POS* %ofpos, i32 8, i32 6)
  store i16 %call20, i16* %packed_fnum, align 2
  %11 = load i32, i32* @InitializeAll, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.end.15
  store %struct._IO_FILE* null, %struct._IO_FILE** %packed_fp, align 8
  br label %if.end.23

if.else:                                          ; preds = %if.end.15
  %12 = load i16, i16* %packed_fnum, align 2
  %call22 = call %struct._IO_FILE* @OpenFile(i16 zeroext %12, i32 0, i32 0)
  store %struct._IO_FILE* %call22, %struct._IO_FILE** %packed_fp, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.21
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %packed_fp, align 8
  %cmp24 = icmp eq %struct._IO_FILE* %13, null
  br i1 %cmp24, label %if.then.26, label %if.end.284

if.then.26:                                       ; preds = %if.end.23
  %14 = load %union.rec*, %union.rec** %fname, align 8
  %os127 = bitcast %union.rec* %14 to %struct.word_type*
  %ostring28 = getelementptr inbounds %struct.word_type, %struct.word_type* %os127, i32 0, i32 4
  %arraydecay29 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring28, i32 0, i32 0
  %15 = load %union.rec*, %union.rec** %fname, align 8
  %os130 = bitcast %union.rec* %15 to %struct.word_type*
  %ou131 = getelementptr inbounds %struct.word_type, %struct.word_type* %os130, i32 0, i32 1
  %ofpos32 = bitcast %union.FIRST_UNION* %ou131 to %struct.FILE_POS*
  %call33 = call zeroext i16 @DefineFile(i8* %arraydecay29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), %struct.FILE_POS* %ofpos32, i32 7, i32 6)
  store i16 %call33, i16* %unpacked_fnum, align 2
  %16 = load i16, i16* %unpacked_fnum, align 2
  %call34 = call %struct._IO_FILE* @OpenFile(i16 zeroext %16, i32 0, i32 0)
  store %struct._IO_FILE* %call34, %struct._IO_FILE** %unpacked_fp, align 8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %unpacked_fp, align 8
  %cmp35 = icmp eq %struct._IO_FILE* %17, null
  br i1 %cmp35, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %if.then.26
  %18 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %19 = load i16, i16* %unpacked_fnum, align 2
  %call38 = call i8* @FileName(i16 zeroext %19)
  %call39 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 36, i32 8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0), i32 2, %struct.FILE_POS* %18, i8* %call38)
  %20 = load i32*, i32** %success.addr, align 8
  store i32 0, i32* %20, align 4
  store %struct.trie_rec* null, %struct.trie_rec** %retval
  br label %return

if.end.40:                                        ; preds = %if.then.26
  %arraydecay41 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %unpacked_fp, align 8
  %call42 = call i8* @fgets(i8* %arraydecay41, i32 512, %struct._IO_FILE* %21)
  %cmp43 = icmp eq i8* %call42, null
  br i1 %cmp43, label %if.then.54, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %if.end.40
  %arraydecay46 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %call47 = call i32 @strcmp(i8* %arraydecay46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0)) #4
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %if.end.57, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.45
  %arraydecay50 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %call51 = call i32 @strcmp(i8* %arraydecay50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0)) #4
  %cmp52 = icmp eq i32 %call51, 0
  br i1 %cmp52, label %if.end.57, label %if.then.54

if.then.54:                                       ; preds = %land.lhs.true, %if.end.40
  %22 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %23 = load i16, i16* %unpacked_fnum, align 2
  %call55 = call i8* @FileName(i16 zeroext %23)
  %call56 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 36, i32 9, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i32 0, i32 0), i32 1, %struct.FILE_POS* %22, i8* %call55)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.54, %land.lhs.true, %lor.lhs.false.45
  %arraydecay58 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %call59 = call i32 @strcmp(i8* %arraydecay58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0)) #4
  %cmp60 = icmp eq i32 %call59, 0
  br i1 %cmp60, label %if.end.63, label %if.then.62

if.then.62:                                       ; preds = %if.end.57
  %24 = load i32*, i32** %success.addr, align 8
  store i32 1, i32* %24, align 4
  store %struct.trie_rec* null, %struct.trie_rec** %retval
  br label %return

if.end.63:                                        ; preds = %if.end.57
  %call64 = call %struct.trie_rec* @NewTrie(i32 120000, i32 32767)
  store %struct.trie_rec* %call64, %struct.trie_rec** %T, align 8
  store i32 0, i32* %state, align 4
  store i32 1, i32* %hline_num, align 4
  store i32 0, i32* %length_limit, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end.63
  %arraydecay65 = getelementptr inbounds [522 x i8], [522 x i8]* %buff, i32 0, i32 0
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %unpacked_fp, align 8
  %call66 = call i8* @fgets(i8* %arraydecay65, i32 512, %struct._IO_FILE* %25)
  %cmp67 = icmp ne i8* %call66, null
  br i1 %cmp67, label %while.body, label %while.end.276

while.body:                                       ; preds = %while.cond
  %26 = load i32, i32* %hline_num, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %hline_num, align 4
  store i32 0, i32* %bpos, align 4
  br label %while.cond.69

while.cond.69:                                    ; preds = %sw.epilog, %while.body
  %27 = load i32, i32* %bpos, align 4
  %idxprom = sext i32 %27 to i64
  %arrayidx = getelementptr inbounds [522 x i8], [522 x i8]* %buff, i32 0, i64 %idxprom
  %arraydecay70 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %call71 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* %arraydecay70, i32* %bcount) #5
  %cmp72 = icmp eq i32 %call71, 1
  br i1 %cmp72, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.69
  %arrayidx74 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i64 0
  %28 = load i8, i8* %arrayidx74, align 1
  %conv75 = zext i8 %28 to i32
  %cmp76 = icmp ne i32 %conv75, 37
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.69
  %29 = phi i1 [ false, %while.cond.69 ], [ %cmp76, %land.rhs ]
  br i1 %29, label %while.body.78, label %while.end

while.body.78:                                    ; preds = %land.end
  %30 = load i32, i32* %bcount, align 4
  %31 = load i32, i32* %bpos, align 4
  %add = add nsw i32 %31, %30
  store i32 %add, i32* %bpos, align 4
  %arraydecay79 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %32 = load %union.rec*, %union.rec** %fname, align 8
  %os180 = bitcast %union.rec* %32 to %struct.word_type*
  %ostring81 = getelementptr inbounds %struct.word_type, %struct.word_type* %os180, i32 0, i32 4
  %arraydecay82 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring81, i32 0, i32 0
  %33 = load i32, i32* %hline_num, align 4
  call void @DecodeEscapes(i8* %arraydecay79, i8* %arraydecay82, i32 %33)
  %34 = load i32, i32* %state, align 4
  switch i32 %34, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.91
    i32 2, label %sw.bb.114
    i32 3, label %sw.bb.187
    i32 4, label %sw.bb.208
  ]

sw.bb:                                            ; preds = %while.body.78
  %arraydecay83 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %call84 = call i32 @strcmp(i8* %arraydecay83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0)) #4
  %cmp85 = icmp eq i32 %call84, 0
  br i1 %cmp85, label %if.end.90, label %if.then.87

if.then.87:                                       ; preds = %sw.bb
  %35 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %36 = load i16, i16* %unpacked_fnum, align 2
  %call88 = call i8* @FileName(i16 zeroext %36)
  %call89 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 36, i32 10, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.16, i32 0, i32 0), i32 1, %struct.FILE_POS* %35, i8* %call88)
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.87, %sw.bb
  store i32 1, i32* %state, align 4
  br label %sw.epilog

sw.bb.91:                                         ; preds = %while.body.78
  %arraydecay92 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %call93 = call i32 @strcmp(i8* %arraydecay92, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0)) #4
  %cmp94 = icmp eq i32 %call93, 0
  br i1 %cmp94, label %if.then.96, label %if.else.97

if.then.96:                                       ; preds = %sw.bb.91
  store i32 2, i32* %state, align 4
  br label %if.end.113

if.else.97:                                       ; preds = %sw.bb.91
  %arraydecay98 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %call99 = call i32 @strcmp(i8* %arraydecay98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0)) #4
  %cmp100 = icmp eq i32 %call99, 0
  br i1 %cmp100, label %if.then.102, label %if.else.103

if.then.102:                                      ; preds = %if.else.97
  store i32 4, i32* %state, align 4
  br label %if.end.112

if.else.103:                                      ; preds = %if.else.97
  %arraydecay104 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %call105 = call i32 @strcmp(i8* %arraydecay104, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0)) #4
  %cmp106 = icmp eq i32 %call105, 0
  br i1 %cmp106, label %if.then.108, label %if.else.109

if.then.108:                                      ; preds = %if.else.103
  store i32 3, i32* %state, align 4
  br label %if.end.111

if.else.109:                                      ; preds = %if.else.103
  %arraydecay110 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %37 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  call void @AddClassToTrie(i8* %arraydecay110, %struct.trie_rec* %37)
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.109, %if.then.108
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.then.102
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.then.96
  br label %sw.epilog

sw.bb.114:                                        ; preds = %while.body.78
  %arraydecay115 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %call116 = call i32 @strcmp(i8* %arraydecay115, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0)) #4
  %cmp117 = icmp eq i32 %call116, 0
  br i1 %cmp117, label %if.then.119, label %if.else.120

if.then.119:                                      ; preds = %sw.bb.114
  store i32 4, i32* %state, align 4
  br label %if.end.186

if.else.120:                                      ; preds = %sw.bb.114
  %arraydecay121 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %call122 = call i32 @strcmp(i8* %arraydecay121, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0)) #4
  %cmp123 = icmp eq i32 %call122, 0
  br i1 %cmp123, label %if.then.125, label %if.else.126

if.then.125:                                      ; preds = %if.else.120
  store i32 3, i32* %state, align 4
  br label %if.end.185

if.else.126:                                      ; preds = %if.else.120
  store i32 56, i32* %prev, align 4
  store i32 0, i32* %j, align 4
  %38 = load i32, i32* %j, align 4
  %idxprom127 = sext i32 %38 to i64
  %arrayidx128 = getelementptr inbounds [512 x i8], [512 x i8]* %key, i32 0, i64 %idxprom127
  store i8 46, i8* %arrayidx128, align 1
  %39 = load i32, i32* %prev, align 4
  %conv129 = trunc i32 %39 to i8
  %40 = load i32, i32* %j, align 4
  %inc130 = add nsw i32 %40, 1
  store i32 %inc130, i32* %j, align 4
  %idxprom131 = sext i32 %40 to i64
  %arrayidx132 = getelementptr inbounds [512 x i8], [512 x i8]* %value, i32 0, i64 %idxprom131
  store i8 %conv129, i8* %arrayidx132, align 1
  store i32 56, i32* %prev, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.126
  %41 = load i32, i32* %i, align 4
  %idxprom133 = sext i32 %41 to i64
  %arrayidx134 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i64 %idxprom133
  %42 = load i8, i8* %arrayidx134, align 1
  %conv135 = zext i8 %42 to i32
  %cmp136 = icmp ne i32 %conv135, 0
  br i1 %cmp136, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %43 = load i32, i32* %i, align 4
  %idxprom138 = sext i32 %43 to i64
  %arrayidx139 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i64 %idxprom138
  %44 = load i8, i8* %arrayidx139, align 1
  %conv140 = zext i8 %44 to i32
  %cmp141 = icmp eq i32 %conv140, 45
  br i1 %cmp141, label %if.then.143, label %if.else.144

if.then.143:                                      ; preds = %for.body
  store i32 57, i32* %prev, align 4
  br label %if.end.153

if.else.144:                                      ; preds = %for.body
  %45 = load i32, i32* %i, align 4
  %idxprom145 = sext i32 %45 to i64
  %arrayidx146 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i64 %idxprom145
  %46 = load i8, i8* %arrayidx146, align 1
  %47 = load i32, i32* %j, align 4
  %idxprom147 = sext i32 %47 to i64
  %arrayidx148 = getelementptr inbounds [512 x i8], [512 x i8]* %key, i32 0, i64 %idxprom147
  store i8 %46, i8* %arrayidx148, align 1
  %48 = load i32, i32* %prev, align 4
  %conv149 = trunc i32 %48 to i8
  %49 = load i32, i32* %j, align 4
  %inc150 = add nsw i32 %49, 1
  store i32 %inc150, i32* %j, align 4
  %idxprom151 = sext i32 %49 to i64
  %arrayidx152 = getelementptr inbounds [512 x i8], [512 x i8]* %value, i32 0, i64 %idxprom151
  store i8 %conv149, i8* %arrayidx152, align 1
  store i32 56, i32* %prev, align 4
  br label %if.end.153

if.end.153:                                       ; preds = %if.else.144, %if.then.143
  br label %for.inc

for.inc:                                          ; preds = %if.end.153
  %50 = load i32, i32* %i, align 4
  %inc154 = add nsw i32 %50, 1
  store i32 %inc154, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %51 = load i32, i32* %j, align 4
  %idxprom155 = sext i32 %51 to i64
  %arrayidx156 = getelementptr inbounds [512 x i8], [512 x i8]* %key, i32 0, i64 %idxprom155
  store i8 46, i8* %arrayidx156, align 1
  %52 = load i32, i32* %prev, align 4
  %conv157 = trunc i32 %52 to i8
  %53 = load i32, i32* %j, align 4
  %inc158 = add nsw i32 %53, 1
  store i32 %inc158, i32* %j, align 4
  %idxprom159 = sext i32 %53 to i64
  %arrayidx160 = getelementptr inbounds [512 x i8], [512 x i8]* %value, i32 0, i64 %idxprom159
  store i8 %conv157, i8* %arrayidx160, align 1
  store i32 56, i32* %prev, align 4
  %54 = load i32, i32* %j, align 4
  %idxprom161 = sext i32 %54 to i64
  %arrayidx162 = getelementptr inbounds [512 x i8], [512 x i8]* %key, i32 0, i64 %idxprom161
  store i8 0, i8* %arrayidx162, align 1
  %55 = load i32, i32* %prev, align 4
  %conv163 = trunc i32 %55 to i8
  %56 = load i32, i32* %j, align 4
  %idxprom164 = sext i32 %56 to i64
  %arrayidx165 = getelementptr inbounds [512 x i8], [512 x i8]* %value, i32 0, i64 %idxprom164
  store i8 %conv163, i8* %arrayidx165, align 1
  %57 = load i32, i32* %j, align 4
  %add166 = add nsw i32 %57, 1
  %idxprom167 = sext i32 %add166 to i64
  %arrayidx168 = getelementptr inbounds [512 x i8], [512 x i8]* %value, i32 0, i64 %idxprom167
  store i8 0, i8* %arrayidx168, align 1
  %arraydecay169 = getelementptr inbounds [512 x i8], [512 x i8]* %key, i32 0, i32 0
  %arraydecay170 = getelementptr inbounds [512 x i8], [512 x i8]* %value, i32 0, i32 0
  %58 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %59 = load %union.rec*, %union.rec** %fname, align 8
  %os1171 = bitcast %union.rec* %59 to %struct.word_type*
  %ostring172 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1171, i32 0, i32 4
  %arraydecay173 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring172, i32 0, i32 0
  %60 = load i32, i32* %hline_num, align 4
  %call174 = call i32 @TrieInsert(i8* %arraydecay169, i8* %arraydecay170, %struct.trie_rec* %58, i8* %arraydecay173, i32 %60)
  %tobool175 = icmp ne i32 %call174, 0
  br i1 %tobool175, label %if.end.184, label %if.then.176

if.then.176:                                      ; preds = %for.end
  %61 = load %union.rec*, %union.rec** %fname, align 8
  %os1177 = bitcast %union.rec* %61 to %struct.word_type*
  %ou1178 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1177, i32 0, i32 1
  %ofpos179 = bitcast %union.FIRST_UNION* %ou1178 to %struct.FILE_POS*
  %62 = load %union.rec*, %union.rec** %fname, align 8
  %os1180 = bitcast %union.rec* %62 to %struct.word_type*
  %ostring181 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1180, i32 0, i32 4
  %arraydecay182 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring181, i32 0, i32 0
  %63 = load i32, i32* %hline_num, align 4
  %call183 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 36, i32 11, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.20, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos179, i8* %arraydecay182, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 %63)
  %64 = load i32*, i32** %success.addr, align 8
  store i32 0, i32* %64, align 4
  store %struct.trie_rec* null, %struct.trie_rec** %retval
  br label %return

if.end.184:                                       ; preds = %for.end
  br label %if.end.185

if.end.185:                                       ; preds = %if.end.184, %if.then.125
  br label %if.end.186

if.end.186:                                       ; preds = %if.end.185, %if.then.119
  br label %sw.epilog

sw.bb.187:                                        ; preds = %while.body.78
  %arraydecay188 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %call189 = call i32 @strcmp(i8* %arraydecay188, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0)) #4
  %cmp190 = icmp eq i32 %call189, 0
  br i1 %cmp190, label %if.then.192, label %if.else.193

if.then.192:                                      ; preds = %sw.bb.187
  store i32 4, i32* %state, align 4
  br label %if.end.207

if.else.193:                                      ; preds = %sw.bb.187
  %arraydecay194 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %call195 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay194, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i32* %length_limit) #5
  %cmp196 = icmp ne i32 %call195, 1
  br i1 %cmp196, label %if.then.198, label %if.end.206

if.then.198:                                      ; preds = %if.else.193
  %65 = load %union.rec*, %union.rec** %fname, align 8
  %os1199 = bitcast %union.rec* %65 to %struct.word_type*
  %ou1200 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1199, i32 0, i32 1
  %ofpos201 = bitcast %union.FIRST_UNION* %ou1200 to %struct.FILE_POS*
  %66 = load %union.rec*, %union.rec** %fname, align 8
  %os1202 = bitcast %union.rec* %66 to %struct.word_type*
  %ostring203 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1202, i32 0, i32 4
  %arraydecay204 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring203, i32 0, i32 0
  %67 = load i32, i32* %hline_num, align 4
  %call205 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 36, i32 20, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.22, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos201, i8* %arraydecay204, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 %67)
  %68 = load i32*, i32** %success.addr, align 8
  store i32 0, i32* %68, align 4
  store %struct.trie_rec* null, %struct.trie_rec** %retval
  br label %return

if.end.206:                                       ; preds = %if.else.193
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.206, %if.then.192
  br label %sw.epilog

sw.bb.208:                                        ; preds = %while.body.78
  store i32 48, i32* %prev, align 4
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.209

for.cond.209:                                     ; preds = %for.inc.241, %sw.bb.208
  %69 = load i32, i32* %i, align 4
  %idxprom210 = sext i32 %69 to i64
  %arrayidx211 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i64 %idxprom210
  %70 = load i8, i8* %arrayidx211, align 1
  %conv212 = zext i8 %70 to i32
  %cmp213 = icmp ne i32 %conv212, 0
  br i1 %cmp213, label %for.body.215, label %for.end.243

for.body.215:                                     ; preds = %for.cond.209
  %71 = load i32, i32* %i, align 4
  %idxprom216 = sext i32 %71 to i64
  %arrayidx217 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i64 %idxprom216
  %72 = load i8, i8* %arrayidx217, align 1
  %conv218 = zext i8 %72 to i32
  %cmp219 = icmp sge i32 %conv218, 48
  br i1 %cmp219, label %land.lhs.true.221, label %if.else.231

land.lhs.true.221:                                ; preds = %for.body.215
  %73 = load i32, i32* %i, align 4
  %idxprom222 = sext i32 %73 to i64
  %arrayidx223 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i64 %idxprom222
  %74 = load i8, i8* %arrayidx223, align 1
  %conv224 = zext i8 %74 to i32
  %cmp225 = icmp sle i32 %conv224, 57
  br i1 %cmp225, label %if.then.227, label %if.else.231

if.then.227:                                      ; preds = %land.lhs.true.221
  %75 = load i32, i32* %i, align 4
  %idxprom228 = sext i32 %75 to i64
  %arrayidx229 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i64 %idxprom228
  %76 = load i8, i8* %arrayidx229, align 1
  %conv230 = zext i8 %76 to i32
  store i32 %conv230, i32* %prev, align 4
  br label %if.end.240

if.else.231:                                      ; preds = %land.lhs.true.221, %for.body.215
  %77 = load i32, i32* %i, align 4
  %idxprom232 = sext i32 %77 to i64
  %arrayidx233 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i64 %idxprom232
  %78 = load i8, i8* %arrayidx233, align 1
  %79 = load i32, i32* %j, align 4
  %idxprom234 = sext i32 %79 to i64
  %arrayidx235 = getelementptr inbounds [512 x i8], [512 x i8]* %key, i32 0, i64 %idxprom234
  store i8 %78, i8* %arrayidx235, align 1
  %80 = load i32, i32* %prev, align 4
  %conv236 = trunc i32 %80 to i8
  %81 = load i32, i32* %j, align 4
  %inc237 = add nsw i32 %81, 1
  store i32 %inc237, i32* %j, align 4
  %idxprom238 = sext i32 %81 to i64
  %arrayidx239 = getelementptr inbounds [512 x i8], [512 x i8]* %value, i32 0, i64 %idxprom238
  store i8 %conv236, i8* %arrayidx239, align 1
  store i32 48, i32* %prev, align 4
  br label %if.end.240

if.end.240:                                       ; preds = %if.else.231, %if.then.227
  br label %for.inc.241

for.inc.241:                                      ; preds = %if.end.240
  %82 = load i32, i32* %i, align 4
  %inc242 = add nsw i32 %82, 1
  store i32 %inc242, i32* %i, align 4
  br label %for.cond.209

for.end.243:                                      ; preds = %for.cond.209
  %83 = load i32, i32* %j, align 4
  %idxprom244 = sext i32 %83 to i64
  %arrayidx245 = getelementptr inbounds [512 x i8], [512 x i8]* %key, i32 0, i64 %idxprom244
  store i8 0, i8* %arrayidx245, align 1
  %84 = load i32, i32* %prev, align 4
  %conv246 = trunc i32 %84 to i8
  %85 = load i32, i32* %j, align 4
  %idxprom247 = sext i32 %85 to i64
  %arrayidx248 = getelementptr inbounds [512 x i8], [512 x i8]* %value, i32 0, i64 %idxprom247
  store i8 %conv246, i8* %arrayidx248, align 1
  %86 = load i32, i32* %j, align 4
  %add249 = add nsw i32 %86, 1
  %idxprom250 = sext i32 %add249 to i64
  %arrayidx251 = getelementptr inbounds [512 x i8], [512 x i8]* %value, i32 0, i64 %idxprom250
  store i8 0, i8* %arrayidx251, align 1
  %87 = load i32, i32* %length_limit, align 4
  %cmp252 = icmp eq i32 %87, 0
  br i1 %cmp252, label %if.then.257, label %lor.lhs.false.254

lor.lhs.false.254:                                ; preds = %for.end.243
  %88 = load i32, i32* %j, align 4
  %89 = load i32, i32* %length_limit, align 4
  %cmp255 = icmp sle i32 %88, %89
  br i1 %cmp255, label %if.then.257, label %if.end.274

if.then.257:                                      ; preds = %lor.lhs.false.254, %for.end.243
  %arraydecay258 = getelementptr inbounds [512 x i8], [512 x i8]* %key, i32 0, i32 0
  %arraydecay259 = getelementptr inbounds [512 x i8], [512 x i8]* %value, i32 0, i32 0
  %90 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %91 = load %union.rec*, %union.rec** %fname, align 8
  %os1260 = bitcast %union.rec* %91 to %struct.word_type*
  %ostring261 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1260, i32 0, i32 4
  %arraydecay262 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring261, i32 0, i32 0
  %92 = load i32, i32* %hline_num, align 4
  %call263 = call i32 @TrieInsert(i8* %arraydecay258, i8* %arraydecay259, %struct.trie_rec* %90, i8* %arraydecay262, i32 %92)
  %tobool264 = icmp ne i32 %call263, 0
  br i1 %tobool264, label %if.end.273, label %if.then.265

if.then.265:                                      ; preds = %if.then.257
  %93 = load %union.rec*, %union.rec** %fname, align 8
  %os1266 = bitcast %union.rec* %93 to %struct.word_type*
  %ou1267 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1266, i32 0, i32 1
  %ofpos268 = bitcast %union.FIRST_UNION* %ou1267 to %struct.FILE_POS*
  %94 = load %union.rec*, %union.rec** %fname, align 8
  %os1269 = bitcast %union.rec* %94 to %struct.word_type*
  %ostring270 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1269, i32 0, i32 4
  %arraydecay271 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring270, i32 0, i32 0
  %95 = load i32, i32* %hline_num, align 4
  %call272 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 36, i32 12, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.20, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos268, i8* %arraydecay271, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 %95)
  %96 = load i32*, i32** %success.addr, align 8
  store i32 0, i32* %96, align 4
  store %struct.trie_rec* null, %struct.trie_rec** %retval
  br label %return

if.end.273:                                       ; preds = %if.then.257
  br label %if.end.274

if.end.274:                                       ; preds = %if.end.273, %lor.lhs.false.254
  br label %sw.epilog

sw.default:                                       ; preds = %while.body.78
  %97 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call275 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %97, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.274, %if.end.207, %if.end.186, %if.end.113, %if.end.90
  br label %while.cond.69

while.end:                                        ; preds = %land.end
  br label %while.cond

while.end.276:                                    ; preds = %while.cond
  %98 = load i32, i32* %state, align 4
  %cmp277 = icmp ne i32 %98, 4
  br i1 %cmp277, label %if.then.279, label %if.end.282

if.then.279:                                      ; preds = %while.end.276
  %99 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %100 = load i16, i16* %unpacked_fnum, align 2
  %call280 = call i8* @FileName(i16 zeroext %100)
  %call281 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 36, i32 13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.24, i32 0, i32 0), i32 1, %struct.FILE_POS* %99, i8* %call280)
  br label %if.end.282

if.end.282:                                       ; preds = %if.then.279, %while.end.276
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %unpacked_fp, align 8
  %call283 = call i32 @fclose(%struct._IO_FILE* %101)
  %102 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  call void @CompressTrie(%struct.trie_rec* %102)
  br label %if.end.284

if.end.284:                                       ; preds = %if.end.282, %if.end.23
  %103 = load i32*, i32** %success.addr, align 8
  store i32 1, i32* %103, align 4
  %104 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  store %struct.trie_rec* %104, %struct.trie_rec** %retval
  br label %return

return:                                           ; preds = %if.end.284, %if.then.265, %if.then.198, %if.then.176, %if.then.62, %if.then.37, %if.then.14
  %105 = load %struct.trie_rec*, %struct.trie_rec** %retval
  ret %struct.trie_rec* %105
}

; Function Attrs: nounwind uwtable
define %union.rec* @Hyphenate(%union.rec* %x) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  %next_link = alloca %union.rec*, align 8
  %T = alloca %struct.trie_rec*, align 8
  %lnum = alloca i32, align 4
  %str = alloca [2050 x i8], align 16
  %rate = alloca [2051 x i8], align 16
  %val = alloca [2051 x i8], align 16
  %class = alloca i8*, align 8
  %key = alloca i8*, align 8
  %ss = alloca i8*, align 8
  %s = alloca i8*, align 8
  %p = alloca i8*, align 8
  %rem = alloca i8*, align 8
  %lig = alloca i8*, align 8
  %a = alloca i8*, align 8
  %b = alloca i8*, align 8
  %start = alloca i32, align 4
  %stop = alloca i32, align 4
  %i = alloca i32, align 4
  %curr_node = alloca i32, align 4
  %next_node = alloca i32, align 4
  %pos = alloca i32, align 4
  %hyphenated = alloca i32, align 4
  %success = alloca i32, align 4
  %p763 = alloca i8*, align 8
  %q = alloca i8*, align 8
  %xval = alloca i8, align 1
  %i764 = alloca i32, align 4
  %skip = alloca i32, align 4
  %p793 = alloca i8*, align 8
  %q795 = alloca i8*, align 8
  %p835 = alloca i8*, align 8
  %q836 = alloca i8*, align 8
  %xval837 = alloca i8, align 1
  %i838 = alloca i32, align 4
  %skip839 = alloca i32, align 4
  %p869 = alloca i8*, align 8
  %q871 = alloca i8*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %1 = load i8, i8* %otype, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 17
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %union.rec*, %union.rec** %x.addr, align 8
  %os12 = bitcast %union.rec* %3 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %4 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %4, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.1573, %if.end
  %5 = load %union.rec*, %union.rec** %link, align 8
  %6 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp3 = icmp ne %union.rec* %5, %6
  br i1 %cmp3, label %for.body, label %for.end.1578

for.body:                                         ; preds = %for.cond
  %7 = load %union.rec*, %union.rec** %link, align 8
  %os15 = bitcast %union.rec* %7 to %struct.word_type*
  %olist6 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7, i32 0, i32 0
  %8 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %8, %union.rec** %y, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body
  %9 = load %union.rec*, %union.rec** %y, align 8
  %os19 = bitcast %union.rec* %9 to %struct.word_type*
  %ou110 = getelementptr inbounds %struct.word_type, %struct.word_type* %os19, i32 0, i32 1
  %os1111 = bitcast %union.FIRST_UNION* %ou110 to %struct.anon*
  %otype12 = getelementptr inbounds %struct.anon, %struct.anon* %os1111, i32 0, i32 0
  %10 = load i8, i8* %otype12, align 1
  %conv13 = zext i8 %10 to i32
  %cmp14 = icmp eq i32 %conv13, 0
  br i1 %cmp14, label %for.body.16, label %for.end

for.body.16:                                      ; preds = %for.cond.8
  br label %for.inc

for.inc:                                          ; preds = %for.body.16
  %11 = load %union.rec*, %union.rec** %y, align 8
  %os117 = bitcast %union.rec* %11 to %struct.word_type*
  %olist18 = getelementptr inbounds %struct.word_type, %struct.word_type* %os117, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist18, i32 0, i64 1
  %opred20 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx19, i32 0, i32 0
  %12 = load %union.rec*, %union.rec** %opred20, align 8
  store %union.rec* %12, %union.rec** %y, align 8
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  %13 = load %union.rec*, %union.rec** %y, align 8
  %os121 = bitcast %union.rec* %13 to %struct.word_type*
  %ou122 = getelementptr inbounds %struct.word_type, %struct.word_type* %os121, i32 0, i32 1
  %os1123 = bitcast %union.FIRST_UNION* %ou122 to %struct.anon*
  %otype24 = getelementptr inbounds %struct.anon, %struct.anon* %os1123, i32 0, i32 0
  %14 = load i8, i8* %otype24, align 1
  %conv25 = zext i8 %14 to i32
  %cmp26 = icmp eq i32 %conv25, 11
  br i1 %cmp26, label %lor.lhs.false.35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %15 = load %union.rec*, %union.rec** %y, align 8
  %os128 = bitcast %union.rec* %15 to %struct.word_type*
  %ou129 = getelementptr inbounds %struct.word_type, %struct.word_type* %os128, i32 0, i32 1
  %os1130 = bitcast %union.FIRST_UNION* %ou129 to %struct.anon*
  %otype31 = getelementptr inbounds %struct.anon, %struct.anon* %os1130, i32 0, i32 0
  %16 = load i8, i8* %otype31, align 1
  %conv32 = zext i8 %16 to i32
  %cmp33 = icmp eq i32 %conv32, 12
  br i1 %cmp33, label %lor.lhs.false.35, label %if.then.43

lor.lhs.false.35:                                 ; preds = %lor.lhs.false, %for.end
  %17 = load %union.rec*, %union.rec** %y, align 8
  %os136 = bitcast %union.rec* %17 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os136, i32 0, i32 4
  %arrayidx37 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i64 0
  %18 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %18 to i32
  %cmp39 = icmp eq i32 %conv38, 0
  br i1 %cmp39, label %if.then.43, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %lor.lhs.false.35
  %19 = load %union.rec*, %union.rec** %y, align 8
  %os142 = bitcast %union.rec* %19 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os142, i32 0, i32 2
  %os22 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.1*
  %20 = bitcast %struct.anon.1* %os22 to i32*
  %bf.load = load i32, i32* %20, align 4
  %bf.lshr = lshr i32 %bf.load, 31
  %tobool = icmp ne i32 %bf.lshr, 0
  br i1 %tobool, label %if.end.60, label %if.then.43

if.then.43:                                       ; preds = %lor.lhs.false.41, %lor.lhs.false.35, %lor.lhs.false
  %21 = load %union.rec*, %union.rec** %y, align 8
  %os144 = bitcast %union.rec* %21 to %struct.word_type*
  %ou145 = getelementptr inbounds %struct.word_type, %struct.word_type* %os144, i32 0, i32 1
  %os1146 = bitcast %union.FIRST_UNION* %ou145 to %struct.anon*
  %otype47 = getelementptr inbounds %struct.anon, %struct.anon* %os1146, i32 0, i32 0
  %22 = load i8, i8* %otype47, align 1
  %conv48 = zext i8 %22 to i32
  %cmp49 = icmp eq i32 %conv48, 1
  br i1 %cmp49, label %land.lhs.true, label %if.end.59

land.lhs.true:                                    ; preds = %if.then.43
  %23 = load %union.rec*, %union.rec** %y, align 8
  %os5 = bitcast %union.rec* %23 to %struct.gapobj_type*
  %ogap = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5, i32 0, i32 3
  %24 = bitcast %struct.GAP* %ogap to i16*
  %bf.load51 = load i16, i16* %24, align 4
  %bf.lshr52 = lshr i16 %bf.load51, 13
  %bf.cast = zext i16 %bf.lshr52 to i32
  %cmp53 = icmp eq i32 %bf.cast, 2
  br i1 %cmp53, label %if.then.55, label %if.end.59

if.then.55:                                       ; preds = %land.lhs.true
  %25 = load %union.rec*, %union.rec** %y, align 8
  %os556 = bitcast %union.rec* %25 to %struct.gapobj_type*
  %ogap57 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os556, i32 0, i32 3
  %26 = bitcast %struct.GAP* %ogap57 to i16*
  %bf.load58 = load i16, i16* %26, align 4
  %bf.clear = and i16 %bf.load58, -129
  store i16 %bf.clear, i16* %26, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.55, %land.lhs.true, %if.then.43
  br label %for.inc.1573

if.end.60:                                        ; preds = %lor.lhs.false.41
  %27 = load %union.rec*, %union.rec** %y, align 8
  %os161 = bitcast %union.rec* %27 to %struct.word_type*
  %ou262 = getelementptr inbounds %struct.word_type, %struct.word_type* %os161, i32 0, i32 2
  %os2263 = bitcast %union.SECOND_UNION* %ou262 to %struct.anon.1*
  %28 = bitcast %struct.anon.1* %os2263 to i32*
  %bf.load64 = load i32, i32* %28, align 4
  %bf.lshr65 = lshr i32 %bf.load64, 23
  %bf.clear66 = and i32 %bf.lshr65, 63
  store i32 %bf.clear66, i32* %lnum, align 4
  %29 = load i32, i32* %lnum, align 4
  %cmp67 = icmp eq i32 %29, 0
  br i1 %cmp67, label %if.then.69, label %if.end.75

if.then.69:                                       ; preds = %if.end.60
  %30 = load %union.rec*, %union.rec** %y, align 8
  %os170 = bitcast %union.rec* %30 to %struct.word_type*
  %ou171 = getelementptr inbounds %struct.word_type, %struct.word_type* %os170, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou171 to %struct.FILE_POS*
  %31 = load %union.rec*, %union.rec** %y, align 8
  %os172 = bitcast %union.rec* %31 to %struct.word_type*
  %ostring73 = getelementptr inbounds %struct.word_type, %struct.word_type* %os172, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring73, i32 0, i32 0
  %call74 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 36, i32 19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos, i8* %arraydecay)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.69, %if.end.60
  %32 = load i32, i32* %lnum, align 4
  %idxprom = zext i32 %32 to i64
  %arrayidx76 = getelementptr inbounds [64 x %struct.trie_rec*], [64 x %struct.trie_rec*]* @HyphTables, i32 0, i64 %idxprom
  %33 = load %struct.trie_rec*, %struct.trie_rec** %arrayidx76, align 8
  store %struct.trie_rec* %33, %struct.trie_rec** %T, align 8
  %34 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %cmp77 = icmp eq %struct.trie_rec* %34, null
  br i1 %cmp77, label %if.then.79, label %if.end.94

if.then.79:                                       ; preds = %if.end.75
  %35 = load i32, i32* %lnum, align 4
  %idxprom80 = zext i32 %35 to i64
  %arrayidx81 = getelementptr inbounds [64 x i32], [64 x i32]* @TriedFile, i32 0, i64 %idxprom80
  %36 = load i32, i32* %arrayidx81, align 4
  %tobool82 = icmp ne i32 %36, 0
  br i1 %tobool82, label %if.end.89, label %if.then.83

if.then.83:                                       ; preds = %if.then.79
  %37 = load i32, i32* %lnum, align 4
  %call84 = call %struct.trie_rec* @TrieRead(i32 %37, i32* %success)
  %38 = load i32, i32* %lnum, align 4
  %idxprom85 = zext i32 %38 to i64
  %arrayidx86 = getelementptr inbounds [64 x %struct.trie_rec*], [64 x %struct.trie_rec*]* @HyphTables, i32 0, i64 %idxprom85
  store %struct.trie_rec* %call84, %struct.trie_rec** %arrayidx86, align 8
  store %struct.trie_rec* %call84, %struct.trie_rec** %T, align 8
  %39 = load i32, i32* %lnum, align 4
  %idxprom87 = zext i32 %39 to i64
  %arrayidx88 = getelementptr inbounds [64 x i32], [64 x i32]* @TriedFile, i32 0, i64 %idxprom87
  store i32 1, i32* %arrayidx88, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.83, %if.then.79
  %40 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %cmp90 = icmp eq %struct.trie_rec* %40, null
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.end.89
  br label %for.inc.1573

if.end.93:                                        ; preds = %if.end.89
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.end.75
  %41 = load %union.rec*, %union.rec** %y, align 8
  %os195 = bitcast %union.rec* %41 to %struct.word_type*
  %ostring96 = getelementptr inbounds %struct.word_type, %struct.word_type* %os195, i32 0, i32 4
  %arraydecay97 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring96, i32 0, i32 0
  store i8* %arraydecay97, i8** %key, align 8
  %42 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %class98 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %42, i32 0, i32 2
  %arraydecay99 = getelementptr inbounds [256 x i8], [256 x i8]* %class98, i32 0, i32 0
  store i8* %arraydecay99, i8** %class, align 8
  store i32 0, i32* %start, align 4
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.109, %if.end.94
  %43 = load i32, i32* %start, align 4
  %idxprom101 = sext i32 %43 to i64
  %44 = load i8*, i8** %key, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %44, i64 %idxprom101
  %45 = load i8, i8* %arrayidx102, align 1
  %idxprom103 = zext i8 %45 to i64
  %46 = load i8*, i8** %class, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %46, i64 %idxprom103
  %47 = load i8, i8* %arrayidx104, align 1
  %conv105 = zext i8 %47 to i32
  %cmp106 = icmp eq i32 %conv105, 1
  br i1 %cmp106, label %for.body.108, label %for.end.110

for.body.108:                                     ; preds = %for.cond.100
  br label %for.inc.109

for.inc.109:                                      ; preds = %for.body.108
  %48 = load i32, i32* %start, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %start, align 4
  br label %for.cond.100

for.end.110:                                      ; preds = %for.cond.100
  %49 = load i32, i32* %start, align 4
  store i32 %49, i32* %stop, align 4
  br label %for.cond.111

for.cond.111:                                     ; preds = %for.inc.120, %for.end.110
  %50 = load i32, i32* %stop, align 4
  %idxprom112 = sext i32 %50 to i64
  %51 = load i8*, i8** %key, align 8
  %arrayidx113 = getelementptr inbounds i8, i8* %51, i64 %idxprom112
  %52 = load i8, i8* %arrayidx113, align 1
  %idxprom114 = zext i8 %52 to i64
  %53 = load i8*, i8** %class, align 8
  %arrayidx115 = getelementptr inbounds i8, i8* %53, i64 %idxprom114
  %54 = load i8, i8* %arrayidx115, align 1
  %conv116 = zext i8 %54 to i32
  %cmp117 = icmp sgt i32 %conv116, 1
  br i1 %cmp117, label %for.body.119, label %for.end.122

for.body.119:                                     ; preds = %for.cond.111
  br label %for.inc.120

for.inc.120:                                      ; preds = %for.body.119
  %55 = load i32, i32* %stop, align 4
  %inc121 = add nsw i32 %55, 1
  store i32 %inc121, i32* %stop, align 4
  br label %for.cond.111

for.end.122:                                      ; preds = %for.cond.111
  %56 = load i32, i32* %stop, align 4
  %idxprom123 = sext i32 %56 to i64
  %57 = load i8*, i8** %key, align 8
  %arrayidx124 = getelementptr inbounds i8, i8* %57, i64 %idxprom123
  %58 = load i8, i8* %arrayidx124, align 1
  %conv125 = zext i8 %58 to i32
  %cmp126 = icmp eq i32 %conv125, 45
  br i1 %cmp126, label %if.then.128, label %if.end.699

if.then.128:                                      ; preds = %for.end.122
  %59 = load i32, i32* %stop, align 4
  %add = add nsw i32 %59, 1
  %idxprom129 = sext i32 %add to i64
  %60 = load i8*, i8** %key, align 8
  %arrayidx130 = getelementptr inbounds i8, i8* %60, i64 %idxprom129
  %61 = load i8, i8* %arrayidx130, align 1
  %conv131 = zext i8 %61 to i32
  %cmp132 = icmp eq i32 %conv131, 0
  br i1 %cmp132, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %if.then.128
  br label %for.inc.1573

if.end.135:                                       ; preds = %if.then.128
  %62 = load %union.rec*, %union.rec** %link, align 8
  %os1136 = bitcast %union.rec* %62 to %struct.word_type*
  %olist137 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1136, i32 0, i32 0
  %arrayidx138 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist137, i32 0, i64 0
  %osucc139 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx138, i32 0, i32 1
  %63 = load %union.rec*, %union.rec** %osucc139, align 8
  store %union.rec* %63, %union.rec** %next_link, align 8
  %64 = load i32, i32* %stop, align 4
  %add140 = add nsw i32 %64, 1
  %idxprom141 = sext i32 %add140 to i64
  %65 = load i8*, i8** %key, align 8
  %arrayidx142 = getelementptr inbounds i8, i8* %65, i64 %idxprom141
  %66 = load %union.rec*, %union.rec** %y, align 8
  %os1143 = bitcast %union.rec* %66 to %struct.word_type*
  %ou1144 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1143, i32 0, i32 1
  %ofpos145 = bitcast %union.FIRST_UNION* %ou1144 to %struct.FILE_POS*
  %call146 = call %union.rec* @MakeWord(i32 11, i8* %arrayidx142, %struct.FILE_POS* %ofpos145)
  store %union.rec* %call146, %union.rec** %z, align 8
  %67 = load %union.rec*, %union.rec** %y, align 8
  %os1147 = bitcast %union.rec* %67 to %struct.word_type*
  %ou2148 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1147, i32 0, i32 2
  %os22149 = bitcast %union.SECOND_UNION* %ou2148 to %struct.anon.1*
  %68 = bitcast %struct.anon.1* %os22149 to i32*
  %bf.load150 = load i32, i32* %68, align 4
  %bf.clear151 = and i32 %bf.load150, 4095
  %69 = load %union.rec*, %union.rec** %z, align 8
  %os1152 = bitcast %union.rec* %69 to %struct.word_type*
  %ou2153 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1152, i32 0, i32 2
  %os22154 = bitcast %union.SECOND_UNION* %ou2153 to %struct.anon.1*
  %70 = bitcast %struct.anon.1* %os22154 to i32*
  %bf.load155 = load i32, i32* %70, align 4
  %bf.value = and i32 %bf.clear151, 4095
  %bf.clear156 = and i32 %bf.load155, -4096
  %bf.set = or i32 %bf.clear156, %bf.value
  store i32 %bf.set, i32* %70, align 4
  %71 = load %union.rec*, %union.rec** %y, align 8
  %os1157 = bitcast %union.rec* %71 to %struct.word_type*
  %ou2158 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1157, i32 0, i32 2
  %os22159 = bitcast %union.SECOND_UNION* %ou2158 to %struct.anon.1*
  %72 = bitcast %struct.anon.1* %os22159 to i32*
  %bf.load160 = load i32, i32* %72, align 4
  %bf.lshr161 = lshr i32 %bf.load160, 12
  %bf.clear162 = and i32 %bf.lshr161, 1023
  %73 = load %union.rec*, %union.rec** %z, align 8
  %os1163 = bitcast %union.rec* %73 to %struct.word_type*
  %ou2164 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1163, i32 0, i32 2
  %os22165 = bitcast %union.SECOND_UNION* %ou2164 to %struct.anon.1*
  %74 = bitcast %struct.anon.1* %os22165 to i32*
  %bf.load166 = load i32, i32* %74, align 4
  %bf.value167 = and i32 %bf.clear162, 1023
  %bf.shl = shl i32 %bf.value167, 12
  %bf.clear168 = and i32 %bf.load166, -4190209
  %bf.set169 = or i32 %bf.clear168, %bf.shl
  store i32 %bf.set169, i32* %74, align 4
  %75 = load %union.rec*, %union.rec** %y, align 8
  %os1170 = bitcast %union.rec* %75 to %struct.word_type*
  %ou2171 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1170, i32 0, i32 2
  %os22172 = bitcast %union.SECOND_UNION* %ou2171 to %struct.anon.1*
  %76 = bitcast %struct.anon.1* %os22172 to i32*
  %bf.load173 = load i32, i32* %76, align 4
  %bf.lshr174 = lshr i32 %bf.load173, 22
  %bf.clear175 = and i32 %bf.lshr174, 1
  %77 = load %union.rec*, %union.rec** %z, align 8
  %os1176 = bitcast %union.rec* %77 to %struct.word_type*
  %ou2177 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1176, i32 0, i32 2
  %os22178 = bitcast %union.SECOND_UNION* %ou2177 to %struct.anon.1*
  %78 = bitcast %struct.anon.1* %os22178 to i32*
  %bf.load179 = load i32, i32* %78, align 4
  %bf.value180 = and i32 %bf.clear175, 1
  %bf.shl181 = shl i32 %bf.value180, 22
  %bf.clear182 = and i32 %bf.load179, -4194305
  %bf.set183 = or i32 %bf.clear182, %bf.shl181
  store i32 %bf.set183, i32* %78, align 4
  %79 = load %union.rec*, %union.rec** %y, align 8
  %os1184 = bitcast %union.rec* %79 to %struct.word_type*
  %ou2185 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1184, i32 0, i32 2
  %os22186 = bitcast %union.SECOND_UNION* %ou2185 to %struct.anon.1*
  %80 = bitcast %struct.anon.1* %os22186 to i32*
  %bf.load187 = load i32, i32* %80, align 4
  %bf.lshr188 = lshr i32 %bf.load187, 23
  %bf.clear189 = and i32 %bf.lshr188, 63
  %81 = load %union.rec*, %union.rec** %z, align 8
  %os1190 = bitcast %union.rec* %81 to %struct.word_type*
  %ou2191 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1190, i32 0, i32 2
  %os22192 = bitcast %union.SECOND_UNION* %ou2191 to %struct.anon.1*
  %82 = bitcast %struct.anon.1* %os22192 to i32*
  %bf.load193 = load i32, i32* %82, align 4
  %bf.value194 = and i32 %bf.clear189, 63
  %bf.shl195 = shl i32 %bf.value194, 23
  %bf.clear196 = and i32 %bf.load193, -528482305
  %bf.set197 = or i32 %bf.clear196, %bf.shl195
  store i32 %bf.set197, i32* %82, align 4
  %83 = load %union.rec*, %union.rec** %y, align 8
  %os1198 = bitcast %union.rec* %83 to %struct.word_type*
  %ou2199 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1198, i32 0, i32 2
  %os22200 = bitcast %union.SECOND_UNION* %ou2199 to %struct.anon.1*
  %84 = bitcast %struct.anon.1* %os22200 to i32*
  %bf.load201 = load i32, i32* %84, align 4
  %bf.lshr202 = lshr i32 %bf.load201, 31
  %85 = load %union.rec*, %union.rec** %z, align 8
  %os1203 = bitcast %union.rec* %85 to %struct.word_type*
  %ou2204 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1203, i32 0, i32 2
  %os22205 = bitcast %union.SECOND_UNION* %ou2204 to %struct.anon.1*
  %86 = bitcast %struct.anon.1* %os22205 to i32*
  %bf.load206 = load i32, i32* %86, align 4
  %bf.value207 = and i32 %bf.lshr202, 1
  %bf.shl208 = shl i32 %bf.value207, 31
  %bf.clear209 = and i32 %bf.load206, 2147483647
  %bf.set210 = or i32 %bf.clear209, %bf.shl208
  store i32 %bf.set210, i32* %86, align 4
  %87 = load %union.rec*, %union.rec** %y, align 8
  %os1211 = bitcast %union.rec* %87 to %struct.word_type*
  %ou2212 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1211, i32 0, i32 2
  %os22213 = bitcast %union.SECOND_UNION* %ou2212 to %struct.anon.1*
  %88 = bitcast %struct.anon.1* %os22213 to i32*
  %bf.load214 = load i32, i32* %88, align 4
  %bf.lshr215 = lshr i32 %bf.load214, 29
  %bf.clear216 = and i32 %bf.lshr215, 3
  %89 = load %union.rec*, %union.rec** %z, align 8
  %os1217 = bitcast %union.rec* %89 to %struct.word_type*
  %ou2218 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1217, i32 0, i32 2
  %os22219 = bitcast %union.SECOND_UNION* %ou2218 to %struct.anon.1*
  %90 = bitcast %struct.anon.1* %os22219 to i32*
  %bf.load220 = load i32, i32* %90, align 4
  %bf.value221 = and i32 %bf.clear216, 3
  %bf.shl222 = shl i32 %bf.value221, 29
  %bf.clear223 = and i32 %bf.load220, -1610612737
  %bf.set224 = or i32 %bf.clear223, %bf.shl222
  store i32 %bf.set224, i32* %90, align 4
  %91 = load %union.rec*, %union.rec** %z, align 8
  call void @FontWordSize(%union.rec* %91)
  %92 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv225 = zext i8 %92 to i32
  store i32 %conv225, i32* @zz_size, align 4
  %conv226 = sext i32 %conv225 to i64
  %cmp227 = icmp uge i64 %conv226, 265
  br i1 %cmp227, label %if.then.229, label %if.else

if.then.229:                                      ; preds = %if.end.135
  %93 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call230 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %93)
  br label %if.end.247

if.else:                                          ; preds = %if.end.135
  %94 = load i32, i32* @zz_size, align 4
  %idxprom231 = sext i32 %94 to i64
  %arrayidx232 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom231
  %95 = load %union.rec*, %union.rec** %arrayidx232, align 8
  %cmp233 = icmp eq %union.rec* %95, null
  br i1 %cmp233, label %if.then.235, label %if.else.237

if.then.235:                                      ; preds = %if.else
  %96 = load i32, i32* @zz_size, align 4
  %97 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call236 = call %union.rec* @GetMemory(i32 %96, %struct.FILE_POS* %97)
  store %union.rec* %call236, %union.rec** @zz_hold, align 8
  br label %if.end.246

if.else.237:                                      ; preds = %if.else
  %98 = load i32, i32* @zz_size, align 4
  %idxprom238 = sext i32 %98 to i64
  %arrayidx239 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom238
  %99 = load %union.rec*, %union.rec** %arrayidx239, align 8
  store %union.rec* %99, %union.rec** @zz_hold, align 8
  store %union.rec* %99, %union.rec** @zz_hold, align 8
  %100 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1240 = bitcast %union.rec* %100 to %struct.word_type*
  %olist241 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1240, i32 0, i32 0
  %arrayidx242 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist241, i32 0, i64 0
  %opred243 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx242, i32 0, i32 0
  %101 = load %union.rec*, %union.rec** %opred243, align 8
  %102 = load i32, i32* @zz_size, align 4
  %idxprom244 = sext i32 %102 to i64
  %arrayidx245 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom244
  store %union.rec* %101, %union.rec** %arrayidx245, align 8
  br label %if.end.246

if.end.246:                                       ; preds = %if.else.237, %if.then.235
  br label %if.end.247

if.end.247:                                       ; preds = %if.end.246, %if.then.229
  %103 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1248 = bitcast %union.rec* %103 to %struct.word_type*
  %ou1249 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1248, i32 0, i32 1
  %os11250 = bitcast %union.FIRST_UNION* %ou1249 to %struct.anon*
  %otype251 = getelementptr inbounds %struct.anon, %struct.anon* %os11250, i32 0, i32 0
  store i8 0, i8* %otype251, align 1
  %104 = load %union.rec*, %union.rec** @zz_hold, align 8
  %105 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1252 = bitcast %union.rec* %105 to %struct.word_type*
  %olist253 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1252, i32 0, i32 0
  %arrayidx254 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist253, i32 0, i64 1
  %osucc255 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx254, i32 0, i32 1
  store %union.rec* %104, %union.rec** %osucc255, align 8
  %106 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1256 = bitcast %union.rec* %106 to %struct.word_type*
  %olist257 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1256, i32 0, i32 0
  %arrayidx258 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist257, i32 0, i64 1
  %opred259 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx258, i32 0, i32 0
  store %union.rec* %104, %union.rec** %opred259, align 8
  %107 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1260 = bitcast %union.rec* %107 to %struct.word_type*
  %olist261 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1260, i32 0, i32 0
  %arrayidx262 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist261, i32 0, i64 0
  %osucc263 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx262, i32 0, i32 1
  store %union.rec* %104, %union.rec** %osucc263, align 8
  %108 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1264 = bitcast %union.rec* %108 to %struct.word_type*
  %olist265 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1264, i32 0, i32 0
  %arrayidx266 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist265, i32 0, i64 0
  %opred267 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx266, i32 0, i32 0
  store %union.rec* %104, %union.rec** %opred267, align 8
  store %union.rec* %104, %union.rec** @xx_link, align 8
  %109 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %109, %union.rec** @zz_res, align 8
  %110 = load %union.rec*, %union.rec** %link, align 8
  %os1268 = bitcast %union.rec* %110 to %struct.word_type*
  %olist269 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1268, i32 0, i32 0
  %arrayidx270 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist269, i32 0, i64 0
  %osucc271 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx270, i32 0, i32 1
  %111 = load %union.rec*, %union.rec** %osucc271, align 8
  store %union.rec* %111, %union.rec** @zz_hold, align 8
  %112 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp272 = icmp eq %union.rec* %112, null
  br i1 %cmp272, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.247
  %113 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.306

cond.false:                                       ; preds = %if.end.247
  %114 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp274 = icmp eq %union.rec* %114, null
  br i1 %cmp274, label %cond.true.276, label %cond.false.277

cond.true.276:                                    ; preds = %cond.false
  %115 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.277:                                   ; preds = %cond.false
  %116 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1278 = bitcast %union.rec* %116 to %struct.word_type*
  %olist279 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1278, i32 0, i32 0
  %arrayidx280 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist279, i32 0, i64 0
  %opred281 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx280, i32 0, i32 0
  %117 = load %union.rec*, %union.rec** %opred281, align 8
  store %union.rec* %117, %union.rec** @zz_tmp, align 8
  %118 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1282 = bitcast %union.rec* %118 to %struct.word_type*
  %olist283 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1282, i32 0, i32 0
  %arrayidx284 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist283, i32 0, i64 0
  %opred285 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx284, i32 0, i32 0
  %119 = load %union.rec*, %union.rec** %opred285, align 8
  %120 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1286 = bitcast %union.rec* %120 to %struct.word_type*
  %olist287 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1286, i32 0, i32 0
  %arrayidx288 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist287, i32 0, i64 0
  %opred289 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx288, i32 0, i32 0
  store %union.rec* %119, %union.rec** %opred289, align 8
  %121 = load %union.rec*, %union.rec** @zz_hold, align 8
  %122 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1290 = bitcast %union.rec* %122 to %struct.word_type*
  %olist291 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1290, i32 0, i32 0
  %arrayidx292 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist291, i32 0, i64 0
  %opred293 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx292, i32 0, i32 0
  %123 = load %union.rec*, %union.rec** %opred293, align 8
  %os1294 = bitcast %union.rec* %123 to %struct.word_type*
  %olist295 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1294, i32 0, i32 0
  %arrayidx296 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist295, i32 0, i64 0
  %osucc297 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx296, i32 0, i32 1
  store %union.rec* %121, %union.rec** %osucc297, align 8
  %124 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %125 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1298 = bitcast %union.rec* %125 to %struct.word_type*
  %olist299 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1298, i32 0, i32 0
  %arrayidx300 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist299, i32 0, i64 0
  %opred301 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx300, i32 0, i32 0
  store %union.rec* %124, %union.rec** %opred301, align 8
  %126 = load %union.rec*, %union.rec** @zz_res, align 8
  %127 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1302 = bitcast %union.rec* %127 to %struct.word_type*
  %olist303 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1302, i32 0, i32 0
  %arrayidx304 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist303, i32 0, i64 0
  %osucc305 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx304, i32 0, i32 1
  store %union.rec* %126, %union.rec** %osucc305, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.277, %cond.true.276
  %cond = phi %union.rec* [ %115, %cond.true.276 ], [ %126, %cond.false.277 ]
  br label %cond.end.306

cond.end.306:                                     ; preds = %cond.end, %cond.true
  %cond307 = phi %union.rec* [ %113, %cond.true ], [ %cond, %cond.end ]
  %128 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %128, %union.rec** @zz_res, align 8
  %129 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %129, %union.rec** @zz_hold, align 8
  %130 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp308 = icmp eq %union.rec* %130, null
  br i1 %cmp308, label %cond.true.310, label %cond.false.311

cond.true.310:                                    ; preds = %cond.end.306
  %131 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.346

cond.false.311:                                   ; preds = %cond.end.306
  %132 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp312 = icmp eq %union.rec* %132, null
  br i1 %cmp312, label %cond.true.314, label %cond.false.315

cond.true.314:                                    ; preds = %cond.false.311
  %133 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.344

cond.false.315:                                   ; preds = %cond.false.311
  %134 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1316 = bitcast %union.rec* %134 to %struct.word_type*
  %olist317 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1316, i32 0, i32 0
  %arrayidx318 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist317, i32 0, i64 1
  %opred319 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx318, i32 0, i32 0
  %135 = load %union.rec*, %union.rec** %opred319, align 8
  store %union.rec* %135, %union.rec** @zz_tmp, align 8
  %136 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1320 = bitcast %union.rec* %136 to %struct.word_type*
  %olist321 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1320, i32 0, i32 0
  %arrayidx322 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist321, i32 0, i64 1
  %opred323 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx322, i32 0, i32 0
  %137 = load %union.rec*, %union.rec** %opred323, align 8
  %138 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1324 = bitcast %union.rec* %138 to %struct.word_type*
  %olist325 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1324, i32 0, i32 0
  %arrayidx326 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist325, i32 0, i64 1
  %opred327 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx326, i32 0, i32 0
  store %union.rec* %137, %union.rec** %opred327, align 8
  %139 = load %union.rec*, %union.rec** @zz_hold, align 8
  %140 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1328 = bitcast %union.rec* %140 to %struct.word_type*
  %olist329 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1328, i32 0, i32 0
  %arrayidx330 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist329, i32 0, i64 1
  %opred331 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx330, i32 0, i32 0
  %141 = load %union.rec*, %union.rec** %opred331, align 8
  %os1332 = bitcast %union.rec* %141 to %struct.word_type*
  %olist333 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1332, i32 0, i32 0
  %arrayidx334 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist333, i32 0, i64 1
  %osucc335 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx334, i32 0, i32 1
  store %union.rec* %139, %union.rec** %osucc335, align 8
  %142 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %143 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1336 = bitcast %union.rec* %143 to %struct.word_type*
  %olist337 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1336, i32 0, i32 0
  %arrayidx338 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist337, i32 0, i64 1
  %opred339 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx338, i32 0, i32 0
  store %union.rec* %142, %union.rec** %opred339, align 8
  %144 = load %union.rec*, %union.rec** @zz_res, align 8
  %145 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1340 = bitcast %union.rec* %145 to %struct.word_type*
  %olist341 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1340, i32 0, i32 0
  %arrayidx342 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist341, i32 0, i64 1
  %osucc343 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx342, i32 0, i32 1
  store %union.rec* %144, %union.rec** %osucc343, align 8
  br label %cond.end.344

cond.end.344:                                     ; preds = %cond.false.315, %cond.true.314
  %cond345 = phi %union.rec* [ %133, %cond.true.314 ], [ %144, %cond.false.315 ]
  br label %cond.end.346

cond.end.346:                                     ; preds = %cond.end.344, %cond.true.310
  %cond347 = phi %union.rec* [ %131, %cond.true.310 ], [ %cond345, %cond.end.344 ]
  %146 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 1), align 1
  %conv348 = zext i8 %146 to i32
  store i32 %conv348, i32* @zz_size, align 4
  %conv349 = sext i32 %conv348 to i64
  %cmp350 = icmp uge i64 %conv349, 265
  br i1 %cmp350, label %if.then.352, label %if.else.354

if.then.352:                                      ; preds = %cond.end.346
  %147 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call353 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %147)
  br label %if.end.371

if.else.354:                                      ; preds = %cond.end.346
  %148 = load i32, i32* @zz_size, align 4
  %idxprom355 = sext i32 %148 to i64
  %arrayidx356 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom355
  %149 = load %union.rec*, %union.rec** %arrayidx356, align 8
  %cmp357 = icmp eq %union.rec* %149, null
  br i1 %cmp357, label %if.then.359, label %if.else.361

if.then.359:                                      ; preds = %if.else.354
  %150 = load i32, i32* @zz_size, align 4
  %151 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call360 = call %union.rec* @GetMemory(i32 %150, %struct.FILE_POS* %151)
  store %union.rec* %call360, %union.rec** @zz_hold, align 8
  br label %if.end.370

if.else.361:                                      ; preds = %if.else.354
  %152 = load i32, i32* @zz_size, align 4
  %idxprom362 = sext i32 %152 to i64
  %arrayidx363 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom362
  %153 = load %union.rec*, %union.rec** %arrayidx363, align 8
  store %union.rec* %153, %union.rec** @zz_hold, align 8
  store %union.rec* %153, %union.rec** @zz_hold, align 8
  %154 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1364 = bitcast %union.rec* %154 to %struct.word_type*
  %olist365 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1364, i32 0, i32 0
  %arrayidx366 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist365, i32 0, i64 0
  %opred367 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx366, i32 0, i32 0
  %155 = load %union.rec*, %union.rec** %opred367, align 8
  %156 = load i32, i32* @zz_size, align 4
  %idxprom368 = sext i32 %156 to i64
  %arrayidx369 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom368
  store %union.rec* %155, %union.rec** %arrayidx369, align 8
  br label %if.end.370

if.end.370:                                       ; preds = %if.else.361, %if.then.359
  br label %if.end.371

if.end.371:                                       ; preds = %if.end.370, %if.then.352
  %157 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1372 = bitcast %union.rec* %157 to %struct.word_type*
  %ou1373 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1372, i32 0, i32 1
  %os11374 = bitcast %union.FIRST_UNION* %ou1373 to %struct.anon*
  %otype375 = getelementptr inbounds %struct.anon, %struct.anon* %os11374, i32 0, i32 0
  store i8 1, i8* %otype375, align 1
  %158 = load %union.rec*, %union.rec** @zz_hold, align 8
  %159 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1376 = bitcast %union.rec* %159 to %struct.word_type*
  %olist377 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1376, i32 0, i32 0
  %arrayidx378 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist377, i32 0, i64 1
  %osucc379 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx378, i32 0, i32 1
  store %union.rec* %158, %union.rec** %osucc379, align 8
  %160 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1380 = bitcast %union.rec* %160 to %struct.word_type*
  %olist381 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1380, i32 0, i32 0
  %arrayidx382 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist381, i32 0, i64 1
  %opred383 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx382, i32 0, i32 0
  store %union.rec* %158, %union.rec** %opred383, align 8
  %161 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1384 = bitcast %union.rec* %161 to %struct.word_type*
  %olist385 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1384, i32 0, i32 0
  %arrayidx386 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist385, i32 0, i64 0
  %osucc387 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx386, i32 0, i32 1
  store %union.rec* %158, %union.rec** %osucc387, align 8
  %162 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1388 = bitcast %union.rec* %162 to %struct.word_type*
  %olist389 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1388, i32 0, i32 0
  %arrayidx390 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist389, i32 0, i64 0
  %opred391 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx390, i32 0, i32 0
  store %union.rec* %158, %union.rec** %opred391, align 8
  store %union.rec* %158, %union.rec** %z, align 8
  %163 = load %union.rec*, %union.rec** %z, align 8
  %os1392 = bitcast %union.rec* %163 to %struct.word_type*
  %ou2393 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1392, i32 0, i32 2
  %os21 = bitcast %union.SECOND_UNION* %ou2393 to %struct.anon.0*
  %ovspace = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os21, i32 0, i32 2
  store i8 0, i8* %ovspace, align 1
  %164 = load %union.rec*, %union.rec** %z, align 8
  %os1394 = bitcast %union.rec* %164 to %struct.word_type*
  %ou2395 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1394, i32 0, i32 2
  %os21396 = bitcast %union.SECOND_UNION* %ou2395 to %struct.anon.0*
  %ohspace = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os21396, i32 0, i32 1
  store i8 0, i8* %ohspace, align 1
  %165 = load %union.rec*, %union.rec** %z, align 8
  %os5397 = bitcast %union.rec* %165 to %struct.gapobj_type*
  %ogap398 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5397, i32 0, i32 3
  %166 = bitcast %struct.GAP* %ogap398 to i16*
  %bf.load399 = load i16, i16* %166, align 4
  %bf.clear400 = and i16 %bf.load399, -129
  store i16 %bf.clear400, i16* %166, align 4
  %167 = load %union.rec*, %union.rec** %z, align 8
  %os5401 = bitcast %union.rec* %167 to %struct.gapobj_type*
  %ogap402 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5401, i32 0, i32 3
  %168 = bitcast %struct.GAP* %ogap402 to i16*
  %bf.load403 = load i16, i16* %168, align 4
  %bf.clear404 = and i16 %bf.load403, -257
  store i16 %bf.clear404, i16* %168, align 4
  %169 = load %union.rec*, %union.rec** %z, align 8
  %os5405 = bitcast %union.rec* %169 to %struct.gapobj_type*
  %ogap406 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5405, i32 0, i32 3
  %170 = bitcast %struct.GAP* %ogap406 to i16*
  %bf.load407 = load i16, i16* %170, align 4
  %bf.clear408 = and i16 %bf.load407, -513
  %bf.set409 = or i16 %bf.clear408, 512
  store i16 %bf.set409, i16* %170, align 4
  %171 = load %union.rec*, %union.rec** %z, align 8
  %os5410 = bitcast %union.rec* %171 to %struct.gapobj_type*
  %ogap411 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5410, i32 0, i32 3
  %172 = bitcast %struct.GAP* %ogap411 to i16*
  %bf.load412 = load i16, i16* %172, align 4
  %bf.clear413 = and i16 %bf.load412, -7169
  %bf.set414 = or i16 %bf.clear413, 1024
  store i16 %bf.set414, i16* %172, align 4
  %173 = load %union.rec*, %union.rec** %z, align 8
  %os5415 = bitcast %union.rec* %173 to %struct.gapobj_type*
  %ogap416 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5415, i32 0, i32 3
  %174 = bitcast %struct.GAP* %ogap416 to i16*
  %bf.load417 = load i16, i16* %174, align 4
  %bf.clear418 = and i16 %bf.load417, 8191
  %bf.set419 = or i16 %bf.clear418, 16384
  store i16 %bf.set419, i16* %174, align 4
  %175 = load %union.rec*, %union.rec** %z, align 8
  %os5420 = bitcast %union.rec* %175 to %struct.gapobj_type*
  %ogap421 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5420, i32 0, i32 3
  %owidth = getelementptr inbounds %struct.GAP, %struct.GAP* %ogap421, i32 0, i32 1
  store i16 0, i16* %owidth, align 2
  %176 = load %union.rec*, %union.rec** %y, align 8
  %os1422 = bitcast %union.rec* %176 to %struct.word_type*
  %ou2423 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1422, i32 0, i32 2
  %os22424 = bitcast %union.SECOND_UNION* %ou2423 to %struct.anon.1*
  %177 = bitcast %struct.anon.1* %os22424 to i32*
  %bf.load425 = load i32, i32* %177, align 4
  %bf.lshr426 = lshr i32 %bf.load425, 29
  %bf.clear427 = and i32 %bf.lshr426, 3
  %178 = load %union.rec*, %union.rec** %z, align 8
  %os1428 = bitcast %union.rec* %178 to %struct.word_type*
  %ou2429 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1428, i32 0, i32 2
  %os22430 = bitcast %union.SECOND_UNION* %ou2429 to %struct.anon.1*
  %179 = bitcast %struct.anon.1* %os22430 to i32*
  %bf.load431 = load i32, i32* %179, align 4
  %bf.value432 = and i32 %bf.clear427, 3
  %bf.shl433 = shl i32 %bf.value432, 29
  %bf.clear434 = and i32 %bf.load431, -1610612737
  %bf.set435 = or i32 %bf.clear434, %bf.shl433
  store i32 %bf.set435, i32* %179, align 4
  %180 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv436 = zext i8 %180 to i32
  store i32 %conv436, i32* @zz_size, align 4
  %conv437 = sext i32 %conv436 to i64
  %cmp438 = icmp uge i64 %conv437, 265
  br i1 %cmp438, label %if.then.440, label %if.else.442

if.then.440:                                      ; preds = %if.end.371
  %181 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call441 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %181)
  br label %if.end.459

if.else.442:                                      ; preds = %if.end.371
  %182 = load i32, i32* @zz_size, align 4
  %idxprom443 = sext i32 %182 to i64
  %arrayidx444 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom443
  %183 = load %union.rec*, %union.rec** %arrayidx444, align 8
  %cmp445 = icmp eq %union.rec* %183, null
  br i1 %cmp445, label %if.then.447, label %if.else.449

if.then.447:                                      ; preds = %if.else.442
  %184 = load i32, i32* @zz_size, align 4
  %185 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call448 = call %union.rec* @GetMemory(i32 %184, %struct.FILE_POS* %185)
  store %union.rec* %call448, %union.rec** @zz_hold, align 8
  br label %if.end.458

if.else.449:                                      ; preds = %if.else.442
  %186 = load i32, i32* @zz_size, align 4
  %idxprom450 = sext i32 %186 to i64
  %arrayidx451 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom450
  %187 = load %union.rec*, %union.rec** %arrayidx451, align 8
  store %union.rec* %187, %union.rec** @zz_hold, align 8
  store %union.rec* %187, %union.rec** @zz_hold, align 8
  %188 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1452 = bitcast %union.rec* %188 to %struct.word_type*
  %olist453 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1452, i32 0, i32 0
  %arrayidx454 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist453, i32 0, i64 0
  %opred455 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx454, i32 0, i32 0
  %189 = load %union.rec*, %union.rec** %opred455, align 8
  %190 = load i32, i32* @zz_size, align 4
  %idxprom456 = sext i32 %190 to i64
  %arrayidx457 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom456
  store %union.rec* %189, %union.rec** %arrayidx457, align 8
  br label %if.end.458

if.end.458:                                       ; preds = %if.else.449, %if.then.447
  br label %if.end.459

if.end.459:                                       ; preds = %if.end.458, %if.then.440
  %191 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1460 = bitcast %union.rec* %191 to %struct.word_type*
  %ou1461 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1460, i32 0, i32 1
  %os11462 = bitcast %union.FIRST_UNION* %ou1461 to %struct.anon*
  %otype463 = getelementptr inbounds %struct.anon, %struct.anon* %os11462, i32 0, i32 0
  store i8 0, i8* %otype463, align 1
  %192 = load %union.rec*, %union.rec** @zz_hold, align 8
  %193 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1464 = bitcast %union.rec* %193 to %struct.word_type*
  %olist465 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1464, i32 0, i32 0
  %arrayidx466 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist465, i32 0, i64 1
  %osucc467 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx466, i32 0, i32 1
  store %union.rec* %192, %union.rec** %osucc467, align 8
  %194 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1468 = bitcast %union.rec* %194 to %struct.word_type*
  %olist469 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1468, i32 0, i32 0
  %arrayidx470 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist469, i32 0, i64 1
  %opred471 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx470, i32 0, i32 0
  store %union.rec* %192, %union.rec** %opred471, align 8
  %195 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1472 = bitcast %union.rec* %195 to %struct.word_type*
  %olist473 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1472, i32 0, i32 0
  %arrayidx474 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist473, i32 0, i64 0
  %osucc475 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx474, i32 0, i32 1
  store %union.rec* %192, %union.rec** %osucc475, align 8
  %196 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1476 = bitcast %union.rec* %196 to %struct.word_type*
  %olist477 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1476, i32 0, i32 0
  %arrayidx478 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist477, i32 0, i64 0
  %opred479 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx478, i32 0, i32 0
  store %union.rec* %192, %union.rec** %opred479, align 8
  store %union.rec* %192, %union.rec** @xx_link, align 8
  %197 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %197, %union.rec** @zz_res, align 8
  %198 = load %union.rec*, %union.rec** %link, align 8
  %os1480 = bitcast %union.rec* %198 to %struct.word_type*
  %olist481 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1480, i32 0, i32 0
  %arrayidx482 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist481, i32 0, i64 0
  %osucc483 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx482, i32 0, i32 1
  %199 = load %union.rec*, %union.rec** %osucc483, align 8
  store %union.rec* %199, %union.rec** @zz_hold, align 8
  %200 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp484 = icmp eq %union.rec* %200, null
  br i1 %cmp484, label %cond.true.486, label %cond.false.487

cond.true.486:                                    ; preds = %if.end.459
  %201 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.522

cond.false.487:                                   ; preds = %if.end.459
  %202 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp488 = icmp eq %union.rec* %202, null
  br i1 %cmp488, label %cond.true.490, label %cond.false.491

cond.true.490:                                    ; preds = %cond.false.487
  %203 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.520

cond.false.491:                                   ; preds = %cond.false.487
  %204 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1492 = bitcast %union.rec* %204 to %struct.word_type*
  %olist493 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1492, i32 0, i32 0
  %arrayidx494 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist493, i32 0, i64 0
  %opred495 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx494, i32 0, i32 0
  %205 = load %union.rec*, %union.rec** %opred495, align 8
  store %union.rec* %205, %union.rec** @zz_tmp, align 8
  %206 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1496 = bitcast %union.rec* %206 to %struct.word_type*
  %olist497 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1496, i32 0, i32 0
  %arrayidx498 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist497, i32 0, i64 0
  %opred499 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx498, i32 0, i32 0
  %207 = load %union.rec*, %union.rec** %opred499, align 8
  %208 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1500 = bitcast %union.rec* %208 to %struct.word_type*
  %olist501 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1500, i32 0, i32 0
  %arrayidx502 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist501, i32 0, i64 0
  %opred503 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx502, i32 0, i32 0
  store %union.rec* %207, %union.rec** %opred503, align 8
  %209 = load %union.rec*, %union.rec** @zz_hold, align 8
  %210 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1504 = bitcast %union.rec* %210 to %struct.word_type*
  %olist505 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1504, i32 0, i32 0
  %arrayidx506 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist505, i32 0, i64 0
  %opred507 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx506, i32 0, i32 0
  %211 = load %union.rec*, %union.rec** %opred507, align 8
  %os1508 = bitcast %union.rec* %211 to %struct.word_type*
  %olist509 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1508, i32 0, i32 0
  %arrayidx510 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist509, i32 0, i64 0
  %osucc511 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx510, i32 0, i32 1
  store %union.rec* %209, %union.rec** %osucc511, align 8
  %212 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %213 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1512 = bitcast %union.rec* %213 to %struct.word_type*
  %olist513 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1512, i32 0, i32 0
  %arrayidx514 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist513, i32 0, i64 0
  %opred515 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx514, i32 0, i32 0
  store %union.rec* %212, %union.rec** %opred515, align 8
  %214 = load %union.rec*, %union.rec** @zz_res, align 8
  %215 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1516 = bitcast %union.rec* %215 to %struct.word_type*
  %olist517 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1516, i32 0, i32 0
  %arrayidx518 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist517, i32 0, i64 0
  %osucc519 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx518, i32 0, i32 1
  store %union.rec* %214, %union.rec** %osucc519, align 8
  br label %cond.end.520

cond.end.520:                                     ; preds = %cond.false.491, %cond.true.490
  %cond521 = phi %union.rec* [ %203, %cond.true.490 ], [ %214, %cond.false.491 ]
  br label %cond.end.522

cond.end.522:                                     ; preds = %cond.end.520, %cond.true.486
  %cond523 = phi %union.rec* [ %201, %cond.true.486 ], [ %cond521, %cond.end.520 ]
  %216 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %216, %union.rec** @zz_res, align 8
  %217 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %217, %union.rec** @zz_hold, align 8
  %218 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp524 = icmp eq %union.rec* %218, null
  br i1 %cmp524, label %cond.true.526, label %cond.false.527

cond.true.526:                                    ; preds = %cond.end.522
  %219 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.562

cond.false.527:                                   ; preds = %cond.end.522
  %220 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp528 = icmp eq %union.rec* %220, null
  br i1 %cmp528, label %cond.true.530, label %cond.false.531

cond.true.530:                                    ; preds = %cond.false.527
  %221 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.560

cond.false.531:                                   ; preds = %cond.false.527
  %222 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1532 = bitcast %union.rec* %222 to %struct.word_type*
  %olist533 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1532, i32 0, i32 0
  %arrayidx534 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist533, i32 0, i64 1
  %opred535 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx534, i32 0, i32 0
  %223 = load %union.rec*, %union.rec** %opred535, align 8
  store %union.rec* %223, %union.rec** @zz_tmp, align 8
  %224 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1536 = bitcast %union.rec* %224 to %struct.word_type*
  %olist537 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1536, i32 0, i32 0
  %arrayidx538 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist537, i32 0, i64 1
  %opred539 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx538, i32 0, i32 0
  %225 = load %union.rec*, %union.rec** %opred539, align 8
  %226 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1540 = bitcast %union.rec* %226 to %struct.word_type*
  %olist541 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1540, i32 0, i32 0
  %arrayidx542 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist541, i32 0, i64 1
  %opred543 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx542, i32 0, i32 0
  store %union.rec* %225, %union.rec** %opred543, align 8
  %227 = load %union.rec*, %union.rec** @zz_hold, align 8
  %228 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1544 = bitcast %union.rec* %228 to %struct.word_type*
  %olist545 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1544, i32 0, i32 0
  %arrayidx546 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist545, i32 0, i64 1
  %opred547 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx546, i32 0, i32 0
  %229 = load %union.rec*, %union.rec** %opred547, align 8
  %os1548 = bitcast %union.rec* %229 to %struct.word_type*
  %olist549 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1548, i32 0, i32 0
  %arrayidx550 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist549, i32 0, i64 1
  %osucc551 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx550, i32 0, i32 1
  store %union.rec* %227, %union.rec** %osucc551, align 8
  %230 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %231 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1552 = bitcast %union.rec* %231 to %struct.word_type*
  %olist553 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1552, i32 0, i32 0
  %arrayidx554 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist553, i32 0, i64 1
  %opred555 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx554, i32 0, i32 0
  store %union.rec* %230, %union.rec** %opred555, align 8
  %232 = load %union.rec*, %union.rec** @zz_res, align 8
  %233 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1556 = bitcast %union.rec* %233 to %struct.word_type*
  %olist557 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1556, i32 0, i32 0
  %arrayidx558 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist557, i32 0, i64 1
  %osucc559 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx558, i32 0, i32 1
  store %union.rec* %232, %union.rec** %osucc559, align 8
  br label %cond.end.560

cond.end.560:                                     ; preds = %cond.false.531, %cond.true.530
  %cond561 = phi %union.rec* [ %221, %cond.true.530 ], [ %232, %cond.false.531 ]
  br label %cond.end.562

cond.end.562:                                     ; preds = %cond.end.560, %cond.true.526
  %cond563 = phi %union.rec* [ %219, %cond.true.526 ], [ %cond561, %cond.end.560 ]
  %234 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv564 = zext i8 %234 to i32
  store i32 %conv564, i32* @zz_size, align 4
  %conv565 = sext i32 %conv564 to i64
  %cmp566 = icmp uge i64 %conv565, 265
  br i1 %cmp566, label %if.then.568, label %if.else.570

if.then.568:                                      ; preds = %cond.end.562
  %235 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call569 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %235)
  br label %if.end.587

if.else.570:                                      ; preds = %cond.end.562
  %236 = load i32, i32* @zz_size, align 4
  %idxprom571 = sext i32 %236 to i64
  %arrayidx572 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom571
  %237 = load %union.rec*, %union.rec** %arrayidx572, align 8
  %cmp573 = icmp eq %union.rec* %237, null
  br i1 %cmp573, label %if.then.575, label %if.else.577

if.then.575:                                      ; preds = %if.else.570
  %238 = load i32, i32* @zz_size, align 4
  %239 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call576 = call %union.rec* @GetMemory(i32 %238, %struct.FILE_POS* %239)
  store %union.rec* %call576, %union.rec** @zz_hold, align 8
  br label %if.end.586

if.else.577:                                      ; preds = %if.else.570
  %240 = load i32, i32* @zz_size, align 4
  %idxprom578 = sext i32 %240 to i64
  %arrayidx579 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom578
  %241 = load %union.rec*, %union.rec** %arrayidx579, align 8
  store %union.rec* %241, %union.rec** @zz_hold, align 8
  store %union.rec* %241, %union.rec** @zz_hold, align 8
  %242 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1580 = bitcast %union.rec* %242 to %struct.word_type*
  %olist581 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1580, i32 0, i32 0
  %arrayidx582 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist581, i32 0, i64 0
  %opred583 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx582, i32 0, i32 0
  %243 = load %union.rec*, %union.rec** %opred583, align 8
  %244 = load i32, i32* @zz_size, align 4
  %idxprom584 = sext i32 %244 to i64
  %arrayidx585 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom584
  store %union.rec* %243, %union.rec** %arrayidx585, align 8
  br label %if.end.586

if.end.586:                                       ; preds = %if.else.577, %if.then.575
  br label %if.end.587

if.end.587:                                       ; preds = %if.end.586, %if.then.568
  %245 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1588 = bitcast %union.rec* %245 to %struct.word_type*
  %ou1589 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1588, i32 0, i32 1
  %os11590 = bitcast %union.FIRST_UNION* %ou1589 to %struct.anon*
  %otype591 = getelementptr inbounds %struct.anon, %struct.anon* %os11590, i32 0, i32 0
  store i8 0, i8* %otype591, align 1
  %246 = load %union.rec*, %union.rec** @zz_hold, align 8
  %247 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1592 = bitcast %union.rec* %247 to %struct.word_type*
  %olist593 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1592, i32 0, i32 0
  %arrayidx594 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist593, i32 0, i64 1
  %osucc595 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx594, i32 0, i32 1
  store %union.rec* %246, %union.rec** %osucc595, align 8
  %248 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1596 = bitcast %union.rec* %248 to %struct.word_type*
  %olist597 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1596, i32 0, i32 0
  %arrayidx598 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist597, i32 0, i64 1
  %opred599 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx598, i32 0, i32 0
  store %union.rec* %246, %union.rec** %opred599, align 8
  %249 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1600 = bitcast %union.rec* %249 to %struct.word_type*
  %olist601 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1600, i32 0, i32 0
  %arrayidx602 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist601, i32 0, i64 0
  %osucc603 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx602, i32 0, i32 1
  store %union.rec* %246, %union.rec** %osucc603, align 8
  %250 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1604 = bitcast %union.rec* %250 to %struct.word_type*
  %olist605 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1604, i32 0, i32 0
  %arrayidx606 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist605, i32 0, i64 0
  %opred607 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx606, i32 0, i32 0
  store %union.rec* %246, %union.rec** %opred607, align 8
  store %union.rec* %246, %union.rec** @xx_link, align 8
  %251 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %251, %union.rec** @zz_res, align 8
  %252 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %252, %union.rec** @zz_hold, align 8
  %253 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp608 = icmp eq %union.rec* %253, null
  br i1 %cmp608, label %cond.true.610, label %cond.false.611

cond.true.610:                                    ; preds = %if.end.587
  %254 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.646

cond.false.611:                                   ; preds = %if.end.587
  %255 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp612 = icmp eq %union.rec* %255, null
  br i1 %cmp612, label %cond.true.614, label %cond.false.615

cond.true.614:                                    ; preds = %cond.false.611
  %256 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.644

cond.false.615:                                   ; preds = %cond.false.611
  %257 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1616 = bitcast %union.rec* %257 to %struct.word_type*
  %olist617 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1616, i32 0, i32 0
  %arrayidx618 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist617, i32 0, i64 0
  %opred619 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx618, i32 0, i32 0
  %258 = load %union.rec*, %union.rec** %opred619, align 8
  store %union.rec* %258, %union.rec** @zz_tmp, align 8
  %259 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1620 = bitcast %union.rec* %259 to %struct.word_type*
  %olist621 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1620, i32 0, i32 0
  %arrayidx622 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist621, i32 0, i64 0
  %opred623 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx622, i32 0, i32 0
  %260 = load %union.rec*, %union.rec** %opred623, align 8
  %261 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1624 = bitcast %union.rec* %261 to %struct.word_type*
  %olist625 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1624, i32 0, i32 0
  %arrayidx626 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist625, i32 0, i64 0
  %opred627 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx626, i32 0, i32 0
  store %union.rec* %260, %union.rec** %opred627, align 8
  %262 = load %union.rec*, %union.rec** @zz_hold, align 8
  %263 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1628 = bitcast %union.rec* %263 to %struct.word_type*
  %olist629 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1628, i32 0, i32 0
  %arrayidx630 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist629, i32 0, i64 0
  %opred631 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx630, i32 0, i32 0
  %264 = load %union.rec*, %union.rec** %opred631, align 8
  %os1632 = bitcast %union.rec* %264 to %struct.word_type*
  %olist633 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1632, i32 0, i32 0
  %arrayidx634 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist633, i32 0, i64 0
  %osucc635 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx634, i32 0, i32 1
  store %union.rec* %262, %union.rec** %osucc635, align 8
  %265 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %266 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1636 = bitcast %union.rec* %266 to %struct.word_type*
  %olist637 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1636, i32 0, i32 0
  %arrayidx638 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist637, i32 0, i64 0
  %opred639 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx638, i32 0, i32 0
  store %union.rec* %265, %union.rec** %opred639, align 8
  %267 = load %union.rec*, %union.rec** @zz_res, align 8
  %268 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1640 = bitcast %union.rec* %268 to %struct.word_type*
  %olist641 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1640, i32 0, i32 0
  %arrayidx642 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist641, i32 0, i64 0
  %osucc643 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx642, i32 0, i32 1
  store %union.rec* %267, %union.rec** %osucc643, align 8
  br label %cond.end.644

cond.end.644:                                     ; preds = %cond.false.615, %cond.true.614
  %cond645 = phi %union.rec* [ %256, %cond.true.614 ], [ %267, %cond.false.615 ]
  br label %cond.end.646

cond.end.646:                                     ; preds = %cond.end.644, %cond.true.610
  %cond647 = phi %union.rec* [ %254, %cond.true.610 ], [ %cond645, %cond.end.644 ]
  %269 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %269, %union.rec** @zz_res, align 8
  %270 = load %union.rec*, %union.rec** %y, align 8
  %os1648 = bitcast %union.rec* %270 to %struct.word_type*
  %ou1649 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1648, i32 0, i32 1
  %ofpos650 = bitcast %union.FIRST_UNION* %ou1649 to %struct.FILE_POS*
  %call651 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), %struct.FILE_POS* %ofpos650)
  store %union.rec* %call651, %union.rec** @zz_hold, align 8
  %271 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp652 = icmp eq %union.rec* %271, null
  br i1 %cmp652, label %cond.true.654, label %cond.false.655

cond.true.654:                                    ; preds = %cond.end.646
  %272 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.690

cond.false.655:                                   ; preds = %cond.end.646
  %273 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp656 = icmp eq %union.rec* %273, null
  br i1 %cmp656, label %cond.true.658, label %cond.false.659

cond.true.658:                                    ; preds = %cond.false.655
  %274 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.688

cond.false.659:                                   ; preds = %cond.false.655
  %275 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1660 = bitcast %union.rec* %275 to %struct.word_type*
  %olist661 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1660, i32 0, i32 0
  %arrayidx662 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist661, i32 0, i64 1
  %opred663 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx662, i32 0, i32 0
  %276 = load %union.rec*, %union.rec** %opred663, align 8
  store %union.rec* %276, %union.rec** @zz_tmp, align 8
  %277 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1664 = bitcast %union.rec* %277 to %struct.word_type*
  %olist665 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1664, i32 0, i32 0
  %arrayidx666 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist665, i32 0, i64 1
  %opred667 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx666, i32 0, i32 0
  %278 = load %union.rec*, %union.rec** %opred667, align 8
  %279 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1668 = bitcast %union.rec* %279 to %struct.word_type*
  %olist669 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1668, i32 0, i32 0
  %arrayidx670 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist669, i32 0, i64 1
  %opred671 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx670, i32 0, i32 0
  store %union.rec* %278, %union.rec** %opred671, align 8
  %280 = load %union.rec*, %union.rec** @zz_hold, align 8
  %281 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1672 = bitcast %union.rec* %281 to %struct.word_type*
  %olist673 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1672, i32 0, i32 0
  %arrayidx674 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist673, i32 0, i64 1
  %opred675 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx674, i32 0, i32 0
  %282 = load %union.rec*, %union.rec** %opred675, align 8
  %os1676 = bitcast %union.rec* %282 to %struct.word_type*
  %olist677 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1676, i32 0, i32 0
  %arrayidx678 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist677, i32 0, i64 1
  %osucc679 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx678, i32 0, i32 1
  store %union.rec* %280, %union.rec** %osucc679, align 8
  %283 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %284 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1680 = bitcast %union.rec* %284 to %struct.word_type*
  %olist681 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1680, i32 0, i32 0
  %arrayidx682 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist681, i32 0, i64 1
  %opred683 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx682, i32 0, i32 0
  store %union.rec* %283, %union.rec** %opred683, align 8
  %285 = load %union.rec*, %union.rec** @zz_res, align 8
  %286 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1684 = bitcast %union.rec* %286 to %struct.word_type*
  %olist685 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1684, i32 0, i32 0
  %arrayidx686 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist685, i32 0, i64 1
  %osucc687 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx686, i32 0, i32 1
  store %union.rec* %285, %union.rec** %osucc687, align 8
  br label %cond.end.688

cond.end.688:                                     ; preds = %cond.false.659, %cond.true.658
  %cond689 = phi %union.rec* [ %274, %cond.true.658 ], [ %285, %cond.false.659 ]
  br label %cond.end.690

cond.end.690:                                     ; preds = %cond.end.688, %cond.true.654
  %cond691 = phi %union.rec* [ %272, %cond.true.654 ], [ %cond689, %cond.end.688 ]
  %287 = load i32, i32* %stop, align 4
  %add692 = add nsw i32 %287, 1
  %idxprom693 = sext i32 %add692 to i64
  %288 = load i8*, i8** %key, align 8
  %arrayidx694 = getelementptr inbounds i8, i8* %288, i64 %idxprom693
  store i8 0, i8* %arrayidx694, align 1
  %289 = load %union.rec*, %union.rec** %y, align 8
  call void @FontWordSize(%union.rec* %289)
  %290 = load %union.rec*, %union.rec** %link, align 8
  %os1695 = bitcast %union.rec* %290 to %struct.word_type*
  %olist696 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1695, i32 0, i32 0
  %arrayidx697 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist696, i32 0, i64 0
  %osucc698 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx697, i32 0, i32 1
  %291 = load %union.rec*, %union.rec** %osucc698, align 8
  store %union.rec* %291, %union.rec** %link, align 8
  br label %for.inc.1573

if.end.699:                                       ; preds = %for.end.122
  %292 = load i32, i32* %stop, align 4
  %293 = load i32, i32* %start, align 4
  %sub = sub nsw i32 %292, %293
  %cmp700 = icmp slt i32 %sub, 5
  br i1 %cmp700, label %if.then.702, label %if.end.703

if.then.702:                                      ; preds = %if.end.699
  br label %for.inc.1573

if.end.703:                                       ; preds = %if.end.699
  %294 = load i32, i32* %stop, align 4
  %idxprom704 = sext i32 %294 to i64
  %295 = load i8*, i8** %key, align 8
  %arrayidx705 = getelementptr inbounds i8, i8* %295, i64 %idxprom704
  %296 = load i8, i8* %arrayidx705, align 1
  %conv706 = zext i8 %296 to i32
  %cmp707 = icmp ne i32 %conv706, 0
  br i1 %cmp707, label %land.lhs.true.709, label %if.end.718

land.lhs.true.709:                                ; preds = %if.end.703
  %297 = load i32, i32* %stop, align 4
  %idxprom710 = sext i32 %297 to i64
  %298 = load i8*, i8** %key, align 8
  %arrayidx711 = getelementptr inbounds i8, i8* %298, i64 %idxprom710
  %299 = load i8, i8* %arrayidx711, align 1
  %idxprom712 = zext i8 %299 to i64
  %300 = load i8*, i8** %class, align 8
  %arrayidx713 = getelementptr inbounds i8, i8* %300, i64 %idxprom712
  %301 = load i8, i8* %arrayidx713, align 1
  %conv714 = zext i8 %301 to i32
  %cmp715 = icmp eq i32 %conv714, 0
  br i1 %cmp715, label %if.then.717, label %if.end.718

if.then.717:                                      ; preds = %land.lhs.true.709
  br label %for.inc.1573

if.end.718:                                       ; preds = %land.lhs.true.709, %if.end.703
  %arrayidx719 = getelementptr inbounds [2050 x i8], [2050 x i8]* %str, i32 0, i64 0
  store i8 1, i8* %arrayidx719, align 1
  %arrayidx720 = getelementptr inbounds [2051 x i8], [2051 x i8]* %rate, i32 0, i64 0
  store i8 48, i8* %arrayidx720, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond.721

for.cond.721:                                     ; preds = %for.inc.737, %if.end.718
  %302 = load i32, i32* %i, align 4
  %303 = load i32, i32* %stop, align 4
  %304 = load i32, i32* %start, align 4
  %sub722 = sub nsw i32 %303, %304
  %cmp723 = icmp slt i32 %302, %sub722
  br i1 %cmp723, label %for.body.725, label %for.end.739

for.body.725:                                     ; preds = %for.cond.721
  %305 = load i32, i32* %start, align 4
  %306 = load i32, i32* %i, align 4
  %add726 = add nsw i32 %305, %306
  %idxprom727 = sext i32 %add726 to i64
  %307 = load i8*, i8** %key, align 8
  %arrayidx728 = getelementptr inbounds i8, i8* %307, i64 %idxprom727
  %308 = load i8, i8* %arrayidx728, align 1
  %idxprom729 = zext i8 %308 to i64
  %309 = load i8*, i8** %class, align 8
  %arrayidx730 = getelementptr inbounds i8, i8* %309, i64 %idxprom729
  %310 = load i8, i8* %arrayidx730, align 1
  %311 = load i32, i32* %i, align 4
  %add731 = add nsw i32 %311, 1
  %idxprom732 = sext i32 %add731 to i64
  %arrayidx733 = getelementptr inbounds [2050 x i8], [2050 x i8]* %str, i32 0, i64 %idxprom732
  store i8 %310, i8* %arrayidx733, align 1
  %312 = load i32, i32* %i, align 4
  %add734 = add nsw i32 %312, 1
  %idxprom735 = sext i32 %add734 to i64
  %arrayidx736 = getelementptr inbounds [2051 x i8], [2051 x i8]* %rate, i32 0, i64 %idxprom735
  store i8 48, i8* %arrayidx736, align 1
  br label %for.inc.737

for.inc.737:                                      ; preds = %for.body.725
  %313 = load i32, i32* %i, align 4
  %inc738 = add nsw i32 %313, 1
  store i32 %inc738, i32* %i, align 4
  br label %for.cond.721

for.end.739:                                      ; preds = %for.cond.721
  %314 = load i32, i32* %i, align 4
  %add740 = add nsw i32 %314, 1
  %idxprom741 = sext i32 %add740 to i64
  %arrayidx742 = getelementptr inbounds [2050 x i8], [2050 x i8]* %str, i32 0, i64 %idxprom741
  store i8 1, i8* %arrayidx742, align 1
  %315 = load i32, i32* %i, align 4
  %add743 = add nsw i32 %315, 1
  %idxprom744 = sext i32 %add743 to i64
  %arrayidx745 = getelementptr inbounds [2051 x i8], [2051 x i8]* %rate, i32 0, i64 %idxprom744
  store i8 48, i8* %arrayidx745, align 1
  %316 = load i32, i32* %i, align 4
  %add746 = add nsw i32 %316, 2
  %idxprom747 = sext i32 %add746 to i64
  %arrayidx748 = getelementptr inbounds [2050 x i8], [2050 x i8]* %str, i32 0, i64 %idxprom747
  store i8 0, i8* %arrayidx748, align 1
  %317 = load i32, i32* %i, align 4
  %add749 = add nsw i32 %317, 2
  %idxprom750 = sext i32 %add749 to i64
  %arrayidx751 = getelementptr inbounds [2051 x i8], [2051 x i8]* %rate, i32 0, i64 %idxprom750
  store i8 48, i8* %arrayidx751, align 1
  %318 = load i32, i32* %i, align 4
  %add752 = add nsw i32 %318, 3
  %idxprom753 = sext i32 %add752 to i64
  %arrayidx754 = getelementptr inbounds [2051 x i8], [2051 x i8]* %rate, i32 0, i64 %idxprom753
  store i8 0, i8* %arrayidx754, align 1
  %arraydecay755 = getelementptr inbounds [2050 x i8], [2050 x i8]* %str, i32 0, i32 0
  store i8* %arraydecay755, i8** %ss, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond.900, %for.end.739
  store i32 0, i32* %curr_node, align 4
  %319 = load i8*, i8** %ss, align 8
  store i8* %319, i8** %s, align 8
  br label %for.cond.756

for.cond.756:                                     ; preds = %if.end.897, %do.body
  %320 = load i32, i32* %curr_node, align 4
  %idxprom757 = sext i32 %320 to i64
  %321 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %node_mem = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %321, i32 0, i32 3
  %322 = load i16*, i16** %node_mem, align 8
  %arrayidx758 = getelementptr inbounds i16, i16* %322, i64 %idxprom757
  %323 = load i16, i16* %arrayidx758, align 2
  %conv759 = sext i16 %323 to i32
  store i32 %conv759, i32* %pos, align 4
  %324 = load i32, i32* %pos, align 4
  %cmp760 = icmp slt i32 %324, 0
  br i1 %cmp760, label %if.then.762, label %if.end.807

if.then.762:                                      ; preds = %for.cond.756
  %arraydecay765 = getelementptr inbounds [2051 x i8], [2051 x i8]* %val, i32 0, i32 0
  store i8* %arraydecay765, i8** %q, align 8
  %325 = load i32, i32* %pos, align 4
  %sub766 = sub nsw i32 0, %325
  %idxprom767 = sext i32 %sub766 to i64
  %326 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %string_mem = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %326, i32 0, i32 6
  %327 = load i8*, i8** %string_mem, align 8
  %arrayidx768 = getelementptr inbounds i8, i8* %327, i64 %idxprom767
  store i8* %arrayidx768, i8** %p763, align 8
  br label %for.cond.769

for.cond.769:                                     ; preds = %for.inc.789, %if.then.762
  %328 = load i8*, i8** %p763, align 8
  %329 = load i8, i8* %328, align 1
  %conv770 = zext i8 %329 to i32
  %cmp771 = icmp ne i32 %conv770, 0
  br i1 %cmp771, label %for.body.773, label %for.end.791

for.body.773:                                     ; preds = %for.cond.769
  %330 = load i8*, i8** %p763, align 8
  %331 = load i8, i8* %330, align 1
  %conv774 = zext i8 %331 to i32
  %shr = ashr i32 %conv774, 4
  store i32 %shr, i32* %skip, align 4
  %332 = load i8*, i8** %p763, align 8
  %333 = load i8, i8* %332, align 1
  %conv775 = zext i8 %333 to i32
  %and = and i32 %conv775, 15
  %conv776 = trunc i32 %and to i8
  store i8 %conv776, i8* %xval, align 1
  store i32 0, i32* %i764, align 4
  br label %for.cond.777

for.cond.777:                                     ; preds = %for.inc.781, %for.body.773
  %334 = load i32, i32* %i764, align 4
  %335 = load i32, i32* %skip, align 4
  %cmp778 = icmp slt i32 %334, %335
  br i1 %cmp778, label %for.body.780, label %for.end.783

for.body.780:                                     ; preds = %for.cond.777
  %336 = load i8*, i8** %q, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %336, i32 1
  store i8* %incdec.ptr, i8** %q, align 8
  store i8 48, i8* %336, align 1
  br label %for.inc.781

for.inc.781:                                      ; preds = %for.body.780
  %337 = load i32, i32* %i764, align 4
  %inc782 = add nsw i32 %337, 1
  store i32 %inc782, i32* %i764, align 4
  br label %for.cond.777

for.end.783:                                      ; preds = %for.cond.777
  %338 = load i8, i8* %xval, align 1
  %conv784 = zext i8 %338 to i32
  %add785 = add nsw i32 %conv784, 48
  %sub786 = sub nsw i32 %add785, 2
  %conv787 = trunc i32 %sub786 to i8
  %339 = load i8*, i8** %q, align 8
  %incdec.ptr788 = getelementptr inbounds i8, i8* %339, i32 1
  store i8* %incdec.ptr788, i8** %q, align 8
  store i8 %conv787, i8* %339, align 1
  br label %for.inc.789

for.inc.789:                                      ; preds = %for.end.783
  %340 = load i8*, i8** %p763, align 8
  %incdec.ptr790 = getelementptr inbounds i8, i8* %340, i32 1
  store i8* %incdec.ptr790, i8** %p763, align 8
  br label %for.cond.769

for.end.791:                                      ; preds = %for.cond.769
  %341 = load i8*, i8** %q, align 8
  %incdec.ptr792 = getelementptr inbounds i8, i8* %341, i32 1
  store i8* %incdec.ptr792, i8** %q, align 8
  store i8 0, i8* %341, align 1
  %arraydecay794 = getelementptr inbounds [2051 x i8], [2051 x i8]* %val, i32 0, i32 0
  store i8* %arraydecay794, i8** %p793, align 8
  %arraydecay796 = getelementptr inbounds [2051 x i8], [2051 x i8]* %rate, i32 0, i32 0
  %342 = load i8*, i8** %ss, align 8
  %arraydecay797 = getelementptr inbounds [2050 x i8], [2050 x i8]* %str, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %342 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay797 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay796, i64 %sub.ptr.sub
  store i8* %add.ptr, i8** %q795, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.804, %for.end.791
  %343 = load i8*, i8** %p793, align 8
  %344 = load i8, i8* %343, align 1
  %tobool798 = icmp ne i8 %344, 0
  br i1 %tobool798, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %345 = load i8*, i8** %p793, align 8
  %346 = load i8, i8* %345, align 1
  %conv799 = zext i8 %346 to i32
  %347 = load i8*, i8** %q795, align 8
  %348 = load i8, i8* %347, align 1
  %conv800 = zext i8 %348 to i32
  %cmp801 = icmp sgt i32 %conv799, %conv800
  br i1 %cmp801, label %if.then.803, label %if.end.804

if.then.803:                                      ; preds = %while.body
  %349 = load i8*, i8** %p793, align 8
  %350 = load i8, i8* %349, align 1
  %351 = load i8*, i8** %q795, align 8
  store i8 %350, i8* %351, align 1
  br label %if.end.804

if.end.804:                                       ; preds = %if.then.803, %while.body
  %352 = load i8*, i8** %p793, align 8
  %incdec.ptr805 = getelementptr inbounds i8, i8* %352, i32 1
  store i8* %incdec.ptr805, i8** %p793, align 8
  %353 = load i8*, i8** %q795, align 8
  %incdec.ptr806 = getelementptr inbounds i8, i8* %353, i32 1
  store i8* %incdec.ptr806, i8** %q795, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.807

if.end.807:                                       ; preds = %while.end, %for.cond.756
  %354 = load i8*, i8** %s, align 8
  %355 = load i8, i8* %354, align 1
  %conv808 = zext i8 %355 to i32
  %cmp809 = icmp eq i32 %conv808, 0
  br i1 %cmp809, label %if.then.811, label %if.end.812

if.then.811:                                      ; preds = %if.end.807
  br label %for.end.899

if.end.812:                                       ; preds = %if.end.807
  %356 = load i32, i32* %curr_node, align 4
  %357 = load i8*, i8** %s, align 8
  %358 = load i8, i8* %357, align 1
  %conv813 = zext i8 %358 to i32
  %add814 = add nsw i32 %356, %conv813
  %idxprom815 = sext i32 %add814 to i64
  %359 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %node_mem816 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %359, i32 0, i32 3
  %360 = load i16*, i16** %node_mem816, align 8
  %arrayidx817 = getelementptr inbounds i16, i16* %360, i64 %idxprom815
  %361 = load i16, i16* %arrayidx817, align 2
  %conv818 = sext i16 %361 to i32
  store i32 %conv818, i32* %next_node, align 4
  %362 = load i32, i32* %next_node, align 4
  %cmp819 = icmp eq i32 %362, 0
  br i1 %cmp819, label %if.then.821, label %if.end.822

if.then.821:                                      ; preds = %if.end.812
  br label %for.end.899

if.end.822:                                       ; preds = %if.end.812
  %363 = load i32, i32* %next_node, align 4
  %cmp823 = icmp slt i32 %363, 0
  br i1 %cmp823, label %if.then.825, label %if.end.897

if.then.825:                                      ; preds = %if.end.822
  %364 = load i32, i32* %next_node, align 4
  %sub826 = sub nsw i32 0, %364
  %idxprom827 = sext i32 %sub826 to i64
  %365 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %string_mem828 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %365, i32 0, i32 6
  %366 = load i8*, i8** %string_mem828, align 8
  %arrayidx829 = getelementptr inbounds i8, i8* %366, i64 %idxprom827
  store i8* %arrayidx829, i8** %rem, align 8
  br label %do.body.830

do.body.830:                                      ; preds = %do.cond, %if.then.825
  %367 = load i8*, i8** %rem, align 8
  %368 = load i8, i8* %367, align 1
  %conv831 = zext i8 %368 to i32
  %cmp832 = icmp eq i32 %conv831, 0
  br i1 %cmp832, label %if.then.834, label %if.end.890

if.then.834:                                      ; preds = %do.body.830
  %arraydecay840 = getelementptr inbounds [2051 x i8], [2051 x i8]* %val, i32 0, i32 0
  store i8* %arraydecay840, i8** %q836, align 8
  %369 = load i8*, i8** %rem, align 8
  %add.ptr841 = getelementptr inbounds i8, i8* %369, i64 1
  store i8* %add.ptr841, i8** %p835, align 8
  br label %for.cond.842

for.cond.842:                                     ; preds = %for.inc.865, %if.then.834
  %370 = load i8*, i8** %p835, align 8
  %371 = load i8, i8* %370, align 1
  %conv843 = zext i8 %371 to i32
  %cmp844 = icmp ne i32 %conv843, 0
  br i1 %cmp844, label %for.body.846, label %for.end.867

for.body.846:                                     ; preds = %for.cond.842
  %372 = load i8*, i8** %p835, align 8
  %373 = load i8, i8* %372, align 1
  %conv847 = zext i8 %373 to i32
  %shr848 = ashr i32 %conv847, 4
  store i32 %shr848, i32* %skip839, align 4
  %374 = load i8*, i8** %p835, align 8
  %375 = load i8, i8* %374, align 1
  %conv849 = zext i8 %375 to i32
  %and850 = and i32 %conv849, 15
  %conv851 = trunc i32 %and850 to i8
  store i8 %conv851, i8* %xval837, align 1
  store i32 0, i32* %i838, align 4
  br label %for.cond.852

for.cond.852:                                     ; preds = %for.inc.857, %for.body.846
  %376 = load i32, i32* %i838, align 4
  %377 = load i32, i32* %skip839, align 4
  %cmp853 = icmp slt i32 %376, %377
  br i1 %cmp853, label %for.body.855, label %for.end.859

for.body.855:                                     ; preds = %for.cond.852
  %378 = load i8*, i8** %q836, align 8
  %incdec.ptr856 = getelementptr inbounds i8, i8* %378, i32 1
  store i8* %incdec.ptr856, i8** %q836, align 8
  store i8 48, i8* %378, align 1
  br label %for.inc.857

for.inc.857:                                      ; preds = %for.body.855
  %379 = load i32, i32* %i838, align 4
  %inc858 = add nsw i32 %379, 1
  store i32 %inc858, i32* %i838, align 4
  br label %for.cond.852

for.end.859:                                      ; preds = %for.cond.852
  %380 = load i8, i8* %xval837, align 1
  %conv860 = zext i8 %380 to i32
  %add861 = add nsw i32 %conv860, 48
  %sub862 = sub nsw i32 %add861, 2
  %conv863 = trunc i32 %sub862 to i8
  %381 = load i8*, i8** %q836, align 8
  %incdec.ptr864 = getelementptr inbounds i8, i8* %381, i32 1
  store i8* %incdec.ptr864, i8** %q836, align 8
  store i8 %conv863, i8* %381, align 1
  br label %for.inc.865

for.inc.865:                                      ; preds = %for.end.859
  %382 = load i8*, i8** %p835, align 8
  %incdec.ptr866 = getelementptr inbounds i8, i8* %382, i32 1
  store i8* %incdec.ptr866, i8** %p835, align 8
  br label %for.cond.842

for.end.867:                                      ; preds = %for.cond.842
  %383 = load i8*, i8** %q836, align 8
  %incdec.ptr868 = getelementptr inbounds i8, i8* %383, i32 1
  store i8* %incdec.ptr868, i8** %q836, align 8
  store i8 0, i8* %383, align 1
  %arraydecay870 = getelementptr inbounds [2051 x i8], [2051 x i8]* %val, i32 0, i32 0
  store i8* %arraydecay870, i8** %p869, align 8
  %arraydecay872 = getelementptr inbounds [2051 x i8], [2051 x i8]* %rate, i32 0, i32 0
  %384 = load i8*, i8** %ss, align 8
  %arraydecay873 = getelementptr inbounds [2050 x i8], [2050 x i8]* %str, i32 0, i32 0
  %sub.ptr.lhs.cast874 = ptrtoint i8* %384 to i64
  %sub.ptr.rhs.cast875 = ptrtoint i8* %arraydecay873 to i64
  %sub.ptr.sub876 = sub i64 %sub.ptr.lhs.cast874, %sub.ptr.rhs.cast875
  %add.ptr877 = getelementptr inbounds i8, i8* %arraydecay872, i64 %sub.ptr.sub876
  store i8* %add.ptr877, i8** %q871, align 8
  br label %while.cond.878

while.cond.878:                                   ; preds = %if.end.886, %for.end.867
  %385 = load i8*, i8** %p869, align 8
  %386 = load i8, i8* %385, align 1
  %tobool879 = icmp ne i8 %386, 0
  br i1 %tobool879, label %while.body.880, label %while.end.889

while.body.880:                                   ; preds = %while.cond.878
  %387 = load i8*, i8** %p869, align 8
  %388 = load i8, i8* %387, align 1
  %conv881 = zext i8 %388 to i32
  %389 = load i8*, i8** %q871, align 8
  %390 = load i8, i8* %389, align 1
  %conv882 = zext i8 %390 to i32
  %cmp883 = icmp sgt i32 %conv881, %conv882
  br i1 %cmp883, label %if.then.885, label %if.end.886

if.then.885:                                      ; preds = %while.body.880
  %391 = load i8*, i8** %p869, align 8
  %392 = load i8, i8* %391, align 1
  %393 = load i8*, i8** %q871, align 8
  store i8 %392, i8* %393, align 1
  br label %if.end.886

if.end.886:                                       ; preds = %if.then.885, %while.body.880
  %394 = load i8*, i8** %p869, align 8
  %incdec.ptr887 = getelementptr inbounds i8, i8* %394, i32 1
  store i8* %incdec.ptr887, i8** %p869, align 8
  %395 = load i8*, i8** %q871, align 8
  %incdec.ptr888 = getelementptr inbounds i8, i8* %395, i32 1
  store i8* %incdec.ptr888, i8** %q871, align 8
  br label %while.cond.878

while.end.889:                                    ; preds = %while.cond.878
  br label %do.end

if.end.890:                                       ; preds = %do.body.830
  br label %do.cond

do.cond:                                          ; preds = %if.end.890
  %396 = load i8*, i8** %s, align 8
  %incdec.ptr891 = getelementptr inbounds i8, i8* %396, i32 1
  store i8* %incdec.ptr891, i8** %s, align 8
  %397 = load i8, i8* %incdec.ptr891, align 1
  %conv892 = zext i8 %397 to i32
  %398 = load i8*, i8** %rem, align 8
  %incdec.ptr893 = getelementptr inbounds i8, i8* %398, i32 1
  store i8* %incdec.ptr893, i8** %rem, align 8
  %399 = load i8, i8* %398, align 1
  %conv894 = zext i8 %399 to i32
  %cmp895 = icmp eq i32 %conv892, %conv894
  br i1 %cmp895, label %do.body.830, label %do.end

do.end:                                           ; preds = %do.cond, %while.end.889
  br label %for.end.899

if.end.897:                                       ; preds = %if.end.822
  %400 = load i32, i32* %next_node, align 4
  %mul = mul nsw i32 4, %400
  store i32 %mul, i32* %curr_node, align 4
  %401 = load i8*, i8** %s, align 8
  %incdec.ptr898 = getelementptr inbounds i8, i8* %401, i32 1
  store i8* %incdec.ptr898, i8** %s, align 8
  br label %for.cond.756

for.end.899:                                      ; preds = %do.end, %if.then.821, %if.then.811
  br label %do.cond.900

do.cond.900:                                      ; preds = %for.end.899
  %402 = load i8*, i8** %ss, align 8
  %incdec.ptr901 = getelementptr inbounds i8, i8* %402, i32 1
  store i8* %incdec.ptr901, i8** %ss, align 8
  %add.ptr902 = getelementptr inbounds i8, i8* %incdec.ptr901, i64 1
  %403 = load i8, i8* %add.ptr902, align 1
  %conv903 = zext i8 %403 to i32
  %cmp904 = icmp ne i32 %conv903, 1
  br i1 %cmp904, label %do.body, label %do.end.906

do.end.906:                                       ; preds = %do.cond.900
  %404 = load %union.rec*, %union.rec** %y, align 8
  %os1907 = bitcast %union.rec* %404 to %struct.word_type*
  %ou2908 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1907, i32 0, i32 2
  %os22909 = bitcast %union.SECOND_UNION* %ou2908 to %struct.anon.1*
  %405 = bitcast %struct.anon.1* %os22909 to i32*
  %bf.load910 = load i32, i32* %405, align 4
  %bf.clear911 = and i32 %bf.load910, 4095
  %idxprom912 = zext i32 %bf.clear911 to i64
  %406 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx913 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %406, i64 %idxprom912
  %lig_table = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx913, i32 0, i32 1
  %407 = load i8*, i8** %lig_table, align 8
  store i8* %407, i8** %lig, align 8
  %408 = load i8*, i8** %key, align 8
  store i8* %408, i8** %p, align 8
  store i32 2, i32* %i, align 4
  br label %for.cond.914

for.cond.914:                                     ; preds = %for.inc.973, %do.end.906
  %409 = load i8*, i8** %p, align 8
  %410 = load i8, i8* %409, align 1
  %conv915 = zext i8 %410 to i32
  %cmp916 = icmp ne i32 %conv915, 0
  br i1 %cmp916, label %for.body.918, label %for.end.976

for.body.918:                                     ; preds = %for.cond.914
  %411 = load i8*, i8** %p, align 8
  %412 = load i8, i8* %411, align 1
  %idxprom919 = zext i8 %412 to i64
  %413 = load i8*, i8** %lig, align 8
  %arrayidx920 = getelementptr inbounds i8, i8* %413, i64 %idxprom919
  %414 = load i8, i8* %arrayidx920, align 1
  %conv921 = zext i8 %414 to i32
  %cmp922 = icmp sgt i32 %conv921, 1
  br i1 %cmp922, label %if.then.924, label %if.end.972

if.then.924:                                      ; preds = %for.body.918
  %415 = load i8*, i8** %p, align 8
  %416 = load i8, i8* %415, align 1
  %idxprom925 = zext i8 %416 to i64
  %417 = load i8*, i8** %lig, align 8
  %arrayidx926 = getelementptr inbounds i8, i8* %417, i64 %idxprom925
  %418 = load i8, i8* %arrayidx926, align 1
  %conv927 = zext i8 %418 to i32
  %add928 = add nsw i32 %conv927, 256
  %idxprom929 = sext i32 %add928 to i64
  %419 = load i8*, i8** %lig, align 8
  %arrayidx930 = getelementptr inbounds i8, i8* %419, i64 %idxprom929
  store i8* %arrayidx930, i8** %a, align 8
  br label %while.cond.931

while.cond.931:                                   ; preds = %if.end.970, %if.then.924
  %420 = load i8*, i8** %a, align 8
  %incdec.ptr932 = getelementptr inbounds i8, i8* %420, i32 1
  store i8* %incdec.ptr932, i8** %a, align 8
  %421 = load i8, i8* %420, align 1
  %conv933 = zext i8 %421 to i32
  %422 = load i8*, i8** %p, align 8
  %423 = load i8, i8* %422, align 1
  %conv934 = zext i8 %423 to i32
  %cmp935 = icmp eq i32 %conv933, %conv934
  br i1 %cmp935, label %while.body.937, label %while.end.971

while.body.937:                                   ; preds = %while.cond.931
  %424 = load i8*, i8** %p, align 8
  %add.ptr938 = getelementptr inbounds i8, i8* %424, i64 1
  store i8* %add.ptr938, i8** %b, align 8
  br label %while.cond.939

while.cond.939:                                   ; preds = %while.body.952, %while.body.937
  %425 = load i8*, i8** %a, align 8
  %426 = load i8, i8* %425, align 1
  %conv940 = zext i8 %426 to i32
  %427 = load i8*, i8** %b, align 8
  %428 = load i8, i8* %427, align 1
  %conv941 = zext i8 %428 to i32
  %cmp942 = icmp eq i32 %conv940, %conv941
  br i1 %cmp942, label %land.lhs.true.944, label %land.end

land.lhs.true.944:                                ; preds = %while.cond.939
  %429 = load i8*, i8** %a, align 8
  %add.ptr945 = getelementptr inbounds i8, i8* %429, i64 1
  %430 = load i8, i8* %add.ptr945, align 1
  %conv946 = zext i8 %430 to i32
  %cmp947 = icmp ne i32 %conv946, 0
  br i1 %cmp947, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.944
  %431 = load i8*, i8** %b, align 8
  %432 = load i8, i8* %431, align 1
  %conv949 = zext i8 %432 to i32
  %cmp950 = icmp ne i32 %conv949, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.944, %while.cond.939
  %433 = phi i1 [ false, %land.lhs.true.944 ], [ false, %while.cond.939 ], [ %cmp950, %land.rhs ]
  br i1 %433, label %while.body.952, label %while.end.955

while.body.952:                                   ; preds = %land.end
  %434 = load i8*, i8** %a, align 8
  %incdec.ptr953 = getelementptr inbounds i8, i8* %434, i32 1
  store i8* %incdec.ptr953, i8** %a, align 8
  %435 = load i8*, i8** %b, align 8
  %incdec.ptr954 = getelementptr inbounds i8, i8* %435, i32 1
  store i8* %incdec.ptr954, i8** %b, align 8
  br label %while.cond.939

while.end.955:                                    ; preds = %land.end
  %436 = load i8*, i8** %a, align 8
  %add.ptr956 = getelementptr inbounds i8, i8* %436, i64 1
  %437 = load i8, i8* %add.ptr956, align 1
  %conv957 = zext i8 %437 to i32
  %cmp958 = icmp eq i32 %conv957, 0
  br i1 %cmp958, label %if.then.960, label %if.else.963

if.then.960:                                      ; preds = %while.end.955
  %438 = load i32, i32* %i, align 4
  %idxprom961 = sext i32 %438 to i64
  %arrayidx962 = getelementptr inbounds [2051 x i8], [2051 x i8]* %rate, i32 0, i64 %idxprom961
  store i8 48, i8* %arrayidx962, align 1
  br label %while.end.971

if.else.963:                                      ; preds = %while.end.955
  br label %while.cond.964

while.cond.964:                                   ; preds = %while.body.967, %if.else.963
  %439 = load i8*, i8** %a, align 8
  %incdec.ptr965 = getelementptr inbounds i8, i8* %439, i32 1
  store i8* %incdec.ptr965, i8** %a, align 8
  %440 = load i8, i8* %incdec.ptr965, align 1
  %tobool966 = icmp ne i8 %440, 0
  br i1 %tobool966, label %while.body.967, label %while.end.968

while.body.967:                                   ; preds = %while.cond.964
  br label %while.cond.964

while.end.968:                                    ; preds = %while.cond.964
  %441 = load i8*, i8** %a, align 8
  %incdec.ptr969 = getelementptr inbounds i8, i8* %441, i32 1
  store i8* %incdec.ptr969, i8** %a, align 8
  br label %if.end.970

if.end.970:                                       ; preds = %while.end.968
  br label %while.cond.931

while.end.971:                                    ; preds = %if.then.960, %while.cond.931
  br label %if.end.972

if.end.972:                                       ; preds = %while.end.971, %for.body.918
  br label %for.inc.973

for.inc.973:                                      ; preds = %if.end.972
  %442 = load i8*, i8** %p, align 8
  %incdec.ptr974 = getelementptr inbounds i8, i8* %442, i32 1
  store i8* %incdec.ptr974, i8** %p, align 8
  %443 = load i32, i32* %i, align 4
  %inc975 = add nsw i32 %443, 1
  store i32 %inc975, i32* %i, align 4
  br label %for.cond.914

for.end.976:                                      ; preds = %for.cond.914
  store i32 0, i32* %hyphenated, align 4
  %444 = load %union.rec*, %union.rec** %link, align 8
  %os1977 = bitcast %union.rec* %444 to %struct.word_type*
  %olist978 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1977, i32 0, i32 0
  %arrayidx979 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist978, i32 0, i64 0
  %osucc980 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx979, i32 0, i32 1
  %445 = load %union.rec*, %union.rec** %osucc980, align 8
  store %union.rec* %445, %union.rec** %next_link, align 8
  %446 = load i32, i32* %stop, align 4
  %447 = load i32, i32* %start, align 4
  %sub981 = sub nsw i32 %446, %447
  %sub982 = sub nsw i32 %sub981, 1
  store i32 %sub982, i32* %i, align 4
  br label %for.cond.983

for.cond.983:                                     ; preds = %for.inc.1564, %for.end.976
  %448 = load i32, i32* %i, align 4
  %cmp984 = icmp sge i32 %448, 3
  br i1 %cmp984, label %for.body.986, label %for.end.1565

for.body.986:                                     ; preds = %for.cond.983
  %449 = load i32, i32* %i, align 4
  %idxprom987 = sext i32 %449 to i64
  %arrayidx988 = getelementptr inbounds [2051 x i8], [2051 x i8]* %rate, i32 0, i64 %idxprom987
  %450 = load i8, i8* %arrayidx988, align 1
  %conv989 = zext i8 %450 to i32
  %and990 = and i32 %conv989, 1
  %tobool991 = icmp ne i32 %and990, 0
  br i1 %tobool991, label %if.then.992, label %if.end.1563

if.then.992:                                      ; preds = %for.body.986
  %451 = load i32, i32* %start, align 4
  %452 = load i32, i32* %i, align 4
  %add993 = add nsw i32 %451, %452
  %sub994 = sub nsw i32 %add993, 1
  %idxprom995 = sext i32 %sub994 to i64
  %453 = load i8*, i8** %key, align 8
  %arrayidx996 = getelementptr inbounds i8, i8* %453, i64 %idxprom995
  %454 = load %union.rec*, %union.rec** %y, align 8
  %os1997 = bitcast %union.rec* %454 to %struct.word_type*
  %ou1998 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1997, i32 0, i32 1
  %ofpos999 = bitcast %union.FIRST_UNION* %ou1998 to %struct.FILE_POS*
  %call1000 = call %union.rec* @MakeWord(i32 11, i8* %arrayidx996, %struct.FILE_POS* %ofpos999)
  store %union.rec* %call1000, %union.rec** %z, align 8
  %455 = load %union.rec*, %union.rec** %y, align 8
  %os11001 = bitcast %union.rec* %455 to %struct.word_type*
  %ou21002 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11001, i32 0, i32 2
  %os221003 = bitcast %union.SECOND_UNION* %ou21002 to %struct.anon.1*
  %456 = bitcast %struct.anon.1* %os221003 to i32*
  %bf.load1004 = load i32, i32* %456, align 4
  %bf.clear1005 = and i32 %bf.load1004, 4095
  %457 = load %union.rec*, %union.rec** %z, align 8
  %os11006 = bitcast %union.rec* %457 to %struct.word_type*
  %ou21007 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11006, i32 0, i32 2
  %os221008 = bitcast %union.SECOND_UNION* %ou21007 to %struct.anon.1*
  %458 = bitcast %struct.anon.1* %os221008 to i32*
  %bf.load1009 = load i32, i32* %458, align 4
  %bf.value1010 = and i32 %bf.clear1005, 4095
  %bf.clear1011 = and i32 %bf.load1009, -4096
  %bf.set1012 = or i32 %bf.clear1011, %bf.value1010
  store i32 %bf.set1012, i32* %458, align 4
  %459 = load %union.rec*, %union.rec** %y, align 8
  %os11013 = bitcast %union.rec* %459 to %struct.word_type*
  %ou21014 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11013, i32 0, i32 2
  %os221015 = bitcast %union.SECOND_UNION* %ou21014 to %struct.anon.1*
  %460 = bitcast %struct.anon.1* %os221015 to i32*
  %bf.load1016 = load i32, i32* %460, align 4
  %bf.lshr1017 = lshr i32 %bf.load1016, 12
  %bf.clear1018 = and i32 %bf.lshr1017, 1023
  %461 = load %union.rec*, %union.rec** %z, align 8
  %os11019 = bitcast %union.rec* %461 to %struct.word_type*
  %ou21020 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11019, i32 0, i32 2
  %os221021 = bitcast %union.SECOND_UNION* %ou21020 to %struct.anon.1*
  %462 = bitcast %struct.anon.1* %os221021 to i32*
  %bf.load1022 = load i32, i32* %462, align 4
  %bf.value1023 = and i32 %bf.clear1018, 1023
  %bf.shl1024 = shl i32 %bf.value1023, 12
  %bf.clear1025 = and i32 %bf.load1022, -4190209
  %bf.set1026 = or i32 %bf.clear1025, %bf.shl1024
  store i32 %bf.set1026, i32* %462, align 4
  %463 = load %union.rec*, %union.rec** %y, align 8
  %os11027 = bitcast %union.rec* %463 to %struct.word_type*
  %ou21028 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11027, i32 0, i32 2
  %os221029 = bitcast %union.SECOND_UNION* %ou21028 to %struct.anon.1*
  %464 = bitcast %struct.anon.1* %os221029 to i32*
  %bf.load1030 = load i32, i32* %464, align 4
  %bf.lshr1031 = lshr i32 %bf.load1030, 22
  %bf.clear1032 = and i32 %bf.lshr1031, 1
  %465 = load %union.rec*, %union.rec** %z, align 8
  %os11033 = bitcast %union.rec* %465 to %struct.word_type*
  %ou21034 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11033, i32 0, i32 2
  %os221035 = bitcast %union.SECOND_UNION* %ou21034 to %struct.anon.1*
  %466 = bitcast %struct.anon.1* %os221035 to i32*
  %bf.load1036 = load i32, i32* %466, align 4
  %bf.value1037 = and i32 %bf.clear1032, 1
  %bf.shl1038 = shl i32 %bf.value1037, 22
  %bf.clear1039 = and i32 %bf.load1036, -4194305
  %bf.set1040 = or i32 %bf.clear1039, %bf.shl1038
  store i32 %bf.set1040, i32* %466, align 4
  %467 = load %union.rec*, %union.rec** %y, align 8
  %os11041 = bitcast %union.rec* %467 to %struct.word_type*
  %ou21042 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11041, i32 0, i32 2
  %os221043 = bitcast %union.SECOND_UNION* %ou21042 to %struct.anon.1*
  %468 = bitcast %struct.anon.1* %os221043 to i32*
  %bf.load1044 = load i32, i32* %468, align 4
  %bf.lshr1045 = lshr i32 %bf.load1044, 23
  %bf.clear1046 = and i32 %bf.lshr1045, 63
  %469 = load %union.rec*, %union.rec** %z, align 8
  %os11047 = bitcast %union.rec* %469 to %struct.word_type*
  %ou21048 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11047, i32 0, i32 2
  %os221049 = bitcast %union.SECOND_UNION* %ou21048 to %struct.anon.1*
  %470 = bitcast %struct.anon.1* %os221049 to i32*
  %bf.load1050 = load i32, i32* %470, align 4
  %bf.value1051 = and i32 %bf.clear1046, 63
  %bf.shl1052 = shl i32 %bf.value1051, 23
  %bf.clear1053 = and i32 %bf.load1050, -528482305
  %bf.set1054 = or i32 %bf.clear1053, %bf.shl1052
  store i32 %bf.set1054, i32* %470, align 4
  %471 = load %union.rec*, %union.rec** %y, align 8
  %os11055 = bitcast %union.rec* %471 to %struct.word_type*
  %ou21056 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11055, i32 0, i32 2
  %os221057 = bitcast %union.SECOND_UNION* %ou21056 to %struct.anon.1*
  %472 = bitcast %struct.anon.1* %os221057 to i32*
  %bf.load1058 = load i32, i32* %472, align 4
  %bf.lshr1059 = lshr i32 %bf.load1058, 31
  %473 = load %union.rec*, %union.rec** %z, align 8
  %os11060 = bitcast %union.rec* %473 to %struct.word_type*
  %ou21061 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11060, i32 0, i32 2
  %os221062 = bitcast %union.SECOND_UNION* %ou21061 to %struct.anon.1*
  %474 = bitcast %struct.anon.1* %os221062 to i32*
  %bf.load1063 = load i32, i32* %474, align 4
  %bf.value1064 = and i32 %bf.lshr1059, 1
  %bf.shl1065 = shl i32 %bf.value1064, 31
  %bf.clear1066 = and i32 %bf.load1063, 2147483647
  %bf.set1067 = or i32 %bf.clear1066, %bf.shl1065
  store i32 %bf.set1067, i32* %474, align 4
  %475 = load %union.rec*, %union.rec** %y, align 8
  %os11068 = bitcast %union.rec* %475 to %struct.word_type*
  %ou21069 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11068, i32 0, i32 2
  %os221070 = bitcast %union.SECOND_UNION* %ou21069 to %struct.anon.1*
  %476 = bitcast %struct.anon.1* %os221070 to i32*
  %bf.load1071 = load i32, i32* %476, align 4
  %bf.lshr1072 = lshr i32 %bf.load1071, 29
  %bf.clear1073 = and i32 %bf.lshr1072, 3
  %477 = load %union.rec*, %union.rec** %z, align 8
  %os11074 = bitcast %union.rec* %477 to %struct.word_type*
  %ou21075 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11074, i32 0, i32 2
  %os221076 = bitcast %union.SECOND_UNION* %ou21075 to %struct.anon.1*
  %478 = bitcast %struct.anon.1* %os221076 to i32*
  %bf.load1077 = load i32, i32* %478, align 4
  %bf.value1078 = and i32 %bf.clear1073, 3
  %bf.shl1079 = shl i32 %bf.value1078, 29
  %bf.clear1080 = and i32 %bf.load1077, -1610612737
  %bf.set1081 = or i32 %bf.clear1080, %bf.shl1079
  store i32 %bf.set1081, i32* %478, align 4
  %479 = load %union.rec*, %union.rec** %z, align 8
  call void @FontWordSize(%union.rec* %479)
  %480 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1082 = zext i8 %480 to i32
  store i32 %conv1082, i32* @zz_size, align 4
  %conv1083 = sext i32 %conv1082 to i64
  %cmp1084 = icmp uge i64 %conv1083, 265
  br i1 %cmp1084, label %if.then.1086, label %if.else.1088

if.then.1086:                                     ; preds = %if.then.992
  %481 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1087 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %481)
  br label %if.end.1105

if.else.1088:                                     ; preds = %if.then.992
  %482 = load i32, i32* @zz_size, align 4
  %idxprom1089 = sext i32 %482 to i64
  %arrayidx1090 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1089
  %483 = load %union.rec*, %union.rec** %arrayidx1090, align 8
  %cmp1091 = icmp eq %union.rec* %483, null
  br i1 %cmp1091, label %if.then.1093, label %if.else.1095

if.then.1093:                                     ; preds = %if.else.1088
  %484 = load i32, i32* @zz_size, align 4
  %485 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1094 = call %union.rec* @GetMemory(i32 %484, %struct.FILE_POS* %485)
  store %union.rec* %call1094, %union.rec** @zz_hold, align 8
  br label %if.end.1104

if.else.1095:                                     ; preds = %if.else.1088
  %486 = load i32, i32* @zz_size, align 4
  %idxprom1096 = sext i32 %486 to i64
  %arrayidx1097 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1096
  %487 = load %union.rec*, %union.rec** %arrayidx1097, align 8
  store %union.rec* %487, %union.rec** @zz_hold, align 8
  store %union.rec* %487, %union.rec** @zz_hold, align 8
  %488 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11098 = bitcast %union.rec* %488 to %struct.word_type*
  %olist1099 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11098, i32 0, i32 0
  %arrayidx1100 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1099, i32 0, i64 0
  %opred1101 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1100, i32 0, i32 0
  %489 = load %union.rec*, %union.rec** %opred1101, align 8
  %490 = load i32, i32* @zz_size, align 4
  %idxprom1102 = sext i32 %490 to i64
  %arrayidx1103 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1102
  store %union.rec* %489, %union.rec** %arrayidx1103, align 8
  br label %if.end.1104

if.end.1104:                                      ; preds = %if.else.1095, %if.then.1093
  br label %if.end.1105

if.end.1105:                                      ; preds = %if.end.1104, %if.then.1086
  %491 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11106 = bitcast %union.rec* %491 to %struct.word_type*
  %ou11107 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11106, i32 0, i32 1
  %os111108 = bitcast %union.FIRST_UNION* %ou11107 to %struct.anon*
  %otype1109 = getelementptr inbounds %struct.anon, %struct.anon* %os111108, i32 0, i32 0
  store i8 0, i8* %otype1109, align 1
  %492 = load %union.rec*, %union.rec** @zz_hold, align 8
  %493 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11110 = bitcast %union.rec* %493 to %struct.word_type*
  %olist1111 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11110, i32 0, i32 0
  %arrayidx1112 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1111, i32 0, i64 1
  %osucc1113 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1112, i32 0, i32 1
  store %union.rec* %492, %union.rec** %osucc1113, align 8
  %494 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11114 = bitcast %union.rec* %494 to %struct.word_type*
  %olist1115 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11114, i32 0, i32 0
  %arrayidx1116 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1115, i32 0, i64 1
  %opred1117 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1116, i32 0, i32 0
  store %union.rec* %492, %union.rec** %opred1117, align 8
  %495 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11118 = bitcast %union.rec* %495 to %struct.word_type*
  %olist1119 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11118, i32 0, i32 0
  %arrayidx1120 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1119, i32 0, i64 0
  %osucc1121 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1120, i32 0, i32 1
  store %union.rec* %492, %union.rec** %osucc1121, align 8
  %496 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11122 = bitcast %union.rec* %496 to %struct.word_type*
  %olist1123 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11122, i32 0, i32 0
  %arrayidx1124 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1123, i32 0, i64 0
  %opred1125 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1124, i32 0, i32 0
  store %union.rec* %492, %union.rec** %opred1125, align 8
  store %union.rec* %492, %union.rec** @xx_link, align 8
  %497 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %497, %union.rec** @zz_res, align 8
  %498 = load %union.rec*, %union.rec** %link, align 8
  %os11126 = bitcast %union.rec* %498 to %struct.word_type*
  %olist1127 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11126, i32 0, i32 0
  %arrayidx1128 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1127, i32 0, i64 0
  %osucc1129 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1128, i32 0, i32 1
  %499 = load %union.rec*, %union.rec** %osucc1129, align 8
  store %union.rec* %499, %union.rec** @zz_hold, align 8
  %500 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1130 = icmp eq %union.rec* %500, null
  br i1 %cmp1130, label %cond.true.1132, label %cond.false.1133

cond.true.1132:                                   ; preds = %if.end.1105
  %501 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1168

cond.false.1133:                                  ; preds = %if.end.1105
  %502 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1134 = icmp eq %union.rec* %502, null
  br i1 %cmp1134, label %cond.true.1136, label %cond.false.1137

cond.true.1136:                                   ; preds = %cond.false.1133
  %503 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1166

cond.false.1137:                                  ; preds = %cond.false.1133
  %504 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11138 = bitcast %union.rec* %504 to %struct.word_type*
  %olist1139 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11138, i32 0, i32 0
  %arrayidx1140 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1139, i32 0, i64 0
  %opred1141 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1140, i32 0, i32 0
  %505 = load %union.rec*, %union.rec** %opred1141, align 8
  store %union.rec* %505, %union.rec** @zz_tmp, align 8
  %506 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11142 = bitcast %union.rec* %506 to %struct.word_type*
  %olist1143 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11142, i32 0, i32 0
  %arrayidx1144 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1143, i32 0, i64 0
  %opred1145 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1144, i32 0, i32 0
  %507 = load %union.rec*, %union.rec** %opred1145, align 8
  %508 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11146 = bitcast %union.rec* %508 to %struct.word_type*
  %olist1147 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11146, i32 0, i32 0
  %arrayidx1148 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1147, i32 0, i64 0
  %opred1149 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1148, i32 0, i32 0
  store %union.rec* %507, %union.rec** %opred1149, align 8
  %509 = load %union.rec*, %union.rec** @zz_hold, align 8
  %510 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11150 = bitcast %union.rec* %510 to %struct.word_type*
  %olist1151 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11150, i32 0, i32 0
  %arrayidx1152 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1151, i32 0, i64 0
  %opred1153 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1152, i32 0, i32 0
  %511 = load %union.rec*, %union.rec** %opred1153, align 8
  %os11154 = bitcast %union.rec* %511 to %struct.word_type*
  %olist1155 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11154, i32 0, i32 0
  %arrayidx1156 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1155, i32 0, i64 0
  %osucc1157 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1156, i32 0, i32 1
  store %union.rec* %509, %union.rec** %osucc1157, align 8
  %512 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %513 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11158 = bitcast %union.rec* %513 to %struct.word_type*
  %olist1159 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11158, i32 0, i32 0
  %arrayidx1160 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1159, i32 0, i64 0
  %opred1161 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1160, i32 0, i32 0
  store %union.rec* %512, %union.rec** %opred1161, align 8
  %514 = load %union.rec*, %union.rec** @zz_res, align 8
  %515 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11162 = bitcast %union.rec* %515 to %struct.word_type*
  %olist1163 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11162, i32 0, i32 0
  %arrayidx1164 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1163, i32 0, i64 0
  %osucc1165 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1164, i32 0, i32 1
  store %union.rec* %514, %union.rec** %osucc1165, align 8
  br label %cond.end.1166

cond.end.1166:                                    ; preds = %cond.false.1137, %cond.true.1136
  %cond1167 = phi %union.rec* [ %503, %cond.true.1136 ], [ %514, %cond.false.1137 ]
  br label %cond.end.1168

cond.end.1168:                                    ; preds = %cond.end.1166, %cond.true.1132
  %cond1169 = phi %union.rec* [ %501, %cond.true.1132 ], [ %cond1167, %cond.end.1166 ]
  %516 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %516, %union.rec** @zz_res, align 8
  %517 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %517, %union.rec** @zz_hold, align 8
  %518 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1170 = icmp eq %union.rec* %518, null
  br i1 %cmp1170, label %cond.true.1172, label %cond.false.1173

cond.true.1172:                                   ; preds = %cond.end.1168
  %519 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1208

cond.false.1173:                                  ; preds = %cond.end.1168
  %520 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1174 = icmp eq %union.rec* %520, null
  br i1 %cmp1174, label %cond.true.1176, label %cond.false.1177

cond.true.1176:                                   ; preds = %cond.false.1173
  %521 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1206

cond.false.1177:                                  ; preds = %cond.false.1173
  %522 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11178 = bitcast %union.rec* %522 to %struct.word_type*
  %olist1179 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11178, i32 0, i32 0
  %arrayidx1180 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1179, i32 0, i64 1
  %opred1181 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1180, i32 0, i32 0
  %523 = load %union.rec*, %union.rec** %opred1181, align 8
  store %union.rec* %523, %union.rec** @zz_tmp, align 8
  %524 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11182 = bitcast %union.rec* %524 to %struct.word_type*
  %olist1183 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11182, i32 0, i32 0
  %arrayidx1184 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1183, i32 0, i64 1
  %opred1185 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1184, i32 0, i32 0
  %525 = load %union.rec*, %union.rec** %opred1185, align 8
  %526 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11186 = bitcast %union.rec* %526 to %struct.word_type*
  %olist1187 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11186, i32 0, i32 0
  %arrayidx1188 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1187, i32 0, i64 1
  %opred1189 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1188, i32 0, i32 0
  store %union.rec* %525, %union.rec** %opred1189, align 8
  %527 = load %union.rec*, %union.rec** @zz_hold, align 8
  %528 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11190 = bitcast %union.rec* %528 to %struct.word_type*
  %olist1191 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11190, i32 0, i32 0
  %arrayidx1192 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1191, i32 0, i64 1
  %opred1193 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1192, i32 0, i32 0
  %529 = load %union.rec*, %union.rec** %opred1193, align 8
  %os11194 = bitcast %union.rec* %529 to %struct.word_type*
  %olist1195 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11194, i32 0, i32 0
  %arrayidx1196 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1195, i32 0, i64 1
  %osucc1197 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1196, i32 0, i32 1
  store %union.rec* %527, %union.rec** %osucc1197, align 8
  %530 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %531 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11198 = bitcast %union.rec* %531 to %struct.word_type*
  %olist1199 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11198, i32 0, i32 0
  %arrayidx1200 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1199, i32 0, i64 1
  %opred1201 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1200, i32 0, i32 0
  store %union.rec* %530, %union.rec** %opred1201, align 8
  %532 = load %union.rec*, %union.rec** @zz_res, align 8
  %533 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11202 = bitcast %union.rec* %533 to %struct.word_type*
  %olist1203 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11202, i32 0, i32 0
  %arrayidx1204 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1203, i32 0, i64 1
  %osucc1205 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1204, i32 0, i32 1
  store %union.rec* %532, %union.rec** %osucc1205, align 8
  br label %cond.end.1206

cond.end.1206:                                    ; preds = %cond.false.1177, %cond.true.1176
  %cond1207 = phi %union.rec* [ %521, %cond.true.1176 ], [ %532, %cond.false.1177 ]
  br label %cond.end.1208

cond.end.1208:                                    ; preds = %cond.end.1206, %cond.true.1172
  %cond1209 = phi %union.rec* [ %519, %cond.true.1172 ], [ %cond1207, %cond.end.1206 ]
  %534 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 1), align 1
  %conv1210 = zext i8 %534 to i32
  store i32 %conv1210, i32* @zz_size, align 4
  %conv1211 = sext i32 %conv1210 to i64
  %cmp1212 = icmp uge i64 %conv1211, 265
  br i1 %cmp1212, label %if.then.1214, label %if.else.1216

if.then.1214:                                     ; preds = %cond.end.1208
  %535 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1215 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %535)
  br label %if.end.1233

if.else.1216:                                     ; preds = %cond.end.1208
  %536 = load i32, i32* @zz_size, align 4
  %idxprom1217 = sext i32 %536 to i64
  %arrayidx1218 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1217
  %537 = load %union.rec*, %union.rec** %arrayidx1218, align 8
  %cmp1219 = icmp eq %union.rec* %537, null
  br i1 %cmp1219, label %if.then.1221, label %if.else.1223

if.then.1221:                                     ; preds = %if.else.1216
  %538 = load i32, i32* @zz_size, align 4
  %539 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1222 = call %union.rec* @GetMemory(i32 %538, %struct.FILE_POS* %539)
  store %union.rec* %call1222, %union.rec** @zz_hold, align 8
  br label %if.end.1232

if.else.1223:                                     ; preds = %if.else.1216
  %540 = load i32, i32* @zz_size, align 4
  %idxprom1224 = sext i32 %540 to i64
  %arrayidx1225 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1224
  %541 = load %union.rec*, %union.rec** %arrayidx1225, align 8
  store %union.rec* %541, %union.rec** @zz_hold, align 8
  store %union.rec* %541, %union.rec** @zz_hold, align 8
  %542 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11226 = bitcast %union.rec* %542 to %struct.word_type*
  %olist1227 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11226, i32 0, i32 0
  %arrayidx1228 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1227, i32 0, i64 0
  %opred1229 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1228, i32 0, i32 0
  %543 = load %union.rec*, %union.rec** %opred1229, align 8
  %544 = load i32, i32* @zz_size, align 4
  %idxprom1230 = sext i32 %544 to i64
  %arrayidx1231 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1230
  store %union.rec* %543, %union.rec** %arrayidx1231, align 8
  br label %if.end.1232

if.end.1232:                                      ; preds = %if.else.1223, %if.then.1221
  br label %if.end.1233

if.end.1233:                                      ; preds = %if.end.1232, %if.then.1214
  %545 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11234 = bitcast %union.rec* %545 to %struct.word_type*
  %ou11235 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11234, i32 0, i32 1
  %os111236 = bitcast %union.FIRST_UNION* %ou11235 to %struct.anon*
  %otype1237 = getelementptr inbounds %struct.anon, %struct.anon* %os111236, i32 0, i32 0
  store i8 1, i8* %otype1237, align 1
  %546 = load %union.rec*, %union.rec** @zz_hold, align 8
  %547 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11238 = bitcast %union.rec* %547 to %struct.word_type*
  %olist1239 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11238, i32 0, i32 0
  %arrayidx1240 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1239, i32 0, i64 1
  %osucc1241 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1240, i32 0, i32 1
  store %union.rec* %546, %union.rec** %osucc1241, align 8
  %548 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11242 = bitcast %union.rec* %548 to %struct.word_type*
  %olist1243 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11242, i32 0, i32 0
  %arrayidx1244 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1243, i32 0, i64 1
  %opred1245 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1244, i32 0, i32 0
  store %union.rec* %546, %union.rec** %opred1245, align 8
  %549 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11246 = bitcast %union.rec* %549 to %struct.word_type*
  %olist1247 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11246, i32 0, i32 0
  %arrayidx1248 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1247, i32 0, i64 0
  %osucc1249 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1248, i32 0, i32 1
  store %union.rec* %546, %union.rec** %osucc1249, align 8
  %550 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11251 = bitcast %union.rec* %550 to %struct.word_type*
  %olist1252 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11251, i32 0, i32 0
  %arrayidx1253 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1252, i32 0, i64 0
  %opred1254 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1253, i32 0, i32 0
  store %union.rec* %546, %union.rec** %opred1254, align 8
  store %union.rec* %546, %union.rec** %z, align 8
  %551 = load %union.rec*, %union.rec** %z, align 8
  %os11255 = bitcast %union.rec* %551 to %struct.word_type*
  %ou21256 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11255, i32 0, i32 2
  %os211257 = bitcast %union.SECOND_UNION* %ou21256 to %struct.anon.0*
  %ovspace1258 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os211257, i32 0, i32 2
  store i8 0, i8* %ovspace1258, align 1
  %552 = load %union.rec*, %union.rec** %z, align 8
  %os11259 = bitcast %union.rec* %552 to %struct.word_type*
  %ou21260 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11259, i32 0, i32 2
  %os211261 = bitcast %union.SECOND_UNION* %ou21260 to %struct.anon.0*
  %ohspace1262 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os211261, i32 0, i32 1
  store i8 0, i8* %ohspace1262, align 1
  %553 = load %union.rec*, %union.rec** %z, align 8
  %os51263 = bitcast %union.rec* %553 to %struct.gapobj_type*
  %ogap1264 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51263, i32 0, i32 3
  %554 = bitcast %struct.GAP* %ogap1264 to i16*
  %bf.load1265 = load i16, i16* %554, align 4
  %bf.clear1266 = and i16 %bf.load1265, -129
  store i16 %bf.clear1266, i16* %554, align 4
  %555 = load %union.rec*, %union.rec** %z, align 8
  %os51267 = bitcast %union.rec* %555 to %struct.gapobj_type*
  %ogap1268 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51267, i32 0, i32 3
  %556 = bitcast %struct.GAP* %ogap1268 to i16*
  %bf.load1269 = load i16, i16* %556, align 4
  %bf.clear1270 = and i16 %bf.load1269, -257
  store i16 %bf.clear1270, i16* %556, align 4
  %557 = load %union.rec*, %union.rec** %z, align 8
  %os51271 = bitcast %union.rec* %557 to %struct.gapobj_type*
  %ogap1272 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51271, i32 0, i32 3
  %558 = bitcast %struct.GAP* %ogap1272 to i16*
  %bf.load1273 = load i16, i16* %558, align 4
  %bf.clear1274 = and i16 %bf.load1273, -513
  %bf.set1275 = or i16 %bf.clear1274, 512
  store i16 %bf.set1275, i16* %558, align 4
  %559 = load %union.rec*, %union.rec** %z, align 8
  %os51276 = bitcast %union.rec* %559 to %struct.gapobj_type*
  %ogap1277 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51276, i32 0, i32 3
  %560 = bitcast %struct.GAP* %ogap1277 to i16*
  %bf.load1278 = load i16, i16* %560, align 4
  %bf.clear1279 = and i16 %bf.load1278, -7169
  %bf.set1280 = or i16 %bf.clear1279, 1024
  store i16 %bf.set1280, i16* %560, align 4
  %561 = load %union.rec*, %union.rec** %z, align 8
  %os51281 = bitcast %union.rec* %561 to %struct.gapobj_type*
  %ogap1282 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51281, i32 0, i32 3
  %562 = bitcast %struct.GAP* %ogap1282 to i16*
  %bf.load1283 = load i16, i16* %562, align 4
  %bf.clear1284 = and i16 %bf.load1283, 8191
  %bf.set1285 = or i16 %bf.clear1284, 16384
  store i16 %bf.set1285, i16* %562, align 4
  %563 = load %union.rec*, %union.rec** %z, align 8
  %os51286 = bitcast %union.rec* %563 to %struct.gapobj_type*
  %ogap1287 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51286, i32 0, i32 3
  %owidth1288 = getelementptr inbounds %struct.GAP, %struct.GAP* %ogap1287, i32 0, i32 1
  store i16 0, i16* %owidth1288, align 2
  %564 = load %union.rec*, %union.rec** %y, align 8
  %os11289 = bitcast %union.rec* %564 to %struct.word_type*
  %ou21290 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11289, i32 0, i32 2
  %os221291 = bitcast %union.SECOND_UNION* %ou21290 to %struct.anon.1*
  %565 = bitcast %struct.anon.1* %os221291 to i32*
  %bf.load1292 = load i32, i32* %565, align 4
  %bf.lshr1293 = lshr i32 %bf.load1292, 29
  %bf.clear1294 = and i32 %bf.lshr1293, 3
  %566 = load %union.rec*, %union.rec** %z, align 8
  %os11295 = bitcast %union.rec* %566 to %struct.word_type*
  %ou21296 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11295, i32 0, i32 2
  %os221297 = bitcast %union.SECOND_UNION* %ou21296 to %struct.anon.1*
  %567 = bitcast %struct.anon.1* %os221297 to i32*
  %bf.load1298 = load i32, i32* %567, align 4
  %bf.value1299 = and i32 %bf.clear1294, 3
  %bf.shl1300 = shl i32 %bf.value1299, 29
  %bf.clear1301 = and i32 %bf.load1298, -1610612737
  %bf.set1302 = or i32 %bf.clear1301, %bf.shl1300
  store i32 %bf.set1302, i32* %567, align 4
  %568 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1303 = zext i8 %568 to i32
  store i32 %conv1303, i32* @zz_size, align 4
  %conv1304 = sext i32 %conv1303 to i64
  %cmp1305 = icmp uge i64 %conv1304, 265
  br i1 %cmp1305, label %if.then.1307, label %if.else.1309

if.then.1307:                                     ; preds = %if.end.1233
  %569 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1308 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %569)
  br label %if.end.1326

if.else.1309:                                     ; preds = %if.end.1233
  %570 = load i32, i32* @zz_size, align 4
  %idxprom1310 = sext i32 %570 to i64
  %arrayidx1311 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1310
  %571 = load %union.rec*, %union.rec** %arrayidx1311, align 8
  %cmp1312 = icmp eq %union.rec* %571, null
  br i1 %cmp1312, label %if.then.1314, label %if.else.1316

if.then.1314:                                     ; preds = %if.else.1309
  %572 = load i32, i32* @zz_size, align 4
  %573 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1315 = call %union.rec* @GetMemory(i32 %572, %struct.FILE_POS* %573)
  store %union.rec* %call1315, %union.rec** @zz_hold, align 8
  br label %if.end.1325

if.else.1316:                                     ; preds = %if.else.1309
  %574 = load i32, i32* @zz_size, align 4
  %idxprom1317 = sext i32 %574 to i64
  %arrayidx1318 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1317
  %575 = load %union.rec*, %union.rec** %arrayidx1318, align 8
  store %union.rec* %575, %union.rec** @zz_hold, align 8
  store %union.rec* %575, %union.rec** @zz_hold, align 8
  %576 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11319 = bitcast %union.rec* %576 to %struct.word_type*
  %olist1320 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11319, i32 0, i32 0
  %arrayidx1321 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1320, i32 0, i64 0
  %opred1322 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1321, i32 0, i32 0
  %577 = load %union.rec*, %union.rec** %opred1322, align 8
  %578 = load i32, i32* @zz_size, align 4
  %idxprom1323 = sext i32 %578 to i64
  %arrayidx1324 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1323
  store %union.rec* %577, %union.rec** %arrayidx1324, align 8
  br label %if.end.1325

if.end.1325:                                      ; preds = %if.else.1316, %if.then.1314
  br label %if.end.1326

if.end.1326:                                      ; preds = %if.end.1325, %if.then.1307
  %579 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11327 = bitcast %union.rec* %579 to %struct.word_type*
  %ou11328 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11327, i32 0, i32 1
  %os111329 = bitcast %union.FIRST_UNION* %ou11328 to %struct.anon*
  %otype1330 = getelementptr inbounds %struct.anon, %struct.anon* %os111329, i32 0, i32 0
  store i8 0, i8* %otype1330, align 1
  %580 = load %union.rec*, %union.rec** @zz_hold, align 8
  %581 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11331 = bitcast %union.rec* %581 to %struct.word_type*
  %olist1332 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11331, i32 0, i32 0
  %arrayidx1333 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1332, i32 0, i64 1
  %osucc1334 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1333, i32 0, i32 1
  store %union.rec* %580, %union.rec** %osucc1334, align 8
  %582 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11335 = bitcast %union.rec* %582 to %struct.word_type*
  %olist1336 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11335, i32 0, i32 0
  %arrayidx1337 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1336, i32 0, i64 1
  %opred1338 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1337, i32 0, i32 0
  store %union.rec* %580, %union.rec** %opred1338, align 8
  %583 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11339 = bitcast %union.rec* %583 to %struct.word_type*
  %olist1340 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11339, i32 0, i32 0
  %arrayidx1341 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1340, i32 0, i64 0
  %osucc1342 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1341, i32 0, i32 1
  store %union.rec* %580, %union.rec** %osucc1342, align 8
  %584 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11343 = bitcast %union.rec* %584 to %struct.word_type*
  %olist1344 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11343, i32 0, i32 0
  %arrayidx1345 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1344, i32 0, i64 0
  %opred1346 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1345, i32 0, i32 0
  store %union.rec* %580, %union.rec** %opred1346, align 8
  store %union.rec* %580, %union.rec** @xx_link, align 8
  %585 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %585, %union.rec** @zz_res, align 8
  %586 = load %union.rec*, %union.rec** %link, align 8
  %os11347 = bitcast %union.rec* %586 to %struct.word_type*
  %olist1348 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11347, i32 0, i32 0
  %arrayidx1349 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1348, i32 0, i64 0
  %osucc1350 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1349, i32 0, i32 1
  %587 = load %union.rec*, %union.rec** %osucc1350, align 8
  store %union.rec* %587, %union.rec** @zz_hold, align 8
  %588 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1351 = icmp eq %union.rec* %588, null
  br i1 %cmp1351, label %cond.true.1353, label %cond.false.1354

cond.true.1353:                                   ; preds = %if.end.1326
  %589 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1389

cond.false.1354:                                  ; preds = %if.end.1326
  %590 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1355 = icmp eq %union.rec* %590, null
  br i1 %cmp1355, label %cond.true.1357, label %cond.false.1358

cond.true.1357:                                   ; preds = %cond.false.1354
  %591 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1387

cond.false.1358:                                  ; preds = %cond.false.1354
  %592 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11359 = bitcast %union.rec* %592 to %struct.word_type*
  %olist1360 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11359, i32 0, i32 0
  %arrayidx1361 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1360, i32 0, i64 0
  %opred1362 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1361, i32 0, i32 0
  %593 = load %union.rec*, %union.rec** %opred1362, align 8
  store %union.rec* %593, %union.rec** @zz_tmp, align 8
  %594 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11363 = bitcast %union.rec* %594 to %struct.word_type*
  %olist1364 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11363, i32 0, i32 0
  %arrayidx1365 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1364, i32 0, i64 0
  %opred1366 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1365, i32 0, i32 0
  %595 = load %union.rec*, %union.rec** %opred1366, align 8
  %596 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11367 = bitcast %union.rec* %596 to %struct.word_type*
  %olist1368 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11367, i32 0, i32 0
  %arrayidx1369 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1368, i32 0, i64 0
  %opred1370 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1369, i32 0, i32 0
  store %union.rec* %595, %union.rec** %opred1370, align 8
  %597 = load %union.rec*, %union.rec** @zz_hold, align 8
  %598 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11371 = bitcast %union.rec* %598 to %struct.word_type*
  %olist1372 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11371, i32 0, i32 0
  %arrayidx1373 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1372, i32 0, i64 0
  %opred1374 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1373, i32 0, i32 0
  %599 = load %union.rec*, %union.rec** %opred1374, align 8
  %os11375 = bitcast %union.rec* %599 to %struct.word_type*
  %olist1376 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11375, i32 0, i32 0
  %arrayidx1377 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1376, i32 0, i64 0
  %osucc1378 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1377, i32 0, i32 1
  store %union.rec* %597, %union.rec** %osucc1378, align 8
  %600 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %601 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11379 = bitcast %union.rec* %601 to %struct.word_type*
  %olist1380 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11379, i32 0, i32 0
  %arrayidx1381 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1380, i32 0, i64 0
  %opred1382 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1381, i32 0, i32 0
  store %union.rec* %600, %union.rec** %opred1382, align 8
  %602 = load %union.rec*, %union.rec** @zz_res, align 8
  %603 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11383 = bitcast %union.rec* %603 to %struct.word_type*
  %olist1384 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11383, i32 0, i32 0
  %arrayidx1385 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1384, i32 0, i64 0
  %osucc1386 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1385, i32 0, i32 1
  store %union.rec* %602, %union.rec** %osucc1386, align 8
  br label %cond.end.1387

cond.end.1387:                                    ; preds = %cond.false.1358, %cond.true.1357
  %cond1388 = phi %union.rec* [ %591, %cond.true.1357 ], [ %602, %cond.false.1358 ]
  br label %cond.end.1389

cond.end.1389:                                    ; preds = %cond.end.1387, %cond.true.1353
  %cond1390 = phi %union.rec* [ %589, %cond.true.1353 ], [ %cond1388, %cond.end.1387 ]
  %604 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %604, %union.rec** @zz_res, align 8
  %605 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %605, %union.rec** @zz_hold, align 8
  %606 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1391 = icmp eq %union.rec* %606, null
  br i1 %cmp1391, label %cond.true.1393, label %cond.false.1394

cond.true.1393:                                   ; preds = %cond.end.1389
  %607 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1429

cond.false.1394:                                  ; preds = %cond.end.1389
  %608 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1395 = icmp eq %union.rec* %608, null
  br i1 %cmp1395, label %cond.true.1397, label %cond.false.1398

cond.true.1397:                                   ; preds = %cond.false.1394
  %609 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1427

cond.false.1398:                                  ; preds = %cond.false.1394
  %610 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11399 = bitcast %union.rec* %610 to %struct.word_type*
  %olist1400 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11399, i32 0, i32 0
  %arrayidx1401 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1400, i32 0, i64 1
  %opred1402 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1401, i32 0, i32 0
  %611 = load %union.rec*, %union.rec** %opred1402, align 8
  store %union.rec* %611, %union.rec** @zz_tmp, align 8
  %612 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11403 = bitcast %union.rec* %612 to %struct.word_type*
  %olist1404 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11403, i32 0, i32 0
  %arrayidx1405 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1404, i32 0, i64 1
  %opred1406 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1405, i32 0, i32 0
  %613 = load %union.rec*, %union.rec** %opred1406, align 8
  %614 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11407 = bitcast %union.rec* %614 to %struct.word_type*
  %olist1408 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11407, i32 0, i32 0
  %arrayidx1409 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1408, i32 0, i64 1
  %opred1410 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1409, i32 0, i32 0
  store %union.rec* %613, %union.rec** %opred1410, align 8
  %615 = load %union.rec*, %union.rec** @zz_hold, align 8
  %616 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11411 = bitcast %union.rec* %616 to %struct.word_type*
  %olist1412 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11411, i32 0, i32 0
  %arrayidx1413 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1412, i32 0, i64 1
  %opred1414 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1413, i32 0, i32 0
  %617 = load %union.rec*, %union.rec** %opred1414, align 8
  %os11415 = bitcast %union.rec* %617 to %struct.word_type*
  %olist1416 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11415, i32 0, i32 0
  %arrayidx1417 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1416, i32 0, i64 1
  %osucc1418 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1417, i32 0, i32 1
  store %union.rec* %615, %union.rec** %osucc1418, align 8
  %618 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %619 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11419 = bitcast %union.rec* %619 to %struct.word_type*
  %olist1420 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11419, i32 0, i32 0
  %arrayidx1421 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1420, i32 0, i64 1
  %opred1422 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1421, i32 0, i32 0
  store %union.rec* %618, %union.rec** %opred1422, align 8
  %620 = load %union.rec*, %union.rec** @zz_res, align 8
  %621 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11423 = bitcast %union.rec* %621 to %struct.word_type*
  %olist1424 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11423, i32 0, i32 0
  %arrayidx1425 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1424, i32 0, i64 1
  %osucc1426 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1425, i32 0, i32 1
  store %union.rec* %620, %union.rec** %osucc1426, align 8
  br label %cond.end.1427

cond.end.1427:                                    ; preds = %cond.false.1398, %cond.true.1397
  %cond1428 = phi %union.rec* [ %609, %cond.true.1397 ], [ %620, %cond.false.1398 ]
  br label %cond.end.1429

cond.end.1429:                                    ; preds = %cond.end.1427, %cond.true.1393
  %cond1430 = phi %union.rec* [ %607, %cond.true.1393 ], [ %cond1428, %cond.end.1427 ]
  %622 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1431 = zext i8 %622 to i32
  store i32 %conv1431, i32* @zz_size, align 4
  %conv1432 = sext i32 %conv1431 to i64
  %cmp1433 = icmp uge i64 %conv1432, 265
  br i1 %cmp1433, label %if.then.1435, label %if.else.1437

if.then.1435:                                     ; preds = %cond.end.1429
  %623 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1436 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %623)
  br label %if.end.1454

if.else.1437:                                     ; preds = %cond.end.1429
  %624 = load i32, i32* @zz_size, align 4
  %idxprom1438 = sext i32 %624 to i64
  %arrayidx1439 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1438
  %625 = load %union.rec*, %union.rec** %arrayidx1439, align 8
  %cmp1440 = icmp eq %union.rec* %625, null
  br i1 %cmp1440, label %if.then.1442, label %if.else.1444

if.then.1442:                                     ; preds = %if.else.1437
  %626 = load i32, i32* @zz_size, align 4
  %627 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1443 = call %union.rec* @GetMemory(i32 %626, %struct.FILE_POS* %627)
  store %union.rec* %call1443, %union.rec** @zz_hold, align 8
  br label %if.end.1453

if.else.1444:                                     ; preds = %if.else.1437
  %628 = load i32, i32* @zz_size, align 4
  %idxprom1445 = sext i32 %628 to i64
  %arrayidx1446 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1445
  %629 = load %union.rec*, %union.rec** %arrayidx1446, align 8
  store %union.rec* %629, %union.rec** @zz_hold, align 8
  store %union.rec* %629, %union.rec** @zz_hold, align 8
  %630 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11447 = bitcast %union.rec* %630 to %struct.word_type*
  %olist1448 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11447, i32 0, i32 0
  %arrayidx1449 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1448, i32 0, i64 0
  %opred1450 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1449, i32 0, i32 0
  %631 = load %union.rec*, %union.rec** %opred1450, align 8
  %632 = load i32, i32* @zz_size, align 4
  %idxprom1451 = sext i32 %632 to i64
  %arrayidx1452 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1451
  store %union.rec* %631, %union.rec** %arrayidx1452, align 8
  br label %if.end.1453

if.end.1453:                                      ; preds = %if.else.1444, %if.then.1442
  br label %if.end.1454

if.end.1454:                                      ; preds = %if.end.1453, %if.then.1435
  %633 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11455 = bitcast %union.rec* %633 to %struct.word_type*
  %ou11456 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11455, i32 0, i32 1
  %os111457 = bitcast %union.FIRST_UNION* %ou11456 to %struct.anon*
  %otype1458 = getelementptr inbounds %struct.anon, %struct.anon* %os111457, i32 0, i32 0
  store i8 0, i8* %otype1458, align 1
  %634 = load %union.rec*, %union.rec** @zz_hold, align 8
  %635 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11459 = bitcast %union.rec* %635 to %struct.word_type*
  %olist1460 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11459, i32 0, i32 0
  %arrayidx1461 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1460, i32 0, i64 1
  %osucc1462 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1461, i32 0, i32 1
  store %union.rec* %634, %union.rec** %osucc1462, align 8
  %636 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11463 = bitcast %union.rec* %636 to %struct.word_type*
  %olist1464 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11463, i32 0, i32 0
  %arrayidx1465 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1464, i32 0, i64 1
  %opred1466 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1465, i32 0, i32 0
  store %union.rec* %634, %union.rec** %opred1466, align 8
  %637 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11467 = bitcast %union.rec* %637 to %struct.word_type*
  %olist1468 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11467, i32 0, i32 0
  %arrayidx1469 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1468, i32 0, i64 0
  %osucc1470 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1469, i32 0, i32 1
  store %union.rec* %634, %union.rec** %osucc1470, align 8
  %638 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11471 = bitcast %union.rec* %638 to %struct.word_type*
  %olist1472 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11471, i32 0, i32 0
  %arrayidx1473 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1472, i32 0, i64 0
  %opred1474 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1473, i32 0, i32 0
  store %union.rec* %634, %union.rec** %opred1474, align 8
  store %union.rec* %634, %union.rec** @xx_link, align 8
  %639 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %639, %union.rec** @zz_res, align 8
  %640 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %640, %union.rec** @zz_hold, align 8
  %641 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1475 = icmp eq %union.rec* %641, null
  br i1 %cmp1475, label %cond.true.1477, label %cond.false.1478

cond.true.1477:                                   ; preds = %if.end.1454
  %642 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1513

cond.false.1478:                                  ; preds = %if.end.1454
  %643 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1479 = icmp eq %union.rec* %643, null
  br i1 %cmp1479, label %cond.true.1481, label %cond.false.1482

cond.true.1481:                                   ; preds = %cond.false.1478
  %644 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1511

cond.false.1482:                                  ; preds = %cond.false.1478
  %645 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11483 = bitcast %union.rec* %645 to %struct.word_type*
  %olist1484 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11483, i32 0, i32 0
  %arrayidx1485 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1484, i32 0, i64 0
  %opred1486 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1485, i32 0, i32 0
  %646 = load %union.rec*, %union.rec** %opred1486, align 8
  store %union.rec* %646, %union.rec** @zz_tmp, align 8
  %647 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11487 = bitcast %union.rec* %647 to %struct.word_type*
  %olist1488 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11487, i32 0, i32 0
  %arrayidx1489 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1488, i32 0, i64 0
  %opred1490 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1489, i32 0, i32 0
  %648 = load %union.rec*, %union.rec** %opred1490, align 8
  %649 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11491 = bitcast %union.rec* %649 to %struct.word_type*
  %olist1492 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11491, i32 0, i32 0
  %arrayidx1493 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1492, i32 0, i64 0
  %opred1494 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1493, i32 0, i32 0
  store %union.rec* %648, %union.rec** %opred1494, align 8
  %650 = load %union.rec*, %union.rec** @zz_hold, align 8
  %651 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11495 = bitcast %union.rec* %651 to %struct.word_type*
  %olist1496 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11495, i32 0, i32 0
  %arrayidx1497 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1496, i32 0, i64 0
  %opred1498 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1497, i32 0, i32 0
  %652 = load %union.rec*, %union.rec** %opred1498, align 8
  %os11499 = bitcast %union.rec* %652 to %struct.word_type*
  %olist1500 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11499, i32 0, i32 0
  %arrayidx1501 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1500, i32 0, i64 0
  %osucc1502 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1501, i32 0, i32 1
  store %union.rec* %650, %union.rec** %osucc1502, align 8
  %653 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %654 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11503 = bitcast %union.rec* %654 to %struct.word_type*
  %olist1504 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11503, i32 0, i32 0
  %arrayidx1505 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1504, i32 0, i64 0
  %opred1506 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1505, i32 0, i32 0
  store %union.rec* %653, %union.rec** %opred1506, align 8
  %655 = load %union.rec*, %union.rec** @zz_res, align 8
  %656 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11507 = bitcast %union.rec* %656 to %struct.word_type*
  %olist1508 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11507, i32 0, i32 0
  %arrayidx1509 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1508, i32 0, i64 0
  %osucc1510 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1509, i32 0, i32 1
  store %union.rec* %655, %union.rec** %osucc1510, align 8
  br label %cond.end.1511

cond.end.1511:                                    ; preds = %cond.false.1482, %cond.true.1481
  %cond1512 = phi %union.rec* [ %644, %cond.true.1481 ], [ %655, %cond.false.1482 ]
  br label %cond.end.1513

cond.end.1513:                                    ; preds = %cond.end.1511, %cond.true.1477
  %cond1514 = phi %union.rec* [ %642, %cond.true.1477 ], [ %cond1512, %cond.end.1511 ]
  %657 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %657, %union.rec** @zz_res, align 8
  %658 = load %union.rec*, %union.rec** %y, align 8
  %os11515 = bitcast %union.rec* %658 to %struct.word_type*
  %ou11516 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11515, i32 0, i32 1
  %ofpos1517 = bitcast %union.FIRST_UNION* %ou11516 to %struct.FILE_POS*
  %call1518 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), %struct.FILE_POS* %ofpos1517)
  store %union.rec* %call1518, %union.rec** @zz_hold, align 8
  %659 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1519 = icmp eq %union.rec* %659, null
  br i1 %cmp1519, label %cond.true.1521, label %cond.false.1522

cond.true.1521:                                   ; preds = %cond.end.1513
  %660 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1557

cond.false.1522:                                  ; preds = %cond.end.1513
  %661 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1523 = icmp eq %union.rec* %661, null
  br i1 %cmp1523, label %cond.true.1525, label %cond.false.1526

cond.true.1525:                                   ; preds = %cond.false.1522
  %662 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1555

cond.false.1526:                                  ; preds = %cond.false.1522
  %663 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11527 = bitcast %union.rec* %663 to %struct.word_type*
  %olist1528 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11527, i32 0, i32 0
  %arrayidx1529 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1528, i32 0, i64 1
  %opred1530 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1529, i32 0, i32 0
  %664 = load %union.rec*, %union.rec** %opred1530, align 8
  store %union.rec* %664, %union.rec** @zz_tmp, align 8
  %665 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11531 = bitcast %union.rec* %665 to %struct.word_type*
  %olist1532 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11531, i32 0, i32 0
  %arrayidx1533 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1532, i32 0, i64 1
  %opred1534 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1533, i32 0, i32 0
  %666 = load %union.rec*, %union.rec** %opred1534, align 8
  %667 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11535 = bitcast %union.rec* %667 to %struct.word_type*
  %olist1536 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11535, i32 0, i32 0
  %arrayidx1537 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1536, i32 0, i64 1
  %opred1538 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1537, i32 0, i32 0
  store %union.rec* %666, %union.rec** %opred1538, align 8
  %668 = load %union.rec*, %union.rec** @zz_hold, align 8
  %669 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11539 = bitcast %union.rec* %669 to %struct.word_type*
  %olist1540 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11539, i32 0, i32 0
  %arrayidx1541 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1540, i32 0, i64 1
  %opred1542 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1541, i32 0, i32 0
  %670 = load %union.rec*, %union.rec** %opred1542, align 8
  %os11543 = bitcast %union.rec* %670 to %struct.word_type*
  %olist1544 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11543, i32 0, i32 0
  %arrayidx1545 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1544, i32 0, i64 1
  %osucc1546 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1545, i32 0, i32 1
  store %union.rec* %668, %union.rec** %osucc1546, align 8
  %671 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %672 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11547 = bitcast %union.rec* %672 to %struct.word_type*
  %olist1548 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11547, i32 0, i32 0
  %arrayidx1549 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1548, i32 0, i64 1
  %opred1550 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1549, i32 0, i32 0
  store %union.rec* %671, %union.rec** %opred1550, align 8
  %673 = load %union.rec*, %union.rec** @zz_res, align 8
  %674 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11551 = bitcast %union.rec* %674 to %struct.word_type*
  %olist1552 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11551, i32 0, i32 0
  %arrayidx1553 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1552, i32 0, i64 1
  %osucc1554 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1553, i32 0, i32 1
  store %union.rec* %673, %union.rec** %osucc1554, align 8
  br label %cond.end.1555

cond.end.1555:                                    ; preds = %cond.false.1526, %cond.true.1525
  %cond1556 = phi %union.rec* [ %662, %cond.true.1525 ], [ %673, %cond.false.1526 ]
  br label %cond.end.1557

cond.end.1557:                                    ; preds = %cond.end.1555, %cond.true.1521
  %cond1558 = phi %union.rec* [ %660, %cond.true.1521 ], [ %cond1556, %cond.end.1555 ]
  %675 = load i32, i32* %start, align 4
  %676 = load i32, i32* %i, align 4
  %add1559 = add nsw i32 %675, %676
  %sub1560 = sub nsw i32 %add1559, 1
  %idxprom1561 = sext i32 %sub1560 to i64
  %677 = load i8*, i8** %key, align 8
  %arrayidx1562 = getelementptr inbounds i8, i8* %677, i64 %idxprom1561
  store i8 0, i8* %arrayidx1562, align 1
  store i32 1, i32* %hyphenated, align 4
  br label %if.end.1563

if.end.1563:                                      ; preds = %cond.end.1557, %for.body.986
  br label %for.inc.1564

for.inc.1564:                                     ; preds = %if.end.1563
  %678 = load i32, i32* %i, align 4
  %dec = add nsw i32 %678, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.983

for.end.1565:                                     ; preds = %for.cond.983
  %679 = load i32, i32* %hyphenated, align 4
  %tobool1566 = icmp ne i32 %679, 0
  br i1 %tobool1566, label %if.then.1567, label %if.end.1572

if.then.1567:                                     ; preds = %for.end.1565
  %680 = load %union.rec*, %union.rec** %y, align 8
  call void @FontWordSize(%union.rec* %680)
  %681 = load %union.rec*, %union.rec** %next_link, align 8
  %os11568 = bitcast %union.rec* %681 to %struct.word_type*
  %olist1569 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11568, i32 0, i32 0
  %arrayidx1570 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1569, i32 0, i64 0
  %opred1571 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1570, i32 0, i32 0
  %682 = load %union.rec*, %union.rec** %opred1571, align 8
  store %union.rec* %682, %union.rec** %link, align 8
  br label %if.end.1572

if.end.1572:                                      ; preds = %if.then.1567, %for.end.1565
  br label %for.inc.1573

for.inc.1573:                                     ; preds = %if.end.1572, %if.then.717, %if.then.702, %cond.end.690, %if.then.134, %if.then.92, %if.end.59
  %683 = load %union.rec*, %union.rec** %link, align 8
  %os11574 = bitcast %union.rec* %683 to %struct.word_type*
  %olist1575 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11574, i32 0, i32 0
  %arrayidx1576 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1575, i32 0, i64 0
  %osucc1577 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1576, i32 0, i32 1
  %684 = load %union.rec*, %union.rec** %osucc1577, align 8
  store %union.rec* %684, %union.rec** %link, align 8
  br label %for.cond

for.end.1578:                                     ; preds = %for.cond
  %685 = load %union.rec*, %union.rec** %x.addr, align 8
  ret %union.rec* %685
}

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #1

declare void @FontWordSize(%union.rec*) #1

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

declare %union.rec* @LanguageHyph(i32) #1

declare zeroext i16 @DefineFile(i8*, i8*, %struct.FILE_POS*, i32, i32) #1

declare %struct._IO_FILE* @OpenFile(i16 zeroext, i32, i32) #1

declare i8* @FileName(i16 zeroext) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct.trie_rec* @NewTrie(i32 %node_lim, i32 %string_lim) #0 {
entry:
  %node_lim.addr = alloca i32, align 4
  %string_lim.addr = alloca i32, align 4
  %T = alloca %struct.trie_rec*, align 8
  %i = alloca i32, align 4
  store i32 %node_lim, i32* %node_lim.addr, align 4
  store i32 %string_lim, i32* %string_lim.addr, align 4
  %0 = load i32, i32* %node_lim.addr, align 4
  %conv = zext i32 %0 to i64
  %mul = mul i64 %conv, 2
  %add = add i64 296, %mul
  %1 = load i32, i32* %string_lim.addr, align 4
  %conv1 = zext i32 %1 to i64
  %mul2 = mul i64 %conv1, 1
  %add3 = add i64 %add, %mul2
  %call = call noalias i8* @malloc(i64 %add3) #5
  %2 = bitcast i8* %call to %struct.trie_rec*
  store %struct.trie_rec* %2, %struct.trie_rec** %T, align 8
  %3 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %cmp = icmp eq %struct.trie_rec* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call5 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 36, i32 4, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.25, i32 0, i32 0), i32 1, %struct.FILE_POS* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %magic = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %5, i32 0, i32 0
  store i32 5361534, i32* %magic, align 4
  %6 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %class_count = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %6, i32 0, i32 1
  store i32 1, i32* %class_count, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %i, align 4
  %cmp6 = icmp slt i32 %7, 256
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %class = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %9, i32 0, i32 2
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %class, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %12 = bitcast %struct.trie_rec* %11 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 296
  %13 = bitcast i8* %add.ptr to i16*
  %14 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %node_mem = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %14, i32 0, i32 3
  store i16* %13, i16** %node_mem, align 8
  %15 = load i32, i32* %node_lim.addr, align 4
  %16 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %node_lim8 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %16, i32 0, i32 4
  store i32 %15, i32* %node_lim8, align 4
  %17 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %node_free = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %17, i32 0, i32 5
  store i32 0, i32* %node_free, align 4
  %18 = load i32, i32* %node_lim.addr, align 4
  %idxprom9 = zext i32 %18 to i64
  %19 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %node_mem10 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %19, i32 0, i32 3
  %20 = load i16*, i16** %node_mem10, align 8
  %arrayidx11 = getelementptr inbounds i16, i16* %20, i64 %idxprom9
  %21 = bitcast i16* %arrayidx11 to i8*
  %22 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %string_mem = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %22, i32 0, i32 6
  store i8* %21, i8** %string_mem, align 8
  %23 = load i32, i32* %string_lim.addr, align 4
  %24 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %string_first = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %24, i32 0, i32 8
  store i32 %23, i32* %string_first, align 4
  %25 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %string_lim12 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %25, i32 0, i32 7
  store i32 %23, i32* %string_lim12, align 4
  %26 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  ret %struct.trie_rec* %26
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal void @DecodeEscapes(i8* %str, i8* %fname, i32 %hline_num) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %fname.addr = alloca i8*, align 8
  %hline_num.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i8* %fname, i8** %fname.addr, align 8
  store i32 %hline_num, i32* %hline_num.addr, align 4
  %0 = load i8*, i8** %str.addr, align 8
  store i8* %0, i8** %q, align 8
  store i8* %0, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.39, %entry
  %1 = load i8*, i8** %q, align 8
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %q, align 8
  %4 = load i8, i8* %3, align 1
  %conv2 = zext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv2, 92
  br i1 %cmp3, label %if.then, label %if.else.37

if.then:                                          ; preds = %while.body
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [138 x i8*], [138 x i8*]* @tex_codes, i32 0, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %7 to i32
  %cmp7 = icmp ne i32 %conv6, 0
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i8*, i8** %q, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i32, i32* %i, align 4
  %add = add nsw i32 %9, 1
  %idxprom9 = sext i32 %add to i64
  %arrayidx10 = getelementptr inbounds [138 x i8*], [138 x i8*]* @tex_codes, i32 0, i64 %idxprom9
  %10 = load i8*, i8** %arrayidx10, align 8
  %call = call i32 @StringBeginsWith(i8* %add.ptr, i8* %10)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %add12 = add nsw i32 %11, 3
  store i32 %add12, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.11, %for.cond
  %12 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds [138 x i8*], [138 x i8*]* @tex_codes, i32 0, i64 %idxprom13
  %13 = load i8*, i8** %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %14 to i32
  %cmp17 = icmp ne i32 %conv16, 0
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %for.end
  %15 = load i8*, i8** %p, align 8
  %16 = load i32, i32* %i, align 4
  %add20 = add nsw i32 %16, 2
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds [138 x i8*], [138 x i8*]* @tex_codes, i32 0, i64 %idxprom21
  %17 = load i8*, i8** %arrayidx22, align 8
  %call23 = call i8* @strcpy(i8* %15, i8* %17) #5
  %18 = load i32, i32* %i, align 4
  %add24 = add nsw i32 %18, 2
  %idxprom25 = sext i32 %add24 to i64
  %arrayidx26 = getelementptr inbounds [138 x i8*], [138 x i8*]* @tex_codes, i32 0, i64 %idxprom25
  %19 = load i8*, i8** %arrayidx26, align 8
  %call27 = call i64 @strlen(i8* %19) #4
  %20 = load i8*, i8** %p, align 8
  %add.ptr28 = getelementptr inbounds i8, i8* %20, i64 %call27
  store i8* %add.ptr28, i8** %p, align 8
  %21 = load i32, i32* %i, align 4
  %add29 = add nsw i32 %21, 1
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds [138 x i8*], [138 x i8*]* @tex_codes, i32 0, i64 %idxprom30
  %22 = load i8*, i8** %arrayidx31, align 8
  %call32 = call i64 @strlen(i8* %22) #4
  %add33 = add i64 %call32, 1
  %23 = load i8*, i8** %q, align 8
  %add.ptr34 = getelementptr inbounds i8, i8* %23, i64 %add33
  store i8* %add.ptr34, i8** %q, align 8
  br label %if.end.36

if.else:                                          ; preds = %for.end
  %24 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %25 = load i8*, i8** %fname.addr, align 8
  %26 = load i32, i32* %hline_num.addr, align 4
  %call35 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 36, i32 1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.26, i32 0, i32 0), i32 1, %struct.FILE_POS* %24, i8* %25, i32 %26)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else, %if.then.19
  br label %if.end.39

if.else.37:                                       ; preds = %while.body
  %27 = load i8*, i8** %q, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %q, align 8
  %28 = load i8, i8* %27, align 1
  %29 = load i8*, i8** %p, align 8
  %incdec.ptr38 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr38, i8** %p, align 8
  store i8 %28, i8* %29, align 1
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.37, %if.end.36
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %30 = load i8*, i8** %p, align 8
  %incdec.ptr40 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr40, i8** %p, align 8
  store i8 0, i8* %30, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @AddClassToTrie(i8* %str, %struct.trie_rec* %T) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %T.addr = alloca %struct.trie_rec*, align 8
  %i = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store %struct.trie_rec* %T, %struct.trie_rec** %T.addr, align 8
  %0 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %string_first = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %0, i32 0, i32 8
  %1 = load i32, i32* %string_first, align 4
  %2 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %string_lim = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %2, i32 0, i32 7
  %3 = load i32, i32* %string_lim, align 4
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.163, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load i8*, i8** %str.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %9, i64 %idxprom3
  %10 = load i8, i8* %arrayidx4, align 1
  %idxprom5 = zext i8 %10 to i64
  %11 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %class = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %11, i32 0, i32 2
  %arrayidx6 = getelementptr inbounds [256 x i8], [256 x i8]* %class, i32 0, i64 %idxprom5
  %12 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %12 to i32
  %cmp8 = icmp eq i32 %conv7, 0
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %for.body
  %13 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %class_count = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %13, i32 0, i32 1
  %14 = load i32, i32* %class_count, align 4
  %conv11 = trunc i32 %14 to i8
  %15 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %15 to i64
  %16 = load i8*, i8** %str.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %16, i64 %idxprom12
  %17 = load i8, i8* %arrayidx13, align 1
  %idxprom14 = zext i8 %17 to i64
  %18 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %class15 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %18, i32 0, i32 2
  %arrayidx16 = getelementptr inbounds [256 x i8], [256 x i8]* %class15, i32 0, i64 %idxprom14
  store i8 %conv11, i8* %arrayidx16, align 1
  br label %if.end.21

if.else:                                          ; preds = %for.body
  %19 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %20 to i64
  %21 = load i8*, i8** %str.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %21, i64 %idxprom17
  %22 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %22 to i32
  %call20 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 36, i32 6, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.164, i32 0, i32 0), i32 0, %struct.FILE_POS* %19, i32 %conv19)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.10
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %class_count22 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %24, i32 0, i32 1
  %25 = load i32, i32* %class_count22, align 4
  %inc23 = add nsw i32 %25, 1
  store i32 %inc23, i32* %class_count22, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @TrieInsert(i8* %key, i8* %value, %struct.trie_rec* %T, i8* %fname, i32 %hline_num) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %T.addr = alloca %struct.trie_rec*, align 8
  %fname.addr = alloca i8*, align 8
  %hline_num.addr = alloca i32, align 4
  %str = alloca [512 x i8], align 16
  %compressed_value = alloca [512 x i8], align 16
  %i = alloca i32, align 4
  %curr_node = alloca i32, align 4
  %next_node = alloca i32, align 4
  %pos = alloca i32, align 4
  %ch = alloca i32, align 4
  %strpos = alloca i16, align 2
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %prev = alloca i8*, align 8
  %i23 = alloca i32, align 4
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store %struct.trie_rec* %T, %struct.trie_rec** %T.addr, align 8
  store i8* %fname, i8** %fname.addr, align 8
  store i32 %hline_num, i32* %hline_num.addr, align 4
  %0 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %node_free = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %0, i32 0, i32 5
  %1 = load i32, i32* %node_free, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %class_count = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %2, i32 0, i32 1
  %3 = load i32, i32* %class_count, align 4
  %sub = sub nsw i32 %3, 1
  %div = sdiv i32 %sub, 4
  %add = add nsw i32 %div, 1
  %mul = mul nsw i32 4, %add
  %4 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %class_count1 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %4, i32 0, i32 1
  store i32 %mul, i32* %class_count1, align 4
  %5 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %call = call i32 @NewTrieNode(%struct.trie_rec* %5)
  store i32 %call, i32* %ch, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8*, i8** %value.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 -1
  store i8* %add.ptr, i8** %prev, align 8
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %compressed_value, i32 0, i32 0
  store i8* %arraydecay, i8** %p, align 8
  %7 = load i8*, i8** %value.addr, align 8
  store i8* %7, i8** %q, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i8*, i8** %q, align 8
  %9 = load i8, i8* %8, align 1
  %conv = zext i8 %9 to i32
  %cmp2 = icmp ne i32 %conv, 0
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i8*, i8** %q, align 8
  %11 = load i8, i8* %10, align 1
  %conv4 = zext i8 %11 to i32
  %cmp5 = icmp ne i32 %conv4, 48
  br i1 %cmp5, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %12 = load i8*, i8** %q, align 8
  %13 = load i8*, i8** %prev, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub7 = sub nsw i64 %sub.ptr.sub, 1
  %cmp8 = icmp sge i64 %sub7, 15
  br i1 %cmp8, label %if.then.10, label %if.end.20

if.then.10:                                       ; preds = %lor.lhs.false, %for.body
  %14 = load i8*, i8** %q, align 8
  %15 = load i8*, i8** %prev, align 8
  %sub.ptr.lhs.cast11 = ptrtoint i8* %14 to i64
  %sub.ptr.rhs.cast12 = ptrtoint i8* %15 to i64
  %sub.ptr.sub13 = sub i64 %sub.ptr.lhs.cast11, %sub.ptr.rhs.cast12
  %sub14 = sub nsw i64 %sub.ptr.sub13, 1
  %shl = shl i64 %sub14, 4
  %16 = load i8*, i8** %q, align 8
  %17 = load i8, i8* %16, align 1
  %conv15 = zext i8 %17 to i32
  %sub16 = sub nsw i32 %conv15, 48
  %add17 = add nsw i32 %sub16, 2
  %conv18 = sext i32 %add17 to i64
  %or = or i64 %shl, %conv18
  %conv19 = trunc i64 %or to i8
  %18 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %conv19, i8* %18, align 1
  %19 = load i8*, i8** %q, align 8
  store i8* %19, i8** %prev, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.10, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %20 = load i8*, i8** %q, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr21, i8** %q, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i8*, i8** %p, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr22, i8** %p, align 8
  store i8 0, i8* %21, align 1
  store i32 0, i32* %i23, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.49, %for.end
  %22 = load i32, i32* %i23, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load i8*, i8** %key.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %23, i64 %idxprom
  %24 = load i8, i8* %arrayidx, align 1
  %conv25 = zext i8 %24 to i32
  %cmp26 = icmp ne i32 %conv25, 0
  br i1 %cmp26, label %for.body.28, label %for.end.50

for.body.28:                                      ; preds = %for.cond.24
  %25 = load i32, i32* %i23, align 4
  %idxprom29 = sext i32 %25 to i64
  %26 = load i8*, i8** %key.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %26, i64 %idxprom29
  %27 = load i8, i8* %arrayidx30, align 1
  %idxprom31 = zext i8 %27 to i64
  %28 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %class = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %28, i32 0, i32 2
  %arrayidx32 = getelementptr inbounds [256 x i8], [256 x i8]* %class, i32 0, i64 %idxprom31
  %29 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %29 to i32
  %cmp34 = icmp ne i32 %conv33, 0
  br i1 %cmp34, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %for.body.28
  %30 = load i32, i32* %i23, align 4
  %idxprom37 = sext i32 %30 to i64
  %31 = load i8*, i8** %key.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %31, i64 %idxprom37
  %32 = load i8, i8* %arrayidx38, align 1
  %idxprom39 = zext i8 %32 to i64
  %33 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %class40 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %33, i32 0, i32 2
  %arrayidx41 = getelementptr inbounds [256 x i8], [256 x i8]* %class40, i32 0, i64 %idxprom39
  %34 = load i8, i8* %arrayidx41, align 1
  %35 = load i32, i32* %i23, align 4
  %idxprom42 = sext i32 %35 to i64
  %arrayidx43 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i64 %idxprom42
  store i8 %34, i8* %arrayidx43, align 1
  br label %if.end.48

if.else:                                          ; preds = %for.body.28
  %36 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %37 = load i8*, i8** %fname.addr, align 8
  %38 = load i32, i32* %hline_num.addr, align 4
  %39 = load i32, i32* %i23, align 4
  %idxprom44 = sext i32 %39 to i64
  %40 = load i8*, i8** %key.addr, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %40, i64 %idxprom44
  %41 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %41 to i32
  %call47 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 36, i32 2, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.165, i32 0, i32 0), i32 1, %struct.FILE_POS* %36, i8* %37, i32 %38, i32 %conv46)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else, %if.then.36
  br label %for.inc.49

for.inc.49:                                       ; preds = %if.end.48
  %42 = load i32, i32* %i23, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %i23, align 4
  br label %for.cond.24

for.end.50:                                       ; preds = %for.cond.24
  %43 = load i32, i32* %i23, align 4
  %idxprom51 = sext i32 %43 to i64
  %arrayidx52 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i64 %idxprom51
  store i8 0, i8* %arrayidx52, align 1
  store i32 0, i32* %i, align 4
  store i32 0, i32* %curr_node, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %if.end.152, %for.end.50
  %44 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %44 to i64
  %arrayidx55 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i64 %idxprom54
  %45 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %45 to i32
  %cmp57 = icmp eq i32 %conv56, 0
  br i1 %cmp57, label %if.then.59, label %if.end.82

if.then.59:                                       ; preds = %for.cond.53
  %46 = load i32, i32* %curr_node, align 4
  %idxprom60 = sext i32 %46 to i64
  %47 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %node_mem = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %47, i32 0, i32 3
  %48 = load i16*, i16** %node_mem, align 8
  %arrayidx61 = getelementptr inbounds i16, i16* %48, i64 %idxprom60
  %49 = load i16, i16* %arrayidx61, align 2
  %conv62 = sext i16 %49 to i32
  %cmp63 = icmp ne i32 %conv62, 0
  br i1 %cmp63, label %if.then.65, label %if.else.67

if.then.65:                                       ; preds = %if.then.59
  %50 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %51 = load i8*, i8** %key.addr, align 8
  %call66 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 36, i32 7, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.166, i32 0, i32 0), i32 0, %struct.FILE_POS* %50, i8* %51)
  br label %if.end.81

if.else.67:                                       ; preds = %if.then.59
  %arraydecay68 = getelementptr inbounds [512 x i8], [512 x i8]* %compressed_value, i32 0, i32 0
  %52 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %call69 = call signext i16 @NewTrieString(i8* %arraydecay68, %struct.trie_rec* %52)
  store i16 %call69, i16* %strpos, align 2
  %53 = load i16, i16* %strpos, align 2
  %conv70 = sext i16 %53 to i32
  %cmp71 = icmp slt i32 %conv70, 0
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.else.67
  store i32 0, i32* %retval
  br label %return

if.end.74:                                        ; preds = %if.else.67
  %54 = load i16, i16* %strpos, align 2
  %conv75 = sext i16 %54 to i32
  %sub76 = sub nsw i32 0, %conv75
  %conv77 = trunc i32 %sub76 to i16
  %55 = load i32, i32* %curr_node, align 4
  %idxprom78 = sext i32 %55 to i64
  %56 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %node_mem79 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %56, i32 0, i32 3
  %57 = load i16*, i16** %node_mem79, align 8
  %arrayidx80 = getelementptr inbounds i16, i16* %57, i64 %idxprom78
  store i16 %conv77, i16* %arrayidx80, align 2
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.74, %if.then.65
  store i32 1, i32* %retval
  br label %return

if.end.82:                                        ; preds = %for.cond.53
  %58 = load i32, i32* %curr_node, align 4
  %59 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %59 to i64
  %arrayidx84 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i64 %idxprom83
  %60 = load i8, i8* %arrayidx84, align 1
  %conv85 = zext i8 %60 to i32
  %add86 = add nsw i32 %58, %conv85
  %idxprom87 = sext i32 %add86 to i64
  %61 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %node_mem88 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %61, i32 0, i32 3
  %62 = load i16*, i16** %node_mem88, align 8
  %arrayidx89 = getelementptr inbounds i16, i16* %62, i64 %idxprom87
  %63 = load i16, i16* %arrayidx89, align 2
  %conv90 = sext i16 %63 to i32
  store i32 %conv90, i32* %next_node, align 4
  %64 = load i32, i32* %next_node, align 4
  %cmp91 = icmp eq i32 %64, 0
  br i1 %cmp91, label %if.then.93, label %if.end.120

if.then.93:                                       ; preds = %if.end.82
  %arraydecay94 = getelementptr inbounds [512 x i8], [512 x i8]* %compressed_value, i32 0, i32 0
  %65 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %call95 = call signext i16 @NewTrieString(i8* %arraydecay94, %struct.trie_rec* %65)
  %conv96 = sext i16 %call95 to i32
  store i32 %conv96, i32* %ch, align 4
  %66 = load i32, i32* %ch, align 4
  %cmp97 = icmp slt i32 %66, 0
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.then.93
  store i32 0, i32* %retval
  br label %return

if.end.100:                                       ; preds = %if.then.93
  %67 = load i32, i32* %i, align 4
  %add101 = add nsw i32 %67, 1
  %idxprom102 = sext i32 %add101 to i64
  %arrayidx103 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i64 %idxprom102
  %68 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %call104 = call signext i16 @NewTrieString(i8* %arrayidx103, %struct.trie_rec* %68)
  store i16 %call104, i16* %strpos, align 2
  %69 = load i16, i16* %strpos, align 2
  %conv105 = sext i16 %69 to i32
  %cmp106 = icmp slt i32 %conv105, 0
  br i1 %cmp106, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %if.end.100
  store i32 0, i32* %retval
  br label %return

if.end.109:                                       ; preds = %if.end.100
  %70 = load i16, i16* %strpos, align 2
  %conv110 = sext i16 %70 to i32
  %sub111 = sub nsw i32 0, %conv110
  %conv112 = trunc i32 %sub111 to i16
  %71 = load i32, i32* %curr_node, align 4
  %72 = load i32, i32* %i, align 4
  %idxprom113 = sext i32 %72 to i64
  %arrayidx114 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i64 %idxprom113
  %73 = load i8, i8* %arrayidx114, align 1
  %conv115 = zext i8 %73 to i32
  %add116 = add nsw i32 %71, %conv115
  %idxprom117 = sext i32 %add116 to i64
  %74 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %node_mem118 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %74, i32 0, i32 3
  %75 = load i16*, i16** %node_mem118, align 8
  %arrayidx119 = getelementptr inbounds i16, i16* %75, i64 %idxprom117
  store i16 %conv112, i16* %arrayidx119, align 2
  store i32 1, i32* %retval
  br label %return

if.end.120:                                       ; preds = %if.end.82
  %76 = load i32, i32* %next_node, align 4
  %cmp121 = icmp slt i32 %76, 0
  br i1 %cmp121, label %if.then.123, label %if.end.152

if.then.123:                                      ; preds = %if.end.120
  %77 = load i32, i32* %next_node, align 4
  %sub124 = sub nsw i32 0, %77
  store i32 %sub124, i32* %pos, align 4
  %78 = load i32, i32* %pos, align 4
  %idxprom125 = sext i32 %78 to i64
  %79 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %string_mem = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %79, i32 0, i32 6
  %80 = load i8*, i8** %string_mem, align 8
  %arrayidx126 = getelementptr inbounds i8, i8* %80, i64 %idxprom125
  %81 = load i8, i8* %arrayidx126, align 1
  %conv127 = zext i8 %81 to i32
  store i32 %conv127, i32* %ch, align 4
  %82 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %string_first = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %82, i32 0, i32 8
  %83 = load i32, i32* %string_first, align 4
  %84 = load i32, i32* %pos, align 4
  %cmp128 = icmp eq i32 %83, %84
  br i1 %cmp128, label %if.then.130, label %if.end.133

if.then.130:                                      ; preds = %if.then.123
  %85 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %string_first131 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %85, i32 0, i32 8
  %86 = load i32, i32* %string_first131, align 4
  %inc132 = add nsw i32 %86, 1
  store i32 %inc132, i32* %string_first131, align 4
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.130, %if.then.123
  %87 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %call134 = call i32 @NewTrieNode(%struct.trie_rec* %87)
  %div135 = sdiv i32 %call134, 4
  store i32 %div135, i32* %next_node, align 4
  %conv136 = trunc i32 %div135 to i16
  %88 = load i32, i32* %curr_node, align 4
  %89 = load i32, i32* %i, align 4
  %idxprom137 = sext i32 %89 to i64
  %arrayidx138 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i64 %idxprom137
  %90 = load i8, i8* %arrayidx138, align 1
  %conv139 = zext i8 %90 to i32
  %add140 = add nsw i32 %88, %conv139
  %idxprom141 = sext i32 %add140 to i64
  %91 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %node_mem142 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %91, i32 0, i32 3
  %92 = load i16*, i16** %node_mem142, align 8
  %arrayidx143 = getelementptr inbounds i16, i16* %92, i64 %idxprom141
  store i16 %conv136, i16* %arrayidx143, align 2
  %93 = load i32, i32* %pos, align 4
  %add144 = add nsw i32 %93, 1
  %sub145 = sub nsw i32 0, %add144
  %conv146 = trunc i32 %sub145 to i16
  %94 = load i32, i32* %next_node, align 4
  %mul147 = mul nsw i32 4, %94
  %95 = load i32, i32* %ch, align 4
  %add148 = add nsw i32 %mul147, %95
  %idxprom149 = sext i32 %add148 to i64
  %96 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %node_mem150 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %96, i32 0, i32 3
  %97 = load i16*, i16** %node_mem150, align 8
  %arrayidx151 = getelementptr inbounds i16, i16* %97, i64 %idxprom149
  store i16 %conv146, i16* %arrayidx151, align 2
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.133, %if.end.120
  %98 = load i32, i32* %next_node, align 4
  %mul153 = mul nsw i32 4, %98
  store i32 %mul153, i32* %curr_node, align 4
  %99 = load i32, i32* %i, align 4
  %inc154 = add nsw i32 %99, 1
  store i32 %inc154, i32* %i, align 4
  br label %for.cond.53

return:                                           ; preds = %if.end.109, %if.then.108, %if.then.99, %if.end.81, %if.then.73
  %100 = load i32, i32* %retval
  ret i32 %100
}

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @CompressTrie(%struct.trie_rec* %T) #0 {
entry:
  %T.addr = alloca %struct.trie_rec*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.trie_rec* %T, %struct.trie_rec** %T.addr, align 8
  %0 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %node_free = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %0, i32 0, i32 5
  %1 = load i32, i32* %node_free, align 4
  %2 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %node_lim = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %2, i32 0, i32 4
  store i32 %1, i32* %node_lim, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %node_lim1 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %4, i32 0, i32 4
  %5 = load i32, i32* %node_lim1, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %node_mem = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %7, i32 0, i32 3
  %8 = load i16*, i16** %node_mem, align 8
  %arrayidx = getelementptr inbounds i16, i16* %8, i64 %idxprom
  %9 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %9 to i32
  %cmp2 = icmp slt i32 %conv, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %10 to i64
  %11 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %node_mem5 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %11, i32 0, i32 3
  %12 = load i16*, i16** %node_mem5, align 8
  %arrayidx6 = getelementptr inbounds i16, i16* %12, i64 %idxprom4
  %13 = load i16, i16* %arrayidx6, align 2
  %conv7 = sext i16 %13 to i32
  %sub = sub nsw i32 0, %conv7
  %14 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %string_first = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %14, i32 0, i32 8
  %15 = load i32, i32* %string_first, align 4
  %sub8 = sub nsw i32 %sub, %15
  %sub9 = sub nsw i32 0, %sub8
  %conv10 = trunc i32 %sub9 to i16
  %16 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %16 to i64
  %17 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %node_mem12 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %17, i32 0, i32 3
  %18 = load i16*, i16** %node_mem12, align 8
  %arrayidx13 = getelementptr inbounds i16, i16* %18, i64 %idxprom11
  store i16 %conv10, i16* %arrayidx13, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %node_free14 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %20, i32 0, i32 5
  %21 = load i32, i32* %node_free14, align 4
  %idxprom15 = sext i32 %21 to i64
  %22 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %node_mem16 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %22, i32 0, i32 3
  %23 = load i16*, i16** %node_mem16, align 8
  %arrayidx17 = getelementptr inbounds i16, i16* %23, i64 %idxprom15
  %24 = bitcast i16* %arrayidx17 to i8*
  store i8* %24, i8** %p, align 8
  %25 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %string_first18 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %25, i32 0, i32 8
  %26 = load i32, i32* %string_first18, align 4
  %idxprom19 = sext i32 %26 to i64
  %27 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %string_mem = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %27, i32 0, i32 6
  %28 = load i8*, i8** %string_mem, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %28, i64 %idxprom19
  store i8* %arrayidx20, i8** %q, align 8
  %29 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %string_lim = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %29, i32 0, i32 7
  %30 = load i32, i32* %string_lim, align 4
  %31 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %string_first21 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %31, i32 0, i32 8
  %32 = load i32, i32* %string_first21, align 4
  %sub22 = sub nsw i32 %30, %32
  store i32 %sub22, i32* %len, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.28, %for.end
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %len, align 4
  %cmp24 = icmp slt i32 %33, %34
  br i1 %cmp24, label %for.body.26, label %for.end.30

for.body.26:                                      ; preds = %for.cond.23
  %35 = load i8*, i8** %q, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr, i8** %q, align 8
  %36 = load i8, i8* %35, align 1
  %37 = load i8*, i8** %p, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr27, i8** %p, align 8
  store i8 %36, i8* %37, align 1
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.body.26
  %38 = load i32, i32* %i, align 4
  %inc29 = add nsw i32 %38, 1
  store i32 %inc29, i32* %i, align 4
  br label %for.cond.23

for.end.30:                                       ; preds = %for.cond.23
  %39 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %node_lim31 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %39, i32 0, i32 4
  %40 = load i32, i32* %node_lim31, align 4
  %idxprom32 = sext i32 %40 to i64
  %41 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %node_mem33 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %41, i32 0, i32 3
  %42 = load i16*, i16** %node_mem33, align 8
  %arrayidx34 = getelementptr inbounds i16, i16* %42, i64 %idxprom32
  %43 = bitcast i16* %arrayidx34 to i8*
  %44 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %string_mem35 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %44, i32 0, i32 6
  store i8* %43, i8** %string_mem35, align 8
  %45 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %string_first36 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %45, i32 0, i32 8
  store i32 0, i32* %string_first36, align 4
  %46 = load i32, i32* %len, align 4
  %47 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %string_lim37 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %47, i32 0, i32 7
  store i32 %46, i32* %string_lim37, align 4
  %48 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %node_lim38 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %48, i32 0, i32 4
  %49 = load i32, i32* %node_lim38, align 4
  %conv39 = sext i32 %49 to i64
  %mul = mul i64 %conv39, 2
  %add = add i64 296, %mul
  %50 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %string_lim40 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %50, i32 0, i32 7
  %51 = load i32, i32* %string_lim40, align 4
  %conv41 = sext i32 %51 to i64
  %mul42 = mul i64 %conv41, 1
  %add43 = add i64 %add, %mul42
  %conv44 = trunc i64 %add43 to i32
  store i32 %conv44, i32* %len, align 4
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare i32 @StringBeginsWith(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @NewTrieNode(%struct.trie_rec* %T) #0 {
entry:
  %T.addr = alloca %struct.trie_rec*, align 8
  %i = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct.trie_rec* %T, %struct.trie_rec** %T.addr, align 8
  %0 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %node_free = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %0, i32 0, i32 5
  %1 = load i32, i32* %node_free, align 4
  %2 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %class_count = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %2, i32 0, i32 1
  %3 = load i32, i32* %class_count, align 4
  %add = add nsw i32 %1, %3
  %4 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %node_lim = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %4, i32 0, i32 4
  %5 = load i32, i32* %node_lim, align 4
  %cmp = icmp sgt i32 %add, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 36, i32 5, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.167, i32 0, i32 0), i32 0, %struct.FILE_POS* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %node_free1 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %7, i32 0, i32 5
  %8 = load i32, i32* %node_free1, align 4
  store i32 %8, i32* %res, align 4
  %9 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %class_count2 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %9, i32 0, i32 1
  %10 = load i32, i32* %class_count2, align 4
  %11 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %node_free3 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %11, i32 0, i32 5
  %12 = load i32, i32* %node_free3, align 4
  %add4 = add nsw i32 %12, %10
  store i32 %add4, i32* %node_free3, align 4
  %13 = load i32, i32* %res, align 4
  store i32 %13, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load i32, i32* %i, align 4
  %15 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %node_free5 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %15, i32 0, i32 5
  %16 = load i32, i32* %node_free5, align 4
  %cmp6 = icmp slt i32 %14, %16
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %node_mem = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %18, i32 0, i32 3
  %19 = load i16*, i16** %node_mem, align 8
  %arrayidx = getelementptr inbounds i16, i16* %19, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %res, align 4
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal signext i16 @NewTrieString(i8* %str, %struct.trie_rec* %T) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %T.addr = alloca %struct.trie_rec*, align 8
  %res = alloca i16, align 2
  store i8* %str, i8** %str.addr, align 8
  store %struct.trie_rec* %T, %struct.trie_rec** %T.addr, align 8
  %0 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %string_first = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %0, i32 0, i32 8
  %1 = load i32, i32* %string_first, align 4
  %conv = sext i32 %1 to i64
  %2 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %2) #4
  %sub = sub i64 %conv, %call
  %sub1 = sub i64 %sub, 1
  %conv2 = trunc i64 %sub1 to i16
  store i16 %conv2, i16* %res, align 2
  %3 = load i16, i16* %res, align 2
  %conv3 = sext i16 %3 to i32
  %cmp = icmp sge i32 %conv3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i16, i16* %res, align 2
  %conv5 = sext i16 %4 to i32
  %5 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %string_first6 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %5, i32 0, i32 8
  store i32 %conv5, i32* %string_first6, align 4
  %6 = load i16, i16* %res, align 2
  %idxprom = sext i16 %6 to i64
  %7 = load %struct.trie_rec*, %struct.trie_rec** %T.addr, align 8
  %string_mem = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %7, i32 0, i32 6
  %8 = load i8*, i8** %string_mem, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8*, i8** %str.addr, align 8
  %call7 = call i8* @strcpy(i8* %arrayidx, i8* %9) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i16, i16* %res, align 2
  ret i16 %10
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
